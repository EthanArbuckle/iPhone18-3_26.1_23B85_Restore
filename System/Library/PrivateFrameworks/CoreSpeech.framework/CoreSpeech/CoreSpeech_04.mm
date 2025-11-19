id sub_1000F9410(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastPathComponent];
  if ([v4 containsString:kCSAudioSyncedFileSuffix])
  {
    goto LABEL_2;
  }

  if ([v4 containsString:@"-almost"])
  {
LABEL_4:
    v5 = [*(a1 + 32) shouldTransferVoiceTriggerLogFileWithURL:v3];
    goto LABEL_5;
  }

  v7 = +[CSFPreferences sharedPreferences];
  if ([v7 companionSyncVoiceTriggerUtterancesEnabled])
  {
    v8 = [v4 containsString:@"-triggered"];

    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

LABEL_2:
  v5 = 0;
LABEL_5:

  return v5;
}

void sub_1000F94E4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
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
      v36 = "[CSP2PService _sendVoiceTriggerGradingDataToPeerId:]_block_invoke_2";
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
      v36 = "[CSP2PService _sendVoiceTriggerGradingDataToPeerId:]_block_invoke";
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
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Transfering NearMiss file %@ withCompression %{public}@ and size %ld in batch %{public}@", buf, 0x34u);
    }

    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F9784;
    v32[3] = &unk_100251670;
    v28 = v13;
    v29 = a1[4];
    v33 = v28;
    v34 = v29;
    LOBYTE(v31) = 1;
    v30 = [v27 _sendGradingData:v14 withFileName:v28 toPeerId:v25 withCompressedFlag:a6 withUncompressedDataSize:a4 withBatchId:v26 withRetainFileFlag:v31 withFilePrefix:&stru_1002546C0 withCompletion:v32];
  }
}

void sub_1000F9784(uint64_t a1, void *a2, void *a3)
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
    v13 = "[CSP2PService _sendVoiceTriggerGradingDataToPeerId:]_block_invoke";
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
    v13 = "[CSP2PService _sendVoiceTriggerGradingDataToPeerId:]_block_invoke";
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

id sub_1000FA078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v22 = 0;
  v7 = *(*(a1 + 32) + 8);
  obj = 0;
  v8 = [v5 getResourceValue:&v22 forKey:NSURLCreationDateKey error:&obj];
  v9 = v22;
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 136315906;
      v24 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]_block_invoke";
      v25 = 2112;
      v26 = NSURLCreationDateKey;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Unable to get %@ for file at %@: %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  v19 = 0;
  v20 = 0;
  v10 = *(*(a1 + 32) + 8);
  v11 = [v6 getResourceValue:&v20 forKey:NSURLCreationDateKey error:&v19];
  v12 = v20;
  objc_storeStrong((v10 + 40), v19);
  if ((v11 & 1) == 0)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 136315906;
      v24 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]_block_invoke";
      v25 = 2112;
      v26 = NSURLCreationDateKey;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v18;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to get %@ for file at %@: %@", buf, 0x2Au);
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v13 = [v9 compare:v12];

LABEL_10:
  return v13;
}

id sub_1000FA624(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 136315394;
    v6 = "[CSP2PService sendGeckoSpeechLogsToCompanion]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Triggering gecko sync with peer - %@", &v5, 0x16u);
  }

  return [*(a1 + 32) _sendGeckoSpeechLogsToPeerId:*(*(a1 + 32) + 24)];
}

id sub_1000FA78C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 136315394;
    v6 = "[CSP2PService sendAcousticGradingDataToNearbyPeer]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Triggering acoustic data sync with peer - %@", &v5, 0x16u);
  }

  return [*(a1 + 32) _sendAcousticGradingDataToPeerId:*(*(a1 + 32) + 24)];
}

void *sub_1000FA8F0(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    result = CSIsHorseman();
    if (result)
    {
      result = [v1[4] isHeadlessDeviceDataCollectionModeEnabled];
      if (result)
      {
        v2 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v3 = *(v1[4] + 24);
          v4 = 136315394;
          v5 = "[CSP2PService sendVoiceProfileUpdatedMessageToNearbyPeerForLocale:]_block_invoke";
          v6 = 2112;
          v7 = v3;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Triggering voice profile sync with peer - %@", &v4, 0x16u);
        }

        return [v1[4] _sendVoiceProfileUpdateTriggerToPeerId:*(v1[4] + 24) forLocale:v1[5]];
      }
    }
  }

  return result;
}

id sub_1000FAA88(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 136315394;
    v6 = "[CSP2PService sendVTNearMissGradingDataToCompanion]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Triggering nearmiss sync with peer - %@", &v5, 0x16u);
  }

  return [*(a1 + 32) _sendVoiceTriggerGradingDataToPeerId:*(*(a1 + 32) + 24)];
}

id sub_1000FABF0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 136315394;
    v6 = "[CSP2PService sendCoreSpeechGradingDataToNearbyPeer]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Triggering sync with peer - %@", &v5, 0x16u);
  }

  return [*(a1 + 32) _sendCoreSpeechGradingDataToPeerId:*(*(a1 + 32) + 24)];
}

void sub_1000FADA0(uint64_t a1)
{
  if ([*(a1 + 32) isHeadlessDeviceDataCollectionModeEnabled])
  {
    v2 = *(a1 + 40);
    if (v2 && *(a1 + 48))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [*(a1 + 40) objectForKeyedSubscript:@"CSP2P_CommandType_Key"];
        v4 = [*(a1 + 40) objectForKeyedSubscript:@"CSP2P_CommandDict_Key"];
        if (v3)
        {
          objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
          v5 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v6 = *(a1 + 48);
            *v29 = 136315650;
            *&v29[4] = "[CSP2PService processRemoteCommandWithPayload:fromPeer:withReply:]_block_invoke";
            *&v29[12] = 2112;
            *&v29[14] = v3;
            *&v29[22] = 2112;
            v30 = v6;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Command %@ received from peerId %@", v29, 0x20u);
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.remote.heysiri"])
          {
            [*(a1 + 32) _processRemoteHeySiriCommandWithRequest:v4 fromSenderID:*(a1 + 48) withReply:*(a1 + 56)];
LABEL_64:

            goto LABEL_22;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.parallel.recording"])
          {
            [*(a1 + 32) _processParallelRecordingCommandWithRequest:v4 fromSenderID:*(a1 + 48) withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.transfer.parallelrecording"])
          {
            [*(a1 + 32) _receiveParallelRecordingFromPeerId:*(a1 + 48) recordingInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.transfer.voiceprofile"])
          {
            [*(a1 + 32) _receiveVoiceProfileFromPeerId:*(a1 + 48) voiceProfileInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata"])
          {
            [*(a1 + 32) _processGradingDataFetchCommandWithRequest:v4 fromSenderID:*(a1 + 48) withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.delete.voiceprofile"])
          {
            [*(a1 + 32) _processVoiceProfileDeleteCommandWithRequest:v4 fromSenderID:*(a1 + 48) withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.transfer.voicegradingdata"])
          {
            [*(a1 + 32) _receiveVoiceGradingDataFromPeerId:*(a1 + 48) requestInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.query.voiceprofile"])
          {
            [*(a1 + 32) _processVoiceProfileListQueryCommandFromPeerId:*(a1 + 48) requestInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voiceprofile"])
          {
            [*(a1 + 32) _processFetchVoiceProfileCommandFromPeerId:*(a1 + 48) requestInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.reverse.transfer.voiceprofile"])
          {
            [*(a1 + 32) _processReverseTransferVoiceProfileCommandFromPeerId:*(a1 + 48) requestInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.voiceprofile.update.trigger"])
          {
            [*(a1 + 32) _processVoiceProfileUpdateTriggerFromPeerId:*(a1 + 48) requestInfo:v4 withReply:*(a1 + 56)];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.voicetriggerlogs"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 1;
LABEL_63:
            [v23 _processGradingDataFetchCommandWithRequest:v26 ofLogType:v27 fromSenderID:v24 withReply:v25];
            goto LABEL_64;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.speechlogs"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 2;
            goto LABEL_63;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.maguslogs"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 3;
            goto LABEL_63;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.csaudio"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 6;
            goto LABEL_63;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.compressedaudio"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 7;
            goto LABEL_63;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.pcmaudio"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 8;
            goto LABEL_63;
          }

          if ([v3 isEqualToString:@"com.apple.siridebug.command.fetch.voicegradingdata.triggerstudylogs"])
          {
            v23 = *(a1 + 32);
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            v26 = v4;
            v27 = 9;
            goto LABEL_63;
          }

          v28 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            *v29 = 136315394;
            *&v29[4] = "[CSP2PService processRemoteCommandWithPayload:fromPeer:withReply:]_block_invoke";
            *&v29[12] = 2112;
            *&v29[14] = v3;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Unknown Command: (%@) - Ignoring", v29, 0x16u);
          }

          v20 = *(a1 + 56);
          if (!v20)
          {
            goto LABEL_64;
          }

          v21 = 6;
        }

        else
        {
          v18 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 48);
            *v29 = 136315650;
            *&v29[4] = "[CSP2PService processRemoteCommandWithPayload:fromPeer:withReply:]_block_invoke";
            *&v29[12] = 2112;
            *&v29[14] = 0;
            *&v29[22] = 2112;
            v30 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Received Malformed command %@ from peerId %@ - Bailing out!", v29, 0x20u);
          }

          v20 = *(a1 + 56);
          if (!v20)
          {
            goto LABEL_64;
          }

          v21 = 3;
        }

        v22 = [NSError errorWithDomain:@"CoreSpeech" code:v21 userInfo:0];
        (*(v20 + 16))(v20, 0, v22);

        goto LABEL_64;
      }

      v15 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *v29 = 136315650;
      *&v29[4] = "[CSP2PService processRemoteCommandWithPayload:fromPeer:withReply:]_block_invoke";
      *&v29[12] = 2112;
      *&v29[14] = v16;
      *&v29[22] = 2112;
      v30 = v17;
      v14 = v15;
    }

    else
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        v10 = *(a1 + 56);
        if (!v10)
        {
          return;
        }

        v11 = 3;
        goto LABEL_21;
      }

      v13 = *(a1 + 48);
      *v29 = 136315650;
      *&v29[4] = "[CSP2PService processRemoteCommandWithPayload:fromPeer:withReply:]_block_invoke";
      *&v29[12] = 2112;
      *&v29[14] = v2;
      *&v29[22] = 2112;
      v30 = v13;
      v14 = v12;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Received Malformed command %@ from peerId %@ - Bailing out!", v29, 0x20u);
    goto LABEL_19;
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *v29 = 136315650;
    *&v29[4] = "[CSP2PService processRemoteCommandWithPayload:fromPeer:withReply:]_block_invoke";
    *&v29[12] = 2112;
    *&v29[14] = v8;
    *&v29[22] = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Non internal build, Ignoring command %@ from peerId %@ - Bailing out!", v29, 0x20u);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = 2;
LABEL_21:
    v3 = [NSError errorWithDomain:@"CoreSpeech" code:v11 userInfo:0, *v29, *&v29[16], v30];
    (*(v10 + 16))(v10, 0, v3);
LABEL_22:
  }
}

void sub_1000FB580(id a1)
{
  v1 = objc_alloc_init(CSP2PService);
  v2 = qword_10029E360;
  qword_10029E360 = v1;
}

uint64_t sub_1000FC184(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000FCAF8(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v10 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s gateWithRemoteMicVadAndShadowMicBlk", &v13, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11 >= 0.0)
  {
    if (*(a1 + 48) >= v11)
    {
      return (*(*(a1 + 32) + 16))(a2, a3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    LODWORD(result) = (*(*(a1 + 32) + 16))(a2, a3);
    if (a4 >= a5)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }
}

BOOL sub_1000FCC20(id a1, float a2, float a3)
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSVoiceTriggerFirstPassHearst _handleSecondPassResult:secondPassRequest:deviceId:requestOption:error:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s gateWithRemoteMicVadOnlyBlk", &v8, 0xCu);
  }

  return a2 < a3 && a2 >= 0.0;
}

void sub_1000FCCE8(uint64_t a1)
{
  [*(a1 + 32) setIsSecondPassRunning:0];
  [*(a1 + 32) reset];
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = [v2 audioStreamHolding];
    v4 = *(a1 + 40);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v6 = [*(a1 + 32) audioProvider];
    v7 = *(a1 + 40);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;
  }

  else
  {

    [v2 cancelAudioStreamHold];
  }
}

void sub_1000FD214(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1000FD24C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FD7A4;
    block[3] = &unk_100253C20;
    v11 = *(a1 + 40);
    dispatch_async(v6, block);
  }

  else
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v5 localizedDescription];
      *buf = 136315394;
      v13 = "[CSVoiceTriggerFirstPassHearst _handleRemoteMicVoiceTriggerEvent:secondPassRequest:completion:]_block_invoke";
      v14 = 2114;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to start audio stream error : %{public}@", buf, 0x16u);
    }
  }
}

void sub_1000FD3B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 multiPhraseEnabledStatus];
  [v4 setAllowMph:{objc_msgSend(v5, "multiPhraseSelected")}];

  v6 = [*(a1 + 32) multiPhraseEnabledStatus];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 userSelectedPhraseType]);
  [v4 setUserSelectedPhraseType:v7];

  v8 = [NSUUID alloc];
  v9 = [*(a1 + 40) deviceId];
  v10 = [v8 initWithUUIDString:v9];
  [v4 setEndpointId:v10];

  [v4 setAccessoryModelType:&off_10025E570];
  v11 = +[CSBluetoothManager sharedInstance];
  v12 = [*(a1 + 40) deviceId];
  v13 = [v11 getBluetoothDeviceInfoForDeviceWithId:v12];
  v14 = [v13 supportMph];

  v15 = objc_alloc_init(CSCoreSpeechServicesAccessoryInfo);
  [(CSCoreSpeechServicesAccessoryInfo *)v15 setSupportsJustSiri:v14];
  [(CSCoreSpeechServicesAccessoryInfo *)v15 setSupportsAlwaysOnAccelerometer:v14];
  [v4 setCSCoreSpeechServicesAccessoryInfo:v15];
}

void sub_1000FD548(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) deviceId];
  [WeakRetained _handleSecondPassResult:v6 secondPassRequest:v8 deviceId:v9 requestOption:*(a1 + 48) error:v5 completion:*(a1 + 64)];

  v10 = +[CSVoiceTriggerStatAggregator sharedAggregator];
  v11 = [v6 result];
  v12 = [v6 voiceTriggerEventInfo];

  [v10 logSecondPassResult:v11 eventInfo:v12 triggerAPWakeUp:0];
  v13 = *(*(a1 + 56) + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000FD69C;
  v16[3] = &unk_100253C48;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v17 = v14;
  v18 = v15;
  dispatch_async(v13, v16);
}

void sub_1000FD69C(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 deviceId];
    v9 = 136315394;
    v10 = "[CSVoiceTriggerFirstPassHearst _handleRemoteMicVoiceTriggerEvent:secondPassRequest:completion:]_block_invoke_2";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Teardown hearst second pass request for device id : %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 40);
  v8 = [v6 deviceId];
  [v7 removeObjectForKey:v8];
}

id sub_1000FD7A4(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassHearst _handleRemoteMicVoiceTriggerEvent:secondPassRequest:completion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Audio stream started", &v4, 0xCu);
  }

  return [*(a1 + 32) holdAudioStreamWithTimeout:5.0];
}

id sub_1000FDABC(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassHearst siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Siri Client start listening now, CSVoiceTriggerFirstPassHearst can stop listening now", &v4, 0xCu);
  }

  return [*(a1 + 32) _cancelAllAudioStreamHoldings];
}

void sub_1000FDCB0(uint64_t a1)
{
  if ([*(a1 + 32) _shouldHandleHearstActivation])
  {
    if ([*(a1 + 40) type] == 2)
    {
      v2 = +[CSFPreferences sharedPreferences];
      v3 = [v2 voiceTriggerEnabled];

      if (v3)
      {
        if (!CSIsWatch() || (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 phraseSpotterEnabled], v4, (v5 & 1) != 0))
        {
          v6 = *(a1 + 32);
          v7 = *(v6 + 104);
          if (v7 == 2)
          {
            if (!+[CSUtils supportRingtoneA2DP])
            {
              v31 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(a1 + 40);
                *buf = 136315394;
                v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
                v67 = 2114;
                v68 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Ignore %{public}@ since Siri client is currently in a ringtone and does not support A2DP", buf, 0x16u);
              }

              v10 = 606;
              goto LABEL_46;
            }

            v6 = *(a1 + 32);
            v7 = *(v6 + 104);
          }

          if (v7 == 4)
          {
            v29 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 40);
              *buf = 136315394;
              v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
              v67 = 2114;
              v68 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Ignore %{public}@ since Siri client is currently in an outgoing call", buf, 0x16u);
            }

            v10 = 608;
            goto LABEL_46;
          }

          if (v7 == 3)
          {
            v8 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(a1 + 40);
              *buf = 136315394;
              v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
              v67 = 2114;
              v68 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Ignore %{public}@ since Siri client is currently in a connected call", buf, 0x16u);
            }

            v10 = 607;
          }

          else if ([*(v6 + 112) isOtherNonEligibleAppRecording])
          {
            v33 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1 + 40);
              *buf = 136315394;
              v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
              v67 = 2114;
              v68 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s Ignore %{public}@ since there is an other non eligible app recording", buf, 0x16u);
            }

            v10 = 609;
          }

          else
          {
            if (![*(*(a1 + 32) + 120) isStreaming])
            {
              v39 = +[CSSiriRestrictionOnLockScreenMonitor sharedInstance];
              if ([v39 isRestricted])
              {
                v40 = +[CSScreenLockMonitor sharedInstance];
                v41 = [v40 isScreenLocked];

                if (v41)
                {
                  v42 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = *(a1 + 40);
                    v44 = v42;
                    v45 = [v43 localizedDescription];
                    *buf = 136315394;
                    v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
                    v67 = 2114;
                    v68 = v45;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s Ignore %{public}@ since screen is locked and Siri is restricted on lock screen", buf, 0x16u);
                  }

                  v10 = 612;
                  goto LABEL_46;
                }
              }

              else
              {
              }

              v46 = *(*(a1 + 32) + 40);
              v47 = [*(a1 + 40) deviceId];
              v48 = [v46 objectForKey:v47];

              v49 = CSLogCategoryVT;
              v50 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
              if (v48)
              {
                if (v50)
                {
                  v51 = *(a1 + 40);
                  v52 = v49;
                  v53 = [v51 deviceId];
                  *buf = 136315394;
                  v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
                  v67 = 2114;
                  v68 = v53;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%s We already have matched hearst second pass request : %{public}@", buf, 0x16u);
                }

                v54 = *(*(a1 + 32) + 40);
                v55 = [*(a1 + 40) deviceId];
                v56 = [v54 objectForKey:v55];
              }

              else
              {
                if (v50)
                {
                  v57 = *(a1 + 40);
                  v58 = v49;
                  v59 = [v57 deviceId];
                  *buf = 136315394;
                  v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
                  v67 = 2114;
                  v68 = v59;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s There is no matched hearst second pass request, creating new one : %{public}@", buf, 0x16u);
                }

                v60 = [CSHearstSecondPassRequest alloc];
                v61 = [*(a1 + 40) deviceId];
                v56 = [(CSHearstSecondPassRequest *)v60 initWithDeviceID:v61 speechManager:*(*(a1 + 32) + 88)];

                v62 = *(*(a1 + 32) + 40);
                v63 = [*(a1 + 40) deviceId];
                [v62 setObject:v56 forKey:v63];

                [(CSHearstSecondPassRequest *)v56 setAsset:*(*(a1 + 32) + 48)];
                [(CSHearstSecondPassRequest *)v56 start];
              }

              [*(a1 + 32) _handleRemoteMicVoiceTriggerEvent:*(a1 + 40) secondPassRequest:v56 completion:*(a1 + 48)];

              v25 = 0;
              goto LABEL_48;
            }

            v35 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *(a1 + 40);
              *buf = 136315394;
              v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
              v67 = 2114;
              v68 = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s Ignore %{public}@ since Siri client is current listening", buf, 0x16u);
            }

            v10 = 603;
          }

LABEL_46:
          v25 = [NSError errorWithDomain:CSErrorDomain code:v10 userInfo:0];
          v37 = *(a1 + 48);
          if (v37)
          {
            (*(v37 + 16))(v37, 0, v25);
          }

          goto LABEL_48;
        }
      }

      v23 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 40);
        *buf = 136315394;
        v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
        v67 = 2114;
        v68 = v38;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Ignore %{public}@ since VoiceTrigger was turned off", buf, 0x16u);
      }

      v24 = *(a1 + 48);
      if (v24)
      {
        v25 = [NSError errorWithDomain:CSErrorDomain code:604 userInfo:0];
        (*(v24 + 16))(v24, 0, v25);
LABEL_48:
      }
    }

    else if ([*(a1 + 40) type] == 3)
    {
      v11 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = v11;
        v14 = [v12 deviceId];
        [*(a1 + 40) vadScore];
        v15 = *(*(a1 + 32) + 8);
        *buf = 136315906;
        v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
        v67 = 2114;
        v68 = v14;
        v69 = 2050;
        v70 = v16;
        v71 = 2050;
        v72 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s deviceID = %{public}@, RemoteMicVADScore = %{public}f, Threshold = %{public}f", buf, 0x2Au);
      }

      v17 = *(*(a1 + 32) + 40);
      v18 = [*(a1 + 40) deviceId];
      v19 = [v17 objectForKey:v18];

      if (v19 && (v20 = *(*(a1 + 32) + 40), [*(a1 + 40) deviceId], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKey:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
      {
        [*(a1 + 40) vadScore];
        [v22 setRemoteMicVADScore:?];
        [*(a1 + 32) _handleRemoteMicVADEventWithSecondPassRequest:v22];
      }

      else
      {
        v27 = CSLogCategoryVT;
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v66 = "[CSVoiceTriggerFirstPassHearst activationEventNotificationHandler:event:completion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s RemoteMicVAD event will be ignored since firstPassSource:Hearst, device id does not match", buf, 0xCu);
        }
      }

      v28 = *(a1 + 48);
      if (v28)
      {
        (*(v28 + 16))(v28, 1, 0);
      }
    }

    else
    {
      v26 = *(a1 + 48);
      if (v26)
      {
        v64 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
        (*(v26 + 16))(v26, 0);
      }
    }
  }
}

