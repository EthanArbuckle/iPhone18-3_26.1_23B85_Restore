uint64_t sub_1000BD4C4(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSVoiceTriggerFirstPassJarvisAP _startListenWithCompletion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Leaving recordWillStartGroup", &v8, 0xCu);
  }

  dispatch_group_leave(*(*(a1 + 32) + 56));
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    if ((v3[8] & 1) == 0)
    {
      v4 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[CSVoiceTriggerFirstPassJarvisAP _startListenWithCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s didStartRecording received when CSVoiceTriggerFirstPassJarvisAP is turned off", &v8, 0xCu);
        v3 = *(a1 + 32);
      }

      [v3 _stopListening];
      v5 = *(a1 + 56);
    }
  }

  v6 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

void sub_1000BD8F4(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  [*(*(a1 + 32) + 104) registerObserver:?];
  if ([*(*(a1 + 32) + 120) isEnabled])
  {
    [*(a1 + 32) _transitJarvisAPEnable:1];
  }

  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 120);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD9E8;
  v3[3] = &unk_100253000;
  objc_copyWeak(&v4, &location);
  [v2 setCallback:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_1000BD9CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000BD9E8(uint64_t a1, uint64_t a2)
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"STOPPED";
    if (a2)
    {
      v5 = @"RUNNING";
    }

    v7 = 136315394;
    v8 = "[CSVoiceTriggerFirstPassJarvisAP start]_block_invoke_2";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger JarvisAP start policy changed : %{public}@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitJarvisAPEnable:a2];
}

void sub_1000BE0B4(uint64_t a1)
{
  v2 = [*(a1 + 32) osdAnalyzer];
  [v2 addFaceTrackingData:*(a1 + 40) atMachAbsTime:*(a1 + 48)];
}

void sub_1000BE188(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 attSiriNode:*(a1 + 32) didDetectEndOfSpeechAt:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BE328(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 attSiriNode:*(a1 + 32) didDetectStartOfSpeechAt:*(a1 + 40)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BE5C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 attSiriNode:*(a1 + 32) didUpdateOSDFeatures:*(a1 + 40) withFrameDurationMs:*(*(a1 + 32) + 40) withMHID:*(*(a1 + 32) + 160)];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BEA68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 disableEndpointer])
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v28 = "[CSAttSiriOSDNode resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:osdMode:]_block_invoke";
    v4 = "%s Skip since endpointer is disabled";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
    return;
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    *buf = 136315394;
    v28 = "[CSAttSiriOSDNode resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:osdMode:]_block_invoke";
    v29 = 2048;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Updating osdMode to %lu", buf, 0x16u);
  }

  [*(a1 + 40) setOsdMode:*(a1 + 48)];
  [*(a1 + 40) setNumSamplesProcessed:0];
  [*(a1 + 40) setNumOfChunksReceived:0];
  [*(a1 + 40) setDidAddAudio:0];
  [*(a1 + 40) setDidTimestampFirstAudioPacket:0];
  [*(a1 + 40) setCountOfConsecutiveBoron:0];
  [*(a1 + 40) setLastKnownConsecutiveBoronStartSampleCount:0];
  +[CSFAudioStreamBasicDescriptionFactory utteranceFileASBD];
  +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
  v7 = [CSAudioFileManager createAudioFileWriterForOSDWithInputFormat:buf outputFormat:v26];
  [*(a1 + 40) setAudioFileWriter:v7];

  v8 = [*(a1 + 40) currentAsset];

  if (!v8)
  {
    [*(a1 + 40) setOsdAnalyzer:0];
    v3 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v28 = "[CSAttSiriOSDNode resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:osdMode:]_block_invoke_2";
    v4 = "%s Cannot create OSDAnalyzer";
    goto LABEL_16;
  }

  v9 = [OSDAnalyzer alloc];
  v10 = [*(a1 + 40) currentAsset];
  v11 = [v10 path];
  v12 = [*(a1 + 40) currentRequestSampleRate];
  v13 = [*(a1 + 40) osdQueue];
  v14 = [v9 initWithConfigFile:v11 sampleRate:v12 context:0 queue:v13 delegate:*(a1 + 40)];
  [*(a1 + 40) setOsdAnalyzer:v14];

  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = v15;
    v18 = [v16 osdAnalyzer];
    v19 = [*(a1 + 40) currentAsset];
    v20 = [v19 path];
    *buf = 136315650;
    v28 = "[CSAttSiriOSDNode resetForNewRequestWithRecordContext:endpointerSettings:voiceTriggerInfo:osdMode:]_block_invoke";
    v29 = 2114;
    v30 = v18;
    v31 = 2114;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Created OSDAnalyzer: %{public}@ model path: %{public}@", buf, 0x20u);
  }

  v21 = [*(a1 + 40) osdAnalyzer];
  [*(a1 + 40) setFrameDurationMs:{objc_msgSend(v21, "getFrameDurationMs")}];

  if (+[CSUtils isContinuousConversationSupported])
  {
    objc_initWeak(buf, *(a1 + 40));
    if (*(*(a1 + 40) + 48))
    {
      WeakRetained = objc_loadWeakRetained(buf);
      v23 = [WeakRetained apQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BEFB4;
      block[3] = &unk_1002538D8;
      objc_copyWeak(&v25, buf);
      block[4] = *(a1 + 40);
      dispatch_async(v23, block);

      objc_destroyWeak(&v25);
    }

    objc_destroyWeak(buf);
  }
}

void sub_1000BEEE0(id *a1)
{
  if ([a1[4] isVoiceTriggered] && (v2 = a1[5]) != 0)
  {
    v6 = [v2 objectForKeyedSubscript:kVTEItriggerEndSampleCount];
    v3 = [v6 unsignedIntegerValue];
    v4 = [a1[5] objectForKeyedSubscript:kVTEIclientStartSampleCount];
    [a1[6] setVtEndInSampleCount:{v3 - objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v5 = a1[6];

    [v5 setVtEndInSampleCount:0];
  }
}

void sub_1000BEFB4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) numOfConsecutiveBoronActivationThreshold];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNumOfConsecutiveBoronActivationThreshold:v2];
}

id sub_1000BF090(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 numOfChunksReceived];
    v6 = [*(a1 + 32) numSamplesProcessed];
    v10 = 136315650;
    v11 = "[CSAttSiriOSDNode attSiriAudioSrcNodeDidStop:]_block_invoke";
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s total chunks received: %lu, samples processed: %lu", &v10, 0x20u);
  }

  v7 = [*(a1 + 32) osdAnalyzer];
  [v7 endAudio];

  v8 = [*(a1 + 32) audioFileWriter];
  [v8 endAudio];

  return [*(a1 + 32) setAudioFileWriter:0];
}

void sub_1000BF4E0(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 120);
  v1 = *(a1 + 32);
  if ((*(v1 + 10) & 1) == 0)
  {
    *(v1 + 10) = 1;
    v3 = +[NSDate date];
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    *(v4 + 136) = v3;

    *(*(a1 + 32) + 144) = [*(a1 + 40) hostTime];
    *(*(a1 + 32) + 152) = [*(a1 + 40) startSampleCount];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(*(a1 + 32) + 64);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 attSiriNode:*(a1 + 32) didUpdateFirstAudioPacketTimestamp:*(*(a1 + 32) + 136) firstAudioSampleSensorTimestamp:*(*(a1 + 32) + 144) firstAudioStartSampleCount:{*(*(a1 + 32) + 152), v12}];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000BF680(uint64_t a1)
{
  v2 = [*(a1 + 32) osdAnalyzer];

  if (v2)
  {
    v3 = mach_absolute_time();
    v4 = v3 - [*(a1 + 40) hostTime];
    if (([*(a1 + 40) wasBuffered] & 1) != 0 || __ROR8__(0xCCCCCCCCCCCCCCCDLL * objc_msgSend(*(a1 + 32), "numOfChunksReceived"), 2) < 0xCCCCCCCCCCCCCCDuLL || (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEndpointEnhancedLoggingEnabled"), v5, v6))
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = v7;
        v11 = [v8 hostTime];
        v12 = [*(a1 + 40) startSampleCount];
        v13 = [*(a1 + 40) numSamples];
        v14 = [*(a1 + 40) wasBuffered];
        *buf = 136316930;
        v45 = "[CSAttSiriOSDNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke";
        v46 = 2112;
        v47 = v9;
        v48 = 2048;
        v49 = v11;
        v50 = 2048;
        v51 = v12;
        v52 = 2048;
        v53 = v13;
        v54 = 2048;
        v55 = v14;
        v56 = 2048;
        v57 = v3;
        v58 = 2048;
        v59 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Received audio chunk from %@ with hostTime: %llu, startSampleCount: %llu, numSamples: %lu, wasBuffered: %lu, atTime: %llu, audioDeliveryHostTimeDelta: %llu", buf, 0x52u);
      }
    }

    [*(a1 + 32) setNumOfChunksReceived:{objc_msgSend(*(a1 + 32), "numOfChunksReceived") + 1}];
    v15 = [*(a1 + 40) numSamples];
    v16 = [*(a1 + 32) numSamplesProcessed];
    v17 = [*(a1 + 32) queue];
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_1000BFB94;
    v39 = &unk_100250B98;
    v18 = *(a1 + 40);
    v40 = *(a1 + 32);
    v41 = v18;
    v42 = v16;
    v43 = v4;
    dispatch_async(v17, &block);

    if (v15 >= 1)
    {
      v20 = 0;
      *&v19 = 136315394;
      v35 = v19;
      do
      {
        if (v15 >= 0x280)
        {
          v21 = 640;
        }

        else
        {
          v21 = v15;
        }

        if ([*(a1 + 32) numSamplesProcessed] >= *(*(*(a1 + 56) + 8) + 24))
        {
          if (([*(a1 + 32) didAddAudio] & 1) == 0)
          {
            [*(a1 + 32) setDidAddAudio:1];
            v22 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(a1 + 32);
              v24 = v22;
              v25 = [v23 numSamplesProcessed];
              *buf = v35;
              v45 = "[CSAttSiriOSDNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke_2";
              v46 = 2050;
              v47 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s addAudio first sample offset: %{public}lu", buf, 0x16u);
            }
          }

          v26 = [*(a1 + 40) subChunkFrom:v20 numSamples:v21 forChannel:0];
          v27 = [v26 data];
          v28 = [*(a1 + 32) audioFileWriter];
          [v28 addSamples:objc_msgSend(v27 numSamples:{"bytes"), objc_msgSend(v26, "numSamples")}];

          if (+[CSConfig inputRecordingIsFloat])
          {
            v29 = [v26 data];
            v30 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v29];

            v27 = v30;
          }

          v31 = [*(a1 + 32) osdAnalyzer];
          [v31 addAudio:v27 numSamples:{objc_msgSend(v26, "numSamples")}];
        }

        v15 -= v21;
        v20 += v21;
        [*(a1 + 32) setNumSamplesProcessed:{objc_msgSend(*(a1 + 32), "numSamplesProcessed") + v21}];
      }

      while (v15 > 0);
    }

    if ([*(a1 + 32) didAddAudio])
    {
      v32 = [*(a1 + 40) remoteVAD];

      if (v32)
      {
        [*(a1 + 32) checkConsecutiveBoronSignalWithAudioChunk:*(a1 + 40)];
      }
    }
  }

  else
  {
    v33 = qword_10029E278;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E278, 1) <= 0x1999999999999999uLL)
    {
      v34 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "[CSAttSiriOSDNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s skip audio packet since osdAnalyzer is nil", buf, 0xCu);
        v33 = qword_10029E278;
      }
    }

    qword_10029E278 = v33 + 1;
  }
}

void sub_1000BFB94(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 attSiriNode:*(a1 + 32) didUpdateAnchorMachAbsTime:objc_msgSend(*(a1 + 40) numSamplesProcessedBeforeAnchorTime:"hostTime") isAnchorTimeBuffered:*(a1 + 48) audioDeliveryHostTimeDelta:{objc_msgSend(*(a1 + 40), "wasBuffered"), *(a1 + 56)}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000BFD78(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[CSAttSiriOSDNode setPrefetchedAsset:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s setting prefetched asset %@", &v4, 0x16u);
  }
}

id sub_1000BFEB4(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriOSDNode stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) setOsdAnalyzer:0];
}

void sub_1000C000C(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  [v2 removeObject:*(a1 + 40)];

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[CSAttSiriOSDNode removeReceiver:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s OSDNode removed receiver: %@", &v5, 0x16u);
  }
}

void sub_1000C017C(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriOSDNodeDelegate])
    {
      v4 = [*(a1 + 32) receivers];
      [v4 addObject:*(a1 + 40)];

      v5 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v9 = 136315394;
        v10 = "[CSAttSiriOSDNode addReceiver:]_block_invoke";
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s OSDNode added receiver: %@", &v9, 0x16u);
      }
    }

    else
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        v9 = 136315394;
        v10 = "[CSAttSiriOSDNode addReceiver:]_block_invoke";
        v11 = 2112;
        v12 = v8;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", &v9, 0x16u);
      }
    }
  }
}

void sub_1000C06D0(uint64_t a1)
{
  v2 = +[CSEndpointerAssetManager sharedManager];
  v3 = [v2 getCurrentOSDAsset];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;

  v6 = +[CSEndpointerAssetManager sharedManager];
  [v6 addObserver:*(a1 + 32)];
}

void sub_1000C1844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C1880(uint64_t a1)
{
  v2 = +[SFEntitledAssetManager sharedInstance];
  [v2 switchToNewAssetsForAssetType:3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateEndpointerAssetsIfNeeded];
}

id sub_1000C1974(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointerAssetManager CSAssetManagerDidDownloadNewAsset:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s New hybrid endpoint asset downloaded", &v4, 0xCu);
  }

  return [*(a1 + 32) _updateAssetWithCurrentLanguageForAssetType:1];
}

id sub_1000C1AC4(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSEndpointerAssetManager CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Language changed to: %{public}@", &v5, 0x16u);
  }

  [*(a1 + 40) _updateAssetWithLanguage:*(a1 + 32) assetType:0];
  return [*(a1 + 40) _updateAssetWithLanguage:*(a1 + 32) assetType:1];
}

void sub_1000C1BEC(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = [(NSNumber *)a3 intValue];
  if (v6 != -1)
  {
    v7 = notify_cancel(v6);
    if (v7)
    {
      v8 = v7;
      v9 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315650;
        v11 = "[CSEndpointerAssetManager dealloc]_block_invoke";
        v12 = 2112;
        v13 = v5;
        v14 = 1024;
        v15 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to cancel notification (%@), status: %u", &v10, 0x1Cu);
      }
    }
  }
}

uint64_t sub_1000C1DD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C1DEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3] && (v3 = [v2 _isOSDIncludedInAsset:?], v2 = *(a1 + 32), v3))
  {
    v4 = v2[3];
    v5 = (*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v6 = [v2 _getCurrentHEPAsset];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    v5 = (v9 + 40);
    if (!v10)
    {
      return;
    }

    v4 = *(*(a1 + 32) + 24);
    if (!v4)
    {
      return;
    }
  }

  v11 = v4;
  v12 = *v5;
  *v5 = v11;
}

void sub_1000C1F8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3] && (v3 = [v2 _isOSDIncludedInAsset:?], v2 = *(a1 + 32), v3))
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v2[3];
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = [v2 _getCurrentHEPAsset];
    v8 = *(*(a1 + 40) + 8);
    v6 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id sub_1000C2148(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _notifyAssetsUpdateForObserver:v3];
}

void sub_1000C2940(id a1)
{
  v1 = objc_alloc_init(CSEndpointerAssetManager);
  v2 = qword_10029E280;
  qword_10029E280 = v1;
}

void sub_1000C2CC8(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = v2 / +[CSConfig inputRecordingNumberOfChannels];
  v77[0] = @"SampleCount";
  v4 = v3 / +[CSConfig inputRecordingSampleByteDepth];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(a1 + 40) + 200) sampleCount]);
  v78[0] = v5;
  v77[1] = @"HostTime";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v78[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];

  v64 = v7;
  [*(*(a1 + 40) + 216) addObject:v7];
  if ([*(*(a1 + 40) + 216) count] >= 0x65)
  {
    [*(*(a1 + 40) + 216) removeObjectAtIndex:0];
  }

  [*(*(a1 + 40) + 200) addSamples:objc_msgSend(*(a1 + 32) numSamples:{"bytes"), v4}];
  if (*(*(a1 + 40) + 168) == 1)
  {
    v8 = +[CSConfig inputRecordingIsFloat];
    v9 = +[CSUtils isIOSDeviceSupportingBargeIn];
    v10 = *(a1 + 32);
    if (v8)
    {
      if (v9)
      {
        [CSFLPCMTypeConverter applyNegative20dBGainToFloatBuffer:v10];
      }

      else
      {
        [CSFLPCMTypeConverter applyNegative32dBGainToFloatBuffer:v10];
      }
    }

    else if (v9)
    {
      [CSFLPCMTypeConverter applyNegative20dBGainToShortBuffer:v10];
    }

    else
    {
      [CSFLPCMTypeConverter applyNegative32dBGainToShortBuffer:v10];
    }

    v11 = [CSAudioChunk alloc];
    v12 = *(a1 + 32);
    v13 = +[CSConfig inputRecordingNumberOfChannels];
    v14 = [*(a1 + 32) length] >> 1;
    v15 = v14 / +[CSConfig inputRecordingNumberOfChannels];
    LOBYTE(v62) = +[CSConfig inputRecordingIsFloat];
    v16 = [v11 initWithData:v12 numChannels:v13 numSamples:v15 sampleByteDepth:2 startSampleCount:0 hostTime:0 remoteVAD:0 isFloat:v62];
    v17 = [*(*(a1 + 40) + 192) processAudioChunk:v16];
    v18 = +[CSFPreferences sharedPreferences];
    LODWORD(v15) = [v18 firstPassDebuggingEnabled];

    if (v15)
    {
      v19 = [*(*(a1 + 40) + 192) getLastResult];
      if (v19)
      {
        v20 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          [v19 bestScore];
          *buf = 136315906;
          v70 = "[CSFileAudioInjectionBuiltInEngine audioEngineBufferAvailable:audioStreamHandleId:buffer:remoteVAD:atTime:isFileLoadedBuffer:]_block_invoke";
          v71 = 2048;
          v72 = v22;
          v73 = 2048;
          v74 = [v19 bestStart];
          v75 = 2048;
          v76 = [v19 bestEnd];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s First Pass Score : %f, First Pass Best Start : %llu, First Pass Best End : %llu", buf, 0x2Au);
        }
      }
    }

    if (v17 && ([v17 isEarlyDetect] & 1) == 0)
    {
      v23 = [v17 bestEnd];
      v24 = [v17 bestStart];
      v25 = *(a1 + 48);
      v26 = (v23 - v24);
      +[CSConfig inputRecordingSampleRate];
      *&v28 = v26 / v27;
      v29 = v25 - [CSFTimeUtils secondsToHostTime:v28];
      [*(*(a1 + 40) + 192) reset];
      v30 = +[CSSpeechManager sharedManager];
      v67 = @"trigger-time";
      v31 = [NSNumber numberWithUnsignedLongLong:v29];
      v68 = v31;
      v32 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];

      v33 = [*(a1 + 40) userIntentOptions];
      if (v33)
      {
        v34 = v33;
        v63 = v32;
        v35 = [*(a1 + 40) userIntentOptions];
        v36 = [v35 objectForKeyedSubscript:@"bypassVoiceTrigger"];
        v37 = [v36 isEqual:&__kCFBooleanTrue];

        if (v37)
        {
          v65[0] = @"trigger-time";
          v38 = [NSNumber numberWithUnsignedLongLong:v29];
          v65[1] = @"bypassVoiceTrigger";
          v66[0] = v38;
          v66[1] = &__kCFBooleanTrue;
          v32 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
        }

        else
        {
          v32 = v63;
        }
      }

      v39 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
      v40 = [CSDeviceActivationEvent builtInMicVoiceTriggerEvent:v32 hostTime:mach_absolute_time()];
      [v39 notifyActivationEvent:v40 completion:0];
    }
  }

  while (1)
  {
    v41 = *(*(a1 + 40) + 208);
    +[CSConfig inputRecordingBufferDuration];
    v43 = v42;
    +[CSConfig inputRecordingSampleRate];
    v45 = v41 + v43 * v44;
    v46 = [*(*(a1 + 40) + 200) sampleCount];
    v47 = *(a1 + 40);
    if (v45 >= v46)
    {
      break;
    }

    v48 = v47[25];
    v49 = v47[26];
    +[CSConfig inputRecordingBufferDuration];
    v51 = v50;
    +[CSConfig inputRecordingSampleRate];
    v53 = [v48 copybufferFrom:v49 to:(v49 + v51 * v52)];
    +[CSConfig inputRecordingBufferDuration];
    v55 = v54;
    +[CSConfig inputRecordingSampleRate];
    *(*(a1 + 40) + 208) = (*(*(a1 + 40) + 208) + v55 * v56);
    v57 = *(a1 + 40);
    if (*(v57 + 169) == 1)
    {
      WeakRetained = objc_loadWeakRetained((v57 + 184));
      v59 = objc_opt_respondsToSelector();

      if (v59)
      {
        v60 = objc_loadWeakRetained((*(a1 + 40) + 184));
        [v60 audioEngineBufferAvailable:*(a1 + 40) audioStreamHandleId:*(a1 + 56) buffer:v53 remoteVAD:0 atTime:*(a1 + 48) isFileLoadedBuffer:*(a1 + 64)];
      }
    }
  }

  v61 = [v47 userIntentOptions];

  if (v61)
  {
    [*(a1 + 40) setUserIntentOptions:0];
  }
}

void sub_1000C3408(uint64_t a1)
{
  *(*(a1 + 32) + 169) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v4 audioEngineDidStopRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) reason:{"audioStreamHandleId"), 0}];
  }
}

void sub_1000C3574(uint64_t a1)
{
  *(*(a1 + 32) + 208) = [*(a1 + 32) getBestSampleCountWithOption:*(a1 + 40)];
  *(*(a1 + 32) + 169) = 1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v4 audioEngineDidStartRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) successfully:"audioStreamHandleId") error:{1, 0}];
  }
}

id sub_1000C3A38(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = CSFileAudioInjectionBuiltInEngine;
  objc_msgSendSuper2(&v4, "stopAudioStreamWithOutError:", 0);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSFileAudioInjectionBuiltInEngine;
  objc_msgSendSuper2(&v3, "stop");
  return [*(*(a1 + 32) + 200) reset];
}

