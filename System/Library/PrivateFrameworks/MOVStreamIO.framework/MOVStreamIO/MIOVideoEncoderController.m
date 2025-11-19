@interface MIOVideoEncoderController
- (BOOL)closeEncoderError:(id *)a3;
- (BOOL)encodeFrame:(__CVBuffer *)a3 pts:(id *)a4 properties:(__CFDictionary *)a5 context:(void *)a6 error:(id *)a7;
- (BOOL)openEncoderWithContext:(id)a3 error:(id *)a4;
- (MIOVideoEncoderController)initWithEncoderConfig:(id)a3 formtDescription:(opaqueCMFormatDescription *)a4 inProcessEncoding:(BOOL)a5 frameRate:(double)a6 aveHighPerfMode:(BOOL)a7 outputCallback:(void *)a8 delegate:(id)a9;
- (id)encoderSpecification;
- (int)applyDefaultSessionProperties;
- (int)enableAVEHighPerformanceProfile;
- (int)propagateColorAttachments;
- (unsigned)codecType;
- (void)dealloc;
@end

@implementation MIOVideoEncoderController

- (MIOVideoEncoderController)initWithEncoderConfig:(id)a3 formtDescription:(opaqueCMFormatDescription *)a4 inProcessEncoding:(BOOL)a5 frameRate:(double)a6 aveHighPerfMode:(BOOL)a7 outputCallback:(void *)a8 delegate:(id)a9
{
  v17 = a3;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = MIOVideoEncoderController;
  v19 = [(MIOVideoEncoderController *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_delegate, v18);
    v20->_enableInProcessEncoding = a5;
    v20->_frameRate = a6;
    v20->_aveHighPerfMode = a7;
    objc_storeStrong(&v20->_config, a3);
    v20->_formatDesc = a4;
    CFRetain(a4);
    v20->_callbackFunc = a8;
  }

  return v20;
}

- (void)dealloc
{
  formatDesc = self->_formatDesc;
  if (formatDesc)
  {
    CFRelease(formatDesc);
  }

  v4.receiver = self;
  v4.super_class = MIOVideoEncoderController;
  [(MIOVideoEncoderController *)&v4 dealloc];
}

- (unsigned)codecType
{
  if (self->_config)
  {
    config = self->_config;

    return [(MOVStreamEncoderConfig *)config codecType];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained codecTypeOverride];

    if (v6)
    {
      return v6;
    }

    else
    {
      return 1752589105;
    }
  }
}

- (id)encoderSpecification
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (self->_config)
  {
    v2 = [(MOVStreamEncoderConfig *)self->_config encoderSpecification];
LABEL_3:
    v3 = v2;
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained overrideVideoEncoderSpecification];

  if (!v3)
  {
    v6 = *MEMORY[0x277CE2BB0];
    v7[0] = *MEMORY[0x277CE2BA8];
    v7[1] = v6;
    v8[0] = MEMORY[0x277CBEC38];
    v8[1] = MEMORY[0x277CBEC38];
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
    goto LABEL_3;
  }

LABEL_5:

  return v3;
}

- (int)applyDefaultSessionProperties
{
  result = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE25E0], &unk_2868E3B68);
  if (!result)
  {
    result = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2500], *MEMORY[0x277CBED10]);
    if (!result)
    {
      result = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2548], [MEMORY[0x277CCABB0] numberWithDouble:self->_frameRate]);
      if (!result)
      {
        result = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE25F0], *MEMORY[0x277CBED28]);
        if (!result)
        {
          MediaSubType = CMFormatDescriptionGetMediaSubType(self->_formatDesc);
          v5 = @"HEVC_Monochrome10_AutoLevel";
          if (MediaSubType != 1278226742 && MediaSubType != 1278226736)
          {
            if (MediaSubType == 1278226488)
            {
              v5 = @"HEVC_Monochrome_AutoLevel";
            }

            else
            {
              v5 = @"HEVC_Main_AutoLevel";
            }
          }

          compressionSession = self->_compressionSession;
          v7 = *MEMORY[0x277CE25D8];

          return VTSessionSetProperty(compressionSession, v7, v5);
        }
      }
    }
  }

  return result;
}

