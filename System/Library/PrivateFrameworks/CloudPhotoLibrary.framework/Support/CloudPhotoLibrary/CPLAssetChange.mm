@interface CPLAssetChange
+ (id)ckValueForRelatedRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
- (void)setMostRecentAddedDateOnCKRecord:(id)record withCPLEnabledDate:(id)date;
@end

@implementation CPLAssetChange

- (void)setMostRecentAddedDateOnCKRecord:(id)record withCPLEnabledDate:(id)date
{
  recordCopy = record;
  dateCopy = date;
  [(CPLAssetChange *)self addedDate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009712C;
  v8 = v14[3] = &unk_1002766B0;
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v10 = v9;
  if (!dateCopy && v8)
  {
    v11 = (v9[2])(v9);
    goto LABEL_4;
  }

  if (dateCopy && !v8)
  {
    v12 = dateCopy;
    goto LABEL_11;
  }

  if ([v8 compare:dateCopy] != 1)
  {
    v11 = dateCopy;
LABEL_4:
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = v10[2](v10);
  v12 = [v13 laterDate:dateCopy];

  if (v12)
  {
LABEL_11:
    [recordCopy setObject:v12 forKey:@"mostRecentAddedDate"];
  }

LABEL_12:
}

+ (id)ckValueForRelatedRecord:(id)record
{
  recordCopy = record;
  v4 = [[CKReference alloc] initWithRecord:recordCopy action:1];

  return v4;
}

- (void)fillWithCKRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  v6 = [recordCopy objectForKey:@"people"];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v120 objects:v124 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v121;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v121 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v120 + 1) + 8 * i);
        v14 = [CPLPersonReference alloc];
        v15 = [v14 initWithSerializedString:{v13, v120}];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v120 objects:v124 count:16];
    }

    while (v10);
  }

  [(CPLAssetChange *)selfCopy setPeople:v7];
  v16 = [recordCopy objectForKey:@"syndicationId"];
  [(CPLAssetChange *)selfCopy setSyndicationIdentifier:v16];

  if (+[CPLAssetChange serverSupportsSharedLibrarySharingState])
  {
    v17 = [recordCopy cpl_legacyDecryptedObjectForKey:@"sharedSyncSharingStateEnc" validateClass:objc_opt_class()];
    v18 = v17;
    if (!v17)
    {
      v17 = &off_10028EE30;
    }

    -[CPLAssetChange setSharedLibrarySharingState:](selfCopy, "setSharedLibrarySharingState:", [v17 longLongValue]);
  }

  v19 = [recordCopy cpl_objectForKey:@"playCount" validateClass:objc_opt_class()];
  v20 = v19;
  if (!v19)
  {
    v19 = &off_10028EE30;
  }

  -[CPLAssetChange setPlayCount:](selfCopy, "setPlayCount:", [v19 longLongValue]);

  if (+[CPLAssetChange serverSupportsLastViewedDate])
  {
    v21 = [recordCopy cpl_legacyDecryptedObjectForKey:@"lastViewedDateEnc" validateClass:objc_opt_class()];
    [(CPLAssetChange *)selfCopy setLastViewedDate:v21];
  }

  v22 = [recordCopy cpl_objectForKey:@"viewCount" validateClass:objc_opt_class()];
  v23 = v22;
  if (!v22)
  {
    v22 = &off_10028EE30;
  }

  -[CPLAssetChange setViewCount:](selfCopy, "setViewCount:", [v22 longLongValue]);

  v24 = [recordCopy objectForKey:@"lastSharedDate"];
  [(CPLAssetChange *)selfCopy setLastSharedDate:v24];

  v25 = [recordCopy cpl_objectForKey:@"shareCount" validateClass:objc_opt_class()];
  v26 = v25;
  if (!v25)
  {
    v25 = &off_10028EE30;
  }

  -[CPLAssetChange setShareCount:](selfCopy, "setShareCount:", [v25 longLongValue]);

  v27 = [recordCopy cpl_legacyDecryptedObjectForKey:@"viewPresentationTypeEnc" validateClass:objc_opt_class()];
  v28 = v27;
  if (!v27)
  {
    v27 = &off_10028EE48;
  }

  -[CPLAssetChange setViewPresentation:](selfCopy, "setViewPresentation:", [v27 integerValue]);

  v29 = [recordCopy objectForKeyedSubscript:@"computeStateVersion"];
  [(CPLAssetChange *)selfCopy setComputeStateVersion:v29];

  v30 = [recordCopy cpl_decryptedObjectForKey:@"computeStateAdjustmentFingerprintEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setComputeStateAdjustmentFingerprint:v30];

  v31 = [recordCopy cpl_decryptedObjectForKey:@"computeStateLastUpdatedDateEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setComputeStateLastUpdatedDate:v31];

  v32 = [recordCopy cpl_decryptedObjectForKey:@"assetDateEnc" validateClass:objc_opt_class()];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [recordCopy objectForKeyedSubscript:@"assetDate"];
  }

  v35 = v34;

  [(CPLAssetChange *)selfCopy setAssetDate:v35];
  v36 = [recordCopy cpl_objectForKey:@"isHidden" validateClass:objc_opt_class()];
  v37 = v36;
  if (!v36)
  {
    v36 = &__kCFBooleanFalse;
  }

  -[CPLAssetChange setHidden:](selfCopy, "setHidden:", [v36 BOOLValue]);

  v38 = [recordCopy cpl_objectForKey:@"isFavorite" validateClass:objc_opt_class()];
  v39 = v38;
  if (!v38)
  {
    v38 = &__kCFBooleanFalse;
  }

  -[CPLAssetChange setFavorite:](selfCopy, "setFavorite:", [v38 BOOLValue]);

  v40 = [recordCopy cpl_legacyDecryptedObjectForKey:@"captionEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setCaption:v40];

  v41 = [recordCopy cpl_legacyDecryptedObjectForKey:@"keywordsEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setKeywords:v41];

  v42 = [recordCopy cpl_legacyDecryptedObjectForKey:@"extendedDescEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setExtendedDescription:v42];

  v43 = [recordCopy cpl_legacyDecryptedObjectForKey:@"accessibilityDescEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setAccessibilityDescription:v43];

  v44 = [recordCopy objectForKey:@"masterRef"];
  recordID = [v44 recordID];
  recordName = [recordID recordName];

  [(CPLAssetChange *)selfCopy setMasterIdentifier:recordName];
  v47 = [recordCopy objectForKey:@"addedDate"];
  [(CPLAssetChange *)selfCopy setAddedDate:v47];

  v48 = [recordCopy cpl_legacyDecryptedObjectForKey:@"locationEnc" validateClass:objc_opt_class()];
  v49 = [CLLocation locationWithCPLLocationDictionary:v48];
  [(CPLAssetChange *)selfCopy setLocation:v49];

  if (+[CPLAssetChange serverSupportsDeletedByUserIdentifier])
  {
    v50 = [recordCopy objectForKey:@"deletedBy"];
    recordID2 = [v50 recordID];
    recordName2 = [recordID2 recordName];
    [(CPLAssetChange *)selfCopy setDeletedByUserIdentifier:recordName2];
  }

  v53 = [recordCopy cpl_legacyDecryptedObjectForKey:@"placeInfoEnc" validateClass:objc_opt_class()];
  v54 = [CPLPlaceAnnotation placeAnnotationWithCPLPlaceAnnotationDictionary:v53];
  [(CPLAssetChange *)selfCopy setPlaceAnnotation:v54];

  v55 = [recordCopy cpl_legacyDecryptedObjectForKey:@"timeZoneNameEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setTimeZoneName:v55];

  v56 = [recordCopy cpl_decryptedObjectForKey:@"burstIdEnc" validateClass:objc_opt_class()];
  v57 = v56;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = [recordCopy objectForKeyedSubscript:@"burstId"];
  }

  v59 = v58;

  [(CPLAssetChange *)selfCopy setBurstIdentifier:v59];
  v60 = [recordCopy cpl_decryptedObjectForKey:@"mediaGroupIdEnc" validateClass:objc_opt_class()];
  v61 = v60;
  if (v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = [recordCopy objectForKeyedSubscript:@"mediaGroupId"];
  }

  v63 = v62;

  [(CPLAssetChange *)selfCopy setMediaGroupIdentifier:v63];
  v64 = [recordCopy cpl_objectForKey:@"vidComplDurValue" validateClass:objc_opt_class()];
  v65 = v64;
  if (!v64)
  {
    v64 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementDurationValue:](selfCopy, "setVideoComplementDurationValue:", [v64 integerValue]);

  v66 = [recordCopy cpl_objectForKey:@"vidComplDurScale" validateClass:objc_opt_class()];
  v67 = v66;
  if (!v66)
  {
    v66 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementDurationTimescale:](selfCopy, "setVideoComplementDurationTimescale:", [v66 integerValue]);

  v68 = [recordCopy cpl_objectForKey:@"vidComplDispValue" validateClass:objc_opt_class()];
  v69 = v68;
  if (!v68)
  {
    v68 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementImageDisplayValue:](selfCopy, "setVideoComplementImageDisplayValue:", [v68 integerValue]);

  v70 = [recordCopy cpl_objectForKey:@"vidComplDispScale" validateClass:objc_opt_class()];
  v71 = v70;
  if (!v70)
  {
    v70 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementImageDisplayTimescale:](selfCopy, "setVideoComplementImageDisplayTimescale:", [v70 integerValue]);

  v72 = [recordCopy cpl_objectForKey:@"vidComplVisibilityState" validateClass:objc_opt_class()];
  v73 = v72;
  if (!v72)
  {
    v72 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementVisibilityState:](selfCopy, "setVideoComplementVisibilityState:", [v72 integerValue]);

  v74 = [recordCopy objectForKey:@"assetSubtypeV2"];
  v75 = v74;
  if (v74)
  {
    unsignedIntegerValue = [v74 unsignedIntegerValue];
  }

  else
  {
    v77 = [recordCopy objectForKey:@"assetSubtype"];
    unsignedIntegerValue = [v77 unsignedIntegerValue];
  }

  [(CPLAssetChange *)selfCopy setAssetSubtype:unsignedIntegerValue];

  v78 = [recordCopy objectForKey:@"burstFlags"];
  unsignedIntegerValue2 = [v78 unsignedIntegerValue];

  v80 = [recordCopy objectForKey:@"burstFlagsExt"];
  v81 = v80;
  if (v80 && unsignedIntegerValue2)
  {
    unsignedIntegerValue2 |= [v80 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFE0;
  }

  [(CPLAssetChange *)selfCopy setBurstFlags:unsignedIntegerValue2];

  v82 = [recordCopy cpl_decryptedObjectForKey:@"timeZoneOffsetEnc" validateClass:objc_opt_class()];
  v83 = v82;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = [recordCopy objectForKeyedSubscript:@"timeZoneOffset"];
  }

  v85 = v84;

  [(CPLAssetChange *)selfCopy setTimeZoneOffset:v85];
  v86 = [recordCopy cpl_objectForKey:@"assetHDRType" validateClass:objc_opt_class()];
  v87 = v86;
  if (!v86)
  {
    v86 = &off_10028EE30;
  }

  -[CPLAssetChange setAssetHDRType:](selfCopy, "setAssetHDRType:", [v86 unsignedIntegerValue]);

  v88 = [recordCopy cpl_decryptedObjectForKey:@"customRenderedValueEnc" validateClass:objc_opt_class()];
  v89 = v88;
  if (v88)
  {
    v90 = v88;
  }

  else
  {
    v90 = [recordCopy objectForKeyedSubscript:@"customRenderedValue"];
  }

  v91 = v90;

  if (v91)
  {
    v92 = v91;
  }

  else
  {
    v92 = &off_10028EE60;
  }

  -[CPLAssetChange setCustomRenderedValue:](selfCopy, "setCustomRenderedValue:", [v92 longLongValue]);

  v93 = [recordCopy cpl_objectForKey:@"trashReason" validateClass:objc_opt_class()];
  v94 = v93;
  if (!v93)
  {
    v93 = &off_10028EE60;
  }

  -[CPLAssetChange setTrashedReason:](selfCopy, "setTrashedReason:", [v93 longLongValue]);

  v95 = [recordCopy cpl_objectForKey:@"orientation" validateClass:objc_opt_class()];
  v96 = v95;
  if (!v95)
  {
    v95 = &off_10028EE30;
  }

  -[CPLAssetChange setOrientation:](selfCopy, "setOrientation:", [v95 integerValue]);

  v97 = [recordCopy cpl_decryptedObjectForKey:@"adjustmentTypeEnc" validateClass:objc_opt_class()];
  if (v97 || ([recordCopy objectForKeyedSubscript:@"adjustmentType"], (v97 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v98 = v97;
    v99 = objc_alloc_init(CPLAdjustments);
    [v99 setAdjustmentType:v98];
    v100 = [recordCopy objectForKey:@"adjustmentCompoundVersion"];
    [v99 setAdjustmentCompoundVersion:v100];

    v101 = [recordCopy objectForKey:@"adjustmentCreatorCode"];
    [v99 setAdjustmentCreatorCode:v101];

    v102 = [recordCopy objectForKey:@"adjustmentSourceType"];
    [v99 setAdjustmentSourceType:{objc_msgSend(v102, "integerValue")}];

    v103 = [recordCopy cpl_legacyDecryptedObjectForKey:@"adjustmentSimpleDataEnc" validateClass:objc_opt_class()];
    [v99 setSimpleAdjustmentData:v103];

    v104 = [recordCopy objectForKey:@"similarToOriginalAdjustmentsFingerprint"];
    [v99 setSimilarToOriginalAdjustmentsFingerprint:v104];

    v105 = [recordCopy objectForKey:@"otherAdjustmentsFingerprint"];
    [v99 setOtherAdjustmentsFingerprint:v105];

    v106 = [recordCopy objectForKey:@"adjustmentRenderType"];
    [v99 setAdjustmentRenderTypes:{objc_msgSend(v106, "integerValue")}];

    v107 = [recordCopy cpl_legacyDecryptedObjectForKey:@"adjustmentTimestampEnc" validateClass:objc_opt_class()];
    [v99 setAdjustmentTimestamp:v107];

    [(CPLAssetChange *)selfCopy setAdjustments:v99];
  }

  v108 = [recordCopy cpl_decryptedObjectForKey:@"durationEnc" validateClass:objc_opt_class()];
  v109 = v108;
  if (v108)
  {
    v110 = v108;
  }

  else
  {
    v110 = [recordCopy objectForKeyedSubscript:@"duration"];
  }

  v111 = v110;

  if (v111)
  {
    v112 = v111;
  }

  else
  {
    v112 = &off_10028EE30;
  }

  -[CPLAssetChange setDuration:](selfCopy, "setDuration:", [v112 integerValue]);

  v113 = [recordCopy cpl_objectForKey:@"originalChoice" validateClass:objc_opt_class()];
  v114 = v113;
  if (!v113)
  {
    v113 = &off_10028EE30;
  }

  -[CPLAssetChange setOriginalChoice:](selfCopy, "setOriginalChoice:", [v113 unsignedIntegerValue]);

  v115 = [recordCopy objectForKey:@"adjustedMediaMetaDataStrType"];
  [(CPLAssetChange *)selfCopy setAdjustedMediaMetaDataType:v115];

  v116 = [recordCopy cpl_legacyDecryptedObjectForKey:@"adjustedMediaMetaDataEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)selfCopy setAdjustedMediaMetaData:v116];

  v117 = [recordCopy cpl_legacyDecryptedObjectForKey:@"faces" validateClass:objc_opt_class()];
  if ([v117 length])
  {
    [(CPLAssetChange *)selfCopy setFacesData:v117];
  }

  v118 = [recordCopy objectForKey:@"facesVersion"];
  -[CPLAssetChange setFacesVersion:](selfCopy, "setFacesVersion:", [v118 integerValue]);

  v119 = [recordCopy objectForKey:@"facesAdjustmentsFingerprint"];
  [(CPLAssetChange *)selfCopy setFacesAdjustmentsFingerprint:v119];
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  providerCopy = provider;
  selfCopy = self;
  fingerprintContext = [providerCopy fingerprintContext];
  if ([(CPLAssetChange *)selfCopy hasChangeType:2])
  {
    v189 = a2;
    v11 = &CPLFeatureNameEPP_ptr;
    if (([(CPLAssetChange *)selfCopy isFullRecord]& 1) != 0)
    {
      attachedDiffTracker = 0;
    }

    else
    {
      attachedDiffTracker = [(CPLAssetChange *)selfCopy attachedDiffTracker];

      if (attachedDiffTracker)
      {
        if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"people" changeType:2])
        {
          goto LABEL_22;
        }

        v13 = 0;
LABEL_9:
        if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"people")])
        {
          v190 = attachedDiffTracker;
          v186 = fingerprintContext;
          v14 = providerCopy;
          v15 = +[NSMutableArray array];
          v192 = 0u;
          v193 = 0u;
          v194 = 0u;
          v195 = 0u;
          people = [(CPLAssetChange *)selfCopy people];
          v17 = [people countByEnumeratingWithState:&v192 objects:v200 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v193;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v193 != v19)
                {
                  objc_enumerationMutation(people);
                }

                serializedString = [*(*(&v192 + 1) + 8 * i) serializedString];
                [v15 addObject:serializedString];
              }

              v18 = [people countByEnumeratingWithState:&v192 objects:v200 count:16];
            }

            while (v18);
          }

          [builderCopy setObject:v15 forKey:@"people"];
          if (v13)
          {
            v22 = 1;
            providerCopy = v14;
            fingerprintContext = v186;
            attachedDiffTracker = v190;
            v11 = &CPLFeatureNameEPP_ptr;
            goto LABEL_25;
          }

          providerCopy = v14;
          fingerprintContext = v186;
          attachedDiffTracker = v190;
          v11 = &CPLFeatureNameEPP_ptr;
        }

        else if (v13)
        {
          v22 = 1;
          goto LABEL_25;
        }

LABEL_22:
        if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"syndicationIdentifier" changeType:2])
        {
          if (([v11[39] serverSupportsSharedLibrarySharingState] & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        v22 = 0;
LABEL_25:
        if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"syndicationIdentifier")])
        {
          syndicationIdentifier = [(CPLAssetChange *)selfCopy syndicationIdentifier];
          [builderCopy setObject:syndicationIdentifier forKey:@"syndicationId"];
        }

        if (([v11[39] serverSupportsSharedLibrarySharingState] & 1) == 0)
        {
LABEL_36:
          if (v22)
          {
            v25 = 1;
            goto LABEL_41;
          }

LABEL_38:
          if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"playCount" changeType:2])
          {
            if (([v11[39] serverSupportsLastViewedDate] & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          }

          v25 = 0;
LABEL_41:
          if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"playCount")])
          {
            v26 = [NSNumber numberWithLongLong:[(CPLAssetChange *)selfCopy playCount]];
            [builderCopy setObject:v26 forKey:@"playCount"];
          }

          if (([v11[39] serverSupportsLastViewedDate] & 1) == 0)
          {
LABEL_52:
            if (v25)
            {
              v28 = 1;
              goto LABEL_57;
            }

LABEL_54:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"viewCount" changeType:2])
            {
              goto LABEL_61;
            }

            v28 = 0;
