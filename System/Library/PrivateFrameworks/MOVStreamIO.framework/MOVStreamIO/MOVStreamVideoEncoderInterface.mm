@interface MOVStreamVideoEncoderInterface
+ (__CVBuffer)createHEVCCompatiblePixelBuffer:(__CVBuffer *)a3;
- (BOOL)configureSessionOverride:(OpaqueVTCompressionSession *)a3;
- (BOOL)frameReorderingEnabled;
- (BOOL)preSetupWithFormatDescription:(opaqueCMFormatDescription *)a3;
- (BOOL)processFrame:(__CVBuffer *)a3 pts:(id *)a4 frameProperties:(__CFDictionary *)a5 metadata:(id)a6;
- (BOOL)shouldEnableInProcessEncoding;
- (MOVStreamVideoEncoderInterface)init;
- (MOVStreamVideoEncoderInterface)initWithExpectedFrameRate:(double)a3 forStream:(id)a4 delegate:(id)a5 enableAVEHighPerformanceProfile:(BOOL)a6;
- (id)initForStream:(id)a3 configuration:(id)a4 delegate:(id)a5;
- (id)initForVCPEncodingStream:(id)a3 videoEncoderSpec:(id)a4 sessionProperties:(id)a5 delegate:(id)a6;
- (id)overrideVideoEncoderSpecification;
- (unsigned)codecTypeOverride;
- (void)awaitEncoderClosed;
- (void)closeEncoder;
- (void)closeEncoderInDispatchGroup:(id)a3;
- (void)dealloc;
- (void)encodeFrame:(__CVBuffer *)a3 pts:(id *)a4 frameProperties:(__CFDictionary *)a5 metadata:(id)a6;
- (void)setupEncoderWithWidth:(int)a3 andHeight:(int)a4 imageFormat:(int)a5 formatDescription:(opaqueCMFormatDescription *)a6 andFramerate:(double)a7;
- (void)skipFrameWithStatus:(int)a3 andFlags:(unsigned int)a4;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3 pts:(id *)a4 metadata:(id)a5 withStatus:(int)a6 andFlags:(unsigned int)a7;
@end

@implementation MOVStreamVideoEncoderInterface

- (MOVStreamVideoEncoderInterface)init
{
  v3.receiver = self;
  v3.super_class = MOVStreamVideoEncoderInterface;
  if ([(MOVStreamVideoEncoderInterface *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (MOVStreamVideoEncoderInterface)initWithExpectedFrameRate:(double)a3 forStream:(id)a4 delegate:(id)a5 enableAVEHighPerformanceProfile:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v13 = [(MOVStreamVideoEncoderInterface *)self init];
  v14 = v13;
  if (v13)
  {
    v13->m_expectedFrameRate = a3;
    objc_storeStrong(&v13->m_stream, a4);
    objc_storeWeak(&v14->m_delegate, v12);
    v14->m_enableAVEHighPerformanceProfile = a6;
  }

  return v14;
}

- (id)initForStream:(id)a3 configuration:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MOVStreamVideoEncoderInterface *)self init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->m_config, a4);
    objc_storeStrong(p_isa + 4, a3);
    objc_storeWeak(p_isa + 5, v11);
  }

  return p_isa;
}

- (id)initForVCPEncodingStream:(id)a3 videoEncoderSpec:(id)a4 sessionProperties:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(MOVStreamVideoEncoderInterface *)self init];
  v16 = v15;
  if (v15)
  {
    [(MOVStreamVideoEncoderInterface *)v15 setUseLegacyVTController:0];
    v16->m_requireVCPEncoding = 1;
    objc_storeStrong(&v16->m_videoEncoderSpecVCP, a4);
    objc_storeStrong(&v16->m_sessionPropertiesVCP, a5);
    objc_storeStrong(&v16->m_stream, a3);
    objc_storeWeak(&v16->m_delegate, v14);
  }

  return v16;
}