id sub_1000FEAA0(uint64_t a1)
{
  v2 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVoiceTriggerFirstPassHearst start]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(*(a1 + 32) + 120) registerObserver:?];
}

id sub_1000FEE64(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) phoneCallState];
  *(*(a1 + 32) + 104) = result;
  return result;
}

void sub_1000FF81C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[CSAttSiriController CSAudioRouteChangeMonitor:didReceiveAudioRouteChangeEvent:]_block_invoke";
    v7 = 1026;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received audio route change monitor event : %{public}d", &v5, 0x12u);
  }

  v4 = *(a1 + 40) - 2;
  if (v4 <= 5 && ((0x3Bu >> v4) & 1) != 0)
  {
    [*(a1 + 32) _receivedHearstRoutedEvent:qword_1001AA258[v4]];
  }
}

uint64_t sub_1000FF9F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000FFD84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 startAttendingWithContext:v5];
}

void sub_1000FFFD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100088;
  block[3] = &unk_100253680;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_100100088(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[CSAttSiriController _startProcessingContinuousConversationRequest:]_block_invoke_2";
      v9 = 2112;
      v10 = v1;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s error in startProcessing :%@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = v4[13];

    [v4 _startAudioStreamForContinuousConversation:v6 withStartStreamOption:v5];
  }
}

id sub_1001002C4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 232);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100100380;
  v9[3] = &unk_100253300;
  v9[4] = v3;
  [v4 startAudioStreamWithOption:v2 completion:v9];
  v5 = [*(a1 + 40) requestMHUUID];
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = v5;

  [*(*(a1 + 32) + 184) setMhId:*(*(a1 + 32) + 128)];
  return [*(*(a1 + 32) + 80) setMhId:*(*(a1 + 32) + 128)];
}

void sub_100100380(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _setPendingActivationStatus:0];
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 localizedDescription];
      v9 = 136315394;
      v10 = "[CSAttSiriController _startAudioStreamForContinuousConversation:withStartStreamOption:]_block_invoke_2";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to start audioSrcNode : %{public}@", &v9, 0x16u);
    }
  }
}

void sub_100100748(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSAttSiriController startSpeechProcessing:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3[10])
  {
    [v3 _setPendingActivationStatus:1];
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 240) = v4;
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 128);
      v8 = 136315650;
      v9 = "[CSAttSiriController startSpeechProcessing:]_block_invoke";
      v10 = 2048;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s startSampleId:%llu _requestMHUUID:%@", &v8, 0x20u);
      v4 = *(a1 + 40);
    }

    [*(a1 + 32) _startProcessingContinuousConversationRequest:v4];
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSAttSiriController startSpeechProcessing:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s deferredActivation not enabled. bail-out!", &v8, 0xCu);
    }
  }
}

id sub_100100C4C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v13 = "[CSAttSiriController handleEndOfAttendingForRequestId:]_block_invoke";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Stop audio stream for Id: %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) _reconfigureRequiredNodes:0 enforceAttendingAudioNode:0];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 40) + 232);
    v6 = v4;
    v7 = [v5 isStreaming];
    *buf = 136315394;
    v13 = "[CSAttSiriController handleEndOfAttendingForRequestId:]_block_invoke";
    v14 = 1024;
    LODWORD(v15) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s _attendingAudioNode streaming :%u", buf, 0x12u);
  }

  result = [*(*(a1 + 40) + 232) isStreaming];
  if (result)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 232);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100100E00;
    v11[3] = &unk_100253300;
    v11[4] = v9;
    return [v10 stopAudioStreamWithOption:0 completion:v11];
  }

  return result;
}

void sub_100100E00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100E74;
  block[3] = &unk_100253C20;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1001010F8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[CSAttSiriStateMonitor sharedInstance];
    v3 = [v2 isAttending];

    if (v3)
    {
      v4 = +[CSAttSiriStateMonitor sharedInstance];
      [v4 updateState:0];

      [*(a1 + 40) _reconfigureRequiredNodes:0 enforceAttendingAudioNode:0];
      if (![*(a1 + 32) reqSrc])
      {
        [*(a1 + 40) _setPendingActivationStatus:0];
        v5 = *(a1 + 40);
        v6 = *(v5 + 224);
        v7 = *(v5 + 128);

        [v6 stopAttendingForRequestId:v7 isReqCC:0 forceStop:1];
      }
    }

    else
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[CSAttSiriController stopAttendingWithContext:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s skip since isAttending = NO", &v9, 0xCu);
      }
    }
  }
}

void sub_1001013A0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[CSAttSiriStateMonitor sharedInstance];
    v3 = [v2 isAttending];

    if (v3)
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v12 = 136315138;
      v13 = "[CSAttSiriController startAttendingWithContext:]_block_invoke";
      v5 = "%s skip since isAttending = YES";
      goto LABEL_8;
    }

    if ([*(*(a1 + 40) + 104) isRequestDuringActiveCall])
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v12 = 136315138;
      v13 = "[CSAttSiriController startAttendingWithContext:]_block_invoke";
      v5 = "%s skip since isRequestDuringActiveCall = YES";
      goto LABEL_8;
    }

    v6 = +[CSAttSiriStateMonitor sharedInstance];
    [v6 updateState:1];

    if (![*(a1 + 32) reqSrc])
    {
      if ((+[CSUtils isContinuousConversationSupported]& 1) != 0)
      {
        v7 = *(a1 + 40);
        if (*(v7 + 10) == 1)
        {
          v8 = [*(v7 + 64) getLastMitigationResultForRequestId:*(v7 + 128)];
          v9 = v8 ^ 1;
          v10 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(*(a1 + 40) + 128);
            v12 = 136315650;
            v13 = "[CSAttSiriController startAttendingWithContext:]_block_invoke";
            v14 = 2112;
            v15 = v11;
            v16 = 1024;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s _requestMHUUID:%@, cached MitigationResult:%u", &v12, 0x1Cu);
          }
        }

        else
        {
          v9 = 0;
        }

        if ((CSIsWatch() & 1) != 0 || CSIsHorseman())
        {
          v9 = 1;
        }

        [*(*(a1 + 40) + 224) startAttendingWithAudioRecordContext:*(*(a1 + 40) + 104) withRequestId:*(*(a1 + 40) + 128) shouldStartTimer:v9];
      }

      else
      {
        v4 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[CSAttSiriController startAttendingWithContext:]_block_invoke";
          v5 = "%s Unsupported XPC call when CC is disabled, do nothing";
LABEL_8:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v12, 0xCu);
        }
      }
    }
  }
}

id sub_1001016A0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriController attSiriAudioSrcNodeDidStopUnexpectedly:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleStopProcessing];
}

id sub_1001017C8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriController attSiriAttendingAudioSrcNodeDidStopUnexpectedly:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(*(a1 + 32) + 224) stopAttendingForRequestId:*(*(a1 + 32) + 128) isReqCC:1 forceStop:1];
}

void sub_100101C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101CF4;
  block[3] = &unk_100253C20;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10010210C(id a1, BOOL a2, NSError *a3)
{
  v4 = a2;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NSError *)a3 localizedDescription];
    v8 = 136315650;
    v9 = "[CSAttSiriController _handleStartProcessingWithRecordContext:withAudioStartStreamOptions:completion:]_block_invoke";
    v10 = 1026;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s AFTM started for siri request status: %{public}d with error: %{public}@", &v8, 0x1Cu);
  }
}

void sub_1001028C0(id a1, BOOL a2, NSError *a3)
{
  v4 = a2;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NSError *)a3 localizedDescription];
    v8 = 136315650;
    v9 = "[CSAttSiriController _setupAudioSrcNodeWithSiriClientStream:]_block_invoke";
    v10 = 1024;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Attached to siri client stream with result: %d error:%@", &v8, 0x1Cu);
  }
}

void sub_100102ACC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102B98;
  block[3] = &unk_100253680;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100102B98(uint64_t a1)
{
  if (!*(a1 + 32) && (v7 = *(a1 + 40)) != 0 && [v7 assetProvider] == 2)
  {
    objc_storeStrong((*(a1 + 48) + 160), *(a1 + 40));
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 48) + 160);
      v10 = 136315394;
      v11 = "[CSAttSiriController _fetchVoiceTriggerAssets]_block_invoke_2";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Updating VT asset to %@", &v10, 0x16u);
    }
  }

  else
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 localizedDescription];
      v6 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[CSAttSiriController _fetchVoiceTriggerAssets]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Unable to get UAF VT assets with err: %@, asset: %{public}@", &v10, 0x20u);
    }
  }
}

void sub_100102D98(uint64_t a1)
{
  v2 = +[CSAttSiriMitigationAssetHandler sharedHandler];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100102E30;
  v3[3] = &unk_100252F10;
  v3[4] = *(a1 + 32);
  [v2 getMitigationAssetWithEndpointId:0 completion:v3];
}

void sub_100102E30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102EFC;
  block[3] = &unk_100253680;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100102EFC(void *a1)
{
  if (a1[4] || (v9 = a1[5]) == 0)
  {
    v2 = a1[6];
    v3 = *(v2 + 152);
    *(v2 + 152) = 0;

    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = v4;
      v7 = [v5 localizedDescription];
      v8 = a1[5];
      v12 = 136315650;
      v13 = "[CSAttSiriController _fetchMitigationAssets]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Unable to get Trial mitigation assets with err: %@, asset: %{public}@", &v12, 0x20u);
    }
  }

  else
  {
    objc_storeStrong((a1[6] + 152), v9);
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1[6] + 152);
      v12 = 136315394;
      v13 = "[CSAttSiriController _fetchMitigationAssets]_block_invoke_3";
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Updating mitigation asset to %@", &v12, 0x16u);
    }
  }
}

void sub_1001038A8(uint64_t a1)
{
  v1 = [*(a1 + 32) attSiriSvcListener];
  [v1 notifyClientsWithBlock:&stru_100251910];
}

void sub_100103994(uint64_t a1)
{
  v2 = [*(a1 + 32) attSiriSvcListener];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100103A34;
  v3[3] = &unk_100253B48;
  v4 = *(a1 + 40);
  [v2 notifyClientsWithBlock:v3];
}

id sub_100103AB4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) stop];
  v3 = *(a1 + 32);
  if (*(v3 + 10) == 1)
  {
    v4 = *(v3 + 104);

    return [v4 isContinuousConversation];
  }

  return result;
}

id *sub_100103CF0(id *result)
{
  if ((result[5] & 1) == 0)
  {
    return [result[4] _handleStopProcessing];
  }

  return result;
}

void sub_100103DAC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriController siriClientBehaviorMonitor:preparedSiriClientAudioStream:successfully:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Cached siri client stream, attach after nodes start", &v7, 0xCu);
    }

    v3 = [*(*(a1 + 32) + 144) streamRequest];
    v4 = [v3 recordContext];
    v5 = [v4 isDictation];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) _fetchRequiredAssets];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriController siriClientBehaviorMonitor:preparedSiriClientAudioStream:successfully:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Skip asking audioSrcNode to prepare since Siri client failed to prepare audio", &v7, 0xCu);
    }
  }
}

void sub_100103FB8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriController siriClientBehaviorMonitor:fetchedSiriClientAudioStream:successfully:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Cached siri client stream, attach after nodes start", &v7, 0xCu);
    }

    v3 = [*(*(a1 + 32) + 144) streamRequest];
    v4 = [v3 recordContext];
    v5 = [v4 isDictation];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) _fetchRequiredAssets];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[CSAttSiriController siriClientBehaviorMonitor:fetchedSiriClientAudioStream:successfully:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Skip asking audioSrcNode to prepare since Siri client failed to prepare audio", &v7, 0xCu);
    }
  }
}

id sub_100104190(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriController siriClientBehaviorMonitor:didStopStream:withEventUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleStopProcessing];
}

void sub_1001043B8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 9);
    v5 = v2;
    v23 = 136315650;
    v24 = "[CSAttSiriController siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    v25 = 1024;
    *v26 = v4;
    *&v26[4] = 1024;
    *&v26[6] = [v3 isContinuousConversation];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s pendingActivation:%u isContextCC:%u", &v23, 0x18u);
  }

  v6 = *(a1 + 32);
  if (v6[9] == 1)
  {
    if ([*(a1 + 40) isContinuousConversation])
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = 136315138;
      v24 = "[CSAttSiriController siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
      v8 = "%s _pendingActivationProcessing - bail-out";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v23, 0xCu);
      return;
    }

    v6 = *(a1 + 32);
  }

  [v6 _setPendingActivationStatus:0];
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v23 = 136316162;
    v24 = "[CSAttSiriController siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    v25 = 2112;
    *v26 = v13;
    *&v26[8] = 1024;
    v27 = v12;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s context:%@, flag:%u option:%@, eventUUID:%@", &v23, 0x30u);
  }

  if (*(a1 + 64) != 1)
  {
    [*(a1 + 32) _handleStopProcessing];
    v22 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v23 = 136315138;
    v24 = "[CSAttSiriController siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    v8 = "%s Skip asking audioSrcNode to record since Siri client failed to start audio";
    v9 = v22;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_18;
  }

  v16 = [*(a1 + 48) requestMHUUID];
  v17 = *(a1 + 32);
  v18 = *(v17 + 128);
  *(v17 + 128) = v16;

  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*(a1 + 32) + 128);
    v23 = 136315394;
    v24 = "[CSAttSiriController siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    v25 = 2112;
    *v26 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s _requestMHUUID set to :%@", &v23, 0x16u);
  }

  [*(*(a1 + 32) + 184) setMhId:*(*(a1 + 32) + 128)];
  [*(*(a1 + 32) + 80) setMhId:*(*(a1 + 32) + 128)];
  [*(*(a1 + 32) + 56) setMhId:*(*(a1 + 32) + 128)];
  [*(*(a1 + 32) + 232) cancelAudioStreamHold];
  if (+[CSUtils isContinuousConversationSupported])
  {
    if ([*(*(a1 + 32) + 224) shouldRunCCForAudioRecordContext:*(a1 + 40)])
    {
      v21 = [[CSAudioStartStreamOption alloc] initTandemWithOption:*(a1 + 48)];
      [v21 setRequireSingleChannelLookup:1];
      [*(*(a1 + 32) + 232) startAudioStreamWithOption:v21 completion:&stru_1002518F0];
    }
  }
}

void sub_10010471C(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [(NSError *)v4 localizedDescription];
      v8 = 136315394;
      v9 = "[CSAttSiriController siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to start attending audioSrcNode : %{public}@", &v8, 0x16u);
    }
  }
}

void sub_100104968(id *a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 9);
    v5 = v2;
    v17 = 136315650;
    v18 = "[CSAttSiriController siriClientBehaviorMonitor:willStartStreamWithContext:option:]_block_invoke";
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = [v3 isContinuousConversation];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s pendingActivation:%u isContextCC:%u", &v17, 0x18u);
  }

  v6 = a1[4];
  if (v6[9] == 1)
  {
    if ([a1[5] isContinuousConversation])
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[CSAttSiriController siriClientBehaviorMonitor:willStartStreamWithContext:option:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s _pendingActivationProcessing - bail-out", &v17, 0xCu);
      }

      return;
    }

    v6 = a1[4];
  }

  [v6 _setPendingActivationStatus:0];
  v8 = [a1[5] copy];
  v9 = a1[4];
  v10 = v9[13];
  v9[13] = v8;

  objc_storeStrong(a1[4] + 14, a1[6]);
  [a1[4] _handleStartProcessingWithRecordContext:*(a1[4] + 13) withAudioStartStreamOptions:*(a1[4] + 14) completion:0];
  v11 = a1[4];
  if (v11[18])
  {
    [v11 _setupAudioSrcNodeWithSiriClientStream:?];
    if (+[CSUtils isContinuousConversationSupported])
    {
      if ([*(a1[4] + 28) shouldRunCCForAudioRecordContext:a1[5]])
      {
        v12 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315138;
          v18 = "[CSAttSiriController siriClientBehaviorMonitor:willStartStreamWithContext:option:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Create new strong stream for attending audio src", &v17, 0xCu);
        }

        v13 = [*(a1[4] + 18) streamRequest];
        v14 = [*(a1[4] + 18) streamProvider];
        v15 = [v14 UUID];

        v16 = [[CSAudioStreamRequest alloc] initTandemWithRequest:v13];
        [v16 setRequestListeningMicIndicatorLock:1];
        [a1[4] _prepareAttendingAudioSrcNodeWithStreamRequest:v16 audioProviderUUID:v15];
      }
    }
  }
}

id sub_100104D2C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) isContinuousConversation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100104EA0(uint64_t a1)
{
  [*(*(a1 + 32) + 136) registerObserver:?];
  [*(*(a1 + 32) + 176) addObserver:?];
  *(*(a1 + 32) + 216) = [*(*(a1 + 32) + 208) hearstRouteStatus];
  [*(*(a1 + 32) + 208) addObserver:?];
  [*(*(a1 + 32) + 56) preheatWithLanguage:0 shouldDownloadMissingAsset:1];
  [*(a1 + 32) _fetchRequiredAssets];
  v2 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [v2 addObserver:*(a1 + 32)];
}

void sub_100105040(void *a1)
{
  v2 = *(a1[4] + 32);
  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100105D54(uint64_t a1)
{
  v2 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAssetManager _createPeriodicalDownloadTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Trying to start download meta data", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchRemoteMetaData];
}

void sub_100105E88(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = *(*(a1 + 32) + 32);
    v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40), 0];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 CSAssetManagerDidDownloadNewAsset:*(a1 + 32)];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

void sub_100106280(uint64_t a1)
{
  if ([*(a1 + 32) _canFetchRemoteAsset:0])
  {
    v2 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100106324;
    block[3] = &unk_100253C20;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }
}

void sub_1001063DC(void *a1)
{
  v2 = *(a1[4] + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1[4] + 32);
    v7 = [NSNumber numberWithUnsignedInteger:a1[6]];
    v6 = [v5 objectForKeyedSubscript:v7];
    [v6 removeObject:a1[5]];
  }
}

void sub_100106558(void *a1)
{
  v2 = *(a1[4] + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    v6 = *(a1[4] + 32);
    v7 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  v8 = *(a1[4] + 32);
  v10 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v9 = [v8 objectForKeyedSubscript:v10];
  [v9 addObject:a1[5]];
}

void sub_1001074AC(uint64_t a1)
{
  if ([*(a1 + 32) allowVoiceTriggerAssetDownloading])
  {
    v2 = [*(*(a1 + 40) + 24) allowVoiceTriggerAssetDownloading] ^ 1;
    [*(*(a1 + 40) + 24) setAllowVoiceTriggerAssetDownloading:1];
  }

  else
  {
    v2 = 0;
  }

  if ([*(a1 + 32) allowEndpointAssetDownloading])
  {
    v2 |= [*(*(a1 + 40) + 24) allowEndpointAssetDownloading] ^ 1;
    [*(*(a1 + 40) + 24) setAllowEndpointAssetDownloading:1];
  }

  if ([*(a1 + 32) allowLanguageDetectorAssetDownloading])
  {
    v2 |= [*(*(a1 + 40) + 24) allowLanguageDetectorAssetDownloading] ^ 1;
    [*(*(a1 + 40) + 24) setAllowLanguageDetectorAssetDownloading:1];
  }

  if ([*(a1 + 32) allowAdBlockerAssetDownloading])
  {
    v2 |= [*(*(a1 + 40) + 24) allowAdBlockerAssetDownloading] ^ 1;
    [*(*(a1 + 40) + 24) setAllowAdBlockerAssetDownloading:1];
  }

  if ([*(a1 + 32) allowSpeakerRecognitionAssetDownloading])
  {
    v2 |= [*(*(a1 + 40) + 24) allowSpeakerRecognitionAssetDownloading] ^ 1;
    [*(*(a1 + 40) + 24) setAllowSpeakerRecognitionAssetDownloading:1];
  }

  if ([*(a1 + 32) allowVoiceTriggerAccessoryAssetDownloading])
  {
    v2 |= [*(*(a1 + 40) + 24) allowVoiceTriggerAccessoryAssetDownloading] ^ 1;
    [*(*(a1 + 40) + 24) setAllowVoiceTriggerAccessoryAssetDownloading:1];
  }

  if ([*(a1 + 32) allowGibraltarVoiceTriggerAssetDownloading])
  {
    LOBYTE(v2) = [*(*(a1 + 40) + 24) allowGibraltarVoiceTriggerAssetDownloading] ^ 1 | v2;
    [*(*(a1 + 40) + 24) setAllowGibraltarVoiceTriggerAssetDownloading:1];
  }

  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 40) + 24);
    v5 = v3;
    v6 = [v4 description];
    v9 = 136315394;
    v10 = "[CSAssetManager setAssetDownloadingOption:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  if (v2)
  {
    v7 = [*(*(a1 + 40) + 8) isEnabled];
    v8 = CSLogCategoryAsset;
    if (v7)
    {
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[CSAssetManager setAssetDownloadingOption:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Need to fetch remote meta now, since we have new asset need to be downloaded", &v9, 0xCu);
      }

      [*(a1 + 40) _fetchRemoteMetaData];
      return;
    }
  }

  else
  {
    v8 = CSLogCategoryAsset;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSAssetManager setAssetDownloadingOption:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Does not need to fetch remote meta now", &v9, 0xCu);
  }
}

void sub_100107BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100107C34(uint64_t a1, int a2)
{
  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"DISABLED";
    if (a2)
    {
      v5 = @"ENABLED";
    }

    *buf = 136315394;
    v12 = "[CSAssetManager initWithDownloadOption:]_block_invoke";
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Asset Manager Policy has been %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100107DA8;
  v8[3] = &unk_1002519E0;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  dispatch_async(v7, v8);

  objc_destroyWeak(&v9);
}

void sub_100107DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 40) == 1)
  {
    [WeakRetained _startPeriodicalDownload];
  }

  else
  {
    [WeakRetained _stopPeriodicalDownload];
  }
}

void sub_100107E5C(id a1)
{
  v3 = objc_alloc_init(CSAssetDownloadingOption);
  v1 = [[CSAssetManager alloc] initWithDownloadOption:v3];
  v2 = qword_10029E380;
  qword_10029E380 = v1;
}