LABEL_57:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"viewCount")])
            {
              v29 = [NSNumber numberWithLongLong:[(CPLAssetChange *)selfCopy viewCount]];
              [builderCopy setObject:v29 forKey:@"viewCount"];
            }

            if (v28)
            {
              v30 = 1;
              goto LABEL_64;
            }

LABEL_61:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"lastSharedDate" changeType:2])
            {
              goto LABEL_68;
            }

            v30 = 0;
LABEL_64:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"lastSharedDate")])
            {
              lastSharedDate = [(CPLAssetChange *)selfCopy lastSharedDate];
              [builderCopy setObject:lastSharedDate forKey:@"lastSharedDate"];
            }

            if (v30)
            {
              v32 = 1;
              goto LABEL_71;
            }

LABEL_68:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"shareCount" changeType:2])
            {
              goto LABEL_75;
            }

            v32 = 0;
LABEL_71:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"shareCount")])
            {
              v33 = [NSNumber numberWithLongLong:[(CPLAssetChange *)selfCopy shareCount]];
              [builderCopy setObject:v33 forKey:@"shareCount"];
            }

            if (v32)
            {
              v34 = 1;
              goto LABEL_78;
            }

LABEL_75:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"viewPresentation" changeType:2])
            {
              goto LABEL_82;
            }

            v34 = 0;
