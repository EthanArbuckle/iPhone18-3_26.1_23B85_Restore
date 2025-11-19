@interface MRMediaRemoteCommandOptionsSerialization
@end

@implementation MRMediaRemoteCommandOptionsSerialization

uint64_t ___MRMediaRemoteCommandOptionsSerialization_block_invoke()
{
  v92[85] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = _MRMediaRemoteCommandOptionsSerialization___serialization;
  _MRMediaRemoteCommandOptionsSerialization___serialization = v0;

  v67 = _MRMediaRemoteCommandOptionsSerialization___serialization;
  v91[0] = @"kMRMediaRemoteOptionIsExternalPlayerCommand";
  v90 = NSStringFromSelector(sel_externalPlayerCommand);
  v92[0] = v90;
  v91[1] = @"kMRMediaRemoteOptionIsNegative";
  v89 = NSStringFromSelector(sel_negative);
  v92[1] = v89;
  v91[2] = @"kMRMediaRemoteOptionMediaType";
  v88 = NSStringFromSelector(sel_mediaType);
  v92[2] = v88;
  v91[3] = @"kMRMediaRemoteOptionPlaybackPosition";
  v87 = NSStringFromSelector(sel_playbackPosition);
  v92[3] = v87;
  v91[4] = @"kMRMediaRemoteOptionBeginSeek";
  v86 = NSStringFromSelector(sel_beginSeek);
  v92[4] = v86;
  v91[5] = @"kMRMediaRemoteOptionEndSeek";
  v85 = NSStringFromSelector(sel_endSeek);
  v92[5] = v85;
  v91[6] = @"kMRMediaRemoteOptionPlaybackRate";
  v84 = NSStringFromSelector(sel_playbackRate);
  v92[6] = v84;
  v91[7] = @"kMRMediaRemoteOptionRepeatMode";
  v83 = NSStringFromSelector(sel_repeatMode);
  v92[7] = v83;
  v91[8] = @"kMRMediaRemoteCommandInfoPreservesRepeatModeKey";
  v82 = NSStringFromSelector(sel_preservesRepeatMode);
  v92[8] = v82;
  v91[9] = @"kMRMediaRemoteOptionShuffleMode";
  v81 = NSStringFromSelector(sel_shuffleMode);
  v92[9] = v81;
  v91[10] = @"kMRMediaRemoteCommandInfoPreservesShuffleModeKey";
  v80 = NSStringFromSelector(sel_preservesShuffleMode);
  v92[10] = v80;
  v91[11] = @"kMRMediaRemoteOptionQueueEndAction";
  v79 = NSStringFromSelector(sel_queueEndAction);
  v92[11] = v79;
  v91[12] = @"kMRMediaRemoteCommandInfoPreservesQueueEndActionKey";
  v78 = NSStringFromSelector(sel_preservesQueueEndAction);
  v92[12] = v78;
  v91[13] = @"kMRMediaRemoteOptionSkipInterval";
  v77 = NSStringFromSelector(sel_skipInterval);
  v92[13] = v77;
  v91[14] = @"kMRMediaRemoteOptionSourceID";
  v76 = NSStringFromSelector(sel_sourceID);
  v92[14] = v76;
  v91[15] = @"kMRMediaRemoteOptionStationHash";
  v75 = NSStringFromSelector(sel_radioStationHash);
  v92[15] = v75;
  v91[16] = @"kMRMediaRemoteOptionStationID";
  v74 = NSStringFromSelector(sel_radioStationID);
  v92[16] = v74;
  v91[17] = @"kMRMediaRemoteOptionSystemAppPlaybackQueueData";
  v73 = NSStringFromSelector(sel_systemAppPlaybackQueueData);
  v92[17] = v73;
  v91[18] = @"MRMediaRemoteOptionSystemAppPlaybackQueue";
  v72 = NSStringFromSelector(sel_systemAppPlaybackQueue);
  v92[18] = v72;
  v91[19] = @"PQso";
  v71 = NSStringFromSelector(sel_shouldOverrideManuallyCuratedQueue);
  v92[19] = v71;
  v91[20] = @"kMRMediaRemoteOptionTrackID";
  v70 = NSStringFromSelector(sel_trackID);
  v92[20] = v70;
  v91[21] = @"kMRMediaRemoteOptionContentItemID";
  v69 = NSStringFromSelector(sel_contentItemID);
  v92[21] = v69;
  v91[22] = @"kMRMediaRemoteOptionDestinationAppDisplayID";
  v68 = NSStringFromSelector(sel_destinationAppDisplayID);
  v92[22] = v68;
  v91[23] = @"kMRMediaRemoteOptionSendOptionsNumber";
  v66 = NSStringFromSelector(sel_sendOptions);
  v92[23] = v66;
  v91[24] = @"kMRMediaRemoteOptionRequestDefermentToPlaybackQueuePosition";
  v65 = NSStringFromSelector(sel_requestDefermentToPlaybackQueuePosition);
  v92[24] = v65;
  v91[25] = @"kMRMediaRemoteOptionRating";
  v64 = NSStringFromSelector(sel_rating);
  v92[25] = v64;
  v91[26] = @"kMRMediaRemoteOptionContextID";
  v63 = NSStringFromSelector(sel_contextID);
  v92[26] = v63;
  v91[27] = @"kMRMediaRemoteOptionDesiredSessionID";
  v62 = NSStringFromSelector(sel_desiredSessionID);
  v92[27] = v62;
  v91[28] = @"kMRMediaRemoteOptionStationURL";
  v61 = NSStringFromSelector(sel_stationURL);
  v92[28] = v61;
  v91[29] = @"kMRMediaRemoteOptionShouldBeginRadioPlayback";
  v60 = NSStringFromSelector(sel_shouldBeginRadioPlayback);
  v92[29] = v60;
  v91[30] = @"kMRMediaRemoteOptionPlaybackQueueInsertionPosition";
  v59 = NSStringFromSelector(sel_playbackQueueInsertionPosition);
  v92[30] = v59;
  v91[31] = @"kMRMediaRemoteOptionPlaybackQueueOffset";
  v58 = NSStringFromSelector(sel_playbackQueueOffset);
  v92[31] = v58;
  v91[32] = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
  v57 = NSStringFromSelector(sel_playbackQueueDestinationOffset);
  v92[32] = v57;
  v91[33] = @"kMRMediaRemoteOptionLanguageOptionData";
  v56 = NSStringFromSelector(sel_languageOption);
  v92[33] = v56;
  v91[34] = @"kMRMediaRemoteOptionInsertAfterContentItemID";
  v55 = NSStringFromSelector(sel_insertAfterContentItemID);
  v92[34] = v55;
  v91[35] = @"kMRMediaRemoteOptionInsertBeforeContentItemID";
  v54 = NSStringFromSelector(sel_insertBeforeContentItemID);
  v92[35] = v54;
  v91[36] = @"kMRMediaRemoteOptionNowPlayingContentItemID";
  v53 = NSStringFromSelector(sel_nowPlayingContentItemID);
  v92[36] = v53;
  v91[37] = @"PQri";
  v52 = NSStringFromSelector(sel_replaceIntent);
  v92[37] = v52;
  v91[38] = @"kMRMediaRemoteOptionCommandID";
  v51 = NSStringFromSelector(sel_commandID);
  v92[38] = v51;
  v91[39] = @"kMRMediaRemoteOptionSenderID";
  v50 = NSStringFromSelector(sel_senderID);
  v92[39] = v50;
  v91[40] = @"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier";
  v49 = NSStringFromSelector(sel_remoteControlInterface);
  v92[40] = v49;
  v91[41] = @"kMRMediaRemoteOptionPlaybackSessionData";
  v48 = NSStringFromSelector(sel_playbackSession);
  v92[41] = v48;
  v91[42] = @"kMRMediaRemoteOptionPlaybackSessionIdentifier";
  v47 = NSStringFromSelector(sel_playbackSessionIdentifier);
  v92[42] = v47;
  v91[43] = @"kMRMediaRemoteOptionPlaybackSessionType";
  v46 = NSStringFromSelector(sel_playbackSessionType);
  v92[43] = v46;
  v91[44] = @"kMRMediaRemoteOptionPlaybackSessionPriority";
  v45 = NSStringFromSelector(sel_playbackSessionPriority);
  v92[44] = v45;
  v91[45] = @"kMRMediaRemoteOptionPlaybackSessionFilePath";
  v44 = NSStringFromSelector(sel_playbackSessionFilePath);
  v92[45] = v44;
  v91[46] = @"kMRMediaRemoteOptionPlaybackSessionRevision";
  v43 = NSStringFromSelector(sel_playbackSessionRevision);
  v92[46] = v43;
  v91[47] = @"kMRMediaRemoteOptionPlaybackSessionMetadata";
  v42 = NSStringFromSelector(sel_playbackSessionMetadata);
  v92[47] = v42;
  v91[48] = @"kMRMediaRemoteOptionUserIdentityData";
  v41 = NSStringFromSelector(sel_userIdentityData);
  v92[48] = v41;
  v91[49] = @"kMRMediaRemoteOptionHomeKitUserIdentifier";
  v40 = NSStringFromSelector(sel_homeKitUserIdentifier);
  v92[49] = v40;
  v91[50] = @"kMRMediaRemoteOptionVerifySupportedCommands";
  v39 = NSStringFromSelector(sel_verifySupportedCommands);
  v92[50] = v39;
  v91[51] = @"kMRMediaRemoteOptionAssistantSetQueueTrueCompletion";
  v38 = NSStringFromSelector(sel_trueCompletion);
  v92[51] = v38;
  v91[52] = @"kMRMediaRemoteOptionCommandTimeout";
  v37 = NSStringFromSelector(sel_commandTimeout);
  v92[52] = v37;
  v91[53] = @"kMRMediaRemoteOptionPlaybackAuthorizationToken";
  v36 = NSStringFromSelector(sel_playbackAuthorizationToken);
  v92[53] = v36;
  v91[54] = @"kMRMediaRemoteOptionEventNoticeType";
  v35 = NSStringFromSelector(sel_eventNoticeType);
  v92[54] = v35;
  v91[55] = @"kMRMediaRemoteOptionEventNoticeIdentifier";
  v34 = NSStringFromSelector(sel_eventNoticeIdentifier);
  v92[55] = v34;
  v91[56] = @"kMRMediaRemoteOptionSharedPlaybackSessionIdentifier";
  v33 = NSStringFromSelector(sel_sharedPlaybackSessionIdentifier);
  v92[56] = v33;
  v91[57] = @"kMRMediaRemoteOptionOriginatingDeviceUID";
  v32 = NSStringFromSelector(sel_originatingDeviceUID);
  v92[57] = v32;
  v91[58] = @"kMRMediaRemoteOptionDestinationDeviceUIDs";
  v31 = NSStringFromSelector(sel_destinationDeviceUIDs);
  v92[58] = v31;
  v91[59] = @"kMRMediaRemoteOptionAlwaysIgnoreDuringCall";
  v30 = NSStringFromSelector(sel_alwaysIgnoreDuringCall);
  v92[59] = v30;
  v91[60] = @"kMRMediaRemoteOptionAlwaysIgnoreDuringSharePlay";
  v29 = NSStringFromSelector(sel_alwaysIgnoreDuringSharePlay);
  v92[60] = v29;
  v91[61] = @"kMRMediaRemoteOptionCommandSequenceUUID";
  v28 = NSStringFromSelector(sel_commandSequenceUUID);
  v92[61] = v28;
  v91[62] = @"kMRMediaRemoteOptionAssistantTTSEndTimestamp";
  v27 = NSStringFromSelector(sel_assistantTTSEndTimestamp);
  v92[62] = v27;
  v91[63] = @"kMRMediaRemoteOptionAssistantCommandSendTimestamp";
  v26 = NSStringFromSelector(sel_assistantCommandSendTimestamp);
  v92[63] = v26;
  v91[64] = @"kMRMediaRemoteOptionVocalsControlActive";
  v25 = NSStringFromSelector(sel_vocalsControlActive);
  v92[64] = v25;
  v91[65] = @"kMRMediaRemoteOptionVocalsControlLevel";
  v24 = NSStringFromSelector(sel_vocalsControlLevel);
  v92[65] = v24;
  v91[66] = @"kMRMediaRemoteOptionVocalsControlMinLevel";
  v23 = NSStringFromSelector(sel_vocalsControlMinLevel);
  v92[66] = v23;
  v91[67] = @"kMRMediaRemoteOptionVocalsControlMaxLevel";
  v22 = NSStringFromSelector(sel_vocalsControlMaxLevel);
  v92[67] = v22;
  v91[68] = @"kMRMediaRemoteOptionVocalsControlContinuous";
  v21 = NSStringFromSelector(sel_vocalsControlContinuous);
  v92[68] = v21;
  v91[69] = @"kMRMediaRemoteOptionOriginatedFromRemoteDevice";
  v20 = NSStringFromSelector(sel_originatedFromRemoteDevice);
  v92[69] = v20;
  v91[70] = @"kMRMediaRemoteOptionSiriTurnIdentifier";
  v19 = NSStringFromSelector(sel_siriTurnIdentifier);
  v92[70] = v19;
  v91[71] = @"kMRMediaRemoteOptionSiriSearchDataSetIdentifier";
  v18 = NSStringFromSelector(sel_siriSearchDataSetIdentifier);
  v92[71] = v18;
  v91[72] = @"kMRMediaRemoteOptionPrepareForSetQueueIsProactive";
  v17 = NSStringFromSelector(sel_prepareForSetQueueIsProactive);
  v92[72] = v17;
  v91[73] = @"kMRMediaRemoteOptionPrepareForSetQueueProactiveReason";
  v16 = NSStringFromSelector(sel_prepareForSetQueueProactiveReason);
  v92[73] = v16;
  v91[74] = @"MRMediaRemoteOptionPrepareForSetQueueProactiveReasonType";
  v15 = NSStringFromSelector(sel_prepareForSetQueueProactiveReasonType);
  v92[74] = v15;
  v91[75] = @"kMRMediaRemoteOptionApplicationUserIdentity";
  v14 = NSStringFromSelector(sel_applicationUserIdentity);
  v92[75] = v14;
  v91[76] = @"kMRMediaRemoteOptionAssociatedParticipantIdentifier";
  v2 = NSStringFromSelector(sel_associatedParticipantIdentifier);
  v92[76] = v2;
  v91[77] = @"kMRMediaRemoteOptionDialogOptions";
  v3 = NSStringFromSelector(sel_dialogOptions);
  v92[77] = v3;
  v91[78] = @"kMRMediaRemoteOptionClientPreferredLanguages";
  v4 = NSStringFromSelector(sel_clientPreferredLanguages);
  v92[78] = v4;
  v91[79] = @"kMRMediaRemoteOptionSleepTimerTime";
  v5 = NSStringFromSelector(sel_sleepTimerTime);
  v92[79] = v5;
  v91[80] = @"kMRMediaRemoteOptionSleepTimerStopMode";
  v6 = NSStringFromSelector(sel_sleepTimerStopMode);
  v92[80] = v6;
  v91[81] = @"kMRMediaRemoteOptionReferencePosition";
  v7 = NSStringFromSelector(sel_referencePosition);
  v92[81] = v7;
  v91[82] = @"kMRMediaRemoteOptionEnhanceDialogueActive";
  v8 = NSStringFromSelector(sel_enhanceDialogueActive);
  v92[82] = v8;
  v91[83] = @"kMRMediaRemoteOptionDelegateAccountData";
  v9 = NSStringFromSelector(sel_delegateAccountData);
  v92[83] = v9;
  v91[84] = @"kMRMediaRemoteOptionDelegateAccountDataType";
  v10 = NSStringFromSelector(sel_delegateAccountDataType);
  v92[84] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:85];
  [v67 setDictionaryKeyToProtobufKeyMapping:v11];

  [_MRMediaRemoteCommandOptionsSerialization___serialization setProtobufClass:objc_opt_class()];
  [_MRMediaRemoteCommandOptionsSerialization___serialization setDictionaryValueToProtobufValueTransformer:&__block_literal_global_173];
  [_MRMediaRemoteCommandOptionsSerialization___serialization setProtobufValueToDictionaryValueTransformer:&__block_literal_global_183_0];
  result = [_MRMediaRemoteCommandOptionsSerialization___serialization setProtobufValueToDictionaryPostTransformer:&__block_literal_global_190];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id ___MRMediaRemoteCommandOptionsSerialization_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"kMRMediaRemoteOptionRepeatMode"] || objc_msgSend(v5, "isEqualToString:", @"kMRMediaRemoteOptionShuffleMode"))
  {
    v7 = [v6 unsignedIntValue];
    v8 = MEMORY[0x1E696AD98];
    if (v7 - 1 >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"PQri"])
  {
    v13 = [v6 intValue];
    v8 = MEMORY[0x1E696AD98];
    if (v13 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (v13 == 2);
    }

    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"kMRMediaRemoteOptionSendOptionsNumber"])
  {
    v14 = [v6 intValue];
    v8 = MEMORY[0x1E696AD98];
    v9 = v14 == 1;
LABEL_6:
    v10 = [v8 numberWithInt:v9];
LABEL_7:
    v11 = v10;

    v6 = v11;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"kMRMediaRemoteOptionPlaybackSessionPriority"])
  {
    v15 = [v6 intValue];
    v8 = MEMORY[0x1E696AD98];
    if (v15 == 512)
    {
      v16 = 512;
    }

    else
    {
      v16 = 1024;
    }

    if (v15)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"kMRMediaRemoteOptionDialogOptions"])
  {
    if ((_NSIsNSDictionary() & 1) == 0)
    {
      ___MRMediaRemoteCommandOptionsSerialization_block_invoke_2_cold_1();
    }

    v10 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v6);
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

