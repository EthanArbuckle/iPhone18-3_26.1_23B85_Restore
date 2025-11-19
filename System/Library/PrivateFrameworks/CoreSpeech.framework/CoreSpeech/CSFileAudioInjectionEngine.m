@interface CSFileAudioInjectionEngine
- (AudioStreamBasicDescription)_defaultOutASBD;
- (AudioStreamBasicDescription)outASBD;
- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5 playbackStarted:(id)a6 completion:(id)a7;
- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6;
- (BOOL)isRecording;
- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4;
- (BOOL)stopAudioStreamWithOutError:(id *)a3;
- (CSAudioInjectionEngineDelegate)delegate;
- (CSFileAudioInjectionEngine)initWithStreamHandleId:(unint64_t)a3;
- (CSFileAudioInjectionEngine)initWithStreamHandleId:(unint64_t)a3 withInputRecordingNumberOfChannels:(unsigned int)a4;
- (id)_compensateChannelDataIfNeeded:(id)a3 receivedNumChannels:(unsigned int)a4;
- (id)_deinterleaveBufferIfNeeded:(AudioBufferList *)a3;
- (void)_createDeInterleaverIfNeeded;
- (void)_readAudioBufferAndFeed;
- (void)_startAudioFeedingTimer;
- (void)dealloc;
- (void)setOutASBD:(AudioStreamBasicDescription *)a3;
- (void)start;
- (void)stop;
@end

@implementation CSFileAudioInjectionEngine

- (void)setOutASBD:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_outASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_outASBD.mSampleRate = v3;
  *&self->_outASBD.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)outASBD
{
  v3 = *&self[3].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[3].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[4].mSampleRate;
  return self;
}

- (CSAudioInjectionEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AudioStreamBasicDescription)_defaultOutASBD
{
  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  if (+[CSConfig inputRecordingIsFloat])
  {

    return +[CSFAudioStreamBasicDescriptionFactory lpcmFloatASBD];
  }

  else
  {

    return +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  }
}

- (id)_compensateChannelDataIfNeeded:(id)a3 receivedNumChannels:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_inputRecordingNumberOfChannels <= a4)
  {
    v8 = v6;
  }

  else
  {
    v8 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v6, "length") / a4 * self->_inputRecordingNumberOfChannels}];
    inputRecordingNumberOfChannels = self->_inputRecordingNumberOfChannels;
    v10 = qword_10029E5C8;
    if (!(v10 % +[CSUtils loggingHeartbeatRate]))
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[CSFileAudioInjectionEngine _compensateChannelDataIfNeeded:receivedNumChannels:]";
        v15 = 1026;
        v16 = inputRecordingNumberOfChannels - a4;
        v17 = 2050;
        v18 = qword_10029E5C8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Compensating %{public}u channel(s), heartbeat = %{public}lld", &v13, 0x1Cu);
      }
    }

    ++qword_10029E5C8;
    [v8 replaceBytesInRange:0 withBytes:{objc_msgSend(v7, "length"), objc_msgSend(v7, "bytes")}];
  }

  return v8;
}

- (id)_deinterleaveBufferIfNeeded:(AudioBufferList *)a3
{
  if (self->_deinterleaver && a3->mBuffers[0].mNumberChannels >= 2)
  {
    v5 = [[NSMutableData alloc] initWithLength:a3->mBuffers[0].mDataByteSize];
    v6 = [v5 mutableBytes];
    v7 = 0;
    v8 = 0;
    v9 = a3->mBuffers[0].mDataByteSize / a3->mBuffers[0].mNumberChannels;
    do
    {
      v10 = self->_pNonInterleavedABL + v7;
      *(v10 + 2) = 1;
      *(v10 + 3) = v9;
      *(v10 + 2) = &v6[v9 * v8++];
      v7 += 16;
    }

    while (v8 < a3->mBuffers[0].mNumberChannels);
    deinterleaver = self->_deinterleaver;
    +[CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBD];
    v12 = AudioConverterConvertComplexBuffer(deinterleaver, v9 / v16, a3, self->_pNonInterleavedABL);
    if (v12)
    {
      v13 = v12;
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[CSFileAudioInjectionEngine _deinterleaveBufferIfNeeded:]";
        v19 = 1026;
        v20 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed to deinterleave the data: %{public}d", buf, 0x12u);
      }
    }
  }

  else
  {
    v5 = [[NSData alloc] initWithBytes:a3->mBuffers[0].mData length:a3->mBuffers[0].mDataByteSize];
  }

  return v5;
}

