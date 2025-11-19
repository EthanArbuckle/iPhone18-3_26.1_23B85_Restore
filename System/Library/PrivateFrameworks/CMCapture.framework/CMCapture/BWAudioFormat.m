@interface BWAudioFormat
+ (BOOL)compressionOptionTrimSampleBufferDurationsIsRequiredForAudioSettings:(id)a3;
+ (id)formatForAVAudioSettings:(id)a3 inputFormat:(id)a4 formatExtensions:(id)a5;
+ (id)formatWithAudioFormatDescription:(opaqueCMFormatDescription *)a3;
+ (void)initialize;
- (NSDictionary)audioCompressionSBPOptions;
- (id)debugDescription;
- (id)description;
- (void)_initForAVAudioSettings:(unint64_t)a3 inputFormat:(const __CFDictionary *)a4 formatExtensions:;
- (void)_initWithAudioFormatDescription:(void *)a1;
- (void)dealloc;
@end

@implementation BWAudioFormat

- (void)dealloc
{
  audioFormatDescription = self->_audioFormatDescription;
  if (audioFormatDescription)
  {
    CFRelease(audioFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWAudioFormat;
  [(BWAudioFormat *)&v4 dealloc];
}

+ (void)initialize
{
  objc_opt_class();

  objc_opt_class();
}

+ (BOOL)compressionOptionTrimSampleBufferDurationsIsRequiredForAudioSettings:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"AVEncoderBitRateKey"] || (v4 = objc_msgSend(a3, "objectForKeyedSubscript:", @"AVEncoderBitRatePerChannelKey")) != 0)
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (id)formatWithAudioFormatDescription:(opaqueCMFormatDescription *)a3
{
  v3 = [[BWAudioFormat alloc] _initWithAudioFormatDescription:a3];

  return v3;
}

+ (id)formatForAVAudioSettings:(id)a3 inputFormat:(id)a4 formatExtensions:(id)a5
{
  v5 = [[BWAudioFormat alloc] _initForAVAudioSettings:a3 inputFormat:a4 formatExtensions:a5];

  return v5;
}

- (void)_initForAVAudioSettings:(unint64_t)a3 inputFormat:(const __CFDictionary *)a4 formatExtensions:
{
  v4 = a1;
  if (!a1)
  {
    return v4;
  }

  if (!(a2 | a3))
  {
    [BWAudioFormat _initForAVAudioSettings:inputFormat:formatExtensions:];
  }

  formatDescriptionOut = 0;
  v7 = [a3 formatDescription];
  v8 = v7;
  if (!a2)
  {
    if (!v7)
    {
      [BWAudioFormat _initForAVAudioSettings:inputFormat:formatExtensions:];
    }

    v9 = CFRetain(v7);
    formatDescriptionOut = v9;
    goto LABEL_41;
  }

  memset(&outPropertyData.mFormatID, 0, 32);
  mFormatID = [objc_msgSend(a2 objectForKeyedSubscript:{@"AVFormatIDKey", "intValue"}];
  outPropertyData.mFormatID = mFormatID;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"AVSampleRateKey", "doubleValue"}];
  v12 = v11;
  outPropertyData.mSampleRate = v11;
  mChannelsPerFrame = [objc_msgSend(a2 objectForKeyedSubscript:{@"AVNumberOfChannelsKey", "intValue"}];
  outPropertyData.mChannelsPerFrame = mChannelsPerFrame;
  if (mFormatID == 1819304813)
  {
    mBitsPerChannel = [objc_msgSend(a2 objectForKeyedSubscript:{@"AVLinearPCMBitDepthKey", "intValue"}];
    outPropertyData.mBitsPerChannel = mBitsPerChannel;
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"AVLinearPCMIsBigEndianKey", "BOOLValue"}])
    {
      v15 = 2;
      outPropertyData.mFormatFlags = 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = [a2 objectForKeyedSubscript:@"AVLinearPCMIsFloatKey"];
    if (v16)
    {
      if ([v16 BOOLValue])
      {
        v17 = 1;
      }

      else
      {
        v17 = 4;
      }

      v15 |= v17 | 8;
      outPropertyData.mFormatFlags = v15;
    }

    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"AVLinearPCMIsNonInterleaved", "BOOLValue"}])
    {
      v15 |= 0x20u;
      outPropertyData.mFormatFlags = v15;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    mBitsPerChannel = 0;
  }

  v18 = [a2 objectForKeyedSubscript:@"AVChannelLayoutKey"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 bytes];
    v19 = [v19 length];
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v20 = 0;
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v8);
  if (!mFormatID)
  {
    mFormatID = StreamBasicDescription->mFormatID;
    outPropertyData.mFormatID = mFormatID;
  }

  if (v12 == 0.0)
  {
    outPropertyData.mSampleRate = StreamBasicDescription->mSampleRate;
  }

  if (!mChannelsPerFrame)
  {
    mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
    outPropertyData.mChannelsPerFrame = mChannelsPerFrame;
  }