- (void)dealloc
{
  m_encoder = self->m_encoder;
  if (m_encoder)
  {
    MOVStreamHEVCLosslessEncoder::~MOVStreamHEVCLosslessEncoder(m_encoder);
    MEMORY[0x259C68350]();
  }

  m_preSetupFormatDescription = self->m_preSetupFormatDescription;
  if (m_preSetupFormatDescription)
  {
    CFRelease(m_preSetupFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = MOVStreamVideoEncoderInterface;
  [(MOVStreamVideoEncoderInterface *)&v5 dealloc];
}

- (BOOL)shouldEnableInProcessEncoding
{
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->m_delegate);
  v6 = [v5 shouldEnableInProcessEncoding];

  return v6;
}

- (void)setupEncoderWithWidth:(int)a3 andHeight:(int)a4 imageFormat:(int)a5 formatDescription:(opaqueCMFormatDescription *)a6 andFramerate:(double)a7
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(MOVStreamVideoEncoderInterface *)self useLegacyVTController])
  {
    m_encoder = self->m_encoder;
    m_encoder->var0 = self->m_enableAVEHighPerformanceProfile;
    if (MOVStreamHEVCLosslessEncoder::Open(m_encoder, a3, a4, a5, [(MOVStreamVideoEncoderInterface *)self shouldEnableInProcessEncoding], a6, VTCompressionOutputCallbackImpl, self, a7))
    {
      self->m_failedState = 1;
      self->m_encoderInitialized = 0;
      v14 = self->m_encoder;

      MOVStreamHEVCLosslessEncoder::invalidateSession(v14);
      return;
    }

    goto LABEL_11;
  }

  if (self->m_requireVCPEncoding)
  {
    v15 = [[MIOVCPEncoderController alloc] initWithFormtDescription:a6 videoEncoderSpec:self->m_videoEncoderSpecVCP sessionProperties:self->m_sessionPropertiesVCP outputCallback:VTCompressionOutputCallbackImpl delegate:self];
  }

  else
  {
    v15 = [[MIOVideoEncoderController alloc] initWithEncoderConfig:self->m_config formtDescription:a6 inProcessEncoding:[(MOVStreamVideoEncoderInterface *)self shouldEnableInProcessEncoding] frameRate:self->m_enableAVEHighPerformanceProfile aveHighPerfMode:VTCompressionOutputCallbackImpl outputCallback:self delegate:a7];
  }

  encoderCtrl = self->_encoderCtrl;
  self->_encoderCtrl = v15;

  v17 = self->_encoderCtrl;
  v26 = 0;
  v18 = [(MIOEncoderController *)v17 openEncoderWithContext:self error:&v26];
  v19 = v26;
  v20 = v19;
  if (v18)
  {

LABEL_11:
    v21 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      m_stream = self->m_stream;
      v23 = MOVStreamHEVCLosslessEncoder::frameReorderingEnabled(self->m_encoder);
      *buf = 138543618;
      v28 = m_stream;
      v29 = 1024;
      LODWORD(v30) = v23;
      _os_log_impl(&dword_257883000, v21, OS_LOG_TYPE_INFO, "%{public}@: Encoder frame reordering enabled: %d.", buf, 0x12u);
    }

    self->m_encoderInitialized = 1;
    return;
  }

  v24 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = self->m_stream;
    *buf = 138412546;
    v28 = v25;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, "Error opening encoding session '%@': %@", buf, 0x16u);
  }

  self->m_failedState = 1;
  self->m_encoderInitialized = 0;
  MOVStreamHEVCLosslessEncoder::invalidateSession(self->m_encoder);
}

