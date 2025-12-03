@interface CSAudioConverter
+ (id)narrowBandOpusConverter;
+ (id)opusConverter;
+ (id)speexConverter;
- (CSAudioConverter)initWithInASBD:(AudioStreamBasicDescription *)d outASBD:(AudioStreamBasicDescription *)bD;
- (CSAudioConverterDelegate)delegate;
- (void)_configureAudioConverter:(OpaqueAudioConverter *)converter;
- (void)_convertBufferedLPCM:(id)m allowPartial:(BOOL)partial timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)addSamples:(id)samples timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)dealloc;
- (void)reset;
@end

@implementation CSAudioConverter

- (CSAudioConverterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_configureAudioConverter:(OpaqueAudioConverter *)converter
{
  +[CSConfig inputRecordingBufferDuration];
  v6 = v5;
  +[CSConfig inputRecordingSampleRate];
  v8 = (v6 * v7);
  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    +[CSConfig inputRecordingBufferDuration];
    v12 = v11;
    +[CSConfig inputRecordingSampleRate];
    *buf = 136315906;
    v36 = "[CSAudioConverter _configureAudioConverter:]";
    v37 = 2050;
    v38 = v12;
    v39 = 2050;
    v40 = v13;
    v41 = 1026;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s createAudioConverter : initial frames per buffer = dur %{public}.2f * sr %{public}.2f = %{public}u", buf, 0x26u);
  }

  ioPropertyDataSize = 40;
  Property = AudioConverterGetProperty(converter, 0x61636F64u, &ioPropertyDataSize, &self->_opusOutASBD);
  if (Property)
  {
    v15 = Property;
    v16 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[CSAudioConverter _configureAudioConverter:]";
      v37 = 1026;
      LODWORD(v38) = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Failed to get audioConverter property (kAudioConverterCurrentOutputStreamDescription) : %{public}d", buf, 0x12u);
    }
  }

  mSampleRate = self->_opusOutASBD.mSampleRate;
  if (self->_opusOutASBD.mFormatID != 1936745848)
  {
    self->_recordBasePacketsPerSecond = (mSampleRate / v8);
  }

  mBytesPerPacket = self->_opusOutASBD.mBytesPerPacket;
  mFramesPerPacket = self->_opusOutASBD.mFramesPerPacket;
  v20 = mFramesPerPacket / mSampleRate;
  self->_outPacketSizeInSec = v20;
  outPropertyData = 2100;
  v33 = mBytesPerPacket;
  ioPropertyDataSize = 4;
  v21 = AudioConverterGetProperty(converter, 0x6D6F6273u, &ioPropertyDataSize, &outPropertyData);
  v22 = CSLogCategoryAudio;
  v23 = os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v36 = "[CSAudioConverter _configureAudioConverter:]";
    v37 = 1026;
    LODWORD(v38) = v21;
    v24 = "%s _configureAudioConverter: AudioConverterGetProperty(kAudioConverterPropertyMinimumOutputBufferSize) returned status %{public}d";
  }

  else
  {
    if (!v23)
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v36 = "[CSAudioConverter _configureAudioConverter:]";
    v37 = 1026;
    LODWORD(v38) = outPropertyData;
    v24 = "%s _configureAudioConverter: encoded audio needs minimum of %{public}u bytes per output buffer";
  }

  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0x12u);
LABEL_14:
  if (v8 == v8 % mFramesPerPacket)
  {
    v25 = 1;
  }

  else
  {
    v25 = v8 / mFramesPerPacket * mFramesPerPacket;
  }

  self->_convertPacketCount = v25 / self->_opusOutASBD.mFramesPerPacket + 1;
  v26 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[CSAudioConverter _configureAudioConverter:]";
    v37 = 1026;
    LODWORD(v38) = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s _configureAudioConverter: final framesPerBuffer: %{public}u", buf, 0x12u);
    v26 = CSLogCategoryAudio;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    convertPacketCount = self->_convertPacketCount;
    *buf = 136315394;
    v36 = "[CSAudioConverter _configureAudioConverter:]";
    v37 = 1026;
    LODWORD(v38) = convertPacketCount;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s _configureAudioConverter: _convertPacketCount: %{public}u", buf, 0x12u);
  }

  ioPropertyDataSize = 4;
  v28 = AudioConverterGetProperty(converter, 0x786F7073u, &ioPropertyDataSize, &v33);
  v29 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[CSAudioConverter _configureAudioConverter:]";
    v37 = 1026;
    LODWORD(v38) = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s _configureAudioConverter: AudioConverterGetProperty(MaximumOutputPacketSize): returned status %{public}d", buf, 0x12u);
  }

  if (!v28)
  {
    v30 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[CSAudioConverter _configureAudioConverter:]";
      v37 = 1026;
      LODWORD(v38) = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s createAudioConverter: outputSizePerPacket: %{public}u", buf, 0x12u);
      v30 = CSLogCategoryAudio;
    }

    if (outPropertyData <= v33 * self->_convertPacketCount)
    {
      v31 = v33 * self->_convertPacketCount;
    }

    else
    {
      v31 = outPropertyData;
    }

    self->_convertAudioCapacity = v31;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[CSAudioConverter _configureAudioConverter:]";
      v37 = 1026;
      LODWORD(v38) = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s _configureAudioConverter: _convertAudioCapacity %{public}u bytes", buf, 0x12u);
    }
  }
}