LABEL_78:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"viewPresentation")])
            {
              v35 = [NSNumber numberWithShort:[(CPLAssetChange *)selfCopy viewPresentation]];
              [builderCopy setLegacyEncryptedObject:v35 forKey:@"viewPresentationTypeEnc"];
            }

            if (v34)
            {
              [(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateVersion")];
              v36 = 1;
              goto LABEL_88;
            }

LABEL_82:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) != 0 || [attachedDiffTracker areObjectsDifferentOnProperty:@"computeStateVersion" changeType:2])
            {
              [(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateVersion")];
            }

            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ([attachedDiffTracker areObjectsDifferentOnProperty:@"computeStateAdjustmentFingerprint" changeType:2] & 1) == 0)
            {
              goto LABEL_90;
            }

            v36 = 0;
LABEL_88:
            [(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateAdjustmentFingerprint")];
            if (v36)
            {
              [(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateLastUpdatedDate")];
              v37 = 1;
              goto LABEL_96;
            }

LABEL_90:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) != 0 || [attachedDiffTracker areObjectsDifferentOnProperty:@"computeStateLastUpdatedDate" changeType:2])
            {
              [(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateLastUpdatedDate")];
            }

            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ([attachedDiffTracker areObjectsDifferentOnProperty:@"assetDate" changeType:2] & 1) == 0)
            {
              goto LABEL_120;
            }

            v37 = 0;
LABEL_96:
            if (![(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetDate")])
            {
              goto LABEL_118;
            }

            assetDate = [(CPLAssetChange *)selfCopy assetDate];
            if (assetDate)
            {
              if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
              {
                v191 = attachedDiffTracker;
                v39 = fingerprintContext;
                v187 = providerCopy;
                v40 = assetDate;
                v41 = +[NSDate date];
                [v41 timeIntervalSinceReferenceDate];
                v43 = v42;
                [v40 timeIntervalSinceReferenceDate];
                v45 = v44;
                v46 = round(v44) + 1.0;
                v47 = arc4random_uniform(0x3Bu);
                if (v46 + v47 <= v43 || v45 >= v43)
                {
                  v43 = v46 + v47;
                }

                v49 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v43];

                v50 = v49;
                v51 = v40;
                if (v50 && ([v50 isEqual:v51] & 1) != 0)
                {

                  [builderCopy setObject:v51 forKey:@"assetDate"];
                  v52 = objc_opt_class();
                  v53 = builderCopy;
                  v54 = 0;
                }

                else
                {

                  v55 = v51;
                  v56 = +[NSDate date];
                  [v56 timeIntervalSinceReferenceDate];
                  v58 = v57;
                  [v55 timeIntervalSinceReferenceDate];
                  v60 = v59;
                  v61 = round(v59) + 1.0;
                  v62 = arc4random_uniform(0x3Bu);
                  if (v61 + v62 <= v58 || v60 >= v58)
                  {
                    v58 = v61 + v62;
                  }

                  v64 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v58];

                  [builderCopy setObject:v64 forKey:@"assetDate"];
                  v52 = objc_opt_class();
                  v53 = builderCopy;
                  v54 = v55;
                }

                [v53 setEncryptedObject:v54 forKey:@"assetDateEnc" validateClass:v52];
                providerCopy = v187;

                fingerprintContext = v39;
                attachedDiffTracker = v191;
                v11 = &CPLFeatureNameEPP_ptr;
                goto LABEL_117;
              }

              [builderCopy setObject:assetDate forKey:@"assetDate"];
            }

            else
            {
              [builderCopy setObject:0 forKey:@"assetDate"];
            }

            [builderCopy setEncryptedObject:0 forKey:@"assetDateEnc" validateClass:objc_opt_class()];
LABEL_117:

LABEL_118:
            if (v37)
            {
              v65 = 1;
              goto LABEL_123;
            }

LABEL_120:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"hidden" changeType:2])
            {
              goto LABEL_127;
            }

            v65 = 0;
LABEL_123:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"hidden")])
            {
              v66 = [NSNumber numberWithBool:[(CPLAssetChange *)selfCopy isHidden]];
              [builderCopy setObject:v66 forKey:@"isHidden"];
            }

            if (v65)
            {
              v67 = 1;
              goto LABEL_130;
            }

