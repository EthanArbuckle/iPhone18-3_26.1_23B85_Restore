@interface MIOLinearVCPDecoderController
- (BOOL)configureSessionError:(id *)error;
- (BOOL)setupDecoderWithFrame:(opaqueCMSampleBuffer *)frame error:(id *)error;
- (MIOLinearVCPDecoderController)initWithTargetPixelFormat:(unsigned int)format;
- (MIOLinearVCPDecoderController)initWithTargetPixelFormat:(unsigned int)format writingSessionProperties:(id)properties;
- (__CVBuffer)decodeFrame:(opaqueCMSampleBuffer *)frame pts:(id *)pts error:(id *)error;
- (void)dealloc;
- (void)discardCurrentBufferIfExists;
- (void)frameDecodingFailed:(int)failed infoFlags:(unsigned int)flags;
- (void)frameReceived:(__CVBuffer *)received pts:(id *)pts;
@end

@implementation MIOLinearVCPDecoderController

- (MIOLinearVCPDecoderController)initWithTargetPixelFormat:(unsigned int)format
{
  v8.receiver = self;
  v8.super_class = MIOLinearVCPDecoderController;
  v4 = [(MIOLinearVCPDecoderController *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_targetPixelFormat = format;
    v4->_callback = DecodeCallbackImpl;
    sessionProperties = v4->_sessionProperties;
    v4->_sessionProperties = &unk_2868E3C00;
  }

  return v5;
}

- (MIOLinearVCPDecoderController)initWithTargetPixelFormat:(unsigned int)format writingSessionProperties:(id)properties
{
  v4 = *&format;
  propertiesCopy = properties;
  v7 = [(MIOLinearVCPDecoderController *)self initWithTargetPixelFormat:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [(NSDictionary *)v7->_sessionProperties mutableCopy];
    v10 = [propertiesCopy objectForKey:@"TNGMode"];
    if (v10)
    {
      [v9 setObject:v10 forKey:@"TNGMode"];
    }

    v11 = [propertiesCopy objectForKey:@"TNGDimensionReductionMode"];

    if (v11)
    {
      [v9 setObject:v11 forKey:@"TNGDimensionReductionMode"];
    }

    v12 = [propertiesCopy objectForKey:@"TNGDimensionReductionLevel"];

    if (v12)
    {
      [v9 setObject:v12 forKey:@"TNGDimensionReductionLevel"];
    }

    v13 = [v9 copy];
    sessionProperties = v8->_sessionProperties;
    v8->_sessionProperties = v13;
  }

  return v8;
}

- (void)dealloc
{
  if (self->_session)
  {
    VCPDecompressionSessionInvalidate_delayInitStub(v2);
    CFRelease(self->_session);
  }

  v4.receiver = self;
  v4.super_class = MIOLinearVCPDecoderController;
  [(MIOLinearVCPDecoderController *)&v4 dealloc];
}

- (void)discardCurrentBufferIfExists
{
  currentBuffer = self->_currentBuffer;
  if (currentBuffer)
  {
    CVPixelBufferRelease(currentBuffer);
    self->_currentBuffer = 0;
    v4 = MEMORY[0x277CC0890];
    *&self->_currentPts.value = *MEMORY[0x277CC0890];
    self->_currentPts.epoch = *(v4 + 16);
  }
}

- (void)frameReceived:(__CVBuffer *)received pts:(id *)pts
{
  [(MIOLinearVCPDecoderController *)self discardCurrentBufferIfExists];
  decodeError = self->_decodeError;
  self->_decodeError = 0;

  self->_currentBuffer = CVPixelBufferRetain(received);
  var3 = pts->var3;
  *&self->_currentPts.value = *&pts->var0;
  self->_currentPts.epoch = var3;
  decodeWaitGroup = self->_decodeWaitGroup;

  dispatch_group_leave(decodeWaitGroup);
}

- (void)frameDecodingFailed:(int)failed infoFlags:(unsigned int)flags
{
  v4 = *&flags;
  v5 = *&failed;
  [(MIOLinearVCPDecoderController *)self discardCurrentBufferIfExists];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoding error: %d infoFlags: %d", v5, v4];
  v7 = [MEMORY[0x277CCA9B8] readerErrorWithMessage:? code:?];
  decodeError = self->_decodeError;
  self->_decodeError = v7;

  dispatch_group_leave(self->_decodeWaitGroup);
}

- (BOOL)setupDecoderWithFrame:(opaqueCMSampleBuffer *)frame error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  FormatDescription = CMSampleBufferGetFormatDescription(frame);
  self->_fd = FormatDescription;
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  v26 = *MEMORY[0x277CC4EC8];
  v7 = v26;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v9 = HIDWORD(*&Dimensions);
  v28[0] = v8;
  v27 = *MEMORY[0x277CC4DD8];
  v10 = v27;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
  v28[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v26 count:2];

  v24[0] = v7;
  v13 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
  v25[0] = v13;
  v24[1] = v10;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v25[1] = v14;
  v24[2] = @"DecPixelFormat";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_targetPixelFormat];
  v25[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v17 = [v16 mutableCopy];

  if (self->_targetPixelFormat == 1278226736)
  {
    [v17 removeObjectForKey:@"DecPixelFormat"];
  }

  delayInitStub = VCPDecompressionSessionCreate_delayInitStub(v18);
  if (delayInitStub)
  {
    delayInitStub = [MEMORY[0x277CCACA8] stringWithFormat:@"Error VCPDecompressionSessionCreate: %d", delayInitStub];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:delayInitStub code:32];

    v21 = 0;
  }

  else
  {
    v21 = [(MIOLinearVCPDecoderController *)self configureSessionError:error];
  }

  return v21;
}