- (BOOL)stopAudioStreamWithOutError:(id *)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100160748;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (BOOL)startAudioStreamWithOption:(id)a3 withOutError:(id *)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001608D8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  return 1;
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100160A44;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 outASBD:(AudioStreamBasicDescription *)a5 playbackStarted:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100160DB8;
  v39[3] = &unk_100253498;
  v15 = v13;
  v40 = v15;
  v16 = objc_retainBlock(v39);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100160DD0;
  v37[3] = &unk_100253498;
  v17 = v14;
  v38 = v17;
  v18 = objc_retainBlock(v37);
  if (!v12)
  {
    v28 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[CSFileAudioInjectionEngine injectAudio:withScaleFactor:outASBD:playbackStarted:completion:]";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Cannot speak nil Audio URL", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v19 = +[NSFileManager defaultManager];
  v20 = [v12 path];
  v21 = [v19 fileExistsAtPath:v20];

  if ((v21 & 1) == 0)
  {
    v29 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [v12 path];
      *buf = 136315394;
      *&buf[4] = "[CSFileAudioInjectionEngine injectAudio:withScaleFactor:outASBD:playbackStarted:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s Cannot speak since audio file does not exists : %@", buf, 0x16u);
    }

LABEL_8:
    v27 = 0;
    goto LABEL_9;
  }

  v22 = [CSAudioInjectionFileOption alloc];
  v23 = *&a5->mBytesPerPacket;
  *buf = *&a5->mSampleRate;
  *&buf[16] = v23;
  v42 = *&a5->mBitsPerChannel;
  v24 = [(CSAudioInjectionFileOption *)v22 initWithAudioURL:v12 withScaleFactor:buf outASBD:COERCE_DOUBLE(__PAIR64__(*&buf[4], LODWORD(a4)))];
  queue = self->_queue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100160DE8;
  v33[3] = &unk_1002534C0;
  v33[4] = self;
  v34 = v24;
  v35 = v16;
  v36 = v18;
  v26 = v24;
  dispatch_async(queue, v33);

  v27 = 1;
LABEL_9:

  return v27;
}

- (BOOL)injectAudio:(id)a3 withScaleFactor:(float)a4 playbackStarted:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [(CSFileAudioInjectionEngine *)self _defaultOutASBD];
  *&v13 = a4;
  LOBYTE(self) = [(CSFileAudioInjectionEngine *)self injectAudio:v12 withScaleFactor:v15 outASBD:v11 playbackStarted:v10 completion:v13];

  return self;
}