LABEL_127:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"favorite" changeType:2])
            {
              goto LABEL_134;
            }

            v67 = 0;
LABEL_130:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"favorite")])
            {
              v68 = [NSNumber numberWithBool:[(CPLAssetChange *)selfCopy isFavorite]];
              [builderCopy setObject:v68 forKey:@"isFavorite"];
            }

            if (v67)
            {
              v69 = 1;
              goto LABEL_137;
            }

LABEL_134:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"caption" changeType:2])
            {
              goto LABEL_141;
            }

            v69 = 0;
LABEL_137:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"caption")])
            {
              caption = [(CPLAssetChange *)selfCopy caption];
              [builderCopy setLegacyEncryptedObject:caption forKey:@"captionEnc"];
            }

            if (v69)
            {
              v71 = 1;
              goto LABEL_144;
            }

LABEL_141:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"keywords" changeType:2])
            {
              goto LABEL_148;
            }

            v71 = 0;
LABEL_144:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"keywords")])
            {
              keywords = [(CPLAssetChange *)selfCopy keywords];
              [builderCopy setLegacyEncryptedObject:keywords forKey:@"keywordsEnc"];
            }

            if (v71)
            {
              v73 = 1;
              goto LABEL_151;
            }

LABEL_148:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"extendedDescription" changeType:2])
            {
              goto LABEL_155;
            }

            v73 = 0;