void sub_1000C3B44(uint64_t a1)
{
  v29.receiver = *(a1 + 32);
  v29.super_class = CSFileAudioInjectionBuiltInEngine;
  objc_msgSendSuper2(&v29, "start");
  v2 = dispatch_group_create();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000C3F14;
  v27 = sub_1000C3F24;
  v28 = 0;
  dispatch_group_enter(v2);
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[CSFileAudioInjectionBuiltInEngine start]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Entering assets query for AOP model in audio injection", buf, 0xCu);
  }

  v4 = +[CSVoiceTriggerAssetHandler sharedHandler];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C3F2C;
  v20[3] = &unk_100250A58;
  v22 = &v23;
  v5 = v2;
  v21 = v5;
  [v4 getVoiceTriggerAssetWithEndpointId:0 completion:v20];

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[CSFileAudioInjectionBuiltInEngine start]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Done with assets query for AOP model in audio injection", buf, 0xCu);
  }

  v7 = v24[5];
  if (v7)
  {
    v8 = [v7 RTModelWithFallbackLanguage:@"en-US"];
    v9 = [CSKeywordAnalyzerNDEAPI alloc];
    v10 = [v8 modelData];
    v11 = [v9 initWithBlob:v10];
    v12 = *(a1 + 32);
    v13 = *(v12 + 192);
    *(v12 + 192) = v11;

    v14 = *(*(a1 + 32) + 192);
    if (!v14)
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "[CSFileAudioInjectionBuiltInEngine start]_block_invoke";
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s Failed to create NDAPI", buf, 0xCu);
        v14 = *(*(a1 + 32) + 192);
      }

      else
      {
        v14 = 0;
      }
    }

    [v14 setActiveChannel:0];
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[CSFileAudioInjectionBuiltInEngine start]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Error : Model is missing", buf, 0xCu);
    }
  }

  v17 = *(a1 + 32);
  v18 = +[CSAudioStartStreamOption noAlertOption];
  v19.receiver = v17;
  v19.super_class = CSFileAudioInjectionBuiltInEngine;
  objc_msgSendSuper2(&v19, "startAudioStreamWithOption:withOutError:", v18, 0);

  _Block_object_dispose(&v23, 8);
}

void sub_1000C3EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C3F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C3F2C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000C48A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSiriLocale:v3];
  [v4 setAllowMph:*(a1 + 88)];
  [v4 setUserSelectedPhraseType:*(a1 + 40)];
  [v4 setEndpointId:*(a1 + 48)];
  [v4 setEngineMajorVersion:*(a1 + 56)];
  [v4 setEngineMinorVersion:*(a1 + 64)];
  [v4 setAccessoryModelType:*(a1 + 72)];
  [v4 setCSCoreSpeechServicesAccessoryInfo:*(a1 + 80)];
}

void sub_1000C49F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000C4A10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained siriLocale];
  [v3 setSiriLocale:v5];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v3 setAllowMph:{objc_msgSend(v6, "allowMph")}];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 userSelectedPhraseType];
  [v3 setUserSelectedPhraseType:v8];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 endpointId];
  [v3 setEndpointId:v10];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 engineMajorVersion];
  [v3 setEngineMajorVersion:v12];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 engineMinorVersion];
  [v3 setEngineMinorVersion:v14];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 accessoryModelType];
  [v3 setAccessoryModelType:v16];

  v18 = objc_loadWeakRetained((a1 + 32));
  v17 = [v18 accessoryInfo];
  [v3 setCSCoreSpeechServicesAccessoryInfo:v17];
}

void sub_1000C4C80(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) siriLocale];
  [v11 setSiriLocale:v3];

  [v11 setAllowMph:{objc_msgSend(*(a1 + 32), "allowMph")}];
  v4 = [*(a1 + 32) userSelectedPhraseType];
  [v11 setUserSelectedPhraseType:v4];

  v5 = [*(a1 + 32) endpointId];
  [v11 setEndpointId:v5];

  v6 = [*(a1 + 32) engineMajorVersion];
  [v11 setEngineMajorVersion:v6];

  v7 = [*(a1 + 32) engineMinorVersion];
  [v11 setEngineMinorVersion:v7];

  v8 = [*(a1 + 32) accessoryModelType];
  [v11 setAccessoryModelType:v8];

  v9 = [*(a1 + 32) accessoryInfo];
  [v11 setCSCoreSpeechServicesAccessoryInfo:v9];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v11);
  }
}

id sub_1000C6600()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10029E2B0;
  v8 = qword_10029E2B0;
  if (!qword_10029E2B0)
  {
    v1 = sub_1000C698C();
    v6[3] = dlsym(v1, "MTAlarmManagerAlarmFired");
    qword_10029E2B0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_1000C6714()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10029E2B8;
  v8 = qword_10029E2B8;
  if (!qword_10029E2B8)
  {
    v1 = sub_1000C698C();
    v6[3] = dlsym(v1, "MTAlarmManagerFiringAlarmDismissed");
    qword_10029E2B8 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_1000C6828()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_10029E2C0;
  v8 = qword_10029E2C0;
  if (!qword_10029E2C0)
  {
    v1 = sub_1000C698C();
    v6[3] = dlsym(v1, "MTAlarmManagerStateReset");
    qword_10029E2C0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *sub_1000C693C(uint64_t a1)
{
  v2 = sub_1000C698C();
  result = dlsym(v2, "MTAlarmManagerStateReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E2C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000C698C()
{
  v3[0] = 0;
  if (!qword_10029E2A8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000C6A9C;
    v3[4] = &unk_1002535B8;
    v3[5] = v3;
    v4 = off_100250B78;
    v5 = 0;
    qword_10029E2A8 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_10029E2A8;
    if (qword_10029E2A8)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_10029E2A8;
}

uint64_t sub_1000C6A9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E2A8 = result;
  return result;
}

void *sub_1000C6B10(uint64_t a1)
{
  v2 = sub_1000C698C();
  result = dlsym(v2, "MTAlarmManagerFiringAlarmDismissed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E2B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000C6B60(uint64_t a1)
{
  v2 = sub_1000C698C();
  result = dlsym(v2, "MTAlarmManagerAlarmFired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10029E2B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000C6E24(uint64_t a1)
{
  sub_1000C698C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E2A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(CSAlarmMonitor *)v2 initializeAlarmState];
  }
}

void sub_1000C6F48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[CSAlarmMonitor initializeAlarmState]_block_invoke";
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched alarm result = %@", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isEnabled] && (objc_msgSend(v9, "firedDate"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          v12 = [v9 dismissedDate];
          if (!v12)
          {

LABEL_18:
            v15 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v25 = "[CSAlarmMonitor initializeAlarmState]_block_invoke";
              v26 = 2112;
              v27 = v9;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Alarm %@ is firing", buf, 0x16u);
            }

            LOBYTE(v6) = 1;
            goto LABEL_21;
          }

          v13 = v12;
          v14 = [v11 compare:v12];

          if (v14 == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v16 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C72A4;
  v17[3] = &unk_1002537E8;
  v17[4] = v16;
  v18 = v6;
  [v16 enumerateObserversInQueue:v17];
}

void sub_1000C71E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[CSAlarmMonitor initializeAlarmState]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Fetching alarm error = %@", &v4, 0x16u);
  }
}

id sub_1000C72A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return [*(a1 + 32) _notifyObserver:a2 alarmIsFiringState:v3];
}

void sub_1000C7394(id a1)
{
  v1 = objc_alloc_init(CSAlarmMonitor);
  v2 = qword_10029E290;
  qword_10029E290 = v1;
}

id sub_1000C7720(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[CSAttendingStatesMessageHandler didReceiveStopRecognitionRequest:stopReason:]_block_invoke";
    v8 = 2050;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s stopReason: %{public}lu", &v6, 0x16u);
  }

  v4 = *(a1 + 32);
  if ((*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return [v4 _resetCachedState];
  }

  else
  {
    return [v4 _handleSpeechRecognitionTaskDidStop];
  }
}

void sub_1000C79EC(uint64_t a1)
{
  v2 = [[CSSpeechStartDetectedMetaData alloc] initWithHostTime:*(a1 + 48) audioRecordType:*(a1 + 56) audioRecordDeviceId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  *(*(a1 + 32) + 9) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v7 speechStartDetectedWithHostTime:*(a1 + 48) audioRecordType:*(a1 + 56) audioRecordDeviceId:*(a1 + 40)];
  }

  v8 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v10 speechStartDetectedWithShouldDuckTTS:{objc_msgSend(*(a1 + 32), "_shouldDuckTTSAtSpeechStartDetected:", *(a1 + 56))}];
  }

  v11 = *(a1 + 32);
  if (*(v11 + 8) == 1)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSAttendingStatesMessageHandler speechStartDetectedWithHostTime:audioRecordType:audioRecordDeviceId:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s ASR is running, deliver [speechRecognizerReadyForNextTurn] until it finishes", buf, 0xCu);
      v11 = *(a1 + 32);
    }

    *(v11 + 9) = 1;
  }

  else
  {
    v13 = objc_loadWeakRetained((v11 + 16));
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v15 speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:*(a1 + 48) audioRecordType:*(a1 + 56) audioRecordDeviceId:*(a1 + 40)];
    }
  }
}

void sub_1000C7C80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 localAttendingStopped];
  }
}

void sub_1000C7DAC(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained localAttendingStoppedUnexpectedlyWithError:*(a1 + 40)];
}

void sub_1000C7EA0(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 localAttendingStartedWithRootRequestId:*(a1 + 40)];
  }
}

void sub_1000C7FD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 localAttendingWillStartWithRootRequestId:*(a1 + 40)];
  }
}

void sub_1000C8238(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 gestureMonitorDidReceiveSleepGesture:*(a1 + 32)];
  }
}

void sub_1000C832C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) notifyObserver:v3];
  if (objc_opt_respondsToSelector())
  {
    [v3 gestureMonitorDidReceiveWakeGesture:*(a1 + 32)];
  }
}

id sub_1000C858C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10029E2C8;
  v7 = qword_10029E2C8;
  if (!qword_10029E2C8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000C866C;
    v3[3] = &unk_100253580;
    v3[4] = &v4;
    sub_1000C866C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000C8654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000C866C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10029E2D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000C87C0;
    v4[4] = &unk_1002535B8;
    v4[5] = v4;
    v5 = off_100250BB8;
    v6 = 0;
    qword_10029E2D0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10029E2D0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CMWakeGestureManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10029E2C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000C87C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E2D0 = result;
  return result;
}

void sub_1000C99C8(uint64_t a1)
{
  v2 = +[CSAudioPowerProvider sharedInstance];
  [v2 processAudioChunkForTV:*(a1 + 32)];

  v8 = [*(a1 + 40) _fetchAudioDecoderForTV:{objc_msgSend(*(a1 + 32), "audioFormat")}];
  v3 = [*(a1 + 32) packets];
  v4 = [*(a1 + 32) streamHandleID];
  v5 = [*(a1 + 32) timeStamp];
  v6 = [*(a1 + 32) timeStamp];
  LODWORD(v7) = [*(a1 + 32) numChannels];
  [v8 addPackets:v3 audioStreamHandleId:v4 remoteVAD:0 timestamp:v5 arrivalTimestampToAudioRecorder:v6 wasBuffered:0 receivedNumChannels:v7];
}

void sub_1000C9B4C(uint64_t a1)
{
  v2 = +[CSAudioPowerProvider sharedInstance];
  [v2 processAudioChunk:*(a1 + 32)];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(*(a1 + 40) + 64);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) attSiriAudioSrcNodeLPCMRecordBufferAvailable:*(a1 + 40) audioChunk:{*(a1 + 32), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

id sub_1000C9CD8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != 7)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[CSAttSiriAudioSrcNode audioStreamProvider:didStopStreamUnexpectedly:]_block_invoke";
      v8 = 2048;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Tandem stream stopped unexpectedly for reason: %ld", &v6, 0x16u);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 attSiriAudioSrcNodeDidStopUnexpectedly:*(a1 + 32)];
  }

  return [*(a1 + 32) _handleDidStop];
}

void sub_1000C9FE8(uint64_t a1)
{
  if (([*(*(a1 + 32) + 64) containsObject:*(a1 + 40)] & 1) == 0)
  {
    if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriAudioDataReceiver])
    {
      v2 = *(a1 + 40);
      v3 = *(*(a1 + 32) + 64);

      [v3 addObject:v2];
    }

    else
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        v6 = 136315394;
        v7 = "[CSAttSiriAudioSrcNode addReceiver:]_block_invoke";
        v8 = 2112;
        v9 = v5;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", &v6, 0x16u);
      }
    }
  }
}

void sub_1000CA1A4(uint64_t a1)
{
  v2 = [*(a1 + 32) tandemStream];
  v7 = [v2 streamProvider];

  v3 = [v7 recordRoute];
  v4 = [v7 playbackRoute];
  v5 = [v7 recordDeviceInfo];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, v4, v5);
  }
}

void sub_1000CA34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA364(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CA37C(uint64_t a1)
{
  v2 = [*(a1 + 32) tandemStream];
  v6 = [v2 streamProvider];

  v3 = [v6 recordRoute];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000CA534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000CA558(uint64_t a1)
{
  v2 = [*(a1 + 32) tandemStream];
  v9 = [v2 streamProvider];

  v3 = [v9 recordRoute];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v9 playbackRoute];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t sub_1000CA8EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1000CA904(uint64_t a1)
{
  [*(a1 + 32) setTandemStream:*(a1 + 40)];
  [*(a1 + 40) setDelegate:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 attachToPrimaryStreamWithConfig:0 completion:v3];
}

void sub_1000CC26C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1000CC2A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _shouldEnableMyriadFriendlySelfTrigger];

  if (v3)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS _addSelfTriggerDetectorEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Device meets myriad-friendly selfTrigger condition", &v11, 0xCu);
    }

    return 1;
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 voiceTriggerEnabledPolicy];
  v7 = [v6 isEnabled];

  if (v7)
  {
    return 1;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  v10 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11 = 136315138;
    v12 = "[CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS _addSelfTriggerDetectorEnabledConditions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SelfTriggerDetector cannot be turned on since VoiceTrigger is disabled", &v11, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_1000CC410(uint64_t a1)
{
  v2 = +[CSAudioPlayingAppMonitor sharedMonitor];
  v3 = [v2 playingApps];
  v4 = [v3 count];

  v5 = +[CSAudioSessionMonitor sharedInstance];
  v6 = [v5 getAudioSessionState];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _isSpeakerActive];

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 1;
  }

  v10 = v9;
  v11 = v10 & v8;
  if ((v10 & v8 & 1) == 0)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315906;
      v15 = "[CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS _addSelfTriggerDetectorEnabledConditions]_block_invoke";
      v16 = 1024;
      v17 = v4 != 0;
      v18 = 1024;
      v19 = v6 == 1;
      v20 = 1024;
      v21 = v8 & 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s SelfTriggerDetector cannot be turned on since isOtherAppPlayingBack = %d, isAudioSessionActive = %d, isSpeakerActive = %d", &v14, 0x1Eu);
    }
  }

  return v11;
}

BOOL sub_1000CC57C(id a1)
{
  if ((+[CSUtils isIOSDeviceSupportingBargeIn]& 1) != 0)
  {
    return 1;
  }

  v1 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  v2 = [v1 phoneCallState];

  if ((v2 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 1;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    v6 = 136315138;
    v7 = "[CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS _addSelfTriggerDetectorEnabledConditions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s We are disabling self trigger detector as we are in phone call in non-barge-in device", &v6, 0xCu);
    return 0;
  }

  return result;
}

BOOL sub_1000CC674(id a1)
{
  v1 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  v2 = [v1 phoneCallState];

  if (v2 == 2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS _addSelfTriggerDetectorEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s We are disabling self trigger detector as we are in a ringtone", &v5, 0xCu);
    }
  }

  return v2 != 2;
}

BOOL sub_1000CC74C(id a1)
{
  v1 = +[CSSiriEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS _addSelfTriggerDetectorEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SelfTriggerDetector cannot be turned on since Siri not enabled", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_1000CCB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CCB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyCallbackWithOption:a3];
}

void sub_1000CCC74(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSCommandControlBehaviorMonitor notifyDidStopStream:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 commandControlBehaviorMonitor:*(a1 + 32) didStopStream:*(a1 + 40)];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_1000CCE88(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSCommandControlBehaviorMonitor notifyWillStopStream:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 commandControlBehaviorMonitor:*(a1 + 32) willStopStream:*(a1 + 40)];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_1000CD0D0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSCommandControlBehaviorMonitor notifyDidStartStreamWithContext:successfully:option:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 commandControlBehaviorMonitor:*(a1 + 32) didStartStreamWithContext:*(a1 + 40) successfully:*(a1 + 56) option:*(a1 + 48)];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_1000CD318(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSCommandControlBehaviorMonitor notifyWillStartStreamWithContext:option:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 commandControlBehaviorMonitor:*(a1 + 32) willStartStreamWithContext:*(a1 + 40) option:*(a1 + 48)];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_1000CD530(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000CD61C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000CD748(id a1)
{
  v1 = objc_alloc_init(CSCommandControlBehaviorMonitor);
  v2 = qword_10029E2D8;
  qword_10029E2D8 = v1;
}

BOOL sub_1000CD7A4(id a1)
{
  v1 = +[CSSiriEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogCategoryASV;
    if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSmartSiriVolumeRunPolicy _addSmartSiriVolumeEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume cannot be resumed because Siri is not enabled", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_1000CDDE4(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTimestamp:mach_absolute_time()];
  v3 = [[SCDAPerceptualAudioHash alloc] initWithData:*(a1 + 32)];
  [v4 setPerceptualAudioHash:v3];

  [v4 setActivationSource:13];
  [v4 setActivationExpirationTime:{objc_msgSend(*(a1 + 40), "unsignedLongLongValue")}];
}

void sub_1000CDE80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v3 error];
    v8 = [v7 localizedDescription];
    v11 = 136315394;
    v12 = "[CSSiriLauncher notifyDarwinVoiceTrigger:deviceId:myriadPHash:myriadLateActivationExpirationTime:completion:]_block_invoke";
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Cannot invoke Siri client for voice trigger from Darwin : %{public}@", &v11, 0x16u);
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSSiriLauncher notifyDarwinVoiceTrigger:deviceId:myriadPHash:myriadLateActivationExpirationTime:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Invoked Siri client for voice trigger from Darwin", &v11, 0xCu);
    }

    v6 = +[CSFPreferences sharedPreferences];
    [v6 setVoiceTriggerEverUsed];
  }

LABEL_8:
  v9 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
  [v9 logSiriLaunchCompletedWithVoiceTriggerEventInfo:*(a1 + 32)];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_1000CE0D8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, v3 == 0, v5);
  }
}

void sub_1000CE238(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[CSSiriLauncher deactivateSiriActivationConnectionWithReason:withOptions:withContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s SiriActivationConnection deactivated due to %ld", &v4, 0x16u);
  }
}

void sub_1000CE444(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v4 = [v3 error];
    v5 = v4 == 0;

    v6 = *(a1 + 32);
    v7 = [v3 error];

    (*(v6 + 16))(v6, v5, v7);
  }
}

void sub_1000CE5EC(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = [(AFSiriActivationResult *)v2 error];

  if (v3)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(AFSiriActivationResult *)v2 error];
      v7 = [v6 localizedDescription];
      v8 = 136315394;
      v9 = "[CSSiriLauncher notifyWakeKeywordSpokenBluetoothDevice:deviceId:]_block_invoke";
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot notify wake keyword spoken event : %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1000CE83C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v3 error];
    v8 = [v7 localizedDescription];
    v11 = 136315394;
    v12 = "[CSSiriLauncher notifyBluetoothDeviceVoiceTrigger:deviceId:completion:]_block_invoke";
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Cannot invoke Siri client : %{public}@", &v11, 0x16u);
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSSiriLauncher notifyBluetoothDeviceVoiceTrigger:deviceId:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Invoked Siri client", &v11, 0xCu);
    }

    v6 = +[CSFPreferences sharedPreferences];
    [v6 setVoiceTriggerEverUsed];
  }

LABEL_8:
  v9 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
  [v9 logSiriLaunchCompletedWithVoiceTriggerEventInfo:*(a1 + 32)];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_1000CEABC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    if (v4)
    {
      v5 = [v6 error];
      (*(v4 + 16))(v4, 0, v5);
    }
  }

  else if (v4)
  {
    (*(v4 + 16))(v4, 1, 0);
  }
}

void sub_1000CEBBC(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = [(AFSiriActivationResult *)v2 error];

  if (v3)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(AFSiriActivationResult *)v2 error];
      v7 = [v6 localizedDescription];
      v8 = 136315394;
      v9 = "[CSSiriLauncher notifyWakeKeywordSpokenCarPlay:deviceId:]_block_invoke";
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot notify wake keyword spoken event : %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1000CEEAC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  v4 = [[SCDAPerceptualAudioHash alloc] initWithData:*(a1 + 32)];
  [v3 setPerceptualAudioHash:v4];
}

void sub_1000CEF28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v3 error];
    v8 = [v7 localizedDescription];
    v11 = 136315394;
    v12 = "[CSSiriLauncher notifyCarPlayVoiceTrigger:deviceId:myriadPHash:completion:]_block_invoke";
    v13 = 2114;
    v14 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Cannot invoke Siri client for voice trigger from Jarvis : %{public}@", &v11, 0x16u);
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSSiriLauncher notifyCarPlayVoiceTrigger:deviceId:myriadPHash:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Invoked Siri client for voice trigger from Jarvis", &v11, 0xCu);
    }

    v6 = +[CSFPreferences sharedPreferences];
    [v6 setVoiceTriggerEverUsed];
  }

LABEL_8:
  v9 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
  [v9 logSiriLaunchCompletedWithVoiceTriggerEventInfo:*(a1 + 32)];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_1000CF1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 error];
      v8 = [v7 localizedDescription];
      v10 = 136315394;
      v11 = "[CSSiriLauncher notifyCarPlayVoiceTriggerPrewarm:deviceId:completion:]_block_invoke";
      v12 = 2114;
      v13 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s AFSiriActivationCarPlayDeviceVoiceTriggerPrewarm failed : %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSSiriLauncher notifyCarPlayVoiceTriggerPrewarm:deviceId:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s AFSiriActivationCarPlayDeviceVoiceTriggerPrewarm success", &v10, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1000CF35C(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = [(AFSiriActivationResult *)v2 error];

  if (v3)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(AFSiriActivationResult *)v2 error];
      v7 = [v6 localizedDescription];
      v8 = 136315394;
      v9 = "[CSSiriLauncher notifyWakeKeywordSpokenInBuiltInMic:]_block_invoke";
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Cannot notify wake keyword spoken event : %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1000CF66C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  v4 = [[SCDAPerceptualAudioHash alloc] initWithData:*(a1 + 32)];
  [v3 setPerceptualAudioHash:v4];
}

void sub_1000CF6E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = CSLogContextFacilityCoreSpeech;
  if (v4)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v3 error];
    v8 = [v7 localizedDescription];
    v12 = 136315394;
    v13 = "[CSSiriLauncher notifyBuiltInVoiceTrigger:myriadPHash:completion:]_block_invoke";
    v14 = 2114;
    v15 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Cannot invoke Siri client : %{public}@", &v12, 0x16u);
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[6];
      v12 = 136315394;
      v13 = "[CSSiriLauncher notifyBuiltInVoiceTrigger:myriadPHash:completion:]_block_invoke_2";
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Invoked Siri client successfully with activationSource: %ld", &v12, 0x16u);
    }

    v6 = +[CSFPreferences sharedPreferences];
    [v6 setVoiceTriggerEverUsed];
  }

LABEL_8:
  v10 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
  [v10 logSiriLaunchCompletedWithVoiceTriggerEventInfo:a1[4]];

  v11 = a1[5];
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_1000CF96C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = v5;
    v8 = [v3 error];
    v11 = 136315650;
    v12 = "[CSSiriLauncher _notifyBuiltInVoiceTriggerPrewarm:activationSource:completion:]_block_invoke";
    v13 = 2048;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s VoiceTriggerPrewarm completed for activation source:%ld with error:%@", &v11, 0x20u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v3 error];
    (*(v9 + 16))(v9, v4 == 0, v10);
  }
}

void sub_1000CFB44(id a1)
{
  v1 = objc_alloc_init(CSSiriLauncher);
  v2 = qword_10029E2E8;
  qword_10029E2E8 = v1;
}