- (BOOL)openEncoderWithContext:(id)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  Dimensions = CMVideoFormatDescriptionGetDimensions(self->_formatDesc);
  v8 = Dimensions;
  v9 = HIDWORD(Dimensions);
  v10 = [(MIOVideoEncoderController *)self encoderSpecification];
  v11 = [(MIOVideoEncoderController *)self codecType];
  if (!self->_enableInProcessEncoding)
  {
    goto LABEL_5;
  }

  v12 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_INFO, "VTCompressionSession: Enabling kVTCompressionSessionOption_AllowClientProcessEncode", buf, 2u);
  }

  v33 = *MEMORY[0x277CE2618];
  v34[0] = MEMORY[0x277CBEC38];
  compressionSessionOut = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  p_compressionSession = &self->_compressionSession;
  outputCallbackRefCon = v6;
  v13 = VTCompressionSessionCreateWithOptions();

  if (!self->_enableInProcessEncoding)
  {
LABEL_5:
    v13 = VTCompressionSessionCreate(*MEMORY[0x277CBECE8], v8, v9, v11, v10, 0, 0, self->_callbackFunc, v6, &self->_compressionSession);
  }

  if (!v13)
  {
    config = self->_config;
    if (config)
    {
      if (![(MOVStreamEncoderConfig *)config applySessionProperties:self->_compressionSession])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error VTCompressionSession set properties failed."];
        if (a4)
        {
          goto LABEL_8;
        }

        v16 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v14;
LABEL_16:
          _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = [WeakRetained configureSessionOverride:self->_compressionSession];

      if ((v20 & 1) == 0)
      {
        v21 = [(MIOVideoEncoderController *)self applyDefaultSessionProperties];
        if (v21)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error applying default settings errNo: %d", v21];
          if (a4)
          {
            goto LABEL_8;
          }

          v16 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v14;
            goto LABEL_16;
          }

          goto LABEL_17;
        }
      }
    }

    propertyValueOut = *MEMORY[0x277CBED10];
    if (VTSessionCopyProperty(self->_compressionSession, *MEMORY[0x277CE2500], *MEMORY[0x277CBECE8], &propertyValueOut))
    {
      v22 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"Cannot check AllowFrameReordering status of encoding session. Assuming disabled." code:0];
    }

    else
    {
      [(MIOVideoEncoderController *)self setFrameReorderingEnabled:propertyValueOut == *MEMORY[0x277CBED28], outputCallbackRefCon, compressionSessionOut, p_compressionSession];
      if (+[MIOLog debugEnabled])
      {
        v23 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [(MIOVideoEncoderController *)self frameReorderingEnabled];
          *buf = 67109120;
          LODWORD(v32) = v24;
          _os_log_impl(&dword_257883000, v23, OS_LOG_TYPE_DEBUG, "AllowFrameReordering: %d", buf, 8u);
        }
      }

      CFRelease(propertyValueOut);
    }

    v25 = [(MIOVideoEncoderController *)self propagateColorAttachments];
    if (v25)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error propagateColorAttachments errNo: %d", v25];
      if (a4)
      {
        goto LABEL_8;
      }

      v16 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v14;
        goto LABEL_16;
      }
    }

    else
    {
      if (!self->_aveHighPerfMode)
      {
        v17 = 1;
        goto LABEL_19;
      }

      v26 = [(MIOVideoEncoderController *)self enableAVEHighPerformanceProfile];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error enabling AVE High Performance Mode errNo: %d", v26];
      if (a4)
      {
        goto LABEL_8;
      }

      v16 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v14;
        goto LABEL_16;
      }
    }

    goto LABEL_17;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error VTCompressionSessionCreate errNo: %d", v13];
  if (!a4)
  {
    v16 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v14;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_8:
  *a4 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v14 code:{14, outputCallbackRefCon}];
LABEL_18:

  v17 = 0;
LABEL_19:

  return v17;
}

- (int)enableAVEHighPerformanceProfile
{
  v3 = *MEMORY[0x277CBED10];
  v4 = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE25F0], *MEMORY[0x277CBED10]);
  if (v4)
  {
    v5 = v4;
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v7 = "Setting kVTCompressionPropertyKey_RealTime failed.";
      v8 = &v13;
LABEL_10:
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v9 = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE25B0], v3);
  if (v9)
  {
    v5 = v9;
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v7 = "Setting kVTCompressionPropertyKey_MaximizePowerEfficiency failed.";
      v8 = &v12;
      goto LABEL_10;
    }

