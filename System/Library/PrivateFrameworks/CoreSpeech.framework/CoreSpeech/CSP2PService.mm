@interface CSP2PService
+ (id)sharedInstance;
- (BOOL)fileURL:(id)l matchesFileNamePattern:(id)pattern;
- (BOOL)isHeadlessDeviceDataCollectionModeEnabled;
- (BOOL)isInternalWithoutProfile;
- (BOOL)shouldTransferVoiceTriggerLogFileWithURL:(id)l;
- (CSADCompanionServiceProvider)adCompanionServiceProvider;
- (CSP2PService)init;
- (id)_getContentsOfDirectory:(id)directory;
- (id)_sendGradingData:(id)data withFileName:(id)name toPeerId:(id)id withCompressedFlag:(BOOL)flag withUncompressedDataSize:(unint64_t)size withBatchId:(id)batchId withRetainFileFlag:(BOOL)fileFlag withFilePrefix:(id)self0 withCompletion:(id)self1;
- (id)_sha1:(id)_sha1;
- (id)_spIdSiriDebugGradingDataRootDirectory;
- (id)_spIdSiriDebugTrainedUsersFilePathForLocale:(id)locale;
- (id)_spIdSiriDebugVTDataDirectory;
- (id)_spIdSiriDebugVoiceProfileCacheDirectoryForProfile:(id)profile locale:(id)locale;
- (id)_spIdSiriDebugVoiceProfileRootDirectoryForProfile:(id)profile locale:(id)locale;
- (id)_spIdSiriDebugVoiceProfileStoreRootDirectory;
- (id)_spIdSiriDebugVoiceProfileStoreRootDirectoryForLocale:(id)locale;
- (id)_speakerRecognitionAudioLogsGradingDir;
- (void)_compressFilesInDirectory:(id)directory matchingPredicate:(id)predicate sortedByCreationDate:(BOOL)date compressedFileAvailable:(id)available;
- (void)_createDirectoryIfDoesNotExist:(id)exist;
- (void)_getHomeUserIdForSharedSiriId:(id)id withCompletion:(id)completion;
- (void)_processFetchVoiceProfileCommandFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply;
- (void)_processGradingDataFetchCommandWithRequest:(id)request ofLogType:(unint64_t)type fromSenderID:(id)d withReply:(id)reply;
- (void)_processParallelRecordingCommandWithRequest:(id)request fromSenderID:(id)d withReply:(id)reply;
- (void)_processRemoteHeySiriCommandWithRequest:(id)request fromSenderID:(id)d withReply:(id)reply;
- (void)_processReverseTransferVoiceProfileCommandFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply;
- (void)_processVoiceProfileDeleteCommandWithRequest:(id)request fromSenderID:(id)d withReply:(id)reply;
- (void)_processVoiceProfileListQueryCommandFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply;
- (void)_processVoiceProfileUpdateTriggerFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply;
- (void)_receiveParallelRecordingFromPeerId:(id)id recordingInfo:(id)info withReply:(id)reply;
- (void)_receiveVoiceGradingDataFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply;
- (void)_receiveVoiceProfileFromPeerId:(id)id voiceProfileInfo:(id)info withReply:(id)reply;
- (void)_sendAcousticGradingDataToPeerId:(id)id;
- (void)_sendCoreSpeechGradingDataToPeerId:(id)id forLogType:(unint64_t)type;
- (void)_sendCoreSpeechMagusGradingDataToPeerId:(id)id;
- (void)_sendGeckoSpeechLogsToPeerId:(id)id;
- (void)_sendVoiceProfile:(id)profile toPeerId:(id)id;
- (void)_sendVoiceProfileUpdateTriggerToPeerId:(id)id forLocale:(id)locale;
- (void)_sendVoiceTriggerGradingDataToPeerId:(id)id;
- (void)processRemoteCommandWithPayload:(id)payload fromPeer:(id)peer withReply:(id)reply;
- (void)sendAcousticGradingDataToNearbyPeer;
- (void)sendCoreSpeechGradingDataToNearbyPeer;
- (void)sendGeckoSpeechLogsToCompanion;
- (void)sendVTNearMissGradingDataToCompanion;
- (void)sendVoiceProfileUpdatedMessageToNearbyPeerForLocale:(id)locale;
@end

@implementation CSP2PService

- (CSADCompanionServiceProvider)adCompanionServiceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_adCompanionServiceProvider);

  return WeakRetained;
}

- (BOOL)fileURL:(id)l matchesFileNamePattern:(id)pattern
{
  patternCopy = pattern;
  lCopy = l;
  v16 = 0;
  v7 = [[NSRegularExpression alloc] initWithPattern:patternCopy options:1 error:&v16];

  lastPathComponent = [lCopy lastPathComponent];
  lastPathComponent2 = [lCopy lastPathComponent];

  v10 = [v7 rangeOfFirstMatchInString:lastPathComponent options:16 range:{0, objc_msgSend(lastPathComponent2, "length")}];
  v12 = v11;

  v14 = v10 != 0x7FFFFFFFFFFFFFFFLL || v12 != 0;
  return v14;
}

- (BOOL)shouldTransferVoiceTriggerLogFileWithURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v5 = [pathExtension isEqualToString:@"wav"];

  if (v5)
  {
    path = [lCopy path];
    v7 = [path stringByReplacingOccurrencesOfString:@"wav" withString:@"json"];

    path2 = [lCopy path];
    v9 = path2;
    v10 = @".wav";
    v11 = @"-synced.json";
  }

  else
  {
    pathExtension2 = [lCopy pathExtension];
    v13 = [pathExtension2 isEqualToString:@"json"];

    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    if (CSIsCommunalDevice() && (+[CSUtils isExclaveHardware]& 1) != 0)
    {
      v14 = 1;
      goto LABEL_13;
    }

    path3 = [lCopy path];
    v7 = [path3 stringByReplacingOccurrencesOfString:@"json" withString:@"wav"];

    path2 = [lCopy path];
    v9 = path2;
    v10 = @".json";
    v11 = @"-synced.wav";
  }

  v16 = [path2 stringByReplacingOccurrencesOfString:v10 withString:v11];

  v17 = +[NSFileManager defaultManager];
  if ([v17 fileExistsAtPath:v7])
  {
    v14 = 1;
  }

  else
  {
    v18 = +[NSFileManager defaultManager];
    v14 = [v18 fileExistsAtPath:v16];
  }

LABEL_13:
  return v14;
}

- (id)_sha1:(id)_sha1
{
  _sha1Copy = _sha1;
  CC_SHA1([_sha1Copy bytes], objc_msgSend(_sha1Copy, "length"), md);
  v4 = [NSMutableString stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  return v4;
}

- (BOOL)isInternalWithoutProfile
{
  if (CSIsInternalBuild())
  {
    v2 = +[CSFPreferences sharedPreferences];
    v3 = [v2 isP2PTransferEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isHeadlessDeviceDataCollectionModeEnabled
{
  if (CSIsInternalBuild())
  {
    return 1;
  }

  v3 = +[CSFPreferences sharedPreferences];
  isP2PTransferEnabled = [v3 isP2PTransferEnabled];

  return isP2PTransferEnabled;
}

- (id)_getContentsOfDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSFileManager defaultManager];
  v22 = NSURLNameKey;
  v5 = [NSArray arrayWithObjects:&v22 count:1];
  v15 = 0;
  v6 = [v4 contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v5 options:0 error:&v15];
  v7 = v15;

  if (v7)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }

    *buf = 136315650;
    v17 = "[CSP2PService _getContentsOfDirectory:]";
    v18 = 2112;
    v19 = directoryCopy;
    v20 = 2112;
    v21 = v7;
    v12 = "%s Error reading directory at %@: err: %@";
    v13 = v8;
    v14 = 32;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    goto LABEL_3;
  }

  if (![v6 count])
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 136315394;
    v17 = "[CSP2PService _getContentsOfDirectory:]";
    v18 = 2112;
    v19 = directoryCopy;
    v12 = "%s %@ is empty";
    v13 = v11;
    v14 = 22;
    goto LABEL_12;
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (id)_spIdSiriDebugVoiceProfileCacheDirectoryForProfile:(id)profile locale:(id)locale
{
  profileCopy = profile;
  v7 = [(CSP2PService *)self _spIdSiriDebugVoiceProfileStoreRootDirectoryForLocale:locale];
  v8 = [v7 stringByAppendingPathComponent:@"Caches"];
  v9 = [v8 stringByAppendingPathComponent:profileCopy];

  return v9;
}

- (id)_spIdSiriDebugVoiceProfileRootDirectoryForProfile:(id)profile locale:(id)locale
{
  profileCopy = profile;
  v7 = [(CSP2PService *)self _spIdSiriDebugVoiceProfileStoreRootDirectoryForLocale:locale];
  v8 = [v7 stringByAppendingPathComponent:profileCopy];

  return v8;
}

- (id)_spIdSiriDebugTrainedUsersFilePathForLocale:(id)locale
{
  v3 = [(CSP2PService *)self _spIdSiriDebugVoiceProfileStoreRootDirectoryForLocale:locale];
  v4 = [v3 stringByAppendingPathComponent:@"trained_users.json"];

  return v4;
}

- (id)_spIdSiriDebugVoiceProfileStoreRootDirectoryForLocale:(id)locale
{
  localeCopy = locale;
  _spIdSiriDebugVoiceProfileStoreRootDirectory = [(CSP2PService *)self _spIdSiriDebugVoiceProfileStoreRootDirectory];
  v6 = [_spIdSiriDebugVoiceProfileStoreRootDirectory stringByAppendingPathComponent:localeCopy];

  return v6;
}

- (id)_spIdSiriDebugVoiceProfileStoreRootDirectory
{
  _spIdSiriDebugVTDataDirectory = [(CSP2PService *)self _spIdSiriDebugVTDataDirectory];
  v3 = [_spIdSiriDebugVTDataDirectory stringByAppendingPathComponent:@"VoiceProfileStore"];

  return v3;
}

- (id)_spIdSiriDebugGradingDataRootDirectory
{
  v3 = +[CSFPreferences sharedPreferences];
  remoteGradingDataDirectory = [v3 remoteGradingDataDirectory];

  [(CSP2PService *)self _createDirectoryIfDoesNotExist:remoteGradingDataDirectory];

  return remoteGradingDataDirectory;
}

- (id)_spIdSiriDebugVTDataDirectory
{
  v3 = +[CSFPreferences sharedPreferences];
  remoteP2pLogDirectory = [v3 remoteP2pLogDirectory];

  [(CSP2PService *)self _createDirectoryIfDoesNotExist:remoteP2pLogDirectory];

  return remoteP2pLogDirectory;
}

- (void)_createDirectoryIfDoesNotExist:(id)exist
{
  existCopy = exist;
  v4 = +[NSFileManager defaultManager];
  v5 = v4;
  v14 = 0;
  if (existCopy)
  {
    if ([v4 fileExistsAtPath:existCopy isDirectory:&v14])
    {
      if (v14)
      {
        goto LABEL_15;
      }

      v6 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[CSP2PService _createDirectoryIfDoesNotExist:]";
        v17 = 2112;
        v18 = existCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Direntry with same name exists, this will be removed: %@", buf, 0x16u);
      }

      [v5 removeItemAtPath:existCopy error:0];
    }

    v7 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[CSP2PService _createDirectoryIfDoesNotExist:]";
      v17 = 2112;
      v18 = existCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Creating Directory : %@", buf, 0x16u);
    }

    v13 = 0;
    [v5 createDirectoryAtPath:existCopy withIntermediateDirectories:1 attributes:0 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = CSLogCategorySpkrId;
      if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v16 = "[CSP2PService _createDirectoryIfDoesNotExist:]";
        v17 = 2112;
        v18 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Creating Directory failed : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = CSLogCategorySpkrId;
    if (os_log_type_enabled(CSLogCategorySpkrId, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSP2PService _createDirectoryIfDoesNotExist:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s path is nil - Bailing out", buf, 0xCu);
    }
  }

LABEL_15:
}

- (id)_speakerRecognitionAudioLogsGradingDir
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F06B4;
  block[3] = &unk_100253C20;
  block[4] = self;
  if (qword_10029E378 != -1)
  {
    dispatch_once(&qword_10029E378, block);
  }

  return qword_10029E370;
}

