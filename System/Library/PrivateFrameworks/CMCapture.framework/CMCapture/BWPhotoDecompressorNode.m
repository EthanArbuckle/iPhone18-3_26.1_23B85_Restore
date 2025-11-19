@interface BWPhotoDecompressorNode
- (BWPhotoDecompressorNode)initWithSynchronizedSlaveAttachedMediaDecompressionEnabled:(BOOL)a3;
- (uint64_t)_ensureSemaphoresAreBalanced;
- (void)_releaseResources;
- (void)_setOverCaptureSynchronizedSlaveSemaphoreEnabled:(void *)result;
- (void)addEmitSampleBufferSemaphore:(id)a3;
- (void)addEmitSynchronizedSlaveSampleBufferSemaphore:(id)a3;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)suspendResources;
@end

@implementation BWPhotoDecompressorNode

- (BWPhotoDecompressorNode)initWithSynchronizedSlaveAttachedMediaDecompressionEnabled:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = BWPhotoDecompressorNode;
  v4 = [(BWNode *)&v12 init];
  if (v4)
  {
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v6 setSupportedPixelFormats:&unk_1F22480B8];
    [(BWNodeInput *)v5 setFormatRequirements:v6];

    [(BWNode *)v4 addInput:v5];
    v4->_synchronizedSlaveAttachedMediaDecompressionEnabled = v3;
    if (v3)
    {
      v7 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v7 setPassthroughMode:0];
      [(BWNodeInput *)v5 setMediaConfiguration:v7 forAttachedMediaKey:0x1F21AAA50];
    }

    v8 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNode *)v4 addOutput:v8];

    if (v4->_synchronizedSlaveAttachedMediaDecompressionEnabled)
    {
      v9 = objc_alloc_init(BWVideoFormatRequirements);
      v10 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      [(BWNodeOutputMediaConfiguration *)v10 setFormatRequirements:v9];
      [(BWNodeOutputMediaConfiguration *)v10 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v10 setIndexOfInputWhichDrivesThisOutput:0];
      [(BWNodeOutputMediaConfiguration *)v10 setAttachedMediaKeyOfInputWhichDrivesThisOutput:0x1F21AAA50];
      [(BWNodeOutput *)v8 setMediaConfiguration:v10 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    }

    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setRequiresEndOfDataForConfigurationChanges:1];
  }

  return v4;
}

- (void)dealloc
{
  [(BWPhotoDecompressorNode *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWPhotoDecompressorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v5 = a5;
  if (self->_synchronizedSlaveAttachedMediaDecompressionEnabled)
  {
    v8 = [a5 isEqualToString:{0x1F21AAA50, a4}];
    if (v8)
    {
      v5 = @"SynchronizedSlaveFrame";
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:v5];
  if (!v9)
  {
    v9 = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutput *)self->super._output _setMediaProperties:v9 forAttachedMediaKey:v5];
  }

  if ((v8 | [(__CFString *)v5 isEqualToString:@"PrimaryFormat"]))
  {
    v10 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v10, "setWidth:", [a3 width]);
    -[BWVideoFormatRequirements setHeight:](v10, "setHeight:", [a3 height]);
    if (FigCapturePixelFormatIsFullRange([a3 pixelFormat]))
    {
      v11 = 875704422;
    }

    else
    {
      v11 = 875704438;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v10, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]);
    if ([a3 colorSpaceProperties])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
      -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v10, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]);
    }

    v12 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:v5];
    [v12 setFormatRequirements:v10];
    [v12 setProvidesPixelBufferPool:1];
  }

  else
  {

    [(BWNodeOutputMediaProperties *)v9 setResolvedFormat:a3];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v2.receiver = self;
  v2.super_class = BWPhotoDecompressorNode;
  [(BWNode *)&v2 prepareForCurrentConfigurationToBecomeLive];
}

