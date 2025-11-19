@interface BWAttachedMediaTimeMachineSinkNode
- (BWAttachedMediaTimeMachineSinkNode)initWithTimeMachineCapacity:(int)a3 attachedMediaKeys:(id)a4 metadataKeys:(id)a5 sinkID:(id)a6;
- (CFTypeRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(uint64_t)a4 additionalMetadata:(CFTypeRef *)a5 formatDescriptionInOut:;
- (CFTypeRef)_newSampleBufferfromSbuf:(uint64_t)a1;
- (id)getMetadataDictionaryForPts:(id *)a3;
- (opaqueCMSampleBuffer)copyAttachedMediaSampleBufferForPts:(id *)a3 attachedMediaKey:(id)a4;
- (uint64_t)_indexOfSampleBufferClosestToPTS:(const os_unfair_lock *)a1 attachedMediaKey:(CMTime *)a2;
- (unint64_t)_indexOfMetadataClosestToPTS:(unint64_t)a1;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWAttachedMediaTimeMachineSinkNode

- (BWAttachedMediaTimeMachineSinkNode)initWithTimeMachineCapacity:(int)a3 attachedMediaKeys:(id)a4 metadataKeys:(id)a5 sinkID:(id)a6
{
  if (![a4 count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The attachedMediaKeys array needs to have at least one element" userInfo:0]);
  }

  v27.receiver = self;
  v27.super_class = BWAttachedMediaTimeMachineSinkNode;
  v11 = [(BWSinkNode *)&v27 initWithSinkID:a6];
  if (v11)
  {
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNodeInput *)v12 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    v11->_timeMachineCapacity = a3;
    [(BWNode *)v11 addInput:v12];
    v11->_timeMachineFrames = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_timeMachineLock._os_unfair_lock_opaque = 0;
    if (a4)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a4];
      v11->_attachedMediaKeys = v13;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * i);
            if (([v18 isEqualToString:@"PrimaryFormat"] & 1) == 0)
            {
              v19 = objc_alloc_init(BWNodeInputMediaConfiguration);
              [(BWNodeInput *)v11->super.super._input formatRequirements];
              [(BWNodeInputMediaConfiguration *)v19 setFormatRequirements:objc_alloc_init(objc_opt_class())];
              [(BWNodeInputMediaConfiguration *)v19 setPassthroughMode:0];
              [(BWNodeInput *)v11->super.super._input setMediaConfiguration:v19 forAttachedMediaKey:v18];
              [(NSMutableDictionary *)v11->_timeMachineFrames setObject:objc_alloc_init(MEMORY[0x1E695DF70]) forKeyedSubscript:v18];
            }
          }

          v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
        }

        while (v15);
      }

      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11->super.super._input primaryMediaConfiguration] setPassthroughMode:0];
      v20 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v20 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v20 setPassthroughMode:0];
      [(BWNodeInput *)v11->super.super._input setUnspecifiedAttachedMediaConfiguration:v20];
      if (a5)
      {
        v11->_metadataKeys = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a5];
        [(NSMutableDictionary *)v11->_timeMachineFrames setObject:objc_alloc_init(MEMORY[0x1E695DF70]) forKeyedSubscript:*off_1E798A3C8];
        [(BWNode *)v11 setSupportsLiveReconfiguration:1];
        [(BWNode *)v11 setSupportsPrepareWhileRunning:1];
      }

      else
      {
        [BWAttachedMediaTimeMachineSinkNode initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:];
      }
    }

    else
    {
      [BWAttachedMediaTimeMachineSinkNode initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:];
    }
  }

  return v11;
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v5.receiver = self;
      v5.super_class = BWAttachedMediaTimeMachineSinkNode;
      [BWNode didSelectFormat:sel_didSelectFormat_forInput_forAttachedMediaKey_ forInput:? forAttachedMediaKey:?];
    }

    else
    {
      [BWAttachedMediaTimeMachineSinkNode didSelectFormat:forInput:forAttachedMediaKey:];
    }
  }

  else
  {
    [BWAttachedMediaTimeMachineSinkNode didSelectFormat:forInput:forAttachedMediaKey:];
  }
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWAttachedMediaTimeMachineSinkNode;
  [(BWSinkNode *)&v4 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  if (a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(NSMutableDictionary *)self->_timeMachineFrames allValues];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * i) removeAllObjects];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v9);
    }
  }

  else
  {

    self->_timeMachineFrames = 0;
  }

  os_unfair_lock_unlock(&self->_timeMachineLock);
  v12.receiver = self;
  v12.super_class = BWAttachedMediaTimeMachineSinkNode;
  [(BWSinkNode *)&v12 didReachEndOfDataForInput:a4];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v5 = a3;
  key = *off_1E798A3C8;
  v7 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v8 = *off_1E798B710;
  if (([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}] & 1) == 0)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(v5, @"SynchronizedSlaveFrame");
    if (AttachedMedia)
    {
      v10 = AttachedMedia;
      if ([objc_msgSend(CMGetAttachment(AttachedMedia key])
      {
        v5 = v10;
      }
    }
  }

  os_unfair_lock_lock(&self->_timeMachineLock);
  attachedMediaKeys = self->_attachedMediaKeys;
  v20 = OUTLINED_FUNCTION_8_37(v12, v13, v14, v15, v16, v17, v18, v19, v61, v64, v67, v4, 216, key, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v129, v131, v133, v135, v137, v139, v141);
  if (v20)
  {
    v21 = v20;
    v22 = MEMORY[0];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (MEMORY[0] != v22)
        {
          objc_enumerationMutation(attachedMediaKeys);
        }

        v24 = *(8 * i);
        v25 = BWSampleBufferGetAttachedMedia(v5, v24);
        if (v25)
        {
          v33 = v25;
          v34 = [(NSMutableDictionary *)self->_timeMachineFrames objectForKeyedSubscript:v24];
          if (!v34)
          {
            goto LABEL_29;
          }

          v35 = v34;
          v36 = [(BWAttachedMediaTimeMachineSinkNode *)self _newSampleBufferfromSbuf:v33];
          if (!v36)
          {
            goto LABEL_29;
          }

          v37 = v36;
          [v35 addObject:v36];
          if ([v35 count] > self->_timeMachineCapacity)
          {
            [v35 removeObjectAtIndex:0];
          }

          CFRelease(v37);
        }
      }

      v21 = OUTLINED_FUNCTION_8_37(v25, v26, v27, v28, v29, v30, v31, v32, v62, v65, v68, v70, v72, keya, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    while (v21);
  }

  if (self->_metadataKeys)
  {
    v38 = CMGetAttachment(v5, keya, 0);
    if (v38)
    {
      v39 = v38;
      v40 = [MEMORY[0x1E695DF90] dictionary];
      metadataKeys = self->_metadataKeys;
      v49 = OUTLINED_FUNCTION_16(v40, v42, v43, v44, v45, v46, v47, v48, v62, v65, v68, v70, v72, keya, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, 0);
      if (v49)
      {
        v50 = v49;
        v51 = MEMORY[0];
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (MEMORY[0] != v51)
            {
              objc_enumerationMutation(metadataKeys);
            }

            v53 = [v40 setObject:objc_msgSend(v39 forKeyedSubscript:{"objectForKeyedSubscript:", *(8 * j)), *(8 * j)}];
          }

          v50 = OUTLINED_FUNCTION_16(v53, v54, v55, v56, v57, v58, v59, v60, v63, v66, v69, v71, v72, keyb, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126);
        }

        while (v50);
      }

      [-[NSMutableDictionary objectForKeyedSubscript:](self->_timeMachineFrames objectForKeyedSubscript:{keyb), "addObject:", v40}];
      if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_timeMachineFrames objectForKeyedSubscript:{keyb), "count"}] > self->_timeMachineCapacity)
      {
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_timeMachineFrames objectForKeyedSubscript:{keyb), "removeObjectAtIndex:", 0}];
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }
  }