- (void)_sendAcousticGradingDataToPeerId:(id)id
{
  idCopy = id;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F0914;
  v16[3] = &unk_100251648;
  v16[4] = self;
  v5 = [NSPredicate predicateWithBlock:v16];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  v8 = +[CSFPreferences sharedPreferences];
  assistantAudioFileLogDirectory = [v8 assistantAudioFileLogDirectory];
  v10 = [NSURL URLWithString:assistantAudioFileLogDirectory];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F0A8C;
  v13[3] = &unk_100251698;
  v13[4] = self;
  v14 = uUIDString;
  v15 = idCopy;
  v11 = idCopy;
  v12 = uUIDString;
  [(CSP2PService *)self _compressFilesInDirectory:v10 matchingPredicate:v5 compressedFileAvailable:v13];
}

- (void)_sendVoiceProfileUpdateTriggerToPeerId:(id)id forLocale:(id)locale
{
  idCopy = id;
  v16[0] = @"CSP2P_PeerIdentifier_Key";
  v16[1] = @"CSP2P_VoiceProfileLocale_Key";
  v17[0] = idCopy;
  v17[1] = locale;
  localeCopy = locale;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = @"CSP2P_CommandType_Key";
  v14[1] = @"CSP2P_CommandDict_Key";
  v15[0] = @"com.apple.siridebug.command.voiceprofile.update.trigger";
  v15[1] = v8;
  v14[2] = @"type";
  v15[2] = @"corespeech";
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  WeakRetained = objc_loadWeakRetained(&self->_adCompanionServiceProvider);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F1064;
  v12[3] = &unk_1002517C8;
  v13 = idCopy;
  v11 = idCopy;
  [WeakRetained sendMessageWithPayload:v9 toPeer:v11 withReply:v12];
}

- (void)_processVoiceProfileUpdateTriggerFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  if (!CSIsCommunalDevice())
  {
    if (!idCopy || !infoCopy)
    {
      v19 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v26 = "[CSP2PService _processVoiceProfileUpdateTriggerFromPeerId:requestInfo:withReply:]";
        v27 = 2112;
        v28 = idCopy;
        v29 = 2112;
        v30 = infoCopy;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command - %@ %@", buf, 0x20u);
        if (!replyCopy)
        {
          goto LABEL_26;
        }
      }

      else if (!replyCopy)
      {
        goto LABEL_26;
      }

      v11 = 3;
      goto LABEL_16;
    }

    v12 = _IDSCopyIDForDeviceUniqueID();
    if (v12)
    {
      v13 = v12;
      v14 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];

      if (v14)
      {
        v15 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
        v16 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileTransferCompleted_Key"];
        bOOLValue = [v16 BOOLValue];

        if (bOOLValue)
        {
          v18 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.siri.SiriDebug.VoiceProfileSyncTrigger", v13, v15];
          [CSSiriDebugConnection launchSiriDebugAppWithMessage:v18];
        }

        if (replyCopy)
        {
          (*(replyCopy + 2))(replyCopy, 0, 0);
        }
      }

      else
      {
        v22 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "[CSP2PService _processVoiceProfileUpdateTriggerFromPeerId:requestInfo:withReply:]";
          v27 = 2112;
          v28 = infoCopy;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command with locale nil - %@", buf, 0x16u);
          if (!replyCopy)
          {
            goto LABEL_25;
          }
        }

        else if (!replyCopy)
        {
          goto LABEL_25;
        }

        v15 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
        (*(replyCopy + 2))(replyCopy, 0, v15);
      }

      goto LABEL_25;
    }

    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v23 = v20;
      v24 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      v26 = "[CSP2PService _processVoiceProfileUpdateTriggerFromPeerId:requestInfo:withReply:]";
      v27 = 2112;
      v28 = idCopy;
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s ERR: unknown IDS peer with passed Identifier %@, %@ %@", buf, 0x2Au);

      if (!replyCopy)
      {
        goto LABEL_20;
      }
    }

    else if (!replyCopy)
    {
LABEL_20:
      v13 = 0;
      goto LABEL_25;
    }

    v21 = [NSError errorWithDomain:@"CoreSpeech" code:2 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v21);

    goto LABEL_20;
  }

  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "[CSP2PService _processVoiceProfileUpdateTriggerFromPeerId:requestInfo:withReply:]";
    v27 = 2112;
    v28 = idCopy;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s ERR: Rejecting command %@ sent to Horseman device", buf, 0x16u);
    if (!replyCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  if (replyCopy)
  {
LABEL_4:
    v11 = 2;
LABEL_16:
    v13 = [NSError errorWithDomain:@"CoreSpeech" code:v11 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v13);
LABEL_25:
  }

LABEL_26:
}

- (void)_processReverseTransferVoiceProfileCommandFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  if (!CSIsCommunalDevice())
  {
    if (!idCopy || !infoCopy)
    {
      v16 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
        v84 = 2112;
        v85 = idCopy;
        v86 = 2112;
        v87 = infoCopy;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command - %@ %@", buf, 0x20u);
        if (!replyCopy)
        {
          goto LABEL_77;
        }
      }

      else if (!replyCopy)
      {
        goto LABEL_77;
      }

      v12 = 3;
      goto LABEL_14;
    }

    v13 = _IDSCopyIDForDeviceUniqueID();
    if (v13)
    {
      v14 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];

      if (v14)
      {
        v15 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
        if (v15)
        {

          goto LABEL_23;
        }

        v21 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSiriProfileId_Key"];

        if (v21)
        {
LABEL_23:
          v20 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
          v22 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
          if (!v22)
          {
            v22 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSiriProfileId_Key"];
          }

          v23 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileTransferCompleted_Key"];
          bOOLValue = [v23 BOOLValue];

          if (bOOLValue)
          {
            v25 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.siri.SiriDebug.VoiceProfileAddedTrigger", v22, v20];
            [CSSiriDebugConnection launchSiriDebugAppWithMessage:v25];
            if (replyCopy)
            {
              (*(replyCopy + 2))(replyCopy, 0, 0);
            }

            goto LABEL_38;
          }

          v26 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileRelativeFilePath_Key"];

          if (!v26)
          {
            v39 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
              v84 = 2112;
              v85 = infoCopy;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command with relative path nil - %@", buf, 0x16u);
              if (!replyCopy)
              {
                goto LABEL_74;
              }
            }

            else if (!replyCopy)
            {
LABEL_74:

              goto LABEL_75;
            }

            v25 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
            (*(replyCopy + 2))(replyCopy, 0, v25);
LABEL_38:

            goto LABEL_74;
          }

          v27 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileRelativeFilePath_Key"];
          v71 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileData_Key"];
          v69 = v22;
          v70 = [(CSP2PService *)self _spIdSiriDebugVoiceProfileCacheDirectoryForProfile:v22 locale:v20];
          v72 = v27;
          v28 = [v70 stringByAppendingPathComponent:v27];
          v29 = +[NSFileManager defaultManager];
          stringByDeletingLastPathComponent = [v28 stringByDeletingLastPathComponent];
          v75 = 0;
          LOBYTE(v27) = [v29 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v75];
          v73 = v75;

          if ((v27 & 1) == 0)
          {
            v33 = v28;
            v41 = CSLogContextFacilityCoreSpeech;
            v35 = v73;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
              v84 = 2112;
              v85 = v73;
              v36 = "%s CSP2P_VoiceProfileParallelRecordingTransferCmd: Creating directory failed with error %@";
              v37 = v41;
              v38 = 22;
              goto LABEL_45;
            }

LABEL_46:
            v43 = v71;
            v42 = v72;
            if (!replyCopy)
            {
LABEL_73:

              v22 = v69;
              goto LABEL_74;
            }

            v44 = [NSError errorWithDomain:@"CoreSpeech" code:4 userInfo:0];
            (*(replyCopy + 2))(replyCopy, 0, v44);
LABEL_72:

            goto LABEL_73;
          }

          v31 = +[NSFileManager defaultManager];
          v32 = [v31 fileExistsAtPath:v28];

          v33 = v28;
          if (v32)
          {
            v34 = CSLogContextFacilityCoreSpeech;
            v35 = v73;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
              v84 = 2112;
              v85 = v33;
              v86 = 2112;
              v87 = v13;
              v36 = "%s Ignoring sync of existing file %@ from %@";
              v37 = v34;
              v38 = 32;
LABEL_45:
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
              goto LABEL_46;
            }

            goto LABEL_46;
          }

          v45 = [infoCopy objectForKeyedSubscript:@"CSP2P_IsDataCompressed_Key"];
          bOOLValue2 = [v45 BOOLValue];

          v47 = v73;
          if (bOOLValue2)
          {
            v43 = v71;
            v48 = [v71 length];
            src_buffer = [v71 bytes];
            v49 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];

            v50 = v33;
            if (v49)
            {
              [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];
              v52 = v51 = v48;
              integerValue = [v52 integerValue];

              v48 = v51;
            }

            else
            {
              integerValue = 3 * v48;
            }

            v59 = malloc_type_malloc(integerValue, 0x100004077774924uLL);
            if (!v59)
            {
              v66 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
                v84 = 2048;
                v85 = integerValue;
                _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s ERR: Failed to allocate buffer of size %zu, bailing out", buf, 0x16u);
              }

              v42 = v72;
              if (!replyCopy)
              {
                v44 = 0;
                goto LABEL_70;
              }

              v80 = @"CSP2P_VoiceProfileStatus_Key";
              v81 = &off_10025E540;
              v65 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
              v67 = [NSError errorWithDomain:@"CoreSpeech" code:10 userInfo:0];
              (*(replyCopy + 2))(replyCopy, v65, v67);

              v44 = 0;
LABEL_69:

