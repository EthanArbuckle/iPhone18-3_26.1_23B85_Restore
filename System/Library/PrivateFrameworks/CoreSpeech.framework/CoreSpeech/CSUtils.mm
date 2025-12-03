@interface CSUtils
+ (BOOL)extractArchiveFromDirectory:(id)directory toDir:(id)dir;
+ (BOOL)readAudioChunksFrom:(id)from block:(id)block;
+ (id)distributionDictionary:(id)dictionary;
+ (id)getInputoriginFromRecordType:(id)type withAsset:(id)asset;
+ (id)timeStampString;
+ (unint64_t)getAssetTypeForNamespace:(id)namespace;
+ (void)getTrialIdsForAssetType:(unint64_t)type withCompletion:(id)completion;
+ (void)logMitigationFeatures:(id)features forTask:(id)task withModelOutput:(id)output forMHRequestId:(id)id forRequestId:(id)requestId;
@end

@implementation CSUtils

+ (id)getInputoriginFromRecordType:(id)type withAsset:(id)asset
{
  typeCopy = type;
  assetCopy = asset;
  if ([typeCopy isRequestFromTriggerless])
  {
    v7 = +[CSUtils supportMedocAnnounce];
  }

  else
  {
    v7 = 0;
  }

  if (([typeCopy isBuiltInVoiceTriggered] & 1) != 0 || objc_msgSend(typeCopy, "isHearstVoiceTriggered") && ((objc_msgSend(typeCopy, "isRequestFromSpokenNotification") | v7) & 1) == 0 || objc_msgSend(typeCopy, "isDarwinVoiceTriggered"))
  {
    activationMetadata = [typeCopy activationMetadata];
    v9 = [assetCopy isJSVoiceTrigger:activationMetadata];

    if (v9)
    {
      v10 = &off_10025DD30;
    }

    else
    {
      v10 = &off_10025DD18;
    }
  }

  else if ([typeCopy isUIButtonPress])
  {
    v10 = &off_10025DD48;
  }

  else if ([typeCopy isHomePressed] & 1) != 0 || (objc_msgSend(typeCopy, "isHearstDoubleTapTriggered") & 1) != 0 || (objc_msgSend(typeCopy, "isRTSTriggered"))
  {
    v10 = &off_10025DD60;
  }

  else if (([typeCopy isContinuousConversation] | v7))
  {
    v10 = &off_10025DD78;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (void)logMitigationFeatures:(id)features forTask:(id)task withModelOutput:(id)output forMHRequestId:(id)id forRequestId:(id)requestId
{
  featuresCopy = features;
  taskCopy = task;
  outputCopy = output;
  idCopy = id;
  requestIdCopy = requestId;
  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v81 = "+[CSUtils(AttSiri) logMitigationFeatures:forTask:withModelOutput:forMHRequestId:forRequestId:]";
    v82 = 2112;
    v83 = idCopy;
    v84 = 2112;
    v85 = requestIdCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s mhId:%@ requestId:%@", buf, 0x20u);
  }

  v17 = +[CSFPreferences sharedPreferences];
  isAttentiveSiriAudioLoggingEnabled = [v17 isAttentiveSiriAudioLoggingEnabled];

  if (isAttentiveSiriAudioLoggingEnabled)
  {
    v19 = +[NSFileManager defaultManager];
    v20 = +[CSFPreferences sharedPreferences];
    mhLogDirectory = [v20 mhLogDirectory];

    v69 = v19;
    if ([v19 fileExistsAtPath:mhLogDirectory])
    {
      v74 = 0;
    }

    else
    {
      v77 = 0;
      v23 = [v19 createDirectoryAtPath:mhLogDirectory withIntermediateDirectories:1 attributes:0 error:&v77];
      v74 = v77;
      if ((v23 & 1) == 0)
      {
        v24 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v57 = v24;
          localizedDescription = [v74 localizedDescription];
          *buf = 136315650;
          v81 = "+[CSUtils(AttSiri) logMitigationFeatures:forTask:withModelOutput:forMHRequestId:forRequestId:]";
          v82 = 2114;
          v83 = mhLogDirectory;
          v84 = 2114;
          v85 = localizedDescription;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s Couldn't create Ures slogging directory at path %{public}@ %{public}@", buf, 0x20u);
        }

        mhLogDirectory = @"/tmp";
      }
    }

    v70 = requestIdCopy;
    v71 = idCopy;
    if (requestIdCopy)
    {
      v25 = requestIdCopy;
    }

    else
    {
      v25 = idCopy;
    }

    taskCopy = [NSString stringWithFormat:@"%@-%@.json", v25, taskCopy];
    v68 = mhLogDirectory;
    v66 = [(__CFString *)mhLogDirectory stringByAppendingPathComponent:?];
    speechPackage = [featuresCopy speechPackage];
    v27 = [SLUresMitigator getTranscriptionForSpeechPackage:speechPackage];

    v28 = @"N/A";
    if (v27)
    {
      v28 = v27;
    }

    v29 = v28;

    v78[0] = @"Task";
    v78[1] = @"Transcript";
    v72 = outputCopy;
    v73 = taskCopy;
    v79[0] = taskCopy;
    v79[1] = v29;
    v65 = v29;
    v79[2] = outputCopy;
    v78[2] = @"DetailedModelResult";
    v78[3] = @"AcousticFTMScore";
    acousticFTMScores = [featuresCopy acousticFTMScores];
    v79[3] = acousticFTMScores;
    v78[4] = @"InputOrigin";
    inputOrigin = [featuresCopy inputOrigin];
    v79[4] = inputOrigin;
    v78[5] = @"gazeSignal";
    v62 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [featuresCopy didDetectGazeAtOrb]);
    v79[5] = v62;
    v78[6] = @"visualVadSignal";
    v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [featuresCopy didDetectVisualActivity]);
    v79[6] = v61;
    v78[7] = @"attentionSignal";
    v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [featuresCopy didDetectAttention]);
    v79[7] = v60;
    v78[8] = @"osdSignal";
    v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [featuresCopy didDetectSpeechActivity]);
    v79[8] = v59;
    v78[9] = @"timeSinceLastQuery";
    [featuresCopy timeSinceLastQuery];
    v30 = [NSNumber numberWithDouble:?];
    v79[9] = v30;
    v78[10] = @"airpodsConnected";
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [featuresCopy isAirpodsConnected]);
    v79[10] = v31;
    v78[11] = @"boronSignal";
    boronScore = [featuresCopy boronScore];
    v79[11] = boronScore;
    v78[12] = @"decisionStage";
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [featuresCopy decisionStage]);
    v79[12] = v33;
    v78[13] = @"prevInputLevel";
    prevStageOutput = [featuresCopy prevStageOutput];
    v79[13] = prevStageOutput;
    v78[14] = @"speakerIDScore";
    speakerIDScore = [featuresCopy speakerIDScore];
    v79[14] = speakerIDScore;
    v78[15] = @"eosLikelihood";
    eosLikelihood = [featuresCopy eosLikelihood];
    v79[15] = eosLikelihood;
    v78[16] = @"timestamp";
    v37 = +[CSUtils timeStampString];
    v79[16] = v37;
    v38 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:17];

    v39 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v81 = "+[CSUtils(AttSiri) logMitigationFeatures:forTask:withModelOutput:forMHRequestId:forRequestId:]";
      v82 = 2112;
      v83 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s Mitigation Dict :%@", buf, 0x16u);
    }

    speechPackage2 = [featuresCopy speechPackage];
    dictionaryRepresentation = [speechPackage2 dictionaryRepresentation];

    if (dictionaryRepresentation)
    {
      v42 = +[NSMutableDictionary dictionary];
      v43 = v38;
      [v42 addEntriesFromDictionary:v38];
      [v42 setObject:dictionaryRepresentation forKey:@"RawASRRecogCandidate"];
      speechPackage3 = [featuresCopy speechPackage];
      latticeMitigatorResult = [speechPackage3 latticeMitigatorResult];
      dictionaryRepresentation2 = [latticeMitigatorResult dictionaryRepresentation];

      taskCopy = v73;
      if (dictionaryRepresentation2)
      {
        [v42 setObject:dictionaryRepresentation2 forKey:@"LatticeRNNResult"];
      }

      nldaScore = [featuresCopy nldaScore];
      if (nldaScore)
      {
        [v42 setObject:nldaScore forKey:@"NLDAScore"];
      }

      v38 = [v42 copy];
    }

    else
    {
      taskCopy = v73;
    }

    v76 = v74;
    v48 = [NSJSONSerialization dataWithJSONObject:v38 options:1 error:&v76];
    v49 = v76;

    if (!v48 || v49)
    {
      v50 = v38;
      v54 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v55 = v54;
        localizedDescription2 = [v49 localizedDescription];
        *buf = 136315394;
        v81 = "+[CSUtils(AttSiri) logMitigationFeatures:forTask:withModelOutput:forMHRequestId:forRequestId:]";
        v82 = 2114;
        v83 = localizedDescription2;
        _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s Failed to serialize data with err: %{public}@", buf, 0x16u);
      }

      v53 = taskCopy;
      v52 = v68;
      v51 = v66;
    }

    else
    {
      v50 = v38;
      v75 = 0;
      v51 = v66;
      [v48 writeToFile:v66 options:0 error:&v75];
      v49 = v75;
      v53 = taskCopy;
      v52 = v68;
    }

    requestIdCopy = v70;
    idCopy = v71;
    outputCopy = v72;
  }

  else
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v81 = "+[CSUtils(AttSiri) logMitigationFeatures:forTask:withModelOutput:forMHRequestId:forRequestId:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s AttSiri logging not enabled", buf, 0xCu);
    }
  }
}