LABEL_29:
  os_unfair_lock_unlock((self + v72));
}

- (CFTypeRef)_newSampleBufferfromSbuf:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  pixelBufferOut = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v6 = CMSampleBufferGetImageBuffer(sbuf);
  Width = CVPixelBufferGetWidth(v6);
  v8 = CMSampleBufferGetImageBuffer(sbuf);
  Height = CVPixelBufferGetHeight(v8);
  v21[0] = *MEMORY[0x1E696CE38];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(objc_msgSend(*(a1 + 16), "memoryPool"), "poolIdentifier")}];
  v11 = *MEMORY[0x1E696CE60];
  v22[0] = v10;
  v22[1] = &unk_1F2244A70;
  v12 = *MEMORY[0x1E696CFA0];
  v21[1] = v11;
  v21[2] = v12;
  v22[2] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19[0] = *MEMORY[0x1E6966130];
  v20[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v19[1] = *MEMORY[0x1E6966208];
  v20[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v19[2] = *MEMORY[0x1E69660B8];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
  v19[3] = *MEMORY[0x1E69660D8];
  v20[2] = v14;
  v20[3] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, PixelFormatType, v15, &pixelBufferOut);
  if (!pixelBufferOut)
  {
    return 0;
  }

  CMSampleBufferGetImageBuffer(sbuf);
  if (CopyPixelBuffer())
  {
    v17 = 0;
  }

  else
  {
    v17 = [(BWAttachedMediaTimeMachineSinkNode *)a1 _newOutputSampleBufferFromSampleBuffer:pixelBufferOut pixelBuffer:v16 additionalMetadata:(a1 + 224) formatDescriptionInOut:?];
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v17;
}

- (id)getMetadataDictionaryForPts:(id *)a3
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  if (self->_metadataKeys && (v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_timeMachineFrames, "objectForKeyedSubscript:", *off_1E798A3C8)) != 0 && (v6 = v5, v10 = *a3, v7 = -[BWAttachedMediaTimeMachineSinkNode _indexOfMetadataClosestToPTS:](self, &v10), v7 < [v6 count]))
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_timeMachineLock);
  return v8;
}