double sub_1000D0BD4(uint64_t a1)
{
  result = *(*(a1 + 32) + 264);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

double sub_1000D0C94(uint64_t a1)
{
  result = *(*(a1 + 32) + 144);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000D10E8(double *a1)
{
  v1 = *(a1 + 4);
  if ((*(v1 + 12) & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 7);
      v5 = *(a1 + 8);
      v7 = *(a1 + 5);
      v6 = *(a1 + 6);
      v8 = *(a1 + 9);
      v9 = *(a1 + 10);
      v10 = *(a1 + 11);
      v20 = 136316930;
      v21 = "[CSAttSiriAsrNode localSpeechRecognizer:didProduceEndpointFeaturesWithWordCount:trailingSilenceDuration:eosLikelihood:pauseCounts:silencePosterior:processedAudioDurationInMilliseconds:acousticEndpointerScore:]_block_invoke";
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = v4;
      v26 = 2048;
      v27 = v5;
      v28 = 2112;
      v29 = v7;
      v30 = 2048;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s wordCount = %ld, trailingSilenceDuration = %ld, eosLikelihood = %f, pauseCounts = %@, silencePosterior = %f, processedAudioDurationInMilliseconds = %ld, acousticEndpointerScore = %f", &v20, 0x52u);
      v1 = *(a1 + 4);
    }

    WeakRetained = objc_loadWeakRetained((v1 + 72));
    v12 = *(a1 + 6);
    v13 = *(a1 + 7);
    v14 = a1[8];
    v15 = a1[9];
    v16 = *(a1 + 5);
    v17 = [LBLocalSpeechRecognitionSettings getTaskStringFromSpeechRecognitionSettings:*(*(a1 + 4) + 176)];
    [WeakRetained processASRFeaturesWithWordCount:v12 trailingSilenceDuration:v13 eosLikelihood:v16 pauseCounts:v17 silencePosterior:*(a1 + 10) taskName:0 processedAudioDurationInMilliseconds:v14 acousticEndpointerScore:v15 fromServer:a1[11]];

    v18 = objc_loadWeakRetained((*(a1 + 4) + 80));
    v19 = a1[8];
    *&v19 = v19;
    [v18 setEndpointerFeatureEoS:v19];
  }
}

void sub_1000D1380(uint64_t a1)
{
  if (*(*(a1 + 32) + 104) != *(a1 + 40))
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v41 = "[CSAttSiriAsrNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      v2 = "%s Ignoring completion from previous recognizer!";
      v3 = v1;
      v4 = OS_LOG_TYPE_INFO;
      v5 = 12;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v3, v4, v2, buf, v5);
      return;
    }

    return;
  }

  v7 = *(a1 + 48);
  v8 = CSLogContextFacilityCoreSpeech;
  if (v7 != 0.0 && os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v41 = "[CSAttSiriAsrNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
    v42 = 2114;
    v43 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Speech recognition encountered error: %{public}@", buf, 0x16u);
    v8 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[CSAttSiriAsrNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Invalidating local speech recognizer for finish", buf, 0xCu);
  }

  v9 = [*(a1 + 32) localSRBridgeListener];

  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = v10[20];
    v12 = *(a1 + 32);
    v13 = v12[24];
    v14 = [v12 localSRBridgeListener];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000D1838;
    v34[3] = &unk_100250F68;
    v35 = *(a1 + 56);
    v36 = v11;
    v39 = v13;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v37 = v15;
    v38 = v16;
    v17 = v11;
    [v14 notifyClientsWithBlock:v34];
  }

  else
  {
    [v10 _invalidateLocalSpeechRecognizer];
    [*(*(a1 + 32) + 344) endAudioWithCancellation:0 completion:0];
    v18 = *(a1 + 32);
    if (*(v18 + 15) != 1)
    {
      goto LABEL_15;
    }

    v17 = +[CESRDictationOnDeviceSampling sharedManager];
    [v17 incrementSampledRequestCount];
  }

  v18 = *(a1 + 32);
LABEL_15:
  v19 = [*(v18 + 304) estimatedUserSpeakingEndedHostTime];
  v20 = *(a1 + 32);
  if ((*(v20 + 14) & 1) == 0)
  {
    v21 = *(v20 + 288);
    if (v21)
    {
      v22 = v19;
      if (v19)
      {
        v23 = mach_continuous_time();
        [CSFTimeUtils hostTimeToTimeInterval:v21 - v23 - v22 + mach_absolute_time()];
        v25 = v24;
        v26 = [CSFTimeUtils absoluteHostTimeToContinuousHostTime:v22];
        v27 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
        v28 = CSLogContextFacilityCoreSpeech;
        v29 = v28;
        if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {

          v30 = CSLogContextFacilityCoreSpeech;
        }

        else
        {
          if (os_signpost_enabled(v28))
          {
            *buf = 134349570;
            v41 = v26;
            v42 = 2080;
            v43 = COERCE_DOUBLE("SiriX");
            v44 = 2080;
            v45 = "enableTelemetry=YES";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "ondevice_EagerCPL", "%{public, signpost.description:begin_time}llu, %s %s", buf, 0x20u);
          }

          v30 = CSLogContextFacilityCoreSpeech;
          if (os_signpost_enabled(v30))
          {
            v31 = *(*(a1 + 32) + 288);
            *buf = 134349570;
            v41 = v31;
            v42 = 2080;
            v43 = COERCE_DOUBLE("SiriX");
            v44 = 2080;
            v45 = "enableTelemetry=YES";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v27, "ondevice_EagerCPL", "%{public, signpost.description:end_time}llu, %s %s", buf, 0x20u);
          }
        }

        v32 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*(a1 + 32) + 288);
          *buf = 136315906;
          v41 = "[CSAttSiriAsrNode localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
          v42 = 2050;
          v43 = v25 * 1000.0;
          v44 = 2050;
          v45 = v26;
          v46 = 2050;
          v47 = v33;
          v2 = "%s eagerCPL time interval: %{public}f, userSpeakingEndedHostTime: %{public}llu, lastEndpointEagerResultTime: %{public}llu";
          v3 = v32;
          v4 = OS_LOG_TYPE_DEFAULT;
          v5 = 42;
          goto LABEL_4;
        }
      }
    }
  }
}

void sub_1000D1838(uint64_t a1, void *a2)
{
  [a2 localSpeechServiceDidCompletionRecognitionWithStatistics:*(a1 + 32) requestId:*(a1 + 40) endpointMode:*(a1 + 64) error:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = *(v3 + 96);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D18E4;
  v5[3] = &unk_100253C48;
  v5[4] = v3;
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void sub_1000D18E4(uint64_t a1)
{
  [*(a1 + 32) _invalidateLocalSpeechRecognizer];
  v2 = *(*(a1 + 32) + 352);
  v3 = *(*(a1 + 32) + 344);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D19E0;
  v8[3] = &unk_100250F40;
  v4 = v2;
  v9 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  [v3 endAudioWithCancellation:0 completion:v8];
  if (*(*(a1 + 32) + 15) == 1)
  {
    v7 = +[CESRDictationOnDeviceSampling sharedManager];
    [v7 incrementSampledRequestCount];
  }
}

void sub_1000D19E0(uint64_t a1, int a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  if (a2)
  {
    if (v13)
    {
      v8 = [NSLocale localeWithLocaleIdentifier:*(*(a1 + 48) + 152)];
      v9 = [v13 stringByDeletingPathExtension];
      v10 = [v9 stringByAppendingPathExtension:@"book"];

      v11 = +[CESRSpeechProfileDispatcher sharedDispatcher];
      [v11 snapshotBookmarksForLocale:v8 toPath:v10];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  [*(a1 + 32) logSamplingEventStatus:v12 requestId:*(a1 + 40) error:v7];
}

void sub_1000D1DB8(double *a1, void *a2)
{
  v3 = *(*(a1 + 4) + 176);
  v9 = a2;
  v4 = [v3 enableVoiceCommands];
  v5 = *(a1 + 8);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = a1[9];
  if (v4)
  {
    [v9 localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:v6 rcId:v5 speechPackage:v7 duration:*(a1 + 7) metadata:v8];
  }

  else
  {
    [v9 localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:v6 rcId:v5 speechPackage:v7 duration:v8];
  }
}

void sub_1000D2038(void *a1, void *a2)
{
  v3 = *(a1[4] + 176);
  v7 = a2;
  v4 = [v3 enableVoiceCommands];
  v5 = a1[5];
  v6 = a1[6];
  if (v4)
  {
    [v7 localSpeechServiceDidReceivedFinalResultWithRequestId:v5 speechPackage:v6 metadata:a1[7]];
  }

  else
  {
    [v7 localSpeechServiceDidReceivedFinalResultWithRequestId:v5 speechPackage:v6];
  }
}

void sub_1000D2190(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) != *(a1 + 40))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 136315138;
    v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion from previous recognizer!";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, &v11, 0xCu);
    return;
  }

  if (([*(v1 + 176) enableVoiceCommands] & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 136315138;
    v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion with metadatapackage as enable condition not satisfied!";
    goto LABEL_13;
  }

  v5 = [*(a1 + 48) isFinal];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v11 = 136315394;
    v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePackage:withMetadata:]_block_invoke";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s isFinal package : %{public}@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = v8[20];
  if (v5)
  {
    [v8 _handleDidRecognizedFinalSpeechPackage:v9 requestId:v10 metadata:*(a1 + 56)];
  }

  else
  {
    [v8 _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:v9 requestId:v10 rcId:v8[21] metadata:*(a1 + 56)];
    ++*(*(a1 + 32) + 168);
  }
}

void sub_1000D2430(uint64_t a1)
{
  if (*(*(a1 + 32) + 104) == *(a1 + 40))
  {
    v3 = [*(a1 + 48) isFinal];
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v11 = 136315394;
      v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePackage:]_block_invoke";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s isFinal package : %{public}@", &v11, 0x16u);
    }

    if (!*(*(a1 + 32) + 320))
    {
      *(*(a1 + 32) + 320) = mach_continuous_time();
    }

    [CSAttSiriSpeechPackageHelper getFirstTokenLeadingSilenceFromSpeechPackage:*(a1 + 48)];
    *(*(a1 + 32) + 336) = v6;
    [CSAttSiriSpeechPackageHelper getFirstTokenDurationFromSpeechPackage:*(a1 + 48)];
    *(*(a1 + 32) + 328) = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v8[20];
    if (v3)
    {
      [v8 _handleDidRecognizedFinalSpeechPackage:v9 requestId:v10 metadata:0];
    }

    else
    {
      [v8 _handleDidRecognizedSpeechPackageForEagerRecognitionCandidate:v9 requestId:v10 rcId:v8[21] metadata:0];
      ++*(*(a1 + 32) + 168);
    }
  }

  else
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", &v11, 0xCu);
    }
  }
}

void sub_1000D26E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) == *(a1 + 40))
  {
    if (*(v1 + 128) == 2)
    {
      v4 = *(v1 + 160);
      v5 = [*(a1 + 32) localSRBridgeListener];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000D2864;
      v7[3] = &unk_100253AA8;
      v8 = v4;
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v6 = v4;
      [v5 notifyClientsWithBlock:v7];
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizeVoiceCommandCandidatePackage:withMetadata:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_1000D2938(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) == *(a1 + 40))
  {
    if (*(v1 + 128) == 2)
    {
      v4 = *(v1 + 160);
      v5 = [*(a1 + 32) localSRBridgeListener];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000D2AA8;
      v7[3] = &unk_100253AD0;
      v8 = v4;
      v9 = *(a1 + 48);
      v6 = v4;
      [v5 notifyClientsWithBlock:v7];
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizeFinalResultCandidatePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_1000D2BA4(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 272);
    v7 = 136315906;
    v8 = "[CSAttSiriAsrNode _handleShouldAcceptEagerResultWithRequestId:rcId:duration:shouldAccept:featuresToLog:]_block_invoke";
    v9 = 1026;
    v10 = v3;
    v11 = 2050;
    v12 = v4;
    v13 = 2050;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Eager results accepted: %{public}d. Duration: %{public}lf last duration: %{public}lf", &v7, 0x26u);
  }

  if (([CSFTimeUtils isReceivedTimeInterval:*(a1 + 56) matchCurrentTimeInterval:*(*(a1 + 32) + 272)]& 1) != 0)
  {
    objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) _enforceEndpointHintWithRequestId:*(a1 + 48) rcId:*(a1 + 64) shouldAccept:1 featuresToLog:*(a1 + 40)];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriAsrNode _handleShouldAcceptEagerResultWithRequestId:rcId:duration:shouldAccept:featuresToLog:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Received duration not matching last duration", &v7, 0xCu);
    }
  }
}

void sub_1000D2F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D2F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleShouldAcceptEagerResultWithRequestId:*(a1 + 32) rcId:*(a1 + 48) duration:a2 shouldAccept:v5 featuresToLog:*(a1 + 56)];
}

void sub_1000D30B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) == *(a1 + 40))
  {
    [*(v1 + 176) maximumRecognitionDuration];
    if (v4 > 0.0)
    {
      v5 = v4;
      v6 = *(a1 + 48);
      if (v6 >= v4)
      {
        v7 = *(a1 + 32);
        if (v7[10] == 1)
        {
          v8 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 136315650;
            v10 = "[CSAttSiriAsrNode localSpeechRecognizer:didProcessAudioDuration:]_block_invoke";
            v11 = 2050;
            v12 = v5;
            v13 = 2050;
            v14 = v6;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Exceeding max local speech recognition duration (%{public}f) : %{public}f, force endbooking the ASR task", &v9, 0x20u);
            v7 = *(a1 + 32);
          }

          [v7 _handleStopSpeechRecognitionTaskIfNeeded:0];
        }
      }
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[CSAttSiriAsrNode localSpeechRecognizer:didProcessAudioDuration:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", &v9, 0xCu);
    }
  }
}

void sub_1000D3318(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) != *(a1 + 40))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v17 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizeTokens:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion from previous recognizer!";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 0xCu);
    return;
  }

  if (([*(v1 + 176) enableVoiceCommands] & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v17 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizeTokens:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion with metadatapackage as enable condition not satisfied!";
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 128) == 2)
  {
    v6 = *(v5 + 160);
    v7 = *(*(a1 + 32) + 152);
    v8 = [*(a1 + 32) localSRBridgeListener];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D3518;
    v11[3] = &unk_100253AF8;
    v12 = v6;
    v13 = v7;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v9 = v7;
    v10 = v6;
    [v8 notifyClientsWithBlock:v11];
  }
}

void sub_1000D360C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) != *(a1 + 40))
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v17 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePartialPackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion from previous recognizer!";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 0xCu);
    return;
  }

  if (([*(v1 + 176) enableVoiceCommands] & 1) == 0)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v17 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizePartialPackage:withMetadata:]_block_invoke";
    v3 = "%s Ignoring completion with metadatapackage as enable condition not satisfied!";
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 128) == 2)
  {
    v6 = *(v5 + 160);
    v7 = *(*(a1 + 32) + 152);
    v8 = [*(a1 + 32) localSRBridgeListener];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D380C;
    v11[3] = &unk_100253AF8;
    v12 = v6;
    v13 = v7;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v9 = v7;
    v10 = v6;
    [v8 notifyClientsWithBlock:v11];
  }
}

void sub_1000D38E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 104) == *(a1 + 40))
  {
    if (!*(v1 + 320))
    {
      *(*(a1 + 32) + 320) = mach_continuous_time();
      v1 = *(a1 + 32);
    }

    if (*(v1 + 128) == 2)
    {
      v4 = *(v1 + 160);
      v5 = *(*(a1 + 32) + 152);
      v6 = [*(a1 + 32) localSRBridgeListener];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000D3A8C;
      v9[3] = &unk_100253AA8;
      v10 = v4;
      v11 = v5;
      v12 = *(a1 + 48);
      v7 = v5;
      v8 = v4;
      [v6 notifyClientsWithBlock:v9];
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[CSAttSiriAsrNode localSpeechRecognizer:didRecognizeTokens:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer!", buf, 0xCu);
    }
  }
}

void sub_1000D3FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _releaseRecordingTransactionIfNeededWithToken:*(a1 + 32)];
}

id *sub_1000D5370(id *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] logSamplingEventStatus:1 requestId:result[5] error:a3];
  }

  return result;
}

void sub_1000D538C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v10 = [v5 description];
    *buf = 136315650;
    v17 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]_block_invoke";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s didStart local speech recognition with error :%@, model properties : %@", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  if (v6)
  {
    v12 = *(v11 + 96);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D5540;
    v14[3] = &unk_100253C48;
    v14[4] = v11;
    v15 = v6;
    dispatch_async(v12, v14);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v11 + 80));
    [WeakRetained asrStartedForRequestId:*(*(a1 + 32) + 160) isRecognitionModeClassic:0];
  }
}

void sub_1000D5540(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[CSAttSiriAsrNode _startLocalSpeechRecognizerIfNeeded]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Setting local speech recognizer state to [Idle] as not able to start local ASR", buf, 0xCu);
  }

  [*(a1 + 32) _setLocalSpeechRecognizerState:0];
  [*(a1 + 32) _clearAudioProcessWaitingBufferIfNeeded];
  [*(*(a1 + 32) + 240) endAudio];
  [*(*(a1 + 32) + 344) endAudioWithCancellation:1 completion:0];
  v3 = [*(a1 + 32) localSRBridgeListener];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D56A0;
  v5[3] = &unk_100253AD0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 notifyClientsWithBlock:v5];
}

void sub_1000D5A6C(uint64_t a1)
{
  [*(*(a1 + 32) + 104) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  *(*(a1 + 32) + 144) = 0;
  *(*(a1 + 32) + 13) = 0;
  v4 = [*(a1 + 40) siriSessionUUID];
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  *(v5 + 216) = v4;

  [*(a1 + 32) _stopPreviousRecognitionTaskIfNeededWithNewRequestId:*(*(a1 + 32) + 216) stopUresProcessing:0];
  *(*(a1 + 32) + 14) = [*(a1 + 40) disableEndpointer];
  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 48));
  [*(a1 + 32) _setRecordingStartTimeWithStartStreamOption:*(a1 + 40) audioRecordContext:*(a1 + 48) voiceTriggerInfo:*(a1 + 56)];
  if ([*(a1 + 48) isVoiceTriggered])
  {
    [*(a1 + 32) _adjustEndpointStartTimeWithVoiceTriggerEvent:*(a1 + 56)];
  }

  v7 = [*(a1 + 32) _shouldDisableLocalSpeechRecognizerWithOption:*(a1 + 40) audioRecordContext:*(a1 + 48)];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 _setLocalSpeechRecognizerState:3];
  }

  else if (v8[16] == 3)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[CSAttSiriAsrNode prepareToStartSpeechRequestWithStartStreamOption:audioRecordContext:voiceTriggerInfo:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Local speech recognizer disabled, ignore prepare", &v15, 0xCu);
    }
  }

  else if (([*(a1 + 40) disablePrewarmLocalAsrAtStartRecording] & 1) == 0)
  {
    [*(a1 + 32) _preheatWithLanguage:0 preheatSource:0];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v10 = *(a1 + 32);
  v11 = *(v10 + 184);
  v12 = *(v10 + 216);
  v13 = [*(a1 + 40) requestMHUUID];
  [WeakRetained startUresRequestWithAudioRecordContext:v11 forRequestId:v12 mhId:v13 voiceTriggerInfo:*(a1 + 56)];
}

id sub_1000D5FF8(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 0;
  *(*(a1 + 32) + 13) = 0;
  *(*(a1 + 32) + 10) = 1;
  *(*(a1 + 32) + 192) = 0;
  v2 = +[NSUUID UUID];
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;

  v5 = [[CSOSTransaction alloc] initWithDescription:@"ASRNode Recording Transaction"];
  v6 = *(a1 + 32);
  v7 = *(v6 + 208);
  *(v6 + 208) = v5;

  if (([*(*(a1 + 32) + 184) isVoiceTriggered] & 1) == 0)
  {
    *(*(a1 + 32) + 248) = 0;
    *(*(a1 + 32) + 256) = 0;
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 184);
      v10 = v8;
      v11 = [v9 description];
      v20 = 136315394;
      v21 = "[CSAttSiriAsrNode start]_block_invoke";
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Reset endpointStart and audioSampleCountToSkip since recordContext is %{public}@", &v20, 0x16u);
    }
  }

  [*(a1 + 32) _clearAudioProcessWaitingBufferIfNeeded];
  v12 = *(*(a1 + 32) + 128);
  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[CSAttSiriAsrNode start]_block_invoke";
    v22 = 1024;
    LODWORD(v23) = (v12 & 0xFFFFFFFFFFFFFFFBLL) == 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s shouldResetWaitingBuffer:%u", &v20, 0x12u);
  }

  if ((v12 | 4) != 4)
  {
    return [*(a1 + 32) _startLocalSpeechRecognizerIfNeeded];
  }

  v14 = [CSAudioProcessWaitingBuffer alloc];
  LODWORD(v15) = 1114636288;
  v16 = [v14 initWithUUID:*(*(a1 + 32) + 216) waitingBufferMaxLengthInSec:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 136);
  *(v17 + 136) = v16;

  return [*(a1 + 32) _setLocalSpeechRecognizerState:1];
}

void sub_1000D649C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D64BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v9 = 136316162;
    v10 = "[CSAttSiriAsrNode _enforceEndpointHintWithRequestId:rcId:shouldAccept:featuresToLog:]_block_invoke";
    v11 = 2050;
    v12 = v5;
    v13 = 1026;
    v14 = v6;
    v15 = 1026;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Sending RC selection delegate with parameters, RcId: %{public}lu mitigationSignal: %{public}d shouldAccept %{public}d requestId:%@", &v9, 0x2Cu);
  }

  [v3 localSpeechServiceDidReceivedEagerResultWithRequestId:*(a1 + 32) rcId:*(a1 + 56) shouldAccept:*(a1 + 64) mitigationSignal:*(*(*(a1 + 48) + 8) + 24) featuresToLog:*(a1 + 40)];
}

id sub_1000D6680(uint64_t a1)
{
  *(*(a1 + 32) + 12) = 1;
  *(*(a1 + 32) + 264) = *(a1 + 48);
  v2 = *(*(a1 + 32) + 304);
  [*(a1 + 40) totalAudioRecorded];
  [v2 setEndpointTimeInMs:?];
  [*(*(a1 + 32) + 304) setEndpointBufferHostTime:{objc_msgSend(*(a1 + 40), "endpointBufferHostTime")}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v4 = [WeakRetained getUsesAutomaticEndpointing];

  v5 = *(a1 + 32);
  if (v4)
  {
    *(v5 + 13) = 1;
    *(*(a1 + 32) + 192) = 1;
  }

  else
  {
    *(v5 + 13) = 0;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 272);
    v9 = 136315394;
    v10 = "[CSAttSiriAsrNode attSiriNode:didDetectHardEndpointAtTime:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %lf", &v9, 0x16u);
  }

  result = *(a1 + 32);
  if (*(result + 34) > 2.22044605e-16)
  {
    return [result _queryShouldAcceptEagerResultForDuration:*(result + 20) requestId:*(result + 35) rcId:?];
  }

  return result;
}

id sub_1000D685C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriAsrNode attSiriAudioSrcNodeDidStop:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleStopSpeechRecognitionTaskIfNeeded:0];
}