- (void)reset
{
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAudioConverter reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Resetting AudioConverter buffer", &v4, 0xCu);
  }

  [(NSMutableData *)self->_bufferedLPCM setLength:0];
  AudioConverterReset(self->_opusConverter);
}

- (void)_convertBufferedLPCM:(id)m allowPartial:(BOOL)partial timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  recorderCopy = recorder;
  timestampCopy = timestamp;
  partialCopy = partial;
  selfCopy = self;
  mCopy = m;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v6 = +[NSMutableArray array];
  if ([mCopy length])
  {
    v43 = _NSConcreteStackBlock;
    v42 = sub_100166888;
    *&v7 = 136315138;
    v40 = v7;
    *&v7 = 136316162;
    v41 = v7;
    while (1)
    {
      memset(&outOutputData, 0, sizeof(outOutputData));
      convertAudioCapacity = selfCopy->_convertAudioCapacity;
      v9 = (__chkstk_darwin)();
      outOutputData.mBuffers[0].mData = &timestampCopy - ((v10 + 15) & 0x1FFFFFFF0);
      v12 = *(v11 + 76);
      ioOutputDataPacketSize = *(v11 + 72);
      outOutputData.mNumberBuffers = 1;
      outOutputData.mBuffers[0].mNumberChannels = 1;
      outOutputData.mBuffers[0].mDataByteSize = v12;
      __chkstk_darwin(v9);
      v14 = (&timestampCopy - 2 * v13);
      v16 = *(v15 + 8);
      inInputDataProcUserData[0] = v43;
      inInputDataProcUserData[1] = 3221225472;
      inInputDataProcUserData[2] = v42;
      inInputDataProcUserData[3] = &unk_1002536A8;
      v17 = mCopy;
      v48 = v17;
      v49 = &v53;
      v50 = partialCopy;
      v18 = AudioConverterFillComplexBuffer(v16, sub_100166A58, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, v14);
      v19 = v18;
      v20 = ioOutputDataPacketSize;
      if (v18 | ioOutputDataPacketSize)
      {
        if (v18 != 1836086393 && v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v21 = CSLogCategoryAudio;
        if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }

        *buf = v40;
        v58 = "[CSAudioConverter _convertBufferedLPCM:allowPartial:timestamp:arrivalTimestampToAudioRecorder:]";
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Override result as 'mpty'", buf, 0xCu);
        v19 = 1836086393;
        v20 = ioOutputDataPacketSize;
      }

      if (v20)
      {
        v22 = 0;
        p_mDataByteSize = &v14->mDataByteSize;
        do
        {
          v24 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
          {
            outPacketSizeInSec = selfCopy->_outPacketSizeInSec;
            v27 = *p_mDataByteSize;
            *buf = v41;
            v58 = "[CSAudioConverter _convertBufferedLPCM:allowPartial:timestamp:arrivalTimestampToAudioRecorder:]";
            v59 = 1026;
            v60 = v22 + 1;
            v61 = 1026;
            v62 = v20;
            v63 = 2050;
            v64 = outPacketSizeInSec;
            v65 = 1024;
            v66 = v27;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s [%{public}02u of %{public}02u %{public}fs] Opus packet with %u bytes", buf, 0x28u);
          }

          recorderCopy = [NSData dataWithBytes:outOutputData.mBuffers[0].mData + *(p_mDataByteSize - 3) length:*p_mDataByteSize, timestampCopy, recorderCopy];
          [v6 addObject:recorderCopy];

          ++v22;
          v20 = ioOutputDataPacketSize;
          p_mDataByteSize += 4;
        }

        while (v22 < ioOutputDataPacketSize);
      }

      if (v19)
      {
        break;
      }
    }

    if (v19 == 1836086393)
    {
      goto LABEL_20;
    }

LABEL_18:
    v29 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v58 = "[CSAudioConverter _convertBufferedLPCM:allowPartial:timestamp:arrivalTimestampToAudioRecorder:]";
      v59 = 1026;
      v60 = v19;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s AudioConverter is sad: 0x%{public}xd", buf, 0x12u);
    }