LABEL_70:
              v33 = v50;
              v35 = v73;
              goto LABEL_72;
            }

            v60 = v59;
            v44 = [NSData dataWithBytes:v59 length:compression_decode_buffer(v59, integerValue, src_buffer, v48, 0, COMPRESSION_LZFSE)];
            free(v60);
            v33 = v50;
            v47 = v73;
          }

          else
          {
            v56 = CSLogContextFacilityCoreSpeech;
            v43 = v71;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
              v58 = [infoCopy objectForKeyedSubscript:@"CSP2P_PeerIdentifier_Key"];
              *buf = 136315650;
              v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
              v84 = 2112;
              v85 = v33;
              v86 = 2112;
              v87 = v58;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s Uncompressed file %@ sent by peer %@", buf, 0x20u);
            }

            v44 = v71;
          }

          v74 = v47;
          v61 = [v44 writeToFile:v33 options:0 error:&v74];
          v73 = v74;

          if (v61)
          {
            if (replyCopy)
            {
              v50 = v33;
              v76 = @"CSP2P_VoiceProfileStatus_Key";
              v77 = &off_10025E528;
              v62 = &v77;
              v63 = &v76;
LABEL_68:
              v65 = [NSDictionary dictionaryWithObjects:v62 forKeys:v63 count:1];
              (*(replyCopy + 2))(replyCopy, v65, v73);
              v42 = v72;
              goto LABEL_69;
            }
          }

          else
          {
            v64 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
              v84 = 2112;
              v85 = v33;
              v86 = 2112;
              v87 = v73;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%s Writing to file(%@) failed!. Err=%@", buf, 0x20u);
            }

            if (replyCopy)
            {
              v50 = v33;
              v78 = @"CSP2P_VoiceProfileStatus_Key";
              v79 = &off_10025E540;
              v62 = &v79;
              v63 = &v78;
              goto LABEL_68;
            }
          }

          v42 = v72;
          v35 = v73;
          goto LABEL_72;
        }

        v19 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 136315394;
        v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
        v84 = 2112;
        v85 = infoCopy;
        v40 = "%s ERR: received malformed command with profileId nil - %@";
      }

      else
      {
        v19 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          if (!replyCopy)
          {
            goto LABEL_76;
          }

          v18 = 3;
          goto LABEL_21;
        }

        *buf = 136315394;
        v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
        v84 = 2112;
        v85 = infoCopy;
        v40 = "%s ERR: received malformed command with locale nil - %@";
      }

      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v40, buf, 0x16u);
      goto LABEL_19;
    }

    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v54 = v17;
      v55 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
      v84 = 2112;
      v85 = idCopy;
      v86 = 2112;
      v87 = v55;
      v88 = 2112;
      v89 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s ERR: unknown IDS peer with passed Identifier %@, %@ %@", buf, 0x2Au);

      if (replyCopy)
      {
        goto LABEL_17;
      }
    }

    else if (replyCopy)
    {
LABEL_17:
      v18 = 2;
LABEL_21:
      v20 = [NSError errorWithDomain:@"CoreSpeech" code:v18 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v20);
LABEL_75:

      goto LABEL_76;
    }

    v13 = 0;
    goto LABEL_76;
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v83 = "[CSP2PService _processReverseTransferVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
    v84 = 2112;
    v85 = idCopy;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s ERR: Rejecting command %@ sent to Horseman device", buf, 0x16u);
    if (!replyCopy)
    {
      goto LABEL_77;
    }

    goto LABEL_4;
  }

  if (replyCopy)
  {
LABEL_4:
    v12 = 2;
LABEL_14:
    v13 = [NSError errorWithDomain:@"CoreSpeech" code:v12 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v13);
LABEL_76:
  }

LABEL_77:
}

- (void)_sendVoiceProfile:(id)profile toPeerId:(id)id
{
  profileCopy = profile;
  idCopy = id;
  v6 = +[SSRVoiceProfileManager sharedInstance];
  sSRSpeakerProfilesBasePath = [v6 SSRSpeakerProfilesBasePath];
  appDomain = [profileCopy appDomain];
  v9 = [sSRSpeakerProfilesBasePath stringByAppendingPathComponent:appDomain];

  locale = [profileCopy locale];
  v11 = [v9 stringByAppendingPathComponent:locale];

  profileID = [profileCopy profileID];
  v13 = [v11 stringByAppendingPathComponent:profileID];

  v14 = +[NSFileManager defaultManager];
  v58 = 0;
  v15 = [v14 contentsOfDirectoryAtPath:v13 error:&v58];
  v16 = v58;

  if (v16 || ![v15 count])
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v64 = "[CSP2PService _sendVoiceProfile:toPeerId:]";
      v65 = 2112;
      v66 = v13;
      v67 = 2112;
      v68 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Cannot read contents of directory: %@, err: %@", buf, 0x20u);
    }
  }

  else
  {
    v41 = v15;
    v42 = v6;
    v18 = [v13 stringByAppendingPathComponent:@"td/audio"];
    v19 = [v13 stringByAppendingPathComponent:@"tdti/audio"];
    v20 = [v13 stringByAppendingPathComponent:@"ti/audio"];
    v62[0] = v13;
    v62[1] = v18;
    v40 = v19;
    v62[2] = v19;
    v62[3] = v20;
    v39 = v20;
    v21 = [NSArray arrayWithObjects:v62 count:4];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000F27C0;
    v57[3] = &unk_100251648;
    v57[4] = self;
    v44 = [NSPredicate predicateWithBlock:v57];
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      profileID2 = [profileCopy profileID];
      *buf = 136315394;
      v64 = "[CSP2PService _sendVoiceProfile:toPeerId:]";
      v65 = 2114;
      v66 = profileID2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileFetchCmd: Transferring voice profile %{public}@", buf, 0x16u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v21;
    v25 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v54;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v54 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v53 + 1) + 8 * i);
          v30 = [NSURL fileURLWithPath:v29];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000F2874;
          v49[3] = &unk_1002517F0;
          v49[4] = v29;
          v50 = profileCopy;
          v51 = idCopy;
          selfCopy = self;
          [(CSP2PService *)self _compressFilesInDirectory:v30 matchingPredicate:v44 compressedFileAvailable:v49];
        }

        v26 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v26);
    }

    v31 = [NSMutableDictionary alloc];
    profileID3 = [profileCopy profileID];
    locale2 = [profileCopy locale];
    v34 = [v31 initWithObjectsAndKeys:{idCopy, @"CSP2P_PeerIdentifier_Key", profileID3, @"CSP2P_VoiceProfileProfileId_Key", locale2, @"CSP2P_VoiceProfileLocale_Key", &__kCFBooleanTrue, @"CSP2P_VoiceProfileTransferCompleted_Key", 0}];

    v59[0] = @"CSP2P_CommandType_Key";
    v59[1] = @"CSP2P_CommandDict_Key";
    v60[0] = @"com.apple.siridebug.command.reverse.transfer.voiceprofile";
    v60[1] = v34;
    v59[2] = @"type";
    v60[2] = @"corespeech";
    v35 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:3];
    siriProfileId = [profileCopy siriProfileId];

    if (siriProfileId)
    {
      siriProfileId2 = [profileCopy siriProfileId];
      [v34 setObject:siriProfileId2 forKey:@"CSP2P_VoiceProfileSiriProfileId_Key"];
    }

    WeakRetained = objc_loadWeakRetained(&self->_adCompanionServiceProvider);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000F2D5C;
    v47[3] = &unk_1002517C8;
    v48 = profileCopy;
    [WeakRetained sendMessageWithPayload:v35 toPeer:idCopy withReply:v47];

    v6 = v42;
    v16 = 0;
    v15 = v41;
  }
}

- (void)_processFetchVoiceProfileCommandFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_adCompanionServiceProvider);

  if (!WeakRetained)
  {
    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 136315138;
      *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s Cannot send data across when _adCompanionServiceProvider is nil - returning", v30, 0xCu);
    }

    if (!replyCopy)
    {
      goto LABEL_24;
    }

    v19 = 9;
LABEL_22:
    v12 = [NSError errorWithDomain:@"CoreSpeech" code:v19 userInfo:0];
    replyCopy[2](replyCopy, 0, v12);
    goto LABEL_23;
  }

  if ((CSIsCommunalDevice() & 1) == 0)
  {
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v30 = 136315394;
      *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
      *&v30[12] = 2112;
      *&v30[14] = idCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s ERR: Rejecting command %@ sent to non Horseman device", v30, 0x16u);
      if (!replyCopy)
      {
        goto LABEL_24;
      }
    }

    else if (!replyCopy)
    {
      goto LABEL_24;
    }

    v19 = 2;
    goto LABEL_22;
  }

  if (idCopy && infoCopy)
  {
    v12 = _IDSCopyIDForDeviceUniqueID();
    if (v12)
    {
      v13 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];

      if (v13)
      {
        v14 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];

        if (v14)
        {
          v15 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
          v16 = +[SSRVoiceProfileManager sharedInstance];
          v17 = [v16 voiceProfileForId:v15];
          if (v17)
          {
            if (replyCopy)
            {
              replyCopy[2](replyCopy, 0, 0);
            }

            [(CSP2PService *)self _sendVoiceProfile:v17 toPeerId:idCopy];
            goto LABEL_39;
          }

          v26 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *v30 = 136315394;
            *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
            *&v30[12] = 2112;
            *&v30[14] = v15;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s ERR: Failed to find voice profile with identifier - %@", v30, 0x16u);
            if (!replyCopy)
            {
              goto LABEL_39;
            }
          }

          else if (!replyCopy)
          {
LABEL_39:

            goto LABEL_40;
          }

          v27 = [NSError errorWithDomain:@"CoreSpeech" code:11 userInfo:0];
          replyCopy[2](replyCopy, 0, v27);

          goto LABEL_39;
        }

        v24 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          if (replyCopy)
          {
LABEL_32:
            v23 = 3;
            goto LABEL_33;
          }

LABEL_23:

          goto LABEL_24;
        }

        *v30 = 136315394;
        *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
        *&v30[12] = 2112;
        *&v30[14] = infoCopy;
        v25 = "%s ERR: received malformed command with profileId nil - %@";
      }

      else
      {
        v24 = CSLogContextFacilityCoreSpeech;
        if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *v30 = 136315394;
        *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
        *&v30[12] = 2112;
        *&v30[14] = infoCopy;
        v25 = "%s ERR: received malformed command with locale nil - %@";
      }

      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, v30, 0x16u);
      if (!replyCopy)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v28 = v22;
      v29 = objc_retainBlock(replyCopy);
      *v30 = 136315906;
      *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
      *&v30[12] = 2112;
      *&v30[14] = idCopy;
      *&v30[22] = 2112;
      v31 = v29;
      v32 = 2112;
      v33 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s ERR: unknown IDS peer with passed Identifier %@, %@ %@", v30, 0x2Au);

      if (replyCopy)
      {
        goto LABEL_27;
      }
    }

    else if (replyCopy)
    {
LABEL_27:
      v23 = 2;
LABEL_33:
      v15 = [NSError errorWithDomain:@"CoreSpeech" code:v23 userInfo:0, *v30, *&v30[16]];
      replyCopy[2](replyCopy, 0, v15);
LABEL_40:

      goto LABEL_23;
    }

    v12 = 0;
    goto LABEL_23;
  }

  v21 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *v30 = 136315650;
    *&v30[4] = "[CSP2PService _processFetchVoiceProfileCommandFromPeerId:requestInfo:withReply:]";
    *&v30[12] = 2112;
    *&v30[14] = idCopy;
    *&v30[22] = 2112;
    v31 = infoCopy;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command - %@ %@", v30, 0x20u);
    if (!replyCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (replyCopy)
  {
LABEL_21:
    v19 = 3;
    goto LABEL_22;
  }

LABEL_24:
}

