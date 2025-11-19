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
  v6 = [v4 sectionID];
  [v5 setSectionID:v6];

  v7 = [v4 recordID];
  [v5 setRecordID:v7];

  v8 = [v4 publisherBulletinID];
  [v5 setPublisherBulletinID:v8];

  [v5 setSectionSubtype:{objc_msgSend(v4, "sectionSubtype")}];
  v9 = [v4 title];
  [v5 setTitle:v9];

  v10 = [v4 subtitle];
  [v5 setSubtitle:v10];

  v11 = [v4 messageTitle];
  [v5 setMessage:v11];

  [v5 setLoading:{objc_msgSend(v4, "loading")}];
  [v5 setTurnsOnDisplay:{objc_msgSend(v4, "turnsOnDisplay")}];
  v12 = [v4 dismissalID];
  [v5 setDismissalID:v12];

  v13 = MEMORY[0x277CBEB98];
  v14 = [v4 subsectionIDs];
  v15 = [v13 setWithArray:v14];
  [v5 setSubsectionIDs:v15];

  v16 = [v4 peopleIDs];
  [v5 setPeopleIDs:v16];

  [v5 setIgnoresQuietMode:{objc_msgSend(v4, "ignoresQuietMode")}];
  v17 = [v4 categoryID];
  [v5 setCategoryID:v17];

  v18 = [v4 threadID];
  [v5 setThreadID:v18];

  [v5 setPreemptsPresentedAlert:{objc_msgSend(v4, "preemptsPresentedAlert")}];
  if ([v4 suppressDelayForForwardedBulletins])
  {
    [v5 setContextValue:MEMORY[0x277CBEC38] forKey:@"BLTSuppressDelayForForwardedBulletinsKey"];
  }

  v19 = [v4 icon];

  if (v19)
  {
    v20 = [v4 icon];
    v21 = BBSectionIconFromBLTPBSectionIcon(v20);
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
  v24 = [v4 sockPuppetAppBundleID];
  if (v24)
  {
    [v5 setContextValue:v24 forKey:@"BLTSockPuppetAppIdentifierKey"];
  }

  v117 = v24;
  if ([v4 hasRequiredExpirationDate])
  {
    v25 = MEMORY[0x277CBEAA8];
    [v4 requiredExpirationDate];
    v26 = [v25 dateWithTimeIntervalSince1970:?];
    [v5 setExpirationDate:v26];
  }

  v27 = [MEMORY[0x277CF3500] action];
  [v5 setAcknowledgeAction:v27];

  v28 = [v4 snoozeAction];

  if (v28)
  {
    v29 = [MEMORY[0x277CF3500] action];
    [v5 setSnoozeAction:v29];
  }

  v30 = [MEMORY[0x277CF3500] action];
  [v5 setDismissAction:v30];

  if ([v4 hasAttachmentType])
  {
    v31 = objc_alloc_init(MEMORY[0x277CF3540]);
    [v31 setType:{objc_msgSend(v4, "attachmentType")}];
    v32 = [v4 attachmentURLURL];
    [v31 setURL:v32];

    [v5 setPrimaryAttachment:v31];
  }

  v119 = v5;
  v33 = [MEMORY[0x277CBEB18] array];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v34 = [v4 additionalAttachments];
  v35 = [v34 countByEnumeratingWithState:&v132 objects:v145 count:16];
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
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v132 + 1) + 8 * i);
        if ([v39 hasURL])
        {
          v40 = objc_alloc_init(MEMORY[0x277CF3540]);
          [v40 setType:{objc_msgSend(v39, "type")}];
          v41 = [v39 attachmentURLURL];
          [v40 setURL:v41];

          [v33 addObject:v40];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v132 objects:v145 count:16];
    }

    while (v36);
  }

  v42 = v119;
  if ([v33 count])
  {
    [v119 setAdditionalAttachments:v33];
  }

  v118 = [v4 context];
  if (v118)
  {
    v43 = MEMORY[0x277CCAAC8];
    v44 = [a1 plistTypes];
    v131 = 0;
    v45 = [v43 unarchivedObjectOfClasses:v44 fromData:v118 error:&v131];
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

  v48 = [v4 alertSuppressionContexts];

  if (v48)
  {
    v49 = [v4 alertSuppressionContexts];
    v50 = [v4 alertSuppressionContextsNulls];
    v128 = 0;
    v51 = [BLTObjectSerializer unserializeObject:v49 nulls:v50 error:&v128];
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
      v55 = [v4 soundAccountIdentifier];

      if (v55)
      {
        v56 = [v4 soundAccountIdentifier];
        [v54 setTopic:v56];
      }

      v57 = [v4 soundToneIdentifier];

      if (v57)
      {
        v58 = [v4 soundToneIdentifier];
        [v54 setToneIdentifier:v58];
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
  v62 = [v4 supplementaryActions];
  v63 = [v61 arrayWithCapacity:{objc_msgSend(v62, "count")}];

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v64 = [v4 supplementaryActions];
  v65 = [v64 countByEnumeratingWithState:&v124 objects:v136 count:16];
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
          objc_enumerationMutation(v64);
        }

        v69 = [a1 _actionFromBLTPBAction:*(*(&v124 + 1) + 8 * j)];
        [v63 addObject:v69];
      }

      v66 = [v64 countByEnumeratingWithState:&v124 objects:v136 count:16];
    }

    while (v66);
  }

  [v119 setSupplementaryActions:v63];
  v70 = [v4 categoryID];

  if (v70)
  {
    v71 = [v4 categoryID];
    [v119 setContextValue:v71 forKey:@"category"];
  }

  v72 = [v4 teamID];

  if (v72)
  {
    v73 = [v4 teamID];
    [v119 setContextValue:v73 forKey:@"teamID"];
  }

  if ([v4 hasHasCriticalIcon])
  {
    [v119 setHasCriticalIcon:{objc_msgSend(v4, "hasCriticalIcon")}];
  }

  if ([v4 hasHeader])
  {
    v74 = [v4 header];
    [v119 setHeader:v74];
  }

  if ([v4 hasContentType])
  {
    v75 = [v4 contentType];
    [v119 setContentType:v75];
  }

  if ([v4 hasInterruptionLevel])
  {
    [v119 setInterruptionLevel:{objc_msgSend(v4, "interruptionLevel")}];
  }

  if ([v4 hasCommunicationContext])
  {
    v76 = MEMORY[0x277CF3520];
    v77 = [v4 communicationContext];
    v78 = [v76 communicationContextFromProtobuf:v77];
    [v119 setCommunicationContext:v78];
  }

  if ([v4 hasFilterCriteria])
  {
    v79 = [v4 filterCriteria];
    [v119 setFilterCriteria:v79];
  }

  if ([v4 hasFollowActivityAction])
  {
    v80 = MEMORY[0x277CF3500];
    v81 = [v4 followActivityAction];
    v82 = [v81 identifier];
    v83 = [v4 followActivityAction];
    v84 = [v83 appearance];
    v85 = [v84 title];
    v86 = [v80 actionWithIdentifier:v82 title:v85];

    v87 = [v4 followActivityAction];
    [v86 setActivationMode:{objc_msgSend(v87, "activationMode")}];

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
    v90 = [v4 summary];
    v123 = 0;
    v91 = [v88 unarchivedObjectOfClass:v89 fromData:v90 error:&v123];
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
    v96 = [v4 threadSummary];
    v122 = 0;
    v97 = [v94 unarchivedObjectOfClass:v95 fromData:v96 error:&v122];
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
    v102 = [v4 attributedMessage];
    v121 = 0;
    v103 = [v100 unarchivedObjectOfClass:v101 fromData:v102 error:&v121];
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
    v108 = [v4 eventBehavior];
    v120 = 0;
    v109 = [v106 unarchivedObjectOfClass:v107 fromData:v108 error:&v120];
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
    v4 = [MEMORY[0x277CF3500] action];
    v5 = [v3 identifier];
    [v4 setIdentifier:v5];

    [v4 setActivationMode:{objc_msgSend(v3, "activationMode")}];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v3 launchURL];
    v8 = [v6 URLWithString:v7];
    [v4 setLaunchURL:v8];

    v9 = [v3 appearance];
    LODWORD(v7) = [v9 destructive];

    v10 = MEMORY[0x277CF3508];
    v11 = [v3 appearance];
    v12 = [v11 title];
    v13 = [v10 appearanceWithTitle:v12];

    [v13 setStyle:v7];
    [v4 setAppearance:v13];
    [v4 setBehavior:{objc_msgSend(v3, "behavior")}];
    v14 = [v3 behaviorParameters];

    if (v14)
    {
      v15 = [v3 behaviorParameters];
      v16 = [v3 behaviorParametersNulls];
      v20 = 0;
      v17 = [BLTObjectSerializer unserializeObject:v15 nulls:v16 error:&v20];
      v18 = v20;

      if (!v18)
      {
        [v4 setBehaviorParameters:v17];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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