id ___MRMediaRemoteCommandOptionsSerialization_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = NSStringFromSelector(sel_repeatMode);
  v8 = [v5 isEqualToString:v7];

  if (v8 || (NSStringFromSelector(sel_shuffleMode), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v5 isEqualToString:v9], v9, v10))
  {
    v11 = [v6 unsignedIntValue];
    v12 = MEMORY[0x1E696AD98];
    if (v11 - 1 >= 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

LABEL_6:
    v14 = [v12 numberWithInt:v13];
LABEL_7:
    v15 = v14;

    v6 = v15;
    goto LABEL_8;
  }

  v17 = NSStringFromSelector(sel_replaceIntent);
  v18 = [v5 isEqualToString:v17];

  if (v18)
  {
    v19 = [v6 unsignedIntValue];
    v12 = MEMORY[0x1E696AD98];
    if (v19 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v19 == 2);
    }

    goto LABEL_6;
  }

  v20 = NSStringFromSelector(sel_sendOptions);
  v21 = [v5 isEqualToString:v20];

  if (v21)
  {
    v22 = [v6 intValue] == 1;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
    goto LABEL_7;
  }

  v23 = NSStringFromSelector(sel_playbackSessionPriority);
  v24 = [v5 isEqualToString:v23];

  if (v24)
  {
    v25 = [v6 intValue];
    if (v25)
    {
      if (v25 == 512)
      {
        v26 = 512;
      }

      else
      {
        v26 = 1024;
      }
    }

    else
    {
      v26 = 0;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
    goto LABEL_7;
  }

  v27 = NSStringFromSelector(sel_dialogOptions);
  v28 = [v5 isEqualToString:v27];

  if (v28)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      ___MRMediaRemoteCommandOptionsSerialization_block_invoke_3_cold_1(v6);
    }

    v14 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v6);
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