- (BOOL)preSetupWithFormatDescription:(opaqueCMFormatDescription *)a3
{
  if (a3)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
    Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
    v7 = 11;
    if (MediaSubType <= 1278226487)
    {
      if (MediaSubType == 875704422 || MediaSubType == 875704438)
      {
        v7 = 0;
      }
    }

    else
    {
      if (MediaSubType == 1278226742)
      {
        v8 = 9;
      }

      else
      {
        v8 = 11;
      }

      if (MediaSubType == 1278226736)
      {
        v9 = 9;
      }

      else
      {
        v9 = v8;
      }

      if (MediaSubType == 1278226488)
      {
        v7 = 10;
      }

      else
      {
        v7 = v9;
      }
    }

    [(MOVStreamVideoEncoderInterface *)self setupEncoderWithWidth:Dimensions andHeight:HIDWORD(Dimensions) imageFormat:v7 formatDescription:a3 andFramerate:self->m_expectedFrameRate];
    self->m_failedState = 0;
    if (self->m_encoderInitialized)
    {
      self->m_preSetupFormatDescription = a3;
      CFRetain(a3);
      return self->m_encoderInitialized;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

- (BOOL)processFrame:(__CVBuffer *)a3 pts:(id *)a4 frameProperties:(__CFDictionary *)a5 metadata:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a6;
  if (self->m_preSetupFormatDescription && self->m_encoderInitialized)
  {
    v9 = [MOVStreamIOUtility createFormatDescriptionFromPixelBuffer:a3];
    if ([(MOVStreamVideoEncoderInterface *)self formatDescriptionHasChanged:v9])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Orig fd: %@  New fd: %@", v9, self->m_preSetupFormatDescription];
      v11 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        m_stream = self->m_stream;
        buf = 138543618;
        buf_4 = m_stream;
        buf_12 = 2114;
        buf_14 = v10;
        _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_INFO, "Format description changed for stream '%{public}@' failed (%{public}@)! Try re-initlialize encoder.", &buf, 0x16u);
      }

      MOVStreamHEVCLosslessEncoder::InvalidateEncoder(self->m_encoder);
      self->m_encoderInitialized = 0;
    }

    CFRelease(v9);
    CFRelease(self->m_preSetupFormatDescription);
    self->m_preSetupFormatDescription = 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (self->m_encoderInitialized)
  {
LABEL_9:
    if (self->m_convertL016toL010)
    {
      [MOVStreamVideoEncoderInterface createHEVCCompatiblePixelBuffer:a3];
    }

    operator new();
  }

  v14 = PixelFormatType;
  v15 = [MOVStreamIOUtility createFormatDescriptionFromPixelBuffer:a3];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (v14 <= 1278226487)
  {
    v18 = 0;
    if (v14 == 875704422 || v14 == 875704438)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v14 == 1278226488)
    {
      v18 = 10;
      goto LABEL_23;
    }

    if (v14 == 1278226736 || v14 == 1278226742)
    {
      v18 = 9;
LABEL_23:
      m_expectedFrameRate = self->m_expectedFrameRate;
      goto LABEL_24;
    }
  }

  v19 = [(MOVStreamVideoEncoderInterface *)self customEncoderConfig];
  m_expectedFrameRate = 0.0;
  if (v19 || self->m_config)
  {
    v18 = 11;
LABEL_24:
    [(MOVStreamVideoEncoderInterface *)self setupEncoderWithWidth:Width andHeight:Height imageFormat:v18 formatDescription:v15 andFramerate:m_expectedFrameRate];
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (self->m_encoderInitialized)
  {
    if (v14 == 1278226742)
    {
      v21 = [(MOVStreamEncoderConfig *)self->m_config codecType];
      if (v21 == 1752589105 || !v21)
      {
        self->m_convertL016toL010 = 1;
      }
    }

    goto LABEL_9;
  }

  return 0;
}

