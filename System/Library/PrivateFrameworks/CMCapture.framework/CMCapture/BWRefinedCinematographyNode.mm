@interface BWRefinedCinematographyNode
- (BWRefinedCinematographyNode)initWithAudioEnabled:(BOOL)enabled;
- (void)_attachRefinedFramesToSbuf:(uint64_t)sbuf;
- (void)_flush;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWRefinedCinematographyNode

- (BWRefinedCinematographyNode)initWithAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13.receiver = self;
  v13.super_class = BWRefinedCinematographyNode;
  v4 = [(BWNode *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E6960C70];
    v7 = *MEMORY[0x1E6960C70];
    *(v4 + 168) = *MEMORY[0x1E6960C70];
    v8 = *(v6 + 16);
    *(v4 + 23) = v8;
    *(v4 + 9) = v7;
    *(v4 + 20) = v8;
    *(v4 + 24) = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5->_videoInput setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v5->_videoInput setPassthroughMode:1];
    [(BWNode *)v5 addInput:v5->_videoInput];
    v9 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
    v5->_videoOutput = v9;
    [(BWNodeOutput *)v9 setName:@"PassThru"];
    [(BWNodeOutput *)v5->_videoOutput setPassthroughMode:1];
    [(BWNode *)v5 addOutput:v5->_videoOutput];
    if (enabledCopy)
    {
      v10 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v5];
      v5->_audioInput = v10;
      [(BWNode *)v5 addInput:v10];
      v11 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v5];
      v5->_audioOutput = v11;
      [(BWNode *)v5 addOutput:v11];
    }

    v5->_refinementSession = [objc_alloc(getPTCinematographyRefinementClass()) initWithOptions:0];
  }

  return v5;
}

- (void)didReachEndOfDataForInput:(id)input
{
  v4 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v4)
  {
    [(BWRefinedCinematographyNode *)self _flush];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    outputs = [(BWNode *)self outputs];
    v6 = [(NSArray *)outputs countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(outputs);
          }

          [*(*(&v11 + 1) + 8 * v9++) markEndOfLiveOutput];
        }

        while (v7 != v9);
        v7 = [(NSArray *)outputs countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v7);
    }

    self->_numEODMessagesReceived = 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWRefinedCinematographyNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  if (self->_videoInput == input)
  {
    v4 = &OBJC_IVAR___BWRefinedCinematographyNode__videoOutput;
  }

  else
  {
    v4 = &OBJC_IVAR___BWRefinedCinematographyNode__audioOutput;
  }

  [*(&self->super.super.isa + *v4) setFormat:format];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_videoInput == input)
  {
    v5 = &OBJC_IVAR___BWRefinedCinematographyNode__videoOutput;
  }

  else
  {
    v5 = &OBJC_IVAR___BWRefinedCinematographyNode__audioOutput;
  }

  [*(&self->super.super.isa + *v5) makeConfiguredFormatLive];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (self->_videoInput == input)
  {
    if (BWSampleBufferIsMarkerBuffer(buffer))
    {
      v9 = CMGetAttachment(buffer, @"FileWriterAction", 0);
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 == CFStringGetTypeID())
        {
          if (CFEqual(v10, @"Stop") || CFEqual(v10, @"Pause") || CFEqual(v10, @"Flush") || CFEqual(v10, @"Terminate") || CFEqual(v10, @"StreamForcedOff"))
          {
            [(BWRefinedCinematographyNode *)self _flush];
          }

          else if (CFEqual(v10, @"Start"))
          {
            [(PTCinematographyRefinement *)self->_refinementSession startRecording];
            self->_isRefinementSessionActive = 1;
          }
        }
      }
    }

    else
    {
      v12 = CMGetAttachment(buffer, @"CinematicVideoCinematographyMetadata", 0);
      if (v12)
      {
        v13 = [v12 objectForKeyedSubscript:0x1F21A9950];
        refinementSession = self->_refinementSession;
        v16 = v13;
        -[PTCinematographyRefinement addFrames:](refinementSession, "addFrames:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]);
      }

      [(BWRefinedCinematographyNode *)self _attachRefinedFramesToSbuf:buffer];
    }

    if (*v7 == 1)
    {
      kdebug_trace();
    }

    v8 = &OBJC_IVAR___BWRefinedCinematographyNode__videoOutput;
  }

  else
  {
    if ((self->_firstAudioPTS.flags & 1) == 0)
    {
      CMSampleBufferGetPresentationTimeStamp(&v15, buffer);
      self->_firstAudioPTS = v15;
    }

    CMSampleBufferGetPresentationTimeStamp(&v15, buffer);
    self->_lastAudioPTS = v15;
    v8 = &OBJC_IVAR___BWRefinedCinematographyNode__audioOutput;
  }

  [*(&self->super.super.isa + *v8) emitSampleBuffer:buffer];
}