void sub_100107F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      if (!*(a1 + 32))
      {
        goto LABEL_15;
      }

      if (!xpc_activity_set_state(v3, 4))
      {
        v5 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v14 = "_RegisterXPCActivity_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to continue", buf, 0xCu);
        }
      }

      v6 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100108194;
      v11[3] = &unk_100253C20;
      v12 = v3;
      (*(v6 + 16))(v6, v12, v11);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }

  if (xpc_activity_should_defer(v3))
  {
    v8 = xpc_activity_set_state(v3, 3);
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"No";
      *buf = 136315650;
      v14 = "_RegisterXPCActivity_block_invoke";
      v15 = 2112;
      v16 = v3;
      if (v8)
      {
        v10 = @"Yes";
      }

      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Deferring activity:%@ deferred:%@", buf, 0x20u);
    }
  }

LABEL_15:
}

void sub_100108194(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "_RegisterXPCActivity_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to done", &v2, 0xCu);
    }
  }
}

void sub_100108250(id a1, OS_xpc_object *a2, id a3)
{
  v11 = a3;
  v3 = +[CSPowerLogger sharedPowerLogger];
  v4 = +[CSFPreferences sharedPreferences];
  v5 = [v4 voiceTriggerEnabled];
  v6 = +[CSFPreferences sharedPreferences];
  v7 = [v6 powerLoggingCurrentLanguage];
  v8 = +[CSFPreferences sharedPreferences];
  v9 = [v8 powerLoggingCurrentAssetConfigVersion];
  [v3 powerLogSiriConfigWithVoiceTriggerEnabled:v5 withLanguage:v7 withModelVersion:v9];

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

void sub_100108350(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_8_HOURS + XPC_ACTIVITY_INTERVAL_4_HOURS);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 0);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_10010882C(uint64_t a1)
{
  NSLog(@"cancelled device");
  v2 = *(*(a1 + 32) + 8);

  CFRelease(v2);
}

void sub_1001089E4(id a1)
{
  v1 = objc_alloc_init(CSHostLauncherDarwin);
  v2 = qword_10029E390;
  qword_10029E390 = v1;
}

void sub_1001093CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001093EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100109404(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[CSAttSiriTCUCache cleanUpTCUCache:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s TCUID:%@, TCUCachedObject:%@", &v13, 0x20u);
    v7 = CSLogCategoryRequest;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v6 firstTRPId];
    v13 = 136315650;
    v14 = "[CSAttSiriTCUCache cleanUpTCUCache:]_block_invoke";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s _firstTRPIdForSegment:%@, firstTRPId:%@", &v13, 0x20u);
  }

  v11 = *(a1 + 32);
  v12 = [v6 firstTRPId];
  LODWORD(v11) = [v11 isEqual:v12];

  if (v11)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

void sub_10010992C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010994C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[CSAttSiriTCUCache updateTcuState:]_block_invoke";
    v21 = 2112;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s TCUID:%@ TCUState:%ld", buf, 0x20u);
  }

  v9 = [v7 unsignedIntValue];
  if (v6)
  {
    v10 = v9;
    v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
    v12 = v11;
    if (v11)
    {
      if (v10 == 4)
      {
        v13 = CSLogCategoryRequest;
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v20 = "[CSAttSiriTCUCache updateTcuState:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s TCU is moved to -Final- state, hence dropped", buf, 0xCu);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      }

      else
      {
        v16 = [v11 TCUPackage];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100109C1C;
        v18[3] = &unk_100251AD0;
        v18[4] = v10;
        v17 = [v16 mutatedCopyWithMutator:v18];
        [v12 setTCUPackage:v17];
      }
    }

    else
    {
      v15 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[CSAttSiriTCUCache updateTcuState:]_block_invoke_2";
        v21 = 2112;
        v22 = v6;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s TCU Object for ID:%@ not found", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[CSAttSiriTCUCache updateTcuState:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s TCUID is nil!", buf, 0xCu);
    }
  }
}

void sub_100109D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100109D54(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 lastTRPId];
  if ([*(a1 + 32) isEqualToString:v4])
  {
    v5 = [v8 TCUPackage];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_10010A718(void *a1)
{
  v1 = CSLogCategoryRequest;
  if (*(a1[4] + 56))
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v4 = a1[6];
      v15 = 136315650;
      v16 = "[CSAttSiriTCUGenerator _emitSpeechStopDetectedWithTrpId:withHostTime:]_block_invoke";
      v17 = 2112;
      v18 = v3;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Emitting SpeechStopDetected with trpId: %@, hostTime: %llu", &v15, 0x20u);
    }

    v5 = objc_alloc_init(MHSchemaMHSpeechStopDetected);
    v6 = [SISchemaUUID alloc];
    v7 = [[NSUUID alloc] initWithUUIDString:a1[5]];
    v8 = [v6 initWithNSUUID:v7];
    [v5 setTrpId:v8];

    v9 = objc_alloc_init(MHSchemaMHClientEvent);
    v10 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    v11 = [SISchemaUUID alloc];
    v12 = [[NSUUID alloc] initWithUUIDString:*(a1[4] + 56)];
    v13 = [v11 initWithNSUUID:v12];
    [v10 setMhId:v13];

    [v9 setEventMetadata:v10];
    [v9 setSpeechStopDetected:v5];
    v14 = +[AssistantSiriAnalytics sharedStream];
    [v14 emitMessage:v9 timestamp:a1[6]];
  }

  else if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315138;
    v16 = "[CSAttSiriTCUGenerator _emitSpeechStopDetectedWithTrpId:withHostTime:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v15, 0xCu);
  }
}

void sub_10010AE44(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 11);
    v7 = *(v4 + 9);
    v8 = *(v4 + 152);
    *buf = 136316418;
    v23 = "[CSAttSiriTCUGenerator didCompleteRecognitionTaskWithStatistics:requestId:endpointMode:error:]_block_invoke";
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v2 == 2;
    v30 = 2114;
    v31 = v8;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s _trpDetectDelivered:%u _trpCandidateDelivered:%u usesManualEndpointing:%u _endpointerMetrics:%{public}@ error:%@", buf, 0x32u);
  }

  if (v2 == 2)
  {
    v9 = *(a1 + 32);
    if (v9[9] == 1 && (v9[11] & 1) == 0)
    {
      v9[12] = 0;
      [*(a1 + 32) _deliverTRPDetected:*(*(a1 + 32) + 152) withTRPId:*(*(a1 + 32) + 80)];
    }
  }

  v10 = *(a1 + 32);
  if (*(v10 + 16) == 1 && *(v10 + 184) && *(a1 + 48))
  {
    [*(v10 + 184) removeObjectForKey:?];
    v10 = *(a1 + 32);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v10 recognitionTaskCompletionReceivers];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 didCompleteRecognitionTaskWithStatistics:*(a1 + 56) requestId:*(a1 + 48) endpointMode:*(a1 + 64) error:*(a1 + 40)];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

id sub_10010B168(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSAttSiriTCUGenerator didReceiveFinalResultWithRequestId:speechPackage:taskName:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "KeyLog - %s taskName:%@", &v5, 0x16u);
  }

  result = [*(a1 + 40) _shouldProcessResultCandidateForTask:*(a1 + 32)];
  if (result)
  {
    return [*(a1 + 40) _processResultCandidate:*(a1 + 48) withId:*(a1 + 56) uresInvocationType:*(*(a1 + 40) + 192) isScoreRefreshAllowed:0];
  }

  return result;
}

id sub_10010B334(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSAttSiriTCUGenerator didReceiveResultCandidateWithRequestId:rcId:inputOrigin:speechPackage:duration:taskName:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "KeyLog - %s taskName:%@", &v5, 0x16u);
  }

  result = [*(a1 + 40) _shouldProcessResultCandidateForTask:*(a1 + 32)];
  if (result)
  {
    return [*(a1 + 40) _processResultCandidate:*(a1 + 48) withId:*(a1 + 56) uresInvocationType:*(*(a1 + 40) + 192) isScoreRefreshAllowed:1];
  }

  return result;
}

void sub_10010B4D0(uint64_t a1)
{
  *(*(a1 + 32) + 15) = *(a1 + 64);
  v2 = [*(*(a1 + 32) + 160) getSelectedTrpIdForEndpointEvent:*(a1 + 40) withMetrics:*(a1 + 56) OfType:*(a1 + 48)];
  v3 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v12 = 136315650;
    v13 = "[CSAttSiriTCUGenerator attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    v14 = 2112;
    v15 = v2;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s selectedTrpId:%@ endpointerEvent:%ld", &v12, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5[11] != 1)
  {
    v10 = v5[15];
    v11 = CSLogCategoryRequest;
    if (v2)
    {
      if (v5[15])
      {
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "[CSAttSiriTCUGenerator attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
          v14 = 2112;
          v15 = v2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Received selected trpId: %@ sending TRPDetect msg", &v12, 0x16u);
          v5 = *(a1 + 32);
        }

        [v5 _deliverTRPDetected:*(a1 + 40) withTRPId:v2];
        goto LABEL_18;
      }
    }

    else if (v5[15])
    {
      if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v12 = 136315138;
      v13 = "[CSAttSiriTCUGenerator attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
      v7 = "%s Bail out since no TRP was selected";
LABEL_16:
      v8 = v11;
      v9 = 12;
      goto LABEL_17;
    }

    if (!os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v12 = 136315138;
    v13 = "[CSAttSiriTCUGenerator attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    v7 = "%s Bail out since we're in manual endpointing mode";
    goto LABEL_16;
  }

  v6 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CSAttSiriTCUGenerator attSiriNode:didDetectEndpointEventAtTime:eventType:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    v14 = 2112;
    v15 = v2;
    v7 = "%s Ignore TRP selection for trpId: %@, since TRPDetect is already sent";
    v8 = v6;
    v9 = 22;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
  }

LABEL_18:
}

void sub_10010B810(void *a1)
{
  v2 = a1[4];
  v3 = v2[11];
  v4 = CSLogCategoryRequest;
  v5 = os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = a1[5];
      v8 = 136315394;
      v9 = "[CSAttSiriTCUGenerator attSiriNode:selectedTRPId:withMetrics:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Ignore TRP selection for trpId: %@, since TRPDetect is already sent", &v8, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v7 = a1[5];
      v8 = 136315394;
      v9 = "[CSAttSiriTCUGenerator attSiriNode:selectedTRPId:withMetrics:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Received selected trpId: %@ sending TRPDetect msg", &v8, 0x16u);
      v2 = a1[4];
    }

    [v2 _deliverTRPDetected:a1[6] withTRPId:a1[5]];
  }
}

void sub_10010BA84(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[CSAttSiriTCUGenerator attSiriNode:didDetectHardEndpointAtTime:withMetrics:usesAutomaticEndpointing:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Caching endpointer metrics", &v3, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
}

void sub_10010BD68(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) getTCUPackageWithTrpId:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 requestId];
    v5 = *(a1 + 32);
    v6 = [v3 speechPackage];
    [v5 _processResultCandidate:v6 withId:v4 uresInvocationType:*(*(a1 + 32) + 192) isScoreRefreshAllowed:0];
  }

  else
  {
    v7 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSAttSiriTCUGenerator _generateTCUCandidateWithRefershedScoresForTrpIdAsync:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Cached TCU Package found is nil!", &v8, 0xCu);
    }
  }
}

id sub_10010C110()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10029E3C0;
  v7 = qword_10029E3C0;
  if (!qword_10029E3C0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10010C1F0;
    v3[3] = &unk_100253580;
    v3[4] = &v4;
    sub_10010C1F0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10010C1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010C1F0(uint64_t a1)
{
  sub_10010C260();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTTCUPackage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E3C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_10010C260();
  }
}

void sub_10010C260()
{
  v1[0] = 0;
  if (!qword_10029E3A8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10010C36C;
    v1[4] = &unk_1002535B8;
    v1[5] = v1;
    v2 = off_100251C40;
    v3 = 0;
    qword_10029E3A8 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10029E3A8)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_10010C36C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E3A8 = result;
  return result;
}

void sub_10010CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010CCC8(uint64_t a1)
{
  sub_10010C260();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTTRPDetected");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E3B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(CSAttSiriTCUGenerator *)v2 _deliverTRPCandidatePackage:v3, v4];
  }
}

void sub_10010D008(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 80);
    v6 = 136315650;
    v7 = "[CSAttSiriTCUGenerator _updateTcuCache:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s TCUObj: %@ lastTRPId:%@", &v6, 0x20u);
  }

  if (v3)
  {
    [*(*(a1 + 32) + 112) addTCU:v3 firstTRPId:*(*(a1 + 32) + 72) lastTRPId:*(*(a1 + 32) + 80)];
  }
}

id sub_10010DA0C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10029E3A0;
  v7 = qword_10029E3A0;
  if (!qword_10029E3A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10010DC40;
    v3[3] = &unk_100253580;
    v3[4] = &v4;
    sub_10010DC40(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10010DAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010DAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSAttSiriTCUGenerator _processResultCandidate:withId:uresInvocationType:isScoreRefreshAllowed:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s TCU Pruning Step", &v10, 0xCu);
  }

  [*(a1 + 32) _deliverTRPCandidatePackage:v3];
  [*(a1 + 32) _updateTcuCache:v3];
  [*(a1 + 32) _emitTRPRequestLinkEventWithTRPId:*(*(a1 + 32) + 80) withRequestId:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = v5[10];
  v7 = [NSNumber numberWithInteger:*(a1 + 48)];
  v8 = [v7 stringValue];
  [v5 _emitTRPCreatedEventWithTRPId:v6 withResultCandidateId:v8 withRequestId:*(a1 + 40)];

  v9 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    [v9 _updateRefreshScoresForPackage:v3];
  }

  else
  {
    v9[12] = 0;
  }
}

void sub_10010DC40(uint64_t a1)
{
  sub_10010C260();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTTRPCandidate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E3A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(CSAttSiriTCUGenerator *)v2 _processMultiUserResultCandidate:v3 withId:v4 isScoreRefreshAllowed:v5, v6];
  }
}

void sub_10010E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v47 - 208), 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_10010E318(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]_block_invoke";
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s userId:%@, speechPackage:%@", buf, 0x20u);
  }

  if ([v8 isFinal] && (*(*(*(a1 + 56) + 8) + 24) = 1, objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3), objc_msgSend(*(*(a1 + 32) + 176), "count")) && (objc_msgSend(*(*(a1 + 32) + 176), "lastObject"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v11 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s force last eager trp candidate", buf, 0xCu);
    }

    *a4 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) _generateSingleTCU:v8 withRequestID:*(a1 + 40) uresInvocationType:*(*(a1 + 32) + 192)];
    v13 = CSLogCategoryRequest;
    if (v12)
    {
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(a1 + 32) + 80);
        *buf = 136315650;
        v22 = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]_block_invoke";
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s TRPId:%@ TCUPackage:%@", buf, 0x20u);
      }

      v15 = [*(*(a1 + 32) + 96) processTCUPackage:v12 requestId:*(a1 + 40)];
      if (v15)
      {
        v16 = [[NSArray alloc] initWithObjects:{v15, 0}];
        v17 = [*(a1 + 32) _generateNewTRPId];
        v18 = [objc_alloc(sub_10010DA0C()) initWithTrpCandidateId:v17 requestId:*(*(a1 + 32) + 88) tcuList:v16 userId:v7];
        v19 = CSLogCategoryRequest;
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v22 = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]_block_invoke";
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s trpCandidate:%@", buf, 0x16u);
        }

        [*(a1 + 48) addObject:v18];
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
      }

      else
      {
        v20 = CSLogCategoryRequest;
        if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v22 = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s updatedTCUPackage is nil!", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSAttSiriTCUGenerator _processMultiUserResultCandidate:withId:isScoreRefreshAllowed:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s TCUPackage is nil!", buf, 0xCu);
    }
  }
}

Class sub_10010E708(uint64_t a1)
{
  sub_10010C260();
  result = objc_getClass("SMTMultiUserTRPCandidate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10029E3B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_10010E778(v3);
  }

  return result;
}

void sub_10010E778(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setMultiUserTrpCandidateId:v3];
  [v4 setRequestId:a1[5]];
  [v4 setTrpCandidateList:a1[6]];
}

void sub_10010EA04(id a1)
{
  v1 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[CSAttSiriTCUGenerator processReadyForExecutionForRequestId:withTrpId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s ", &v2, 0xCu);
  }
}

void sub_10010EB44(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 112) updateTcuState:?];
    if (v2)
    {
      v3 = CSLogCategoryRequest;
      if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v10 = "[CSAttSiriTCUGenerator processTCUUpdateMessage:]_block_invoke";
        v11 = 2112;
        v12 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s finalizedTRPId:%@", buf, 0x16u);
      }

      [*(*(a1 + 40) + 160) processTCUFinalizedForTrpId:v2 withCompletion:&stru_100251B38];
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10010ED08;
    v7[3] = &unk_100251B60;
    v4 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    v8 = v2;
    v5 = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v6 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSAttSiriTCUGenerator processTCUUpdateMessage:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s TCU State Update blob is nil!", buf, 0xCu);
    }
  }
}

void sub_10010ED08(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 112) getRequestIdForTCUId:v7];
  if (v6)
  {
    [*(a1 + 32) _deliverTCUUpdateForTCUId:v7 withTCUAccepted:objc_msgSend(v5 forRequestId:"unsignedIntValue") != 3 isFinal:{v6, *(a1 + 40) != 0}];
  }
}

void sub_10010EDAC(id a1, BOOL a2, double a3, CSEndpointerMetrics *a4)
{
  v4 = a2;
  v5 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSAttSiriTCUGenerator processTCUUpdateMessage:]_block_invoke";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s foundMatchingTcu:%u", &v6, 0x12u);
  }
}

void sub_10010EF18(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) recognitionTaskCompletionReceivers];
    v3 = [v2 containsObject:*(a1 + 32)];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 40) recognitionTaskCompletionReceivers];
      [v4 addObject:*(a1 + 32)];
    }
  }
}

void sub_10010F068(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) executionStateReceivers];
    v3 = [v2 containsObject:*(a1 + 32)];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 40) executionStateReceivers];
      [v4 addObject:*(a1 + 32)];
    }
  }
}

void sub_10010F1B8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) tcuReceivers];
    v3 = [v2 containsObject:*(a1 + 32)];

    if ((v3 & 1) == 0)
    {
      v5 = [*(a1 + 40) tcuReceivers];
      [v5 addObject:*(a1 + 32)];
    }
  }

  else
  {
    v4 = CSLogCategoryRequest;
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "[CSAttSiriTCUGenerator addTCUReceiver:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s receiver is nil!", buf, 0xCu);
    }
  }
}

void sub_10010F3C0(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = v1[11];
  v4 = CSLogCategoryRequest;
  if (v2 == v3)
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v7 = 136315394;
      v8 = "[CSAttSiriTCUGenerator updateInvocationType:forRequestId:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s configure invocationType to:%@", &v7, 0x16u);
      v1 = a1[5];
    }

    [v1 setRequestInvocationType:a1[6]];
  }

  else if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "[CSAttSiriTCUGenerator updateInvocationType:forRequestId:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s received requestId :%@ mismatch with currentRequestId:%@", &v7, 0x20u);
  }
}

void sub_10010F5B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 88);
  v4 = CSLogCategoryRequest;
  if (v1 == v3)
  {
    if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = 136315394;
      v8 = "[CSAttSiriTCUGenerator updateAFTMOperationalStatus:forRequestId:]_block_invoke";
      v9 = 1024;
      LODWORD(v10) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s aftmOperational status(%u) received", &v7, 0x12u);
      v2 = *(a1 + 40);
    }

    *(v2 + 14) = *(a1 + 48);
  }

  else if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "[CSAttSiriTCUGenerator updateAFTMOperationalStatus:forRequestId:]_block_invoke";
    v9 = 2112;
    v10 = v1;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s aftm Status update requestId(%@) did not match currentRequestId:(%@)!", &v7, 0x20u);
  }
}

void sub_10010F79C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = [[CSEndpointDelayReporter alloc] initWithRequestMHUUID:*(*(a1 + 32) + 56) turnIdentifier:*(*(a1 + 32) + 168) withMedocEnabled:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
}

void sub_10010F8CC(id *a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[CSAttSiriTCUGenerator startWithRecordContext:withRequestId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v11, 0xCu);
  }

  [a1[4] _reset];
  v3 = [a1[4] _generateNewTRPId];
  v4 = a1[4];
  v5 = v4[9];
  v4[9] = v3;

  objc_storeStrong(a1[4] + 10, *(a1[4] + 9));
  objc_storeStrong(a1[4] + 11, a1[5]);
  *(a1[4] + 13) = [a1[6] speechEvent];
  v6 = [NSUUID alloc];
  v7 = [a1[6] turnIdentifier];
  v8 = [v6 initWithUUIDString:v7];
  v9 = a1[4];
  v10 = v9[21];
  v9[21] = v8;
}

id sub_10010FAA8(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriTCUGenerator registerUresNode:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  objc_storeWeak((*(a1 + 32) + 40), *(a1 + 40));
  result = *(*(a1 + 32) + 96);
  if (result)
  {
    return [result registerInfoProviderNode:*(a1 + 40)];
  }

  return result;
}

id sub_10010FBE8(uint64_t a1)
{
  v2 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriTCUGenerator reset]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  return [*(a1 + 32) _reset];
}

void sub_100110084(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 9) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) != 0 && *(a1 + 40) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
        LODWORD(v7) = *(a1 + 48);
        [v6 spgEndpointAnalyzer:*(*(a1 + 32) + 40) hasSilenceScoreEstimate:v7 clientProcessedAudioTimeMS:?];

        ++v5;
      }

      while (v5 < *(a1 + 40));
    }
  }
}

id sub_10011031C(uint64_t a1)
{
  result = [*(a1 + 40) silencePosterior];
  *(*(a1 + 32) + 40) = v3;
  return result;
}

id sub_1001104C0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) getFrameDurationMs];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10011056C(uint64_t a1)
{
  [*(*(a1 + 32) + 32) endAudio];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSPGEndpointAnalyzer stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stopped monitoring : EARCaesuraSilencePosteriorGenerator", &v5, 0xCu);
  }
}