LABEL_11:

    return v5;
  }

  v5 = VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2500], v3);
  if (v5)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v7 = "Setting kVTCompressionPropertyKey_AllowFrameReordering failed.";
      v8 = &v11;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  return v5;
}

- (int)propagateColorAttachments
{
  Extensions = CMFormatDescriptionGetExtensions(self->_formatDesc);
  if (Extensions)
  {
    v4 = Extensions;
    Value = CFDictionaryGetValue(Extensions, *MEMORY[0x277CC4D10]);
    if (Value)
    {
      VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2610], Value);
    }

    v6 = CFDictionaryGetValue(v4, *MEMORY[0x277CC4C00]);
    if (v6)
    {
      VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2528], v6);
    }

    v7 = CFDictionaryGetValue(v4, *MEMORY[0x277CC4CC0]);
    if (v7)
    {
      v8 = v7;
      VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2600], v7);
      if (CFEqual(v8, *MEMORY[0x277CC4D00]))
      {
        v9 = CFDictionaryGetValue(v4, *MEMORY[0x277CC4C50]);
        if (v9)
        {
          VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2558], v9);
        }
      }
    }

    v10 = CFDictionaryGetValue(v4, *MEMORY[0x277CC0360]);
    if (v10)
    {
      VTSessionSetProperty(self->_compressionSession, *MEMORY[0x277CE2568], v10);
    }
  }

  return 0;
}

- (BOOL)encodeFrame:(__CVBuffer *)a3 pts:(id *)a4 properties:(__CFDictionary *)a5 context:(void *)a6 error:(id *)a7
{
  v16 = *MEMORY[0x277D85DE8];
  infoFlagsOut = 0;
  compressionSession = self->_compressionSession;
  presentationTimeStamp = *a4;
  duration = **&MEMORY[0x277CC0890];
  v9 = VTCompressionSessionEncodeFrame(compressionSession, a3, &presentationTimeStamp, &duration, a5, a6, &infoFlagsOut);
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error VTCompressionSessionEncodeFrame errNo: %d infoFlags: %d", v9, infoFlagsOut];
    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v10 code:14];
    }

    else
    {
      v11 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(presentationTimeStamp.value) = 138412290;
        *(&presentationTimeStamp.value + 4) = v10;
        _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "%@", &presentationTimeStamp, 0xCu);
      }
    }
  }

  return v9 == 0;
}

- (BOOL)closeEncoderError:(id *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(MIOVideoEncoderController *)self closed])
  {
    compressionSession = self->_compressionSession;
    if (compressionSession)
    {
      completeUntilPresentationTimeStamp = **&MEMORY[0x277CC0890];
      v7 = VTCompressionSessionCompleteFrames(compressionSession, &completeUntilPresentationTimeStamp);
      if (!v7)
      {
        CFRelease(self->_compressionSession);
        self->_compressionSession = 0;
        v5 = 1;
        [(MIOVideoEncoderController *)self setClosed:1];
        return v5;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error VTCompressionSessionCompleteFrames errNo: %d", v7];
      if (a3)
      {
        *a3 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v8 code:14];
      }

      else
      {
        v9 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LODWORD(completeUntilPresentationTimeStamp.value) = 138412290;
          *(&completeUntilPresentationTimeStamp.value + 4) = v8;
          _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "%@", &completeUntilPresentationTimeStamp, 0xCu);
        }
      }
    }

    else
    {
      if (a3)
      {
        [MEMORY[0x277CCA9B8] internalErrorWithMessage:@"Error closeEncoder: no VTCompressionSession" code:14];
        *a3 = v5 = 0;
        return v5;
      }

      v10 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(completeUntilPresentationTimeStamp.value) = 138412290;
        *(&completeUntilPresentationTimeStamp.value + 4) = @"Error closeEncoder: no VTCompressionSession";
        _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_ERROR, "%@", &completeUntilPresentationTimeStamp, 0xCu);
      }
    }

    return 0;
  }

  return 1;
}

@end