LABEL_151:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"extendedDescription")])
            {
              extendedDescription = [(CPLAssetChange *)selfCopy extendedDescription];
              [builderCopy setLegacyEncryptedObject:extendedDescription forKey:@"extendedDescEnc"];
            }

            if (v73)
            {
              v75 = 1;
              goto LABEL_158;
            }

LABEL_155:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"accessibilityDescription" changeType:2])
            {
              goto LABEL_162;
            }

            v75 = 0;
LABEL_158:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"accessibilityDescription")])
            {
              accessibilityDescription = [(CPLAssetChange *)selfCopy accessibilityDescription];
              [builderCopy setLegacyEncryptedObject:accessibilityDescription forKey:@"accessibilityDescEnc"];
            }

            if (v75)
            {
              v77 = 1;
              goto LABEL_165;
            }

LABEL_162:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"masterIdentifier" changeType:2])
            {
              goto LABEL_170;
            }

            v77 = 0;
LABEL_165:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"masterIdentifier")])
            {
              masterScopedIdentifier = [(CPLAssetChange *)selfCopy masterScopedIdentifier];
              if (!masterScopedIdentifier)
              {
                sub_1001AC45C(v189, selfCopy);
              }

              v79 = masterScopedIdentifier;
              [builderCopy setCKReferenceWithScopedIdentifier:masterScopedIdentifier forKey:@"masterRef" referenceAction:1];
            }

            if (v77)
            {
              v80 = 1;
              goto LABEL_173;
            }

LABEL_170:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"addedDate" changeType:2])
            {
              goto LABEL_177;
            }

            v80 = 0;
LABEL_173:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"addedDate")])
            {
              addedDate = [(CPLAssetChange *)selfCopy addedDate];
              [builderCopy setObject:addedDate forKey:@"addedDate"];
            }

            if (v80)
            {
              v82 = 1;
              goto LABEL_180;
            }

LABEL_177:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"location" changeType:2])
            {
              if (([v11[39] serverSupportsDeletedByUserIdentifier] & 1) == 0)
              {
                goto LABEL_192;
              }

              goto LABEL_186;
            }

            v82 = 0;
LABEL_180:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"location")])
            {
              location = [(CPLAssetChange *)selfCopy location];
              cplLocationDictionary = [location cplLocationDictionary];
              [builderCopy setLegacyEncryptedObject:cplLocationDictionary forKey:@"locationEnc"];
            }

            if (([v11[39] serverSupportsDeletedByUserIdentifier] & 1) == 0)
            {
LABEL_190:
              if (v82)
              {
                v85 = 1;
                goto LABEL_195;
              }

LABEL_192:
              if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"placeAnnotation" changeType:2])
              {
                goto LABEL_199;
              }

              v85 = 0;
LABEL_195:
              if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"placeAnnotation")])
              {
                placeAnnotation = [(CPLAssetChange *)selfCopy placeAnnotation];
                cplPlaceAnnotationDictionary = [placeAnnotation cplPlaceAnnotationDictionary];
                [builderCopy setLegacyEncryptedObject:cplPlaceAnnotationDictionary forKey:@"placeInfoEnc"];
              }

              if (v85)
              {
                v88 = 1;
                goto LABEL_202;
              }

LABEL_199:
              if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"timeZoneName" changeType:2])
              {
                goto LABEL_206;
              }

              v88 = 0;
LABEL_202:
              if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"timeZoneName")])
              {
                timeZoneName = [(CPLAssetChange *)selfCopy timeZoneName];
                [builderCopy setLegacyEncryptedObject:timeZoneName forKey:@"timeZoneNameEnc"];
              }

              if (v88)
              {
                v90 = 1;
                goto LABEL_209;
              }

LABEL_206:
              if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"burstIdentifier" changeType:2])
              {
                goto LABEL_219;
              }

              v90 = 0;
LABEL_209:
              if (![(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"burstIdentifier")])
              {
                goto LABEL_217;
              }

              burstIdentifier = [(CPLAssetChange *)selfCopy burstIdentifier];
              if (burstIdentifier)
              {
                if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
                {
                  [builderCopy setObject:0 forKey:@"burstId"];
                  v92 = objc_opt_class();
                  v93 = builderCopy;
                  v94 = burstIdentifier;
LABEL_216:
                  [v93 setEncryptedObject:v94 forKey:@"burstIdEnc" validateClass:v92];

LABEL_217:
                  if (v90)
                  {
                    v97 = 1;
                    goto LABEL_222;
                  }

LABEL_219:
                  if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"mediaGroupIdentifier" changeType:2])
                  {
                    goto LABEL_232;
                  }

                  v97 = 0;
