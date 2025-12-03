@interface JFXVideoDecoderInterface
- (JFXVideoDecoderInterface)init;
- (JFXVideoDecoderInterface)initWithFormatDescription:(opaqueCMFormatDescription *)description;
- (__CVBuffer)decodeFrame:(opaqueCMSampleBuffer *)frame;
- (void)dealloc;
@end

@implementation JFXVideoDecoderInterface

- (JFXVideoDecoderInterface)init
{
  v5.receiver = self;
  v5.super_class = JFXVideoDecoderInterface;
  v2 = [(JFXVideoDecoderInterface *)&v5 init];
  if (v2)
  {
    v3 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [JFXVideoDecoderInterface init];
    }
  }

  return v2;
}

- (JFXVideoDecoderInterface)initWithFormatDescription:(opaqueCMFormatDescription *)description
{
  v12[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = JFXVideoDecoderInterface;
  v4 = [(JFXVideoDecoderInterface *)&v10 init];
  v5 = v4;
  if (v4)
  {
    outputCallback.decompressionOutputCallback = VTDecompressionOutputCallbackImpl;
    outputCallback.decompressionOutputRefCon = v4;
    v11[0] = @"EnableHardwareAcceleratedVideoDecoder";
    v11[1] = @"RequireHardwareAcceleratedVideoDecoder";
    v12[0] = MEMORY[0x277CBEC38];
    v12[1] = MEMORY[0x277CBEC28];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    if (!VTDecompressionSessionCreate(*MEMORY[0x277CBECE8], description, v6, 0, &outputCallback, &v5->_session))
    {
      v7 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [JFXVideoDecoderInterface initWithFormatDescription:];
      }
    }
  }

  return v5;
}

- (__CVBuffer)decodeFrame:(opaqueCMSampleBuffer *)frame
{
  infoFlagsOut = 0;
  v5 = dispatch_semaphore_create(0);
  [(JFXVideoDecoderInterface *)self setFrameSemaphore:v5];

  v6 = VTDecompressionSessionDecodeFrame(self->_session, frame, 0, self, &infoFlagsOut);
  v7 = JFXLog_DebugDepthCodec();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [(JFXVideoDecoderInterface *)self decodeFrame:v6, v7];
    }
  }

  else if (v8)
  {
    [JFXVideoDecoderInterface decodeFrame:];
  }

  frameSemaphore = [(JFXVideoDecoderInterface *)self frameSemaphore];
  dispatch_semaphore_wait(frameSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(JFXVideoDecoderInterface *)self imageBuffer];
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    VTDecompressionSessionFinishDelayedFrames(session);
    v4 = self->_session;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = JFXVideoDecoderInterface;
  [(JFXVideoDecoderInterface *)&v5 dealloc];
}

- (void)decodeFrame:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "JFXVideoDecoderInterface[%p]: Decoding fails with the new session: %d!\n", &v3, 0x12u);
}

@end