void sub_1000D69AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 10) == 1)
  {
    v3 = *(v1 + 128);
    if (v3 == 2)
    {
      if (*(v1 + 12) == 1 && *(v1 + 13) == 1 && *(v1 + 144) >= *(v1 + 264))
      {
        v9 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v12 = "[CSAttSiriAsrNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ASR already process enough audio until endpoint, stop processing it", buf, 0xCu);
        }
      }

      else
      {
        v8 = *(a1 + 40);
        v10 = [NSNumber numberWithUnsignedLongLong:mach_continuous_time()];
        [v1 _processAudioChunk:v8 withReadyTimestamp:?];
      }
    }

    else if (v3 == 1)
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v12 = "[CSAttSiriAsrNode attSiriAudioSrcNodeLPCMRecordBufferAvailable:audioChunk:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Request Dispatcher hasn't asked to start local ASR yet, cache the audio", buf, 0xCu);
        v1 = *(a1 + 32);
      }

      v5 = *(v1 + 136);
      v6 = *(a1 + 40);
      v7 = [NSNumber numberWithUnsignedLongLong:mach_continuous_time()];
      [v5 addAudioChunk:v6 withBufferedTimestamp:v7];
    }
  }
}

void *sub_1000D6C34(void *result)
{
  v1 = result;
  if (!*(result[4] + 312))
  {
    result = mach_continuous_time();
    *(v1[4] + 312) = result;
  }

  if ((v1[5] & 1) == 0)
  {
    v2 = v1[4];

    return [v2 _handleStopSpeechRecognitionTaskIfNeeded:0];
  }

  return result;
}

void *sub_1000D6D58(void *result)
{
  if (result[4])
  {
    if (result[5])
    {
      return [CoreEmbeddedSpeechAnalyzer sendVisualContextAndCorrectionsInfo:"sendVisualContextAndCorrectionsInfo:interactionIdentifier:" interactionIdentifier:?];
    }
  }

  return result;
}

void sub_1000D6F94(void *a1)
{
  if (+[CSUtils isASRViaSpeechAPIEnabled])
  {
    if (a1[4] && a1[5])
    {

      [CoreEmbeddedSpeechAnalyzer sendSpeechCorrectionInfo:"sendSpeechCorrectionInfo:interactionIdentifier:" interactionIdentifier:?];
    }
  }

  else
  {
    v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:a1[6] instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
    [v2 sendSpeechCorrectionInfo:a1[4] interactionIdentifier:a1[5]];
    [v2 invalidate];
  }
}

void sub_1000D72A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v2 updateVoiceCommandContextWithPrefixText:*(a1 + 40) postfixText:*(a1 + 48) selectedText:*(a1 + 56) disambiguationActive:*(a1 + 64) cursorInVisibleText:*(a1 + 72) favorCommandSuppression:*(a1 + 80) abortCommandSuppression:*(a1 + 88) undoEvent:*(a1 + 96)];
}

void sub_1000D749C(uint64_t a1)
{
  v2 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v2 resumeRecognitionWithPrefixText:*(a1 + 40) postfixText:*(a1 + 48) selectedText:*(a1 + 56)];
}

void sub_1000D7614(uint64_t a1)
{
  v1 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v1 pauseRecognition];
}

void sub_1000D79C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ![v2 isEqualToString:*(*(a1 + 40) + 160)])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 160);
      v8 = 136315394;
      v9 = "[CSAttSiriAsrNode stopSpeechRecognitionWithReason:requestId:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s requestId doesn't match current one (%@), ignore", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) _handleStopDeliverLocalSpeechRecognitionWithStopUresProcessing:1];
    v3 = *(a1 + 40);
    v4 = *(v3 + 200);
    *(v3 + 200) = 0;

    if (*(a1 + 48) == 1)
    {
      v5 = *(a1 + 40);

      [v5 _invalidateLocalSpeechRecognizer];
    }
  }
}

void sub_1000D7E3C(uint64_t a1)
{
  v2 = [[CSOSTransaction alloc] initWithDescription:@"SRD ASR Result Delivery Transaction"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  v5 = [*(a1 + 40) requestId];
  [*(a1 + 32) _stopPreviousRecognitionTaskIfNeededWithNewRequestId:v5 stopUresProcessing:1];
  objc_storeStrong((*(a1 + 32) + 160), v5);
  if (!*(*(a1 + 32) + 160))
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "[CSAttSiriAsrNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Received nill requestId, generate requestId under corespeechd", &v24, 0xCu);
    }

    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    v9 = *(a1 + 32);
    v10 = *(v9 + 160);
    *(v9 + 160) = v8;
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = v11;
    v14 = [v12 description];
    v24 = 136315394;
    v25 = "[CSAttSiriAsrNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Settings : %{public}@", &v24, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 176), *(a1 + 40));
  v15 = [*(*(a1 + 32) + 176) speechRecognitionTask];
  v16 = v15;
  if (v15 >= 0xB)
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[CSAttSiriAsrNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
      v26 = 2050;
      v27 = v16;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Unsupported speech recognizer task : %{public}lu", &v24, 0x16u);
    }

    v17 = &CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging;
  }

  else
  {
    v17 = *(&off_100250FB0 + v15);
  }

  objc_storeStrong((*(a1 + 32) + 120), *v17);
  v19 = *(a1 + 48);
  if ((v19 - 1) <= 1)
  {
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[CSAttSiriAsrNode startSpeechRecognitionResultsWithSettings:]_block_invoke";
      v26 = 2048;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s speechRecognitionMode = %lu; Force disabling local speech recognition", &v24, 0x16u);
    }

    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) requestId];
    [v21 _disableLocalSpeechRecognitionForRequestId:v22 force:1];

    v19 = *(a1 + 48);
  }

  if (v19)
  {
    if (v19 == 2)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      [WeakRetained asrStartedForRequestId:*(*(a1 + 32) + 160) isRecognitionModeClassic:0];
    }
  }

  else
  {
    [*(a1 + 32) _startDeliverLocalSpeechRecognitionResultsWithRequestId:*(*(a1 + 32) + 160)];
  }
}

id sub_1000D823C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriAsrNode preheatLocalSpeechRecognitionWithLanguage:source:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Preheat LocalSpeechRecognition now", &v4, 0xCu);
  }

  return [*(a1 + 32) _preheatWithLanguage:*(a1 + 40) preheatSource:*(a1 + 48) shouldDownloadMissingAsset:0];
}

void *sub_1000D8A6C(void *result)
{
  v1 = result;
  v2 = result[5];
  if (v2 == 1)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[CSAttSiriAsrNode stopWithReason:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Received xpc disconnection", &v5, 0xCu);
    }

    return [v1[4] _handleStopDeliverLocalSpeechRecognitionWithStopUresProcessing:1];
  }

  else if (!v2)
  {
    v3 = result[4];
    if (!*(v3 + 192))
    {
      *(v3 + 192) = 2;
    }
  }

  return result;
}

void sub_1000D8E50(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriTimer cancelTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Cancelling pending timer...", &v6, 0xCu);
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }
}

void sub_1000D8FC4(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSAttSiriTimer setTimerForSecs:completionBlock:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Timer already running. Cannot schedule another task", buf, 0xCu);
    }
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    v9 = *(*(a1 + 32) + 8);
    v10 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, *(a1 + 32));
    v11 = *(*(a1 + 32) + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D91E8;
    v13[3] = &unk_100253510;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v11, v13);
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSAttSiriTimer setTimerForSecs:completionBlock:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Starting CSAttSiriTimer...", buf, 0xCu);
    }

    dispatch_resume(*(*(a1 + 32) + 8));
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void sub_1000D91E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAttSiriTimer setTimerForSecs:completionBlock:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s CSAttSiriTimer fired: event-handler called", &v5, 0xCu);
  }

  v3 = [WeakRetained completionBlock];

  if (v3)
  {
    v4 = [WeakRetained completionBlock];
    v4[2]();
  }

  [WeakRetained setTimer:0];
}

void sub_1000D9B38(id a1)
{
  v1 = objc_alloc_init(CSVoiceTriggerAssetMetaUpdateMonitor);
  v2 = qword_10029E2F8;
  qword_10029E2F8 = v1;
}

void sub_1000D9D08(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315395;
    v15 = "[CSAccessorySiriClientBehaviorMonitor notifyDidStopStream:reason:withEventUUID:forAccessory:]_block_invoke";
    v16 = 2113;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s accessoryId %{private}@", buf, 0x16u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 40) observers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) accessorySiriClientBehaviorMonitor:*(a1 + 40) didStopStream:*(a1 + 48) reason:*(a1 + 64) withEventUUID:*(a1 + 56) forAccessory:*(a1 + 32)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_1000D9F48(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315395;
    v15 = "[CSAccessorySiriClientBehaviorMonitor notifyWillStopStream:reason:forAccessory:]_block_invoke";
    v16 = 2113;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s accessoryId %{private}@", buf, 0x16u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 40) observers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) accessorySiriClientBehaviorMonitor:*(a1 + 40) willStopStream:*(a1 + 48) reason:*(a1 + 56) forAccessory:*(a1 + 32)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_1000DA1D4(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315395;
    v15 = "[CSAccessorySiriClientBehaviorMonitor notifyDidStartStreamWithContext:successfully:option:withEventUUID:forAccessory:]_block_invoke";
    v16 = 2113;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s accessoryId %{private}@", buf, 0x16u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 40) observers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) accessorySiriClientBehaviorMonitor:*(a1 + 40) didStartStreamWithContext:*(a1 + 48) successfully:*(a1 + 72) option:*(a1 + 56) withEventUUID:*(a1 + 64) forAccessory:*(a1 + 32)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_1000DA434(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315395;
    v15 = "[CSAccessorySiriClientBehaviorMonitor notifyWillStartStreamWithContext:option:forAccessory:]_block_invoke";
    v16 = 2113;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s accessoryId %{private}@", buf, 0x16u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(a1 + 40) observers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) accessorySiriClientBehaviorMonitor:*(a1 + 40) willStartStreamWithContext:*(a1 + 48) option:*(a1 + 56) forAccessory:*(a1 + 32)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_1000DA644(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000DA740(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000DA8D8(id a1)
{
  v1 = objc_alloc_init(CSAccessorySiriClientBehaviorMonitor);
  v2 = qword_10029E308;
  qword_10029E308 = v1;
}

void sub_1000DB038(id a1)
{
  v1 = objc_alloc_init(CSSpeechEndpointAssetMetaUpdateMonitor);
  v2 = qword_10029E318;
  qword_10029E318 = v1;
}

BOOL sub_1000DB0CC(id a1)
{
  v1 = +[CSFirstUnlockMonitor sharedInstance];
  v2 = [v1 isFirstUnlocked];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSiOSHostStudioDisplaySelfTriggerEnabledPolicy _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger on remote Darwin cannot be turned on since device is not unlocked after restart", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000DB19C(id a1)
{
  v1 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
  v2 = [v1 isSystemShellStarted];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSiOSHostStudioDisplaySelfTriggerEnabledPolicy _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger on remote Darwin cannot be turned on since system shell is not started yet", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000DB26C(id a1)
{
  v1 = +[CSSiriEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSiOSHostStudioDisplaySelfTriggerEnabledPolicy _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger on remote Darwin cannot be turned on since Siri is disabled", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_1000DBDB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (v5)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]_block_invoke";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Fetched latest VT asset %@ for retraining", buf, 0x16u);
    }

    v8 = +[SSRVoiceProfileManager sharedInstance];
    v9 = [NSURL URLWithString:*(a1 + 32)];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000DBFF8;
    v17[3] = &unk_100251170;
    v14 = *(a1 + 80);
    v17[4] = *(a1 + 72);
    v18 = v14;
    v19 = *(a1 + 88);
    [v8 notifyImplicitTrainingUtteranceAvailable:v9 forVoiceProfileId:0 withRecordDeviceInfo:v10 withRecordCtxt:v11 withVoiceTriggerCtxt:v12 withOtherCtxt:v13 assetToUse:v5 withCompletion:v17];
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v15 = v7;
    v16 = [v6 localizedDescription];
    *buf = 136315394;
    v21 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]_block_invoke";
    v22 = 2112;
    v23 = v16;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Cannot retrain since we cannot look-up SSR asset with error %@", buf, 0x16u);
  }
}

void sub_1000DBFF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DC0C4;
  v8[3] = &unk_100252F38;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

id sub_1000DC0C4(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]_block_invoke_2";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Implicit utterance processing done with error %{public}@", &v7, 0x16u);
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  return [*(a1 + 40) _sendReplyMessageWithResult:*(a1 + 32) != 0 error:? event:? client:?];
}

void sub_1000DC560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DC580(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientEvent:v3];
}

BOOL sub_1000DC7B8(id a1)
{
  v1 = +[CSSiriEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if (!v2)
  {
    return 1;
  }

  return +[CSVoiceTriggerEnabledPolicyHelper siriInCallPolicy];
}

BOOL sub_1000DC820(id a1)
{
  v1 = +[CSScreenLockMonitor sharedInstance];
  v2 = [v1 isScreenLocked];

  v3 = +[CSSiriRestrictionOnLockScreenMonitor sharedInstance];
  v4 = [v3 isRestricted];

  if (!v2)
  {
    return 1;
  }

  if (v4)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSVoiceTriggerEnabledPolicyAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since Siri is restricted on lock screen", &v7, 0xCu);
    }
  }

  return v4 ^ 1;
}

BOOL sub_1000DC924(id a1)
{
  v1 = +[CSFirstUnlockMonitor sharedInstance];
  v2 = [v1 isFirstUnlocked];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since device is not unlocked after restart", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000DC9F4(id a1)
{
  v1 = +[CSSystemShellStartMonitorFactory defaultShellStartMonitor];
  v2 = [v1 isSystemShellStarted];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since system shell is not started yet", &v5, 0xCu);
    }
  }

  return v2;
}

BOOL sub_1000DCAC4(id a1)
{
  v1 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  if ([v1 isEnabled])
  {
    v2 = +[CSSiriEnabledMonitor sharedInstance];
    v3 = [v2 isEnabled];

    if (v3)
    {
      return 1;
    }
  }

  else
  {
  }

  v5 = CSLogContextFacilityCoreSpeech;
  v6 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v7 = 136315394;
    v8 = "[CSVoiceTriggerEnabledPolicyAOP _addVoiceTriggerEnabledConditions]_block_invoke";
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since Siri VT (%d) is not enabled", &v7, 0x12u);
    return 0;
  }

  return result;
}

BOOL sub_1000DCBDC(id a1)
{
  v1 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  v2 = [v1 isEnabled];

  if (+[CSUtils supportHangUp])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
    if ([v5 phoneCallState] == 3)
    {
      v4 = 1;
    }

    else
    {
      v6 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
      v4 = [v6 phoneCallState] == 4;
    }
  }

  v7 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  v8 = [v7 isOtherNonEligibleAppRecording];

  v9 = v8 ^ 1 | v4;
  if ((v9 & 1) == 0)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[CSVoiceTriggerEnabledPolicyAOP _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since there is other app recording that is not eligible and we are not in a connected or outgoing call", &v12, 0xCu);
    }
  }

  return v9 & 1;
}

uint64_t sub_1000DD020(uint64_t result)
{
  v1 = *(result + 48);
  *(*(result + 32) + 8) = v1;
  if (v1 == 1)
  {
    *(*(result + 32) + 24) = *(result + 40);
  }

  return result;
}

void sub_1000DD418(uint64_t a1)
{
  v2 = +[CSSiriClientBehaviorMonitor sharedInstance];
  [v2 registerObserver:*(a1 + 32)];

  v3 = +[CSSiriAssertionMonitor sharedInstance];
  [v3 addObserver:*(a1 + 32)];
}

BOOL sub_1000DD62C(id a1)
{
  v1 = +[CSNetworkAvailabilityMonitor sharedInstance];
  v2 = [v1 isAvailable];

  if ((v2 & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSAssetManagerEnablePolicy _addAssetManagerEnabledConditions]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s AssetManager cannot be turned on since network is not available", &v5, 0xCu);
    }
  }

  return v2;
}

void sub_1000DD920(void *a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = 136315394;
    v5 = "[CSXPCListener CSClientXPCConnectionReceivedClientError:clientError:client:]_block_invoke";
    v6 = 2050;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Client connection disconnected, removing %{public}p from client connection pool", &v4, 0x16u);
  }

  if (a1[5])
  {
    [*(a1[6] + 24) removeObject:?];
  }
}

void sub_1000DDEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DDF08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

id sub_1000DE4BC(uint64_t a1)
{
  result = [*(a1 + 32) _useEnhancedEndpointer];
  if (result)
  {
    v3 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v6 = 136315394;
      v7 = "[CSHybridEndpointAnalyzer processRCFeatures:]_block_invoke";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s EnhancedEndpointer - CSASRFeatures: %{public}@", &v6, 0x16u);
    }

    *(*(a1 + 32) + 345) = 1;
    objc_storeStrong((*(a1 + 32) + 384), *(a1 + 40));
    v5 = *(*(a1 + 32) + 176);
    result = [*(a1 + 40) processedAudioDurationInMilliseconds];
    *(*(a1 + 32) + 392) = -(result - v5 * 1000.0);
  }

  return result;
}

void sub_1000DE73C(uint64_t a1)
{
  v2 = [*(a1 + 32) getHybridEndpointerConfigForAsset:*(a1 + 40)];
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315394;
    v30 = "[CSHybridEndpointAnalyzer _readParametersFromHEPAsset:]_block_invoke";
    v31 = 2114;
    v32 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s csHepConfig: %{public}@", &v29, 0x16u);
  }

  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"ClientLagThresholdMsKey"];
    [v4 floatValue];
    *(*(a1 + 32) + 136) = v5;

    v6 = [v2 objectForKeyedSubscript:@"ClampedSFLatencyMsForClientLag"];
    [v6 floatValue];
    *(*(a1 + 32) + 144) = v7;

    v8 = [v2 objectForKeyedSubscript:@"UseDefaultServerFeaturesOnClientLag"];
    *(*(a1 + 32) + 152) = [v8 BOOLValue];

    *(*(a1 + 32) + 400) = 1000;
    v9 = [v2 objectForKeyedSubscript:@"extra-delay-frequency"];

    if (v9)
    {
      v10 = [v2 objectForKeyedSubscript:@"extra-delay-frequency"];
      *(*(a1 + 32) + 400) = [v10 unsignedIntValue];
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 408);
    *(v11 + 408) = 0;

    v13 = [v2 objectForKeyedSubscript:@"endpoint-threshold"];

    if (v13)
    {
      v14 = [v2 objectForKeyedSubscript:@"endpoint-threshold"];
      v15 = *(a1 + 32);
      v16 = *(v15 + 408);
      *(v15 + 408) = v14;
    }

    v17 = [v2 objectForKey:@"enhanced-endpointer-thresholds"];
    v18 = 448;
  }

  else
  {
    v17 = 0;
    *(*(a1 + 32) + 136) = 0xC0F5F90000000000;
    *(*(a1 + 32) + 144) = 0;
    *(*(a1 + 32) + 152) = 1;
    *(*(a1 + 32) + 400) = 1000;
    v18 = 408;
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + v18);
  *(v19 + v18) = v17;

  v21 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 136);
    v24 = *(v22 + 144);
    v25 = *(v22 + 152);
    v26 = *(v22 + 400);
    v27 = *(v22 + 408);
    v28 = *(v22 + 448);
    v29 = 136316674;
    v30 = "[CSHybridEndpointAnalyzer _readParametersFromHEPAsset:]_block_invoke";
    v31 = 2050;
    v32 = v23;
    v33 = 2050;
    v34 = v24;
    v35 = 1026;
    v36 = v25;
    v37 = 2050;
    v38 = v26;
    v39 = 2114;
    v40 = v27;
    v41 = 2114;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s _clientHepConfig: %{public}f, _clampedASRFeatureLatencyMsForClientLag: %{public}f, _useDefaultASRFeaturesOnClientLag: %{public}d, _extraDelayFrequency: %{public}lu, _taskThresholdMap: %{public}@, _enhancedEndpointerTaskThresholdMap: %{public}@", &v29, 0x44u);
  }
}

uint64_t sub_1000DEFA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DEFB8(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  v5 = *(*(a1 + 32) + 8);
  v6 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v6, v5);
}