LABEL_28:
  if (mFormatID == 1819304813)
  {
    if (v8 && !mBitsPerChannel)
    {
      mBitsPerChannel = CMAudioFormatDescriptionGetStreamBasicDescription(v8)->mBitsPerChannel;
      outPropertyData.mBitsPerChannel = mBitsPerChannel;
    }

    outPropertyData.mFramesPerPacket = 1;
    if (mBitsPerChannel)
    {
      if ((v15 & 0x20) != 0)
      {
        v22 = mBitsPerChannel >> 3;
      }

      else
      {
        if (!mChannelsPerFrame)
        {
          goto LABEL_38;
        }

        v22 = mChannelsPerFrame * (mBitsPerChannel >> 3);
      }

      outPropertyData.mBytesPerPacket = v22;
      outPropertyData.mBytesPerFrame = v22;
    }
  }

LABEL_38:
  ioPropertyDataSize = 40;
  if (AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData))
  {
    [BWAudioFormat _initForAVAudioSettings:inputFormat:formatExtensions:];
LABEL_50:

    return 0;
  }

  if (CMAudioFormatDescriptionCreate(*MEMORY[0x1E695E480], &outPropertyData, v19, v20, 0, 0, a4, &formatDescriptionOut))
  {
    [BWAudioFormat _initForAVAudioSettings:inputFormat:formatExtensions:];
    goto LABEL_50;
  }

  v9 = formatDescriptionOut;
LABEL_41:
  v4 = [(BWAudioFormat *)v4 _initWithAudioFormatDescription:v9];
  if (v4)
  {
    v4[2] = [a2 copy];
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v4;
}