- (void)suspendResources
{
  v3.receiver = self;
  v3.super_class = BWPhotoDecompressorNode;
  [(BWNode *)&v3 suspendResources];
  [(BWPhotoDecompressor *)self->_photoDecompressor flush];
  [(BWPhotoDecompressor *)self->_synchronizedSlavePhotoDecompressor flush];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (a3)
  {
    if (![(BWVideoFormat *)[(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool] videoFormat] isEqual:[(BWNodeOutput *)self->super._output videoFormat]])
    {

      self->_photoDecompressor = 0;
      self->_synchronizedSlavePhotoDecompressor = 0;
    }
  }

  else
  {
    [(BWPhotoDecompressorNode *)self _releaseResources];
  }

  v7.receiver = self;
  v7.super_class = BWPhotoDecompressorNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v4 = a3;
  memset(&v58, 0, sizeof(v58));
  CMSampleBufferGetPresentationTimeStamp(&v58, a3);
  DataBuffer = CMSampleBufferGetDataBuffer(v4);
  if (DataBuffer)
  {
    v7 = CMGetAttachment(v4, @"SampleDataToBeDropped", 0);
    if ([(NSMutableArray *)self->_emitSampleBufferSemaphores count])
    {
      ++self->_numberOfTimesWaited;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      emitSampleBufferSemaphores = self->_emitSampleBufferSemaphores;
      v9 = [(NSMutableArray *)emitSampleBufferSemaphores countByEnumeratingWithState:&v54 objects:v53 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v55;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v55 != v11)
            {
              objc_enumerationMutation(emitSampleBufferSemaphores);
            }

            dispatch_semaphore_wait(*(*(&v54 + 1) + 8 * i), 0xFFFFFFFFFFFFFFFFLL);
          }

          v10 = [(NSMutableArray *)emitSampleBufferSemaphores countByEnumeratingWithState:&v54 objects:v53 count:16];
        }

        while (v10);
      }
    }

    v13 = MEMORY[0x1E695E4D0];
    if ([(NSMutableArray *)self->_emitSynchronizedSlaveSampleBufferSemaphores count]&& (v14 = [(NSMutableArray *)self->_emitSynchronizedSlaveSampleBufferSemaphores count], v14 <= [(NSMutableSet *)self->_disabledSynchronizedSlaveSemaphores count]))
    {
      v15 = 0;
      AttachedMedia = 0;
    }

    else
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(v4, 0x1F21AAA50);
      v15 = AttachedMedia != 0;
    }

    v22 = *v13;
    photoDecompressor = self->_photoDecompressor;
    if (!photoDecompressor)
    {
      photoDecompressor = [[BWPhotoDecompressor alloc] initWithOutputPixelBufferPool:[(BWNodeOutput *)self->super._output livePixelBufferPool]];
      self->_photoDecompressor = photoDecompressor;
    }

    v20 = [(BWPhotoDecompressor *)photoDecompressor newUncompressedSampleBufferFromSampleBuffer:v4];
    FigCaptureMetadataUtilitiesAddSampleBufferMetadataUsedByVideoEncoderToPixelBuffer(v20);
    v19 = 0;
    if (v7 == v22 && v20)
    {
      if (![(NSMutableArray *)self->_emitSampleBufferSemaphores count])
      {
        v19 = 0;
        if (v15)
        {
          goto LABEL_27;
        }

        goto LABEL_46;
      }

      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v19 addObjectsFromArray:self->_emitSampleBufferSemaphores];
      CMSetAttachment(v20, @"SampleDataToBeDroppedEmitSampleBufferSemaphores", v19, 1u);
    }

    if (v15)
    {
      goto LABEL_27;
    }

LABEL_46:
    if (v20)
    {
      v18 = 0;
      LOBYTE(v21) = 1;
      v4 = v20;
      goto LABEL_52;
    }

    if (![(NSMutableArray *)self->_emitSynchronizedSlaveSampleBufferSemaphores count])
    {
      v20 = 0;
LABEL_53:
      v42 = v58;
      [(BWNodeOutput *)self->super._output emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219BFB0 pts:&v42]];
      ++self->_numberOfBuffersEmitted;
LABEL_54:
      ++self->_numberOfSynchronizedSlaveBuffersEmitted;
      goto LABEL_55;
    }