- (void)_readAudioBufferAndFeed
{
  fileOption = self->_fileOption;
  if (!fileOption || ![(CSAudioInjectionFileOption *)fileOption fFile])
  {
    if ([(NSMutableArray *)self->_injectionAudioFileList count])
    {
      v16 = [(NSMutableArray *)self->_injectionAudioFileList objectAtIndex:0];
      outExtAudioFile = 0;
      v17 = [(NSMutableArray *)self->_injectionStartNotifyBlocks objectAtIndex:0];
      [(CSFileAudioInjectionEngine *)self setStartInjectBlock:v17];

      [(NSMutableArray *)self->_injectionAudioFileList removeObjectAtIndex:0];
      [(NSMutableArray *)self->_injectionStartNotifyBlocks removeObjectAtIndex:0];
      v18 = [v16 audioURL];
      v19 = ExtAudioFileOpenURL(v18, &outExtAudioFile);

      if (v19)
      {
        v20 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v61 = v20;
          v62 = [v16 audioURL];
          *inPropertyData = 136315650;
          *&inPropertyData[4] = "[CSFileAudioInjectionEngine _readAudioBufferAndFeed]";
          *&inPropertyData[12] = 2112;
          *&inPropertyData[14] = v62;
          *&inPropertyData[22] = 1024;
          *&inPropertyData[24] = v19;
          _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%s Failed to open audio file %@, error : %d", inPropertyData, 0x1Cu);
        }
      }

      v103 = 0;
      memset(inPropertyData, 0, sizeof(inPropertyData));
      if (v16)
      {
        [v16 outASBD];
      }

      ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
      *buf = *inPropertyData;
      *&buf[16] = *&inPropertyData[16];
      v101 = v103;
      [v16 setOutASBD:buf];
      [v16 setFFile:outExtAudioFile];
      [(CSFileAudioInjectionEngine *)self setFileOption:v16];
      v21 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [v16 description];
        *buf = 136315394;
        *&buf[4] = "[CSFileAudioInjectionEngine _readAudioBufferAndFeed]";
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Streaming from %@", buf, 0x16u);
      }
    }

    else
    {
      if (!self->_isRecording)
      {
        return;
      }

      bufferDuration = self->_bufferDuration;
      [(CSFileAudioInjectionEngine *)self _defaultOutASBD];
      [(CSFileAudioInjectionEngine *)self _defaultOutASBD];
      LODWORD(v25) = v73;
      v26 = bufferDuration * v74 * v25;
      [(CSFileAudioInjectionEngine *)self _defaultOutASBD];
      LODWORD(v27) = v72;
      v28 = (v26 * v27);
      v16 = [NSMutableData dataWithLength:v28];
      *inPropertyData = 1;
      [(CSFileAudioInjectionEngine *)self _defaultOutASBD];
      *&inPropertyData[8] = v71;
      *&inPropertyData[12] = v28;
      *&inPropertyData[16] = [v16 bytes];
      memset([v16 bytes], 1, v28);
      v29 = [(CSFileAudioInjectionEngine *)self _deinterleaveBufferIfNeeded:inPropertyData];
      v30 = [(CSFileAudioInjectionEngine *)self _compensateChannelDataIfNeeded:v29 receivedNumChannels:1];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        v33 = objc_loadWeakRetained(&self->_delegate);
        [v33 audioEngineBufferAvailable:self audioStreamHandleId:-[CSFileAudioInjectionEngine audioStreamHandleId](self buffer:"audioStreamHandleId") remoteVAD:v30 atTime:0 isFileLoadedBuffer:{mach_absolute_time(), 0}];
      }
    }

    goto LABEL_71;
  }

  v4 = self->_bufferDuration;
  v5 = self->_fileOption;
  if (!v5)
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v10 = v4 * 0.0;
    v7 = v10;
LABEL_22:
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    goto LABEL_23;
  }

  [(CSAudioInjectionFileOption *)v5 outASBD];
  v6 = self->_fileOption;
  v7 = (v4 * *&v97);
  v8 = self->_bufferDuration;
  if (!v6)
  {
    v10 = v8 * 0.0;
    goto LABEL_22;
  }

  [(CSAudioInjectionFileOption *)v6 outASBD];
  v9 = self->_fileOption;
  v10 = v8 * *&v94;
  if (!v9)
  {
LABEL_23:
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v13 = v10 * 0.0;
    goto LABEL_24;
  }

  [(CSAudioInjectionFileOption *)v9 outASBD];
  v11 = self->_fileOption;
  LODWORD(v12) = DWORD2(v92);
  v13 = v10 * v12;
  if (!v11)
  {
LABEL_24:
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v15 = 0.0;
    goto LABEL_25;
  }

  [(CSAudioInjectionFileOption *)v11 outASBD];
  LODWORD(v14) = HIDWORD(v89);
  v15 = v14;
