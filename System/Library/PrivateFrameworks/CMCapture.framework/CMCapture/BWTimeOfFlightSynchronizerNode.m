@interface BWTimeOfFlightSynchronizerNode
- (BWTimeOfFlightSynchronizerNode)init;
- (uint64_t)_attachPointCloudsToSampleBufferOrReportMissing:(_BYTE *)a3 pointCloudsAreMissing:;
- (uint64_t)_mergePointClouds:(__CVBuffer *)a3 intoDataBuffer:(_DWORD *)a4 numberOfPoints:;
- (unint64_t)_cleanupPointCloudBufferQueue;
- (unint64_t)_tryToEmitBuffers;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWTimeOfFlightSynchronizerNode

- (BWTimeOfFlightSynchronizerNode)init
{
  v11.receiver = self;
  v11.super_class = BWTimeOfFlightSynchronizerNode;
  v2 = [(BWNode *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastEmittedPTS = 0.0;
    v2->_maxVideoBufferQueueDepth = 1;
    v2->_maxPointCloudBufferQueueDepth = 10;
    [(BWNode *)v2 setSupportsConcurrentLiveInputCallbacks:1];
    v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v3 index:0];
    v3->_videoInput = v4;
    [(BWNodeInput *)v4 setRetainedBufferCount:v3->_maxVideoBufferQueueDepth];
    [(BWNodeInput *)v3->_videoInput setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v3->_videoInput setPassthroughMode:1];
    [(BWNode *)v3 addInput:v3->_videoInput];
    v5 = [[BWNodeInput alloc] initWithMediaType:1885564004 node:v3 index:1];
    v3->_pointCloudInput = v5;
    [(BWNodeInput *)v5 setRetainedBufferCount:v3->_maxPointCloudBufferQueueDepth];
    [(BWNodeInput *)v3->_pointCloudInput setPassthroughMode:0];
    v6 = objc_alloc_init(BWPointCloudFormatRequirements);
    [(BWPointCloudFormatRequirements *)v6 setSupportedDataFormats:&unk_1F2248658];
    [(BWNodeInput *)v3->_pointCloudInput setFormatRequirements:v6];
    [(BWNode *)v3 addInput:v3->_pointCloudInput];
    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v3];
    [(BWNodeOutput *)v7 setPassthroughMode:1];
    [(BWNodeOutput *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    v8 = objc_alloc_init(BWPointCloudFormatRequirements);
    [(BWPointCloudFormatRequirements *)v8 setSupportedDataFormats:&unk_1F2248670];
    v9 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v9 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v9 setFormatRequirements:v8];
    [(BWNodeOutputMediaConfiguration *)v9 setProvidesDataBufferPool:1];
    [(BWNodeOutput *)v7 setMediaConfiguration:v9 forAttachedMediaKey:0x1F21AAA30];
    [(BWNode *)v3 addOutput:v7];
    v3->_pointCloudBufferQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_videoBufferQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_bufferServicingLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)dealloc
{
  pointCloudFormatDescription = self->_pointCloudFormatDescription;
  if (pointCloudFormatDescription)
  {
    CFRelease(pointCloudFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWTimeOfFlightSynchronizerNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (self->_videoInput == a4)
  {
    if ([a5 isEqualToString:@"PrimaryFormat"])
    {
      [(BWNodeOutput *)self->super._output setFormat:a3];
    }
  }

  else
  {
    v9 = objc_alloc_init(BWPointCloudFormatRequirements);
    [(BWPointCloudFormatRequirements *)v9 setSupportedDataFormats:&unk_1F2248688];
    -[BWPointCloudFormatRequirements setDataBufferSize:](v9, "setDataBufferSize:", 4 * [a3 dataBufferSize]);
    -[BWPointCloudFormatRequirements setMaxPoints:](v9, "setMaxPoints:", 4 * [a3 maxPoints]);
    v10 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v10 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v10 setFormatRequirements:v9];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v10 forAttachedMediaKey:0x1F21AAA30];
    v12 = v9;
    self->_dataBufferPool = -[BWDataBufferPool initWithFormat:capacity:name:clientProvidesPool:]([BWDataBufferPool alloc], "initWithFormat:capacity:name:clientProvidesPool:", +[BWPointCloudFormat formatByResolvingRequirements:](BWPointCloudFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]), 10, @"Time of flight pool", 0);
  }

  v11.receiver = self;
  v11.super_class = BWTimeOfFlightSynchronizerNode;
  [(BWNode *)&v11 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForInput:(id)a3
{
  v4 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v4)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output markEndOfLiveOutput];
    os_unfair_lock_unlock(&self->_bufferServicingLock);
    self->_numEODMessagesReceived = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (self->_videoInput == a4)
  {
    v7 = &OBJC_IVAR___BWTimeOfFlightSynchronizerNode__videoBufferQueue;
  }

  else
  {
    v7 = &OBJC_IVAR___BWTimeOfFlightSynchronizerNode__pointCloudBufferQueue;
  }

  [*(&self->super.super.isa + *v7) addObject:a3];
  [(BWTimeOfFlightSynchronizerNode *)self _tryToEmitBuffers];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitNodeError:a3];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (self->_videoInput == a4)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output emitDroppedSample:a3];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (unint64_t)_tryToEmitBuffers
{
  if (result)
  {
    v1 = result;
    if ([*(result + 168) count])
    {
      v2 = *off_1E798A3C8;
      v3 = *off_1E798A420;
      v4 = *off_1E798B2A8;
      v5 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v6 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v7 = &OBJC_IVAR___BWNode__output;
      do
      {
        v8 = [OUTLINED_FUNCTION_1_49() objectAtIndexedSubscript:0];
        if ([OUTLINED_FUNCTION_1_49() count] <= *(v1 + v5[667]))
        {
          v9 = [*(v1 + 160) count];
          v10 = v4;
          v11 = v3;
          v12 = v2;
          v13 = v7;
          v14 = v6;
          v15 = v5;
          v16 = *(v1 + 192);
          v22 = 0;
          v17 = [(BWTimeOfFlightSynchronizerNode *)v1 _attachPointCloudsToSampleBufferOrReportMissing:v8 pointCloudsAreMissing:&v22];
          v18 = v9 > v16;
          v5 = v15;
          v6 = v14;
          v7 = v13;
          v2 = v12;
          v3 = v11;
          v4 = v10;
          if (!v18 && (v17 & 1) == 0 && (v22 & 1) == 0)
          {
            return [(BWTimeOfFlightSynchronizerNode *)v1 _cleanupPointCloudBufferQueue];
          }
        }

        else
        {
          [(BWTimeOfFlightSynchronizerNode *)v1 _attachPointCloudsToSampleBufferOrReportMissing:v8 pointCloudsAreMissing:&v22];
        }

        v19 = CMGetAttachment(v8, v2, 0);
        CMTimeMakeFromDictionary(&time, [v19 objectForKeyedSubscript:v3]);
        Seconds = CMTimeGetSeconds(&time);
        [objc_msgSend(v19 objectForKeyedSubscript:{v4), "doubleValue"}];
        *(v1 + v6[666]) = Seconds + v21 * 0.5;
        [*(v1 + *v7) emitSampleBuffer:v8];
        [OUTLINED_FUNCTION_1_49() removeObject:v8];
      }

      while ([OUTLINED_FUNCTION_1_49() count]);
    }

    return [(BWTimeOfFlightSynchronizerNode *)v1 _cleanupPointCloudBufferQueue];
  }

  return result;
}

