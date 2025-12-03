@interface SGPipelineEnrichment
- (id)toCloudKitRecordWithId:(id)id parentEntityType:(int64_t)type;
@end

@implementation SGPipelineEnrichment

- (id)toCloudKitRecordWithId:(id)id parentEntityType:(int64_t)type
{
  v153 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = objc_opt_new();
  duplicateKey = [(SGEntity *)self duplicateKey];
  entityKey = [duplicateKey entityKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPipelineEntity+CloudKitRecord.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"[self.duplicateKey.entityKey isKindOfClass:[SGPseudoEventKey class]]"}];
  }

  if ((type & 0xFFFFFFFFFFFFFFFDLL) != 0x10)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity+CloudKitRecord.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"parentEntityType == SGEntityTypeWebPage || parentEntityType == SGEntityTypeInteraction"}];
  }

  [v7 setParentEntityType:type];
  duplicateKey2 = [(SGEntity *)self duplicateKey];
  entityKey2 = [duplicateKey2 entityKey];
  groupId = [entityKey2 groupId];
  [v7 setGroupId:groupId];

  sourceKey = [(SGEntity *)self sourceKey];
  [v7 setSourceKey:sourceKey];

  content = [(SGEntity *)self content];
  [v7 setContent:content];

  title = [(SGEntity *)self title];
  [v7 setTitle:title];

  [(SGEntity *)self creationTimestamp];
  [v7 setCreationTimestamp:?];
  [(SGEntity *)self lastModifiedTimestamp];
  [v7 setLastModifiedTimestamp:?];
  tags = [(SGEntity *)self tags];
  allDay = [MEMORY[0x277D01FA0] allDay];
  v19 = [tags containsObject:allDay];

  [v7 setAllDay:v19];
  timeRange = [(SGEntity *)self timeRange];
  v21 = timeRange;
  if ((v19 & 1) == 0 && [timeRange isFloating])
  {
    absoluteRange = [v21 absoluteRange];

    v21 = absoluteRange;
  }

  v23 = objc_opt_new();
  [v21 start];
  [v23 setStart:?];
  [v21 end];
  [v23 setEnd:?];
  v131 = v21;
  if ([v21 isFloating])
  {
    if ((v19 & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGPipelineEntity+CloudKitRecord.m" lineNumber:284 description:@"Only all-day events should be floating. Other events should have a timezone set before being synced up."];
    }
  }

  else
  {
    [v23 setStartUTCOffsetSeconds:{objc_msgSend(v21, "startUTCOffsetSeconds")}];
    [v23 setEndUTCOffsetSeconds:{objc_msgSend(v21, "endUTCOffsetSeconds")}];
  }

  v130 = v23;
  [v7 setWhen:v23];
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  selfCopy = self;
  locations = [(SGEntity *)self locations];
  v26 = [locations countByEnumeratingWithState:&v145 objects:v152 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v146;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v146 != v28)
        {
          objc_enumerationMutation(locations);
        }

        v30 = *(*(&v145 + 1) + 8 * i);
        v31 = objc_autoreleasePoolPush();
        v32 = objc_opt_new();
        [v32 setLocationType:{objc_msgSend(v30, "locationType")}];
        label = [v30 label];
        [v32 setLabel:label];

        address = [v30 address];
        [v32 setAddress:address];

        airportCode = [v30 airportCode];
        [v32 setAirportCode:airportCode];

        [v30 latitude];
        [v30 latitude];
        [v32 setLatitude:?];
        [v30 longitude];
        [v30 longitude];
        [v32 setLongitude:?];
        [v30 accuracy];
        [v32 setAccuracy:?];
        [v30 quality];
        [v32 setQuality:?];
        handle = [v30 handle];
        [v32 setHandle:handle];

        [v7 addLocations:v32];
        objc_autoreleasePoolPop(v31);
      }

      v27 = [locations countByEnumeratingWithState:&v145 objects:v152 count:16];
    }

    while (v27);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  tags2 = [(SGEntity *)selfCopy tags];
  v38 = [tags2 countByEnumeratingWithState:&v141 objects:v151 count:16];
  if (!v38)
  {
    v133 = 0;
    v134 = 0;
    v136 = 0;
    v138 = 0;
    v91 = 0;
    v135 = 0;
    v80 = 0;
    v39 = 0;
    v81 = idCopy;
    goto LABEL_100;
  }

  v133 = 0;
  v134 = 0;
  v136 = 0;
  v138 = 0;
  v127 = 0;
  v128 = 0;
  v135 = 0;
  v129 = 0;
  v39 = 0;
  v40 = *v142;
  do
  {
    v41 = 0;
    do
    {
      if (*v142 != v40)
      {
        objc_enumerationMutation(tags2);
      }

      v42 = *(*(&v141 + 1) + 8 * v41);
      if ([v42 isExtraKey])
      {
        value = [v42 value];
        [v7 setExtraKey:value];
LABEL_30:

        goto LABEL_31;
      }

      if ([v42 isDomain])
      {
        value = [v42 value];
        [v7 setDomain:value];
        goto LABEL_30;
      }

      if ([v42 isTemplateName])
      {
        value = [v42 value];
        [v7 setTemplateName:value];
        goto LABEL_30;
      }

      if ([v42 isSchemaOrg])
      {
        v44 = v42;

        v39 = v44;
        goto LABEL_31;
      }

      extractedEventCancellation = [MEMORY[0x277D01FA0] extractedEventCancellation];
      v46 = [v42 isEqualToEntityTag:extractedEventCancellation];

      if (v46)
      {
        [v7 setCancelled:1];
        goto LABEL_31;
      }

      extractedFlight = [MEMORY[0x277D01FA0] extractedFlight];
      v48 = [v42 isEqualToEntityTag:extractedFlight];

      if (v48)
      {
        v49 = v7;
        v50 = 1;
LABEL_59:
        [v49 setCategoryType:v50];
        goto LABEL_31;
      }

      extractedBus = [MEMORY[0x277D01FA0] extractedBus];
      v52 = [v42 isEqualToEntityTag:extractedBus];

      if (v52)
      {
        v49 = v7;
        v50 = 2;
        goto LABEL_59;
      }

      extractedTrain = [MEMORY[0x277D01FA0] extractedTrain];
      v54 = [v42 isEqualToEntityTag:extractedTrain];

      if (v54)
      {
        v49 = v7;
        v50 = 3;
        goto LABEL_59;
      }

      extractedBoat = [MEMORY[0x277D01FA0] extractedBoat];
      v56 = [v42 isEqualToEntityTag:extractedBoat];

      if (v56)
      {
        v49 = v7;
        v50 = 10;
        goto LABEL_59;
      }

      extractedHotel = [MEMORY[0x277D01FA0] extractedHotel];
      v58 = [v42 isEqualToEntityTag:extractedHotel];

      if (v58)
      {
        v49 = v7;
        v50 = 4;
        goto LABEL_59;
      }

      extractedCarRental = [MEMORY[0x277D01FA0] extractedCarRental];
      v60 = [v42 isEqualToEntityTag:extractedCarRental];

      if (v60)
      {
        v49 = v7;
        v50 = 5;
        goto LABEL_59;
      }

      extractedTicket = [MEMORY[0x277D01FA0] extractedTicket];
      v62 = [v42 isEqualToEntityTag:extractedTicket];

      if (v62)
      {
        v49 = v7;
        v50 = 6;
        goto LABEL_59;
      }

      extractedMovie = [MEMORY[0x277D01FA0] extractedMovie];
      v64 = [v42 isEqualToEntityTag:extractedMovie];

      if (v64)
      {
        v49 = v7;
        v50 = 7;
        goto LABEL_59;
      }

      extractedFood = [MEMORY[0x277D01FA0] extractedFood];
      v66 = [v42 isEqualToEntityTag:extractedFood];

      if (v66)
      {
        v49 = v7;
        v50 = 8;
        goto LABEL_59;
      }

      extractedSocial = [MEMORY[0x277D01FA0] extractedSocial];
      v68 = [v42 isEqualToEntityTag:extractedSocial];

      if (v68)
      {
        v49 = v7;
        v50 = 9;
        goto LABEL_59;
      }

      extractedAppointment = [MEMORY[0x277D01FA0] extractedAppointment];
      v70 = [v42 isEqualToEntityTag:extractedAppointment];

      if (v70)
      {
        v49 = v7;
        v50 = 11;
        goto LABEL_59;
      }

      if ([v42 isInteractionId])
      {
        v71 = v42;

        v136 = v71;
      }

      else if ([v42 isInteractionGroupId])
      {
        v72 = v42;

        v129 = v72;
      }

      else if ([v42 isInteractionTeamId])
      {
        v73 = v42;

        v135 = v73;
      }

      else if ([v42 isInteractionBundleId])
      {
        v74 = v42;

        v134 = v74;
      }

      else if ([v42 isReservationItemReferences])
      {
        v75 = v42;

        v128 = v75;
      }

      else if ([v42 isReservationContainerReference])
      {
        v76 = v42;

        v127 = v76;
      }

      else if ([v42 isEventMetadata])
      {
        v77 = v42;

        v138 = v77;
      }

      else if ([v42 isIntentResponseUserActivityString])
      {
        v78 = v42;

        v133 = v78;
      }

LABEL_31:
      v41 = v41 + 1;
    }

    while (v38 != v41);
    v79 = [tags2 countByEnumeratingWithState:&v141 objects:v151 count:16];
    v38 = v79;
  }

  while (v79);
  v80 = v129;

  v81 = idCopy;
  if (v39)
  {
    v82 = objc_autoreleasePoolPush();
    v83 = MEMORY[0x277CCAAA0];
    value2 = [v39 value];
    v85 = [value2 dataUsingEncoding:4];
    v86 = [v83 JSONObjectWithData:v85 options:0 error:0];

    objc_autoreleasePoolPop(v82);
    if (v86)
    {
      v87 = objc_autoreleasePoolPush();
      v140 = 0;
      v88 = [MEMORY[0x277CCAC58] dataWithPropertyList:v86 format:200 options:0 error:&v140];
      v89 = v140;
      objc_autoreleasePoolPop(v87);
      if (!v88)
      {
        v90 = sgLogHandle();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v150 = v89;
          _os_log_error_impl(&dword_231E60000, v90, OS_LOG_TYPE_ERROR, "SGCK Error serializing schema.org to plist: %@", buf, 0xCu);
        }
      }

      [v7 setSchemaOrg:v88];
    }

    else
    {
      v89 = sgLogHandle();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v89, OS_LOG_TYPE_ERROR, "SGCK error converting schema.org to plist.", buf, 2u);
      }
    }
  }

  if (v138)
  {
    v92 = objc_autoreleasePoolPush();
    v93 = MEMORY[0x277CCAAA0];
    value3 = [v138 value];
    v95 = [value3 dataUsingEncoding:4];
    tags2 = [v93 JSONObjectWithData:v95 options:0 error:0];

    objc_autoreleasePoolPop(v92);
    if (tags2)
    {
      v96 = objc_autoreleasePoolPush();
      v139 = 0;
      v97 = [MEMORY[0x277CCAC58] dataWithPropertyList:tags2 format:200 options:0 error:&v139];
      v98 = v139;
      objc_autoreleasePoolPop(v96);
      if (v97)
      {
        [v7 setMetadata:v97];
        v91 = v127;
      }

      else
      {
        v99 = sgLogHandle();
        v91 = v127;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v150 = v98;
          _os_log_error_impl(&dword_231E60000, v99, OS_LOG_TYPE_ERROR, "SGCK Error serializing event metadata to plist: %@", buf, 0xCu);
        }
      }

      v38 = v128;
    }

    else
    {
      v98 = sgLogHandle();
      v91 = v127;
      v38 = v128;
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v98, OS_LOG_TYPE_ERROR, "SGCK Error converting event metadata to plist.", buf, 2u);
      }
    }