LABEL_222:
                  if (![(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mediaGroupIdentifier")])
                  {
                    goto LABEL_230;
                  }

                  mediaGroupIdentifier = [(CPLAssetChange *)selfCopy mediaGroupIdentifier];
                  if (mediaGroupIdentifier)
                  {
                    if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
                    {
                      [builderCopy setObject:0 forKey:@"mediaGroupId"];
                      v99 = objc_opt_class();
                      v100 = builderCopy;
                      v101 = mediaGroupIdentifier;
LABEL_229:
                      [v100 setEncryptedObject:v101 forKey:@"mediaGroupIdEnc" validateClass:v99];

LABEL_230:
                      if (v97)
                      {
                        v104 = 1;
                        goto LABEL_235;
                      }

LABEL_232:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"videoComplementDurationValue" changeType:2])
                      {
                        goto LABEL_239;
                      }

                      v104 = 0;
LABEL_235:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementDurationValue")])
                      {
                        v105 = [NSNumber numberWithInteger:[(CPLAssetChange *)selfCopy videoComplementDurationValue]];
                        [builderCopy setObject:v105 forKey:@"vidComplDurValue"];
                      }

                      if (v104)
                      {
                        v106 = 1;
                        goto LABEL_242;
                      }

LABEL_239:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"videoComplementDurationTimescale" changeType:2])
                      {
                        goto LABEL_246;
                      }

                      v106 = 0;
LABEL_242:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementDurationTimescale")])
                      {
                        v107 = [NSNumber numberWithInteger:[(CPLAssetChange *)selfCopy videoComplementDurationTimescale]];
                        [builderCopy setObject:v107 forKey:@"vidComplDurScale"];
                      }

                      if (v106)
                      {
                        v108 = 1;
                        goto LABEL_249;
                      }

LABEL_246:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"videoComplementImageDisplayValue" changeType:2])
                      {
                        goto LABEL_253;
                      }

                      v108 = 0;
LABEL_249:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementImageDisplayValue")])
                      {
                        v109 = [NSNumber numberWithInteger:[(CPLAssetChange *)selfCopy videoComplementImageDisplayValue]];
                        [builderCopy setObject:v109 forKey:@"vidComplDispValue"];
                      }

                      if (v108)
                      {
                        v110 = 1;
                        goto LABEL_256;
                      }

LABEL_253:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"videoComplementImageDisplayTimescale" changeType:2])
                      {
                        goto LABEL_260;
                      }

                      v110 = 0;
LABEL_256:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementImageDisplayTimescale")])
                      {
                        v111 = [NSNumber numberWithInteger:[(CPLAssetChange *)selfCopy videoComplementImageDisplayTimescale]];
                        [builderCopy setObject:v111 forKey:@"vidComplDispScale"];
                      }

                      if (v110)
                      {
                        v112 = 1;
                        goto LABEL_263;
                      }

LABEL_260:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"videoComplementVisibilityState" changeType:2])
                      {
                        goto LABEL_267;
                      }

                      v112 = 0;
LABEL_263:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementVisibilityState")])
                      {
                        v113 = [NSNumber numberWithUnsignedInteger:[(CPLAssetChange *)selfCopy videoComplementVisibilityState]];
                        [builderCopy setObject:v113 forKey:@"vidComplVisibilityState"];
                      }

                      if (v112)
                      {
                        v114 = 1;
                        goto LABEL_270;
                      }

LABEL_267:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"assetSubtype" changeType:2])
                      {
                        goto LABEL_279;
                      }

                      v114 = 0;
LABEL_270:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetSubtype")])
                      {
                        assetSubtype = [(CPLAssetChange *)selfCopy assetSubtype];
                        if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:"assetSubtype"])
                        {
                          v116 = [NSNumber numberWithUnsignedInteger:assetSubtype];
                          [builderCopy setObject:v116 forKey:@"assetSubtypeV2"];
                        }

                        if ((assetSubtype - 100) >= 2 && assetSubtype > 1)
                        {
                          [builderCopy setObject:&off_10028EE78 forKey:@"assetSubtype"];
                          if (v114)
                          {
                            goto LABEL_277;
                          }

                          goto LABEL_279;
                        }

                        v117 = [NSNumber numberWithUnsignedInteger:assetSubtype];
                        [builderCopy setObject:v117 forKey:@"assetSubtype"];
                      }

                      if (v114)
                      {
LABEL_277:
                        v118 = 1;
                        goto LABEL_282;
                      }

LABEL_279:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"burstFlags" changeType:2])
                      {
                        goto LABEL_289;
                      }

                      v118 = 0;
LABEL_282:
                      if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"burstFlags")])
                      {
                        burstFlags = [(CPLAssetChange *)selfCopy burstFlags];
                        v120 = burstFlags & 0xFFFFFFFFFFFFFFE0;
                        if ((burstFlags & 0xFFFFFFFFFFFFFFE0) != 0)
                        {
                          0x1F = [NSNumber numberWithUnsignedInteger:burstFlags & 0x1F];
                          [builderCopy setObject:0x1F forKey:@"burstFlags"];

                          v122 = @"burstFlagsExt";
                          burstFlags = v120;
                        }

                        else
                        {
                          v122 = @"burstFlags";
                        }

                        v123 = [NSNumber numberWithUnsignedInteger:burstFlags];
                        [builderCopy setObject:v123 forKey:v122];
                      }

                      if (v118)
                      {
                        v124 = 1;
                        goto LABEL_292;
                      }

LABEL_289:
                      if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"timeZoneOffset" changeType:2])
                      {
                        goto LABEL_302;
                      }

                      v124 = 0;
LABEL_292:
                      if (![(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"timeZoneOffset")])
                      {
                        goto LABEL_300;
                      }

                      timeZoneOffset = [(CPLAssetChange *)selfCopy timeZoneOffset];
                      if (timeZoneOffset)
                      {
                        if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
                        {
                          [builderCopy setObject:0 forKey:@"timeZoneOffset"];
                          v126 = objc_opt_class();
                          v127 = builderCopy;
                          v128 = timeZoneOffset;
LABEL_299:
                          [v127 setEncryptedObject:v128 forKey:@"timeZoneOffsetEnc" validateClass:v126];

LABEL_300:
                          if (v124)
                          {
                            v131 = 1;
                            goto LABEL_305;
                          }

LABEL_302:
                          if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"assetHDRType" changeType:2])
                          {
                            goto LABEL_309;
                          }

                          v131 = 0;
LABEL_305:
                          if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetHDRType")])
                          {
                            v132 = [NSNumber numberWithUnsignedInteger:[(CPLAssetChange *)selfCopy assetHDRType]];
                            [builderCopy setObject:v132 forKey:@"assetHDRType"];
                          }

                          if (v131)
                          {
                            v133 = 1;
                            goto LABEL_312;
                          }

LABEL_309:
                          if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"customRenderedValue" changeType:2])
                          {
LABEL_328:
                            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"trashedReason" changeType:2])
                            {
LABEL_332:

                              goto LABEL_333;
                            }