- (void)_flush
{
  if (self)
  {
    v10 = 0;
    if (*(self + 136) == 1)
    {
      [*(self + 128) stopRecording];
      *(self + 136) = 0;
      memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      __dst.presentationTimeStamp = *(self + 168);
      lhs = *(self + 144);
      rhs = *(self + 168);
      CMTimeSubtract(&__dst.duration, &lhs, &rhs);
      v2 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &__dst, 0, 0, &v10);
      v3 = v10;
      if (!v2)
      {
        CMSetAttachment(v10, @"RefinedCinematographyStreamEndMarker", MEMORY[0x1E695E118], 1u);
        [(BWRefinedCinematographyNode *)self _attachRefinedFramesToSbuf:v10];
        [*(self + 16) emitSampleBuffer:v10];
        v3 = v10;
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = MEMORY[0x1E6960C70];
    v5 = *MEMORY[0x1E6960C70];
    *(self + 168) = *MEMORY[0x1E6960C70];
    v6 = *(v4 + 16);
    *(self + 184) = v6;
    *(self + 144) = v5;
    *(self + 160) = v6;
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

- (void)_attachRefinedFramesToSbuf:(uint64_t)sbuf
{
  if (sbuf)
  {
    refinedFrames = [*(sbuf + 128) refinedFrames];
    if ([refinedFrames count])
    {
      target = a2;
      value = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(refinedFrames, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v4 = [refinedFrames countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (!v4)
      {
        goto LABEL_20;
      }

      v5 = v4;
      v19 = *v26;
      allocator = *MEMORY[0x1E695E480];
      obj = refinedFrames;
      while (1)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v25 + 1) + 8 * i);
          if (v7)
          {
            [v7 time];
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          v8 = CMTimeCopyAsDictionary(&time, allocator);
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v21[0] = 0x1F21A98F0;
          v10 = MEMORY[0x1E696AD98];
          [v7 aperture];
          v22[0] = [v10 numberWithFloat:?];
          v21[1] = 0x1F21A9930;
          v11 = MEMORY[0x1E696AD98];
          [v7 focusDistance];
          v22[1] = [v11 numberWithFloat:?];
          v22[2] = v8;
          v21[2] = 0x1F217CEB0;
          v21[3] = 0x1F21A9950;
          v22[3] = v7;
          [v9 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v22, v21, 4), 0x1F21A9A50}];
          AssociatedObject = objc_getAssociatedObject(v7, @"CinematicVideoTimedRenderingMetadata");
          v13 = objc_opt_class();
          getPTTimedRenderingMetadataVersion1Class();
          if (v13 == objc_opt_class())
          {
            [v7 focusDistance];
            [AssociatedObject setFocusDistance:?];
            [v7 aperture];
            [AssociatedObject setAperture:?];
          }

          else
          {
            v14 = objc_opt_class();
            getPTTimedRenderingMetadataVersion2Class();
            if (v14 != objc_opt_class())
            {
              goto LABEL_16;
            }

            [v7 focusDistance];
            [AssociatedObject setFocusDisparity:?];
            [v7 aperture];
            [AssociatedObject setFNumber:?];
          }

          [v9 setObject:AssociatedObject forKeyedSubscript:0x1F21A9A70];
LABEL_16:
          v15 = objc_getAssociatedObject(v7, @"CinematicVideoTimedStabilizationMetadata");
          if (v15)
          {
            [v9 setObject:v15 forKeyedSubscript:0x1F21A9A90];
          }

          [value addObject:v9];
        }

        v5 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (!v5)
        {
LABEL_20:
          CMSetAttachment(target, @"CinematicVideoMetadata", value, 1u);

          return;
        }
      }
    }
  }
}

@end