@interface CSAudioSampleRateConverter
+ (id)downsampler;
+ (id)upsampler;
- (CSAudioSampleRateConverter)initWithInASBD:(AudioStreamBasicDescription *)d outASBD:(AudioStreamBasicDescription *)bD;
- (OpaqueAudioConverter)_createSampleRateConverterWithInASBD:(AudioStreamBasicDescription *)d outASBD:(AudioStreamBasicDescription *)bD;
- (id)convertSampleRateOfBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation CSAudioSampleRateConverter

- (id)convertSampleRateOfBuffer:(id)buffer
{
  v32 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v5 = bufferCopy;
  if (!self->_sampleRateConverter || ![bufferCopy length])
  {
    v6 = v5;
    goto LABEL_18;
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v6 = [MEMORY[0x1E695DF88] dataWithLength:{(self->_outBufferScaleFactor * objc_msgSend(v5, "length"))}];
  v7 = 0;
  while (1)
  {
    memset(&outOutputData.mNumberBuffers + 1, 0, 20);
    outOutputData.mNumberBuffers = 1;
    v8 = v6;
    outOutputData.mBuffers[0].mData = [v6 mutableBytes];
    v9 = [v6 length];
    outOutputData.mBuffers[0].mNumberChannels = self->_outASBD.mChannelsPerFrame;
    outOutputData.mBuffers[0].mDataByteSize = v9;
    ioOutputDataPacketSize = [v6 length];
    sampleRateConverter = self->_sampleRateConverter;
    inInputDataProcUserData[0] = MEMORY[0x1E69E9820];
    inInputDataProcUserData[1] = 3221225472;
    inInputDataProcUserData[2] = __56__CSAudioSampleRateConverter_convertSampleRateOfBuffer___block_invoke;
    inInputDataProcUserData[3] = &unk_1E865A7F0;
    v11 = v5;
    selfCopy = self;
    v23 = v26;
    v21 = v11;
    v12 = AudioConverterFillComplexBuffer(sampleRateConverter, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
    v13 = v12;
    v7 += self->_outASBD.mBytesPerFrame * ioOutputDataPacketSize;
    if (v12 | ioOutputDataPacketSize)
    {
      if (v12 != 1836086393 && v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = CSLogCategoryAudio;
      v13 = 1836086393;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v29 = "[CSAudioSampleRateConverter convertSampleRateOfBuffer:]";
        _os_log_debug_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEBUG, "%s Override result as 'mpty'", buf, 0xCu);
      }
    }

    v15 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEBUG))
    {
      break;
    }

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_11:
  }

  v16 = self->_outASBD.mBytesPerFrame * ioOutputDataPacketSize;
  *buf = 136315394;
  v29 = "[CSAudioSampleRateConverter convertSampleRateOfBuffer:]";
  v30 = 2048;
  v31 = v16;
  _os_log_debug_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEBUG, "%s Audio resampling done : %lu", buf, 0x16u);
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v13 == 1836086393)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[CSAudioSampleRateConverter convertSampleRateOfBuffer:]";
    v30 = 1026;
    LODWORD(v31) = v13;
    _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s AudioConverter is sad: 0x%{public}xd", buf, 0x12u);
  }

LABEL_16:

  [v6 setLength:v7];
  _Block_object_dispose(v26, 8);
LABEL_18:

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __56__CSAudioSampleRateConverter_convertSampleRateOfBuffer___block_invoke(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) length];
  v7 = *(a1 + 40);
  v8 = v6 - *(*(*(a1 + 48) + 8) + 24);
  v9 = *(v7 + 48);
  *(a3 + 8) = *(v7 + 92);
  if (v9 <= v8)
  {
    v11 = v8 / v9;
    if (v8 / v9 >= *a2)
    {
      v14 = [*(a1 + 32) bytes];
      result = 0;
      *(a3 + 16) = v14 + *(*(*(a1 + 48) + 8) + 24);
      v13 = *(*(a1 + 40) + 48) * *a2;
    }

    else
    {
      *a2 = v11;
      v12 = [*(a1 + 32) bytes];
      result = 0;
      *(a3 + 16) = v12 + *(*(*(a1 + 48) + 8) + 24);
      v13 = *(*(a1 + 40) + 48) * v11;
    }

    *(a3 + 12) = v13;
    *(*(*(a1 + 48) + 8) + 24) += v13;
  }

  else
  {
    *a2 = 0;
    *(a3 + 16) = 0;
    result = 1836086393;
    *(a3 + 12) = 0;
  }

  return result;
}