LABEL_330:
                            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"trashedReason")])
                            {
                              v146 = [NSNumber numberWithUnsignedShort:[(CPLAssetChange *)selfCopy trashedReason]];
                              [builderCopy setObject:v146 forKey:@"trashReason"];
                            }

                            goto LABEL_332;
                          }

                          v133 = 0;
LABEL_312:
                          if (![(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"customRenderedValue")])
                          {
                            goto LABEL_327;
                          }

                          customRenderedValue = [(CPLAssetChange *)selfCopy customRenderedValue];
                          v135 = [NSNumber numberWithLongLong:customRenderedValue];
                          if (v135)
                          {
                            if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
                            {
                              v188 = providerCopy;
                              v136 = fingerprintContext;
                              if (customRenderedValue >= 0xB)
                              {
                                v137 = 0;
                              }

                              else
                              {
                                v137 = customRenderedValue;
                              }

                              v138 = [NSNumber numberWithLongLong:v137];
                              v139 = v135;
                              if (v138 && ([v138 isEqual:v139] & 1) != 0)
                              {

                                [builderCopy setObject:v139 forKey:@"customRenderedValue"];
                                v140 = objc_opt_class();
                                v141 = builderCopy;
                                v142 = 0;
                              }

                              else
                              {

                                v145 = [NSNumber numberWithLongLong:v137];
                                [builderCopy setObject:v145 forKey:@"customRenderedValue"];

                                v140 = objc_opt_class();
                                v141 = builderCopy;
                                v142 = v139;
                              }

                              [v141 setEncryptedObject:v142 forKey:@"customRenderedValueEnc" validateClass:v140];

                              fingerprintContext = v136;
                              providerCopy = v188;
                              goto LABEL_326;
                            }

                            v143 = builderCopy;
                            v144 = v135;
                          }

                          else
                          {
                            v143 = builderCopy;
                            v144 = 0;
                          }

                          [v143 setObject:v144 forKey:@"customRenderedValue"];
                          [builderCopy setEncryptedObject:0 forKey:@"customRenderedValueEnc" validateClass:objc_opt_class()];
LABEL_326:

LABEL_327:
                          if (v133)
                          {
                            goto LABEL_330;
                          }

                          goto LABEL_328;
                        }

                        v129 = builderCopy;
                        v130 = timeZoneOffset;
                      }

                      else
                      {
                        v129 = builderCopy;
                        v130 = 0;
                      }

                      [v129 setObject:v130 forKey:@"timeZoneOffset"];
                      v126 = objc_opt_class();
                      v127 = builderCopy;
                      v128 = 0;
                      goto LABEL_299;
                    }

                    v102 = builderCopy;
                    v103 = mediaGroupIdentifier;
                  }

                  else
                  {
                    v102 = builderCopy;
                    v103 = 0;
                  }

                  [v102 setObject:v103 forKey:@"mediaGroupId"];
                  v99 = objc_opt_class();
                  v100 = builderCopy;
                  v101 = 0;
                  goto LABEL_229;
                }

                v95 = builderCopy;
                v96 = burstIdentifier;
              }

              else
              {
                v95 = builderCopy;
                v96 = 0;
              }

              [v95 setObject:v96 forKey:@"burstId"];
              v92 = objc_opt_class();
              v93 = builderCopy;
              v94 = 0;
              goto LABEL_216;
            }

            if (v82)
            {
              v82 = 1;
LABEL_189:
              [(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"deletedByUserIdentifier")];
              goto LABEL_190;
            }

LABEL_186:
            if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"deletedByUserIdentifier" changeType:2])
            {
              goto LABEL_192;
            }

            v82 = 0;
            goto LABEL_189;
          }

          if (v25)
          {
            v25 = 1;
LABEL_50:
            if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"lastViewedDate")])
            {
              lastViewedDate = [(CPLAssetChange *)selfCopy lastViewedDate];
              [builderCopy setLegacyEncryptedObject:lastViewedDate forKey:@"lastViewedDateEnc"];
            }

            goto LABEL_52;
          }

LABEL_47:
          if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"lastViewedDate" changeType:2])
          {
            goto LABEL_54;
          }

          v25 = 0;
          goto LABEL_50;
        }

        if (v22)
        {
          v22 = 1;
LABEL_34:
          if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"sharedLibrarySharingState")])
          {
            v24 = [NSNumber numberWithLongLong:[(CPLAssetChange *)selfCopy sharedLibrarySharingState]];
            [builderCopy setLegacyEncryptedObject:v24 forKey:@"sharedSyncSharingStateEnc"];
          }

          goto LABEL_36;
        }

LABEL_31:
        if ((-[CPLAssetChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"sharedLibrarySharingState" changeType:2])
        {
          goto LABEL_38;
        }

        v22 = 0;
        goto LABEL_34;
      }
    }

    v13 = 1;
    goto LABEL_9;
  }

LABEL_333:
  if (![(CPLAssetChange *)selfCopy hasChangeType:8])
  {
    goto LABEL_372;
  }

  if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"orientation")])
  {
    v147 = [NSNumber numberWithInteger:[(CPLAssetChange *)selfCopy orientation]];
    [builderCopy setObject:v147 forKey:@"orientation"];
  }

  if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"adjustments")])
  {
    adjustments = [(CPLAssetChange *)selfCopy adjustments];
    adjustmentType = [adjustments adjustmentType];
    if (adjustmentType)
    {
      if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
      {
        [builderCopy setObject:0 forKey:@"adjustmentType"];
        v150 = objc_opt_class();
        v151 = builderCopy;
        v152 = adjustmentType;
LABEL_343:
        [v151 setEncryptedObject:v152 forKey:@"adjustmentTypeEnc" validateClass:v150];

        adjustmentCompoundVersion = [adjustments adjustmentCompoundVersion];
        [builderCopy setObject:adjustmentCompoundVersion forKey:@"adjustmentCompoundVersion"];

        adjustmentCreatorCode = [adjustments adjustmentCreatorCode];
        [builderCopy setObject:adjustmentCreatorCode forKey:@"adjustmentCreatorCode"];

        v157 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [adjustments adjustmentSourceType]);
        [builderCopy setObject:v157 forKey:@"adjustmentSourceType"];

        similarToOriginalAdjustmentsFingerprint = [adjustments similarToOriginalAdjustmentsFingerprint];
        [builderCopy setObject:similarToOriginalAdjustmentsFingerprint forKey:@"similarToOriginalAdjustmentsFingerprint"];

        otherAdjustmentsFingerprint = [adjustments otherAdjustmentsFingerprint];
        [builderCopy setObject:otherAdjustmentsFingerprint forKey:@"otherAdjustmentsFingerprint"];

        v160 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [adjustments adjustmentRenderTypes]);
        [builderCopy setObject:v160 forKey:@"adjustmentRenderType"];

        adjustmentTimestamp = [adjustments adjustmentTimestamp];
        [builderCopy setLegacyEncryptedObject:adjustmentTimestamp forKey:@"adjustmentTimestampEnc"];

        simpleAdjustmentData = [adjustments simpleAdjustmentData];
        [builderCopy setLegacyEncryptedObject:simpleAdjustmentData forKey:@"adjustmentSimpleDataEnc"];

        goto LABEL_344;
      }

      v153 = builderCopy;
      v154 = adjustmentType;
    }

    else
    {
      v153 = builderCopy;
      v154 = 0;
    }

    [v153 setObject:v154 forKey:@"adjustmentType"];
    v150 = objc_opt_class();
    v151 = builderCopy;
    v152 = 0;
    goto LABEL_343;
  }