- (void)_getHomeUserIdForSharedSiriId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000F3934;
  v31 = sub_1000F3944;
  v32 = 0;
  v7 = objc_alloc_init(CSDispatchGroup);
  v8 = objc_alloc_init(AFMultiUserConnection);
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[CSP2PService _getHomeUserIdForSharedSiriId:withCompletion:]";
    v37 = 2114;
    v38 = idCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Fetching homeUserId for siriProfileId %{public}@", buf, 0x16u);
  }

  [v7 enter];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000F394C;
  v21 = &unk_1002517A0;
  v10 = v8;
  v22 = v10;
  v26 = &v27;
  v11 = idCopy;
  v23 = v11;
  v12 = v7;
  v24 = v12;
  v13 = completionCopy;
  v25 = v13;
  [v10 getHomeUserIdForSharedUserId:v11 completion:&v18];
  if ([v12 waitWithTimeout:{dispatch_time(0, 100000000)}])
  {
    v14 = [NSString stringWithFormat:@"homeUserId query for siriProfileId %@ timedout !", v11, v18, v19, v20, v21, v22, v23, v24];
    v33 = NSLocalizedDescriptionKey;
    v34 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v16 = [NSError errorWithDomain:CSErrorDomain code:701 userInfo:v15];

    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[CSP2PService _getHomeUserIdForSharedSiriId:withCompletion:]";
      v37 = 2112;
      v38 = v14;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else if (!v13)
    {
LABEL_7:

      goto LABEL_8;
    }

    (*(v13 + 2))(v13, v28[5], v16);
    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v27, 8);
}

- (void)_processVoiceProfileListQueryCommandFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  if ((CSIsCommunalDevice() & 1) == 0)
  {
    v43 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "[CSP2PService _processVoiceProfileListQueryCommandFromPeerId:requestInfo:withReply:]";
      v68 = 2112;
      v69 = idCopy;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%s ERR: Rejecting command %@ sent to non Horseman device", buf, 0x16u);
      if (!replyCopy)
      {
        goto LABEL_49;
      }
    }

    else if (!replyCopy)
    {
      goto LABEL_49;
    }

    v44 = 2;
LABEL_39:
    v10 = [NSError errorWithDomain:@"CoreSpeech" code:v44 userInfo:0];
    replyCopy[2](replyCopy, 0, v10);
    goto LABEL_48;
  }

  if (!idCopy || !infoCopy)
  {
    v45 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v67 = "[CSP2PService _processVoiceProfileListQueryCommandFromPeerId:requestInfo:withReply:]";
      v68 = 2112;
      v69 = idCopy;
      v70 = 2112;
      v71 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command - %@ %@", buf, 0x20u);
      if (!replyCopy)
      {
        goto LABEL_49;
      }
    }

    else if (!replyCopy)
    {
      goto LABEL_49;
    }

    v44 = 3;
    goto LABEL_39;
  }

  v10 = _IDSCopyIDForDeviceUniqueID();
  if (!v10)
  {
    v46 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v49 = v46;
      v50 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      v67 = "[CSP2PService _processVoiceProfileListQueryCommandFromPeerId:requestInfo:withReply:]";
      v68 = 2112;
      v69 = idCopy;
      v70 = 2112;
      v71 = v50;
      v72 = 2112;
      v73 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s ERR: unknown IDS peer with passed Identifier %@, %@ %@", buf, 0x2Au);

      if (replyCopy)
      {
        goto LABEL_42;
      }
    }

    else if (replyCopy)
    {
LABEL_42:
      v47 = 2;
      goto LABEL_46;
    }

    v10 = 0;
    goto LABEL_48;
  }

  v11 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];

  if (!v11)
  {
    v48 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "[CSP2PService _processVoiceProfileListQueryCommandFromPeerId:requestInfo:withReply:]";
      v68 = 2112;
      v69 = infoCopy;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s ERR: received malformed command with locale nil - %@", buf, 0x16u);
      if (!replyCopy)
      {
        goto LABEL_48;
      }
    }

    else if (!replyCopy)
    {
      goto LABEL_48;
    }

    v47 = 3;
LABEL_46:
    v12 = [NSError errorWithDomain:@"CoreSpeech" code:v47 userInfo:0];
    replyCopy[2](replyCopy, 0, v12);
    goto LABEL_47;
  }

  v12 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
  v13 = +[SSRVoiceProfileManager sharedInstance];
  v14 = [v13 provisionedVoiceProfilesForLocale:v12];

  if (!replyCopy)
  {
    goto LABEL_32;
  }

  v52 = v12;
  v53 = v10;
  v54 = replyCopy;
  v55 = infoCopy;
  v56 = idCopy;
  v15 = objc_alloc_init(NSMutableArray);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v51 = v14;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (!v17)
  {
    goto LABEL_31;
  }

  v18 = v17;
  v19 = *v62;
  v58 = SSRSpeakerRecognitionSiriAppDomain;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v62 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v61 + 1) + 8 * i);
      v22 = objc_alloc_init(NSMutableDictionary);
      sharedSiriId = [v21 sharedSiriId];

      if (sharedSiriId)
      {
        sharedSiriId2 = [v21 sharedSiriId];
        [v22 setObject:sharedSiriId2 forKeyedSubscript:@"CSP2P_VoiceProfileSiriProfileId_Key"];
      }

      profileId = [v21 profileId];

      if (profileId)
      {
        profileId2 = [v21 profileId];
        [v22 setObject:profileId2 forKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
      }

      appDomain = [v21 appDomain];

      if (appDomain)
      {
        appDomain2 = [v21 appDomain];
        [v22 setObject:appDomain2 forKeyedSubscript:@"CSP2P_VoiceProfileAppDomain_Key"];
      }

      dateAdded = [v21 dateAdded];

      if (dateAdded)
      {
        v30 = objc_alloc_init(NSDateFormatter);
        [v30 setDateFormat:@"yyyyMMddHHmmss"];
        dateAdded2 = [v21 dateAdded];
        v32 = [v30 stringFromDate:dateAdded2];
        [v22 setObject:v32 forKeyedSubscript:@"CSP2P_VoiceProfileOnboardTimeStamp_Key"];
      }

      homeId = [v21 homeId];

      if (homeId)
      {
        homeId2 = [v21 homeId];
        [v22 setObject:homeId2 forKeyedSubscript:@"CSP2P_VoiceProfileHomeUserId_Key"];
      }

      else
      {
        appDomain3 = [v21 appDomain];
        v36 = [appDomain3 isEqualToString:v58];

        if (!v36)
        {
          goto LABEL_25;
        }

        sharedSiriId3 = [v21 sharedSiriId];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1000F42C0;
        v59[3] = &unk_100251778;
        v60 = v22;
        [(CSP2PService *)self _getHomeUserIdForSharedSiriId:sharedSiriId3 withCompletion:v59];

        homeId2 = v60;
      }

LABEL_25:
      userName = [v21 userName];

      if (userName)
      {
        userName2 = [v21 userName];
        [v22 setObject:userName2 forKeyedSubscript:@"CSP2P_VoiceProfileSpeakerName_Key"];
      }

      languageCode = [v21 languageCode];

      if (languageCode)
      {
        languageCode2 = [v21 languageCode];
        [v22 setObject:languageCode2 forKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
      }

      [v15 addObject:v22];
    }

    v18 = [v16 countByEnumeratingWithState:&v61 objects:v65 count:16];
  }

  while (v18);
LABEL_31:

  v42 = [[NSDictionary alloc] initWithObjectsAndKeys:{v15, @"voiceprofiles", 0}];
  replyCopy = v54;
  (v54)[2](v54, v42, 0);

  infoCopy = v55;
  idCopy = v56;
  v12 = v52;
  v10 = v53;
  v14 = v51;
LABEL_32:

LABEL_47:
LABEL_48:

LABEL_49:
}

- (void)_processGradingDataFetchCommandWithRequest:(id)request ofLogType:(unint64_t)type fromSenderID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_adCompanionServiceProvider);

  if (WeakRetained)
  {
    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0, 0);
    }

    if (type <= 4)
    {
      if (type > 1)
      {
        if (type == 2)
        {
          [(CSP2PService *)self _sendCoreSpeechGradingDataToPeerId:dCopy];
        }

        else if (type == 3)
        {
          [(CSP2PService *)self _sendCoreSpeechMagusGradingDataToPeerId:dCopy];
        }

        else
        {
          [(CSP2PService *)self _sendAcousticGradingDataToPeerId:dCopy];
        }

        goto LABEL_29;
      }

      if (type)
      {
        if (type == 1)
        {
          [(CSP2PService *)self _sendVoiceTriggerGradingDataToPeerId:dCopy];
        }

        goto LABEL_29;
      }

      [(CSP2PService *)self _sendVoiceTriggerGradingDataToPeerId:dCopy];
      [(CSP2PService *)self _sendCoreSpeechGradingDataToPeerId:dCopy];
      [(CSP2PService *)self _sendCoreSpeechMagusGradingDataToPeerId:dCopy];
      [(CSP2PService *)self _sendAcousticGradingDataToPeerId:dCopy];
LABEL_25:
      [(CSP2PService *)self _sendGeckoSpeechLogsToPeerId:dCopy];
      goto LABEL_29;
    }

    if (type <= 6)
    {
      if (type == 5)
      {
        goto LABEL_25;
      }

      selfCopy3 = self;
      v15 = dCopy;
      v16 = 1;
    }

    else if (type == 7)
    {
      selfCopy3 = self;
      v15 = dCopy;
      v16 = 2;
    }

    else
    {
      if (type != 8)
      {
        if (type != 9)
        {
          goto LABEL_29;
        }

        [(CSP2PService *)self _sendVoiceTriggerGradingDataToPeerId:dCopy];
      }

      selfCopy3 = self;
      v15 = dCopy;
      v16 = 3;
    }

    [(CSP2PService *)selfCopy3 _sendCoreSpeechGradingDataToPeerId:v15 forLogType:v16];
    goto LABEL_29;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSP2PService _processGradingDataFetchCommandWithRequest:ofLogType:fromSenderID:withReply:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Cannot send data across when _adCompanionServiceProvider is nil - returning", &v17, 0xCu);
  }

  if (replyCopy)
  {
    v13 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v13);
  }

LABEL_29:
}

- (void)_processVoiceProfileDeleteCommandWithRequest:(id)request fromSenderID:(id)d withReply:(id)reply
{
  requestCopy = request;
  dCopy = d;
  replyCopy = reply;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4644;
  block[3] = &unk_1002533A0;
  v16 = requestCopy;
  v17 = dCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dCopy;
  v14 = requestCopy;
  dispatch_async(queue, block);
}