LABEL_27:
    v37 = v22;
    v38 = v7;
    v39 = v15;
    v40 = DataBuffer;
    if ([(NSMutableArray *)self->_emitSynchronizedSlaveSampleBufferSemaphores count])
    {
      ++self->_numberOfTimesSynchronizedSlaveWaited;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      emitSynchronizedSlaveSampleBufferSemaphores = self->_emitSynchronizedSlaveSampleBufferSemaphores;
      v25 = [(NSMutableArray *)emitSynchronizedSlaveSampleBufferSemaphores countByEnumeratingWithState:&v49 objects:v48 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v50;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v50 != v27)
            {
              objc_enumerationMutation(emitSynchronizedSlaveSampleBufferSemaphores);
            }

            v29 = *(*(&v49 + 1) + 8 * j);
            if (([(NSMutableSet *)self->_disabledSynchronizedSlaveSemaphores containsObject:v29]& 1) == 0)
            {
              dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
            }
          }

          v26 = [(NSMutableArray *)emitSynchronizedSlaveSampleBufferSemaphores countByEnumeratingWithState:&v49 objects:v48 count:16];
        }

        while (v26);
      }
    }

    else if ([(NSMutableArray *)self->_emitSampleBufferSemaphores count])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"We have an emitSampleBufferSemaphore but no emitSynchronizedSlaveSampleBufferSemaphore" userInfo:0]);
    }

    if (!v20)
    {
      goto LABEL_53;
    }

    synchronizedSlavePhotoDecompressor = self->_synchronizedSlavePhotoDecompressor;
    if (!synchronizedSlavePhotoDecompressor)
    {
      synchronizedSlavePhotoDecompressor = -[BWPhotoDecompressor initWithOutputPixelBufferPool:]([BWPhotoDecompressor alloc], "initWithOutputPixelBufferPool:", [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{@"SynchronizedSlaveFrame", "livePixelBufferPool"}]);
      self->_synchronizedSlavePhotoDecompressor = synchronizedSlavePhotoDecompressor;
    }

    v31 = [(BWPhotoDecompressor *)synchronizedSlavePhotoDecompressor newUncompressedSampleBufferFromSampleBuffer:AttachedMedia];
    FigCaptureMetadataUtilitiesAddSampleBufferMetadataUsedByVideoEncoderToPixelBuffer(v20);
    BWSampleBufferRemoveAttachedMedia(v20, 0x1F21AAA50);
    if (v31)
    {
      BWSampleBufferSetAttachedMedia(v20, @"SynchronizedSlaveFrame", v31);
      if (v38 == v37)
      {
        if ([(NSMutableArray *)self->_emitSynchronizedSlaveSampleBufferSemaphores count])
        {
          [v19 addObjectsFromArray:self->_emitSynchronizedSlaveSampleBufferSemaphores];
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          disabledSynchronizedSlaveSemaphores = self->_disabledSynchronizedSlaveSemaphores;
          v33 = [(NSMutableSet *)disabledSynchronizedSlaveSemaphores countByEnumeratingWithState:&v44 objects:v43 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v45;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v45 != v35)
                {
                  objc_enumerationMutation(disabledSynchronizedSlaveSemaphores);
                }

                [v19 removeObject:*(*(&v44 + 1) + 8 * k)];
              }

              v34 = [(NSMutableSet *)disabledSynchronizedSlaveSemaphores countByEnumeratingWithState:&v44 objects:v43 count:16];
            }

            while (v34);
          }
        }
      }

      CFRelease(v31);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v4 = v20;
    DataBuffer = v40;
    v18 = v39;
    if (!v21)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  v16 = CMGetAttachment(v4, @"FileWriterAction", 0);
  if (v16)
  {
    if (self->_synchronizedSlaveAttachedMediaDecompressionEnabled)
    {
      if ([v16 isEqualToString:0x1F21A9C30])
      {
        v17 = CMGetAttachment(v4, @"RecordingSettings", 0);
        if (v17)
        {
          -[BWPhotoDecompressorNode _setOverCaptureSynchronizedSlaveSemaphoreEnabled:](self, [v17 spatialOverCaptureMovieURL] != 0);
        }
      }
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(v21) = 1;
LABEL_52:
  if (v18)
  {
    goto LABEL_53;
  }

LABEL_58:
  if (v4)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:v4];
    if (DataBuffer)
    {
      ++self->_numberOfBuffersEmitted;
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

LABEL_55:
  if (v20)
  {
    CFRelease(v20);
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if ([(NSMutableArray *)self->_emitSampleBufferSemaphores count:a3])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:self->_emitSampleBufferSemaphores];
    if ([(NSMutableArray *)self->_emitSynchronizedSlaveSampleBufferSemaphores count])
    {
      [v6 addObjectsFromArray:self->_emitSynchronizedSlaveSampleBufferSemaphores];
    }

    v7 = [BWDroppedSample newDroppedSampleFromDroppedSample:a3 backPressureSemaphoresToIgnore:v6];
  }

  else
  {
    v7 = a3;
  }

  v8 = v7;
  [(BWNodeOutput *)self->super._output emitDroppedSample:v7];
}