LABEL_25:
  v34 = (v13 * v15);
  v16 = [NSMutableData dataWithLength:v34];
  *inPropertyData = 1;
  v35 = self->_fileOption;
  if (v35)
  {
    [(CSAudioInjectionFileOption *)v35 outASBD];
    v36 = HIDWORD(v86);
  }

  else
  {
    v36 = 0;
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
  }

  *&inPropertyData[8] = v36;
  *&inPropertyData[12] = v34;
  *&inPropertyData[16] = [v16 bytes];
  memset([v16 bytes], 1, v34);
  LODWORD(outExtAudioFile) = v34;
  v37 = ExtAudioFileRead([(CSAudioInjectionFileOption *)self->_fileOption fFile], &outExtAudioFile, inPropertyData);
  if (!self->_didSetScaleFactor)
  {
    [(CSAudioInjectionFileOption *)self->_fileOption scaleFactor];
    self->_scaleFactor = v38;
    self->_didSetScaleFactor = 1;
  }

  if (v37)
  {
    v39 = 0;
  }

  else
  {
    v39 = v7 == outExtAudioFile;
  }

  v40 = v39;
  if (v37 || !outExtAudioFile)
  {
    if (v37)
    {
      v44 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[CSFileAudioInjectionEngine _readAudioBufferAndFeed]";
        *&buf[12] = 1024;
        *&buf[14] = v37;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s ::: Error reading data from audio file : %d", buf, 0x12u);
      }
    }

    ExtAudioFileDispose([(CSAudioInjectionFileOption *)self->_fileOption fFile]);
    [(CSAudioInjectionFileOption *)self->_fileOption setFFile:0];
    v45 = self->_fileOption;
    self->_fileOption = 0;

    v46 = [(NSMutableArray *)self->_injectionCompletionNotifyBlocks objectAtIndex:0];
    [(NSMutableArray *)self->_injectionCompletionNotifyBlocks removeObjectAtIndex:0];
    self->_didSetScaleFactor = 0;
    self->_scaleFactor = 0.01;
    v47 = mach_absolute_time();
    v46[2](v46, v47);
LABEL_70:

    goto LABEL_71;
  }

  if (self->_isRecording)
  {
    v68 = v40;
    v41 = [(CSFileAudioInjectionEngine *)self _deinterleaveBufferIfNeeded:inPropertyData];
    v42 = self->_fileOption;
    if (v42)
    {
      [(CSAudioInjectionFileOption *)v42 outASBD];
      v43 = HIDWORD(v83);
    }

    else
    {
      v43 = 0;
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
    }

    v46 = [(CSFileAudioInjectionEngine *)self _compensateChannelDataIfNeeded:v41 receivedNumChannels:v43];

    v69 = [[NSMutableData alloc] initWithData:v46];
    v48 = [v46 length];
    v49 = self->_fileOption;
    if (v49)
    {
      [(CSAudioInjectionFileOption *)v49 outASBD];
      v50 = HIDWORD(v80);
    }

    else
    {
      v50 = 0;
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
    }

    if (self->_scaleFactor < 1.0)
    {
      v70 = [v69 bytes];
      if (v48 >> 1 >= v50)
      {
        v51 = 0;
        v52 = (v48 >> 1) / v50;
        while (1)
        {
          v53 = 0;
          do
          {
            for (i = 0; ; ++i)
            {
              v55 = self->_fileOption;
              if (v55)
              {
                [(CSAudioInjectionFileOption *)v55 outASBD];
                v56 = HIDWORD(v77);
              }

              else
              {
                v56 = 0;
                v78 = 0;
                v76 = 0u;
                v77 = 0u;
              }

              if (i >= v56)
              {
                break;
              }

              v70[v51 + v53 + i * v52] = (self->_scaleFactor * v70[v51 + v53 + i * v52]);
            }

            v57 = v53 >= 6;
            v53 += 2;
          }

          while (!v57);
          scaleFactor = self->_scaleFactor;
          [(CSAudioInjectionFileOption *)self->_fileOption scaleFactor];
          if ((scaleFactor + v59) >= 1.0)
          {
            break;
          }

          [(CSAudioInjectionFileOption *)self->_fileOption scaleFactor];
          self->_scaleFactor = v60 + self->_scaleFactor;
          v51 += 16;
          if (v51 >= v52)
          {
            goto LABEL_65;
          }
        }

        self->_scaleFactor = 1.0;
      }
    }

LABEL_65:
    v63 = mach_absolute_time();
    v64 = [(CSFileAudioInjectionEngine *)self startInjectBlock];

    if (v64)
    {
      (*(self->_startInjectBlock + 2))();
      [(CSFileAudioInjectionEngine *)self setStartInjectBlock:0];
    }

    v65 = objc_loadWeakRetained(&self->_delegate);
    v66 = objc_opt_respondsToSelector();

    if (v66)
    {
      v67 = objc_loadWeakRetained(&self->_delegate);
      [v67 audioEngineBufferAvailable:self audioStreamHandleId:-[CSFileAudioInjectionEngine audioStreamHandleId](self buffer:"audioStreamHandleId") remoteVAD:v69 atTime:0 isFileLoadedBuffer:{v63, v68}];
    }

    goto LABEL_70;
  }