- (void)_receiveVoiceProfileFromPeerId:(id)id voiceProfileInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  v101 = idCopy;
  if (!idCopy || !infoCopy)
  {
    v30 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      *&buf[4] = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
      *&buf[12] = 2112;
      *&buf[14] = infoCopy;
      *&buf[22] = 2112;
      v131 = v101;
      *v132 = 2112;
      *&v132[2] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: received malformed command - %@ %@ %@", buf, 0x2Au);
    }

    if (replyCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v11 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileData_Key"];
  if (v11)
  {
    v12 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileFileName_Key"];
    if (v12)
    {
      v13 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSpeakerName_Key"];
      if (v13)
      {
        v14 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
        if (v14)
        {
          v15 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileDataType_Key"];
          if (v15)
          {
            v16 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileTotalSegments_Key"];
            if (v16)
            {
              v17 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSegment_Key"];

              if (v17)
              {
                v18 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = v18;
                  v20 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSegment_Key"];
                  v21 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileTotalSegments_Key"];
                  *buf = 136315906;
                  *&buf[4] = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
                  *&buf[12] = 2112;
                  *&buf[14] = v20;
                  *&buf[22] = 2112;
                  v131 = v21;
                  *v132 = 2112;
                  *&v132[2] = v101;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: Received VoiceProfile Segment (%@/%@) from peerId %@", buf, 0x2Au);
                }

                v22 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileData_Key"];
                v23 = [v22 length];

                v24 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileData_Key"];
                v25 = v24;
                bytes = [v24 bytes];

                v27 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];

                if (v27)
                {
                  v28 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];
                  integerValue = [v28 integerValue];
                }

                else
                {
                  integerValue = 3 * v23;
                }

                v43 = malloc_type_malloc(integerValue, 0x100004077774924uLL);
                v44 = v43;
                if (!v43)
                {
                  v89 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
                    *&buf[12] = 2048;
                    *&buf[14] = integerValue;
                    _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%s ERR: Failed to allocate buffer of size %zu, bailing out", buf, 0x16u);
                    if (!replyCopy)
                    {
                      goto LABEL_28;
                    }
                  }

                  else if (!replyCopy)
                  {
                    goto LABEL_28;
                  }

                  v128 = @"CSP2P_VoiceProfileStatus_Key";
                  v129 = &off_10025E540;
                  v42 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                  v90 = [NSError errorWithDomain:@"CoreSpeech" code:10 userInfo:0];
                  (*(replyCopy + 2))(replyCopy, v42, v90);

                  goto LABEL_27;
                }

                v42 = [NSData dataWithBytes:v43 length:compression_decode_buffer(v43, integerValue, bytes, v23, 0, COMPRESSION_LZFSE)];
                free(v44);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v131 = sub_1000F3934;
                *v132 = sub_1000F3944;
                *&v132[8] = 0;
                v45 = +[NSFileManager defaultManager];
                temporaryDirectory = [v45 temporaryDirectory];
                v98 = [temporaryDirectory URLByAppendingPathComponent:@"CoreSpeechCache"];

                v47 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
                v48 = [v98 URLByAppendingPathComponent:v47];

                v49 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
                v50 = [v48 URLByAppendingPathComponent:v49];

                v99 = v50;
                v51 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileDataType_Key"];
                v100 = [v99 URLByAppendingPathComponent:v51];

                v52 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSegment_Key"];
                LODWORD(v50) = [v52 integerValue] == 1;

                if (v50)
                {
                  dword_10029E368 = 0;
                  v53 = +[NSFileManager defaultManager];
                  path = [v100 path];
                  v55 = *&buf[8];
                  obj = *(*&buf[8] + 40);
                  v56 = [v53 removeItemAtPath:path error:&obj];
                  objc_storeStrong((v55 + 40), obj);

                  if ((v56 & 1) == 0)
                  {
                    v57 = CSLogContextFacilityCoreSpeech;
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                    {
                      path2 = [v100 path];
                      v59 = *(*&buf[8] + 40);
                      *v122 = 136315650;
                      v123 = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
                      v124 = 2112;
                      v125 = path2;
                      v126 = 2112;
                      v127 = v59;
                      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: Failed to delete the directory %@ with error %@", v122, 0x20u);
                    }
                  }
                }

                v60 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSegment_Key"];
                integerValue2 = [v60 integerValue];
                v62 = integerValue2 == (dword_10029E368 + 1);

                if (!v62)
                {
                  v91 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                  {
                    v92 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSegment_Key"];
                    *v122 = 136315650;
                    v123 = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
                    v124 = 2112;
                    v125 = v92;
                    v126 = 1024;
                    LODWORD(v127) = dword_10029E368 + 1;
                    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: received VoiceProfileSegment %@, expected %d", v122, 0x1Cu);
                  }

                  if (!replyCopy)
                  {
                    goto LABEL_65;
                  }

                  v120 = @"CSP2P_VoiceProfileStatus_Key";
                  v121 = &off_10025E540;
                  v73 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
                  v76 = [NSError errorWithDomain:@"CoreSpeech" code:4 userInfo:0];
                  (*(replyCopy + 2))(replyCopy, v73, v76);
                  goto LABEL_63;
                }

                v63 = +[NSFileManager defaultManager];
                path3 = [v100 path];
                v65 = *&buf[8];
                v106 = *(*&buf[8] + 40);
                v66 = [v63 createDirectoryAtPath:path3 withIntermediateDirectories:1 attributes:0 error:&v106];
                objc_storeStrong((v65 + 40), v106);

                if ((v66 & 1) == 0)
                {
                  v93 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    v94 = *(*&buf[8] + 40);
                    *v122 = 136315394;
                    v123 = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
                    v124 = 2112;
                    v125 = v94;
                    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: Creating directory failed with error %@", v122, 0x16u);
                  }

                  if (!replyCopy)
                  {
                    goto LABEL_65;
                  }

                  v118 = @"CSP2P_VoiceProfileStatus_Key";
                  v119 = &off_10025E540;
                  v73 = [NSDictionary dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                  v76 = [NSError errorWithDomain:@"CoreSpeech" code:4 userInfo:0];
                  (*(replyCopy + 2))(replyCopy, v73, v76);
                  goto LABEL_63;
                }

                v67 = [v100 URLByAppendingPathComponent:@"audio"];

                path4 = [v67 path];
                [(CSP2PService *)self _createDirectoryIfDoesNotExist:path4];

                v69 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileFileName_Key"];
                v100 = [v67 URLByAppendingPathComponent:v69];

                if (([v42 writeToURL:v100 atomically:0] & 1) == 0)
                {
                  v95 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    *v122 = 136315138;
                    v123 = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
                    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: Writing to file failed!!!", v122, 0xCu);
                  }

                  if (!replyCopy)
                  {
                    goto LABEL_65;
                  }

                  v116 = @"CSP2P_VoiceProfileStatus_Key";
                  v117 = &off_10025E540;
                  v73 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                  v76 = [NSError errorWithDomain:@"CoreSpeech" code:4 userInfo:0];
                  (*(replyCopy + 2))(replyCopy, v73, v76);
                  goto LABEL_63;
                }

                ++dword_10029E368;
                v70 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileTotalSegments_Key"];
                integerValue3 = [v70 integerValue];
                v72 = integerValue3 == dword_10029E368;

                if (!v72)
                {
                  if (!replyCopy)
                  {
                    goto LABEL_65;
                  }

                  v108 = @"CSP2P_VoiceProfileStatus_Key";
                  v109 = &off_10025E558;
                  v73 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
                  (*(replyCopy + 2))(replyCopy, v73, 0);
LABEL_64:

LABEL_65:
                  _Block_object_dispose(buf, 8);

                  goto LABEL_27;
                }

                dword_10029E368 = 0;
                v73 = +[SSRVoiceProfileManager sharedInstance];
                v74 = +[SSRVoiceProfileManager sharedInstance];
                v75 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
                v76 = [v74 newVoiceProfileWithLocale:v75 withAppDomain:SSRSpeakerRecognitionSiriDebugAppDomain];

                v77 = [SSRVoiceProfileRetrainingContext alloc];
                v114 = SSRVoiceRetrainingVoiceProfileKey;
                v115 = v76;
                v78 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                v79 = *&buf[8];
                v105 = *(*&buf[8] + 40);
                v80 = [v77 initWithVoiceRetrainingContext:v78 error:&v105];
                objc_storeStrong((v79 + 40), v105);

                if (*(*&buf[8] + 40))
                {
                  goto LABEL_44;
                }

                v81 = [v99 URLByAppendingPathComponent:@"tdti"];
                v97 = [v81 URLByAppendingPathComponent:@"audio"];

                v82 = [(CSP2PService *)self _getContentsOfDirectory:v97];
                v83 = dispatch_group_create();
                dispatch_group_enter(v83);
                v102[0] = _NSConcreteStackBlock;
                v102[1] = 3221225472;
                v102[2] = sub_1000F5C1C;
                v102[3] = &unk_100251750;
                v104 = buf;
                v84 = v83;
                v103 = v84;
                [v73 addUtterances:v82 toProfile:v76 withContext:v80 withCompletion:v102];
                v85 = dispatch_time(0, 8000000000);
                dispatch_group_wait(v84, v85);
                if (!*(*&buf[8] + 40))
                {
                  v86 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSpeakerName_Key"];
                  v87 = [v73 updateVoiceProfile:v76 withUserName:v86];
                }

                if (*(*&buf[8] + 40))
                {
LABEL_44:
                  if (!replyCopy)
                  {
LABEL_47:

LABEL_63:
                    goto LABEL_64;
                  }

                  v110 = @"CSP2P_VoiceProfileStatus_Key";
                  v111 = &off_10025E540;
                  profileID = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
                  (*(replyCopy + 2))(replyCopy, profileID, *(*&buf[8] + 40));
                }

                else
                {
                  notify_post("com.apple.siri.corespeech.voiceprofilelist.change");
                  if (!replyCopy)
                  {
                    goto LABEL_47;
                  }

                  v112[0] = @"CSP2P_VoiceProfileStatus_Key";
                  v112[1] = @"CSP2P_VoiceProfileProfileId_Key";
                  v113[0] = &off_10025E528;
                  profileID = [v76 profileID];
                  v113[1] = profileID;
                  v96 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
                  (*(replyCopy + 2))(replyCopy, v96, 0);
                }

                goto LABEL_47;
              }

              goto LABEL_23;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v33 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileData_Key"];
    v36 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileFileName_Key"];
    v37 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSpeakerName_Key"];
    v38 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
    v39 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileDataType_Key"];
    v40 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileTotalSegments_Key"];
    v41 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileSegment_Key"];
    *buf = 136316930;
    *&buf[4] = "[CSP2PService _receiveVoiceProfileFromPeerId:voiceProfileInfo:withReply:]";
    *&buf[12] = 2112;
    *&buf[14] = v35;
    *&buf[22] = 2112;
    v131 = v36;
    *v132 = 2112;
    *&v132[2] = v37;
    *&v132[10] = 2112;
    *&v132[12] = v38;
    v133 = 2112;
    v134 = v39;
    v135 = 2112;
    v136 = v40;
    v137 = 2112;
    v138 = v41;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileTransferCmd: received malformed command: CSP2P_VoiceProfileData_Key: %@CSP2P_VoiceProfileFileName_Key: %@CSP2P_VoiceProfileSpeakerName_Key: %@CSP2P_VoiceProfileLocale_Key: %@CSP2P_VoiceProfileDataType_Key: %@CSP2P_VoiceProfileTotalSegments_Key: %@CSP2P_VoiceProfileSegment_Key: %@", buf, 0x52u);
  }

  if (replyCopy)
  {
LABEL_26:
    v42 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v42);
LABEL_27:
  }

LABEL_28:
}