+ (void)getTrialIdsForAssetType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  if (type == 3)
  {
    v6 = 114;
    v7 = 322;
  }

  else if (type == 4)
  {
    v6 = 117;
    v7 = 404;
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    v9 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    v6 = 0;
    if (v9)
    {
      v11 = 136315394;
      v12 = "+[CSUtils(Trial) getTrialIdsForAssetType:withCompletion:]";
      v13 = 2050;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Unknown namespaceId for assetType %{public}lu ", &v11, 0x16u);
      v7 = 0;
      v6 = 0;
    }
  }

  if (completionCopy)
  {
    v10 = [TRINamespace namespaceNameFromId:v7];
    completionCopy[2](completionCopy, v6, v10);
  }
}

+ (unint64_t)getAssetTypeForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v4 = [TRINamespace namespaceNameFromId:322];
  v5 = [namespaceCopy isEqualToString:v4];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v7 = [TRINamespace namespaceNameFromId:404];
    v8 = [namespaceCopy isEqualToString:v7];

    if (v8)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (BOOL)extractArchiveFromDirectory:(id)directory toDir:(id)dir
{
  directoryCopy = directory;
  dirCopy = dir;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "+[CSUtils(Compression) extractArchiveFromDirectory:toDir:]";
    v11 = 2114;
    v12 = directoryCopy;
    v13 = 2114;
    v14 = dirCopy;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unable to expand archive %{public}@ to directory %{public}@", &v9, 0x20u);
  }

  return 0;
}