void sub_100110784(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v2 = +[CSAsset fallBackAssetResourcePath];
  v3 = [v2 stringByAppendingPathComponent:@"hybridendpointer.json"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [[EARCaesuraSilencePosteriorGenerator alloc] initWithConfigFile:v3];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    if (v10)
    {
      [v10 setDelegate:?];
      v11 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 32);
        v14 = 136315394;
        v15 = "[CSSPGEndpointAnalyzer reset]_block_invoke";
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : EARCaesuraSilencePosteriorGenerator: %{public}@", &v14, 0x16u);
      }

      v9 = *(a1 + 32);
    }

    *(v9 + 40) = 0x3FF0000000000000;
  }

  else
  {
    v13 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSSPGEndpointAnalyzer reset]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to initialize caesuraSPG, stopping monitoring", &v14, 0xCu);
    }
  }
}

id sub_100110B28(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100110B9C;
  v5[3] = &unk_100252B98;
  v5[4] = v3;
  v5[5] = a2;
  v6 = a3;
  return [v3 enumerateObserversInQueue:v5];
}

uint64_t sub_1001110C4(uint64_t result)
{
  v1 = *(result + 40);
  if ((v1 - 2) <= 5)
  {
    *(*(result + 32) + 32) = v1 - 1;
  }

  return result;
}

void sub_100111180(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
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
          [v7 voiceTriggerGotSuperVector:{*(a1 + 40), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100111318(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 keywordDetectorDidDetectKeyword];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_1001114F0(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 8);
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
          [v7 voiceTriggerDidRejected:a1[5] deviceId:{a1[6], v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001116DC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
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
          [v7 voiceTriggerDidDetectSpeakerReject:{*(a1 + 40), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001118DC(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 8);
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
          [v7 voiceTriggerDidDetectNearMiss:a1[5] deviceId:{a1[6], v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100111BAC(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 32);
      v4 = v2;
      v5 = CSHearstRouteStatusGetName();
      v6 = *(*(a1 + 32) + 48);
      *buf = 136315650;
      v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
      v45 = 2112;
      v46 = v5;
      v47 = 2050;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Hearst Route Status=%@, splitterState = %{public}lu", buf, 0x20u);
    }

    v7 = *(a1 + 32);
    if ((*(v7 + 48) & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v8 = *(v7 + 32);
      if (v8 == 6 || v8 == 1)
      {
        v10 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        *buf = 136315138;
        v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
        v11 = "%s Hearst is routed. Ignore voice trigger notification from other remote devices.";
        goto LABEL_26;
      }
    }
  }

  if (*(a1 + 72) == 1 && +[CSUtils supportRemoteDarwinVoiceTrigger])
  {
    v12 = +[CSRemoteDarwinDeviceInfo sharedInstance];
    if ([v12 hasDarwinDeviceConnected])
    {
      v13 = +[CSRemoteDarwinDeviceInfo sharedInstance];
      if ([v13 hasDarwinDeviceHandleVoiceTrigger])
      {
        v14 = *(a1 + 80);

        if (v14 == 1)
        {
          v10 = CSLogContextFacilityCoreSpeech;
          if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_48;
          }

          *buf = 136315138;
          v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
          v11 = "%s Darwin device connected, ignore trigger from Gibraltar machine";
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_21:
  v15 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  if (![v15 isOtherNonEligibleAppRecording])
  {

    goto LABEL_28;
  }

  v16 = *(a1 + 72);

  if (v16 == 2 && ((CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac() && (+[CSUtils shouldBlockVoiceTriggerWhenOtherAppRecording]& 1) != 0))
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 136315138;
    v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
    v11 = "%s Other non eligible app is recording, ignore trigger from Darwin device";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_48:
    v32 = *(a1 + 64);
    if (v32)
    {
      (*(v32 + 16))();
    }

    return;
  }

LABEL_28:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = *(*(a1 + 32) + 8);
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v38 + 1) + 8 * i) voiceTriggerDidDetectKeyword:*(a1 + 40) deviceId:{*(a1 + 48), v38}];
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  kdebug_trace();
  kdebug_trace();
  v22 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v22;
    v26 = [v23 _createVoiceTriggerEventInfoString:v24];
    *buf = 136315394;
    v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
    v45 = 2114;
    v46 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) _printVoiceTriggerMetricsString:{*(a1 + 40), v38}];
  v27 = *(a1 + 72);
  v28 = CSLogContextFacilityCoreSpeech;
  if (v27 == 2)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Notifying Darwin VoiceTrigger Trigger!!!!", buf, 0xCu);
    }

    if (CSIsOSX())
    {
      v30 = [CSMyriadPHash decodeWithMyriadPHash:*(a1 + 56)];
      [v30 absTime];
      v31 = AFMachAbsoluteTimeAddTimeInterval();
    }

    else
    {
      v31 = 0;
    }

    v33 = +[CSSiriLauncher sharedLauncher];
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v37 = [NSNumber numberWithUnsignedLongLong:v31];
    [v33 notifyDarwinVoiceTrigger:v34 deviceId:v35 myriadPHash:v36 myriadLateActivationExpirationTime:v37 completion:*(a1 + 64)];
  }

  else
  {
    if (v27 != 1)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
        v45 = 2050;
        v46 = v27;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Unsupported trigger type : %{public}lu", buf, 0x16u);
      }

      goto LABEL_48;
    }

    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[CSVoiceTriggerEventsCoordinator _notifyRemoteTriggerEvent:myriadHash:remoteTriggerType:remoteDeviceId:isTriggeredFromFullWake:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Notifying Gibraltar VoiceTrigger Trigger!!!!", buf, 0xCu);
    }

    v29 = +[CSSiriLauncher sharedLauncher];
    [v29 notifyBuiltInVoiceTrigger:*(a1 + 40) myriadPHash:*(a1 + 56) completion:*(a1 + 64)];
  }
}

void sub_1001126D4(uint64_t a1)
{
  if ([*(a1 + 32) _shouldIgnoreVoiceTriggerEvent:*(a1 + 40)])
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }

    return;
  }

  v4 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
  [v4 setVoiceTriggerInfo:*(a1 + 40) deviceId:*(a1 + 48)];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v36 + 1) + 8 * i) voiceTriggerDidDetectKeyword:*(a1 + 40) deviceId:{*(a1 + 48), v36}];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }

  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Notifying VoiceTrigger Trigger!!!!", buf, 0xCu);
    v10 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v10;
    v14 = [v11 _createVoiceTriggerEventInfoString:v12];
    *buf = 136315394;
    v41 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]_block_invoke";
    v42 = 2114;
    v43 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  [*(a1 + 32) _printVoiceTriggerMetricsString:{*(a1 + 40), v36}];
  kdebug_trace();
  kdebug_trace();
  if (!CSIsHorseman() || ([*(a1 + 32) _isVoiceTriggerFromRemora:*(a1 + 40)] & 1) != 0)
  {
    if (+[CSUtils supportHomeKitAccessory](CSUtils, "supportHomeKitAccessory") && [*(a1 + 32) _isVoiceTriggerFromRemora:*(a1 + 40)])
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Activating Siri on Homekit accessory", buf, 0xCu);
      }

      v16 = [*(a1 + 32) _myriadPhashFromVoiceTriggerInfo:*(a1 + 40)];
      v17 = +[CSSiriLauncher sharedLauncher];
      [v17 notifyRemoraVoiceTrigger:*(a1 + 40) myriadPHash:v16 deviceId:*(a1 + 48) completion:*(a1 + 56)];
      goto LABEL_49;
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = kVTEIfirstPassTriggerSource;
      v20 = [v18 objectForKeyedSubscript:kVTEIfirstPassTriggerSource];
      if (v20)
      {
        v21 = v20;
        v22 = [*(a1 + 40) objectForKeyedSubscript:v19];
        v23 = [v22 isEqualToString:kVTEIFirstPassTriggeredFromJarvis];

        if (v23)
        {
          v24 = kVTEItriggerEndMachTime;
          v25 = [*(a1 + 40) objectForKeyedSubscript:kVTEItriggerEndMachTime];

          if (v25)
          {
            v26 = [*(a1 + 40) objectForKeyedSubscript:v24];
            v27 = [v26 unsignedIntegerValue];

            v16 = [CSMyriadPHash generateEmptyPHash:v27 writeFile:0];
          }

          else
          {
            v35 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v41 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]_block_invoke";
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s Jarvis VoiceTrigger result doesn't have trigger end mach time", buf, 0xCu);
            }

            v16 = 0;
          }

          v17 = +[CSSiriLauncher sharedLauncher];
          [v17 notifyCarPlayVoiceTrigger:*(a1 + 40) deviceId:*(a1 + 48) myriadPHash:v16 completion:*(a1 + 56)];
          goto LABEL_49;
        }
      }

      v30 = *(a1 + 40);
      if (v30)
      {
        if (([CSUtils isVoiceTriggerFromExclaveWithVTEI:?]& 1) != 0)
        {
          v16 = objc_alloc_init(CSMyriadPHash);
          v17 = [(CSMyriadPHash *)v16 generatePHashFromExclaveVoiceTriggerInfo:*(a1 + 40) writeFile:0];
          v31 = +[CSSiriLauncher sharedLauncher];
          [v31 notifyBuiltInVoiceTrigger:*(a1 + 40) myriadPHash:v17 completion:*(a1 + 56)];

          v32 = CSLogContextFacilityCoreSpeech;
          if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
LABEL_44:
            notify_post("com.apple.coreaudio.borealisTrigger");
            goto LABEL_49;
          }

          *buf = 136315138;
          v41 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]_block_invoke";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s notifying built-in VT trigger by notify_post", buf, 0xCu);
          goto LABEL_44;
        }

        v30 = *(a1 + 40);
      }
    }

    else
    {
      v30 = 0;
    }

    if ([*(a1 + 32) _isVoiceTriggerFromHearst:v30])
    {
      v16 = +[CSSiriLauncher sharedLauncher];
      [(CSMyriadPHash *)v16 notifyBluetoothDeviceVoiceTrigger:*(a1 + 40) deviceId:*(a1 + 48) completion:*(a1 + 56)];
LABEL_50:

      return;
    }

    v16 = objc_alloc_init(CSMyriadPHash);
    v17 = [(CSMyriadPHash *)v16 generatePHashFromVoiceTriggerInfo:*(a1 + 40) writeFile:0];
    v34 = +[CSSiriLauncher sharedLauncher];
    [v34 notifyBuiltInVoiceTrigger:*(a1 + 40) myriadPHash:v17 completion:*(a1 + 56)];

    v32 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 136315138;
    v41 = "[CSVoiceTriggerEventsCoordinator _notifyTriggerEvent:deviceId:completion:]_block_invoke";
    goto LABEL_43;
  }

  v28 = +[CSFPreferences sharedPreferences];
  v29 = [v28 useSiriActivationSPIForHomePod];

  if (v29)
  {
    v16 = [*(a1 + 32) _myriadPhashFromVoiceTriggerInfo:*(a1 + 40)];
    v17 = +[CSSiriLauncher sharedLauncher];
    [v17 notifyBuiltInVoiceTrigger:*(a1 + 40) myriadPHash:v16 completion:*(a1 + 56)];
LABEL_49:

    goto LABEL_50;
  }

  notify_post("com.apple.coreaudio.borealisTrigger");
  v33 = *(a1 + 56);
  if (v33)
  {
    (*(v33 + 16))();
  }
}

void sub_100113244(id a1)
{
  v3[0] = kVTEISecondPassAudioStreamStartTime;
  v3[1] = kVTEISecondPassAudioStreamReadyTime;
  v3[2] = kVTEISecondPassFirstAudioPacketReceptionTime;
  v3[3] = kVTEISecondPassLastAudioPacketReceptionTime;
  v3[4] = kVTEISecondPassCheckerModelKeywordDetectionStartTime;
  v3[5] = kVTEISecondPassCheckerModelKeywordDetectionEndTime;
  v1 = [NSArray arrayWithObjects:v3 count:6];
  v2 = qword_10029E3F0;
  qword_10029E3F0 = v1;
}

void sub_1001134D8(id a1)
{
  v3[0] = kVTEIconfigVersion;
  v3[1] = kVTEIeffectiveThreshold;
  v3[2] = kVTEItriggerScore;
  v3[3] = kVTEIrecognizerScore;
  v3[4] = kVTEIrecognizerScaleFactor;
  v3[5] = kVTEIactiveChannel;
  v3[6] = kVTEIfirstPassStartSampleCount;
  v3[7] = kVTEIfirstPassFireSampleCount;
  v3[8] = kVTEItriggerStartSampleCount;
  v3[9] = kVTEItriggerEndSampleCount;
  v3[10] = kVTEItriggerFireSampleCount;
  v3[11] = kVTEItriggerStartSeconds;
  v3[12] = kVTEItriggerEndSeconds;
  v3[13] = kVTEItriggerFireSeconds;
  v3[14] = kVTEItriggerStartMachTime;
  v3[15] = kVTEItriggerEndMachTime;
  v3[16] = kVTEItriggerFireMachTime;
  v3[17] = kVTEIearlyDetectFiredMachTime;
  v3[18] = kVTEIextraSamplesAtStart;
  v3[19] = kVTEIanalyzerPrependingSamples;
  v3[20] = kVTEIanalyzerTrailingSamples;
  v3[21] = kVTEIuptime;
  v3[22] = kVTEIdowntime;
  v3[23] = kVTEIfirstPassTriggerSource;
  v3[24] = kVTEIisMediaPlaying;
  v3[25] = kVTEImediaVolume;
  v1 = [NSArray arrayWithObjects:v3 count:26];
  v2 = qword_10029E3E0;
  qword_10029E3E0 = v1;
}

void *sub_100113774(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 8) removeObject:?];
  }

  return result;
}

void *sub_100113824(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 8) addObject:?];
  }

  return result;
}

void sub_1001138B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CSVoiceTriggerEventsCoordinator start]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
      v1 = *(a1 + 32);
    }

    *(v1 + 40) = 1;
    v4 = +[CSAudioRouteChangeMonitor sharedInstance];
    [v4 addObserver:*(a1 + 32)];

    v5 = +[CSAudioRouteChangeMonitor sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100113A8C;
    v9[3] = &unk_100253078;
    v9[4] = *(a1 + 32);
    [v5 getHearstRouteStatus:v9];

    v6 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
    [v6 addObserver:*(a1 + 32)];

    v7 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100113B00;
    v8[3] = &unk_100253050;
    v8[4] = *(a1 + 32);
    [v7 splitterState:v8];
  }
}

void sub_100113A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113B80;
  v4[3] = &unk_100253C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100113B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100113B74;
  v4[3] = &unk_100253C98;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100113CD8(id a1)
{
  v1 = objc_alloc_init(CSVoiceTriggerEventsCoordinator);
  v2 = qword_10029E3D0;
  qword_10029E3D0 = v1;
}

void sub_1001146C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CSUtils isJarvisAudioRouteWithRecordRoute:v5];
  v8 = [CSUtils isBuiltInRecordRoute:v5];
  v9 = [CSUtils isPlaybackRouteCarAudio:v6];
  v10 = [CSUtils isBuiltInRouteWithRecordRoute:v5 playbackRoute:v6];
  v11 = CSLogCategoryRequest;
  if (os_log_type_enabled(CSLogCategoryRequest, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "+[CSAttSiriMagusBargeInDecisionChecker isBargeInAllowedForAudioSource:withCompletion:]_block_invoke";
    v15 = 2112;
    *v16 = v5;
    *&v16[8] = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s recordRoute:%@, playbackRoute:%@", &v13, 0x20u);
    v11 = CSLogCategoryRequest;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136316162;
    v14 = "+[CSAttSiriMagusBargeInDecisionChecker isBargeInAllowedForAudioSource:withCompletion:]_block_invoke";
    v15 = 1024;
    *v16 = v7;
    *&v16[4] = 1024;
    *&v16[6] = v8;
    LOWORD(v17) = 1024;
    *(&v17 + 2) = v9;
    HIWORD(v17) = 1024;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s isRecordRouteJarvis:%u, isBuiltInRecordRoute:%u, isPlaybackRouteCarAudio:%u, isBuiltInRecordAndPlaybackRoute:%u", &v13, 0x24u);
    v11 = CSLogCategoryRequest;
  }

  v12 = (*(a1 + 40) & (v7 | v9) ^ 1) & (v7 | v9 ^ 1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "+[CSAttSiriMagusBargeInDecisionChecker isBargeInAllowedForAudioSource:withCompletion:]_block_invoke";
    v15 = 1024;
    *v16 = v12 & 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Is BargeIn allowed: %u", &v13, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100114EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_100114F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100115040;
  v6[3] = &unk_100253C48;
  v6[4] = v3;
  v7 = WeakRetained;
  v5 = WeakRetained;
  dispatch_async(v4, v6);
}

void sub_100114FEC(uint64_t a1)
{
  v2 = [*(a1 + 32) proxies];
  [v2 addObject:*(a1 + 40)];
}

void sub_100115040(uint64_t a1)
{
  v2 = [*(a1 + 32) proxies];
  [v2 removeObject:*(a1 + 40)];
}

void sub_100117678(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 104)])
  {
    if ([*(a1 + 40) _shouldCreateODLDProcessor:*(*(a1 + 40) + 88)])
    {
      v2 = *(a1 + 40);
      v3 = [v2[17] configVersion];
      [*(*(a1 + 40) + 136) odldScore];
      v5 = v4;
      [*(*(a1 + 40) + 136) outputAnchor];
      v7 = v6;
      v8 = *(a1 + 40);
      v9 = *(v8 + 72);
      [*(v8 + 112) floatValue];
      v11 = v10;
      v12 = *(a1 + 40);
      v13 = *(v12 + 144);
      [*(v12 + 136) conversationalScore];
      LODWORD(v15) = v14;
      LODWORD(v16) = v5;
      LODWORD(v17) = v7;
      LODWORD(v18) = v11;
      [v2 _logMHOdldFalseTriggerMitigationScores:v3 withOdldScores:v9 withOdldScoreThreshold:v13 withSocialScore:1 withAnchorRequestId:v16 withAnchorSocialScore:0.0 withPrevRequestId:v17 withConversationalScore:v18 withSuccess:v15];

      v19 = *(a1 + 48);
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = *(a1 + 49);

      [v20 _saveContextForMitigationDecision:v19 forRequestId:v21 isFinal:v22];
    }
  }

  else
  {
    v23 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v24 = *(*(a1 + 40) + 104);
      v25 = 136315394;
      v26 = "[CSAttSiriNLDAClassifierNode informMitigationDecision:forRequestId:isFinal:]_block_invoke";
      v27 = 2112;
      v28 = v24;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Request id doesn't match current request id %@, do not save mitigation result", &v25, 0x16u);
    }
  }
}

void sub_100117D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100117D60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100117D78(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCreateODLDProcessor:*(*(a1 + 32) + 88)] & 1) == 0)
  {
    v19 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 136315138;
    v22 = "[CSAttSiriNLDAClassifierNode processSpeechPackageSync:]_block_invoke";
    v20 = "%s Not running ODLD for BP";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &v21, 0xCu);
    return;
  }

  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v19 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 136315138;
    v22 = "[CSAttSiriNLDAClassifierNode processSpeechPackageSync:]_block_invoke";
    v20 = "%s Input ctx not found, nothing to do";
    goto LABEL_15;
  }

  v3 = [*(a1 + 40) recognition];
  v4 = [v3 oneBestTranscript];
  [v2 updateWithInputUtt:v4];

  v5 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 96);
    v21 = 136315394;
    v22 = "[CSAttSiriNLDAClassifierNode processSpeechPackageSync:]_block_invoke";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Input Context %@", &v21, 0x16u);
  }

  v7 = mach_absolute_time();
  v8 = [*(*(a1 + 32) + 80) processInputContext:*(*(a1 + 32) + 96)];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = mach_absolute_time();
  v12 = AFSiriLogContextSpeech;
  v13 = v12;
  v14 = *(a1 + 56);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "NLDAClassifier_ProcessSpeechPackage", "", &v21, 2u);
  }

  v15 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v11 - v7;
    v17 = v15;
    [CSFTimeUtils hostTimeToSeconds:v16];
    v21 = 136315394;
    v22 = "[CSAttSiriNLDAClassifierNode processSpeechPackageSync:]_block_invoke";
    v23 = 2048;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s NLDA inference took: %.3f seconds", &v21, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 136), *(*(*(a1 + 48) + 8) + 40));
}

void sub_100118110(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[CSAttSiriNLDAClassifierNode setPrefetchedAsset:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s setting prefetched asset %@", &v4, 0x16u);
  }
}

id sub_1001182F4(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAttSiriNLDAClassifierNode stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;

  return [*(a1 + 32) _releaseNldaProcessingTransaction];
}

void sub_100118510(id *a1)
{
  v2 = *(a1[4] + 6);
  if (v2)
  {
    v3 = [v2 getCategoryKeyWithRecordCtx:a1[5]];
    v4 = [*(a1[4] + 6) nldaConfigFileForCategory:v3];
    objc_storeStrong(a1[4] + 11, a1[5]);
    objc_storeStrong(a1[4] + 13, a1[6]);
    [a1[4] _holdTransactionForNldaProcessing];
    if ([a1[4] _shouldCreateODLDProcessor:a1[5]])
    {
      v5 = mach_absolute_time();
      v6 = os_signpost_id_generate(AFSiriLogContextSpeech);
      v7 = AFSiriLogContextSpeech;
      v8 = v7;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "NLDAClassifier_Create", "", buf, 2u);
      }

      v27 = 0;
      v9 = [[SLODLDProcessor alloc] initWithConfigFile:v4 error:&v27];
      v10 = v27;
      v11 = a1[4];
      v12 = v11[10];
      v11[10] = v9;

      v13 = AFSiriLogContextSpeech;
      v14 = v13;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v6, "NLDAClassifier_Create", "", buf, 2u);
      }

      v15 = mach_absolute_time();
      v16 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        [CSFTimeUtils hostTimeToSeconds:v15 - v5];
        *buf = 136315394;
        v29 = "[CSAttSiriNLDAClassifierNode startWithRecordContext:withRequestId:]_block_invoke";
        v30 = 2048;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s NLDA loadtime took: %.3f seconds", buf, 0x16u);
      }

      if (v10)
      {
        v19 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          v25 = v19;
          v26 = [v10 localizedDescription];
          *buf = 136315394;
          v29 = "[CSAttSiriNLDAClassifierNode startWithRecordContext:withRequestId:]_block_invoke";
          v30 = 2114;
          v31 = *&v26;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Unable to create ODLD model with error: %{public}@", buf, 0x16u);
        }

        [a1[4] _releaseNldaProcessingTransaction];
      }

      else
      {
        v23 = [a1[4] _createInputContextForRecordCtx:a1[5]];
        v24 = a1[4];
        v10 = v24[12];
        v24[12] = v23;
      }
    }

    else
    {
      v21 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[CSAttSiriNLDAClassifierNode startWithRecordContext:withRequestId:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s ODLD is disabled given record ctx", buf, 0xCu);
      }

      v22 = a1[4];
      v10 = v22[10];
      v22[10] = 0;
    }
  }

  else
  {
    v20 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAttSiriNLDAClassifierNode startWithRecordContext:withRequestId:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Prefetched asset not set", buf, 0xCu);
    }
  }
}