void sub_1000DF014(uint64_t a1)
{
  *(*(a1 + 32) + 176) = 0;
  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 184) = 0;
  *(*(a1 + 32) + 32) = 0;
  *(*(a1 + 32) + 40) = 0;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 416) = 0;
  *(*(a1 + 32) + 49) = 0;
  v2 = [[OSDFeatures alloc] initWithSilenceFramesCountMs:0.0 silenceProbability:0.0 silenceDurationMs:0.0 processedAudioMs:0.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  objc_storeStrong((*(a1 + 32) + 80), *(*(a1 + 32) + 16));
  *(*(a1 + 32) + 248) = 0;
  *(*(a1 + 32) + 292) = 0;
  *(*(a1 + 32) + 293) = [*(a1 + 40) disableRCSelection];
  v5 = *(a1 + 32);
  v6 = *(v5 + 456);
  *(v5 + 456) = @"SearchOrMessaging";

  *(*(a1 + 32) + 348) = 0;
  v7 = &OBJC_IVAR___CSVTSecondPassLatencyMetrics__secondPassAudioStreamStartTime;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    kdebug_trace();
    v8 = [_EAREndpointer alloc];
    v9 = [*(*(*(a1 + 48) + 8) + 40) path];
    v88 = 0;
    v10 = [v8 initWithConfiguration:v9 modelVersion:&v88];
    v11 = v88;
    v12 = v88;
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = v10;

    kdebug_trace();
    objc_storeStrong((*(a1 + 32) + 376), v11);
    v15 = [*(*(a1 + 32) + 56) defaultServerEndpointFeatures];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [*(*(*(a1 + 48) + 8) + 40) getBoolForKey:@"is-enhanced-endpointer-enabled" category:@"enhanced-endpointer" default:0];
    if (v18)
    {
      v19 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v90 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Using enhanced endpointer", buf, 0xCu);
      }

      v20 = +[NSMutableDictionary dictionary];
      v21 = [*(*(*(a1 + 48) + 8) + 40) getNumberForKey:@"default-threshold-partial" category:@"enhanced-endpointer" default:&off_10025E9E8];
      [v21 floatValue];
      v23 = v22;

      v24 = [*(*(*(a1 + 48) + 8) + 40) getNumberForKey:@"default-threshold-rc" category:@"enhanced-endpointer" default:&off_10025E9E8];
      [v24 floatValue];
      v26 = v25;

      v27 = *(*(*(a1 + 48) + 8) + 40);
      LODWORD(v28) = v23;
      v29 = [NSNumber numberWithFloat:v28];
      v30 = [v27 getNumberForKey:@"relaxed-threshold-partial" category:@"enhanced-endpointer" default:v29];
      [v30 floatValue];
      v32 = v31;

      v33 = *(*(*(a1 + 48) + 8) + 40);
      LODWORD(v34) = v26;
      v35 = [NSNumber numberWithFloat:v34];
      v36 = [v33 getNumberForKey:@"relaxed-threshold-rc" category:@"enhanced-endpointer" default:v35];
      [v36 floatValue];
      v38 = v37;

      v39 = [*(*(*(a1 + 48) + 8) + 40) getNumberForKey:@"extra-delay-ms" category:@"enhanced-endpointer" default:&off_10025E480];
      LODWORD(v36) = [v39 intValue];

      v40 = [*(*(*(a1 + 48) + 8) + 40) getNumberForKey:@"continuity-window-duration" category:@"enhanced-endpointer" default:&off_10025E480];
      LODWORD(v35) = [v40 intValue];

      v41 = [*(*(*(a1 + 48) + 8) + 40) getNumberForKey:@"speech-detected-threshold" category:@"enhanced-endpointer" default:&off_10025E9E8];
      [v41 floatValue];
      v43 = v42;

      v44 = [*(*(*(a1 + 48) + 8) + 40) getValueForKey:@"model-files" category:@"enhanced-endpointer"];
      v74 = _NSConcreteStackBlock;
      v75 = 3221225472;
      v76 = sub_1000DFAAC;
      v77 = &unk_1002514A0;
      v80 = *(a1 + 48);
      v81 = v23;
      v82 = v26;
      v83 = v32;
      v84 = v38;
      v85 = v36;
      v86 = v35;
      v87 = v43;
      v45 = v20;
      v46 = *(a1 + 32);
      v78 = v45;
      v79 = v46;
      [v44 enumerateKeysAndObjectsUsingBlock:&v74];
      if (!*(*(a1 + 32) + 432))
      {
        v47 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v90 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
          v91 = 2114;
          v92 = @"SearchOrMessaging";
          _os_log_fault_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, "%s Unable to find endpointer model for default task %{public}@", buf, 0x16u);
        }
      }

      v48 = [v45 copy];
      v49 = *(a1 + 32);
      v50 = *(v49 + 440);
      *(v49 + 440) = v48;

      v7 = &OBJC_IVAR___CSVTSecondPassLatencyMetrics__secondPassAudioStreamStartTime;
    }
  }

  else
  {
    v51 = *(a1 + 32);
    v52 = *(v51 + 56);
    *(v51 + 56) = 0;

    v53 = *(a1 + 32);
    v54 = *(v53 + 376);
    *(v53 + 376) = 0;

    v55 = *(a1 + 32);
    v56 = *(v55 + 432);
    *(v55 + 432) = 0;

    v57 = *(a1 + 32);
    v58 = *(v57 + 440);
    *(v57 + 440) = 0;

    v18 = 0;
  }

  if ((+[CSUtils supportHybridEndpointer]& 1) != 0)
  {
    v59 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v60 = [*(v59 + 56) requestSupportedWithSamplingRate:*(a1 + 64)];
      v59 = *(a1 + 32);
      if ((v18 & v60) == 1)
      {
        LOBYTE(v60) = *(v59 + 432) != 0;
      }
    }

    else
    {
      LOBYTE(v60) = 0;
    }
  }

  else
  {
    LOBYTE(v60) = 0;
    v59 = *(a1 + 32);
  }

  *(v59 + 24) = v60;
  v61 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(a1 + 32);
    v63 = *(v62 + 56);
    v64 = v7;
    v65 = *(v62 + 24);
    v66 = *(a1 + 64);
    v67 = v61;
    v68 = +[CSAssetManager sharedManager];
    v69 = [v68 currentLanguageCode];
    v70 = *(*(a1 + 32) + v64[545]);
    *buf = 136316418;
    v90 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
    v91 = 2114;
    v92 = v63;
    v93 = 1026;
    v94 = v65;
    v95 = 2050;
    v96 = v66;
    v97 = 2114;
    v98 = v69;
    v99 = 2114;
    v100 = v70;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Created HybridClassifier(%{public}@); canProcessCurrentRequest after reset: %{public}d,for sampleRate: %{public}lu, lang=%{public}@, version=%{public}@", buf, 0x3Au);
  }

  if (*(*(a1 + 32) + 24) == 1)
  {
    v71 = CSLogCategoryEP;
    v72 = os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (!v72)
      {
        return;
      }

      *buf = 136315138;
      v90 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
      v73 = "%s Legend - EEP Features: [trailingSilenceDuration (ASR), clientSilenceFramesCount (SPG), endOfSentenceLikelihood (ASR), wordCount (ASR), serverFeaturesLatency, clientSilenceProbability (SPG), rcTrailingSilenceDuration (ASR), rcEndOfSentenceLikelihood (ASR), rcWordCount (ASR), rcServerFeaturesLatency (ASR), silencePosterior (ASR), acousticEndpointerScore (ASR), silencePosteriorNF (ASR)] @ effectiveClientProcessedAudioMs, Scores: [Partial, RC], Results: [Overall Decision, Default Decision, Relaxed Decision, Endpoint Posterior]";
    }

    else
    {
      if (!v72)
      {
        return;
      }

      *buf = 136315138;
      v90 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
      v73 = "%s HEP.logs.hdr: [ServerASR_trailingSilenceDuration,ClientSPG_SilenceFramesCountMs,ServerASR_endOfSentenceLikelihood,ServerASR_wordCount,ServerFeaturesLatency,ClientSPG_SilenceProbabilityHMMFiltered] & [ServerASR_pauseCounts,ServerASR_silencePosterior,ClientSPG_silenceProbailitySPGRaw] @ effectiveClientProcessedAudioMs : [HEPPosteriorOut,HEPDecision]";
    }

    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, v73, buf, 0xCu);
  }
}

void sub_1000DF840(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [CSASRFeatures alloc];
    v3 = [*(*(*(a1 + 40) + 8) + 40) wordCount];
    v4 = [*(*(*(a1 + 40) + 8) + 40) trailingSilenceDuration];
    [*(*(*(a1 + 40) + 8) + 40) endOfSentenceLikelihood];
    v6 = v5;
    [*(*(*(a1 + 40) + 8) + 40) silencePosterior];
    v8 = v7;
    [*(*(*(a1 + 40) + 8) + 40) acousticEndpointerScore];
    v10 = [(CSASRFeatures *)v2 initWithWordCount:v3 trailingSilenceDuration:v4 eosLikelihood:&__NSArray0__struct pauseCounts:@"SearchOrMessaging" silencePosterior:0 taskName:v6 processedAudioDurationInMilliseconds:v8 acousticEndpointerScore:v9];
  }

  else
  {
    v10 = +[CSASRFeatures initialASRFeatures];
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 72);
  *(v11 + 72) = v10;

  v13 = +[NSDate date];
  v14 = *(a1 + 32);
  v15 = *(v14 + 120);
  *(v14 + 120) = v13;

  v16 = +[NSMutableArray array];
  v17 = *(a1 + 32);
  v18 = *(v17 + 88);
  *(v17 + 88) = v16;

  *(*(a1 + 32) + 112) = 0xFFF0000000000000;
  *(*(a1 + 32) + 96) = 0xBF847AE147AE147BLL;
  *(*(a1 + 32) + 392) = 0xBF847AE147AE147BLL;
  *(*(a1 + 32) + 104) = 0;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 345) = 0;
  *(*(a1 + 32) + 289) = 1;
  v19 = +[CSASRFeatures initialResultCandidateFeatures];
  v20 = *(a1 + 32);
  v21 = *(v20 + 384);
  *(v20 + 384) = v19;
}

void sub_1000DFA14(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 200) = 0;
  *(*(a1 + 32) + 264) = 0;
  *(*(a1 + 32) + 208) = v2;
  *(*(a1 + 32) + 224) = 0;
  *(*(a1 + 32) + 216) = 0;
  *(*(a1 + 32) + 232) = 0;
  *(*(a1 + 32) + 240) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = 0;

  *(*(a1 + 32) + 280) = 0;
  *(*(a1 + 32) + 288) = 0;
  *(*(a1 + 32) + 291) = 0;
  *(*(a1 + 32) + 296) = 0;
  *(*(a1 + 32) + 344) = 0;
}

void sub_1000DFAAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(*(a1 + 48) + 8) + 40) path];
  v8 = [v7 stringByDeletingLastPathComponent];
  v9 = [v8 stringByAppendingPathComponent:v6];

  v10 = [CSEnhancedEndpointer alloc];
  LODWORD(v11) = *(a1 + 56);
  LODWORD(v12) = *(a1 + 60);
  LODWORD(v13) = *(a1 + 64);
  LODWORD(v14) = *(a1 + 68);
  LODWORD(v15) = *(a1 + 80);
  v16 = [v10 initWithModelFile:v9 defaultThresholdPartial:*(a1 + 72) defaultThresholdRC:*(a1 + 76) relaxedThresholdPartial:v11 relaxedThresholdRC:v12 extraDelayMs:v13 continuityWindowDuration:v14 speechDetectedThreshold:v15];
  if (v16)
  {
    [*(a1 + 32) setObject:v16 forKey:v5];
    v17 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v16 modelType];
      v29 = 136315906;
      v30 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
      v31 = 2114;
      v32 = v5;
      v33 = 2114;
      v34 = v19;
      v35 = 2114;
      v36 = *&v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Loaded enhanced endpointer model for task %{public}@ with model type %{public}@. Model file name: %{public}@", &v29, 0x2Au);
    }

    if ([v5 isEqualToString:@"SearchOrMessaging"])
    {
      objc_storeStrong((*(a1 + 40) + 432), v16);
      v20 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 56);
        v22 = *(a1 + 60);
        v23 = *(a1 + 64);
        v24 = *(a1 + 68);
        v25 = *(a1 + 72);
        v26 = *(a1 + 76);
        v27 = *(a1 + 80);
        v29 = 136317442;
        v30 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
        v31 = 2114;
        v32 = v6;
        v33 = 2114;
        v34 = v5;
        v35 = 2050;
        v36 = v21;
        v37 = 2050;
        v38 = v22;
        v39 = 2050;
        v40 = v23;
        v41 = 2050;
        v42 = v24;
        v43 = 1026;
        v44 = v25;
        v45 = 1026;
        v46 = v26;
        v47 = 2050;
        v48 = v27;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Setting default enhanced endpointer model to %{public}@ for task %{public}@, with defaultThresholdPartial: %{public}f, defaultThresholdRC: %{public}f, relaxedThresholdPartial: %{public}f, relaxedThresholdRC: %{public}f, extraDelayMs: %{public}d, continuityWindowDuration: %{public}d, speechDetectedThreshold: %{public}f", &v29, 0x5Eu);
      }
    }
  }

  else
  {
    v28 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "[CSHybridEndpointAnalyzer resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
      v31 = 2114;
      v32 = v6;
      v33 = 2114;
      v34 = v5;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Enhanced endpointer for model %{public}@ and task %{public}@ was nil after initialization", &v29, 0x20u);
    }
  }
}

void sub_1000DFE48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 432);
  *(v2 + 432) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 440);
  *(v4 + 440) = 0;
}

id sub_1000DFF3C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 368), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateEndpointerDelayedTriggerByMhId:v3];
}

uint64_t sub_1000E06EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000E0DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose((v64 - 208), 8);
  _Block_object_dispose((v64 - 176), 8);
  _Unwind_Resume(a1);
}

void *sub_1000E0E50(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 40);
  *(*(result[6] + 8) + 24) = *(result[4] + 32);
  *(*(result[7] + 8) + 24) = *(result[4] + 48);
  *(*(result[8] + 8) + 24) = *(result[4] + 416);
  return result;
}

double sub_1000E0EA8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 200);
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 264);
  result = *(*(a1 + 32) + 232) + *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

id sub_1000E0EF0(uint64_t a1)
{
  result = [*(a1 + 32) shouldProvideTwoShotFeedbackWithRecordContext];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1000E0F2C(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = 136315394;
    v5 = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke_4";
    v6 = 2050;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Detected speech start at %{public}f of effectiveClientProcessedAudioMs", &v4, 0x16u);
  }

  *(*(a1 + 32) + 291) = 1;
  *(*(a1 + 32) + 296) = 0;
}

void sub_1000E1004(uint64_t a1)
{
  *(*(a1 + 32) + 296) = *(a1 + 40);
  v1 = *(a1 + 32);
  if ((*(v1 + 248) & 1) == 0)
  {
    v2 = *(v1 + 296);
    v3 = *(v1 + 240);
    if (v2 > v3)
    {
      v5 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
        v9 = 2050;
        v10 = v2;
        v11 = 2048;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Detected sufficient silence to fire two shot with %{public}fms silence, %f threshold", &v7, 0x20u);
        v1 = *(a1 + 32);
      }

      *(v1 + 248) = 1;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
      [WeakRetained endpointer:*(*(a1 + 32) + 296) / 1000.0 detectedTwoShotAtTime:?];
    }
  }
}

void sub_1000E1144(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 290) == 1)
  {
    v2 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
      *&buf[12] = 2080;
      *&buf[14] = "Second check, don't process OSD features";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Recording stopped: %s", buf, 0x16u);
    }

    return;
  }

  v4 = qword_10029E330;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E330, 1) <= 0x888888888888888uLL)
  {
    kdebug_trace();
    v4 = qword_10029E330;
    v1 = *(a1 + 32);
  }

  qword_10029E330 = v4 + 1;
  v5 = *(v1 + 192);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2A34;
  block[3] = &unk_100253BD0;
  block[5] = *(a1 + 48);
  block[4] = v1;
  dispatch_async_and_wait(v5, block);
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
    v254 = 0;
    v255 = &v254;
    v256 = 0x3032000000;
    v257 = sub_1000DEFA0;
    v258 = sub_1000DEFB0;
    v259 = 0;
    v248 = 0;
    v249 = &v248;
    v250 = 0x3032000000;
    v251 = sub_1000DEFA0;
    v252 = sub_1000DEFB0;
    v253 = 0;
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    v243[0] = _NSConcreteStackBlock;
    v243[1] = 3221225472;
    v243[2] = sub_1000E2A48;
    v243[3] = &unk_1002513B0;
    v10 = *(a1 + 56);
    v243[4] = v8;
    v245 = v10;
    v244 = *(a1 + 40);
    v246 = &v254;
    v247 = &v248;
    dispatch_async_and_wait(v9, v243);
    if (!v255[5] && !v249[5])
    {
      v84 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%s ClientLag: Not Invoking HybridClassifier as ASR's ProcessedAudioMs > effectiveClientProcessedAudioMs", buf, 0xCu);
      }

      kdebug_trace();
      goto LABEL_76;
    }

    v239 = 0;
    v240 = &v239;
    v241 = 0x2020000000;
    v242 = 0;
    v235 = 0;
    v236 = &v235;
    v237 = 0x2020000000;
    v238 = 0;
    v231 = 0;
    v232 = &v231;
    v233 = 0x2020000000;
    v234 = 0;
    v227 = 0;
    v228 = &v227;
    v229 = 0x2020000000;
    v230 = 0;
    v223 = 0;
    v224 = &v223;
    v225 = 0x2020000000;
    v226 = 0;
    v219 = 0;
    v220 = &v219;
    v221 = 0x2020000000;
    v222 = 0;
    v215 = 0;
    v216 = &v215;
    v217 = 0x2020000000;
    v218 = 0;
    v211 = 0;
    v212 = &v211;
    v213 = 0x2020000000;
    v214 = 0;
    if (![*(a1 + 32) _useEnhancedEndpointer] || (v11 = v249[5]) == 0)
    {
      v17 = v255[5];
      if (!v17)
      {
        v39 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
          _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s hybridEPFeatures and enhancedEPFeatures should not both be nil", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v18 = *(*(a1 + 32) + 56);
      v19 = *(*(*(a1 + 56) + 8) + 24);
      v209 = 0;
      v20 = [v18 didEndpointWithFeatures:v17 audioTimestamp:&v209 featuresToLog:v240 + 6 endpointPosterior:v236 + 3 extraDelayMs:v19];
      v21 = v209;
      *(v212 + 6) = *(*(a1 + 32) + 348);
      v22 = CSLogCategoryEP;
      v23 = v22;
      if (!v20)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v69 = [v255[5] trailingSilenceDuration];
          [v255[5] clientSilenceFramesCountMs];
          v71 = v70;
          [v255[5] endOfSentenceLikelihood];
          v73 = v72;
          v74 = [v255[5] wordCount];
          [v255[5] serverFeaturesLatency];
          v76 = v75;
          [v255[5] clientSilenceProbability];
          v78 = v77;
          v79 = [v255[5] pauseCounts];
          v80 = [v79 componentsJoinedByString:{@", "}];
          [v255[5] silencePosterior];
          v81 = *(*(*(a1 + 56) + 8) + 24);
          v82 = v240[6];
          *buf = 136317954;
          *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
          *&buf[12] = 2050;
          *&buf[14] = v69;
          *&buf[22] = 2050;
          v270 = v71;
          *v271 = 2050;
          *&v271[2] = v73;
          *&v271[10] = 2050;
          *&v271[12] = v74;
          v272 = 2050;
          v273 = v76;
          v274 = 2050;
          v275 = v78;
          v276 = 2114;
          v277 = v80;
          v278 = 2050;
          v279 = v83;
          v280 = 2050;
          v281 = v81;
          v282 = 2050;
          v283 = v82;
          v284 = 1026;
          LODWORD(v285) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s HEP.feats: [%{public}ld,%{public}f,%{public}f,%{public}ld,%{public}f,%{public}f] & [(%{public}@),%{public}f] @ %{public}lu [%{public}f, %{public}d]", buf, 0x76u);
        }

        goto LABEL_72;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v255[5] trailingSilenceDuration];
        [v255[5] clientSilenceFramesCountMs];
        v26 = v25;
        [v255[5] endOfSentenceLikelihood];
        v28 = v27;
        v29 = [v255[5] wordCount];
        [v255[5] serverFeaturesLatency];
        v31 = v30;
        [v255[5] clientSilenceProbability];
        v33 = v32;
        v34 = [v255[5] pauseCounts];
        v35 = [v34 componentsJoinedByString:{@", "}];
        [v255[5] silencePosterior];
        v36 = *(*(*(a1 + 56) + 8) + 24);
        v37 = v240[6];
        *buf = 136317954;
        *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
        *&buf[12] = 2050;
        *&buf[14] = v24;
        *&buf[22] = 2050;
        v270 = v26;
        *v271 = 2050;
        *&v271[2] = v28;
        *&v271[10] = 2050;
        *&v271[12] = v29;
        v272 = 2050;
        v273 = v31;
        v274 = 2050;
        v275 = v33;
        v276 = 2114;
        v277 = v35;
        v278 = 2050;
        v279 = v38;
        v280 = 2050;
        v281 = v36;
        v282 = 2050;
        v283 = v37;
        v284 = 1026;
        LODWORD(v285) = 1;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "KeyLog - %s HEP.feats: [%{public}ld,%{public}f,%{public}f,%{public}ld,%{public}f,%{public}f] & [(%{public}@),%{public}f] @ %{public}lu [%{public}f, %{public}d]", buf, 0x76u);
      }

      goto LABEL_42;
    }

    v203 = 0;
    v204 = &v203;
    v205 = 0x2020000000;
    LODWORD(v206) = 0;
    v193 = 0;
    v194 = &v193;
    v195 = 0x2020000000;
    LODWORD(v196) = 0;
    v12 = *(*(a1 + 32) + 432);
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v210[0] = _NSConcreteStackBlock;
    v210[1] = 3221225472;
    v210[2] = sub_1000E2ACC;
    v210[3] = &unk_1002513D8;
    v210[4] = &v231;
    v210[5] = &v227;
    v210[6] = &v235;
    v210[7] = &v239;
    v210[8] = &v223;
    v210[9] = &v219;
    v210[10] = &v203;
    v210[11] = &v193;
    v210[12] = &v215;
    v210[13] = &v211;
    [v12 didEndpointWithFeatures:v11 audioTimestampMs:v210 completion:v13];
    if ((v224[3] & 1) != 0 || (v14 = v228 + 3, (v228[3] & 1) == 0))
    {
      *(*(a1 + 32) + 344) = 0;
      v14 = v228 + 3;
    }

    else
    {
      v15 = *(a1 + 32);
      if ((*(v15 + 344) & 1) == 0)
      {
        v16 = 1;
        *(v15 + 344) = 1;
        if (v228[3])
        {
LABEL_29:
          v21 = [v249[5] toFeatureArray];
          v40 = CSLogCategoryEP;
          v41 = v40;
          if (v16)
          {
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_41;
            }

            v42 = [v249[5] trailingSilenceDuration];
            [v249[5] clientSilenceFramesCount];
            v173 = v43;
            [v249[5] endOfSentenceLikelihood];
            v170 = v44;
            v45 = [v249[5] wordCount];
            [v249[5] serverFeaturesLatency];
            v167 = v46;
            [v249[5] clientSilenceProbability];
            v48 = v47;
            v49 = [v249[5] rcTrailingSilenceDuration];
            [v249[5] rcEndOfSentenceLikelihood];
            v51 = v50;
            v52 = [v249[5] rcWordCount];
            [v249[5] rcServerFeaturesLatency];
            v54 = v53;
            [v249[5] silencePosterior];
            v56 = v55;
            [v249[5] acousticEndpointerScore];
            v58 = v57;
            [v249[5] silencePosteriorNF];
            v59 = *(*(*(a1 + 56) + 8) + 24);
            v60 = v204[6];
            v61 = v194[6];
            v62 = *(v228 + 24);
            v63 = *(v232 + 24);
            v64 = v240[6];
            *buf = 136320258;
            *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke_2";
            *&buf[12] = 2050;
            *&buf[14] = v42;
            *&buf[22] = 2050;
            v270 = v173;
            *v271 = 2050;
            *&v271[2] = v170;
            *&v271[10] = 2050;
            *&v271[12] = v45;
            v272 = 2050;
            v273 = v167;
            v274 = 2050;
            v275 = v48;
            v276 = 2050;
            v277 = v49;
            v278 = 2050;
            v279 = v51;
            v280 = 2050;
            v281 = v52;
            v282 = 2050;
            v283 = v54;
            v284 = 2050;
            v285 = v56;
            v286 = 2050;
            v287 = v58;
            v288 = 2050;
            v289 = v65;
            v290 = 2050;
            v291 = v59;
            v292 = 2050;
            v293 = v60;
            v294 = 2050;
            v295 = v61;
            v296 = 1026;
            v297 = 1;
            v298 = 1026;
            v299 = v62;
            v300 = 1026;
            v301 = v63;
            v302 = 2050;
            v303 = v64;
            v66 = "KeyLog - %s EEP Features: [%{public}ld, %{public}.2f, %{public}f, %{public}ld, %{public}.2f, %{public}f, %{public}ld, %{public}f, %{public}ld, %{public}.2f, %{public}f, %{public}f, %{public}f] @ %{public}.0f, Scores: [%{public}f, %{public}f], Results: [%{public}d, %{public}d, %{public}d, %{public}f]";
            v67 = v41;
            v68 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              goto LABEL_41;
            }

            v85 = [v249[5] trailingSilenceDuration];
            [v249[5] clientSilenceFramesCount];
            v174 = v86;
            [v249[5] endOfSentenceLikelihood];
            v171 = v87;
            v88 = [v249[5] wordCount];
            [v249[5] serverFeaturesLatency];
            v168 = v89;
            [v249[5] clientSilenceProbability];
            v91 = v90;
            v92 = [v249[5] rcTrailingSilenceDuration];
            [v249[5] rcEndOfSentenceLikelihood];
            v94 = v93;
            v95 = [v249[5] rcWordCount];
            [v249[5] rcServerFeaturesLatency];
            v97 = v96;
            [v249[5] silencePosterior];
            v99 = v98;
            [v249[5] acousticEndpointerScore];
            v101 = v100;
            [v249[5] silencePosteriorNF];
            v102 = *(*(*(a1 + 56) + 8) + 24);
            v103 = v204[6];
            v104 = v194[6];
            v105 = *(v228 + 24);
            v106 = *(v232 + 24);
            v107 = v240[6];
            *buf = 136320258;
            *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
            *&buf[12] = 2050;
            *&buf[14] = v85;
            *&buf[22] = 2050;
            v270 = v174;
            *v271 = 2050;
            *&v271[2] = v171;
            *&v271[10] = 2050;
            *&v271[12] = v88;
            v272 = 2050;
            v273 = v168;
            v274 = 2050;
            v275 = v91;
            v276 = 2050;
            v277 = v92;
            v278 = 2050;
            v279 = v94;
            v280 = 2050;
            v281 = v95;
            v282 = 2050;
            v283 = v97;
            v284 = 2050;
            v285 = v99;
            v286 = 2050;
            v287 = v101;
            v288 = 2050;
            v289 = v108;
            v290 = 2050;
            v291 = v102;
            v292 = 2050;
            v293 = v103;
            v294 = 2050;
            v295 = v104;
            v296 = 1026;
            v297 = 0;
            v298 = 1026;
            v299 = v105;
            v300 = 1026;
            v301 = v106;
            v302 = 2050;
            v303 = v107;
            v66 = "%s EEP Features: [%{public}ld, %{public}.2f, %{public}f, %{public}ld, %{public}.2f, %{public}f, %{public}ld, %{public}f, %{public}ld, %{public}.2f, %{public}f, %{public}f, %{public}f] @ %{public}.0f, Scores: [%{public}f, %{public}f], Results: [%{public}d, %{public}d, %{public}d, %{public}f]";
            v67 = v41;
            v68 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&_mh_execute_header, v67, v68, v66, buf, 0xC8u);
LABEL_41:

          _Block_object_dispose(&v193, 8);
          _Block_object_dispose(&v203, 8);
          if ((v16 & 1) == 0)
          {
LABEL_72:
            *(*(a1 + 32) + 184) = v240[6];
            *(*(a1 + 32) + 176) = *(*(*(a1 + 56) + 8) + 24) / 1000.0;
            v163 = qword_10029E338;
            if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E338, 1) <= 0x888888888888888uLL)
            {
              kdebug_trace();
              v163 = qword_10029E338;
            }

            qword_10029E338 = v163 + 1;