- (void)_receiveVoiceGradingDataFromPeerId:(id)id requestInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  if (idCopy && infoCopy)
  {
    v11 = _IDSCopyIDForDeviceUniqueID();
    if (v11)
    {
      v12 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceDataToBeGraded_Key"];
      if (v12)
      {
        v13 = v12;
        v14 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceFileNameToBeGraded_Key"];

        if (v14)
        {
          v15 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceDataToBeGraded_Key"];
          _spIdSiriDebugGradingDataRootDirectory = [(CSP2PService *)self _spIdSiriDebugGradingDataRootDirectory];
          v17 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceFileNameToBeGraded_Key"];
          v18 = [NSString stringWithFormat:@"%@_%@", v11, v17];

          v19 = [_spIdSiriDebugGradingDataRootDirectory stringByAppendingPathComponent:v18];
          v20 = +[NSFileManager defaultManager];
          v80 = v19;
          LODWORD(v19) = [v20 fileExistsAtPath:v19];

          v21 = CSLogContextFacilityCoreSpeech;
          v22 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            if (v22)
            {
              v23 = v21;
              v24 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceFileNameToBeGraded_Key"];
              *buf = 136315650;
              v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
              v93 = 2112;
              v94 = v24;
              v95 = 2112;
              v96 = v11;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Ignoring sync of existing file %@ from %@", buf, 0x20u);
            }

            v25 = v80;
            if (!replyCopy)
            {
              goto LABEL_67;
            }

            v79 = v18;
            v89 = @"CSP2P_GradingDataTransferStatus_Key";
            v90 = &off_10025E528;
            v26 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            replyCopy[2](replyCopy, v26, 0);
LABEL_66:

            v18 = v79;
LABEL_67:

            goto LABEL_68;
          }

          if (v22)
          {
            *buf = 136315650;
            v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
            v93 = 2112;
            v94 = v18;
            v95 = 2112;
            v96 = v11;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Syncing audio file - %@ from %@", buf, 0x20u);
          }

          v35 = [infoCopy objectForKeyedSubscript:@"CSP2P_IsDataCompressed_Key"];
          bOOLValue = [v35 BOOLValue];

          v79 = v18;
          if ((bOOLValue & 1) == 0)
          {
            v42 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v42;
              v44 = [infoCopy objectForKeyedSubscript:@"CSP2P_PeerIdentifier_Key"];
              *buf = 136315650;
              v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
              v93 = 2112;
              v94 = v80;
              v95 = 2112;
              v96 = v44;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s Uncompressed file %@ sent by peer %@", buf, 0x20u);
            }

            v45 = v15;
            goto LABEL_36;
          }

          v76 = _spIdSiriDebugGradingDataRootDirectory;
          v37 = [v15 length];
          bytes = [v15 bytes];
          v39 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];

          if (v39)
          {
            v40 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];
            integerValue = [v40 integerValue];
          }

          else
          {
            integerValue = 3 * v37;
          }

          v46 = malloc_type_malloc(integerValue, 0x100004077774924uLL);
          if (v46)
          {
            v47 = v46;
            v45 = [NSData dataWithBytes:v46 length:compression_decode_buffer(v46, integerValue, bytes, v37, 0, COMPRESSION_LZFSE)];
            free(v47);
            _spIdSiriDebugGradingDataRootDirectory = v76;
LABEL_36:
            v82 = 0;
            v25 = v80;
            v48 = [v45 writeToFile:v80 options:0 error:&v82];
            v78 = v82;
            if (v48)
            {
              v75 = v45;
              pathExtension = [v80 pathExtension];
              v50 = v80;
              v51 = [pathExtension isEqualToString:@"wav"];

              if (v51)
              {
                v52 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceFileNameToBeGraded_Key"];
                v74 = [v52 stringByReplacingOccurrencesOfString:@".wav" withString:&stru_1002546C0];

                v73 = [infoCopy objectForKeyedSubscript:@"CSP2P_GradingBatchTransferID_Key"];
                lastPathComponent = [v80 lastPathComponent];
                v54 = [lastPathComponent containsString:@"-almost"];

                v77 = _spIdSiriDebugGradingDataRootDirectory;
                if (v54)
                {
                  v55 = v73;
                  if (v73 && (voiceTriggerBatchId = self->_voiceTriggerBatchId) != 0 && [(NSString *)voiceTriggerBatchId isEqualToString:v73])
                  {
                    v57 = v74;
                    [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.siri.SiriDebug.RemoteNearMissGradingTrigger", @"suppressnotification", v74];
                  }

                  else
                  {
                    v57 = v74;
                    [NSString stringWithFormat:@"%@.%@", @"com.apple.siri.SiriDebug.RemoteNearMissGradingTrigger", v74, v72];
                  }
                  v64 = ;
                  v65 = 32;
                }

                else
                {
                  v55 = v73;
                  if (v73 && (voiceIdentificationBatchId = self->_voiceIdentificationBatchId) != 0 && [(NSString *)voiceIdentificationBatchId isEqualToString:v73])
                  {
                    v57 = v74;
                    [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.siri.SiriDebug.SpeakerVoiceGradingTrigger", @"suppressnotification", v74];
                  }

                  else
                  {
                    v57 = v74;
                    [NSString stringWithFormat:@"%@.%@", @"com.apple.siri.SiriDebug.SpeakerVoiceGradingTrigger", v74, v72];
                  }
                  v64 = ;
                  v65 = 40;
                }

                v66 = *(&self->super.isa + v65);
                *(&self->super.isa + v65) = v55;
                v67 = v55;

                [CSSiriDebugConnection launchSiriDebugAppWithMessage:v64];
                _spIdSiriDebugGradingDataRootDirectory = v77;
                v50 = v80;
              }

              v68 = +[NSFileManager defaultManager];
              v69 = [NSDictionary dictionaryWithObject:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSFileProtectionKey];
              v81 = 0;
              [v68 setAttributes:v69 ofItemAtPath:v50 error:&v81];
              v70 = v81;

              v25 = v50;
              if (v70)
              {
                v71 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
                  v93 = 2112;
                  v94 = v50;
                  v95 = 2112;
                  v96 = v78;
                  _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%s Error setting remoteP2Plog file to NSFileProtectionCompleteUntilFirstUserAuthentication. file=%@ Err=%@", buf, 0x20u);
                }
              }

              v45 = v75;
              v26 = v78;
              if (!replyCopy)
              {
                goto LABEL_65;
              }
            }

            else
            {
              v58 = CSLogContextFacilityCoreSpeech;
              v26 = v78;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
                v93 = 2112;
                v94 = v80;
                v95 = 2112;
                v96 = v78;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s Writing to file(%@) failed!. Err=%@", buf, 0x20u);
              }

              if (!replyCopy)
              {
                goto LABEL_65;
              }

              v85 = @"CSP2P_GradingDataTransferStatus_Key";
              v86 = &off_10025E558;
              v59 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
              (replyCopy)[2](replyCopy, v59, v78);
            }

            v83 = @"CSP2P_GradingDataTransferStatus_Key";
            v84 = &off_10025E528;
            v61 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            (replyCopy)[2](replyCopy, v61, v26);
            goto LABEL_64;
          }

          v60 = CSLogContextFacilityCoreSpeech;
          _spIdSiriDebugGradingDataRootDirectory = v76;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
            v93 = 2048;
            v94 = integerValue;
            _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%s ERR: Failed to allocate buffer of size %zu, bailing out", buf, 0x16u);
            if (replyCopy)
            {
              goto LABEL_49;
            }
          }

          else if (replyCopy)
          {
LABEL_49:
            v87 = @"CSP2P_VoiceProfileStatus_Key";
            v88 = &off_10025E540;
            v61 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v62 = [NSError errorWithDomain:@"CoreSpeech" code:10 userInfo:0];
            (replyCopy)[2](replyCopy, v61, v62);

            v45 = 0;
            v26 = 0;
            v25 = v80;
LABEL_64:

LABEL_65:
            goto LABEL_66;
          }

          v45 = 0;
          v26 = 0;
          v25 = v80;
          goto LABEL_65;
        }
      }

      v30 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
        v93 = 2112;
        v94 = infoCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s received malformed command - %@", buf, 0x16u);
      }

      if (!replyCopy)
      {
        goto LABEL_69;
      }

      v31 = 3;
LABEL_23:
      v15 = [NSError errorWithDomain:@"CoreSpeech" code:v31 userInfo:0];
      (replyCopy)[2](replyCopy, 0, v15);
LABEL_68:

      goto LABEL_69;
    }

    v32 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
      v93 = 2112;
      v94 = idCopy;
      v95 = 2112;
      v96 = infoCopy;
      v97 = 2112;
      v98 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s unknown IDS peer with passed Identifier %@, %@ %@", buf, 0x2Au);
    }

    if (replyCopy)
    {
      v31 = 2;
      goto LABEL_23;
    }

    v11 = 0;
LABEL_69:

    goto LABEL_70;
  }

  v27 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    v29 = objc_retainBlock(replyCopy);
    *buf = 136315906;
    v92 = "[CSP2PService _receiveVoiceGradingDataFromPeerId:requestInfo:withReply:]";
    v93 = 2112;
    v94 = infoCopy;
    v95 = 2112;
    v96 = idCopy;
    v97 = 2112;
    v98 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s received malformed command - %@ %@ %@", buf, 0x2Au);
  }

  if (replyCopy)
  {
    v11 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
    (replyCopy)[2](replyCopy, 0, v11);
    goto LABEL_69;
  }

LABEL_70:
}