LABEL_20:

    [v17 replaceBytesInRange:0 withBytes:*(v54 + 6) length:{0, 0}];
    v30 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(v54 + 6);
      v37 = [v17 length];
      *buf = 136315650;
      v58 = "[CSAudioConverter _convertBufferedLPCM:allowPartial:timestamp:arrivalTimestampToAudioRecorder:]";
      v59 = 1026;
      v60 = v36;
      v61 = 1026;
      v62 = v37;
      _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s %{public}d bytesConsumed from opus coverter, remains %{public}d bytes", buf, 0x18u);
    }

    *(v54 + 6) = 0;
    if ([v6 count])
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v32 = WeakRetained == 0;

      if (!v32)
      {
        v33 = objc_loadWeakRetained(&selfCopy->_delegate);
        v34 = selfCopy->_outPacketSizeInSec;
        *&v35 = v34 * [v6 count];
        [v33 audioConverterDidConvertPackets:selfCopy packets:v6 durationInSec:timestampCopy timestamp:recorderCopy arrivalTimestampToAudioRecorder:v35];
      }
    }
  }

  else
  {
    v28 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v58 = "[CSAudioConverter _convertBufferedLPCM:allowPartial:timestamp:arrivalTimestampToAudioRecorder:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s There is not audio buffer to convert. Skip this.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v53, 8);
}

- (void)addSamples:(id)samples timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  samplesCopy = samples;
  v8 = samplesCopy;
  if (+[CSConfig inputRecordingIsFloat])
  {
    v8 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:samplesCopy];
  }

  [(NSMutableData *)self->_bufferedLPCM appendData:v8];
  [(CSAudioConverter *)self _convertBufferedLPCM:self->_bufferedLPCM allowPartial:0 timestamp:timestamp arrivalTimestampToAudioRecorder:recorder];
  self->_lastTimestamp = timestamp;
  self->_lastArrivalTimestampToAudioRecorder = recorder;
}

- (void)dealloc
{
  opusConverter = self->_opusConverter;
  if (opusConverter)
  {
    AudioConverterDispose(opusConverter);
    self->_opusConverter = 0;
  }

  v4.receiver = self;
  v4.super_class = CSAudioConverter;
  [(CSAudioConverter *)&v4 dealloc];
}

- (CSAudioConverter)initWithInASBD:(AudioStreamBasicDescription *)d outASBD:(AudioStreamBasicDescription *)bD
{
  v21.receiver = self;
  v21.super_class = CSAudioConverter;
  v6 = [(CSAudioConverter *)&v21 init];
  if (!v6)
  {
LABEL_12:
    v15 = v6;
    goto LABEL_13;
  }

  v7 = *&d->mBytesPerPacket;
  *&inSourceFormat.mSampleRate = *&d->mSampleRate;
  *&inSourceFormat.mBytesPerPacket = v7;
  *&inSourceFormat.mBitsPerChannel = *&d->mBitsPerChannel;
  v8 = *&bD->mBytesPerPacket;
  *&v19.mSampleRate = *&bD->mSampleRate;
  *&v19.mBytesPerPacket = v8;
  *&v19.mBitsPerChannel = *&bD->mBitsPerChannel;
  outAudioConverter = 0;
  v9 = AudioConverterNew(&inSourceFormat, &v19, &outAudioConverter);
  if (v9)
  {
    v10 = v9;
    v11 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "CreateAudioConverter";
      v26 = 1026;
      v27 = v10;
      v12 = "%s Cannot create AudioConverter using AudioConverterNew : %{public}u";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  inPropertyData = +[CSConfig audioConverterBitrate];
  v13 = AudioConverterSetProperty(outAudioConverter, 0x62726174u, 4u, &inPropertyData);
  v14 = outAudioConverter;
  if (!v13)
  {
    v6->_opusConverter = outAudioConverter;
    if (!v14)
    {
      v15 = 0;
      goto LABEL_13;
    }

    [(CSAudioConverter *)v6 _configureAudioConverter:?];
    v16 = +[NSMutableData data];
    bufferedLPCM = v6->_bufferedLPCM;
    v6->_bufferedLPCM = v16;

    goto LABEL_12;
  }

  AudioConverterDispose(outAudioConverter);
  v11 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "CreateAudioConverter";
    v26 = 1026;
    v27 = inPropertyData;
    v12 = "%s Cannot set encoder bit rate : %{public}u";
    goto LABEL_8;
  }

LABEL_9:
  v15 = 0;
  v6->_opusConverter = 0;
LABEL_13:

  return v15;
}

+ (id)speexConverter
{
  v2 = [CSAudioConverter alloc];
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  +[CSFAudioStreamBasicDescriptionFactory speexASBD];
  v3 = [(CSAudioConverter *)v2 initWithInASBD:v6 outASBD:&v5];

  return v3;
}

+ (id)narrowBandOpusConverter
{
  v2 = [CSAudioConverter alloc];
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16NarrowBandASBD];
  +[CSFAudioStreamBasicDescriptionFactory opusNarrowBandASBD];
  v3 = [(CSAudioConverter *)v2 initWithInASBD:v6 outASBD:&v5];

  return v3;
}

+ (id)opusConverter
{
  v2 = [CSAudioConverter alloc];
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  +[CSFAudioStreamBasicDescriptionFactory opusASBD];
  v3 = [(CSAudioConverter *)v2 initWithInASBD:v6 outASBD:&v5];

  return v3;
}

@end