- (unint64_t)_indexOfMetadataClosestToPTS:(unint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    OUTLINED_FUNCTION_5_55();
    memset(&v30, 0, sizeof(v30));
    lhs = *a2;
    OUTLINED_FUNCTION_2_70();
    CMTimeSubtract(&v23.start, &lhs, &rhs);
    OUTLINED_FUNCTION_2_70();
    CMTimeMultiply(&lhs, &rhs, 2);
    CMTimeRangeMake(&v30, &v23.start, &lhs);
    os_unfair_lock_assert_owner((v2 + 216));
    v4 = [*(v2 + 208) objectForKeyedSubscript:*off_1E798A3C8];
    v2 = 0;
    if ([v4 count])
    {
      v5 = 0;
      v6 = *off_1E798A420;
      do
      {
        v7 = [v4 objectAtIndexedSubscript:v5];
        if (v7)
        {
          v8 = v7;
          if ([v7 objectForKeyedSubscript:v6])
          {
            memset(&lhs, 0, sizeof(lhs));
            CMTimeMakeFromDictionary(&lhs, [v8 objectForKeyedSubscript:v6]);
            OUTLINED_FUNCTION_3_63(a2->epoch, v23.start.value, *&v23.start.timescale, v23.start.epoch, v23.duration.value, *&v23.duration.timescale, v23.duration.epoch, v24, v25, v26, *&a2->value, rhs.epoch, v28, *&lhs.value, lhs.epoch);
            CMTimeGetSeconds(&v23.start);
            v23 = v30;
            *&rhs.value = *&lhs.value;
            OUTLINED_FUNCTION_1_79();
            v11 = CMTimeRangeContainsTime(v9, v10);
            if (v11)
            {
              return v5;
            }

            OUTLINED_FUNCTION_7_44(v11, v12, v13, v14, v15, v16, v17, v18, v23.start.value, *&v23.start.timescale, v23.start.epoch, v23.duration.value, *&v23.duration.timescale, v23.duration.epoch, v24, *(&v24 + 1), v25, v26, rhs.value, *&rhs.timescale, rhs.epoch, v28, *&lhs.value);
            *&rhs.value = *&a2->value;
            OUTLINED_FUNCTION_1_79();
            if (!CMTimeCompare(v19, v20))
            {
              return v5;
            }

            OUTLINED_FUNCTION_4_55();
            if (v21)
            {
              v2 = v5;
            }
          }
        }

        ++v5;
      }

      while (v5 < [v4 count]);
    }
  }

  return v2;
}