- (void)addEmitSampleBufferSemaphore:(id)a3
{
  emitSampleBufferSemaphores = self->_emitSampleBufferSemaphores;
  if (!emitSampleBufferSemaphores)
  {
    emitSampleBufferSemaphores = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_emitSampleBufferSemaphores = emitSampleBufferSemaphores;
  }

  if (([(NSMutableArray *)emitSampleBufferSemaphores containsObject:a3]& 1) == 0)
  {
    v6 = self->_emitSampleBufferSemaphores;

    [(NSMutableArray *)v6 addObject:a3];
  }
}

- (void)addEmitSynchronizedSlaveSampleBufferSemaphore:(id)a3
{
  emitSynchronizedSlaveSampleBufferSemaphores = self->_emitSynchronizedSlaveSampleBufferSemaphores;
  if (!emitSynchronizedSlaveSampleBufferSemaphores)
  {
    emitSynchronizedSlaveSampleBufferSemaphores = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_emitSynchronizedSlaveSampleBufferSemaphores = emitSynchronizedSlaveSampleBufferSemaphores;
  }

  [(NSMutableArray *)emitSynchronizedSlaveSampleBufferSemaphores addObject:a3];
}

- (void)_releaseResources
{
  if (a1)
  {
    [(BWPhotoDecompressorNode *)a1 _ensureSemaphoresAreBalanced];

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }
}

- (void)_setOverCaptureSynchronizedSlaveSemaphoreEnabled:(void *)result
{
  if (result)
  {
    v2 = result;
    result = result[20];
    if (result)
    {
      v4 = [result lastObject];
      v5 = v2[21];
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v2[21] = v5;
      }

      if (a2)
      {

        return [v5 removeObject:v4];
      }

      else
      {

        return [v5 addObject:v4];
      }
    }
  }

  return result;
}

- (uint64_t)_ensureSemaphoresAreBalanced
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 152) count];
    if (v2 && *(v1 + 180) < *(v1 + 176))
    {
      do
      {
        v10 = *(v1 + 152);
        v2 = OUTLINED_FUNCTION_0_12(v2, v3, v4, v5, v6, v7, v8, v9, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v63, v64, v65, v66);
        if (v2)
        {
          v11 = v2;
          v12 = MEMORY[0];
          do
          {
            v13 = 0;
            do
            {
              if (MEMORY[0] != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = dispatch_semaphore_signal(*(8 * v13++));
            }

            while (v11 != v13);
            v2 = OUTLINED_FUNCTION_0_12(v14, v15, v16, v17, v18, v19, v20, v21, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, v63, v64, v65, v66);
            v11 = v2;
          }

          while (v2);
        }

        ++*(v1 + 180);
      }

      while (*(v1 + 180) < *(v1 + 176));
    }

    result = [*(v1 + 160) count];
    if (result && *(v1 + 188) < *(v1 + 184))
    {
      do
      {
        v29 = *(v1 + 160);
        result = OUTLINED_FUNCTION_1_3(result, v22, v23, v24, v25, v26, v27, v28, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, 0);
        if (result)
        {
          v30 = result;
          v31 = MEMORY[0];
          do
          {
            v32 = 0;
            do
            {
              if (MEMORY[0] != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = dispatch_semaphore_signal(*(8 * v32++));
            }

            while (v30 != v32);
            result = OUTLINED_FUNCTION_1_3(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v58);
            v30 = result;
          }

          while (result);
        }

        ++*(v1 + 188);
      }

      while (*(v1 + 188) < *(v1 + 184));
    }
  }

  return result;
}

@end