- (void)encodeFrame:(__CVBuffer *)a3 pts:(id *)a4 frameProperties:(__CFDictionary *)a5 metadata:(id)a6
{
  v10 = a6;
  if (!self->m_failedState)
  {
    CVPixelBufferRetain(a3);
    objc_initWeak(&location, self);
    m_encodingQueue = self->m_encodingQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__MOVStreamVideoEncoderInterface_encodeFrame_pts_frameProperties_metadata___block_invoke;
    v12[3] = &unk_279848460;
    objc_copyWeak(v14, &location);
    v15 = *&a4->var0;
    var3 = a4->var3;
    v14[1] = a3;
    v14[2] = a5;
    v13 = v10;
    dispatch_async(m_encodingQueue, v12);

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __75__MOVStreamVideoEncoderInterface_encodeFrame_pts_frameProperties_metadata___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v5 = [WeakRetained processFrame:*(a1 + 48) pts:&v7 frameProperties:*(a1 + 56) metadata:*(a1 + 32)];
    CVPixelBufferRelease(*(a1 + 48));
    if ((v5 & 1) == 0)
    {
      *(v4 + 65) = 1;
      MOVStreamHEVCLosslessEncoder::invalidateSession(*(v4 + 1));
      v6 = objc_loadWeakRetained(v4 + 5);
      [v6 encoder:v4 encodingFailedForStream:*(v4 + 4)];
    }
  }

  objc_autoreleasePoolPop(v2);
}

+ (__CVBuffer)createHEVCCompatiblePixelBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v6 = [MIOPixelBufferUtility createRawPixelBufferWithWidth:Width height:Height extendedRows:0 extendedPixelsPerRow:(CVPixelBufferGetBytesPerRow(a3) >> 1) - Width pixelFormat:1278226736 bytesPerRowAlignment:1 planeAlignment:1 bufferCacheMode:?];
  if (![MIOPixelBufferUtility copyFromPixelBuffer:a3 toPixelBuffer:v6 andShiftBits:2])
  {
    return 0;
  }

  [MIOPixelBufferUtility transferAttachmentForKey:*MEMORY[0x277CC4CC0] fromBuffer:a3 toBuffer:v6];
  [MIOPixelBufferUtility transferAttachmentForKey:*MEMORY[0x277CC4D10] fromBuffer:a3 toBuffer:v6];
  [MIOPixelBufferUtility transferAttachmentForKey:*MEMORY[0x277CC4C00] fromBuffer:a3 toBuffer:v6];
  [MIOPixelBufferUtility transferAttachmentForKey:*MEMORY[0x277CC4B80] fromBuffer:a3 toBuffer:v6];
  [MIOPixelBufferUtility transferAttachmentForKey:*MEMORY[0x277CC4B88] fromBuffer:a3 toBuffer:v6];
  return v6;
}

- (BOOL)frameReorderingEnabled
{
  if ([(MOVStreamVideoEncoderInterface *)self useLegacyVTController])
  {
    m_encoder = self->m_encoder;
    if (!m_encoder)
    {
      v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Encoder not configured yet." userInfo:0];
      objc_exception_throw(v6);
    }

    return MOVStreamHEVCLosslessEncoder::frameReorderingEnabled(m_encoder);
  }

  else
  {
    encoderCtrl = self->_encoderCtrl;

    return [(MIOEncoderController *)encoderCtrl frameReorderingEnabled];
  }
}

- (void)awaitEncoderClosed
{
  m_encodingQueue = self->m_encodingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MOVStreamVideoEncoderInterface_awaitEncoderClosed__block_invoke;
  block[3] = &unk_279847EE0;
  block[4] = self;
  dispatch_sync(m_encodingQueue, block);
}

- (void)closeEncoder
{
  v18 = *MEMORY[0x277D85DE8];
  self->m_encoderInitialized = 0;
  v3 = [(MOVStreamVideoEncoderInterface *)self useLegacyVTController];
  m_encoder = self->m_encoder;
  var2 = m_encoder->var2;
  m_encoder->var2 = 0;

  if (v3)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      m_stream = self->m_stream;
      *buf = 138543362;
      v15 = m_stream;
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_INFO, "[FINISH] %{public}@: Encoder complete session...", buf, 0xCu);
    }

    MOVStreamHEVCLosslessEncoder::Close(self->m_encoder);
  }

  else if (([(MIOEncoderController *)self->_encoderCtrl closed]& 1) == 0)
  {
    encoderCtrl = self->_encoderCtrl;
    v13 = 0;
    v9 = [(MIOEncoderController *)encoderCtrl closeEncoderError:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = self->m_stream;
        *buf = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "Error closing encoding session for stream '%@': %@", buf, 0x16u);
      }
    }
  }
}