- (void)_receiveParallelRecordingFromPeerId:(id)id recordingInfo:(id)info withReply:(id)reply
{
  idCopy = id;
  infoCopy = info;
  replyCopy = reply;
  if (idCopy && infoCopy)
  {
    v11 = _IDSCopyIDForDeviceUniqueID();
    if (v11)
    {
      v12 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileRecordedData_Key"];
      if (v12)
      {
        v13 = v12;
        v14 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileRemoteFileName_Key"];
        if (v14)
        {
          v15 = v14;
          v16 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
          if (v16)
          {
            v17 = v16;
            v18 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
            if (v18)
            {
              v19 = v18;
              v20 = [infoCopy objectForKeyedSubscript:@"CSP2P_IsDataCompressed_Key"];

              if (v20)
              {
                v21 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileRecordedData_Key"];
                v22 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileProfileId_Key"];
                v23 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileLocale_Key"];
                v24 = [(CSP2PService *)self _spIdSiriDebugVoiceProfileRootDirectoryForProfile:v22 locale:v23];

                v70 = v24;
                v25 = [v24 stringByAppendingPathComponent:@"remote"];
                v26 = +[NSFileManager defaultManager];
                v72 = 0;
                LOBYTE(v23) = [v26 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v72];
                v27 = v72;

                if ((v23 & 1) == 0)
                {
                  v45 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
                    v83 = 2112;
                    v84 = v27;
                    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileParallelRecordingTransferCmd: Creating directory failed with error %@", buf, 0x16u);
                  }

                  if (!replyCopy)
                  {
                    v47 = v70;
LABEL_65:

                    goto LABEL_32;
                  }

                  v46 = [NSError errorWithDomain:@"CoreSpeech" code:4 userInfo:0];
                  replyCopy[2](replyCopy, 0, v46);
                  v47 = v70;
LABEL_64:

                  goto LABEL_65;
                }

                v28 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceProfileRemoteFileName_Key"];
                v29 = [NSString stringWithFormat:@"%@_%@", v11, v28];

                v68 = v29;
                v30 = [v25 stringByAppendingPathComponent:v29];
                v31 = +[NSFileManager defaultManager];
                v69 = v30;
                LODWORD(v30) = [v31 fileExistsAtPath:v30];

                v32 = CSLogContextFacilityCoreSpeech;
                v33 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
                if (v30)
                {
                  if (v33)
                  {
                    v34 = v32;
                    v35 = [infoCopy objectForKeyedSubscript:@"CSP2P_VoiceFileNameToBeGraded_Key"];
                    *buf = 136315650;
                    v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
                    v83 = 2112;
                    v84 = v35;
                    v85 = 2112;
                    v86 = v11;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s Ignoring sync of existing file %@ from %@", buf, 0x20u);
                  }

                  if (!replyCopy)
                  {
                    v47 = v70;
                    v46 = v68;
LABEL_63:

                    goto LABEL_64;
                  }

                  v79 = @"CSP2P_GradingDataTransferStatus_Key";
                  v80 = &off_10025E528;
                  v36 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
                  (replyCopy)[2](replyCopy, v36, 0);
LABEL_62:
                  v47 = v70;
                  v46 = v68;

                  goto LABEL_63;
                }

                if (v33)
                {
                  *buf = 136315650;
                  v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
                  v83 = 2112;
                  v84 = v68;
                  v85 = 2112;
                  v86 = v11;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s Syncing parallel recorded audio file - %@ from %@", buf, 0x20u);
                }

                v48 = [infoCopy objectForKeyedSubscript:@"CSP2P_IsDataCompressed_Key"];
                bOOLValue = [v48 BOOLValue];

                if ((bOOLValue & 1) == 0)
                {
                  v54 = CSLogContextFacilityCoreSpeech;
                  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                  {
                    v55 = v54;
                    v56 = [infoCopy objectForKeyedSubscript:@"CSP2P_PeerIdentifier_Key"];
                    *buf = 136315650;
                    v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
                    v83 = 2112;
                    v84 = v69;
                    v85 = 2112;
                    v86 = v56;
                    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s Uncompressed file %@ sent by peer %@", buf, 0x20u);
                  }

                  v36 = v21;
LABEL_52:
                  v71 = v27;
                  v59 = [v36 writeToFile:v69 options:0 error:&v71];
                  v60 = v71;

                  if (v59)
                  {
                    if (replyCopy)
                    {
                      v73 = @"CSP2P_VoiceProfileStatus_Key";
                      v74 = &off_10025E528;
                      v61 = &v74;
                      v62 = &v73;
LABEL_59:
                      v64 = [NSDictionary dictionaryWithObjects:v61 forKeys:v62 count:1];
                      (replyCopy)[2](replyCopy, v64, v60);
                      v27 = v60;
LABEL_60:

                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v63 = CSLogContextFacilityCoreSpeech;
                    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
                      v83 = 2112;
                      v84 = v69;
                      v85 = 2112;
                      v86 = v60;
                      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s Writing to file(%@) failed!. Err=%@", buf, 0x20u);
                    }

                    if (replyCopy)
                    {
                      v75 = @"CSP2P_VoiceProfileStatus_Key";
                      v76 = &off_10025E540;
                      v61 = &v76;
                      v62 = &v75;
                      goto LABEL_59;
                    }
                  }

                  v27 = v60;
                  goto LABEL_62;
                }

                v50 = [v21 length];
                src_buffer = [v21 bytes];
                v51 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];

                if (v51)
                {
                  v52 = [infoCopy objectForKeyedSubscript:@"CSP2P_UncompressedDataSize_Key"];
                  integerValue = [v52 integerValue];
                }

                else
                {
                  integerValue = 3 * v50;
                }

                v57 = malloc_type_malloc(integerValue, 0x100004077774924uLL);
                if (v57)
                {
                  v58 = v57;
                  v36 = [NSData dataWithBytes:v57 length:compression_decode_buffer(v57, integerValue, src_buffer, v50, 0, COMPRESSION_LZFSE)];
                  free(v58);
                  goto LABEL_52;
                }

                v65 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
                  v83 = 2048;
                  v84 = integerValue;
                  _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%s ERR: Failed to allocate buffer of size %zu, bailing out", buf, 0x16u);
                  if (replyCopy)
                  {
                    goto LABEL_68;
                  }
                }

                else if (replyCopy)
                {
LABEL_68:
                  v77 = @"CSP2P_VoiceProfileStatus_Key";
                  v78 = &off_10025E540;
                  v64 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
                  v66 = [NSError errorWithDomain:@"CoreSpeech" code:10 userInfo:0];
                  (replyCopy)[2](replyCopy, v64, v66);

                  v36 = 0;
                  goto LABEL_60;
                }

                v36 = 0;
                goto LABEL_62;
              }

              goto LABEL_27;
            }
          }
        }
      }

LABEL_27:
      v44 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
        v83 = 2112;
        v84 = infoCopy;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileParallelRecordingTransferCmd: received malformed command - %@", buf, 0x16u);
      }

      if (!replyCopy)
      {
        goto LABEL_33;
      }

      v43 = 3;
      goto LABEL_31;
    }

    v40 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
      v42 = objc_retainBlock(replyCopy);
      *buf = 136315906;
      v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
      v83 = 2112;
      v84 = idCopy;
      v85 = 2112;
      v86 = infoCopy;
      v87 = 2112;
      v88 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileParallelRecordingTransferCmd: unknown IDS peer with passed Identifier %@, %@ %@", buf, 0x2Au);
    }

    if (replyCopy)
    {
      v43 = 2;
LABEL_31:
      v21 = [NSError errorWithDomain:@"CoreSpeech" code:v43 userInfo:0];
      replyCopy[2](replyCopy, 0, v21);
LABEL_32:

      goto LABEL_33;
    }

    v11 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v37 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v37;
    v39 = objc_retainBlock(replyCopy);
    *buf = 136315906;
    v82 = "[CSP2PService _receiveParallelRecordingFromPeerId:recordingInfo:withReply:]";
    v83 = 2112;
    v84 = infoCopy;
    v85 = 2112;
    v86 = idCopy;
    v87 = 2112;
    v88 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s CSP2P_VoiceProfileParallelRecordingTransferCmd: received malformed command - %@ %@ %@", buf, 0x2Au);
  }

  if (replyCopy)
  {
    v11 = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
    replyCopy[2](replyCopy, 0, v11);
    goto LABEL_33;
  }

LABEL_34:
}

- (id)_sendGradingData:(id)data withFileName:(id)name toPeerId:(id)id withCompressedFlag:(BOOL)flag withUncompressedDataSize:(unint64_t)size withBatchId:(id)batchId withRetainFileFlag:(BOOL)fileFlag withFilePrefix:(id)self0 withCompletion:(id)self1
{
  flagCopy = flag;
  dataCopy = data;
  nameCopy = name;
  idCopy = id;
  batchIdCopy = batchId;
  prefixCopy = prefix;
  completionCopy = completion;
  if (dataCopy && nameCopy && idCopy)
  {
    sizeCopy = size;
    v49 = +[NSUUID UUID];
    stringByDeletingLastPathComponent = [nameCopy stringByDeletingLastPathComponent];
    v54 = batchIdCopy;
    v50 = completionCopy;
    if ([(CSP2PService *)self isInternalWithoutProfile])
    {
      lastPathComponent = [nameCopy lastPathComponent];
    }

    else
    {
      v26 = [NSMutableString alloc];
      lastPathComponent2 = [nameCopy lastPathComponent];
      lastPathComponent = [v26 initWithString:lastPathComponent2];

      v62 = 0;
      v28 = [[NSRegularExpression alloc] initWithPattern:@"[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}" options:1 error:&v62];
      v30 = [v28 rangeOfFirstMatchInString:lastPathComponent options:16 range:{0, objc_msgSend(lastPathComponent, "length")}];
      if (v30 != 0x7FFFFFFFFFFFFFFFLL || v29)
      {
        v47 = [lastPathComponent substringWithRange:{v30, v29}];
        [v47 dataUsingEncoding:4];
        v32 = v31 = stringByDeletingLastPathComponent;
        v33 = [(CSP2PService *)self _sha1:v32];

        stringByDeletingLastPathComponent = v31;
        [v28 replaceMatchesInString:lastPathComponent options:16 range:0 withTemplate:{objc_msgSend(lastPathComponent, "length"), v33}];
      }
    }

    v48 = stringByDeletingLastPathComponent;
    v34 = [NSString stringWithFormat:@"%@%@", prefixCopy, lastPathComponent];
    v35 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v34];

    v65[0] = @"CSP2P_VoiceFileNameToBeGraded_Key";
    lastPathComponent3 = [v35 lastPathComponent];
    v66[0] = lastPathComponent3;
    v65[1] = @"CSP2P_IsDataCompressed_Key";
    v37 = [NSNumber numberWithBool:flagCopy];
    v66[1] = v37;
    v66[2] = dataCopy;
    v65[2] = @"CSP2P_VoiceDataToBeGraded_Key";
    v65[3] = @"CSP2P_PeerIdentifier_Key";
    v66[3] = idCopy;
    v65[4] = @"CSP2P_UncompressedDataSize_Key";
    v38 = [NSNumber numberWithUnsignedLong:sizeCopy];
    v65[5] = @"CSP2P_GradingBatchTransferID_Key";
    v53 = dataCopy;
    v66[4] = v38;
    v66[5] = v54;
    v39 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:6];

    v63[0] = @"CSP2P_CommandType_Key";
    v63[1] = @"CSP2P_CommandDict_Key";
    v64[0] = @"com.apple.siridebug.command.transfer.voicegradingdata";
    v64[1] = v39;
    v63[2] = @"type";
    v64[2] = @"corespeech";
    v40 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:3];
    WeakRetained = objc_loadWeakRetained(&self->_adCompanionServiceProvider);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000F78B8;
    v56[3] = &unk_100251728;
    v57 = v35;
    fileFlagCopy = fileFlag;
    v58 = nameCopy;
    v60 = v50;
    v42 = v49;
    v59 = v42;
    v43 = v35;
    [WeakRetained sendMessageWithPayload:v40 toPeer:idCopy withReply:v56];

    v44 = v59;
    v45 = v42;
    completionCopy = v50;
    v25 = v45;

    dataCopy = v53;
    batchIdCopy = v54;

    goto LABEL_21;
  }

  v23 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"peerId";
    if (idCopy)
    {
      v24 = @"unknown";
    }

    if (!nameCopy)
    {
      v24 = @"fileName";
    }

    if (!dataCopy)
    {
      v24 = @"fileData";
    }

    *buf = 136315394;
    v68 = "[CSP2PService _sendGradingData:withFileName:toPeerId:withCompressedFlag:withUncompressedDataSize:withBatchId:withRetainFileFlag:withFilePrefix:withCompletion:]";
    v69 = 2112;
    v70 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s %@ is nil - Bailing out", buf, 0x16u);
  }

  if (completionCopy)
  {
    lastPathComponent = [NSError errorWithDomain:@"CoreSpeech" code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, lastPathComponent);
    v25 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v25 = 0;
LABEL_22:

  return v25;
}

- (void)_sendCoreSpeechMagusGradingDataToPeerId:(id)id
{
  idCopy = id;
  if (CSIsInternalBuild())
  {
    v5 = [NSPredicate predicateWithBlock:&stru_100251700];
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];

    v8 = +[CSFPreferences sharedPreferences];
    mhLogDirectory = [v8 mhLogDirectory];
    v10 = [NSURL URLWithString:mhLogDirectory];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F7D74;
    v12[3] = &unk_100251698;
    v12[4] = self;
    v13 = uUIDString;
    v14 = idCopy;
    v11 = uUIDString;
    [(CSP2PService *)self _compressFilesInDirectory:v10 matchingPredicate:v5 compressedFileAvailable:v12];
  }
}