id sub_100118DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = v2 / +[CSConfig inputRecordingNumberOfChannels];
  v4 = v3 / +[CSConfig inputRecordingSampleByteDepth];
  [*(*(a1 + 40) + 200) addSamples:objc_msgSend(*(a1 + 32) numSamples:{"bytes"), v4}];
  v5 = *(a1 + 40);
  if (*(v5 + 168) == 1 && (*(v5 + 169) & 1) == 0)
  {
    v6 = [CSAudioChunk alloc];
    v7 = *(a1 + 32);
    v8 = +[CSConfig inputRecordingNumberOfChannels];
    v9 = +[CSConfig inputRecordingSampleByteDepth];
    LOBYTE(v40) = +[CSConfig inputRecordingIsFloat];
    v10 = [v6 initWithData:v7 numChannels:v8 numSamples:v4 sampleByteDepth:v9 startSampleCount:0 hostTime:0 remoteVAD:0 isFloat:v40];
    v11 = [*(*(a1 + 40) + 192) getBestAnalyzedResultsFromAudioChunk:v10];
    [v11 bestScore];
    v13 = v12;
    [*(*(a1 + 40) + 192) getThreshold];
    if (v13 >= v14)
    {
      *(*(a1 + 40) + 208) = [v11 bestStart];
      [*(*(a1 + 40) + 192) reset];
      v15 = +[CSSpeechManager sharedManager];
      v16 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 224));
      v18 = [WeakRetained deviceID];
      v19 = [CSDeviceActivationEvent remoteMicVoiceTriggerEvent:v18 activationInfo:0 hostTime:mach_absolute_time()];
      [v16 notifyActivationEvent:v19 completion:&stru_100251D30];
    }
  }

  while (1)
  {
    v20 = *(*(a1 + 40) + 216);
    +[CSConfig inputRecordingBufferDuration];
    v22 = v21;
    +[CSConfig inputRecordingSampleRate];
    v24 = v20 + v22 * v23;
    result = [*(*(a1 + 40) + 200) sampleCount];
    if (v24 >= result)
    {
      break;
    }

    v26 = *(a1 + 40);
    v27 = *(v26 + 200);
    v28 = *(v26 + 216);
    +[CSConfig inputRecordingBufferDuration];
    v30 = v29;
    +[CSConfig inputRecordingSampleRate];
    v32 = [v27 copybufferFrom:v28 to:(v28 + v30 * v31)];
    +[CSConfig inputRecordingBufferDuration];
    v34 = v33;
    +[CSConfig inputRecordingSampleRate];
    *(*(a1 + 40) + 216) = (*(*(a1 + 40) + 216) + v34 * v35);
    v36 = *(a1 + 40);
    if (*(v36 + 169) == 1)
    {
      v37 = objc_loadWeakRetained((v36 + 184));
      v38 = objc_opt_respondsToSelector();

      if (v38)
      {
        v39 = objc_loadWeakRetained((*(a1 + 40) + 184));
        [v39 audioEngineBufferAvailable:*(a1 + 40) audioStreamHandleId:*(a1 + 48) buffer:v32 remoteVAD:0 atTime:*(a1 + 56) isFileLoadedBuffer:*(a1 + 64)];
      }
    }
  }

  return result;
}

void sub_1001191BC(uint64_t a1)
{
  *(*(a1 + 32) + 169) = 0;
  *(*(a1 + 32) + 208) = 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v4 audioEngineDidStopRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) reason:{"audioStreamHandleId"), 0}];
  }
}

void sub_100119314(uint64_t a1)
{
  *(*(a1 + 32) + 169) = 1;
  *(*(a1 + 32) + 216) = [*(*(a1 + 32) + 200) sampleCount];
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3)
  {
    if (v3 >> 6 <= 0x7C)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 - 8000;
    }

    *(v2 + 216) = v4;
    v2 = *(a1 + 32);
  }

  [*(v2 + 192) reset];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v7 audioEngineDidStartRecord:*(a1 + 32) audioStreamHandleId:objc_msgSend(*(a1 + 32) successfully:"audioStreamHandleId") error:{1, 0}];
  }
}

id sub_100119604(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = CSFileAudioInjectionHearstEngine;
  objc_msgSendSuper2(&v4, "stopAudioStreamWithOutError:", 0);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSFileAudioInjectionHearstEngine;
  objc_msgSendSuper2(&v3, "stop");
  return [*(*(a1 + 32) + 200) reset];
}

void sub_1001196FC(uint64_t a1)
{
  v15.receiver = *(a1 + 32);
  v15.super_class = CSFileAudioInjectionHearstEngine;
  objc_msgSendSuper2(&v15, "start");
  v2 = +[CSAsset defaultFallBackAssetForVoiceTrigger];
  v3 = [CSVoiceTriggerFirstPassConfigDecoder decodeConfigFrom:v2];
  v4 = [CSKeywordAnalyzerNDAPI alloc];
  v5 = [v3 configPathNDAPI];
  v6 = [v2 resourcePath];
  v7 = [v4 initWithConfigPath:v5 resourcePath:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 192);
  *(v8 + 192) = v7;

  v10 = *(*(a1 + 32) + 192);
  if (!v10)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v17 = "[CSFileAudioInjectionHearstEngine start]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%s Failed to create NDAPI", buf, 0xCu);
      v10 = *(*(a1 + 32) + 192);
    }

    else
    {
      v10 = 0;
    }
  }

  [v10 setActiveChannel:0];
  v12 = *(a1 + 32);
  v13 = +[CSAudioStartStreamOption noAlertOption];
  v14.receiver = v12;
  v14.super_class = CSFileAudioInjectionHearstEngine;
  objc_msgSendSuper2(&v14, "startAudioStreamWithOption:withOutError:", v13, 0);
}

void sub_100119F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (v3)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = v4;
      v9 = [v3 localizedDescription];
      *buf = 136315394;
      v13 = "[CSAggressiveECModeHandler _configureAggressiveEchoCancellationParams:]_block_invoke";
      v14 = 2114;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to set Aggressive EC mode : %{public}@", buf, 0x16u);
    }

    if (*(a1 + 40) == 1)
    {
      *(*(a1 + 32) + 32) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"removed";
      if (*(a1 + 40))
      {
        v5 = @"applied";
      }

      *buf = 136315394;
      v13 = "[CSAggressiveECModeHandler _configureAggressiveEchoCancellationParams:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Aggressive EC mode %@ successfully", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011A13C;
    v10[3] = &unk_100253BF8;
    v10[4] = v6;
    v11 = *(a1 + 40);
    dispatch_async(v7, v10);
  }
}

uint64_t sub_10011A13C(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 10) = v1;
  if ((v1 & 1) == 0)
  {
    *(*(result + 32) + 32) = 0;
  }

  return result;
}

id sub_10011A1D0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[CSAggressiveECModeHandler notifySiriSessionStateTTSOngoing:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s isSpeaking:%u", &v5, 0x12u);
  }

  if (*(a1 + 40) == 1)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  return [*(a1 + 32) _configureAggressiveEchoCancellationParams:?];
}

void sub_10011A348(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v23 = 136315394;
    v24 = "[CSAggressiveECModeHandler setAudioSessionState:]_block_invoke";
    v25 = 2112;
    *v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s sessionInfo:%@", &v23, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"AudioCategory"];
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"AudioMode"];
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"AudioSessionID"];
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"IsActive"];
    v9 = [v8 BOOLValue];

    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315906;
      v24 = "[CSAggressiveECModeHandler setAudioSessionState:]_block_invoke";
      v25 = 2112;
      *v26 = v7;
      *&v26[8] = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s audioSessionId:%@, audioSessionCategory:%@ audioMode:%@", &v23, 0x2Au);
    }

    if ([v5 isEqualToString:kMXSessionAudioCategory_MediaPlayback])
    {
      v11 = [v6 isEqualToString:kMXSessionAudioMode_SpokenAudio];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v5 isEqualToString:kMXSessionAudioCategory_VoiceOver];
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[CSAggressiveECModeHandler setAudioSessionState:]_block_invoke";
      v25 = 1024;
      *v26 = v11;
      *&v26[4] = 1024;
      *&v26[6] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s isReadThisAudioSession:(%u), isVoiceOver:(%u)", &v23, 0x18u);
    }

    if (((v11 | v13) & 1) == 0)
    {
      v22 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315138;
        v24 = "[CSAggressiveECModeHandler setAudioSessionState:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Not a ReadThis or voiceOver audioSession - bail out!", &v23, 0xCu);
      }

      goto LABEL_28;
    }

    *(*(a1 + 40) + 8) = v9;
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = v16[8];
      v18 = v16[10];
      LODWORD(v16) = v16[9];
      v23 = 136315906;
      v24 = "[CSAggressiveECModeHandler setAudioSessionState:]_block_invoke";
      v25 = 1024;
      *v26 = v17;
      *&v26[4] = 1024;
      *&v26[6] = v18;
      LOWORD(v27) = 1024;
      *(&v27 + 2) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s readThisOrVoiceOverSessionActive:(%u) aggressiveEchoCancellationApplied:(%u) inAttendingWindow:(%u)", &v23, 0x1Eu);
    }

    v19 = *(a1 + 40);
    if (*(v19 + 8) == 1)
    {
      if ((*(v19 + 10) & 1) != 0 || *(v19 + 9) != 1)
      {
        goto LABEL_28;
      }

      v20 = 2;
      if (v11)
      {
        v20 = 3;
      }

      *(v19 + 32) = v20;
      v19 = *(a1 + 40);
      v21 = 1;
    }

    else
    {
      if (!*(v19 + 10) || (*(v19 + 32) & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        goto LABEL_28;
      }

      v21 = 0;
    }

    [v19 _configureAggressiveEchoCancellationParams:v21];
LABEL_28:

    return;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v23 = 136315138;
    v24 = "[CSAggressiveECModeHandler setAudioSessionState:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s audio session info is nil - bail out!", &v23, 0xCu);
  }
}

void sub_10011A7C8(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v4[8];
    v6 = v4[10];
    LODWORD(v4) = v4[9];
    v9 = 136316162;
    v10 = "[CSAggressiveECModeHandler setAttendingState:]_block_invoke";
    v11 = 1024;
    v12 = v3;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s attendingStateStart:(%u) readThisOrVoiceOverSessionActive:(%u) aggressiveECParamsApplied:(%u) inAttendingWindow:(%u)", &v9, 0x24u);
  }

  if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 32);
    if ((*(v7 + 9) & 1) == 0)
    {
      *(v7 + 9) = 1;
      v8 = *(a1 + 32);
      if (v8[8] == 1 && (v8[10] & 1) == 0)
      {
        [v8 _configureAggressiveEchoCancellationParams:1];
      }
    }
  }
}

void sub_10011AE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011AEAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B0A4;
  block[3] = &unk_100251DA0;
  v10 = v5;
  v8 = v5;
  objc_copyWeak(v11, (a1 + 32));
  v11[1] = a2;
  dispatch_async(v7, block);

  objc_destroyWeak(v11);
}

void sub_10011AF90(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011B054;
  v7[3] = &unk_100251DF0;
  objc_copyWeak(v8, (a1 + 32));
  v8[1] = a3;
  dispatch_async(v6, v7);

  objc_destroyWeak(v8);
}

void sub_10011B054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveAVVCRecordingClientNumberChange:*(a1 + 40)];
}

void sub_10011B0A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v3;
      v6 = [v2 localizedDescription];
      *buf = 136315394;
      v9 = "[CSAVVCRecordingClientMonitor _startMonitoringWithQueue:]_block_invoke_2";
      v10 = 2114;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to fetch recording client info, error : %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _didReceiveAVVCRecordingClientNumberChange:0];
  }

  else
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 _didReceiveAVVCRecordingClientNumberChange:*(a1 + 48)];
  }
}

void sub_10011B2CC(id a1)
{
  v1 = objc_alloc_init(CSAVVCRecordingClientMonitor);
  v2 = qword_10029E400;
  qword_10029E400 = v1;
}

void sub_10011B728(id a1)
{
  v1 = objc_alloc_init(CSSelfTriggerEnabledMonitorAccessory);
  v2 = qword_10029E410;
  qword_10029E410 = v1;
}

void sub_10011BA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011BAA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10011BABC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[6] + 8);
  if (*(v3 + 24) == 1)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = *(a1[7] + 8);
    obj = *(v8 + 40);
    v9 = [v6 _handleRegisterUaapApp:v7 forLocale:a2 withAssetFiles:a3 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    v3 = *(a1[6] + 8);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + 24) = v9;
}

void sub_10011C0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10011C128(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 lastPathComponent];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = +[NSFileManager defaultManager];
  v17 = 0;
  v8 = [v7 copyItemAtPath:v3 toPath:v6 error:&v17];
  v9 = v17;

  if ((v8 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[5];
      *buf = 136315650;
      v21 = "[CSSpeechUaapXPCConnection _handleRegisterUaapApp:forLocale:withAssetFiles:error:]_block_invoke";
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error while copying incoming asset file for app %@: %@", buf, 0x20u);
    }

    v18 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithFormat:@"Failed to copy incoming UaaP asset file %@: %@", v3, v9];
    v19 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.corespeech.uaap" code:2 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

uint64_t sub_10011C950(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  for (i = 0; i < xpc_array_get_count(v5); ++i)
  {
    v8 = [NSString stringWithUTF8String:xpc_array_get_string(v5, i)];
    [v6 addObject:v8];
  }

  v9 = *(a1 + 32);
  v10 = [NSString stringWithUTF8String:a2];
  [v9 setObject:v6 forKey:v10];

  return 1;
}

void sub_10011CD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011CD58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleClientError:v3];
LABEL_7:

    goto LABEL_8;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleClientMessage:v3];
    goto LABEL_7;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSSpeechUaapXPCConnection activate]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s UaaP XPC connection received an invalid event", &v6, 0xCu);
  }

LABEL_8:
}

void sub_10011D4C4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -536870608)
  {
    v5 = +[CSHostPowerStateMonitorImplDarwin sharedInstance];
    LODWORD(a2) = [v5 _fetchHostStateWithService:a2];

    v6 = +[CSHostPowerStateMonitorImplDarwin sharedInstance];
    [v6 _didReceiveDarwinHostStateChangeNotification:a2];
  }
}

void sub_10011D650(id a1)
{
  v1 = objc_alloc_init(CSHostPowerStateMonitorImplDarwin);
  v2 = qword_10029E420;
  qword_10029E420 = v1;
}

void sub_10011E448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_10011E498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [*(a1 + 32) setExportedObject:WeakRetained];

  v3 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v4 = [*(a1 + 32) remoteObjectProxy];
  [v3 setRemoteObjectProxy:v4];

  v5 = [*(a1 + 40) activeConnection];
  if (v5)
  {
    [v5 setInvalidationHandler:0];
    [v5 setInterruptionHandler:0];
    [*(a1 + 40) setActiveConnection:0];
    [v5 invalidate];
  }

  [*(a1 + 40) setActiveConnection:*(a1 + 32)];
}

void sub_10011E578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = LBAttendingStatesServiceName;
    v5 = v3;
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = v6;
    *buf = 136315906;
    v14 = "[CSAttendingStatesServiceListener listener:shouldAcceptNewConnection:]_block_invoke_2";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    v19 = 1026;
    v20 = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@] Listener Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x26u);
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = [WeakRetained queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10011E8F0;
    v11[3] = &unk_100253C48;
    v11[4] = WeakRetained;
    v12 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_10011E72C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = LBAttendingStatesServiceName;
    v5 = v3;
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = v6;
    *buf = 136315906;
    v14 = "[CSAttendingStatesServiceListener listener:shouldAcceptNewConnection:]_block_invoke_2";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    v19 = 1026;
    v20 = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s [Service:%{public}@] Listener Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x26u);
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = [WeakRetained queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10011E8E0;
    v11[3] = &unk_100253C48;
    v11[4] = WeakRetained;
    v12 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_10011EDA8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10011F34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011F384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained attendingConnection];
    v5 = [WeakRetained attendingConnection];
    *buf = 136315650;
    v10 = "[CSAttendingServiceClient _createClientConnection]_block_invoke";
    v11 = 2114;
    v12 = v4;
    v13 = 1026;
    v14 = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained attendingConnection];

    if (v6)
    {
      v7 = [WeakRetained xpcConnectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011F6E8;
      block[3] = &unk_100253C20;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }
}

void sub_10011F514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained attendingConnection];
    v5 = [WeakRetained attendingConnection];
    *buf = 136315650;
    v10 = "[CSAttendingServiceClient _createClientConnection]_block_invoke_2";
    v11 = 2114;
    v12 = v4;
    v13 = 1026;
    v14 = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained attendingConnection];

    if (v6)
    {
      v7 = [WeakRetained xpcConnectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10011F6A4;
      block[3] = &unk_100253C20;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }
}

id sub_10011F6A4(uint64_t a1)
{
  [*(a1 + 32) setAttendingConnection:0];
  v2 = *(a1 + 32);

  return [v2 setRemoteObjectProxy:0];
}

id sub_10011F6E8(uint64_t a1)
{
  v2 = [*(a1 + 32) attendingConnection];
  [v2 invalidate];

  [*(a1 + 32) setAttendingConnection:0];
  v3 = *(a1 + 32);

  return [v3 setRemoteObjectProxy:0];
}

void sub_10011F8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = v4;
      v8 = [v3 code];
      v9 = [v3 localizedDescription];
      v10 = 136315650;
      v11 = "[CSAttendingServiceClient _setupRemoteServiceProxyObject]_block_invoke";
      v12 = 2050;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s ERR: Attending Remote Object Proxy returned error : %{public}ld (%{public}@)", &v10, 0x20u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }
}

void sub_1001225C0(id a1)
{
  v1 = objc_alloc_init(CSOpportuneSpeakListenerDeviceManager);
  v2 = qword_10029E430;
  qword_10029E430 = v1;
}

void sub_100123A10(id a1)
{
  +[CSConfig inputRecordingSampleRate];
  v2 = v1;
  v3 = [CSSmartSiriVolumeManager alloc];
  LODWORD(v4) = v2;
  v5 = [(CSSmartSiriVolumeManager *)v3 initWithSamplingRate:v4];
  v6 = qword_10029E440;
  qword_10029E440 = v5;
}

void sub_100123AFC(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkSiriInCallEnabled];
  v3 = *(a1 + 32);
  v4 = *(v3 + 12);
  if (v4 == v2)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = @"OFF";
      if (v4)
      {
        v8 = @"ON";
      }

      v9 = 136315394;
      v10 = "[CSSiriInCallEnabledMonitor _siriInCallEnabledDidChangeEnabledDidChange]_block_invoke";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Siri in Call is already %{public}@, received duplicated notification!", &v9, 0x16u);
    }
  }

  else
  {
    *(v3 + 12) = v2;
    v6 = *(a1 + 32);
    v7 = v6[12];

    [v6 _didReceiveSiriInCallChangedInQueue:v7];
  }
}

void sub_100124054(id a1)
{
  v1 = objc_alloc_init(CSSiriInCallEnabledMonitor);
  v2 = qword_10029E450;
  qword_10029E450 = v1;
}

uint64_t sub_10012469C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001246B4(void *a1)
{
  v5 = [*(a1[4] + 168) objectForKeyedSubscript:a1[5]];
  v2 = [v5 inputFeats];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10012528C(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48) ^ 1;
    v5 = *(a1 + 49);
    v11 = 136315906;
    v12 = "[CSAttSiriUresNode didReceiveTCUUpdateForTCUId:withTCUAccepted:forRequestId:isFinal:]_block_invoke";
    v13 = 2114;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Receive TCU status update for requestId: %{public}@, didMitigate: %d, isFinal: %d", &v11, 0x22u);
  }

  if (*(a1 + 32))
  {
    v6 = [*(*(a1 + 40) + 168) objectForKeyedSubscript:?];
    if (!v6)
    {
      v7 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v11 = 136315394;
        v12 = "[CSAttSiriUresNode didReceiveTCUUpdateForTCUId:withTCUAccepted:forRequestId:isFinal:]_block_invoke";
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Rcvd update for invalid requestId %{public}@", &v11, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
    [WeakRetained informMitigationDecision:(*(a1 + 48) & 1) == 0 forRequestId:*(a1 + 32) isFinal:*(a1 + 49)];
  }

  else
  {
    v10 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAttSiriUresNode didReceiveTCUUpdateForTCUId:withTCUAccepted:forRequestId:isFinal:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s RequestId is nil, abort", &v11, 0xCu);
    }
  }
}