LABEL_100:
  }

  else
  {
    v138 = 0;
    v91 = v127;
    v38 = v128;
  }

  if ([v7 parentEntityType] == 16)
  {
    v100 = objc_opt_new();
    value4 = [v136 value];
    [v100 setInteractionId:value4];

    value5 = [v80 value];
    [v100 setInteractionGroupId:value5];

    value6 = [v135 value];
    [v100 setInteractionTeamId:value6];

    value7 = [v134 value];
    [v100 setInteractionBundleId:value7];

    value8 = [v133 value];
    [v100 setIntentResponseUserActivityString:value8];

    value9 = [v91 value];

    if (value9)
    {
      v107 = objc_alloc(MEMORY[0x277CBEA90]);
      value10 = [v91 value];
      v109 = [v107 initWithBase64EncodedString:value10 options:0];

      [v100 setReservationContainerReference:v109];
    }

    value11 = [v38 value];

    if (value11)
    {
      v111 = objc_alloc(MEMORY[0x277CBEA90]);
      value12 = [v38 value];
      v113 = [v111 initWithBase64EncodedString:value12 options:0];

      [v100 setReservationItemReferences:v113];
      [v7 setInteractionInfo:v100];
    }

    else
    {
      v113 = sgLogHandle();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v113, OS_LOG_TYPE_ERROR, "SGCK Reservation item reference value was nil for interaction entity", buf, 2u);
      }
    }
  }

  v114 = v91;
  v115 = objc_alloc(MEMORY[0x277CBC5A0]);
  v116 = v38;
  if (v81)
  {
    v117 = [v115 initWithRecordType:@"com_apple_suggestions_ck_event" recordID:v81];
  }

  else
  {
    v117 = [v115 initWithRecordType:@"com_apple_suggestions_ck_event"];
  }

  v118 = v117;
  [v117 setObject:&unk_284749A40 forKeyedSubscript:@"v"];
  [v118 setObject:&unk_284749A40 forKeyedSubscript:@"m"];
  v119 = MEMORY[0x277D42570];
  data = [v7 data];
  v121 = [v119 compress:data lowMemory:1];
  encryptedValues = [v118 encryptedValues];
  [encryptedValues setObject:v121 forKeyedSubscript:@"pe"];

  v123 = *MEMORY[0x277D85DE8];

  return v118;
}

@end