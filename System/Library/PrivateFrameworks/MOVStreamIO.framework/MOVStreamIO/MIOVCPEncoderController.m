@interface MIOVCPEncoderController
- (BOOL)closeEncoderError:(id *)a3;
- (BOOL)configureSessionError:(id *)a3;
- (BOOL)encodeFrame:(__CVBuffer *)a3 pts:(id *)a4 properties:(__CFDictionary *)a5 context:(void *)a6 error:(id *)a7;
- (BOOL)openEncoderWithContext:(id)a3 error:(id *)a4;
- (MIOVCPEncoderController)initWithFormtDescription:(opaqueCMFormatDescription *)a3 videoEncoderSpec:(id)a4 sessionProperties:(id)a5 outputCallback:(void *)a6 delegate:(id)a7;
- (MIOVideoEncoderControllerDelegate)delegate;
- (void)dealloc;
@end

@implementation MIOVCPEncoderController

- (MIOVCPEncoderController)initWithFormtDescription:(opaqueCMFormatDescription *)a3 videoEncoderSpec:(id)a4 sessionProperties:(id)a5 outputCallback:(void *)a6 delegate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = MIOVCPEncoderController;
  v16 = [(MIOVCPEncoderController *)&v19 init];
  if (v16)
  {
    v17 = CFRetain(a3);
    v16->_callbackFunc = a6;
    v16->_formatDesc = v17;
    objc_storeStrong(&v16->_videoEncoderSpec, a4);
    objc_storeStrong(&v16->_sessionProperties, a5);
    [(MIOVCPEncoderController *)v16 setDelegate:v15];
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

- (BOOL)openEncoderWithContext:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  CMVideoFormatDescriptionGetDimensions(self->_formatDesc);
  MediaSubType = CMFormatDescriptionGetMediaSubType(self->_formatDesc);
  v16 = *MEMORY[0x277CC4E30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:MediaSubType];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v9 = [(MIOVCPEncoderController *)self videoEncoderSpec];
  p_session = &self->_session;
  delayInitStub = VCPCompressionSessionCreate_delayInitStub(v10);

  if (delayInitStub)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"VCPCompressionSessionCreate failed with error %d.", delayInitStub, p_session];
    [MEMORY[0x277CCA9B8] populateReaderError:a4 message:v12 code:delayInitStub];

    v13 = 0;
  }

  else
  {
    self->closed = 0;
    v13 = [(MIOVCPEncoderController *)self configureSessionError:a4, self, p_session];
  }

  return v13;
}

- (BOOL)configureSessionError:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(MIOVCPEncoderController *)self sessionProperties];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(MIOVCPEncoderController *)self sessionProperties];
        v12 = [v11 valueForKey:v10];

        inited = VCPCompressionSessionSetProperty_delayInitStub(v13);
        if (inited)
        {
          v16 = inited;
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Set '%@' to '%@' in vcp encoder config (Err: %d).", v10, v12, inited];
          [MEMORY[0x277CCA9B8] populateReaderError:a3 message:v17 code:v16];
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

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
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

- (BOOL)encodeFrame:(__CVBuffer *)a3 pts:(id *)a4 properties:(__CFDictionary *)a5 context:(void *)a6 error:(id *)a7
{
  if (self->_session)
  {
    inited = VCPCompressionSessionEncodeFrame_delayInitStub(*MEMORY[0x277CC0880]);
    v9 = inited == 0;
    if (inited)
    {
      v10 = inited;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"VCPCompressionSessionEncodeFrame failed with error %d (flags %d).", inited, 0];
      [MEMORY[0x277CCA9B8] populateReaderError:a7 message:v11 code:v10];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:a7 message:@"VCPCompressionSession not initialized." code:{0, a6}];
    return 0;
  }

  return v9;
}

- (BOOL)closeEncoderError:(id *)a3
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