- (void)_sendGeckoSpeechLogsToPeerId:(id)id
{
  idCopy = id;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F85EC;
  v16[3] = &unk_100251648;
  v16[4] = self;
  v5 = [NSPredicate predicateWithBlock:v16];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  v8 = +[CSFPreferences sharedPreferences];
  geckoAudioLogDirectory = [v8 geckoAudioLogDirectory];
  v10 = [NSURL URLWithString:geckoAudioLogDirectory];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F8660;
  v13[3] = &unk_100251698;
  v13[4] = self;
  v14 = uUIDString;
  v15 = idCopy;
  v11 = idCopy;
  v12 = uUIDString;
  [(CSP2PService *)self _compressFilesInDirectory:v10 matchingPredicate:v5 sortedByCreationDate:1 compressedFileAvailable:v13];
}

- (void)_sendCoreSpeechGradingDataToPeerId:(id)id forLogType:(unint64_t)type
{
  idCopy = id;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000F8C44;
  v18[3] = &unk_1002516C0;
  v18[4] = self;
  v18[5] = type;
  v7 = [NSPredicate predicateWithBlock:v18];
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];

  v10 = +[CSFPreferences sharedPreferences];
  assistantAudioFileLogDirectory = [v10 assistantAudioFileLogDirectory];
  v12 = [NSURL URLWithString:assistantAudioFileLogDirectory];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F8E24;
  v15[3] = &unk_100251698;
  v15[4] = self;
  v16 = uUIDString;
  v17 = idCopy;
  v13 = idCopy;
  v14 = uUIDString;
  [(CSP2PService *)self _compressFilesInDirectory:v12 matchingPredicate:v7 compressedFileAvailable:v15];
}

- (void)_sendVoiceTriggerGradingDataToPeerId:(id)id
{
  idCopy = id;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F9410;
  v16[3] = &unk_100251648;
  v16[4] = self;
  v5 = [NSPredicate predicateWithBlock:v16];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  v8 = +[CSFPreferences sharedPreferences];
  voiceTriggerAudioLogDirectory = [v8 voiceTriggerAudioLogDirectory];
  v10 = [NSURL URLWithString:voiceTriggerAudioLogDirectory];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F94E4;
  v13[3] = &unk_100251698;
  v13[4] = self;
  v14 = uUIDString;
  v15 = idCopy;
  v11 = idCopy;
  v12 = uUIDString;
  [(CSP2PService *)self _compressFilesInDirectory:v10 matchingPredicate:v5 compressedFileAvailable:v13];
}

- (void)_compressFilesInDirectory:(id)directory matchingPredicate:(id)predicate sortedByCreationDate:(BOOL)date compressedFileAvailable:(id)available
{
  dateCopy = date;
  directoryCopy = directory;
  predicateCopy = predicate;
  availableCopy = available;
  v9 = +[NSFileManager defaultManager];
  v67[0] = NSURLNameKey;
  v67[1] = NSURLIsDirectoryKey;
  v10 = [NSArray arrayWithObjects:v67 count:2];
  v53 = 0;
  v40 = [v9 contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v10 options:0 error:&v53];
  v11 = v53;

  if (!v11)
  {
    if (predicateCopy)
    {
      v38 = [v40 filteredArrayUsingPredicate:?];
    }

    else
    {
      v38 = v40;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = sub_1000F3934;
    v65 = sub_1000F3944;
    v66 = 0;
    if (dateCopy)
    {
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000FA078;
      v52[3] = &unk_100251620;
      v52[4] = buf;
      v13 = [v38 sortedArrayUsingComparator:v52];
    }

    else
    {
      v13 = v38;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    v11 = 0;
    if (!v14)
    {
LABEL_36:

      _Block_object_dispose(buf, 8);
      goto LABEL_37;
    }

    v44 = *v49;
LABEL_12:
    v45 = v14;
    v15 = 0;
    v16 = v11;
    while (1)
    {
      if (*v49 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v48 + 1) + 8 * v15);
      v46 = 0;
      v47 = 0;
      [v17 getResourceValue:&v47 forKey:NSURLIsDirectoryKey error:{&v46, v38}];
      v18 = v47;
      v11 = v46;

      if (v11)
      {
        v19 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 136315650;
          v55 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]";
          v56 = 2112;
          v57 = v17;
          v58 = 2112;
          v59 = v11;
          v20 = v19;
          v21 = "%s Could not determine if [%@] is a directory or not. Err=%@";
          v22 = 32;
LABEL_21:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, v54, v22);
        }
      }

      else
      {
        if (![v18 BOOLValue])
        {
          path = [v17 path];
          v25 = [NSData dataWithContentsOfFile:path];

          v26 = [v25 length];
          v27 = v25;
          bytes = [v25 bytes];
          v29 = malloc_type_malloc(v26, 0x100004077774924uLL);
          v30 = v29;
          if (v29)
          {
            v31 = compression_encode_buffer(v29, v26, bytes, v26, 0, COMPRESSION_LZFSE);
            if (v31)
            {
              v32 = [NSData dataWithBytes:v30 length:v31];
              free(v30);
              v33 = v31;
            }

            else
            {
              v35 = CSLogContextFacilityCoreSpeech;
              if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
              {
                *v54 = 136315650;
                v55 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]";
                v56 = 2112;
                v57 = v17;
                v58 = 2048;
                v59 = v26;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s _compressFilesInDirectory: Compression failed for file %@ (%lu) - Sending Uncompressed", v54, 0x20u);
              }

              free(v30);
              v32 = v25;
              v33 = v26;
            }

            v36 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *v54 = 136315906;
              v55 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]";
              v56 = 2112;
              v57 = v17;
              v58 = 2048;
              v59 = v26;
              v60 = 2048;
              v61 = v33;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s _compressFilesInDirectory: File %@ compressed from %ld to %ld ", v54, 0x2Au);
            }

            path2 = [v17 path];
            availableCopy[2](availableCopy, path2, v32, v26, v33, v31 != 0, 0);
          }

          else
          {
            v34 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *v54 = 136315650;
              v55 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]";
              v56 = 2112;
              v57 = v17;
              v58 = 2048;
              v59 = v26;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s _compressFilesInDirectory: Malloc failed for file %@ (%lu) - Discarding", v54, 0x20u);
            }
          }

          goto LABEL_34;
        }

        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 136315394;
          v55 = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]";
          v56 = 2112;
          v57 = v17;
          v20 = v23;
          v21 = "%s Found dir: %@. Skipping compression";
          v22 = 22;
          goto LABEL_21;
        }
      }

LABEL_34:

      v15 = v15 + 1;
      v16 = v11;
      if (v45 == v15)
      {
        v14 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (!v14)
        {
          goto LABEL_36;
        }

        goto LABEL_12;
      }
    }
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[CSP2PService _compressFilesInDirectory:matchingPredicate:sortedByCreationDate:compressedFileAvailable:]";
    *&buf[12] = 2112;
    *&buf[14] = directoryCopy;
    *&buf[22] = 2112;
    v64 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Cannot read contents of directory: %@, err: %@", buf, 0x20u);
  }

LABEL_37:
}

- (void)_processParallelRecordingCommandWithRequest:(id)request fromSenderID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  v7 = [request objectForKeyedSubscript:@"CSP2P_RemoteRecordingStart_Key"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    v14 = @"CSP2P_RemoteRecordingStatus_Key";
    v15 = &off_10025E4F8;
    v9 = &v15;
    v10 = &v14;
  }

  else
  {
    v12 = @"CSP2P_RemoteRecordingStatus_Key";
    v13 = &off_10025E510;
    v9 = &v13;
    v10 = &v12;
  }

  v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
  replyCopy[2](replyCopy, v11, 0);
}

- (void)_processRemoteHeySiriCommandWithRequest:(id)request fromSenderID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  v7 = [request objectForKeyedSubscript:@"CSP2P_RemoteHeySiriEnable_Key"];
  bOOLValue = [v7 BOOLValue];

  v9 = CSLogContextFacilityCoreSpeech;
  v10 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v10)
    {
      *buf = 136315138;
      v19 = "[CSP2PService _processRemoteHeySiriCommandWithRequest:fromSenderID:withReply:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s CSP2P_RemoteHeySiriCmd: ENABLE HeySiri: Not Implemented Yet: ", buf, 0xCu);
    }

    v16 = @"CSP2P_RemoteHeySiriStatus_Key";
    v17 = &off_10025E4F8;
    v11 = &v17;
    v12 = &v16;
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v19 = "[CSP2PService _processRemoteHeySiriCommandWithRequest:fromSenderID:withReply:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s CSP2P_RemoteHeySiriCmd: DISABLE HeySiri: Not Implemented Yet: ", buf, 0xCu);
    }

    v14 = @"CSP2P_RemoteHeySiriStatus_Key";
    v15 = &off_10025E510;
    v11 = &v15;
    v12 = &v14;
  }

  v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1, v14, v15, v16, v17];
  replyCopy[2](replyCopy, v13, 0);
}

- (void)sendGeckoSpeechLogsToCompanion
{
  if (self->_lastCommunicatedPeer && CSIsHorseman())
  {
    if ([(CSP2PService *)self isHeadlessDeviceDataCollectionModeEnabled])
    {
      v3 = dispatch_time(0, 100000000);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FA624;
      block[3] = &unk_100253C20;
      block[4] = self;
      dispatch_after(v3, queue, block);
    }
  }
}

- (void)sendAcousticGradingDataToNearbyPeer
{
  if (self->_lastCommunicatedPeer && CSIsHorseman())
  {
    if ([(CSP2PService *)self isHeadlessDeviceDataCollectionModeEnabled])
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FA78C;
      block[3] = &unk_100253C20;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)sendVoiceProfileUpdatedMessageToNearbyPeerForLocale:(id)locale
{
  localeCopy = locale;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FA8F0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = localeCopy;
  v6 = localeCopy;
  dispatch_async(queue, v7);
}

- (void)sendVTNearMissGradingDataToCompanion
{
  if (self->_lastCommunicatedPeer && CSIsHorseman())
  {
    if ([(CSP2PService *)self isHeadlessDeviceDataCollectionModeEnabled])
    {
      v3 = dispatch_time(0, 100000000);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FAA88;
      block[3] = &unk_100253C20;
      block[4] = self;
      dispatch_after(v3, queue, block);
    }
  }
}

- (void)sendCoreSpeechGradingDataToNearbyPeer
{
  if (self->_lastCommunicatedPeer && CSIsHorseman())
  {
    if ([(CSP2PService *)self isHeadlessDeviceDataCollectionModeEnabled])
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FABF0;
      block[3] = &unk_100253C20;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)processRemoteCommandWithPayload:(id)payload fromPeer:(id)peer withReply:(id)reply
{
  payloadCopy = payload;
  peerCopy = peer;
  replyCopy = reply;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000FADA0;
  v15[3] = &unk_100252E58;
  v15[4] = self;
  v16 = payloadCopy;
  v17 = peerCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = peerCopy;
  v14 = payloadCopy;
  dispatch_async(queue, v15);
}

- (CSP2PService)init
{
  v8.receiver = self;
  v8.super_class = CSP2PService;
  v2 = [(CSP2PService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.corespeech.p2psvc", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(6);
    sema = v2->_sema;
    v2->_sema = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E358 != -1)
  {
    dispatch_once(&qword_10029E358, &stru_1002515F8);
  }

  v3 = qword_10029E360;

  return v3;
}

@end