void ___MRMediaRemoteCommandOptionsSerialization_block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v9 systemAppPlaybackQueue];

  if (v5)
  {
    v6 = [v9 systemAppPlaybackQueue];
    v7 = MRSystemAppPlaybackQueueCreateFromProtobuf(v6);

    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation(*MEMORY[0x1E695E480], v7);
    [v9 setSystemAppPlaybackQueueData:ExternalRepresentation];
    [v4 setObject:ExternalRepresentation forKeyedSubscript:@"kMRMediaRemoteOptionSystemAppPlaybackQueueData"];
    [v4 setObject:0 forKeyedSubscript:@"MRMediaRemoteOptionSystemAppPlaybackQueue"];
    MRSystemAppPlaybackQueueDestroy(v7);
  }
}

void ___MRMediaRemoteCommandOptionsSerialization_block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRProtobufSerialization *_MRMediaRemoteCommandOptionsSerialization(void)_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"MRProtobufUtility.m" lineNumber:494 description:@"Expected dictionary value for kMRMediaRemoteOptionDialogOptions"];
}

void ___MRMediaRemoteCommandOptionsSerialization_block_invoke_3_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MRProtobufSerialization *_MRMediaRemoteCommandOptionsSerialization(void)_block_invoke_3"];
  [v3 handleFailureInFunction:v2 file:@"MRProtobufUtility.m" lineNumber:517 description:{@"Expected DictionaryProtobuf value for kMRMediaRemoteOptionDialogOptions: %@", a1}];
}

@end