- (BOOL)configureSessionError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_sessionProperties;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_sessionProperties valueForKey:v9];
        inited = VCPDecompressionSessionSetProperty_delayInitStub(v11);
        if (inited)
        {
          inited = [MEMORY[0x277CCACA8] stringWithFormat:@"Set '%@' to '%@' in vcp encoder config (Err: %d).", v9, v10, inited];
          [MEMORY[0x277CCA9B8] populateReaderError:error message:inited code:inited];
          v15 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v22 = v9;
            v23 = 2114;
            v24 = v10;
            v25 = 1024;
            v26 = inited;
            _os_log_impl(&dword_257883000, v15, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Set '%{public}@' to '%{public}@' in vcp encoder config (Err: %d). ⛔️⛔️⛔️", buf, 0x1Cu);
          }

          v13 = 0;
          goto LABEL_13;
        }
      }

      v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (__CVBuffer)decodeFrame:(opaqueCMSampleBuffer *)frame pts:(id *)pts error:(id *)error
{
  if (!self->_session)
  {
    if (![(MIOLinearVCPDecoderController *)self setupDecoderWithFrame:frame error:error])
    {
      return 0;
    }

    v8 = dispatch_group_create();
    decodeWaitGroup = self->_decodeWaitGroup;
    self->_decodeWaitGroup = v8;
  }

  dispatch_group_enter(self->_decodeWaitGroup);
  inited = VCPDecompressionSessionDecodeFrame_delayInitStub(v10);
  if (inited)
  {
    inited = [MEMORY[0x277CCACA8] stringWithFormat:@"Decode frame error: %d", inited];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:inited code:32];
    dispatch_group_leave(self->_decodeWaitGroup);

    return 0;
  }

  v13 = self->_decodeWaitGroup;
  v14 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v13, v14))
  {
    [MEMORY[0x277CCA9B8] populateReaderError:error message:@"Docoding timeout." code:32];
    dispatch_group_leave(self->_decodeWaitGroup);
    return 0;
  }

  VCPDecompressionSessionFinishDelayedFrames_delayInitStub(v15);
  if (self->_decodeError)
  {
    if (pts)
    {
      v17 = *MEMORY[0x277CC0890];
      pts->var3 = *(MEMORY[0x277CC0890] + 16);
      *&pts->var0 = v17;
    }

    if (!error)
    {
      return 0;
    }

    decodeError = self->_decodeError;
    v19 = decodeError;
    result = 0;
    *error = decodeError;
  }

  else
  {
    if (pts)
    {
      v20 = *&self->_currentPts.value;
      pts->var3 = self->_currentPts.epoch;
      *&pts->var0 = v20;
    }

    result = self->_currentBuffer;
    self->_currentBuffer = 0;
  }

  return result;
}

@end