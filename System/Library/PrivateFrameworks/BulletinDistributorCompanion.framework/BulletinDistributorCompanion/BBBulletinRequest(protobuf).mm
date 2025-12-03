@interface BBBulletinRequest(protobuf)
+ (id)_actionFromBLTPBAction:()protobuf;
+ (uint64_t)plistTypes;
+ (void)bulletinRequestFromProtobuf:()protobuf;
@end

@implementation BBBulletinRequest(protobuf)

+ (void)bulletinRequestFromProtobuf:()protobuf
{
  v146 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CF3518]);
  sectionID = [v4 sectionID];
  [v5 setSectionID:sectionID];

  recordID = [v4 recordID];
  [v5 setRecordID:recordID];

  publisherBulletinID = [v4 publisherBulletinID];
  [v5 setPublisherBulletinID:publisherBulletinID];

  [v5 setSectionSubtype:{objc_msgSend(v4, "sectionSubtype")}];
  title = [v4 title];
  [v5 setTitle:title];

  subtitle = [v4 subtitle];
  [v5 setSubtitle:subtitle];

  messageTitle = [v4 messageTitle];
  [v5 setMessage:messageTitle];

  [v5 setLoading:{objc_msgSend(v4, "loading")}];
  [v5 setTurnsOnDisplay:{objc_msgSend(v4, "turnsOnDisplay")}];
  dismissalID = [v4 dismissalID];
  [v5 setDismissalID:dismissalID];

  v13 = MEMORY[0x277CBEB98];
  subsectionIDs = [v4 subsectionIDs];
  v15 = [v13 setWithArray:subsectionIDs];
  [v5 setSubsectionIDs:v15];

  peopleIDs = [v4 peopleIDs];
  [v5 setPeopleIDs:peopleIDs];

  [v5 setIgnoresQuietMode:{objc_msgSend(v4, "ignoresQuietMode")}];
  categoryID = [v4 categoryID];
  [v5 setCategoryID:categoryID];

  threadID = [v4 threadID];
  [v5 setThreadID:threadID];

  [v5 setPreemptsPresentedAlert:{objc_msgSend(v4, "preemptsPresentedAlert")}];
  if ([v4 suppressDelayForForwardedBulletins])
  {
    [v5 setContextValue:MEMORY[0x277CBEC38] forKey:@"BLTSuppressDelayForForwardedBulletinsKey"];
  }

  icon = [v4 icon];

  if (icon)
  {
    icon2 = [v4 icon];
    v21 = BBSectionIconFromBLTPBSectionIcon(icon2);
    [v5 setIcon:v21];
  }

  if ([v4 hasDate])
  {
    v22 = MEMORY[0x277CBEAA8];
    [v4 date];
    v23 = [v22 dateWithTimeIntervalSince1970:?];
    [v5 setDate:v23];
  }

  [v5 setDateFormatStyle:1];
  sockPuppetAppBundleID = [v4 sockPuppetAppBundleID];
  if (sockPuppetAppBundleID)
  {
    [v5 setContextValue:sockPuppetAppBundleID forKey:@"BLTSockPuppetAppIdentifierKey"];
  }

  v117 = sockPuppetAppBundleID;
  if ([v4 hasRequiredExpirationDate])
  {
    v25 = MEMORY[0x277CBEAA8];
    [v4 requiredExpirationDate];
    v26 = [v25 dateWithTimeIntervalSince1970:?];
    [v5 setExpirationDate:v26];
  }

  action = [MEMORY[0x277CF3500] action];
  [v5 setAcknowledgeAction:action];

  snoozeAction = [v4 snoozeAction];

  if (snoozeAction)
  {
    action2 = [MEMORY[0x277CF3500] action];
    [v5 setSnoozeAction:action2];
  }

  action3 = [MEMORY[0x277CF3500] action];
  [v5 setDismissAction:action3];

  if ([v4 hasAttachmentType])
  {
    v31 = objc_alloc_init(MEMORY[0x277CF3540]);
    [v31 setType:{objc_msgSend(v4, "attachmentType")}];
    attachmentURLURL = [v4 attachmentURLURL];
    [v31 setURL:attachmentURLURL];

    [v5 setPrimaryAttachment:v31];
  }

  v119 = v5;
  array = [MEMORY[0x277CBEB18] array];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  additionalAttachments = [v4 additionalAttachments];
  v35 = [additionalAttachments countByEnumeratingWithState:&v132 objects:v145 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v133;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v133 != v37)
        {
          objc_enumerationMutation(additionalAttachments);
        }

        v39 = *(*(&v132 + 1) + 8 * i);
        if ([v39 hasURL])
        {
          v40 = objc_alloc_init(MEMORY[0x277CF3540]);
          [v40 setType:{objc_msgSend(v39, "type")}];
          attachmentURLURL2 = [v39 attachmentURLURL];
          [v40 setURL:attachmentURLURL2];

          [array addObject:v40];
        }
      }

      v36 = [additionalAttachments countByEnumeratingWithState:&v132 objects:v145 count:16];
    }

    while (v36);
  }

  v42 = v119;
  if ([array count])
  {
    [v119 setAdditionalAttachments:array];
  }

  context = [v4 context];
  if (context)
  {
    v43 = MEMORY[0x277CCAAC8];
    plistTypes = [self plistTypes];
    v131 = 0;
    v45 = [v43 unarchivedObjectOfClasses:plistTypes fromData:context error:&v131];
    v46 = v131;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || v46)
    {
      v47 = blt_general_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v116 = objc_opt_class();
        *buf = 138413058;
        v138 = v4;
        v139 = 2112;
        v140 = v45;
        v141 = 2112;
        v142 = v116;
        v143 = 2112;
        v144 = v46;
        v42 = v119;
        _os_log_error_impl(&dword_241FB3000, v47, OS_LOG_TYPE_ERROR, "Bulletin %@ failed to unarchive context dictionary, dict=%@ dictClass=%@ error=%@", buf, 0x2Au);
      }
    }

    else
    {
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __59__BBBulletinRequest_protobuf__bulletinRequestFromProtobuf___block_invoke;
      v129[3] = &unk_278D31E60;
      v130 = v119;
      [v45 enumerateKeysAndObjectsUsingBlock:v129];
      v47 = v130;
    }
  }

  alertSuppressionContexts = [v4 alertSuppressionContexts];

  if (alertSuppressionContexts)
  {
    alertSuppressionContexts2 = [v4 alertSuppressionContexts];
    alertSuppressionContextsNulls = [v4 alertSuppressionContextsNulls];
    v128 = 0;
    v51 = [BLTObjectSerializer unserializeObject:alertSuppressionContexts2 nulls:alertSuppressionContextsNulls error:&v128];
    v52 = v128;

    if (!v52)
    {
      v53 = [MEMORY[0x277CBEB98] setWithArray:v51];
      [v42 setAlertSuppressionContexts:v53];
    }
  }

  if ([v4 includesSound])
  {
    if ([v4 soundAlertType])
    {
      v54 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:{objc_msgSend(v4, "soundAlertType")}];
      soundAccountIdentifier = [v4 soundAccountIdentifier];

      if (soundAccountIdentifier)
      {
        soundAccountIdentifier2 = [v4 soundAccountIdentifier];
        [v54 setTopic:soundAccountIdentifier2];
      }

      soundToneIdentifier = [v4 soundToneIdentifier];

      if (soundToneIdentifier)
      {
        soundToneIdentifier2 = [v4 soundToneIdentifier];
        [v54 setToneIdentifier:soundToneIdentifier2];
      }

      if ([v4 hasSoundShouldRepeat])
      {
        [v54 setShouldRepeat:{objc_msgSend(v4, "soundShouldRepeat")}];
      }

      if ([v4 hasSoundShouldIgnoreRingerSwitch])
      {
        [v54 setShouldIgnoreRingerSwitch:{objc_msgSend(v4, "soundShouldIgnoreRingerSwitch")}];
      }

      if ([v4 hasSoundMaximumDuration])
      {
        [v4 soundMaximumDuration];
        [v54 setMaximumDuration:?];
      }

      if ([v4 hasSoundAudioVolume])
      {
        [v4 soundAudioVolume];
        *&v59 = v59;
        [v54 setAudioVolume:v59];
      }

      v60 = [objc_alloc(MEMORY[0x277CF3588]) initWithToneAlertConfiguration:v54];
    }

    else
    {
      v60 = [objc_alloc(MEMORY[0x277CF3588]) initWithToneAlert:17];
    }

    [v42 setSound:v60];
  }

  v61 = MEMORY[0x277CBEB18];
  supplementaryActions = [v4 supplementaryActions];
  v63 = [v61 arrayWithCapacity:{objc_msgSend(supplementaryActions, "count")}];

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  supplementaryActions2 = [v4 supplementaryActions];
  v65 = [supplementaryActions2 countByEnumeratingWithState:&v124 objects:v136 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v125;
    do
    {
      for (j = 0; j != v66; ++j)
      {
        if (*v125 != v67)
        {
          objc_enumerationMutation(supplementaryActions2);
        }

        v69 = [self _actionFromBLTPBAction:*(*(&v124 + 1) + 8 * j)];
        [v63 addObject:v69];
      }

      v66 = [supplementaryActions2 countByEnumeratingWithState:&v124 objects:v136 count:16];
    }

    while (v66);
  }

  [v119 setSupplementaryActions:v63];
  categoryID2 = [v4 categoryID];

  if (categoryID2)
  {
    categoryID3 = [v4 categoryID];
    [v119 setContextValue:categoryID3 forKey:@"category"];
  }

  teamID = [v4 teamID];

  if (teamID)
  {
    teamID2 = [v4 teamID];
    [v119 setContextValue:teamID2 forKey:@"teamID"];
  }

  if ([v4 hasHasCriticalIcon])
  {
    [v119 setHasCriticalIcon:{objc_msgSend(v4, "hasCriticalIcon")}];
  }

  if ([v4 hasHeader])
  {
    header = [v4 header];
    [v119 setHeader:header];
  }

  if ([v4 hasContentType])
  {
    contentType = [v4 contentType];
    [v119 setContentType:contentType];
  }

  if ([v4 hasInterruptionLevel])
  {
    [v119 setInterruptionLevel:{objc_msgSend(v4, "interruptionLevel")}];
  }

  if ([v4 hasCommunicationContext])
  {
    v76 = MEMORY[0x277CF3520];
    communicationContext = [v4 communicationContext];
    v78 = [v76 communicationContextFromProtobuf:communicationContext];
    [v119 setCommunicationContext:v78];
  }

  if ([v4 hasFilterCriteria])
  {
    filterCriteria = [v4 filterCriteria];
    [v119 setFilterCriteria:filterCriteria];
  }

  if ([v4 hasFollowActivityAction])
  {
    v80 = MEMORY[0x277CF3500];
    followActivityAction = [v4 followActivityAction];
    identifier = [followActivityAction identifier];
    followActivityAction2 = [v4 followActivityAction];
    appearance = [followActivityAction2 appearance];
    title2 = [appearance title];
    v86 = [v80 actionWithIdentifier:identifier title:title2];

    followActivityAction3 = [v4 followActivityAction];
    [v86 setActivationMode:{objc_msgSend(followActivityAction3, "activationMode")}];

    [v119 setFollowActivityAction:v86];
  }

  if ([v4 hasSubordinateIcon])
  {
    [v119 setHasSubordinateIcon:{objc_msgSend(v4, "hasSubordinateIcon")}];
  }

  if ([v4 hasSummary])
  {
    v88 = MEMORY[0x277CCAAC8];
    v89 = objc_opt_class();
    summary = [v4 summary];
    v123 = 0;
    v91 = [v88 unarchivedObjectOfClass:v89 fromData:summary error:&v123];
    v92 = v123;

    if (v92)
    {
      v93 = blt_general_log();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v119 setSummary:v91];
  }

  if ([v4 hasThreadSummary])
  {
    v94 = MEMORY[0x277CCAAC8];
    v95 = objc_opt_class();
    threadSummary = [v4 threadSummary];
    v122 = 0;
    v97 = [v94 unarchivedObjectOfClass:v95 fromData:threadSummary error:&v122];
    v98 = v122;

    if (v98)
    {
      v99 = blt_general_log();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v119 setThreadSummary:v97];
  }

  if ([v4 hasAttributedMessage])
  {
    v100 = MEMORY[0x277CCAAC8];
    v101 = objc_opt_class();
    attributedMessage = [v4 attributedMessage];
    v121 = 0;
    v103 = [v100 unarchivedObjectOfClass:v101 fromData:attributedMessage error:&v121];
    v104 = v121;

    if (v104)
    {
      v105 = blt_general_log();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v119 setAttributedMessage:v103];
  }

  if ([v4 hasEventBehavior])
  {
    v106 = MEMORY[0x277CCAAC8];
    v107 = objc_opt_class();
    eventBehavior = [v4 eventBehavior];
    v120 = 0;
    v109 = [v106 unarchivedObjectOfClass:v107 fromData:eventBehavior error:&v120];
    v110 = v120;

    if (v110)
    {
      v111 = blt_general_log();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        +[BBBulletinRequest(protobuf) bulletinRequestFromProtobuf:];
      }
    }

    [v119 setEventBehavior:v109];
  }

  if ([v4 hasPriorityNotificationStatus])
  {
    [v4 priorityNotificationStatus];
    [v119 setPriorityNotificationStatus:v112];
  }

  if ([v4 hasIsHighlight])
  {
    [v119 setIsHighlight:{objc_msgSend(v4, "isHighlight")}];
  }

  v113 = v119;

  v114 = *MEMORY[0x277D85DE8];
  return v119;
}