LABEL_75:
            _Block_object_dispose(&v211, 8);
            _Block_object_dispose(&v215, 8);
            _Block_object_dispose(&v219, 8);
            _Block_object_dispose(&v223, 8);
            _Block_object_dispose(&v227, 8);
            _Block_object_dispose(&v231, 8);
            _Block_object_dispose(&v235, 8);
            _Block_object_dispose(&v239, 8);
LABEL_76:

            _Block_object_dispose(&v248, 8);
            _Block_object_dispose(&v254, 8);

            return;
          }

LABEL_42:
          if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
          {
            *(*(a1 + 32) + 104) = 1;
            v203 = 0;
            v204 = &v203;
            v205 = 0x3032000000;
            v206 = sub_1000DEFA0;
            v207 = sub_1000DEFB0;
            v208 = 0;
            v199 = 0;
            v200 = &v199;
            v201 = 0x2020000000;
            v202 = 0;
            v193 = 0;
            v194 = &v193;
            v195 = 0x3032000000;
            v196 = sub_1000DEFA0;
            v197 = sub_1000DEFB0;
            v198 = 0;
            v189 = 0;
            v190 = &v189;
            v191 = 0x2020000000;
            v192 = 0;
            v185 = 0;
            v186 = &v185;
            v187 = 0x2020000000;
            v188 = 0;
            v109 = *(a1 + 32);
            v110 = *(v109 + 192);
            v183[0] = _NSConcreteStackBlock;
            v183[1] = 3221225472;
            v183[2] = sub_1000E2BC8;
            v183[3] = &unk_100251400;
            v183[4] = v109;
            v183[5] = &v231;
            v184 = *(a1 + 116);
            v183[6] = &v203;
            v183[7] = &v199;
            v183[8] = &v193;
            v183[9] = &v189;
            v183[10] = &v185;
            dispatch_async_and_wait(v110, v183);
            v111 = *(*(*(a1 + 56) + 8) + 24);
            v112 = v186[3];
            +[CSConfig inputRecordingSampleRate];
            v114 = v113;
            v115 = *(*(*(a1 + 72) + 8) + 24);
            v116 = *(*(*(a1 + 80) + 8) + 24);
            +[CSConfig inputRecordingSampleRate];
            v117 = [CSFTimeUtils hostTimeFromSampleCount:((v111 + v112) / 1000.0 * v114) anchorHostTime:v115 anchorSampleCount:v116 sampleRate:?];
            v118 = CSLogCategoryEP;
            if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
            {
              v119 = v240[6];
              v120 = *(*(*(a1 + 72) + 8) + 24);
              v121 = *(*(*(a1 + 80) + 8) + 24);
              v122 = *(*(*(a1 + 88) + 8) + 24);
              *buf = 136316674;
              *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke_2";
              *&buf[12] = 2050;
              *&buf[14] = v119;
              *&buf[22] = 2050;
              v270 = v117;
              *v271 = 2050;
              *&v271[2] = v120;
              *&v271[10] = 2050;
              *&v271[12] = ((v111 + v112) / 1000.0 * v114);
              v272 = 2050;
              v273 = v121;
              v274 = 1026;
              LODWORD(v275) = v122;
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "%s HEP.posterior=%{public}f, result=1, endpointedBuffer.hostTime=%{public}llu, anchorhostTime=%{public}llu, endpointSampleCount=%{public}llu, numSamplesProcessedBeforeAnchorTime=%{public}lu, isAnchorTimeBuffered=%{public}d", buf, 0x44u);
            }

            if (v240[6] == 0.0 && [v21 count] == 2 || *(v220 + 24) == 1)
            {
              v123 = CSLogCategoryEP;
              if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
                *&buf[12] = 2114;
                *&buf[14] = v21;
                _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "%s Request timeout with features %{public}@", buf, 0x16u);
              }

              *(*(a1 + 32) + 49) = 1;
            }

            *(*(a1 + 32) + 168) = *(*(*(a1 + 56) + 8) + 24);
            objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
            v124 = +[NSDate date];
            [v124 timeIntervalSinceDate:*(v204 + 5)];
            v126 = v125;
            v127 = *(*(*(a1 + 56) + 8) + 24);
            v128 = *(a1 + 104);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v270 = sub_1000DEFA0;
            *v271 = sub_1000DEFB0;
            *&v271[8] = 0;
            v177 = 0;
            v178 = &v177;
            v179 = 0x3032000000;
            v180 = sub_1000DEFA0;
            v181 = sub_1000DEFB0;
            v182 = 0;
            v129 = *(a1 + 32);
            v130 = *(v129 + 64);
            v176[0] = _NSConcreteStackBlock;
            v176[1] = 3221225472;
            v176[2] = sub_1000E2C94;
            v176[3] = &unk_100251428;
            v176[4] = v129;
            v176[5] = buf;
            v176[6] = &v177;
            dispatch_async_and_wait(v130, v176);
            v267[0] = @"ExtraDelayMs";
            v131 = [NSNumber numberWithInt:*(v236 + 6)];
            v268[0] = v131;
            v267[1] = @"EndpointerDecisionLagMs";
            v132 = [NSNumber numberWithDouble:v126 / (v127 / 1000.0) * (v128 / 1000.0) * 1000.0];
            v268[1] = v132;
            v175 = [NSDictionary dictionaryWithObjects:v268 forKeys:v267 count:2];

            v133 = CSLogCategoryEP;
            if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
            {
              v134 = *(*&buf[8] + 40);
              *v261 = 136315650;
              v262 = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke_2";
              v263 = 2114;
              v264 = v134;
              v265 = 2114;
              v266 = v175;
              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%s ASRFeaturesLatencyDistribution: %{public}@ additionalMetrics: %{public}@", v261, 0x20u);
            }

            [*(a1 + 40) silenceFramesCountMs];
            v136 = v135;
            if (!v216[3] && [*(v194 + 5) assetProvider] == 1)
            {
              v216[3] = 1;
            }

            v169 = v124;
            v172 = v117;
            v137 = v21;
            v138 = [CSEndpointerMetrics alloc];
            v139 = *(*(*(a1 + 56) + 8) + 24);
            v166 = v216[3];
            v140 = *(*&buf[8] + 40);
            v141 = v178[5];
            v142 = *(a1 + 40);
            v143 = *(*(a1 + 32) + 49);
            v144 = [*(v194 + 5) configVersion];
            v145 = v190[3];
            v146 = v186[3];
            v147 = v200[3];
            v148 = *(*(a1 + 32) + 48);
            v149 = mach_absolute_time();
            LODWORD(v150) = *(v212 + 6);
            *&v151 = v240[6];
            LOBYTE(v165) = v148;
            LOBYTE(v164) = v143;
            v152 = [(CSEndpointerMetrics *)v138 initWithTotalAudioRecorded:v172 endpointBufferHostTime:v137 featuresAtEndpoint:v166 endpointerType:v140 asrFeatureLatencyDistribution:v175 additionalMetrics:0 trailingSilenceDurationAtEndpoint:v139 requestId:v136 / 1000.0 osdFeatures:v145 asrFeatures:v146 isRequestTimeOut:v150 assetConfigVersion:v151 blkHepAudioOrigin:v142 vtExtraAudioAtStartInMs:v141 firstAudioSampleSensorTimestamp:v164 isAnchorTimeBuffered:v144 endpointHostTime:v147 audioDeliveryHostTimeDelta:v165 endpointerThreshold:v149 endpointerScore:*(*(*(a1 + 96) + 8) + 24)];

            v21 = v137;
            if (*(a1 + 116))
            {
              v153 = CSLogCategoryEP;
              if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEBUG))
              {
                v154 = *(*(a1 + 32) + 168) / 1000.0;
                *v261 = 136315394;
                v262 = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
                v263 = 2050;
                v264 = v154;
                _os_log_debug_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEBUG, "%s MMEP:: HEP detected at %{public}f but will continue running for MMEP.", v261, 0x16u);
              }
            }

            else
            {
              v155 = *(*(*(a1 + 56) + 8) + 24) / 1000.0;
              if (+[CSUtils isMedocFeatureEnabled])
              {
                if ((v228[3] & 1) != 0 || ([*(a1 + 32) _useEnhancedEndpointer] & 1) == 0)
                {
                  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
                  [WeakRetained endpointer:*(a1 + 32) didDetectHardEndpointAtTime:v152 withMetrics:1 eventType:v155];
                }

                if ((v232[3] & 1) != 0 || ![*(a1 + 32) _useEnhancedEndpointer] || (+[CSUtils isFlexibleEndpointingEnabled](CSUtils, "isFlexibleEndpointingEnabled") & 1) == 0)
                {
                  v157 = objc_loadWeakRetained((*(a1 + 32) + 352));
                  [v157 endpointer:*(a1 + 32) didDetectHardEndpointAtTime:v152 withMetrics:2 eventType:v155];
                }
              }

              else
              {
                v158 = [*(a1 + 32) _useEnhancedEndpointer];
                v159 = objc_loadWeakRetained((*(a1 + 32) + 352));
                v160 = v159;
                v161 = *(a1 + 32);
                if (v158)
                {
                  v162 = 2;
                  [v159 endpointer:v161 didDetectHardEndpointAtTime:v152 withMetrics:2 eventType:v155];
                }

                else
                {
                  [v159 endpointer:v161 didDetectHardEndpointAtTime:v152 withMetrics:0 eventType:v155];
                  v162 = 0;
                }

                [CSEndpointDetectedSelfLogger emitEndpointDetectedEventWithEndpointerMetrics:v152 eventType:v162 trpId:0 mhId:*(*(a1 + 32) + 368)];
              }
            }

            _Block_object_dispose(&v177, 8);
            _Block_object_dispose(buf, 8);

            _Block_object_dispose(&v185, 8);
            _Block_object_dispose(&v189, 8);
            _Block_object_dispose(&v193, 8);

            _Block_object_dispose(&v199, 8);
            _Block_object_dispose(&v203, 8);
          }

          goto LABEL_72;
        }

LABEL_28:
        v16 = *(v232 + 24);
        goto LABEL_29;
      }
    }

    *v14 = 0;
    goto LABEL_28;
  }

  v6 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 112);
    *buf = 136315394;
    *&buf[4] = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke_2";
    *&buf[12] = 2050;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Already communicated end-pt: Not Invoking hybridClassifier for silposnf=%{public}f", buf, 0x16u);
  }

  kdebug_trace();
}

void sub_1000E2908(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Unwind_Resume(a1);
}

id sub_1000E2A48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E2D4C;
  v5[3] = &unk_100251388;
  v6 = *(a1 + 56);
  return [v3 _generateEndpointerFeaturesWithEffectiveClientProcessedAudioMs:v1 osdFeatures:v5 completion:v2];
}

void sub_1000E2ACC(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[4] + 8) + 24) = [v3 didRelaxedEndpointerFire];
  *(*(a1[5] + 8) + 24) = [v3 didDefaultEndpointerFire];
  *(*(a1[6] + 8) + 24) = [v3 extraDelayMs];
  [v3 endpointPosterior];
  *(*(a1[7] + 8) + 24) = v4;
  *(*(a1[8] + 8) + 24) = [v3 speechArrivalDetected];
  *(*(a1[9] + 8) + 24) = [v3 didForceEndpoint];
  [v3 partialScore];
  *(*(a1[10] + 8) + 24) = v5;
  [v3 rcScore];
  *(*(a1[11] + 8) + 24) = v6;
  *(*(a1[12] + 8) + 24) = [v3 endpointerType];
  [v3 endpointerThreshold];
  v8 = v7;

  *(*(a1[13] + 8) + 24) = v8;
}

double sub_1000E2BC8(uint64_t a1)
{
  if ([*(a1 + 32) _useEnhancedEndpointer])
  {
    v2 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v2 = 1;
  }

  v3 = v2 & 1;
  if ((*(a1 + 88) & 1) == 0)
  {
    *(*(a1 + 32) + 200) = v3;
  }

  *(*(a1 + 32) + 264) = v3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 272));
  *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 280);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 8));
  *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 32) + 232);
  result = *(*(a1 + 32) + 216);
  *(*(*(a1 + 80) + 8) + 24) = result;
  return result;
}

void sub_1000E2C94(void *a1)
{
  v2 = [CSUtils distributionDictionary:*(a1[4] + 88)];
  v3 = [v2 mutableCopy];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [NSNumber numberWithDouble:*(a1[4] + 112)];
  [*(*(a1[5] + 8) + 40) setObject:v6 forKeyedSubscript:@"Warmup"];

  v7 = *(a1[4] + 72);
  v8 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v8, v7);
}

void sub_1000E2D4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v7 localizedDescription];
      v13 = 136315394;
      v14 = "[CSHybridEndpointAnalyzer processOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke_2";
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Endpoint feature generation error: %@", &v13, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

void sub_1000E2F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 288) & 1) == 0)
  {
    *(v1 + 288) = 1;
    objc_storeStrong((*(a1 + 32) + 272), *(a1 + 40));
    v3 = *(a1 + 48);
    *(*(a1 + 32) + 280) = v3;
    v4 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[CSHybridEndpointAnalyzer processFirstAudioPacketTimestamp:firstAudioSampleSensorTimestamp:]_block_invoke";
      v7 = 2050;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s first audio buffer host time: %{public}llu", &v5, 0x16u);
    }
  }
}

uint64_t sub_1000E309C(uint64_t result)
{
  *(*(result + 32) + 40) = *(result + 40);
  v1 = *(result + 56);
  *(*(result + 32) + 32) = *(result + 48);
  *(*(result + 32) + 48) = *(result + 64);
  *(*(result + 32) + 416) = v1;
  return result;
}

void sub_1000E3628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1000E366C(void *a1)
{
  v2 = *(a1[4] + 448);
  if (v2)
  {
    v3 = [v2 objectForKey:a1[5]];
    if (v3)
    {
      v17 = v3;
      v4 = [v3 objectForKey:@"default-threshold-partial"];
      [v4 floatValue];
      *(*(a1[6] + 8) + 24) = v5;

      v6 = [v17 objectForKey:@"default-threshold-rc"];
      [v6 floatValue];
      *(*(a1[7] + 8) + 24) = v7;

      v8 = [v17 objectForKey:@"relaxed-threshold-partial"];
      [v8 floatValue];
      *(*(a1[8] + 8) + 24) = v9;

      v10 = [v17 objectForKey:@"relaxed-threshold-rc"];
      [v10 floatValue];
      *(*(a1[9] + 8) + 24) = v11;

      v12 = *(*(a1[6] + 8) + 24);
      if (v12 > 0.0)
      {
        v13 = *(a1[8] + 8);
        if (*(v13 + 24) == 0.0)
        {
          *(v13 + 24) = v12;
        }
      }

      v14 = *(*(a1[7] + 8) + 24);
      v3 = v17;
      if (v14 > 0.0)
      {
        v15 = *(a1[9] + 8);
        if (*(v15 + 24) == 0.0)
        {
          *(v15 + 24) = v14;
        }
      }
    }
  }

  else
  {
    v16 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[CSHybridEndpointAnalyzer _processEnhancedEndpointerTaskString:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s No enhancedEndpointerTaskThresholdMap was found in csHepConfig", buf, 0xCu);
    }
  }
}

void sub_1000E3974(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([(__CFString *)v2 isEqualToString:@"Default"])
  {

    v2 = @"SearchOrMessaging";
  }

  else if (!v2)
  {
    goto LABEL_17;
  }

  if ((-[__CFString isEqualToString:](v2, "isEqualToString:", *(*(a1 + 40) + 456)) & 1) == 0 && ([*(a1 + 40) _isTaskStringAccessible:*(*(a1 + 40) + 456)] & 1) == 0)
  {
    v3 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 40) + 456);
      *buf = 136315650;
      *&buf[4] = "[CSHybridEndpointAnalyzer processTaskString:]_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v2;
      *&buf[22] = 2114;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New task string: %{public}@, current task string: %{public}@", buf, 0x20u);
    }

    if ([*(a1 + 40) _useEnhancedEndpointer])
    {
      [*(a1 + 40) _processEnhancedEndpointerTaskString:v2];
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LODWORD(v21) = 0;
      v5 = *(a1 + 40);
      v6 = *(v5 + 64);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E3C5C;
      block[3] = &unk_100252228;
      block[4] = v5;
      v7 = v2;
      v12 = v7;
      v13 = buf;
      dispatch_async_and_wait(v6, block);
      if (*(*&buf[8] + 24) > 0.0)
      {
        [*(a1 + 40) _updateEndpointerThreshold:?];
        v8 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*&buf[8] + 24);
          *v14 = 136315650;
          v15 = "[CSHybridEndpointAnalyzer processTaskString:]_block_invoke_2";
          v16 = 2050;
          v17 = v9;
          v18 = 2114;
          v19 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s update endpointer threshold to %{public}f for task %{public}@", v14, 0x20u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    if ([*(a1 + 40) _isTaskStringAccessible:v2])
    {
      v10 = [*(a1 + 40) mhId];
      [CSEndpointLoggingHelper reportMHEndpointerAccessibleContextEventWithThresholdType:v2 MhId:v10];
    }

    objc_storeStrong((*(a1 + 40) + 456), v2);
  }

LABEL_17:
}

void sub_1000E3C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E3C5C(void *a1)
{
  v2 = *(a1[4] + 408);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:a1[5]];

    if (v3)
    {
      v5 = [*(a1[4] + 408) objectForKeyedSubscript:a1[5]];
      [v5 floatValue];
      *(*(a1[6] + 8) + 24) = v4;
    }
  }
}

void sub_1000E3DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) taskName];
  [v1 processTaskString:v2];
}

void sub_1000E3ED0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 424);
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = v2;
    v5 = AFSpeechEndpointerOperationModeGetName();
    v6 = 136315394;
    v7 = "[CSHybridEndpointAnalyzer fetchCurrentEndpointerOperationMode]_block_invoke";
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s current EndpointerOperationMode : %{public}@", &v6, 0x16u);
  }
}

void sub_1000E40DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = AFSpeechEndpointerOperationModeGetName();
  v4 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSHybridEndpointAnalyzer setEndpointerOperationMode:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s setEndpointerOperationMode : %{public}@", &v7, 0x16u);
  }

  v5 = *(a1 + 40);
  *(*(a1 + 32) + 424) = v5;
  if (v5 == 1)
  {
    v6 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSHybridEndpointAnalyzer setEndpointerOperationMode:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s endpointerOperationMode has been set to %@, stopping endpointer", &v7, 0x16u);
    }

    [*(a1 + 32) stopEndpointer];
  }
}

void sub_1000E4354(uint64_t a1)
{
  [*(*(a1 + 32) + 56) updateEndpointerDelayedTriggerSwitch:*(a1 + 40)];
  if ([*(a1 + 32) _useEnhancedEndpointer])
  {
    [*(*(a1 + 32) + 432) updateDelayedTriggerSwitch:*(a1 + 40)];
  }

  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[CSHybridEndpointAnalyzer _updateEndpointerDelayedTrigger:]_block_invoke";
    v6 = 1026;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Updated endpointer delayed trigger: %{public}d", &v4, 0x12u);
  }
}

void sub_1000E4528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1000E46F0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  LODWORD(a2) = *(a1 + 40);
  LODWORD(a3) = *(a1 + 44);
  LODWORD(a4) = *(a1 + 48);
  LODWORD(a5) = *(a1 + 52);
  [*(*(a1 + 32) + 432) updateDefaultThresholdPartial:a2 defaultThresholdRC:a3 relaxedThresholdPartial:a4 relaxedThresholdRC:a5];
  v6 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v12 = 136316162;
    v13 = "[CSHybridEndpointAnalyzer _updateEnhancedEndpointerDefaultThresholdPartial:defaultThresholdRC:relaxedThresholdPartial:relaxedThresholdRC:]_block_invoke";
    v14 = 2050;
    v15 = v8;
    v16 = 2050;
    v17 = v9;
    v18 = 2050;
    v19 = v10;
    v20 = 2050;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Updated enhanced endpointer defaultThresholdPartial: %{public}f, defaultThresholdRC: %{public}f, relaxedThresholdPartial: %{public}f, relaxedThresholdRC: %{public}f", &v12, 0x34u);
  }

  return result;
}

void sub_1000E490C(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  [*(*(a1 + 32) + 56) updateEndpointerThresholdWithValue:a2];
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 348) = v3;
  v4 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSHybridEndpointAnalyzer _updateEndpointerThreshold:]_block_invoke";
    v7 = 2050;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Updated endpointer threshold: %{public}f", &v5, 0x16u);
  }
}

void sub_1000E4CA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1] || (+[CSEndpointerAssetManager sharedManager](CSEndpointerAssetManager, "sharedManager"), v3 = objc_claimAutoreleasedReturnValue(), [v3 getCurrentEndpointerAsset], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "_updateCurrentAsset:", v4), v4, v3, *(*(a1 + 32) + 8)))
  {
    v5 = [_EAREndpointer alloc];
    v6 = [*(*(a1 + 32) + 8) path];
    v13 = 0;
    v7 = [v5 initWithConfiguration:v6 modelVersion:&v13];
    v8 = v13;

    if (!v8)
    {
      v9 = +[CSDiagnosticReporter sharedInstance];
      [v9 submitEndpointerIssueReport:kCSDiagnosticReporterEndpointerModelVersionIsNil];

      v10 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = "[CSHybridEndpointAnalyzer endpointerModelVersion]_block_invoke";
        _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%s endpointerModelVersion is still nil after fetching it from EAREndpointer", buf, 0xCu);
      }
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 376);
    *(v11 + 376) = v8;
  }
}