- (OpaqueAudioConverter)_createSampleRateConverterWithInASBD:(AudioStreamBasicDescription *)d outASBD:(AudioStreamBasicDescription *)bD
{
  v23 = *MEMORY[0x1E69E9840];
  outAudioConverter = 0;
  v7 = AudioConverterNew(d, bD, &outAudioConverter);
  if (!v7)
  {
    inPropertyData = 127;
    if (AudioConverterSetProperty(outAudioConverter, 0x73726371u, 4u, &inPropertyData))
    {
      AudioConverterDispose(outAudioConverter);
      v13 = CSLogCategoryAudio;
      if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      v20 = "[CSAudioSampleRateConverter _createSampleRateConverterWithInASBD:outASBD:]";
      v10 = "%s Cannot set Quality property to audioConverter";
    }

    else
    {
      inPropertyData = 1852797549;
      if (!AudioConverterSetProperty(outAudioConverter, 0x73726361u, 4u, &inPropertyData))
      {
        v16 = bD->mSampleRate / d->mSampleRate;
        self->_outBufferScaleFactor = v16;
        result = outAudioConverter;
        goto LABEL_13;
      }

      AudioConverterDispose(outAudioConverter);
      v13 = CSLogCategoryAudio;
      if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      v20 = "[CSAudioSampleRateConverter _createSampleRateConverterWithInASBD:outASBD:]";
      v10 = "%s Cannot set Complexity property to audioConverter";
    }

    v11 = v13;
    v12 = 12;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[CSAudioSampleRateConverter _createSampleRateConverterWithInASBD:outASBD:]";
    v21 = 1026;
    v22 = v8;
    v10 = "%s Cannot create SampleRateConverter using AudioConverterNew : %{public}d";
    v11 = v9;
    v12 = 18;
LABEL_11:
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }

LABEL_12:
  result = 0;
LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  sampleRateConverter = self->_sampleRateConverter;
  if (sampleRateConverter)
  {
    AudioConverterDispose(sampleRateConverter);
    self->_sampleRateConverter = 0;
  }

  v4.receiver = self;
  v4.super_class = CSAudioSampleRateConverter;
  [(CSAudioSampleRateConverter *)&v4 dealloc];
}

- (CSAudioSampleRateConverter)initWithInASBD:(AudioStreamBasicDescription *)d outASBD:(AudioStreamBasicDescription *)bD
{
  v19.receiver = self;
  v19.super_class = CSAudioSampleRateConverter;
  v6 = [(CSAudioSampleRateConverter *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v8 = *&d->mSampleRate;
    v9 = *&d->mBytesPerPacket;
    *(v6 + 7) = *&d->mBitsPerChannel;
    *(v6 + 40) = v9;
    *(v6 + 24) = v8;
    v10 = *&bD->mSampleRate;
    v11 = *&bD->mBytesPerPacket;
    *(v6 + 12) = *&bD->mBitsPerChannel;
    *(v6 + 4) = v10;
    *(v6 + 5) = v11;
    v12 = *&d->mBytesPerPacket;
    v17[0] = *&d->mSampleRate;
    v17[1] = v12;
    v18 = *&d->mBitsPerChannel;
    v13 = *&bD->mBytesPerPacket;
    v15[0] = *&bD->mSampleRate;
    v15[1] = v13;
    v16 = *&bD->mBitsPerChannel;
    *(v6 + 1) = [v6 _createSampleRateConverterWithInASBD:v17 outASBD:v15];
  }

  return v7;
}

+ (id)downsampler
{
  v2 = [CSAudioSampleRateConverter alloc];
  +[CSFAudioStreamBasicDescriptionFactory lpcmASBD];
  +[CSFAudioStreamBasicDescriptionFactory lpcmNarrowBandASBD];
  v3 = [(CSAudioSampleRateConverter *)v2 initWithInASBD:v6 outASBD:&v5];

  return v3;
}

+ (id)upsampler
{
  v2 = [CSAudioSampleRateConverter alloc];
  +[CSFAudioStreamBasicDescriptionFactory lpcmNarrowBandASBD];
  +[CSFAudioStreamBasicDescriptionFactory lpcmASBD];
  v3 = [(CSAudioSampleRateConverter *)v2 initWithInASBD:v6 outASBD:&v5];

  return v3;
}

@end