- (NSDictionary)audioCompressionSBPOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderBitRateKey"];
  v5 = MEMORY[0x1E6971628];
  if (v4)
  {
    [(NSDictionary *)v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E6971628]];
  }

  v6 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderBitRatePerChannelKey"];
  if (v6)
  {
    v7 = v6;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(self->_audioFormatDescription);
    if (StreamBasicDescription)
    {
      -[NSDictionary setObject:forKeyedSubscript:](v3, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{StreamBasicDescription->mChannelsPerFrame * objc_msgSend(v7, "intValue")}], *v5);
    }
  }

  if ([BWAudioFormat compressionOptionTrimSampleBufferDurationsIsRequiredForAudioSettings:self->_avAudioSettings])
  {
    [(NSDictionary *)v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6971668]];
  }

  v9 = [-[NSDictionary objectForKeyedSubscript:](self->_avAudioSettings objectForKeyedSubscript:{@"AVAudioEncoderSpecificationKey", "objectForKeyedSubscript:", @"AVAudioEncoderSpecificationUseHardwareEncoderIfAvailableKey"}];
  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:v10];
  [(NSDictionary *)v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6971670]];
  v12 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderBitRateStrategyKey"];
  if (v12)
  {
    v13 = v12;
    if ([v12 isEqualToString:@"AVAudioBitRateStrategy_Constant"])
    {
      v14 = &unk_1F2243240;
LABEL_16:
      v15 = MEMORY[0x1E6971640];
LABEL_17:
      [(NSDictionary *)v3 setObject:v14 forKeyedSubscript:*v15];
      goto LABEL_18;
    }

    if ([v13 isEqualToString:@"AVAudioBitRateStrategy_LongTermAverage"])
    {
      v14 = &unk_1F2243258;
      goto LABEL_16;
    }

    v20 = [v13 isEqualToString:@"AVAudioBitRateStrategy_VariableConstrained"];
    v15 = MEMORY[0x1E6971640];
    if (v20)
    {
      v14 = &unk_1F2243270;
      goto LABEL_17;
    }

    if ([v13 isEqualToString:@"AVAudioBitRateStrategy_Variable"])
    {
      [(NSDictionary *)v3 setObject:&unk_1F2243288 forKeyedSubscript:*v15];
      v21 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderQualityForVBRKey"];
      if (v21)
      {
        v14 = v21;
        v15 = MEMORY[0x1E6971660];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v16 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVSampleRateConverterAlgorithmKey"];
  if (v16)
  {
    v17 = v16;
    if ([v16 isEqualToString:@"AVSampleRateConverterAlgorithm_Normal"])
    {
      v18 = &unk_1F22432A0;
LABEL_23:
      [(NSDictionary *)v3 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6971630]];
      goto LABEL_24;
    }

    if ([v17 isEqualToString:@"AVSampleRateConverterAlgorithm_Normal"])
    {
      v18 = &unk_1F22432B8;
      goto LABEL_23;
    }
  }

LABEL_24:
  [(NSDictionary *)v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kFigAudioCompressionOption_UseAudioConverterForMixing"];
  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(self->_audioFormatDescription);
  if (!StreamBasicDescription)
  {
    return v3;
  }

  v5 = StreamBasicDescription;
  [v3 appendFormat:@"'%@'@%.0fHz, %d Chn", BWStringForOSType(), *&v5->mSampleRate, v5->mChannelsPerFrame];
  if (v5->mFormatID == 1819304813)
  {
    v6 = "BE";
    mFormatFlags = v5->mFormatFlags;
    if ((mFormatFlags & 2) == 0)
    {
      v6 = "LE";
    }

    v8 = "Int";
    if (mFormatFlags)
    {
      v8 = "Float";
    }

    [v3 appendFormat:@", %d-bit %s %s (mFormatFlags: 0x%0x)", v5->mBitsPerChannel, v6, v8, mFormatFlags];
    v9 = "Non-interleaved";
    if ((mFormatFlags & 0x20) == 0)
    {
      v9 = "Interleaved";
    }

    [v3 appendFormat:@", %s", v9];
  }

  else
  {
    [v3 appendFormat:@", %d FPP", v5->mFramesPerPacket];
  }

  avAudioSettings = self->_avAudioSettings;
  if (!avAudioSettings)
  {
    return v3;
  }

  v11 = [(NSDictionary *)avAudioSettings objectForKeyedSubscript:@"AVEncoderBitRateKey"];
  if (v11)
  {
    [v3 appendFormat:@", %d bps", objc_msgSend(v11, "intValue")];
  }

  v12 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderBitRatePerChannelKey"];
  if (v12)
  {
    [v3 appendFormat:@", %d bps", v5->mChannelsPerFrame * objc_msgSend(v12, "intValue")];
  }

  v13 = [-[NSDictionary objectForKeyedSubscript:](self->_avAudioSettings objectForKeyedSubscript:{@"AVAudioEncoderSpecificationKey", "objectForKeyedSubscript:", @"AVAudioEncoderSpecificationUseHardwareEncoderIfAvailableKey"}];
  if (v13 && ([v13 BOOLValue] & 1) == 0)
  {
    [v3 appendString:{@", SOFTWARE"}];
  }

  v14 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderBitRateStrategyKey"];
  if (v14)
  {
    v15 = v14;
    if ([v14 isEqualToString:@"AVAudioBitRateStrategy_Constant"])
    {
      v16 = @", Constant BRCM";
LABEL_26:
      [v3 appendString:v16];
      goto LABEL_27;
    }

    if ([v15 isEqualToString:@"AVAudioBitRateStrategy_LongTermAverage"])
    {
      v16 = @", LongTermAvg BRCM";
      goto LABEL_26;
    }

    if ([v15 isEqualToString:@"AVAudioBitRateStrategy_VariableConstrained"])
    {
      v16 = @", VariableConstrained BRCM";
      goto LABEL_26;
    }

    if ([v15 isEqualToString:@"AVAudioBitRateStrategy_Variable"])
    {
      [v3 appendString:{@", Variable BRCM"}];
      v21 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVEncoderQualityForVBRKey"];
      if (v21)
      {
        [v3 appendFormat:@", Quality %d", objc_msgSend(v21, "intValue")];
      }
    }
  }

LABEL_27:
  v17 = [(NSDictionary *)self->_avAudioSettings objectForKeyedSubscript:@"AVSampleRateConverterAlgorithmKey"];
  if (v17)
  {
    v18 = v17;
    if ([v17 isEqualToString:@"AVSampleRateConverterAlgorithm_Normal"])
    {
      v19 = @", Mastering SRC";
LABEL_32:
      [v3 appendString:v19];
      return v3;
    }

    if ([v18 isEqualToString:@"AVSampleRateConverterAlgorithm_Normal"])
    {
      v19 = @", Normal SRC";
      goto LABEL_32;
    }
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> %@", NSStringFromClass(v4), self, -[BWAudioFormat description](self, "description")];
}

- (void)_initWithAudioFormatDescription:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {

    return 0;
  }

  v5.receiver = a1;
  v5.super_class = BWAudioFormat;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = CFRetain(a2);
  }

  return v3;
}

- (uint64_t)_initForAVAudioSettings:inputFormat:formatExtensions:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_initForAVAudioSettings:inputFormat:formatExtensions:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (void)_initForAVAudioSettings:inputFormat:formatExtensions:.cold.3()
{
  fig_log_get_emitter();
  LODWORD(v1) = 0;
  FigDebugAssert3();
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't make a BWAudioFormat because the provided input format produced a NULL CMFormatDescription" userInfo:{0, v1, v0}]);
}

- (void)_initForAVAudioSettings:inputFormat:formatExtensions:.cold.4()
{
  fig_log_get_emitter();
  LODWORD(v1) = 0;
  FigDebugAssert3();
  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't make a BWAudioFormat when audioSettings and inputFormat are both nil" userInfo:{0, v1, v0}]);
}

@end