- (opaqueCMSampleBuffer)copyAttachedMediaSampleBufferForPts:(id *)a3 attachedMediaKey:(id)a4
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  v7 = [(NSMutableDictionary *)self->_timeMachineFrames objectForKeyedSubscript:a4];
  if (v7 && (v8 = v7, v13 = *a3, v9 = -[BWAttachedMediaTimeMachineSinkNode _indexOfSampleBufferClosestToPTS:attachedMediaKey:](self, &v13), v9 < [v8 count]) && (v10 = objc_msgSend(v8, "objectAtIndexedSubscript:", v9)) != 0)
  {
    v11 = [(BWAttachedMediaTimeMachineSinkNode *)self _newSampleBufferfromSbuf:v10];
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(&self->_timeMachineLock);
  return v11;
}

- (uint64_t)_indexOfSampleBufferClosestToPTS:(const os_unfair_lock *)a1 attachedMediaKey:(CMTime *)a2
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_55();
  memset(&v28, 0, sizeof(v28));
  lhs = *a2;
  OUTLINED_FUNCTION_2_70();
  CMTimeSubtract(&v21.start, &lhs, &rhs);
  OUTLINED_FUNCTION_2_70();
  CMTimeMultiply(&lhs, &rhs, 2);
  CMTimeRangeMake(&v28, &v21.start, &lhs);
  os_unfair_lock_assert_owner(a1 + 54);
  v4 = 0;
  if ([OUTLINED_FUNCTION_6_48() count])
  {
    v5 = 0;
    while (1)
    {
      memset(&lhs, 0, sizeof(lhs));
      v6 = [OUTLINED_FUNCTION_6_48() objectAtIndexedSubscript:v5];
      CMSampleBufferGetPresentationTimeStamp(&lhs, v6);
      OUTLINED_FUNCTION_3_63(a2->epoch, v21.start.value, *&v21.start.timescale, v21.start.epoch, v21.duration.value, *&v21.duration.timescale, v21.duration.epoch, v22, v23, v24, *&a2->value, rhs.epoch, v26, *&lhs.value, lhs.epoch);
      CMTimeGetSeconds(&v21.start);
      v21 = v28;
      *&rhs.value = *&lhs.value;
      OUTLINED_FUNCTION_1_79();
      v9 = CMTimeRangeContainsTime(v7, v8);
      if (v9)
      {
        break;
      }

      OUTLINED_FUNCTION_7_44(v9, v10, v11, v12, v13, v14, v15, v16, v21.start.value, *&v21.start.timescale, v21.start.epoch, v21.duration.value, *&v21.duration.timescale, v21.duration.epoch, v22, *(&v22 + 1), v23, v24, rhs.value, *&rhs.timescale, rhs.epoch, v26, *&lhs.value);
      *&rhs.value = *&a2->value;
      OUTLINED_FUNCTION_1_79();
      if (!CMTimeCompare(v17, v18))
      {
        break;
      }

      OUTLINED_FUNCTION_4_55();
      if (v19)
      {
        v4 = v5;
      }

      if (++v5 >= [OUTLINED_FUNCTION_6_48() count])
      {
        return v4;
      }
    }

    return v5;
  }

  return v4;
}

- (CFTypeRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(uint64_t)a4 additionalMetadata:(CFTypeRef *)a5 formatDescriptionInOut:
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  cf = 0;
  if (a2)
  {
    if (a3)
    {
      CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, a3, a5, &cf);
      v6 = cf;
      if (CopyWithNewPixelBuffer || (v8 = BWCMSampleBufferCopyMetadataToSampleBuffer(a2, cf) != 0, v6 = cf, v8))
      {
        if (v6)
        {
          CFRelease(v6);
          return 0;
        }
      }
    }
  }

  return v6;
}

- (uint64_t)initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end