- (uint64_t)_attachPointCloudsToSampleBufferOrReportMissing:(_BYTE *)a3 pointCloudsAreMissing:
{
  if (!a1)
  {
    return 0;
  }

  v36 = 0;
  v6 = [*(a1 + 160) lastObject];
  if (!v6)
  {
    return 0;
  }

  v7 = *off_1E798A3C8;
  v8 = CMGetAttachment(v6, *off_1E798A3C8, 0);
  v9 = *off_1E798A420;
  CMTimeMakeFromDictionary(&time, [v8 objectForKeyedSubscript:*off_1E798A420]);
  Seconds = CMTimeGetSeconds(&time);
  v11 = CMGetAttachment(a2, v7, 0);
  CMTimeMakeFromDictionary(&time, [v11 objectForKeyedSubscript:v9]);
  v12 = CMTimeGetSeconds(&time);
  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v14 = v12 + v13 * 0.5;
  if (Seconds + 0.0083 <= v14 + 0.0166)
  {
    return 0;
  }

  v29 = a2;
  v30 = a3;
  v15 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = *(a1 + 160);
  OUTLINED_FUNCTION_13_14();
  v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [CMGetAttachment(v21 v7];
        CMTimeMakeFromDictionary(&time, v22);
        v23 = CMTimeGetSeconds(&time);
        if (v23 > v14 + -0.0166 && v23 <= v14 + 0.0166)
        {
          [v15 addObject:v21];
        }
      }

      OUTLINED_FUNCTION_13_14();
      v18 = [v16 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  if (![v15 count] && Seconds > v14)
  {
    v25 = 0;
    *v30 = 1;
    return v25;
  }

  if (![v15 count])
  {
    return 0;
  }

  v26 = [*(a1 + 200) newDataBuffer];
  if (!v26)
  {
    return 0;
  }

  v27 = v26;
  v31[0] = 0;
  if ([(BWTimeOfFlightSynchronizerNode *)a1 _mergePointClouds:v15 intoDataBuffer:v26 numberOfPoints:v31])
  {
    time = **&MEMORY[0x1E6960C70];
    BWSampleBufferCreateFromDataBufferWithNumberOfPoints(v27, &time, 0x6A737070u, (a1 + 176), &v36, v31[0]);
    if (v36)
    {
      BWSampleBufferSetAttachedMedia(v29, 0x1F21AAA30, v36);
      v25 = 1;
      goto LABEL_24;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  v25 = 0;
LABEL_24:
  CFRelease(v27);
  if (v36)
  {
    CFRelease(v36);
  }

  return v25;
}

- (unint64_t)_cleanupPointCloudBufferQueue
{
  if (result)
  {
    v1 = result;
    result = [*(result + 160) count];
    if (result)
    {
      v2 = *off_1E798A3C8;
      v3 = *off_1E798A420;
      do
      {
        v4 = [OUTLINED_FUNCTION_3_37() objectAtIndexedSubscript:0];
        v5 = [CMGetAttachment(v4 v2];
        CMTimeMakeFromDictionary(&time, v5);
        Seconds = CMTimeGetSeconds(&time);
        v7 = *(v1 + 136);
        if (v7 == 0.0 || Seconds > v7 + 0.0166)
        {
          result = [OUTLINED_FUNCTION_3_37() count];
          if (result <= *(v1 + 192))
          {
            break;
          }
        }

        [OUTLINED_FUNCTION_3_37() removeObject:v4];
        result = [OUTLINED_FUNCTION_3_37() count];
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_mergePointClouds:(__CVBuffer *)a3 intoDataBuffer:(_DWORD *)a4 numberOfPoints:
{
  if (result)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v15 = OUTLINED_FUNCTION_4_34(v7, v8, v9, v10, v11, v12, v13, v14, v41, v43, v45, buffer, v50, v7, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
    if (v15)
    {
      v16 = v15;
      LODWORD(v17) = 0;
      v18 = MEMORY[0];
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(a2);
        }

        CVDataBuffer = BWSampleBufferGetCVDataBuffer(*(8 * v19));
        v21 = [objc_alloc(getADJasperPointCloudClass()) initWithDataBuffer:CVDataBuffer];
        if (!v21)
        {
          goto LABEL_24;
        }

        v22 = v21;
        v17 = [v21 length] + v17;
        v23 = [obj addObject:v22];
        if (v16 == ++v19)
        {
          v16 = OUTLINED_FUNCTION_4_34(v23, v24, v25, v26, v27, v28, v29, v30, v42, v44, v46, buffera, v51, obj, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    v17 = 0;
    CVDataBuffer = 0;
LABEL_12:
    result = [getADJasperPointCloudClass() prepareDataBuffer:a3 forLength:v17];
    if (result)
    {
      v31 = [objc_alloc(getADMutableJasperPointCloudClass()) initWithDataBuffer:a3];
      if (!v31)
      {
LABEL_24:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        return 0;
      }

      v32 = v31;
      bufferb = a3;
      v52 = a4;
      OUTLINED_FUNCTION_13_14();
      v33 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = MEMORY[0];
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (MEMORY[0] != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(8 * i);
            [v32 replacePointsInRange:v35 withPointsFrom:objc_msgSend(v38 range:{"length"), v38, 0, objc_msgSend(v38, "length")}];
            v35 += [v38 length];
          }

          OUTLINED_FUNCTION_13_14();
          v34 = [obj countByEnumeratingWithState:? objects:? count:?];
        }

        while (v34);
      }

      if (CVDataBuffer)
      {
        v39 = CVBufferCopyAttachment(CVDataBuffer, @"CameraCalibration", 0);
        if (v39)
        {
          v40 = CFAutorelease(v39);
        }

        else
        {
          v40 = 0;
        }

        CVBufferSetAttachment(bufferb, @"CameraCalibration", v40, kCVAttachmentMode_ShouldPropagate);
      }

      *v52 = v17;
      return 1;
    }
  }

  return result;
}

@end