LABEL_71:
}

- (void)_startAudioFeedingTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  audioFeedTimer = self->_audioFeedTimer;
  self->_audioFeedTimer = v3;

  dispatch_source_set_timer(self->_audioFeedTimer, 0, (self->_bufferDuration * 1000000000.0), 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v5 = self->_audioFeedTimer;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001618D0;
  v6[3] = &unk_100253510;
  objc_copyWeak(&v7, &location);
  dispatch_source_set_event_handler(v5, v6);
  dispatch_resume(self->_audioFeedTimer);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161984;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_createDeInterleaverIfNeeded
{
  self->_deinterleaver = 0;
  p_deinterleaver = &self->_deinterleaver;
  +[CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBD];
  v4 = v14;
  if (+[CSUtils shouldDeinterleaveAudioOnCS])
  {
    v5 = v14 >= 2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    memset(&inSourceFormat, 0, sizeof(inSourceFormat));
    +[CSFAudioStreamBasicDescriptionFactory lpcmInterleavedASBD];
    [CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBD:0];
    v6 = AudioConverterNew(&inSourceFormat, &v12, p_deinterleaver);
    if (v6)
    {
      v7 = v6;
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "[CSFileAudioInjectionEngine _createDeInterleaverIfNeeded]";
        v17 = 1026;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Cannot create de-interleaver using AudioConverterNew: %{public}d", buf, 0x12u);
      }

      *p_deinterleaver = 0;
    }

    pNonInterleavedABL = self->_pNonInterleavedABL;
    if (pNonInterleavedABL)
    {
      free(pNonInterleavedABL);
    }

    v10 = malloc_type_malloc(24 * v4, 0x10800404ACF7207uLL);
    self->_pNonInterleavedABL = v10;
    v10->mNumberBuffers = v4;
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSFileAudioInjectionEngine _createDeInterleaverIfNeeded]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Created de-interleaver", buf, 0xCu);
    }
  }
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161D14;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  deinterleaver = self->_deinterleaver;
  if (deinterleaver)
  {
    AudioConverterDispose(deinterleaver);
  }

  pNonInterleavedABL = self->_pNonInterleavedABL;
  if (pNonInterleavedABL)
  {
    free(pNonInterleavedABL);
    self->_pNonInterleavedABL = 0;
  }

  v5.receiver = self;
  v5.super_class = CSFileAudioInjectionEngine;
  [(CSFileAudioInjectionEngine *)&v5 dealloc];
}

- (CSFileAudioInjectionEngine)initWithStreamHandleId:(unint64_t)a3 withInputRecordingNumberOfChannels:(unsigned int)a4
{
  v19.receiver = self;
  v19.super_class = CSFileAudioInjectionEngine;
  v6 = [(CSFileAudioInjectionEngine *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("CSAudioInjectionEngine", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v6->_audioStreamHandleId = a3;
    +[CSConfig inputRecordingBufferDuration];
    v6->_bufferDuration = v9;
    v10 = +[NSMutableArray array];
    injectionAudioFileList = v6->_injectionAudioFileList;
    v6->_injectionAudioFileList = v10;

    v12 = +[NSMutableArray array];
    injectionStartNotifyBlocks = v6->_injectionStartNotifyBlocks;
    v6->_injectionStartNotifyBlocks = v12;

    v14 = +[NSMutableArray array];
    injectionCompletionNotifyBlocks = v6->_injectionCompletionNotifyBlocks;
    v6->_injectionCompletionNotifyBlocks = v14;

    v16 = +[NSUUID UUID];
    uuid = v6->_uuid;
    v6->_uuid = v16;

    v6->_didSetScaleFactor = 0;
    v6->_scaleFactor = 0.01;
    v6->_inputRecordingNumberOfChannels = a4;
  }

  return v6;
}

- (CSFileAudioInjectionEngine)initWithStreamHandleId:(unint64_t)a3
{
  v5 = +[CSConfig inputRecordingNumberOfChannels];

  return [(CSFileAudioInjectionEngine *)self initWithStreamHandleId:a3 withInputRecordingNumberOfChannels:v5];
}

@end