void sub_100125718(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "KeyLog - %s Received RC from ASR, make UReS decision", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    v3 = [*(*(a1 + 40) + 168) objectForKeyedSubscript:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 inputFeats];
      v6 = [v5 inputOrigin];
      v7 = v6 == 0;

      if (v7)
      {
        v34 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s Not running ODLD for nil inputOrigin", buf, 0xCu);
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
        v71 = [WeakRetained processSpeechPackageSync:*(a1 + 48)];

        if (v71)
        {
          v9 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v9;
            [v71 odldScore];
            v12 = v11;
            [v71 outputAnchor];
            v14 = v13;
            [v71 conversationalScore];
            *buf = 136315906;
            *&buf[4] = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
            *&buf[12] = 2048;
            *&buf[14] = v12;
            *&buf[22] = 2048;
            v77 = v14;
            LOWORD(v78[0]) = 2048;
            *(v78 + 2) = v15;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s AttSignal: NLDA Score: %.3f Anchor Score: %.3f conversationalScore: %.3f", buf, 0x2Au);
          }

          [v71 odldScore];
          v17 = v16;
          [v71 conversationalScore];
          v19 = v18;
          [v71 odldScore];
          v20 = [NSNumber numberWithFloat:?];
          v21 = [v4 inputFeats];
          [v21 setNldaScore:v20];

          [v71 conversationalScore];
          v22 = [NSNumber numberWithFloat:?];
          v23 = [v4 inputFeats];
          [v23 setConversationalNldaScore:v22];

          v24 = [v71 features];
          v25 = [v4 inputFeats];
          [v25 setNldaMetaInfo:v24];

          [v71 odldScore];
          v26 = [NSNumber numberWithFloat:?];
          v27 = *(*(a1 + 56) + 8);
          v28 = *(v27 + 40);
          *(v27 + 40) = v26;

          v29 = [*(a1 + 48) recognition];
          [v29 processedAudioDuration];
          *(*(*(a1 + 64) + 8) + 24) = v30;
        }

        else
        {
          v19 = -1.0;
          v17 = -1.0;
        }

        v35 = [v4 inputFeats];
        v72 = 0;
        v73 = &v72;
        v74 = 0x2050000000;
        v36 = qword_10029E470;
        v75 = qword_10029E470;
        if (!qword_10029E470)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10012622C;
          v77 = COERCE_DOUBLE(&unk_100253580);
          v78[0] = &v72;
          sub_10012622C(buf);
          v36 = v73[3];
        }

        v37 = v36;
        _Block_object_dispose(&v72, 8);
        v70 = [v36 alloc];
        v38 = [v35 acousticFTMScores];
        [v38 floatValue];
        v40 = v39;
        v41 = [v35 speakerIDScore];
        [v41 floatValue];
        v43 = v42;
        [CSAttSiriUresNode _extractLrnnScoreForResultCandidate:*(a1 + 48)];
        v45 = v44;
        v46 = [v35 checkerScore];
        [v46 floatValue];
        v48 = v47;
        v49 = [v35 inputOrigin];
        v50 = [*(a1 + 48) latticeMitigatorResult];
        [v50 threshold];
        v52 = v51;
        v53 = [*(a1 + 48) latticeMitigatorResult];
        [v53 calibrationScale];
        v55 = v54;
        v56 = [*(a1 + 48) latticeMitigatorResult];
        [v56 calibrationOffset];
        LODWORD(v58) = v57;
        *&v69 = v19;
        *&v59 = v17;
        LODWORD(v60) = v40;
        LODWORD(v61) = v43;
        LODWORD(v62) = v45;
        LODWORD(v63) = v48;
        LODWORD(v64) = v52;
        LODWORD(v65) = v55;
        v66 = [v70 initWithOdldScore:v49 aftmScore:v59 spkrIdScore:v60 lrnnScore:v61 checkerScore:v62 invocationType:v63 lrnnThreshold:v64 lrnnScale:v65 lrnnOffset:v58 conversationalOdldScore:v69];
        v67 = *(*(a1 + 72) + 8);
        v68 = *(v67 + 40);
        *(v67 + 40) = v66;
      }
    }

    else
    {
      v32 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 32);
        *buf = 136315394;
        *&buf[4] = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Rcvd RC for invalid requestId %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v31 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s RequestId is nil, abort", buf, 0xCu);
    }
  }
}

void sub_100125D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100125D3C(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40) && *(a1 + 32))
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v2 = [*(a1 + 40) receivers];
    v3 = [v2 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v46;
      do
      {
        v6 = 0;
        do
        {
          if (*v46 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v45 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            v9 = *(a1 + 32);
            v8 = *(a1 + 40);
            [*(*(*(a1 + 56) + 8) + 40) floatValue];
            v10 = *(*(*(a1 + 64) + 8) + 24);
            [v7 attSiriUresNode:v8 tcuGeneratedForRequestId:v9 withNldaScore:? withProcessedAudioDuration:?];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v4);
    }
  }

  if (*(a1 + 32) && ([*(*(a1 + 40) + 168) objectForKeyedSubscript:?], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [v11 inputFeats];
    v14 = [v13 inputOrigin];

    if (v14)
    {
      v15 = *(a1 + 48);
      if (v15 && ([v15 latticeMitigatorResult], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
      {
        v17 = *(a1 + 40);
        v18 = [*(a1 + 48) latticeMitigatorResult];
        v19 = [v12 mhId];
        [v17 _logLatticeRNNResults:v18 forMhId:v19];
      }

      else
      {
        v22 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v50 = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Speech package not present or Speech package doesn't contain LRNN scores", buf, 0xCu);
        }

        v23 = *(a1 + 40);
        v24 = [v12 mhId];
        [v23 _logLRNNFailMsgForMhId:v24];

        v25 = *(a1 + 40);
        v18 = [v12 mhId];
        [v25 _logURESFailureMsgInput:1902 forMhId:v18];
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
      v27 = [v12 inputFeats];
      v28 = [v27 speakerIDScore];
      [v28 floatValue];
      v30 = v29;
      [v12 spkrIdAudioProcessedDuration];
      v32 = v31;
      LODWORD(v31) = v30;
      [WeakRetained logSpeakerFalseTriggerMitigationScore:v31 withAudioDuration:v32];

      v33 = *(a1 + 48);
      v34 = [v12 inputFeats];
      [v34 setSpeechPackage:v33];

      v35 = [*(a1 + 48) latticeMitigatorResult];
      [v35 score];
      v36 = [NSNumber numberWithFloat:?];
      v37 = [v12 inputFeats];
      [v37 setLrnnScore:v36];

      v38 = [*(a1 + 48) latticeMitigatorResult];
      [v38 threshold];
      v39 = [NSNumber numberWithFloat:?];
      v40 = [v12 inputFeats];
      [v40 setLrnnThreshold:v39];

      v41 = [v12 inputFeats];
      v42 = [v12 mhId];
      v43 = [v12 requestId];
      [CSUtils logMitigationFeatures:v41 forTask:@"Mitigation" withModelOutput:&off_10025F0E8 forMHRequestId:v42 forRequestId:v43];
    }

    else
    {
      v44 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v50 = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s Not running SDSD for nil inputOrigin", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 136315394;
      v50 = "[CSAttSiriUresNode constructTCUIntendedInfoForRequestId:withResultCandidate:]_block_invoke";
      v51 = 2114;
      v52 = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Rcvd RC for invalid requestId %{public}@", buf, 0x16u);
    }
  }
}

Class sub_10012622C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10029E478)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100126380;
    v4[4] = &unk_1002535B8;
    v4[5] = v4;
    v5 = off_100252110;
    v6 = 0;
    qword_10029E478 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10029E478)
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
  result = objc_getClass("SMTSiriIntendedInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_10029E470 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100126380(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029E478 = result;
  return result;
}

void sub_1001264BC(uint64_t a1)
{
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 bypassSpeakerIdForMitigation];

  if (v3)
  {
    v4 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      *v37 = 136315138;
      *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignore SpkrId Score updates", v37, 0xCu);
    }

    return;
  }

  if ([*(*(a1 + 32) + 168) count] < 2)
  {
    v13 = [*(*(a1 + 32) + 168) allValues];
    v10 = [v13 firstObject];

    goto LABEL_12;
  }

  v5 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 168);
    v7 = v5;
    v8 = [v6 allKeys];
    *v37 = 136315394;
    *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
    *&v37[12] = 2112;
    *&v37[14] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Ignore update as multiple requests in progress - %@", v37, 0x16u);
  }

  if (*(a1 + 40))
  {
    v9 = [*(*(a1 + 32) + 168) objectForKey:?];

    if (v9)
    {
      v10 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
      v11 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *v37 = 136315394;
        *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
        *&v37[12] = 2112;
        *&v37[14] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Found entry for reqId: %@", v37, 0x16u);
      }

LABEL_12:
      v14 = [v10 inputFeats];
      if (!v14)
      {
        v29 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 136315138;
          *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Input origin not set, Abort !", v37, 0xCu);
        }

        goto LABEL_30;
      }

      v15 = kSSRSpeakerRecognitionKnownUserScoresKey;
      v16 = [*(a1 + 48) objectForKeyedSubscript:kSSRSpeakerRecognitionKnownUserScoresKey];
      v17 = [v16 allValues];
      v18 = [v17 firstObject];
      [v18 floatValue];
      v20 = v19;

      v21 = [*(a1 + 48) objectForKeyedSubscript:kSSRSpeakerRecognitionAudioProcessedDurationKey];
      [v21 doubleValue];
      [v10 setSpkrIdAudioProcessedDuration:?];

      v22 = [v16 allValues];
      v23 = [v22 count];

      if (!v23)
      {
        v30 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          v31 = *(a1 + 48);
          v32 = v30;
          v33 = [v31 objectForKeyedSubscript:v15];
          *v37 = 136315394;
          *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
          *&v37[12] = 2114;
          *&v37[14] = v33;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s ERR: Failed to retrieve Speaker score, letting trigger through - %{public}@", v37, 0x16u);
        }

        goto LABEL_29;
      }

      v24 = CSLogCategorySDSD;
      v25 = os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT);
      if (v20 >= 0.56)
      {
        if (v25)
        {
          *v37 = 136315650;
          *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
          *&v37[12] = 2050;
          *&v37[14] = v20;
          *&v37[22] = 2050;
          v38 = 0x3FE1EB8520000000;
          v26 = "%s SPKR Accept: Score %{public}.3f Threshold %{public}f \n";
          goto LABEL_25;
        }
      }

      else if (v25)
      {
        *v37 = 136315650;
        *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
        *&v37[12] = 2050;
        *&v37[14] = v20;
        *&v37[22] = 2050;
        v38 = 0x3FE1EB8520000000;
        v26 = "%s SPKR Reject: Score %{public}.3f Threshold %{public}f \n";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, v37, 0x20u);
      }

      v34 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 136315394;
        *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
        *&v37[12] = 2048;
        *&v37[14] = v20;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s AttSignal: ssrScore: %.3f", v37, 0x16u);
      }

      *&v35 = v20;
      v36 = [NSNumber numberWithFloat:v35, *v37, *&v37[16], v38];
      [v14 setSpeakerIDScore:v36];

LABEL_29:
LABEL_30:

      return;
    }
  }

  v27 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 40);
    *v37 = 136315394;
    *&v37[4] = "[CSAttSiriUresNode attSiriNode:didUpdateWithSpeakerInfo:forReqId:]_block_invoke";
    *&v37[12] = 2112;
    *&v37[14] = v28;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s ReqId: %@ not found, not updating SpkrId", v37, 0x16u);
  }
}

void sub_100126B24(void *a1)
{
  if ([*(a1[4] + 168) count] < 2)
  {
    v6 = [*(a1[4] + 168) allValues];
    v7 = [v6 firstObject];
    v4 = [v7 inputFeats];

    if (v4)
    {
      v8 = qword_10029E468;
      if (__ROR8__(0x8F5C28F5C28F5C29 * qword_10029E468, 1) <= 0x51EB851EB851EB8uLL)
      {
        v9 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
        {
          v10 = a1[5];
          v11 = a1[6];
          v13 = 136315650;
          v14 = "[CSAttSiriUresNode attSiriNode:didUpdateOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
          v15 = 2114;
          v16 = v10;
          v17 = 2048;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s AttSignal: osdActivity: %{public}@ for duration %.3f", &v13, 0x20u);
          v8 = qword_10029E468;
        }
      }

      qword_10029E468 = v8 + 1;
      [v4 setDidDetectSpeechActivity:1];
    }

    else
    {
      v12 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[CSAttSiriUresNode attSiriNode:didUpdateOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Input origin not set, Abort !", &v13, 0xCu);
      }
    }
  }

  else
  {
    v2 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = *(a1[4] + 168);
    v4 = v2;
    v5 = [v3 allKeys];
    v13 = 136315394;
    v14 = "[CSAttSiriUresNode attSiriNode:didUpdateOSDFeatures:withFrameDurationMs:withMHID:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignore update as multiple requests in progress - %@", &v13, 0x16u);
  }
}

void sub_100126E58(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v35 = 136315906;
    v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
    v37 = 2050;
    v38 = v3;
    v39 = 2114;
    v40 = v4;
    v41 = 2114;
    v42 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received AFTM score: %{public}f for requestId: %{public}@ task: %{public}@", &v35, 0x2Au);
  }

  if ([*(*(a1 + 48) + 168) count] < 2)
  {
    v14 = [*(*(a1 + 48) + 168) allValues];
    v11 = [v14 firstObject];

LABEL_11:
    v15 = [v11 inputFeats];
    if (v15)
    {
      if ([v11 shouldUpdateMitigationResult])
      {
        v16 = [v15 acousticFTMScores];
        if (!v16 || (v18 = v16, [v15 acousticFTMScores], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "floatValue"), v21 = vabds_f32(v20, *(a1 + 56)), v19, v18, v21 > 2.2204e-16))
        {
          LODWORD(v17) = *(a1 + 56);
          v22 = [NSNumber numberWithFloat:v17];
          [v15 setAcousticFTMScores:v22];

          v23 = [v11 lastRCId];
          v24 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [v15 confidenceScore];
            [v26 doubleValue];
            v35 = 136315394;
            v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
            v37 = 2050;
            v38 = v27;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s NC Input Logging, ASR confidence score: %{public}.3f", &v35, 0x16u);
          }

          [*(a1 + 48) _createModelAndRunInferenceForRcId:v23 withRequestContext:v11 withCompletion:0];
        }
      }

      v28 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 56);
        v35 = 136315394;
        v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
        v37 = 2048;
        v38 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s AttSignal: aftmScore: %.3f", &v35, 0x16u);
      }

      LODWORD(v29) = *(a1 + 56);
      v31 = [NSNumber numberWithFloat:v29];
      [v15 setAcousticFTMScores:v31];
    }

    else
    {
      v34 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315138;
        v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s Input origin not set, Abort !", &v35, 0xCu);
      }
    }

    return;
  }

  v6 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 48) + 168);
    v8 = v6;
    [v7 allKeys];
    v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v35 = 136315394;
    v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Ignore update as multiple requests in progress - %@", &v35, 0x16u);
  }

  if (*(a1 + 32))
  {
    v10 = [*(*(a1 + 48) + 168) objectForKey:?];

    if (v10)
    {
      v11 = [*(*(a1 + 48) + 168) objectForKeyedSubscript:*(a1 + 32)];
      v12 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v35 = 136315394;
        v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Found entry for reqId: %@", &v35, 0x16u);
      }

      goto LABEL_11;
    }
  }

  v32 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 32);
    v35 = 136315394;
    v36 = "[CSAttSiriUresNode attSiriNode:didMitigate:withScore:forRequestId:taskType:]_block_invoke";
    v37 = 2112;
    v38 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s ReqId: %@ not found, not updating aftm", &v35, 0x16u);
  }
}

void sub_100127398(uint64_t a1)
{
  if ([*(*(a1 + 32) + 168) count] < 2)
  {
    v6 = [*(*(a1 + 32) + 168) allValues];
    v7 = [v6 firstObject];
    v4 = [v7 inputFeats];

    v8 = CSLogCategorySDSD;
    v9 = os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v9)
      {
        v10 = @"Lost";
        if (*(a1 + 40) == 1)
        {
          v10 = @"Gain";
        }

        v11 = 136315394;
        v12 = "[CSAttSiriUresNode attSiriNode:didUpdateAttentionState:]_block_invoke";
        v13 = 2114;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s AttSignal: attentionState: %{public}@", &v11, 0x16u);
      }

      [v4 setDidDetectAttention:*(a1 + 40) != 0];
    }

    else if (v9)
    {
      v11 = 136315138;
      v12 = "[CSAttSiriUresNode attSiriNode:didUpdateAttentionState:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Input origin not set, Abort !", &v11, 0xCu);
    }
  }

  else
  {
    v2 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = *(*(a1 + 32) + 168);
    v4 = v2;
    v5 = [v3 allKeys];
    v11 = 136315394;
    v12 = "[CSAttSiriUresNode attSiriNode:didUpdateAttentionState:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignore update as multiple requests in progress - %@", &v11, 0x16u);
  }
}

void sub_100127810(uint64_t a1)
{
  if ([*(*(a1 + 32) + 168) count] < 2)
  {
    v6 = [*(*(a1 + 32) + 168) allValues];
    v7 = [v6 firstObject];
    v4 = [v7 inputFeats];

    if (!v4)
    {
      v12 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[CSAttSiriUresNode setEndpointerFeatureEoS:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Input origin not set, Abort !", &v13, 0xCu);
      }

      goto LABEL_10;
    }

    v9 = qword_10029E460;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * qword_10029E460, 1) <= 0x1999999999999999uLL)
    {
      v10 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v13 = 136315394;
        v14 = "[CSAttSiriUresNode setEndpointerFeatureEoS:]_block_invoke";
        v15 = 2050;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s AttSignal: EoS Likelihood %{public}f", &v13, 0x16u);
        v9 = qword_10029E460;
      }
    }

    qword_10029E460 = v9 + 1;
    LODWORD(v8) = *(a1 + 40);
    v5 = [NSNumber numberWithFloat:v8];
    [v4 setEosLikelihood:v5];
  }

  else
  {
    v2 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = *(*(a1 + 32) + 168);
    v4 = v2;
    v5 = [v3 allKeys];
    v13 = 136315394;
    v14 = "[CSAttSiriUresNode setEndpointerFeatureEoS:]_block_invoke";
    v15 = 2112;
    v16 = *&v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignore update as multiple requests in progress - %@", &v13, 0x16u);
  }

LABEL_10:
}

void sub_100127F1C(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 136315138;
    v52 = "[CSAttSiriUresNode processResultCandidate:forRCId:forTask:forRequestId:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Received RC from ASR, make UReS decision", &v51, 0xCu);
  }

  v3 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 setLastRCId:*(a1 + 72)];
    if ([*(a1 + 32) _shouldRunMitigationForRequestContext:v4 forTask:*(a1 + 48)])
    {
      v5 = *(a1 + 56);
      if (!v5)
      {
        goto LABEL_8;
      }

      v6 = [v5 latticeMitigatorResult];
      if (!v6 || (v7 = v6, [*(a1 + 56) latticeMitigatorResult], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "score"), v10 = v9, v8, v7, v10 == 0.0))
      {
LABEL_8:
        v11 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
        {
          v51 = 136315138;
          v52 = "[CSAttSiriUresNode processResultCandidate:forRCId:forTask:forRequestId:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Speech package not present or Speech package doesn't contain LRNN scores, don't run URES mitigator", &v51, 0xCu);
        }

        [*(a1 + 32) _storeMitigationDecision:0 forRCId:*(a1 + 72) requestContext:v4];
        v12 = *(a1 + 64);
        if (v12)
        {
          (*(v12 + 16))(v12, 0);
        }

        v13 = *(a1 + 32);
        v14 = [v4 mhId];
        [v13 _logLRNNFailMsgForMhId:v14];

        v15 = *(a1 + 32);
        v16 = [v4 mhId];
        [v15 _logURESFailureMsgInput:1902 forMhId:v16];
LABEL_13:

        goto LABEL_21;
      }

      v23 = *(a1 + 32);
      v24 = [*(a1 + 56) recognition];
      v25 = [v4 inputFeats];
      v26 = [v25 inputOrigin];
      LODWORD(v23) = [v23 _shouldApplyAllowListOverride:v24 withInputOrigin:v26];

      if (!v23)
      {
        v28 = *(a1 + 32);
        if (!v28[6] && [v28 _supportsHybridSDSD])
        {
          [*(a1 + 32) _runLRNNOnlyMitigationForRCId:*(a1 + 72) speechPackage:*(a1 + 56) requestId:*(a1 + 40) completion:*(a1 + 64)];
          goto LABEL_21;
        }

        v16 = [v4 inputFeats];
        [v16 setDecisionStage:2];
        [v16 setSpeechPackage:*(a1 + 56)];
        v29 = [*(a1 + 56) latticeMitigatorResult];
        [v29 score];
        v30 = [NSNumber numberWithFloat:?];
        [v16 setLrnnScore:v30];

        v31 = [*(a1 + 56) latticeMitigatorResult];
        [v31 threshold];
        v32 = [NSNumber numberWithFloat:?];
        [v16 setLrnnThreshold:v32];

        v33 = [*(a1 + 56) recognition];
        v34 = [v33 utterances];
        v35 = [v34 firstObject];

        if (v35)
        {
          v36 = [*(a1 + 56) recognition];
          v37 = [v36 utterances];
          v38 = [v37 firstObject];
          v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 confidenceScore]);
          [v16 setConfidenceScore:v39];
        }

        v40 = mach_absolute_time();
        [*(a1 + 32) _updateInputFeats:v16 forSignalsFrom:CSMachAbsoluteTimeSubtractTimeInterval() to:v40];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
        v42 = [WeakRetained processSpeechPackageSync:*(a1 + 56)];

        if (v42)
        {
          [v42 odldScore];
          v43 = [NSNumber numberWithFloat:?];
          [v16 setNldaScore:v43];

          v44 = [v42 features];
          [v16 setNldaMetaInfo:v44];

          v45 = CSLogCategorySDSD;
          if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v45;
            [v42 odldScore];
            v51 = 136315394;
            v52 = "[CSAttSiriUresNode processResultCandidate:forRCId:forTask:forRequestId:completion:]_block_invoke";
            v53 = 2048;
            v54 = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s AttSignal: NLDA Score: %.3f", &v51, 0x16u);
          }
        }

        [*(a1 + 32) _createModelAndRunInferenceForRcId:*(a1 + 72) withRequestContext:v4 withCompletion:*(a1 + 64)];
        v48 = *(a1 + 32);
        v49 = [*(a1 + 56) latticeMitigatorResult];
        v50 = [v4 mhId];
        [v48 _logLatticeRNNResults:v49 forMhId:v50];

        goto LABEL_13;
      }

      v27 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v51 = 136315138;
        v52 = "[CSAttSiriUresNode processResultCandidate:forRCId:forTask:forRequestId:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Applying override rule, don't mitigate", &v51, 0xCu);
      }

      [*(a1 + 32) _storeMitigationDecision:0 forRCId:*(a1 + 72) requestContext:v4];
      [v4 setShouldUpdateMitigationResult:0];
    }

    else
    {
      v19 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        [v4 recordCtx];
        v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v51 = 136315394;
        v52 = "[CSAttSiriUresNode processResultCandidate:forRCId:forTask:forRequestId:completion:]_block_invoke";
        v53 = 2114;
        v54 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Mitigation not supported for ctx: %{public}@", &v51, 0x16u);
      }

      [*(a1 + 32) _storeMitigationDecision:0 forRCId:*(a1 + 72) requestContext:v4];
    }
  }

  else
  {
    v17 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      v51 = 136315394;
      v52 = "[CSAttSiriUresNode processResultCandidate:forRCId:forTask:forRequestId:completion:]_block_invoke";
      v53 = 2114;
      v54 = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Rcvd RC for invalid requestId %{public}@", &v51, 0x16u);
    }
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }

LABEL_21:
}

void sub_100128BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100128BD8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = +[CSFPreferences sharedPreferences];
    v6 = [v5 forceMitigateForHybridSDSD];

    v7 = a1 + 32;
    if (v6)
    {
      [*(a1 + 32) _storeMitigationDecision:1 forRCId:*(a1 + 64) requestContext:*(a1 + 40)];
      v8 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315138;
        v33 = "[CSAttSiriUresNode _createModelAndRunInferenceForRcId:withRequestContext:withCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Overriding mitigation decision from preferences", &v32, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) _storeMitigationDecision:objc_msgSend(*(*(*(a1 + 56) + 8) + 40) forRCId:"didMitigate") requestContext:{*(a1 + 64), *(a1 + 40)}];
    }

    v15 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 56) + 8) + 40);
      v17 = v15;
      v18 = [v16 detailedResult];
      v19 = *(a1 + 64);
      v32 = 136315650;
      v33 = "[CSAttSiriUresNode _createModelAndRunInferenceForRcId:withRequestContext:withCompletion:]_block_invoke";
      v34 = 2114;
      v35 = v18;
      v36 = 2050;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Final mitigation result: %{public}@ for RCId: %{public}lu", &v32, 0x20u);
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      (*(v20 + 16))(v20, [*(*(*(a1 + 56) + 8) + 40) didMitigate]);
    }

    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) inputFeats];
    v23 = *(*(*(a1 + 56) + 8) + 40);
    v24 = [*(a1 + 40) mhId];
    [v21 _logURESResultsForInput:v22 withOutput:v23 forMhId:v24];

    LODWORD(v24) = +[CSUtils isMedocFeatureEnabled];
    v14 = [*(a1 + 40) inputFeats];
    v25 = [*(*(*(a1 + 56) + 8) + 40) detailedResult];
    v26 = *(a1 + 40);
    if (v24)
    {
      v27 = [v26 requestId];
      v28 = v14;
      v29 = v25;
      v30 = 0;
      v31 = v27;
    }

    else
    {
      v27 = [v26 mhId];
      v28 = v14;
      v29 = v25;
      v30 = v27;
      v31 = 0;
    }

    [CSUtils logMitigationFeatures:v28 forTask:@"Mitigation" withModelOutput:v29 forMHRequestId:v30 forRequestId:v31];

    v11 = v7;
  }

  else
  {
    v9 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315138;
      v33 = "[CSAttSiriUresNode _createModelAndRunInferenceForRcId:withRequestContext:withCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to get result from UReS, don't mitigate", &v32, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }

    v12 = *(a1 + 32);
    v11 = a1 + 32;
    [v12 _storeMitigationDecision:0 forRCId:*(v11 + 32) requestContext:*(v11 + 8)];
    v13 = *v11;
    v14 = [*(v11 + 8) mhId];
    [v13 _logURESFailureMsgInput:1903 forMhId:v14];
  }

  [*v11 _releaseUresProcessingTransaction];
}

void sub_10012A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012A124(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRequestCtxForRequestId:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mitigationDecisions];
    v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      *(*(*(a1 + 48) + 8) + 24) = [v6 BOOLValue];
      v7 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        v9 = *(*(*(a1 + 48) + 8) + 24);
        v15 = 136315650;
        v16 = "[CSAttSiriUresNode getMitigationDecisionForRCId:forRequestId:]_block_invoke";
        v17 = 1026;
        LODWORD(v18[0]) = v9;
        WORD2(v18[0]) = 2050;
        *(v18 + 6) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Got mitigation result: %{public}d for RCId: %{public}lu", &v15, 0x1Cu);
      }
    }

    else
    {
      v12 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 56);
        v15 = 136315394;
        v16 = "[CSAttSiriUresNode getMitigationDecisionForRCId:forRequestId:]_block_invoke";
        v17 = 2050;
        v18[0] = v14;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Mitigation signal for RCId: %{public}lu not found", &v15, 0x16u);
      }

      v13 = +[CSDiagnosticReporter sharedInstance];
      [v13 submitAudioIssueReport:kCSDiagnosticReporterUresRCUnavailable];
    }
  }

  else
  {
    v10 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v15 = 136315394;
      v16 = "[CSAttSiriUresNode getMitigationDecisionForRCId:forRequestId:]_block_invoke";
      v17 = 2112;
      v18[0] = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to find context for requestId: %@", &v15, 0x16u);
    }
  }
}

void sub_10012A384(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRequestCtxForRequestId:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mitigationDecisions];
    v5 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v3 mitigationDecisions];
      v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
      v10 = [v8 objectForKey:v9];
      v11 = [v10 BOOLValue];
      v12 = [v3 mhId];
      [v7 _logFinalMitigationDecisionToSelf:v11 forMhId:v12];
    }

    v13 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315138;
      v29 = "[CSAttSiriUresNode getMitigationDecisionForRCId:forRequestId:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s ASR node fetched mitigation signal, unload NLDA model", &v28, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    [WeakRetained informMitigationDecision:*(*(*(a1 + 48) + 8) + 24) forRequestId:*(a1 + 40) isFinal:1];

    v15 = objc_loadWeakRetained((*(a1 + 32) + 72));
    [v15 stop];

    v16 = objc_loadWeakRetained((*(a1 + 32) + 80));
    v17 = [v3 inputFeats];
    v18 = [v17 speakerIDScore];
    [v18 floatValue];
    v20 = v19;
    [v3 spkrIdAudioProcessedDuration];
    v22 = v21;
    LODWORD(v21) = v20;
    [v16 logSpeakerFalseTriggerMitigationScore:v21 withAudioDuration:v22];

    v23 = *(a1 + 32);
    if ((v23[11] & 1) == 0)
    {
      v24 = *(*(*(a1 + 48) + 8) + 24);
      v25 = [v23 mitigatorDelegate];
      [v25 siriMitigator:*(a1 + 32) mitigationDecision:v24 == 1];
    }
  }

  else
  {
    v26 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      v28 = 136315394;
      v29 = "[CSAttSiriUresNode getMitigationDecisionForRCId:forRequestId:]_block_invoke";
      v30 = 2112;
      v31 = v27;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Unable to find context for requestId: %@", &v28, 0x16u);
    }
  }
}

void sub_10012A740(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRequestCtxForRequestId:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v11 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 40);
    v17 = 136315394;
    v18 = "[CSAttSiriUresNode getLastMitigationResultForRequestId:]_block_invoke";
    v19 = 2112;
    v20[0] = v12;
    v13 = "%s Unable to find context for requestId: %@";
LABEL_10:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v13, &v17, 0x16u);
    goto LABEL_15;
  }

  v4 = [v2 lastRCId];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v11 = CSLogCategorySDSD;
    if (!os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v14 = *(a1 + 40);
    v17 = 136315394;
    v18 = "[CSAttSiriUresNode getLastMitigationResultForRequestId:]_block_invoke";
    v19 = 2112;
    v20[0] = v14;
    v13 = "%s No RCs for reqId %@";
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v3 mitigationDecisions];
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v8 BOOLValue];
    v9 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 48) + 8) + 24);
      v17 = 136315650;
      v18 = "[CSAttSiriUresNode getLastMitigationResultForRequestId:]_block_invoke";
      v19 = 1026;
      LODWORD(v20[0]) = v10;
      WORD2(v20[0]) = 2050;
      *(v20 + 6) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Got mitigation result: %{public}d for RCId: %{public}lu", &v17, 0x1Cu);
    }
  }

  else
  {
    v15 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[CSAttSiriUresNode getLastMitigationResultForRequestId:]_block_invoke";
      v19 = 2050;
      v20[0] = v5;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Mitigation signal for RCId: %{public}lu not found", &v17, 0x16u);
    }

    v16 = +[CSDiagnosticReporter sharedInstance];
    [v16 submitAudioIssueReport:kCSDiagnosticReporterUresRCUnavailable];
  }

LABEL_15:
}

void sub_10012AA9C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    v2 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CSAttSiriUresNode setASRModelRootDirectory:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Prefetched asset not set, using assets from ASR", &v6, 0xCu);
    }

    v3 = [*(a1 + 40) stringByAppendingPathComponent:@"mitigation/ouresModel/ouresConfig.json"];
    objc_storeStrong((*(a1 + 32) + 128), v3);
    v4 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 128);
      v6 = 136315394;
      v7 = "[CSAttSiriUresNode setASRModelRootDirectory:]_block_invoke";
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Using config file at : %{public}@", &v6, 0x16u);
    }

    [*(a1 + 32) _updateSupportedInputOrigins];
  }
}

void sub_10012AC90(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[CSAttSiriUresNode stopUresProcessingForRequest:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Remove ctx for reqId %@", &v8, 0x16u);
  }

  if (*(a1 + 32))
  {
    v4 = [*(*(a1 + 40) + 168) objectForKey:?];

    if (v4)
    {
      [*(*(a1 + 40) + 168) removeObjectForKey:*(a1 + 32)];
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
  [WeakRetained stop];

  v6 = *(a1 + 40);
  v7 = *(v6 + 104);
  *(v6 + 104) = 0;
}

void sub_10012B0E4(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSAttSiriUresNode asrStartedForRequestId:isRecognitionModeClassic:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      v4 = [v3[21] objectForKey:?];

      if (v4)
      {
        v5 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v12 = 136315394;
          v13 = "[CSAttSiriUresNode asrStartedForRequestId:isRecognitionModeClassic:]_block_invoke";
          v14 = 2112;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Removing requestId: %@ from ures map since recognition is classic", &v12, 0x16u);
        }

        [*(*(a1 + 40) + 168) removeObjectForKey:*(a1 + 32)];
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
        [WeakRetained stop];
      }
    }

    else
    {
      v9 = [v3 _getRequestCtxForRequestId:?];
      if (!v9)
      {
        v10 = CSLogCategorySDSD;
        if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = 136315394;
          v13 = "[CSAttSiriUresNode asrStartedForRequestId:isRecognitionModeClassic:]_block_invoke";
          v14 = 2112;
          v15 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Unable to find context for requestId: %@, Creating an empty mapping", &v12, 0x16u);
        }

        v9 = objc_alloc_init(CSUresNodeRequestContext);
        [(CSUresNodeRequestContext *)v9 setRequestId:*(a1 + 32)];
        [*(*(a1 + 40) + 168) setObject:v9 forKey:*(a1 + 32)];
      }
    }
  }

  else
  {
    v8 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSAttSiriUresNode asrStartedForRequestId:isRecognitionModeClassic:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Ignoring request with nil requestId", &v12, 0xCu);
    }
  }
}

void sub_10012B450(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v47 = 136316162;
    v48 = "[CSAttSiriUresNode startUresRequestWithAudioRecordContext:forRequestId:mhId:voiceTriggerInfo:]_block_invoke";
    v49 = 2112;
    v50 = v3;
    v51 = 2112;
    v52 = v4;
    v53 = 2112;
    v54 = v5;
    v55 = 2112;
    v56 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s requestId:%@, mhId:%@ recordCtx:%@ voiceTriggerInfo:%@", &v47, 0x34u);
  }

  if (*(a1 + 32))
  {
    v7 = [*(*(a1 + 64) + 168) objectForKeyedSubscript:?];
    if ([*(a1 + 48) isDictation])
    {
      v8 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v47 = 136315138;
        v48 = "[CSAttSiriUresNode startUresRequestWithAudioRecordContext:forRequestId:mhId:voiceTriggerInfo:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Don't run mitigation for dictation requests", &v47, 0xCu);
      }

      [*(*(a1 + 64) + 168) removeObjectForKey:*(a1 + 32)];
    }

    else
    {
      v10 = [CSUtils getInputoriginFromRecordType:*(a1 + 48) withAsset:*(*(a1 + 64) + 48)];
      v11 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v47 = 136315394;
        v48 = "[CSAttSiriUresNode startUresRequestWithAudioRecordContext:forRequestId:mhId:voiceTriggerInfo:]_block_invoke";
        v49 = 2112;
        v50 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Set input origin to: %@", &v47, 0x16u);
      }

      v12 = [[SLUresMitigatorIpFeats alloc] initWithDefaults];
      [v12 setInputOrigin:v10];
      v13 = *(a1 + 56);
      if (v13)
      {
        v14 = kVTEIrecognizerScore;
        v15 = [v13 objectForKey:kVTEIrecognizerScore];

        if (v15)
        {
          v16 = [*(a1 + 56) objectForKeyedSubscript:v14];
          [v16 floatValue];
          v17 = [NSNumber numberWithFloat:?];
          [v12 setCheckerScore:v17];
        }

        v18 = *(a1 + 56);
        if (v18)
        {
          v19 = kVTEItdsrCombinedScore;
          v20 = [v18 objectForKey:kVTEItdsrCombinedScore];

          if (v20)
          {
            v21 = [*(a1 + 56) objectForKeyedSubscript:v19];
            [v21 floatValue];
            v22 = [NSNumber numberWithFloat:?];
            [v12 setPhsScore:v22];
          }
        }
      }

      [*(a1 + 64) _fetchMitigationConfigForRecordCtx:*(a1 + 48)];
      v23 = *(*(a1 + 64) + 48);
      if (v23)
      {
        [v23 mitigationModelDefaultAFTMScore];
        v24 = [NSNumber numberWithFloat:?];
        [v12 setAcousticFTMScores:v24];

        [*(*(a1 + 64) + 48) mitigationModelDefaultELFusionScore];
        v25 = [NSNumber numberWithFloat:?];
        [v12 setEmbeddingScore:v25];

        [*(*(a1 + 64) + 48) mitigationModelDefaultNLDAScore];
        v26 = [NSNumber numberWithFloat:?];
        [v12 setNldaScore:v26];
      }

      if (!v7)
      {
        v7 = objc_alloc_init(CSUresNodeRequestContext);
        [(CSUresNodeRequestContext *)v7 setRequestId:*(a1 + 32)];
      }

      [(CSUresNodeRequestContext *)v7 setInputFeats:v12];
      v27 = objc_alloc_init(NSMutableDictionary);
      [(CSUresNodeRequestContext *)v7 setMitigationDecisions:v27];

      [(CSUresNodeRequestContext *)v7 setShouldUpdateMitigationResult:0];
      [(CSUresNodeRequestContext *)v7 setRecordCtx:*(a1 + 48)];
      [(CSUresNodeRequestContext *)v7 setMhId:*(a1 + 40)];
      [(CSUresNodeRequestContext *)v7 setLastRCId:-1];
      [(CSUresNodeRequestContext *)v7 setSpkrIdAudioProcessedDuration:0.0];
      [*(*(a1 + 64) + 168) setObject:v7 forKey:*(a1 + 32)];
      v28 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        v29 = *(a1 + 40);
        v47 = 136316162;
        v48 = "[CSAttSiriUresNode startUresRequestWithAudioRecordContext:forRequestId:mhId:voiceTriggerInfo:]_block_invoke";
        v49 = 2112;
        v50 = v7;
        v51 = 2112;
        v52 = v12;
        v53 = 2112;
        v54 = v29;
        v55 = 2112;
        v56 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Added requestCtx %@ inputFeats %@ mhId %@ requstId %@", &v47, 0x34u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 72));
      v32 = [(CSUresNodeRequestContext *)v7 recordCtx];
      [WeakRetained startWithRecordContext:v32 withRequestId:*(a1 + 32)];

      v33 = objc_loadWeakRetained((*(a1 + 64) + 72));
      v34 = [(CSUresNodeRequestContext *)v7 mhId];
      [v33 setMhId:v34];

      v35 = *(a1 + 64);
      if ((*(v35 + 11) & 1) == 0)
      {
        v36 = CSIsWatch();
        v35 = *(a1 + 64);
        if (v36)
        {
          v37 = [(CSUresNodeRequestContext *)v7 recordCtx];
          v38 = [v35 _shouldRunMitigationForContext:v37];

          v35 = *(a1 + 64);
          if (v38)
          {
            [*(a1 + 64) _createMitigatorModelWithConfig:*(v35 + 128)];
            v35 = *(a1 + 64);
          }
        }
      }

      v39 = objc_loadWeakRetained((v35 + 96));
      [v39 updateInvocationType:v10 forRequestId:*(a1 + 32)];

      v40 = CSLogCategorySDSD;
      if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = [v12 checkerScore];
        [v42 doubleValue];
        v44 = v43;
        v45 = [v12 phsScore];
        [v45 doubleValue];
        v47 = 136315650;
        v48 = "[CSAttSiriUresNode startUresRequestWithAudioRecordContext:forRequestId:mhId:voiceTriggerInfo:]_block_invoke";
        v49 = 2050;
        v50 = v44;
        v51 = 2050;
        v52 = v46;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s NC Input Logging, checker score: %{public}.3f, Phs score: %{public}.3f", &v47, 0x20u);
      }
    }
  }

  else
  {
    v9 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v47 = 136315138;
      v48 = "[CSAttSiriUresNode startUresRequestWithAudioRecordContext:forRequestId:mhId:voiceTriggerInfo:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Ignoring request with nil requestId", &v47, 0xCu);
    }
  }
}

void sub_10012BB94(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRequestCtxForRequestId:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 inputFeats];
    v5 = [v4 inputOrigin];
  }

  else
  {
    v6 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = 136315394;
      v10 = "[CSAttSiriUresNode getUresInvocationTypeForRequestId:withCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unable to find context for requestId: %@", &v9, 0x16u);
    }

    v5 = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

void sub_10012BDCC(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRequestCtxForRequestId:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 inputFeats];
    v5 = [v4 inputOrigin];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = CSLogCategorySDSD;
    if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = 136315394;
      v11 = "[CSAttSiriUresNode getUresInvocationTypeForRequestId:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to find context for requestId: %@", &v10, 0x16u);
    }
  }
}

void sub_10012BFE0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained setPrefetchedAsset:*(a1 + 40)];

  v3 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[CSAttSiriUresNode setPrefetchedAsset:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s setting prefetched asset %@", &v5, 0x16u);
  }
}

void sub_10012C570(uint64_t a1)
{
  v2 = CSLogCategorySDSD;
  if (os_log_type_enabled(CSLogCategorySDSD, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSAttSiriUresNode stop]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Unload NLDA model", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained stop];
}

void sub_10012D928(id a1)
{
  v1 = objc_alloc_init(CSAdBlockerAssetDownloadMonitor);
  v2 = qword_10029E480;
  qword_10029E480 = v1;
}

void sub_10012DED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012DEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

void sub_10012E488(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = v2[21];
    if (v3)
    {
      v4 = *(a1 + 40);

      [v3 opportuneSpeakEventMonitor:v4 didStreamStateChanged:1];
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10012E560;
      v5[3] = &unk_100252448;
      v5[4] = v2;
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      [v2 _getVoiceTriggerAssetIfNeeded:v5];
    }
  }
}

void sub_10012E560(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012E620;
  v8[3] = &unk_100252420;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

id sub_10012E620(uint64_t a1)
{
  v2 = objc_alloc_init(CSVoiceTriggerFirstPassHearstAP);
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;

  [*(*(a1 + 32) + 168) start];
  [*(*(a1 + 32) + 168) setAsset:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = v5[21];
  v7 = [v5 _voiceTriggerEventNotifierCreateIfNeeded:1];
  [v6 setDelegate:v7];

  v8 = *(*(a1 + 32) + 168);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);

  return [v8 opportuneSpeakEventMonitor:v9 didStreamStateChanged:v10];
}

void sub_10012EBFC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(v4 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012ECBC;
  v8[3] = &unk_1002523D0;
  v6 = a1[5];
  v11 = a1[6];
  v8[4] = v4;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

uint64_t sub_10012ECBC(uint64_t a1)
{
  [*(a1 + 32) _startForBluetoothDeviceWithDeviceType:*(a1 + 56) asset:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_10012F000(uint64_t a1)
{
  result = +[CSUtils supportBluetoothDeviceVoiceTrigger];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = (v3 - 2) < 4 || v3 == 7;
    if (v4 || (result = CSIsWatch(), (v6 = *(a1 + 40), result) && v6 == 2))
    {
      v5 = *(a1 + 32);

      return [v5 _setupForHearstIfNeededWithPrepareCompletion:0 completion:&stru_100252388];
    }

    else if (v6 == 6)
    {
      v8 = *(a1 + 32);

      return [v8 _teardownForBluetoothDevice];
    }

    else if (!v6)
    {
      v7 = *(a1 + 32);

      return [v7 _setupForJarvisIfNeededWithPrepareCompletion:0 completion:&stru_1002523A8];
    }
  }

  return result;
}

void sub_10012F0DC(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSSpeechManager CSAudioRouteChangeMonitor:didReceiveAudioRouteChangeEvent:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Setup for Jarvis completed", &v2, 0xCu);
  }
}

void sub_10012F184(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSSpeechManager CSAudioRouteChangeMonitor:didReceiveAudioRouteChangeEvent:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Setup for Hearst completed", &v2, 0xCu);
  }
}

void sub_10012F310(uint64_t a1)
{
  if ([*(a1 + 32) type] == 6)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10012F52C;
    v20[3] = &unk_100252E58;
    v2 = &v21 + 1;
    v3 = &v22;
    v4 = &v22 + 1;
    v11 = *(a1 + 40);
    v5 = *(&v11 + 1);
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v21 = v11;
    v22 = v8;
    [v11 _setupForJarvisIfNeededWithPrepareCompletion:0 completion:v20];
  }

  else
  {
    v9 = [*(a1 + 32) type];
    v10 = *(a1 + 40);
    if (v9 == 8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10012F5D0;
      v16[3] = &unk_100252E58;
      v16[4] = v10;
      v2 = &v17;
      v17 = *(a1 + 48);
      v3 = &v18;
      v18 = *(a1 + 32);
      v4 = &v19;
      v19 = *(a1 + 56);
      [v10 _setupForRemoraIfNeededWithCompletion:v16];
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10012F674;
      v12[3] = &unk_100252E58;
      v12[4] = v10;
      v2 = &v13;
      v13 = *(a1 + 48);
      v3 = &v14;
      v14 = *(a1 + 32);
      v4 = &v15;
      v15 = *(a1 + 56);
      [v10 _setupForHearstIfNeededWithPrepareCompletion:v12 completion:0];
    }
  }
}