+ (id)_actionFromBLTPBAction:()protobuf
{
  v3 = a3;
  if (v3)
  {
    action = [MEMORY[0x277CF3500] action];
    identifier = [v3 identifier];
    [action setIdentifier:identifier];

    [action setActivationMode:{objc_msgSend(v3, "activationMode")}];
    v6 = MEMORY[0x277CBEBC0];
    launchURL = [v3 launchURL];
    v8 = [v6 URLWithString:launchURL];
    [action setLaunchURL:v8];

    appearance = [v3 appearance];
    LODWORD(launchURL) = [appearance destructive];

    v10 = MEMORY[0x277CF3508];
    appearance2 = [v3 appearance];
    title = [appearance2 title];
    v13 = [v10 appearanceWithTitle:title];

    [v13 setStyle:launchURL];
    [action setAppearance:v13];
    [action setBehavior:{objc_msgSend(v3, "behavior")}];
    behaviorParameters = [v3 behaviorParameters];

    if (behaviorParameters)
    {
      behaviorParameters2 = [v3 behaviorParameters];
      behaviorParametersNulls = [v3 behaviorParametersNulls];
      v20 = 0;
      v17 = [BLTObjectSerializer unserializeObject:behaviorParameters2 nulls:behaviorParametersNulls error:&v20];
      v18 = v20;

      if (!v18)
      {
        [action setBehaviorParameters:v17];
      }
    }
  }

  else
  {
    action = 0;
  }

  return action;
}

+ (uint64_t)plistTypes
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
}

+ (void)bulletinRequestFromProtobuf:()protobuf .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Error decoding summary attributed string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)bulletinRequestFromProtobuf:()protobuf .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Error decoding threadSummary attributed string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)bulletinRequestFromProtobuf:()protobuf .cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Error decoding attributedMessage: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)bulletinRequestFromProtobuf:()protobuf .cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, v0, v1, "Error decoding eventBehavior: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end