void sub_1000E4FA0(uint64_t a1)
{
  v2 = +[CSEndpointerAssetManager sharedManager];
  [v2 addObserver:*(a1 + 32)];

  v3 = *(a1 + 32);
  v5 = +[CSEndpointerAssetManager sharedManager];
  v4 = [v5 getCurrentEndpointerAsset];
  [v3 _updateCurrentAsset:v4];
}

void sub_1000E57D0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderDidStopRecord:*(a1 + 32) audioStreamHandleId:1 reason:{1, v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000E5BCC(uint64_t a1)
{
  *(*(a1 + 32) + 32) = fopen("/var/mobile/darwin_test.wav", "rb");
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    fseek(v3, 44, 0);
    v2 = *(a1 + 32);
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 8));
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  dispatch_source_set_timer(*(*(a1 + 32) + 24), 0, 0x2625A00uLL, 0x5F5E100uLL);
  objc_initWeak(&location, *(a1 + 32));
  v7 = *(*(a1 + 32) + 24);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E5E58;
  handler[3] = &unk_100253510;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(*(*(a1 + 32) + 24));
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(*(a1 + 32) + 16);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioRecorderDidStartRecord:*(a1 + 32) audioStreamHandleId:1 successfully:1 error:{0, v13}];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_1000E5E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E5E58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readAudioBufferAndFeed];
}

uint64_t sub_1000E71C0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 136315394;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v11;
            v17 = "[CSAttSiriRCHandler processRCWithId:requestId:speechPackage:taskId:forceAccept:completionHandler:]_block_invoke";
            v18 = 2112;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Sending result candidate to receiver: %@", buf, 0x16u);
          }

          [v8 didReceiveResultCandidateWithRequestId:*(a1 + 40) rcId:*(a1 + 72) inputOrigin:0 speechPackage:*(a1 + 48) duration:*(a1 + 56) taskName:{*(a1 + 80), v11, v12}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void sub_1000E7384(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 && (+[CSUtils isMedocFeatureEnabled]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 32));
    *(*(a1[7] + 8) + 24) = [WeakRetained getMitigationDecisionForRCId:a1[8] forRequestId:a1[5]];
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1[7] + 8) + 24);
    v10 = 136315650;
    v11 = "[CSAttSiriRCHandler processRCWithId:requestId:speechPackage:taskId:forceAccept:completionHandler:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s shouldAccept = %d, isMitigated = %d", &v10, 0x18u);
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, a2, *(*(a1[7] + 8) + 24), v5);
  }
}

void sub_1000E86A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[12] == v3)
  {
    [v2 _handleAFTMResults:*(a1 + 48)];
    v5 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = v5;
      v8 = [v6 analyzedSamples];
      [*(a1 + 48) score];
      v10 = 136315650;
      v11 = "[CSAttSiriAFTMNode analyzer:hasPartialResult:]_block_invoke";
      v12 = 2048;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s PARTIAL: Analyzed samples: %lu, score: %f", &v10, 0x20u);
    }
  }

  else
  {
    v4 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[CSAttSiriAFTMNode analyzer:hasPartialResult:]_block_invoke";
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Invalid Analyzer: %{public}@", &v10, 0x16u);
    }
  }
}

void sub_1000E88D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[12] == v3)
  {
    [v2 _handleAFTMResults:*(a1 + 48)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = 0;

    v7 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = v7;
      v10 = [v8 analyzedSamples];
      [*(a1 + 48) score];
      v12 = 136315650;
      v13 = "[CSAttSiriAFTMNode analyzer:hasFinalResult:]_block_invoke";
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s FINAL: Analyzed samples: %lu, score: %f", &v12, 0x20u);
    }
  }

  else
  {
    v4 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[CSAttSiriAFTMNode analyzer:hasFinalResult:]_block_invoke";
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Invalid Analyzer: %{public}@", &v12, 0x16u);
    }
  }
}

void sub_1000E9C78(void *a1)
{
  v2 = a1[4];
  if (v2[6])
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = a1[9];

    [v2 _startRequestWithContext:v3 withVtei:v4 withVTAssets:? taskType:? withRequestId:? completion:?];
  }

  else
  {
    v8 = [NSError alloc];
    v9 = [v8 initWithDomain:CSErrorDomain code:1601 userInfo:0];
    v10 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAttSiriAFTMNode startRequestWithContext:withVtei:taskType:withRequestId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Prefetched asset not set", &v11, 0xCu);
    }

    (*(a1[9] + 16))();
  }
}

void sub_1000EA170(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[CSAttSiriAFTMNode setPrefetchedAsset:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s setting prefetched asset %@", &v4, 0x16u);
  }
}

id sub_1000EA2B0(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriAFTMNode stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _reset];
}

id sub_1000EA614()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSCoreSpeechServiceListenerDelegate];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v10 count:2];
  v2 = [NSSet setWithArray:v1];
  [v0 setClasses:v2 forSelector:"setDelayInterstitialSounds:level:completion:" argumentIndex:0 ofReply:0];

  v9 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v4 = [NSSet setWithArray:v3];
  [v0 setClasses:v4 forSelector:"getVoiceTriggerRTModelRequestOptionsWithEndpointId:completion:" argumentIndex:0 ofReply:0];

  v8 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [NSSet setWithArray:v5];
  [v0 setClasses:v6 forSelector:"getVoiceTriggerRTModelRequestOptionsWithEndpointId:completion:" argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t sub_1000EA9FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000EAA14(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 73) == 1)
  {
    [*(v2 + 64) removeAllObjects];
    *(*(a1 + 32) + 73) = 0;
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 64);
  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

void sub_1000EAB68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    [*(v2 + 56) removeAllObjects];
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 56);
  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

uint64_t sub_1000EAE18(uint64_t result)
{
  *(*(result + 32) + 72) = 1;
  *(*(result + 32) + 73) = 1;
  return result;
}

void sub_1000EAEE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    [*(v2 + 56) removeAllObjects];
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 73) == 1)
  {
    [*(v2 + 64) removeAllObjects];
    *(*(a1 + 32) + 73) = 0;
  }

  if (*(a1 + 40) && [*(*(a1 + 32) + 56) count] <= 0xC7)
  {
    v3 = kVTEIrecognizerScore;
    v4 = [*(a1 + 40) objectForKeyedSubscript:kVTEIrecognizerScore];
    if (v4)
    {
      v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
      [v5 floatValue];
      v7 = v6;
    }

    else
    {
      v7 = -998637568;
    }

    v8 = kVTEItriggerScore;
    v9 = [*(a1 + 40) objectForKeyedSubscript:kVTEItriggerScore];
    if (v9)
    {
      v10 = [*(a1 + 40) objectForKeyedSubscript:v8];
      [v10 floatValue];
      v12 = v11;
    }

    else
    {
      v12 = -998637568;
    }

    v13 = kVTEIthreshold;
    v14 = [*(a1 + 40) objectForKeyedSubscript:kVTEIthreshold];
    if (v14)
    {
      v15 = [*(a1 + 40) objectForKeyedSubscript:v13];
      [v15 floatValue];
      v17 = v16;
    }

    else
    {
      v17 = -998637568;
    }

    v18 = kVTEItdsrCombinedThreshold;
    v19 = [*(a1 + 40) objectForKeyedSubscript:kVTEItdsrCombinedThreshold];
    if (v19)
    {
      v20 = [*(a1 + 40) objectForKeyedSubscript:v18];
      [v20 floatValue];
      v22 = v21;
    }

    else
    {
      v22 = -998637568;
    }

    v23 = kVTEIfirstPassChannelSelectionScores;
    v24 = [*(a1 + 40) objectForKeyedSubscript:kVTEIfirstPassChannelSelectionScores];
    v105 = v8;
    if (v24 && (v25 = v24, [*(a1 + 40) objectForKeyedSubscript:v23], v26 = objc_claimAutoreleasedReturnValue(), v25, v26))
    {
      v27 = kVTEIfirstPassMasterChannelScoreBoost;
      v28 = [*(a1 + 40) objectForKeyedSubscript:kVTEIfirstPassMasterChannelScoreBoost];
      if (v28)
      {
        v29 = [*(a1 + 40) objectForKeyedSubscript:v27];
        [v29 floatValue];
        v31 = v30;
      }

      else
      {
        v31 = 0.0;
      }

      v33 = kVTEIactiveChannel;
      v34 = [*(a1 + 40) objectForKeyedSubscript:kVTEIactiveChannel];
      if (v34)
      {
        v35 = [*(a1 + 40) objectForKeyedSubscript:v33];
        v36 = [v35 unsignedIntegerValue];
      }

      else
      {
        v36 = 0;
      }

      v37 = [NSString stringWithFormat:@"ch%tu", v36];
      v38 = [v26 objectForKeyedSubscript:v37];
      if (v38)
      {
        v39 = [v26 objectForKeyedSubscript:v37];
        [v39 floatValue];
        v41 = v40;
      }

      else
      {
        v41 = -1000.0;
      }

      if (v36)
      {
        v32 = v41;
      }

      else
      {
        v32 = v41 - v31;
      }
    }

    else
    {
      v32 = -1000.0;
    }

    v42 = [*(a1 + 40) objectForKeyedSubscript:kVTEILosingPhraseScores];
    v43 = [*(a1 + 40) objectForKeyedSubscript:kVTEITriggeredPhId];
    v44 = [v43 integerValue];

    LODWORD(v45) = v7;
    v46 = [NSNumber numberWithFloat:v45];
    LODWORD(v47) = v12;
    v48 = [NSNumber numberWithFloat:v47];
    LODWORD(v49) = v17;
    v50 = [NSNumber numberWithFloat:v49];
    LODWORD(v51) = v22;
    v107 = [NSNumber numberWithFloat:v51];
    v52 = CSIsHorseman();
    v96 = v42;
    if (v44)
    {
      if (v52)
      {
        *&v53 = v32;
        v102 = [NSNumber numberWithFloat:v53];
        if (v42)
        {
LABEL_38:
          if ([v42 count])
          {
            [v42 objectAtIndex:0];
          }

          else
          {
            +[NSDictionary dictionary];
          }
          v56 = ;
          v57 = [v56 objectForKeyedSubscript:v3];
          if (v57)
          {
            v58 = [v56 objectForKeyedSubscript:v3];
          }

          else
          {
            v58 = &off_10025F570;
          }

          v59 = [v56 objectForKeyedSubscript:v105];
          if (v59)
          {
            [v56 objectForKeyedSubscript:v105];
            v55 = &off_10025F570;
            v99 = v48;
            v100 = v107;
            v98 = v50;
            v101 = v46;
            v107 = &off_10025F570;
            v48 = v103 = &off_10025F570;
          }

          else
          {
            v99 = v48;
            v100 = v107;
            v98 = v50;
            v101 = v46;
            v107 = &off_10025F570;
            v55 = &off_10025F570;
            v103 = &off_10025F570;
            v48 = &off_10025F570;
          }

          v46 = v58;
          v54 = &off_10025E4E0;
LABEL_64:

          goto LABEL_65;
        }
      }

      else
      {
        v102 = &off_10025F570;
        if (v42)
        {
          goto LABEL_38;
        }
      }

      v54 = &off_10025E4E0;
      v99 = v48;
      v100 = v107;
      v98 = v50;
      v101 = v46;
      v107 = &off_10025F570;
      v55 = &off_10025F570;
      v48 = &off_10025F570;
      v103 = &off_10025F570;
      v46 = &off_10025F570;
LABEL_65:
      v106 = v46;
      v61 = kVTEIfirstPassTriggerSource;
      v62 = [*(a1 + 40) objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
      v104 = v48;
      if (v62)
      {
        v63 = *(a1 + 32);
        v64 = [*(a1 + 40) objectForKeyedSubscript:v61];
        v65 = [v63 _convertToFirstPassSource:v64];
      }

      else
      {
        v65 = 0;
      }

      v97 = [NSNumber numberWithInt:v65];
      v66 = kVTEItdsrCombinedScore;
      v67 = [*(a1 + 40) objectForKeyedSubscript:kVTEItdsrCombinedScore];
      if (v67)
      {
        v68 = [*(a1 + 40) objectForKeyedSubscript:v66];
        [v68 floatValue];
        v70 = v69;
      }

      else
      {
        v70 = -998637568;
      }

      if ((CSIsIOS() & 1) != 0 || CSIsASMacWithAOP())
      {
        LODWORD(v71) = v70;
        v72 = [NSNumber numberWithFloat:v71];
      }

      else
      {
        v72 = 0;
      }

      v73 = kVTEIconfigVersion;
      v74 = [*(a1 + 40) objectForKeyedSubscript:kVTEIconfigVersion];
      if (v74)
      {
        v75 = [*(a1 + 40) objectForKeyedSubscript:v73];
      }

      else
      {
        v75 = &stru_1002546C0;
      }

      v76 = kVTEIhardwareSamplerate;
      v77 = [*(a1 + 40) objectForKeyedSubscript:kVTEIhardwareSamplerate];
      if (v77)
      {
        v78 = [*(a1 + 40) objectForKeyedSubscript:v76];
        [v78 floatValue];
        v80 = v79;
      }

      else
      {
        v80 = 1182400512;
      }

      LODWORD(v81) = v80;
      v82 = [NSNumber numberWithFloat:v81];
      v83 = [BMSiriVoiceTriggerStatistics alloc];
      v84 = +[NSDate date];
      v85 = v55;
      v86 = [v83 initWithAbsoluteTimestamp:v84 firstPassPeakScoreHS:v103 firstPassPeakScoreJS:v102 firstPassTriggerSource:v97 recognizerScoreHS:v106 recognizerScoreJS:v101 triggerScoreHS:v104 triggerScoreJS:v99 mitigationScore:0 invocationTypeID:v54 repetitionSimilarityScore:0 tdSpeakerRecognizerCombinedScore:v72 hwSampleRate:v82 configVersion:v75 keywordThresholdHS:v55 keywordThresholdJS:v98 tdSpeakerRecognizerCombinedThresholdHS:v107 tdSpeakerRecognizerCombinedThresholdJS:v100];

      v87 = BiomeLibrary();
      v88 = [v87 Siri];
      v89 = [v88 VoiceTriggerStatistics];

      v90 = [v89 source];
      v91 = +[NSDate date];
      [v90 sendEvent:v86];
      v92 = +[NSDate date];
      v93 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v94 = v93;
        [v92 timeIntervalSinceDate:v91];
        *buf = 136315394;
        v109 = "[CSVoiceTriggerStatistics updateVTEstimationStatistics:]_block_invoke";
        v110 = 2050;
        v111 = v95;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "%s BMSource sentEvent elapsed time = %{public}lf", buf, 0x16u);
      }

      return;
    }

    if (v52)
    {
      *&v53 = v32;
      v103 = [NSNumber numberWithFloat:v53];
      if (v42)
      {
LABEL_42:
        if ([v42 count] > 1)
        {
          [v42 objectAtIndex:1];
        }

        else
        {
          +[NSDictionary dictionary];
        }
        v56 = ;
        v60 = [v56 objectForKeyedSubscript:v3];
        if (v60)
        {
          v101 = [v56 objectForKeyedSubscript:v3];
        }

        else
        {
          v101 = &off_10025F570;
        }

        v55 = v50;

        v59 = [v56 objectForKeyedSubscript:v105];
        if (v59)
        {
          [v56 objectForKeyedSubscript:v105];
          v54 = &off_10025E4C8;
          v99 = v98 = &off_10025F570;
        }

        else
        {
          v54 = &off_10025E4C8;
          v98 = &off_10025F570;
          v99 = &off_10025F570;
        }

        v100 = &off_10025F570;
        v102 = &off_10025F570;
        goto LABEL_64;
      }
    }

    else
    {
      v103 = &off_10025F570;
      if (v42)
      {
        goto LABEL_42;
      }
    }

    v54 = &off_10025E4C8;
    v98 = &off_10025F570;
    v99 = &off_10025F570;
    v100 = &off_10025F570;
    v101 = &off_10025F570;
    v102 = &off_10025F570;
    v55 = v50;
    goto LABEL_65;
  }
}

uint64_t sub_1000EBE44(uint64_t result)
{
  ++*(*(result + 32) + 8);
  *(*(result + 32) + 24) = 0;
  return result;
}

void sub_1000EBF54(uint64_t a1)
{
  if (++*(*(a1 + 32) + 40) >= 0x12CuLL)
  {
    v2 = +[CSDiagnosticReporter sharedInstance];
    [v2 submitSiriPowerIssueReport:kCSDiagnosticReporterConsectiveFalseFirstPassTriggers];

    *(*(a1 + 32) + 40) = 0;
  }
}

void sub_1000EC15C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerStatistics init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Hour power timer fired", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearFalseFirstPassTriggersPerHour];
}

void sub_1000EC270(id a1)
{
  v1 = objc_alloc_init(CSVoiceTriggerStatistics);
  v2 = qword_10029E348;
  qword_10029E348 = v1;
}

id sub_1000EC3A0(uint64_t a1, uint64_t a2, char a3)
{
  *(*(a1 + 32) + 16) = a2;
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EC424;
  v5[3] = &unk_100252B98;
  v5[4] = v3;
  v5[5] = a2;
  v6 = a3;
  return [v3 enumerateObserversInQueue:v5];
}

id sub_1000EC680(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSBluetoothWirelessSplitterMonitorImpIOS _startMonitoringWithQueue:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received WiressSplitterStateChange", &v4, 0xCu);
  }

  return [*(a1 + 32) _didReceiveWirelessSplitterStateChange];
}

void sub_1000EC800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSBluetoothWirelessSplitterMonitorImpIOS splitterState:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Current wireless splitter info = %{public}@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    (*(v5 + 16))(v5, [v3 splitterState], objc_msgSend(v3, "shouldDisableSpeakerVerificationInSplitterMode"));
  }

  else
  {
    (*(v5 + 16))(v5, 0, 0);
  }
}

void sub_1000ECFE0(uint64_t a1)
{
  [*(*(a1 + 32) + 80) stopDeviceMotionUpdates];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;
}

void sub_1000ED3C8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 attSiriNode:*(a1 + 32) didUpdateMotionSignal:{*(a1 + 40), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000ED560(uint64_t a1)
{
  v2 = objc_alloc_init(CMMotionManager);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = objc_alloc_init(NSOperationQueue);
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  v8 = objc_alloc_init(CMMotionActivity);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  v11 = objc_alloc_init(CMMotionActivityManager);
  v12 = objc_alloc_init(NSOperationQueue);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000ED788;
  v22[3] = &unk_1002515B0;
  v22[4] = *(a1 + 32);
  [v11 startActivityUpdatesToQueue:v12 withHandler:v22];
  *(*(a1 + 32) + 96) = +[CSGestureMonitor sharedInstance];
  [*(*(a1 + 32) + 96) addObserver:?];
  v13 = [*(*(a1 + 32) + 80) isDeviceMotionAvailable];
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  if (v13)
  {
    [v15 setDeviceMotionUpdateInterval:0.0166666667];
    [*(*(a1 + 32) + 80) setShowsDeviceMovementDisplay:1];
  }

  else
  {
    *(v14 + 80) = 0;
  }

  [*(*(a1 + 32) + 72) setUnderlyingQueue:*(*(a1 + 32) + 64)];
  objc_initWeak(&location, *(a1 + 32));
  v16 = *(a1 + 32);
  v18 = *(v16 + 72);
  v17 = *(v16 + 80);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000ED794;
  v19[3] = &unk_1002515D8;
  objc_copyWeak(&v20, &location);
  [v17 startDeviceMotionUpdatesUsingReferenceFrame:8 toQueue:v18 withHandler:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void sub_1000ED76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ED794(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hasDeviceMotionAvailable:v3];
}

void sub_1000ED888(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000ED974(uint64_t a1)
{
  v2 = [*(a1 + 32) receivers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___CSAttSiriMotionNodeDelegate])
    {
      v6 = [*(a1 + 32) receivers];
      [v6 addObject:*(a1 + 40)];
    }

    else
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        *buf = 136315394;
        v8 = "[CSAttSiriMotionNode addReceiver:]_block_invoke";
        v9 = 2112;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unsupported receiver: %@", buf, 0x16u);
      }
    }
  }
}

id sub_1000EDE80(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointDetectedSelfLogger siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  result = [*(a1 + 40) disableLocalSpeechRecognizer];
  *(*(a1 + 32) + 8) = result;
  return result;
}

id sub_1000EDFD4(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointDetectedSelfLogger siriClientBehaviorMonitor:willStartStreamWithContext:option:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  result = [*(a1 + 40) disableLocalSpeechRecognizer];
  *(*(a1 + 32) + 8) = result;
  return result;
}

void sub_1000EE104(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSEndpointDetectedSelfLogger didCompleteRecognitionTaskWithStatistics:requestId:endpointMode:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 48))
  {
    if ((*(v3 + 9) & 1) == 0)
    {
      v4 = *(v3 + 16);
      [CSEndpointDetectedSelfLogger emitEndpointDetectedEventWithEndpointerMetrics:"emitEndpointDetectedEventWithEndpointerMetrics:eventType:trpId:mhId:" eventType:? trpId:? mhId:?];
    }
  }
}

void sub_1000EE2A4(void *a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointDetectedSelfLogger attSiriNode:selectedTRPId:withMetrics:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = a1[4];
  if ((*(v3 + 9) & 1) == 0)
  {
    *(v3 + 9) = 1;
    [CSEndpointDetectedSelfLogger emitEndpointDetectedEventWithEndpointerMetrics:a1[5] eventType:1 trpId:a1[6] mhId:*(a1[4] + 16)];
  }
}

void sub_1000EE428(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSEndpointDetectedSelfLogger attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }

  if (*(a1 + 48) == 2)
  {
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  }
}

void sub_1000EE584(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointDetectedSelfLogger attSiriNode:didDetectHardEndpointAtTime:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    [CSEndpointDetectedSelfLogger emitEndpointDetectedEventWithEndpointerMetrics:*(a1 + 40) eventType:1 trpId:0 mhId:*(v3 + 16)];
  }
}

void sub_1000EE6D0(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSEndpointDetectedSelfLogger reset]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  *(*(a1 + 32) + 9) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;
}

id sub_1000EE82C(uint64_t a1)
{
  v2 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointDetectedSelfLogger registerEndpointerNode:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
}

void sub_1000F06B4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  v7 = [v3 lastObject];

  v4 = [v7 path];
  v5 = [v4 stringByAppendingPathComponent:@"Logs/CoreSpeech/spid/grading"];
  v6 = qword_10029E370;
  qword_10029E370 = v5;

  [*(a1 + 32) _createDirectoryIfDoesNotExist:qword_10029E370];
}

uint64_t sub_1000F0914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 path];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"-SL.json" withString:&stru_1002546C0];

  v6 = [v5 lastPathComponent];
  v7 = [v6 containsString:kCSAudioSyncedFileSuffix];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v5 stringByAppendingString:@"-synced.wav"];
  if ([v9 fileExistsAtPath:v10])
  {
  }

  else
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v5 stringByAppendingString:@".wav"];
    v13 = [v11 fileExistsAtPath:v12];

    if (!v13)
    {
      goto LABEL_2;
    }
  }

  if ([*(a1 + 32) isInternalWithoutProfile] & 1) != 0 || (objc_msgSend(v3, "pathExtension"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"wav"), v14, (v15))
  {
    v8 = 1;
    goto LABEL_9;
  }

LABEL_2:
  v8 = 0;
LABEL_9:

  return v8;
}