+ (id)distributionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v30[0] = @"Max";
    v30[1] = @"Min";
    v31[0] = &off_10025E7C8;
    v31[1] = &off_10025E7C8;
    v30[2] = @"P95";
    v30[3] = @"Median";
    v31[2] = &off_10025E7C8;
    v31[3] = &off_10025E7C8;
    v30[4] = @"Avg";
    v30[5] = @"Std";
    v31[4] = &off_10025E7C8;
    v31[5] = &off_10025E7C8;
    v30[6] = @"Num";
    v31[6] = &off_10025E7C8;
    v4 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:7];
    v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

    v6 = [dictionaryCopy count];
    if (v6)
    {
      v7 = [NSNumber numberWithUnsignedInteger:v6];
      [v5 setObject:v7 forKeyedSubscript:@"Num"];

      v8 = [NSExpression expressionForConstantValue:dictionaryCopy];
      v29 = v8;
      v9 = [NSArray arrayWithObjects:&v29 count:1];
      v10 = [NSExpression expressionForFunction:@"average:" arguments:v9];

      v11 = [v10 expressionValueWithObject:0 context:0];
      [v5 setObject:v11 forKeyedSubscript:@"Avg"];

      v12 = [NSExpression expressionForConstantValue:dictionaryCopy];
      v28 = v12;
      v13 = [NSArray arrayWithObjects:&v28 count:1];
      v14 = [NSExpression expressionForFunction:@"stddev:" arguments:v13];

      v15 = [v14 expressionValueWithObject:0 context:0];
      [v5 setObject:v15 forKeyedSubscript:@"Std"];

      [dictionaryCopy sortUsingComparator:&stru_1002526D0];
      v16 = [dictionaryCopy objectAtIndexedSubscript:v6 >> 1];
      [v16 doubleValue];
      v18 = v17;

      if ((v6 & 1) == 0)
      {
        v19 = [dictionaryCopy objectAtIndexedSubscript:(v6 >> 1) - 1];
        [v19 doubleValue];
        v21 = v20;

        v18 = (v18 + v21) * 0.5;
      }

      v22 = [NSNumber numberWithDouble:v18];
      [v5 setObject:v22 forKeyedSubscript:@"Median"];

      v23 = [dictionaryCopy objectAtIndexedSubscript:0];
      [v5 setObject:v23 forKeyedSubscript:@"Min"];

      v24 = [dictionaryCopy objectAtIndexedSubscript:v6 - 1];
      [v5 setObject:v24 forKeyedSubscript:@"Max"];

      v25 = [dictionaryCopy objectAtIndexedSubscript:vcvtmd_u64_f64(v6 * 0.95)];
      [v5 setObject:v25 forKeyedSubscript:@"P95"];

      v6 = v5;
    }
  }

  else
  {
    v26 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "+[CSUtils(Statistics) distributionDictionary:]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s input dictionary is nil", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)readAudioChunksFrom:(id)from block:(id)block
{
  fromCopy = from;
  blockCopy = block;
  inPropertyData[0] = xmmword_1001AA2A8;
  inPropertyData[1] = unk_1001AA2B8;
  v21 = 16;
  outExtAudioFile = 0;
  outAudioFile = 0;
  if (!AudioFileOpenURL([NSURL URLWithString:fromCopy], kAudioFileReadPermission, 0, &outAudioFile))
  {
    if (!ExtAudioFileWrapAudioFileID(outAudioFile, 0, &outExtAudioFile))
    {
      goto LABEL_5;
    }

    AudioFileClose(outAudioFile);
  }

  outAudioFile = 0;
LABEL_5:
  if (outExtAudioFile)
  {
    v17 = 0;
    memset(outPropertyData, 0, sizeof(outPropertyData));
    ioPropertyDataSize = 40;
    ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &ioPropertyDataSize, outPropertyData);
    ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
    v7 = [NSMutableData dataWithLength:2048];
    *&ioData.mNumberBuffers = 1;
    *&ioData.mBuffers[0].mNumberChannels = 0x80000000001;
    ioData.mBuffers[0].mData = [v7 mutableBytes];
    while (1)
    {
      ioNumberFrames = 1024;
      v8 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
      v9 = v8 == 0;
      if (v8)
      {
        break;
      }

      if (!ioNumberFrames)
      {
        goto LABEL_14;
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, ioData.mBuffers[0].mData, ioData.mBuffers[0].mDataByteSize >> 1);
      }
    }

    v10 = v8;
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "+[CSUtils(AudioFile) readAudioChunksFrom:block:]";
      v24 = 1026;
      v25 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error reading audio file: %{public}d, skipping...", buf, 0x12u);
    }

LABEL_14:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end