LABEL_344:
  if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"duration")])
  {
    duration = [(CPLAssetChange *)selfCopy duration];
    v164 = [NSNumber numberWithInteger:duration];
    if (v164)
    {
      if ([(CPLAssetChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
      {
        if ((duration & 0x8000000000000000) != 0)
        {
          v165 = 0;
        }

        else
        {
          v165 = duration;
          if (duration >= 0xF)
          {
            if (duration >= 0x1E)
            {
              if (duration > 0xF0)
              {
                v184 = 540;
                if (duration < 0x21C)
                {
                  v184 = 390;
                }

                if (duration >= 0x186)
                {
                  v165 = v184;
                }

                else
                {
                  v165 = 240;
                }
              }

              else
              {
                v165 = duration - duration % 0x1Eu;
              }
            }

            else
            {
              v165 = 15;
            }
          }
        }

        v168 = [NSNumber numberWithInteger:v165];
        v169 = v164;
        if (v168 && ([v168 isEqual:v169] & 1) != 0)
        {

          [builderCopy setObject:v169 forKey:@"duration"];
          v170 = objc_opt_class();
          v171 = builderCopy;
          v172 = 0;
        }

        else
        {

          if ((duration & 0x8000000000000000) != 0)
          {
            duration = 0;
          }

          else if (duration >= 0xF)
          {
            if (duration >= 0x1E)
            {
              if (duration > 0xF0)
              {
                v185 = 540;
                if (duration < 0x21C)
                {
                  v185 = 390;
                }

                if (duration >= 0x186)
                {
                  duration = v185;
                }

                else
                {
                  duration = 240;
                }
              }

              else
              {
                duration -= duration % 0x1Eu;
              }
            }

            else
            {
              duration = 15;
            }
          }

          v173 = [NSNumber numberWithInteger:duration];
          [builderCopy setObject:v173 forKey:@"duration"];

          v170 = objc_opt_class();
          v171 = builderCopy;
          v172 = v169;
        }

        [v171 setEncryptedObject:v172 forKey:@"durationEnc" validateClass:v170];

        goto LABEL_365;
      }

      v166 = builderCopy;
      v167 = v164;
    }

    else
    {
      v166 = builderCopy;
      v167 = 0;
    }

    [v166 setObject:v167 forKey:@"duration"];
    [builderCopy setEncryptedObject:0 forKey:@"durationEnc" validateClass:objc_opt_class()];
LABEL_365:
  }

  if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"originalChoice")])
  {
    v174 = [NSNumber numberWithUnsignedInteger:[(CPLAssetChange *)selfCopy originalChoice]];
    [builderCopy setObject:v174 forKey:@"originalChoice"];
  }

  if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"adjustedMediaMetaDataType")])
  {
    adjustedMediaMetaDataType = [(CPLAssetChange *)selfCopy adjustedMediaMetaDataType];
    [builderCopy setObject:adjustedMediaMetaDataType forKey:@"adjustedMediaMetaDataStrType"];
  }

  if ([(CPLAssetChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"adjustedMediaMetaData")])
  {
    adjustedMediaMetaData = [(CPLAssetChange *)selfCopy adjustedMediaMetaData];
    [builderCopy setLegacyEncryptedObject:adjustedMediaMetaData forKey:@"adjustedMediaMetaDataEnc"];
  }

LABEL_372:
  if ([(CPLAssetChange *)selfCopy hasChangeType:32])
  {
    facesAdjustmentsFingerprint = selfCopy;
    if ([&off_100291470 count])
    {
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v178 = [&off_100291470 countByEnumeratingWithState:&v196 objects:v201 count:16];
      if (!v178)
      {
LABEL_385:

        goto LABEL_386;
      }

      v179 = v178;
      v180 = *v197;
LABEL_376:
      v181 = 0;
      while (1)
      {
        if (*v197 != v180)
        {
          objc_enumerationMutation(&off_100291470);
        }

        if (([(CPLAssetChange *)facesAdjustmentsFingerprint shouldApplyPropertiesWithSelector:NSSelectorFromString(*(*(&v196 + 1) + 8 * v181))]& 1) != 0)
        {
          break;
        }

        if (v179 == ++v181)
        {
          v179 = [&off_100291470 countByEnumeratingWithState:&v196 objects:v201 count:16];
          if (v179)
          {
            goto LABEL_376;
          }

          goto LABEL_385;
        }
      }
    }

    if ([(CPLAssetChange *)facesAdjustmentsFingerprint shouldApplyPropertiesWithSelector:"facesData"])
    {
      facesData = [(CPLAssetChange *)facesAdjustmentsFingerprint facesData];
      [builderCopy setLegacyEncryptedObject:facesData forKey:@"faces"];

      v183 = [NSNumber numberWithInteger:[(CPLAssetChange *)facesAdjustmentsFingerprint facesVersion]];
      [builderCopy setObject:v183 forKey:@"facesVersion"];

      facesAdjustmentsFingerprint = [(CPLAssetChange *)facesAdjustmentsFingerprint facesAdjustmentsFingerprint];
      [builderCopy setObject:facesAdjustmentsFingerprint forKey:@"facesAdjustmentsFingerprint"];
      goto LABEL_385;
    }
  }

LABEL_386:
}

@end