void sub_10012F52C(void *a1)
{
  if (*(a1[4] + 144))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[7];
    v5 = *(a1[4] + 144);

    [v5 activationEventNotificationHandler:v2 event:v3 completion:v4];
  }

  else
  {
    v6 = a1[7];
    v7 = [NSError errorWithDomain:CSErrorDomain code:602 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_10012F5D0(void *a1)
{
  if (*(a1[4] + 176))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[7];
    v5 = *(a1[4] + 176);

    [v5 activationEventNotificationHandler:v2 event:v3 completion:v4];
  }

  else
  {
    v6 = a1[7];
    v7 = [NSError errorWithDomain:CSErrorDomain code:602 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_10012F674(void *a1)
{
  if (*(a1[4] + 160))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[7];
    v5 = *(a1[4] + 160);

    [v5 activationEventNotificationHandler:v2 event:v3 completion:v4];
  }

  else
  {
    v6 = a1[7];
    v7 = [NSError errorWithDomain:CSErrorDomain code:602 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

uint64_t sub_10012FE00(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10012FF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10012FF4C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100130040;
  block[3] = &unk_100252318;
  objc_copyWeak(&v12, (a1 + 56));
  v9 = v5;
  v13 = a3;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v12);
}

void sub_100130040(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v30 = 136315394;
      v31 = "[CSSpeechManager _mapAssetToExclaveKit:completion:]_block_invoke_2";
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Mapping asset to EK completed with error %@", &v30, 0x16u);
    }

    if (*(a1 + 32))
    {
      v5 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 64))
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v30 = 136315394;
        v31 = "[CSSpeechManager _mapAssetToExclaveKit:completion:]_block_invoke";
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Should retry mapping asset? %@", &v30, 0x16u);
      }

      v7 = +[CSAssetManager sharedManager];
      v8 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
      v9 = [v7 installedCompactAssetOfType:0 language:v8];

      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = [v11 configVersion];
        v30 = 136315394;
        v31 = "[CSSpeechManager _mapAssetToExclaveKit:completion:]_block_invoke";
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Fetched installed voicetrigger asset %@", &v30, 0x16u);
      }

      [WeakRetained[10] setAsset:v9];
      v14 = CSLogCategoryAsset;
      v15 = os_signpost_id_generate(CSLogCategoryAsset);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = v15;
        if (os_signpost_enabled(v14))
        {
          v17 = [v9 configVersion];
          v30 = 138412290;
          v31 = v17;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v16, "Fallback_Secure_PreinstalledAsset", "Mapping asset failed. Falling back to preinstalled asset with version:%@", &v30, 0xCu);
        }
      }

      v18 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [v9 configVersion];
        v30 = 136315394;
        v31 = "[CSSpeechManager _mapAssetToExclaveKit:completion:]_block_invoke";
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Mapping asset failed. Falling back to preinstalled asset with version:%@", &v30, 0x16u);
      }

      if (*(a1 + 64) == 1)
      {
        [WeakRetained _retryMapAssetToExclaveKit:*(a1 + 40)];
      }
    }

    else
    {
      v21 = CSLogCategoryAsset;
      v22 = os_signpost_id_generate(CSLogCategoryAsset);
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = v22;
        if (os_signpost_enabled(v21))
        {
          v24 = [*(a1 + 40) configVersion];
          v30 = 138412290;
          v31 = v24;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, v23, "Mapping_Secure_Asset_Succeeded", "Successfully mapped asset with version:%@", &v30, 0xCu);
        }
      }

      v25 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        v27 = v25;
        v28 = [v26 configVersion];
        v30 = 136315394;
        v31 = "[CSSpeechManager _mapAssetToExclaveKit:completion:]_block_invoke";
        v32 = 2112;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Successfully mapped asset with version:%@", &v30, 0x16u);
      }

      [WeakRetained[10] setAsset:*(a1 + 40)];
    }

    v29 = *(a1 + 48);
    if (v29)
    {
      (*(v29 + 16))(v29, 0);
    }
  }
}

void sub_1001305B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001305D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001306A4;
  block[3] = &unk_1002522C8;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void sub_1001306A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = CSLogCategoryAsset;
      v5 = os_signpost_id_generate(CSLogCategoryAsset);
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v4))
        {
          v7 = [*(a1 + 40) configVersion];
          v14 = 138412290;
          v15 = v7;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, v6, "Retry_Mapping_Secure_Asset_Failed", "Failed retrying to map asset with version:%@", &v14, 0xCu);
        }
      }

      v8 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = v8;
        v11 = [v9 configVersion];
        v14 = 136315394;
        v15 = "[CSSpeechManager _retryMapAssetToExclaveKit:]_block_invoke";
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Failed retrying to map asset with version:%@", &v14, 0x16u);
      }

      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = 136315394;
        v15 = "[CSSpeechManager _retryMapAssetToExclaveKit:]_block_invoke";
        v16 = 2112;
        v17 = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed retrying to map asset with error %@", &v14, 0x16u);
      }
    }

    else
    {
      [WeakRetained[10] setAsset:*(a1 + 40)];
    }
  }
}

void sub_100130950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100130A08;
  v3[3] = &unk_1002522A0;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained _getVoiceTriggerAssetIfNeeded:v3];

  objc_destroyWeak(&v4);
}

void sub_100130A08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100130AD8;
    v7[3] = &unk_1002538D8;
    objc_copyWeak(&v9, (a1 + 32));
    v8 = v3;
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void sub_100130AD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reinitializeVoiceTriggerWithAsset:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _setupSpeakerRecognitionWithVTAsset:*(a1 + 32)];
}

void sub_100130C68(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechManager audioRecorderWillBeDestroyed:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 32) unregisterObserver:?];
  [*(*(a1 + 32) + 32) setAudioSessionEventDelegate:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

void sub_100130DF0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 UUID];
    v6 = *(a1 + 48);
    v14 = 136315650;
    v15 = "[CSSpeechManager audioProviderInvalidated:streamHandleId:]_block_invoke";
    v16 = 2114;
    v17 = v5;
    v18 = 2050;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s audioProvider[%{public}@] invalidated with streamHandleId : %{public}llu", &v14, 0x20u);
  }

  [*(a1 + 32) setAudioProviderDelegate:0];
  v7 = [*(a1 + 40) audioProviders];
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = [*(a1 + 40) audioProviders];
    v11 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v10 removeObjectForKey:v11];
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = 136315394;
      v15 = "[CSSpeechManager audioProviderInvalidated:streamHandleId:]_block_invoke";
      v16 = 2050;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s No matched audioProvider found for streamHandleId : %{public}llu", &v14, 0x16u);
    }
  }
}

uint64_t sub_100131344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013135C(uint64_t a1)
{
  v2 = [[CSFallbackAudioSessionReleaseProvider alloc] initWithAudioRecorder:*(*(a1 + 32) + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 32) + 56);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

void sub_1001314B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = [v2 audioProviders];
    v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v5 = [v3 objectForKey:v4];

    v6 = CSLogContextFacilityCoreSpeech;
    v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = *(a1 + 48);
        v21 = 136315394;
        v22 = "[CSSpeechManager audioProviderWithStreamID:]_block_invoke";
        v23 = 2048;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s have matched audioProvider with stream handle id : %llu", &v21, 0x16u);
      }

      v9 = [*(a1 + 32) audioProviders];
      v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
      v11 = [v9 objectForKey:v10];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = [*(*(*(a1 + 40) + 8) + 40) audioStreamId];
      if (v14 != *(a1 + 48))
      {
        v15 = v14;
        v16 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "[CSSpeechManager audioProviderWithStreamID:]_block_invoke";
          v23 = 2048;
          v24 = v15;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s provider's streamId(%tu) is invalid, return nil", &v21, 0x16u);
        }

        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }
    }

    else if (v7)
    {
      v20 = *(a1 + 48);
      v21 = 136315394;
      v22 = "[CSSpeechManager audioProviderWithStreamID:]_block_invoke";
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s don't have matched audioProvider with stream handle id : %llu, need to create one later", &v21, 0x16u);
    }
  }

  else
  {
    v19 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[CSSpeechManager audioProviderWithStreamID:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s No audioRecorder available, return nil for audioProvider", &v21, 0xCu);
    }
  }
}

void sub_100131988(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 _getAudioRecorderWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    *v44 = 0;
    *&v44[8] = v44;
    *&v44[16] = 0x2020000000;
    v45 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100131EAC;
    v32[3] = &unk_100252250;
    v32[4] = v44;
    v32[5] = &v33;
    v5 = *(a1 + 40);
    v32[6] = *(a1 + 48);
    [v4 setContext:v5 completion:v32];
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(*&v44[8] + 24);
      *buf = 136315650;
      v39 = "[CSSpeechManager audioProviderWithContext:error:]_block_invoke_2";
      v40 = 2114;
      v41 = v7;
      v42 = 2048;
      v43 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s For Context : %{public}@, audioStreamId(%llu) has allocated", buf, 0x20u);
    }

    if (*(*&v44[8] + 24))
    {
      v9 = [*(a1 + 32) audioProviders];
      v10 = [NSNumber numberWithUnsignedInteger:*(*&v44[8] + 24)];
      v11 = [v9 objectForKey:v10];

      v12 = CSLogContextFacilityCoreSpeech;
      v13 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v14 = *(*&v44[8] + 24);
          *buf = 136315394;
          v39 = "[CSSpeechManager audioProviderWithContext:error:]_block_invoke";
          v40 = 2048;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s has match with audio stream handle id : %llu", buf, 0x16u);
        }

        v15 = [*(a1 + 32) audioProviders];
        v16 = [NSNumber numberWithUnsignedInteger:*(*&v44[8] + 24)];
        v17 = [v15 objectForKey:v16];
        v18 = *(*(a1 + 56) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        [*(*(*(a1 + 56) + 8) + 40) setLatestRecordContext:*(a1 + 40) streamType:v34[3]];
        goto LABEL_17;
      }

      if (v13)
      {
        v26 = *(*&v44[8] + 24);
        *buf = 136315394;
        v39 = "[CSSpeechManager audioProviderWithContext:error:]_block_invoke";
        v40 = 2048;
        v41 = v26;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s does not match with audio stream handle id(%llu), creating new audio provider", buf, 0x16u);
      }

      v27 = [CSAudioProvider alloc];
      v28 = [v27 initWithAudioStreamHandleId:*(*&v44[8] + 24) audioStreamType:v34[3] audioRecordContext:*(a1 + 40) audioRecorder:v4];
      [v28 start];
      [v28 setAudioProviderDelegate:*(a1 + 32)];
      v29 = [*(a1 + 32) audioProviders];
      v30 = [NSNumber numberWithUnsignedInteger:*(*&v44[8] + 24)];
      [v29 setObject:v28 forKey:v30];

      v31 = *(*(a1 + 56) + 8);
      v24 = *(v31 + 40);
      *(v31 + 40) = v28;
    }

    else
    {
      v24 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
        *buf = 136315394;
        v39 = "[CSSpeechManager audioProviderWithContext:error:]_block_invoke";
        v40 = 2112;
        v41 = v25;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to get audio stream handle ID : %{publid}@", buf, 0x16u);
      }
    }

LABEL_17:
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v44, 8);
    goto LABEL_18;
  }

  v20 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v21 = *(*(*(a1 + 48) + 8) + 40);
    v22 = v20;
    v23 = [v21 localizedDescription];
    *v44 = 136315394;
    *&v44[4] = "[CSSpeechManager audioProviderWithContext:error:]_block_invoke";
    *&v44[12] = 2114;
    *&v44[14] = v23;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to create audio recorder : %{public}@", v44, 0x16u);
  }

LABEL_18:
}

void sub_100131E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100131EAC(void *a1, uint64_t a2, uint64_t a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100131FE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100132080;
  v5[3] = &unk_100252200;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_100132080(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 UUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_10013224C(uint64_t a1)
{
  v2 = [*(a1 + 32) _voiceTriggerEventNotifierCreateIfNeeded:1];
  [v2 registerObserver:*(a1 + 40)];
}

void sub_1001327CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = v7;
      v13 = [v6 localizedDescription];
      *buf = 136315394;
      v19 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]_block_invoke";
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s getVoiceTriggerAsset error : %{public}@", buf, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100132954;
  block[3] = &unk_1002533A0;
  v15 = v5;
  v16 = v9;
  v17 = v8;
  v11 = v5;
  dispatch_async(v10, block);
}

uint64_t sub_100132954(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 resourcePath];
    *buf = 136315394;
    v34 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]_block_invoke";
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger initialization resourcePath: %@", buf, 0x16u);
  }

  if (+[CSUtils supportSmartVolume])
  {
    v6 = +[CSSmartSiriVolumeManager sharedInstance];
    v7 = *(a1 + 40);
    v8 = *(v7 + 224);
    *(v7 + 224) = v6;

    [*(a1 + 40) _reinitializeSmartSiriVolumeWithAsset:*(a1 + 32)];
    v9 = [*(a1 + 40) _voiceTriggerEventNotifierCreateIfNeeded:1];
    [v9 registerObserver:*(*(a1 + 40) + 224)];
  }

  if (+[CSUtils isLocalVoiceTriggerAvailable])
  {
    v10 = [*(a1 + 40) _voiceTriggerFileLoggerCreateIfNeeded:1];
  }

  if (+[CSUtils isLocalVoiceTriggerAvailable])
  {
    [*(a1 + 40) _setAssetForBuiltInVoiceTrigger:*(a1 + 32) completion:0];
  }

  if (+[CSSelfTriggerController shouldSetupSelfTrigger])
  {
    if (!*(*(a1 + 40) + 112))
    {
      v11 = [[CSSelfTriggerController alloc] initWithTargetQueue:*(*(a1 + 40) + 72) audioProviderSelecting:?];
      v12 = *(a1 + 40);
      v13 = *(v12 + 112);
      *(v12 + 112) = v11;

      [*(*(a1 + 40) + 112) setAsset:*(a1 + 32)];
      v14 = *(a1 + 40);
      v15 = v14[14];
      v16 = [v14 _myriadSelfTriggerCoordinatorIfNeeded:1];
      [v15 registerObserver:v16];

      v17 = *(a1 + 40);
      v18 = v17[14];
      v19 = [v17 _voiceTriggerFileLoggerCreateIfNeeded:1];
      [v18 registerObserver:v19];

      v20 = *(a1 + 40);
      if (*(v20 + 80))
      {
        [*(v20 + 112) registerObserver:?];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));

  if (WeakRetained)
  {
    v22 = [*(a1 + 40) _voiceTriggerEventNotifierCreateIfNeeded:0];
    v23 = objc_loadWeakRetained((*(a1 + 40) + 64));
    [v22 registerObserver:v23];
  }

  if ((+[CSUtils supportHearstVoiceTrigger](CSUtils, "supportHearstVoiceTrigger") & 1) != 0 || (+[CSUtils supportRemoraVoiceTrigger](CSUtils, "supportRemoraVoiceTrigger") & 1) != 0 || +[CSUtils supportJarvisVoiceTrigger])
  {
    v24 = +[CSAudioRouteChangeMonitor sharedInstance];
    [v24 addObserver:*(a1 + 40)];

    v25 = +[CSAudioRouteChangeMonitor sharedInstance];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100132D2C;
    v32[3] = &unk_100253078;
    v32[4] = *(a1 + 40);
    [v25 getHearstRouteStatus:v32];

    v26 = +[CSAudioRouteChangeMonitor sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100132E48;
    v31[3] = &unk_1002530A0;
    v31[4] = *(a1 + 40);
    [v26 getJarvisConnected:v31];
  }

  if ((CSIsCommunalDevice() & 1) == 0)
  {
    v27 = +[CSVoiceProfileRetrainManager sharedInstance];
    v28 = *(a1 + 40);
    v29 = *(v28 + 184);
    *(v28 + 184) = v27;

    [*(*(a1 + 40) + 184) triggerVoiceProfileRetrainingWithAsset:*(a1 + 32) withSecureAsset:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100132D2C(uint64_t a1, uint64_t a2)
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]_block_invoke";
    v10 = 2050;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Hearst status: %{public}ld", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013304C;
  v7[3] = &unk_100253C98;
  v7[4] = v5;
  v7[5] = a2;
  dispatch_async(v6, v7);
}

void sub_100132E48(uint64_t a1, int a2)
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 136315394;
    v11 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Jarvis connected ? %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100132F80;
  v8[3] = &unk_100253BF8;
  v9 = a2;
  v8[4] = v6;
  dispatch_async(v7, v8);
}

id *sub_100132F80(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _setupForJarvisIfNeededWithPrepareCompletion:0 completion:&stru_1002521D8];
  }

  return result;
}

void sub_100132FA4(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Setup for Jarvis completed", &v2, 0xCu);
  }
}

id sub_10013304C(id result)
{
  v1 = *(result + 5);
  if (v1)
  {
    v2 = v1 == 5;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return [*(result + 4) _setupForHearstIfNeededWithPrepareCompletion:0 completion:&stru_1002521B8];
  }

  return result;
}

void sub_100133074(id a1)
{
  v1 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s Setup for Hearst completed", &v2, 0xCu);
  }
}

void sub_1001332F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[CSSpeechManager _setupSpeakerRecognitionWithVTAsset:]_block_invoke";
      v10 = 2114;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get SpeakerRecognition assets with error %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 184) triggerVoiceProfileRetrainingWithAsset:v5 withSecureAsset:0];
  }
}

uint64_t sub_100133708(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001338AC(uint64_t a1)
{
  v2 = [*(a1 + 32) audioTapProviders];
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  v5 = CSLogContextFacilityCoreSpeech;
  v6 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 48);
      v17 = 136315394;
      v18 = "[CSSpeechManager audioTapProviderWithType:]_block_invoke";
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s has match with type : %lu", &v17, 0x16u);
    }

    v8 = [*(a1 + 32) audioTapProviders];
    v9 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    v10 = [v8 objectForKey:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    if (v6)
    {
      v13 = *(a1 + 48);
      v17 = 136315394;
      v18 = "[CSSpeechManager audioTapProviderWithType:]_block_invoke";
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s does not match with type : %lu, creating new audioTapProvider", &v17, 0x16u);
    }

    v8 = [[CSAudioTapProvider alloc] initWithTappingType:*(a1 + 48)];
    [v8 setup];
    if (v8)
    {
      v14 = [*(a1 + 32) audioTapProviders];
      v15 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
      [v14 setObject:v8 forKey:v15];

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }

    else
    {
      v16 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315138;
        v18 = "[CSSpeechManager audioTapProviderWithType:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to create audioTapProvider!", &v17, 0xCu);
      }

      v8 = 0;
    }
  }
}

id sub_100133D3C(uint64_t a1)
{
  v2 = +[CSOnDeviceCachedIrPurgingHandler sharedHandler];
  [v2 cleanUpCachedIrDir];

  v3 = +[CSOnDeviceCachedIrPurgingHandler sharedHandler];
  [v3 startRegistration];

  v4 = objc_alloc_init(CSOpportuneSpeakListnerTestService);
  v5 = *(a1 + 32);
  v6 = *(v5 + 208);
  *(v5 + 208) = v4;

  [*(*(a1 + 32) + 208) start];
  +[CSUtils supportsSystemDaemon];
  v7 = +[CSSecureSessionHandler sharedHandler];
  [v7 start];

  v8 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100133E58;
  v10[3] = &unk_100253C20;
  v10[4] = v8;
  [v8 _setupVoiceTriggerWithCompletion:v10];
  result = CSIsCommunalDevice();
  if (result)
  {
    return [*(a1 + 32) _setupSpeakerRecognitionWithVTAsset:0];
  }

  return result;
}

void sub_100133E58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100133ECC;
  block[3] = &unk_100253C20;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10013415C(id a1)
{
  v1 = objc_alloc_init(CSSpeechManager);
  v2 = qword_10029E490;
  qword_10029E490 = v1;
}

void sub_1001347B8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001347DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100134C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100134C58(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

void sub_100134E7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) disconnect];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void sub_100135024(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) disconnect];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void sub_100135194(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSOpportuneSpeakBehaviorMonitor notifyDidStopStream:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(a1 + 32) observers];
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

        [*(*(&v8 + 1) + 8 * v7) opportuneSpeakBehaviorMonitor:*(a1 + 32) didStopStream:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10013537C(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSOpportuneSpeakBehaviorMonitor notifyWillStopStream:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(a1 + 32) observers];
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

        [*(*(&v8 + 1) + 8 * v7) opportuneSpeakBehaviorMonitor:*(a1 + 32) willStopStream:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1001355C0(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSOpportuneSpeakBehaviorMonitor notifyDidStartStreamWithContext:audioProviderUUID:successfully:option:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(a1 + 32) observers];
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

        [*(*(&v8 + 1) + 8 * v7) opportuneSpeakBehaviorMonitor:*(a1 + 32) didStartStreamWithContext:*(a1 + 40) audioProviderUUID:*(a1 + 48) successfully:*(a1 + 64) option:*(a1 + 56)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1001357FC(uint64_t a1)
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[CSOpportuneSpeakBehaviorMonitor notifyWillStartStreamWithContext:audioProviderUUID:option:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(a1 + 32) observers];
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

        [*(*(&v8 + 1) + 8 * v7) opportuneSpeakBehaviorMonitor:*(a1 + 32) willStartStreamWithContext:*(a1 + 40) audioProviderUUID:*(a1 + 48) option:*(a1 + 56)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}