void sub_1000F0A8C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (v15)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "[CSP2PService _sendAcousticGradingDataToPeerId:]_block_invoke_2";
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed in compressing %{public}@ with errror %{public}@ - Bailing out", buf, 0x20u);
    }
  }

  else
  {
    v17 = *(a1[4] + 48);
    v18 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v17, v18);
    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v13 lastPathComponent];
      v22 = v21;
      v23 = a1[5];
      v36 = "[CSP2PService _sendAcousticGradingDataToPeerId:]_block_invoke";
      v24 = @"OFF";
      v37 = 2112;
      *buf = 136316162;
      if (a6)
      {
        v24 = @"ON";
      }

      v38 = v21;
      v39 = 2114;
      v40 = v24;
      v41 = 2048;
      v42 = a5;
      v43 = 2114;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Transfering grading file %@ withCompression %{public}@ and size %ld in batch %{public}@", buf, 0x34u);
    }

    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F0D2C;
    v32[3] = &unk_100251670;
    v28 = v13;
    v29 = a1[4];
    v33 = v28;
    v34 = v29;
    LOBYTE(v31) = 1;
    v30 = [v27 _sendGradingData:v14 withFileName:v28 toPeerId:v25 withCompressedFlag:a6 withUncompressedDataSize:a4 withBatchId:v26 withRetainFileFlag:v31 withFilePrefix:&stru_1002546C0 withCompletion:v32];
  }
}

void sub_1000F0D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (!v6)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = *(a1 + 32);
    v9 = v7;
    v10 = [v11 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendAcousticGradingDataToPeerId:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Grading log file failed to transfer for file %@ in task %@", &v12, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendAcousticGradingDataToPeerId:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Grading log file successfully transfered for file %@ in task %@", &v12, 0x20u);
LABEL_4:
  }

LABEL_6:
  dispatch_semaphore_signal(*(*(a1 + 40) + 48));
}

void sub_1000F1064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[CSP2PService _sendVoiceProfileUpdateTriggerToPeerId:forLocale:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Failed in sending trigger for Voice profile update to peer %@ with error %@", &v9, 0x20u);
    }
  }
}

uint64_t sub_1000F27C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isInternalWithoutProfile];
  v5 = [v3 pathExtension];
  v6 = [v5 isEqualToString:@"wav"];
  v7 = v6;
  if (!v4)
  {

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    v9 = [v3 pathExtension];
    v10 = [v9 isEqualToString:@"json"];

    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

LABEL_5:
  v8 = 1;
LABEL_8:

  return v8;
}

void sub_1000F2874(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  v16 = CSLogContextFacilityCoreSpeech;
  if (v15)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v51 = "[CSP2PService _sendVoiceProfile:toPeerId:]_block_invoke";
      v52 = 2114;
      v53 = v13;
      v54 = 2114;
      *v55 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed in compressing %{public}@ with errror %{public}@ - Bailing out", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v51 = "[CSP2PService _sendVoiceProfile:toPeerId:]_block_invoke";
      v52 = 2112;
      v53 = v13;
      v54 = 1024;
      *v55 = a6;
      *&v55[4] = 2048;
      *&v55[6] = a5;
      v56 = 2112;
      v57 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileFetchCmd: File %@ isCompressed: %d, compressedSize: %ld, err: %@", buf, 0x30u);
    }

    v42 = a4;
    v17 = [v13 lastPathComponent];
    v18 = [*(a1 + 32) stringByDeletingLastPathComponent];
    v19 = [v18 lastPathComponent];

    v45 = v14;
    v43 = v19;
    if (([v17 isEqualToString:@"meta_version.json"] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"enrollment_version.json"))
    {
      v20 = v17;
    }

    else
    {
      v21 = [v19 stringByAppendingPathComponent:@"audio"];
      v20 = [v21 stringByAppendingPathComponent:v17];
    }

    v22 = [v13 stringByDeletingLastPathComponent];
    v23 = [v22 lastPathComponent];
    v24 = [*(a1 + 40) profileID];
    v25 = [v23 isEqualToString:v24];

    v44 = v17;
    if (v25)
    {
      v26 = v17;

      v20 = v26;
    }

    v27 = [NSMutableDictionary alloc];
    v28 = [NSNumber numberWithBool:a6];
    v29 = *(a1 + 48);
    v30 = [NSNumber numberWithUnsignedLong:v42];
    v31 = [*(a1 + 40) profileID];
    v32 = [*(a1 + 40) locale];
    v33 = [v27 initWithObjectsAndKeys:{v20, @"CSP2P_VoiceProfileRelativeFilePath_Key", v28, @"CSP2P_IsDataCompressed_Key", v45, @"CSP2P_VoiceProfileData_Key", v29, @"CSP2P_PeerIdentifier_Key", v30, @"CSP2P_UncompressedDataSize_Key", v31, @"CSP2P_VoiceProfileProfileId_Key", v32, @"CSP2P_VoiceProfileLocale_Key", 0}];

    v48[0] = @"CSP2P_CommandType_Key";
    v48[1] = @"CSP2P_CommandDict_Key";
    v49[0] = @"com.apple.siridebug.command.reverse.transfer.voiceprofile";
    v49[1] = v33;
    v48[2] = @"type";
    v49[2] = @"corespeech";
    v34 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
    v35 = [*(a1 + 40) siriProfileId];

    if (v35)
    {
      v36 = [*(a1 + 40) siriProfileId];
      [v33 setObject:v36 forKey:@"CSP2P_VoiceProfileSiriProfileId_Key"];
    }

    v37 = [*(a1 + 40) locale];

    if (v37)
    {
      v38 = [*(a1 + 40) locale];
      [v33 setObject:v38 forKey:@"CSP2P_VoiceProfileLocale_Key"];
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 8));
    v40 = *(a1 + 48);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1000F2ED0;
    v46[3] = &unk_1002517C8;
    v47 = v20;
    v41 = v20;
    [WeakRetained sendMessageWithPayload:v34 toPeer:v40 withReply:v46];

    v14 = v45;
  }
}

void sub_1000F2D5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = [v9 profileID];
      v16 = 136315650;
      v17 = "[CSP2PService _sendVoiceProfile:toPeerId:]_block_invoke";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v12 = "%s CSP2P_VoiceProfileReverseTransferCmd: Failed transferring voice profile %@ with error %@";
      v13 = v10;
      v14 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }
  }

  else if (v8)
  {
    v15 = *(a1 + 32);
    v10 = v7;
    v11 = [v15 profileID];
    v16 = 136315394;
    v17 = "[CSP2PService _sendVoiceProfile:toPeerId:]_block_invoke";
    v18 = 2112;
    v19 = v11;
    v12 = "%s CSP2P_VoiceProfileReverseTransferCmd: Successfully transferred voice profile %@";
    v13 = v10;
    v14 = 22;
    goto LABEL_6;
  }
}

void sub_1000F2ED0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 136315650;
      v14 = "[CSP2PService _sendVoiceProfile:toPeerId:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v9 = "%s CSP2P_VoiceProfileReverseTransferCmd: Failed VoiceProfileTransfer: %@, error %@";
      v10 = v7;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v8)
  {
    v12 = *(a1 + 32);
    v13 = 136315394;
    v14 = "[CSP2PService _sendVoiceProfile:toPeerId:]_block_invoke";
    v15 = 2112;
    v16 = v12;
    v9 = "%s CSP2P_VoiceProfileReverseTransferCmd: Successfully transferred %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_6;
  }
}

void sub_1000F3904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3934(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F394C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v15 = 136315651;
      v16 = "[CSP2PService _getHomeUserIdForSharedSiriId:withCompletion:]_block_invoke";
      v17 = 2114;
      v18 = v10;
      v19 = 2113;
      v20 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s ERR: Home User Id erred %{public}@ for Siri Profile Id %{private}@", &v15, 0x20u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(*(*(a1 + 64) + 8) + 40);
      v15 = 136315650;
      v16 = "[CSP2PService _getHomeUserIdForSharedSiriId:withCompletion:]_block_invoke";
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s siriProfileId %{public}@ maps to homeUserId %{public}@", &v15, 0x20u);
    }
  }

  [*(a1 + 48) leave];
  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, *(*(*(a1 + 64) + 8) + 40), v7);
  }
}

id *sub_1000F42C0(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] setObject:a2 forKeyedSubscript:@"CSP2P_VoiceProfileHomeUserId_Key"];
  }

  return result;
}

void sub_1000F4644(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40) && *(a1 + 48))
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
    if (v3)
    {
      v4 = v3;
      v5 = [*(v1 + 32) objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];

      if (v5)
      {
        v6 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(v1 + 32);
          v8 = v6;
          v9 = [v7 objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
          v10 = *(v1 + 40);
          *buf = 136315650;
          v49 = "[CSP2PService _processVoiceProfileDeleteCommandWithRequest:fromSenderID:withReply:]_block_invoke";
          v50 = 2112;
          v51 = v9;
          v52 = 2112;
          v53 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Received request to delete VoiceProfile %@ from peerId %@", buf, 0x20u);
        }

        v11 = +[SSRVoiceProfileManager sharedInstance];
        v12 = [*(v1 + 32) objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
        v13 = [v11 provisionedVoiceProfilesForLocale:v12];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (!v15)
        {
          v27 = 0;
          v29 = v14;
          goto LABEL_32;
        }

        v16 = v15;
        v40 = v11;
        v42 = 0;
        v17 = *v44;
        v18 = SSRSpeakerRecognitionSiriDebugAppDomain;
        v41 = SSRSpeakerRecognitionSiriDebugAppDomain;
        while (1)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v43 + 1) + 8 * i);
            v21 = [v20 appDomain];
            if (![v21 isEqualToString:v18])
            {
              goto LABEL_16;
            }

            v22 = v17;
            v23 = v1;
            v24 = [*(v1 + 32) objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
            v25 = [v20 profileId];
            v26 = [v24 isEqualToString:v25];

            if (v26)
            {
              v18 = v41;
              v21 = v42;
              v42 = v20;
              v1 = v23;
              v17 = v22;
LABEL_16:

              continue;
            }

            v1 = v23;
            v17 = v22;
            v18 = v41;
          }

          v16 = [v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (!v16)
          {

            v27 = v42;
            if (v42)
            {
              v28 = [v42 profileId];
              v11 = v40;
              v29 = [v40 voiceProfileForId:v28];

              if (v29)
              {
                v30 = [v40 deleteUserVoiceProfile:v29];
              }

LABEL_32:
            }

            else
            {
              v11 = v40;
            }

            notify_post("com.apple.siri.corespeech.voiceprofilelist.change");
            v39 = *(v1 + 48);
            if (v39)
            {
              (*(v39 + 16))(v39, 0, 0);
            }

LABEL_27:
            return;
          }
        }
      }
    }

    v37 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(v1 + 32);
      *buf = 136315394;
      v49 = "[CSP2PService _processVoiceProfileDeleteCommandWithRequest:fromSenderID:withReply:]_block_invoke";
      v50 = 2112;
      v51 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s received malformed command - %@", buf, 0x16u);
    }
  }

  else
  {
    v31 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v1 + 40);
      v32 = *(v1 + 48);
      v34 = v31;
      v35 = objc_retainBlock(v32);
      *buf = 136315906;
      v49 = "[CSP2PService _processVoiceProfileDeleteCommandWithRequest:fromSenderID:withReply:]_block_invoke";
      v50 = 2112;
      v51 = v2;
      v52 = 2112;
      v53 = v33;
      v54 = 2112;
      v55 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s received malformed command - %@ %@ %@", buf, 0x2Au);
    }
  }

  v36 = *(v1 + 48);
  if (v36)
  {
    v11 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
    (*(v36 + 16))(v36, 0, v11);
    goto LABEL_27;
  }
}

void sub_1000F5C1C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000F78B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 136315906;
      v29 = "[CSP2PService _sendGradingData:withFileName:toPeerId:withCompressedFlag:withUncompressedDataSize:withBatchId:withRetainFileFlag:withFilePrefix:withCompletion:]_block_invoke";
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v5;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Failed in transporting Voice file %@ with reponse: %@, error %@", buf, 0x2Au);
    }

    v9 = v6;
  }

  else
  {
    if (*(a1 + 64))
    {
      v10 = [*(a1 + 40) pathExtension];
      v11 = [*(a1 + 40) stringByDeletingPathExtension];
      v12 = [v11 stringByAppendingString:kCSAudioSyncedFileSuffix];
      v13 = [v12 stringByAppendingPathExtension:v10];

      v14 = +[NSFileManager defaultManager];
      v15 = *(a1 + 40);
      v26 = 0;
      v16 = [v14 moveItemAtPath:v15 toPath:v13 error:&v26];
      v17 = v26;

      v9 = 0;
      if ((v16 & 1) == 0)
      {
        v18 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          *buf = 136315906;
          v29 = "[CSP2PService _sendGradingData:withFileName:toPeerId:withCompressedFlag:withUncompressedDataSize:withBatchId:withRetainFileFlag:withFilePrefix:withCompletion:]_block_invoke";
          v30 = 2112;
          v31 = v19;
          v32 = 2112;
          v33 = v13;
          v34 = 2112;
          v35 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Failed to move the file %@ to %@ with error %@", buf, 0x2Au);
        }

        v9 = v17;
      }
    }

    else
    {
      v20 = +[NSFileManager defaultManager];
      v21 = *(a1 + 40);
      v27 = 0;
      v22 = [v20 removeItemAtPath:v21 error:&v27];
      v17 = v27;

      if (v22)
      {
        v9 = 0;
      }

      else
      {
        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 40);
          *buf = 136315650;
          v29 = "[CSP2PService _sendGradingData:withFileName:toPeerId:withCompressedFlag:withUncompressedDataSize:withBatchId:withRetainFileFlag:withFilePrefix:withCompletion:]_block_invoke";
          v30 = 2112;
          v31 = v24;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Failed to remove the file %@ with error %@", buf, 0x20u);
        }

        v17 = v17;
        v9 = v17;
      }
    }
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    (*(v25 + 16))(v25, *(a1 + 48), v9);
  }
}

void sub_1000F7D74(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (v15)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "[CSP2PService _sendCoreSpeechMagusGradingDataToPeerId:]_block_invoke_2";
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed in compressing %{public}@ with errror %{public}@ - Bailing out", buf, 0x20u);
    }
  }

  else
  {
    v17 = *(a1[4] + 48);
    v18 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v17, v18);
    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v13 lastPathComponent];
      v22 = v21;
      v23 = a1[5];
      v36 = "[CSP2PService _sendCoreSpeechMagusGradingDataToPeerId:]_block_invoke";
      v24 = @"OFF";
      v37 = 2112;
      *buf = 136316162;
      if (a6)
      {
        v24 = @"ON";
      }

      v38 = v21;
      v39 = 2114;
      v40 = v24;
      v41 = 2048;
      v42 = a5;
      v43 = 2114;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Transfering grading file %@ withCompression %{public}@ and size %ld in batch %{public}@", buf, 0x34u);
    }

    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F8014;
    v32[3] = &unk_100251670;
    v28 = v13;
    v29 = a1[4];
    v33 = v28;
    v34 = v29;
    LOBYTE(v31) = 1;
    v30 = [v27 _sendGradingData:v14 withFileName:v28 toPeerId:v25 withCompressedFlag:a6 withUncompressedDataSize:a4 withBatchId:v26 withRetainFileFlag:v31 withFilePrefix:&stru_1002546C0 withCompletion:v32];
  }
}

void sub_1000F8014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (!v6)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = *(a1 + 32);
    v9 = v7;
    v10 = [v11 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendCoreSpeechMagusGradingDataToPeerId:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Grading log file failed to transfer for file %@ in task %@", &v12, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendCoreSpeechMagusGradingDataToPeerId:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Grading log file successfully transfered for file %@ in task %@", &v12, 0x20u);
LABEL_4:
  }

LABEL_6:
  dispatch_semaphore_signal(*(*(a1 + 40) + 48));
}

BOOL sub_1000F81B8(id a1, NSURL *a2, NSDictionary *a3)
{
  v3 = [(NSURL *)a2 URLByDeletingPathExtension];
  v4 = [v3 lastPathComponent];
  v5 = [v4 containsString:kCSAudioSyncedFileSuffix];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v28 = 0;
    v7 = [[NSRegularExpression alloc] initWithPattern:@"[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}" options:1 error:&v28];
    v8 = [v3 lastPathComponent];
    v9 = [v3 lastPathComponent];
    v10 = [v7 rangeOfFirstMatchInString:v8 options:16 range:{0, objc_msgSend(v9, "length")}];
    v12 = v11;

    if (v10 == 0x7FFFFFFFFFFFFFFFLL && v12 == 0)
    {
      v6 = 0;
    }

    else
    {
      v14 = +[NSFileManager defaultManager];
      v15 = [v3 path];
      v16 = [v15 stringByAppendingString:@".wav"];
      if ([v14 fileExistsAtPath:v16])
      {
        v6 = 1;
      }

      else
      {
        v17 = +[NSFileManager defaultManager];
        v18 = [v3 path];
        v19 = [v18 stringByAppendingString:@"-synced.wav"];
        if ([v17 fileExistsAtPath:v19])
        {
          v6 = 1;
        }

        else
        {
          v20 = +[NSFileManager defaultManager];
          v27 = [v3 path];
          v26 = [v27 stringByAppendingString:@".json"];
          if ([v20 fileExistsAtPath:?])
          {
            v6 = 1;
          }

          else
          {
            v23 = +[NSFileManager defaultManager];
            v24 = [v3 path];
            [v24 stringByAppendingString:@"-synced.json"];
            v21 = v25 = v20;
            v6 = [v23 fileExistsAtPath:v21];

            v20 = v25;
          }
        }
      }
    }
  }

  return v6;
}

id sub_1000F85EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastPathComponent];
  if ([v4 containsString:kCSAudioSyncedFileSuffix])
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) shouldTransferVoiceTriggerLogFileWithURL:v3];
  }

  return v5;
}

void sub_1000F8660(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (v15)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "[CSP2PService _sendGeckoSpeechLogsToPeerId:]_block_invoke_2";
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed in compressing %{public}@ with errror %{public}@ - Bailing out", buf, 0x20u);
    }
  }

  else
  {
    v17 = *(a1[4] + 48);
    v18 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v17, v18);
    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v13 lastPathComponent];
      v22 = v21;
      v23 = a1[5];
      v36 = "[CSP2PService _sendGeckoSpeechLogsToPeerId:]_block_invoke";
      v24 = @"OFF";
      v37 = 2112;
      *buf = 136316162;
      if (a6)
      {
        v24 = @"ON";
      }

      v38 = v21;
      v39 = 2114;
      v40 = v24;
      v41 = 2048;
      v42 = a5;
      v43 = 2114;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Transfering grading file %@ withCompression %{public}@ and size %ld in batch %{public}@", buf, 0x34u);
    }

    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F88FC;
    v32[3] = &unk_100251670;
    v28 = v13;
    v29 = a1[4];
    v33 = v28;
    v34 = v29;
    LOBYTE(v31) = 0;
    v30 = [v27 _sendGradingData:v14 withFileName:v28 toPeerId:v25 withCompressedFlag:a6 withUncompressedDataSize:a4 withBatchId:v26 withRetainFileFlag:v31 withFilePrefix:@"Gecko-" withCompletion:v32];
  }
}

void sub_1000F88FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (!v6)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = *(a1 + 32);
    v9 = v7;
    v10 = [v11 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendGeckoSpeechLogsToPeerId:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Grading log file failed to transfer for file %@ in task %@", &v12, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendGeckoSpeechLogsToPeerId:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Grading log file successfully transfered for file %@ in task %@", &v12, 0x20u);
LABEL_4:
  }

LABEL_6:
  dispatch_semaphore_signal(*(*(a1 + 40) + 48));
}

uint64_t sub_1000F8C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLByDeletingPathExtension];
  v5 = [v4 lastPathComponent];
  v6 = [v5 containsString:kCSAudioSyncedFileSuffix];

  if (v6)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 40);
  if (v8 == 3)
  {
    if ([*(a1 + 32) fileURL:v3 matchesFileNamePattern:@"^PCM-.+"])
    {
      goto LABEL_13;
    }

    goto LABEL_2;
  }

  if (v8 != 2)
  {
    if (v8 != 1 || ([*(a1 + 32) fileURL:v3 matchesFileNamePattern:@"^CS-.+"] & 1) != 0)
    {
      goto LABEL_13;
    }

LABEL_2:
    v7 = 0;
    goto LABEL_21;
  }

  v9 = [v3 pathExtension];
  if ([v9 isEqualToString:@"spx"])
  {

    goto LABEL_13;
  }

  v10 = [v3 pathExtension];
  v11 = [v10 isEqualToString:@"opx"];

  if ((v11 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_13:
  v12 = [v3 pathExtension];
  v13 = [v12 isEqualToString:@"json"];

  if (v13)
  {
    v7 = [*(a1 + 32) isInternalWithoutProfile];
  }

  else
  {
    v14 = [v3 pathExtension];
    v15 = [v14 isEqualToString:@"wav"];

    if (v15)
    {
      v7 = 1;
    }

    else
    {
      v16 = [v3 pathExtension];
      if ([v16 isEqualToString:@"spx"])
      {
        v7 = 1;
      }

      else
      {
        v17 = [v3 pathExtension];
        v7 = [v17 isEqualToString:@"opx"];
      }
    }
  }

LABEL_21:

  return v7;
}

void sub_1000F8E24(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (v15)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "[CSP2PService _sendCoreSpeechGradingDataToPeerId:forLogType:]_block_invoke_2";
      v37 = 2114;
      v38 = v13;
      v39 = 2114;
      v40 = v15;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed in compressing %{public}@ with errror %{public}@ - Bailing out", buf, 0x20u);
    }
  }

  else
  {
    v17 = *(a1[4] + 48);
    v18 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v17, v18);
    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v13 lastPathComponent];
      v22 = v21;
      v23 = a1[5];
      v36 = "[CSP2PService _sendCoreSpeechGradingDataToPeerId:forLogType:]_block_invoke";
      v24 = @"OFF";
      v37 = 2112;
      *buf = 136316162;
      if (a6)
      {
        v24 = @"ON";
      }

      v38 = v21;
      v39 = 2114;
      v40 = v24;
      v41 = 2048;
      v42 = a5;
      v43 = 2114;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Transfering grading file %@ withCompression %{public}@ and size %ld in batch %{public}@", buf, 0x34u);
    }

    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F90C4;
    v32[3] = &unk_100251670;
    v28 = v13;
    v29 = a1[4];
    v33 = v28;
    v34 = v29;
    LOBYTE(v31) = 1;
    v30 = [v27 _sendGradingData:v14 withFileName:v28 toPeerId:v25 withCompressedFlag:a6 withUncompressedDataSize:a4 withBatchId:v26 withRetainFileFlag:v31 withFilePrefix:&stru_1002546C0 withCompletion:v32];
  }
}

void sub_1000F90C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (!v6)
  {
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = *(a1 + 32);
    v9 = v7;
    v10 = [v11 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendCoreSpeechGradingDataToPeerId:forLogType:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Grading log file failed to transfer for file %@ in task %@", &v12, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 lastPathComponent];
    v12 = 136315650;
    v13 = "[CSP2PService _sendCoreSpeechGradingDataToPeerId:forLogType:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Grading log file successfully transfered for file %@ in task %@", &v12, 0x20u);
LABEL_4:
  }

LABEL_6:
  dispatch_semaphore_signal(*(*(a1 + 40) + 48));
}