- (void)closeEncoderInDispatchGroup:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    m_stream = self->m_stream;
    *buf = 138543362;
    v12 = m_stream;
    _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_INFO, "[FINISH] %{public}@: Encoder close...", buf, 0xCu);
  }

  dispatch_group_enter(v4);
  m_encodingQueue = self->m_encodingQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__MOVStreamVideoEncoderInterface_closeEncoderInDispatchGroup___block_invoke;
  v9[3] = &unk_279847E68;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(m_encodingQueue, v9);
}

void __62__MOVStreamVideoEncoderInterface_closeEncoderInDispatchGroup___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) closeEncoder];
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_INFO, "[FINISH] %{public}@: Encoder closed.", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
  objc_autoreleasePoolPop(v2);
}

- (void)skipFrameWithStatus:(int)a3 andFlags:(unsigned int)a4
{
  [(MOVStreamVideoEncoderInterface *)self setPendingFrames:[(MOVStreamVideoEncoderInterface *)self pendingFrames]- 1];
  self->_lastEncodingStatus = a3;
  self->_lastEncodingInfoFlags = a4;
  self->m_failedState = 1;
  MOVStreamHEVCLosslessEncoder::invalidateSession(self->m_encoder);
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  [WeakRetained encoder:self encodingFailedForStream:self->m_stream];
}

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3 pts:(id *)a4 metadata:(id)a5 withStatus:(int)a6 andFlags:(unsigned int)a7
{
  v12 = a5;
  [(MOVStreamVideoEncoderInterface *)self setPendingFrames:[(MOVStreamVideoEncoderInterface *)self pendingFrames]- 1];
  CFRetain(a3);
  self->_lastEncodingStatus = a6;
  self->_lastEncodingInfoFlags = a7;
  WeakRetained = objc_loadWeakRetained(&self->m_delegate);
  v14 = *a4;
  [WeakRetained encoder:self encodedSampleBuffer:a3 metadata:v12 presentationTime:&v14 streamId:self->m_stream];
}

- (BOOL)configureSessionOverride:(OpaqueVTCompressionSession *)a3
{
  if (![(MOVStreamVideoEncoderInterface *)self customEncoderConfig])
  {
    return 0;
  }

  m_config = self->m_config;
  if (!m_config)
  {
    WeakRetained = objc_loadWeakRetained(&self->m_delegate);
    v7 = [WeakRetained encoder:self configureSessionOverride:a3 streamId:self->m_stream];

    return v7;
  }

  return [(MOVStreamEncoderConfig *)m_config applySessionProperties:a3];
}

- (id)overrideVideoEncoderSpecification
{
  if ([(MOVStreamVideoEncoderInterface *)self customEncoderConfig])
  {
    m_config = self->m_config;
    if (m_config)
    {
      v4 = [(MOVStreamEncoderConfig *)m_config encoderSpecification];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->m_delegate);
      v4 = [WeakRetained encoder:self overrideVideoEncoderSpecificationForStreamId:self->m_stream];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)codecTypeOverride
{
  if (![(MOVStreamVideoEncoderInterface *)self customEncoderConfig])
  {
    return 0;
  }

  m_config = self->m_config;
  if (!m_config)
  {
    WeakRetained = objc_loadWeakRetained(&self->m_delegate);
    v5 = [WeakRetained encoder:self codecTypeOverrideForstreamId:self->m_stream];

    return v5;
  }

  return [(MOVStreamEncoderConfig *)m_config codecType];
}

@end