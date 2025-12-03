@interface MIOVCPEncoderController
- (BOOL)closeEncoderError:(id *)error;
- (BOOL)configureSessionError:(id *)error;
- (BOOL)encodeFrame:(__CVBuffer *)frame pts:(id *)pts properties:(__CFDictionary *)properties context:(void *)context error:(id *)error;
- (BOOL)openEncoderWithContext:(id)context error:(id *)error;
- (MIOVCPEncoderController)initWithFormtDescription:(opaqueCMFormatDescription *)description videoEncoderSpec:(id)spec sessionProperties:(id)properties outputCallback:(void *)callback delegate:(id)delegate;
- (MIOVideoEncoderControllerDelegate)delegate;
- (void)dealloc;
@end

@implementation MIOVCPEncoderController

- (MIOVCPEncoderController)initWithFormtDescription:(opaqueCMFormatDescription *)description videoEncoderSpec:(id)spec sessionProperties:(id)properties outputCallback:(void *)callback delegate:(id)delegate
{
  specCopy = spec;
  propertiesCopy = properties;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = MIOVCPEncoderController;
  v16 = [(MIOVCPEncoderController *)&v19 init];
  if (v16)
  {
    v17 = CFRetain(description);
    v16->_callbackFunc = callback;
    v16->_formatDesc = v17;
    objc_storeStrong(&v16->_videoEncoderSpec, spec);
    objc_storeStrong(&v16->_sessionProperties, properties);
    [(MIOVCPEncoderController *)v16 setDelegate:delegateCopy];
  }

  return v16;
}

- (void)dealloc
{
  [(MIOVCPEncoderController *)self closeEncoderError:0];
  formatDesc = self->_formatDesc;
  if (formatDesc)
  {
    CFRelease(formatDesc);
  }

  v4.receiver = self;
  v4.super_class = MIOVCPEncoderController;
  [(MIOVCPEncoderController *)&v4 dealloc];
}

- (BOOL)openEncoderWithContext:(id)context error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  CMVideoFormatDescriptionGetDimensions(self->_formatDesc);
  MediaSubType = CMFormatDescriptionGetMediaSubType(self->_formatDesc);
  v16 = *MEMORY[0x277CC4E30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:MediaSubType];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  videoEncoderSpec = [(MIOVCPEncoderController *)self videoEncoderSpec];
  p_session = &self->_session;
  delayInitStub = VCPCompressionSessionCreate_delayInitStub(v10);

  if (delayInitStub)
  {
    p_session = [MEMORY[0x277CCACA8] stringWithFormat:@"VCPCompressionSessionCreate failed with error %d.", delayInitStub, p_session];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:p_session code:delayInitStub];

    p_session2 = 0;
  }

  else
  {
    self->closed = 0;
    p_session2 = [(MIOVCPEncoderController *)self configureSessionError:error, self, p_session];
  }

  return p_session2;
}

- (BOOL)configureSessionError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  sessionProperties = [(MIOVCPEncoderController *)self sessionProperties];
  v6 = [sessionProperties countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(sessionProperties);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        sessionProperties2 = [(MIOVCPEncoderController *)self sessionProperties];
        v12 = [sessionProperties2 valueForKey:v10];

        inited = VCPCompressionSessionSetProperty_delayInitStub(v13);
        if (inited)
        {
          v16 = inited;
          inited = [MEMORY[0x277CCACA8] stringWithFormat:@"Set '%@' to '%@' in vcp encoder config (Err: %d).", v10, v12, inited];
          [MEMORY[0x277CCA9B8] populateReaderError:error message:inited code:v16];
          v18 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v25 = v10;
            v26 = 2114;
            v27 = v12;
            v28 = 1024;
            v29 = v16;
            _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Set '%{public}@' to '%{public}@' in vcp encoder config (Err: %d). ⛔️⛔️⛔️", buf, 0x1Cu);
          }

          v15 = 0;
          goto LABEL_13;
        }
      }

      v7 = [sessionProperties countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (BOOL)encodeFrame:(__CVBuffer *)frame pts:(id *)pts properties:(__CFDictionary *)properties context:(void *)context error:(id *)error
{
  if (self->_session)
  {
    inited = VCPCompressionSessionEncodeFrame_delayInitStub(*MEMORY[0x277CC0880]);
    v9 = inited == 0;
    if (inited)
    {
      v10 = inited;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"VCPCompressionSessionEncodeFrame failed with error %d (flags %d).", inited, 0];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:v11 code:v10];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:error message:@"VCPCompressionSession not initialized." code:{0, context}];
    return 0;
  }

  return v9;
}

- (BOOL)closeEncoderError:(id *)error
{
  if (self->_session)
  {
    VCPCompressionSessionInvalidate_delayInitStub(v3);
    CFRelease(self->_session);
    self->_session = 0;
    self->closed = 1;
    return 1;
  }

  else
  {

    return [(MIOVCPEncoderController *)self closed];
  }
}

- (MIOVideoEncoderControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end