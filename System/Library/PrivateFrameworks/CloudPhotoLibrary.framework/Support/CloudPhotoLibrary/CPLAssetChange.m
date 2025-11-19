@interface CPLAssetChange
+ (id)ckValueForRelatedRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
- (void)setMostRecentAddedDateOnCKRecord:(id)a3 withCPLEnabledDate:(id)a4;
@end

@implementation CPLAssetChange

- (void)setMostRecentAddedDateOnCKRecord:(id)a3 withCPLEnabledDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CPLAssetChange *)self addedDate];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009712C;
  v8 = v14[3] = &unk_1002766B0;
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v10 = v9;
  if (!v7 && v8)
  {
    v11 = (v9[2])(v9);
    goto LABEL_4;
  }

  if (v7 && !v8)
  {
    v12 = v7;
    goto LABEL_11;
  }

  if ([v8 compare:v7] != 1)
  {
    v11 = v7;
LABEL_4:
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = v10[2](v10);
  v12 = [v13 laterDate:v7];

  if (v12)
  {
LABEL_11:
    [v6 setObject:v12 forKey:@"mostRecentAddedDate"];
  }

LABEL_12:
}

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = a3;
  v4 = [[CKReference alloc] initWithRecord:v3 action:1];

  return v4;
}

- (void)fillWithCKRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 objectForKey:@"people"];
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

  [(CPLAssetChange *)v5 setPeople:v7];
  v16 = [v4 objectForKey:@"syndicationId"];
  [(CPLAssetChange *)v5 setSyndicationIdentifier:v16];

  if (+[CPLAssetChange serverSupportsSharedLibrarySharingState])
  {
    v17 = [v4 cpl_legacyDecryptedObjectForKey:@"sharedSyncSharingStateEnc" validateClass:objc_opt_class()];
    v18 = v17;
    if (!v17)
    {
      v17 = &off_10028EE30;
    }

    -[CPLAssetChange setSharedLibrarySharingState:](v5, "setSharedLibrarySharingState:", [v17 longLongValue]);
  }

  v19 = [v4 cpl_objectForKey:@"playCount" validateClass:objc_opt_class()];
  v20 = v19;
  if (!v19)
  {
    v19 = &off_10028EE30;
  }

  -[CPLAssetChange setPlayCount:](v5, "setPlayCount:", [v19 longLongValue]);

  if (+[CPLAssetChange serverSupportsLastViewedDate])
  {
    v21 = [v4 cpl_legacyDecryptedObjectForKey:@"lastViewedDateEnc" validateClass:objc_opt_class()];
    [(CPLAssetChange *)v5 setLastViewedDate:v21];
  }

  v22 = [v4 cpl_objectForKey:@"viewCount" validateClass:objc_opt_class()];
  v23 = v22;
  if (!v22)
  {
    v22 = &off_10028EE30;
  }

  -[CPLAssetChange setViewCount:](v5, "setViewCount:", [v22 longLongValue]);

  v24 = [v4 objectForKey:@"lastSharedDate"];
  [(CPLAssetChange *)v5 setLastSharedDate:v24];

  v25 = [v4 cpl_objectForKey:@"shareCount" validateClass:objc_opt_class()];
  v26 = v25;
  if (!v25)
  {
    v25 = &off_10028EE30;
  }

  -[CPLAssetChange setShareCount:](v5, "setShareCount:", [v25 longLongValue]);

  v27 = [v4 cpl_legacyDecryptedObjectForKey:@"viewPresentationTypeEnc" validateClass:objc_opt_class()];
  v28 = v27;
  if (!v27)
  {
    v27 = &off_10028EE48;
  }

  -[CPLAssetChange setViewPresentation:](v5, "setViewPresentation:", [v27 integerValue]);

  v29 = [v4 objectForKeyedSubscript:@"computeStateVersion"];
  [(CPLAssetChange *)v5 setComputeStateVersion:v29];

  v30 = [v4 cpl_decryptedObjectForKey:@"computeStateAdjustmentFingerprintEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setComputeStateAdjustmentFingerprint:v30];

  v31 = [v4 cpl_decryptedObjectForKey:@"computeStateLastUpdatedDateEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setComputeStateLastUpdatedDate:v31];

  v32 = [v4 cpl_decryptedObjectForKey:@"assetDateEnc" validateClass:objc_opt_class()];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [v4 objectForKeyedSubscript:@"assetDate"];
  }

  v35 = v34;

  [(CPLAssetChange *)v5 setAssetDate:v35];
  v36 = [v4 cpl_objectForKey:@"isHidden" validateClass:objc_opt_class()];
  v37 = v36;
  if (!v36)
  {
    v36 = &__kCFBooleanFalse;
  }

  -[CPLAssetChange setHidden:](v5, "setHidden:", [v36 BOOLValue]);

  v38 = [v4 cpl_objectForKey:@"isFavorite" validateClass:objc_opt_class()];
  v39 = v38;
  if (!v38)
  {
    v38 = &__kCFBooleanFalse;
  }

  -[CPLAssetChange setFavorite:](v5, "setFavorite:", [v38 BOOLValue]);

  v40 = [v4 cpl_legacyDecryptedObjectForKey:@"captionEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setCaption:v40];

  v41 = [v4 cpl_legacyDecryptedObjectForKey:@"keywordsEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setKeywords:v41];

  v42 = [v4 cpl_legacyDecryptedObjectForKey:@"extendedDescEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setExtendedDescription:v42];

  v43 = [v4 cpl_legacyDecryptedObjectForKey:@"accessibilityDescEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setAccessibilityDescription:v43];

  v44 = [v4 objectForKey:@"masterRef"];
  v45 = [v44 recordID];
  v46 = [v45 recordName];

  [(CPLAssetChange *)v5 setMasterIdentifier:v46];
  v47 = [v4 objectForKey:@"addedDate"];
  [(CPLAssetChange *)v5 setAddedDate:v47];

  v48 = [v4 cpl_legacyDecryptedObjectForKey:@"locationEnc" validateClass:objc_opt_class()];
  v49 = [CLLocation locationWithCPLLocationDictionary:v48];
  [(CPLAssetChange *)v5 setLocation:v49];

  if (+[CPLAssetChange serverSupportsDeletedByUserIdentifier])
  {
    v50 = [v4 objectForKey:@"deletedBy"];
    v51 = [v50 recordID];
    v52 = [v51 recordName];
    [(CPLAssetChange *)v5 setDeletedByUserIdentifier:v52];
  }

  v53 = [v4 cpl_legacyDecryptedObjectForKey:@"placeInfoEnc" validateClass:objc_opt_class()];
  v54 = [CPLPlaceAnnotation placeAnnotationWithCPLPlaceAnnotationDictionary:v53];
  [(CPLAssetChange *)v5 setPlaceAnnotation:v54];

  v55 = [v4 cpl_legacyDecryptedObjectForKey:@"timeZoneNameEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setTimeZoneName:v55];

  v56 = [v4 cpl_decryptedObjectForKey:@"burstIdEnc" validateClass:objc_opt_class()];
  v57 = v56;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = [v4 objectForKeyedSubscript:@"burstId"];
  }

  v59 = v58;

  [(CPLAssetChange *)v5 setBurstIdentifier:v59];
  v60 = [v4 cpl_decryptedObjectForKey:@"mediaGroupIdEnc" validateClass:objc_opt_class()];
  v61 = v60;
  if (v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = [v4 objectForKeyedSubscript:@"mediaGroupId"];
  }

  v63 = v62;

  [(CPLAssetChange *)v5 setMediaGroupIdentifier:v63];
  v64 = [v4 cpl_objectForKey:@"vidComplDurValue" validateClass:objc_opt_class()];
  v65 = v64;
  if (!v64)
  {
    v64 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementDurationValue:](v5, "setVideoComplementDurationValue:", [v64 integerValue]);

  v66 = [v4 cpl_objectForKey:@"vidComplDurScale" validateClass:objc_opt_class()];
  v67 = v66;
  if (!v66)
  {
    v66 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementDurationTimescale:](v5, "setVideoComplementDurationTimescale:", [v66 integerValue]);

  v68 = [v4 cpl_objectForKey:@"vidComplDispValue" validateClass:objc_opt_class()];
  v69 = v68;
  if (!v68)
  {
    v68 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementImageDisplayValue:](v5, "setVideoComplementImageDisplayValue:", [v68 integerValue]);

  v70 = [v4 cpl_objectForKey:@"vidComplDispScale" validateClass:objc_opt_class()];
  v71 = v70;
  if (!v70)
  {
    v70 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementImageDisplayTimescale:](v5, "setVideoComplementImageDisplayTimescale:", [v70 integerValue]);

  v72 = [v4 cpl_objectForKey:@"vidComplVisibilityState" validateClass:objc_opt_class()];
  v73 = v72;
  if (!v72)
  {
    v72 = &off_10028EE30;
  }

  -[CPLAssetChange setVideoComplementVisibilityState:](v5, "setVideoComplementVisibilityState:", [v72 integerValue]);

  v74 = [v4 objectForKey:@"assetSubtypeV2"];
  v75 = v74;
  if (v74)
  {
    v76 = [v74 unsignedIntegerValue];
  }

  else
  {
    v77 = [v4 objectForKey:@"assetSubtype"];
    v76 = [v77 unsignedIntegerValue];
  }

  [(CPLAssetChange *)v5 setAssetSubtype:v76];

  v78 = [v4 objectForKey:@"burstFlags"];
  v79 = [v78 unsignedIntegerValue];

  v80 = [v4 objectForKey:@"burstFlagsExt"];
  v81 = v80;
  if (v80 && v79)
  {
    v79 |= [v80 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFE0;
  }

  [(CPLAssetChange *)v5 setBurstFlags:v79];

  v82 = [v4 cpl_decryptedObjectForKey:@"timeZoneOffsetEnc" validateClass:objc_opt_class()];
  v83 = v82;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = [v4 objectForKeyedSubscript:@"timeZoneOffset"];
  }

  v85 = v84;

  [(CPLAssetChange *)v5 setTimeZoneOffset:v85];
  v86 = [v4 cpl_objectForKey:@"assetHDRType" validateClass:objc_opt_class()];
  v87 = v86;
  if (!v86)
  {
    v86 = &off_10028EE30;
  }

  -[CPLAssetChange setAssetHDRType:](v5, "setAssetHDRType:", [v86 unsignedIntegerValue]);

  v88 = [v4 cpl_decryptedObjectForKey:@"customRenderedValueEnc" validateClass:objc_opt_class()];
  v89 = v88;
  if (v88)
  {
    v90 = v88;
  }

  else
  {
    v90 = [v4 objectForKeyedSubscript:@"customRenderedValue"];
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

  -[CPLAssetChange setCustomRenderedValue:](v5, "setCustomRenderedValue:", [v92 longLongValue]);

  v93 = [v4 cpl_objectForKey:@"trashReason" validateClass:objc_opt_class()];
  v94 = v93;
  if (!v93)
  {
    v93 = &off_10028EE60;
  }

  -[CPLAssetChange setTrashedReason:](v5, "setTrashedReason:", [v93 longLongValue]);

  v95 = [v4 cpl_objectForKey:@"orientation" validateClass:objc_opt_class()];
  v96 = v95;
  if (!v95)
  {
    v95 = &off_10028EE30;
  }

  -[CPLAssetChange setOrientation:](v5, "setOrientation:", [v95 integerValue]);

  v97 = [v4 cpl_decryptedObjectForKey:@"adjustmentTypeEnc" validateClass:objc_opt_class()];
  if (v97 || ([v4 objectForKeyedSubscript:@"adjustmentType"], (v97 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v98 = v97;
    v99 = objc_alloc_init(CPLAdjustments);
    [v99 setAdjustmentType:v98];
    v100 = [v4 objectForKey:@"adjustmentCompoundVersion"];
    [v99 setAdjustmentCompoundVersion:v100];

    v101 = [v4 objectForKey:@"adjustmentCreatorCode"];
    [v99 setAdjustmentCreatorCode:v101];

    v102 = [v4 objectForKey:@"adjustmentSourceType"];
    [v99 setAdjustmentSourceType:{objc_msgSend(v102, "integerValue")}];

    v103 = [v4 cpl_legacyDecryptedObjectForKey:@"adjustmentSimpleDataEnc" validateClass:objc_opt_class()];
    [v99 setSimpleAdjustmentData:v103];

    v104 = [v4 objectForKey:@"similarToOriginalAdjustmentsFingerprint"];
    [v99 setSimilarToOriginalAdjustmentsFingerprint:v104];

    v105 = [v4 objectForKey:@"otherAdjustmentsFingerprint"];
    [v99 setOtherAdjustmentsFingerprint:v105];

    v106 = [v4 objectForKey:@"adjustmentRenderType"];
    [v99 setAdjustmentRenderTypes:{objc_msgSend(v106, "integerValue")}];

    v107 = [v4 cpl_legacyDecryptedObjectForKey:@"adjustmentTimestampEnc" validateClass:objc_opt_class()];
    [v99 setAdjustmentTimestamp:v107];

    [(CPLAssetChange *)v5 setAdjustments:v99];
  }

  v108 = [v4 cpl_decryptedObjectForKey:@"durationEnc" validateClass:objc_opt_class()];
  v109 = v108;
  if (v108)
  {
    v110 = v108;
  }

  else
  {
    v110 = [v4 objectForKeyedSubscript:@"duration"];
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

  -[CPLAssetChange setDuration:](v5, "setDuration:", [v112 integerValue]);

  v113 = [v4 cpl_objectForKey:@"originalChoice" validateClass:objc_opt_class()];
  v114 = v113;
  if (!v113)
  {
    v113 = &off_10028EE30;
  }

  -[CPLAssetChange setOriginalChoice:](v5, "setOriginalChoice:", [v113 unsignedIntegerValue]);

  v115 = [v4 objectForKey:@"adjustedMediaMetaDataStrType"];
  [(CPLAssetChange *)v5 setAdjustedMediaMetaDataType:v115];

  v116 = [v4 cpl_legacyDecryptedObjectForKey:@"adjustedMediaMetaDataEnc" validateClass:objc_opt_class()];
  [(CPLAssetChange *)v5 setAdjustedMediaMetaData:v116];

  v117 = [v4 cpl_legacyDecryptedObjectForKey:@"faces" validateClass:objc_opt_class()];
  if ([v117 length])
  {
    [(CPLAssetChange *)v5 setFacesData:v117];
  }

  v118 = [v4 objectForKey:@"facesVersion"];
  -[CPLAssetChange setFacesVersion:](v5, "setFacesVersion:", [v118 integerValue]);

  v119 = [v4 objectForKey:@"facesAdjustmentsFingerprint"];
  [(CPLAssetChange *)v5 setFacesAdjustmentsFingerprint:v119];
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = [v8 fingerprintContext];
  if ([(CPLAssetChange *)v9 hasChangeType:2])
  {
    v189 = a2;
    v11 = &CPLFeatureNameEPP_ptr;
    if (([(CPLAssetChange *)v9 isFullRecord]& 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(CPLAssetChange *)v9 attachedDiffTracker];

      if (v12)
      {
        if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"people" changeType:2])
        {
          goto LABEL_22;
        }

        v13 = 0;
LABEL_9:
        if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"people")])
        {
          v190 = v12;
          v186 = v10;
          v14 = v8;
          v15 = +[NSMutableArray array];
          v192 = 0u;
          v193 = 0u;
          v194 = 0u;
          v195 = 0u;
          v16 = [(CPLAssetChange *)v9 people];
          v17 = [v16 countByEnumeratingWithState:&v192 objects:v200 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v192 + 1) + 8 * i) serializedString];
                [v15 addObject:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v192 objects:v200 count:16];
            }

            while (v18);
          }

          [v7 setObject:v15 forKey:@"people"];
          if (v13)
          {
            v22 = 1;
            v8 = v14;
            v10 = v186;
            v12 = v190;
            v11 = &CPLFeatureNameEPP_ptr;
            goto LABEL_25;
          }

          v8 = v14;
          v10 = v186;
          v12 = v190;
          v11 = &CPLFeatureNameEPP_ptr;
        }

        else if (v13)
        {
          v22 = 1;
          goto LABEL_25;
        }

LABEL_22:
        if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"syndicationIdentifier" changeType:2])
        {
          if (([v11[39] serverSupportsSharedLibrarySharingState] & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        v22 = 0;
LABEL_25:
        if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"syndicationIdentifier")])
        {
          v23 = [(CPLAssetChange *)v9 syndicationIdentifier];
          [v7 setObject:v23 forKey:@"syndicationId"];
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
          if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"playCount" changeType:2])
          {
            if (([v11[39] serverSupportsLastViewedDate] & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          }

          v25 = 0;
LABEL_41:
          if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"playCount")])
          {
            v26 = [NSNumber numberWithLongLong:[(CPLAssetChange *)v9 playCount]];
            [v7 setObject:v26 forKey:@"playCount"];
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
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"viewCount" changeType:2])
            {
              goto LABEL_61;
            }

            v28 = 0;
LABEL_57:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"viewCount")])
            {
              v29 = [NSNumber numberWithLongLong:[(CPLAssetChange *)v9 viewCount]];
              [v7 setObject:v29 forKey:@"viewCount"];
            }

            if (v28)
            {
              v30 = 1;
              goto LABEL_64;
            }

LABEL_61:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"lastSharedDate" changeType:2])
            {
              goto LABEL_68;
            }

            v30 = 0;
LABEL_64:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"lastSharedDate")])
            {
              v31 = [(CPLAssetChange *)v9 lastSharedDate];
              [v7 setObject:v31 forKey:@"lastSharedDate"];
            }

            if (v30)
            {
              v32 = 1;
              goto LABEL_71;
            }

LABEL_68:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"shareCount" changeType:2])
            {
              goto LABEL_75;
            }

            v32 = 0;
LABEL_71:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"shareCount")])
            {
              v33 = [NSNumber numberWithLongLong:[(CPLAssetChange *)v9 shareCount]];
              [v7 setObject:v33 forKey:@"shareCount"];
            }

            if (v32)
            {
              v34 = 1;
              goto LABEL_78;
            }

LABEL_75:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"viewPresentation" changeType:2])
            {
              goto LABEL_82;
            }

            v34 = 0;
LABEL_78:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"viewPresentation")])
            {
              v35 = [NSNumber numberWithShort:[(CPLAssetChange *)v9 viewPresentation]];
              [v7 setLegacyEncryptedObject:v35 forKey:@"viewPresentationTypeEnc"];
            }

            if (v34)
            {
              [(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateVersion")];
              v36 = 1;
              goto LABEL_88;
            }

LABEL_82:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) != 0 || [v12 areObjectsDifferentOnProperty:@"computeStateVersion" changeType:2])
            {
              [(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateVersion")];
            }

            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ([v12 areObjectsDifferentOnProperty:@"computeStateAdjustmentFingerprint" changeType:2] & 1) == 0)
            {
              goto LABEL_90;
            }

            v36 = 0;
LABEL_88:
            [(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateAdjustmentFingerprint")];
            if (v36)
            {
              [(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateLastUpdatedDate")];
              v37 = 1;
              goto LABEL_96;
            }

LABEL_90:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) != 0 || [v12 areObjectsDifferentOnProperty:@"computeStateLastUpdatedDate" changeType:2])
            {
              [(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"computeStateLastUpdatedDate")];
            }

            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ([v12 areObjectsDifferentOnProperty:@"assetDate" changeType:2] & 1) == 0)
            {
              goto LABEL_120;
            }

            v37 = 0;
LABEL_96:
            if (![(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetDate")])
            {
              goto LABEL_118;
            }

            v38 = [(CPLAssetChange *)v9 assetDate];
            if (v38)
            {
              if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
              {
                v191 = v12;
                v39 = v10;
                v187 = v8;
                v40 = v38;
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

                  [v7 setObject:v51 forKey:@"assetDate"];
                  v52 = objc_opt_class();
                  v53 = v7;
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

                  [v7 setObject:v64 forKey:@"assetDate"];
                  v52 = objc_opt_class();
                  v53 = v7;
                  v54 = v55;
                }

                [v53 setEncryptedObject:v54 forKey:@"assetDateEnc" validateClass:v52];
                v8 = v187;

                v10 = v39;
                v12 = v191;
                v11 = &CPLFeatureNameEPP_ptr;
                goto LABEL_117;
              }

              [v7 setObject:v38 forKey:@"assetDate"];
            }

            else
            {
              [v7 setObject:0 forKey:@"assetDate"];
            }

            [v7 setEncryptedObject:0 forKey:@"assetDateEnc" validateClass:objc_opt_class()];
LABEL_117:

LABEL_118:
            if (v37)
            {
              v65 = 1;
              goto LABEL_123;
            }

LABEL_120:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"hidden" changeType:2])
            {
              goto LABEL_127;
            }

            v65 = 0;
LABEL_123:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"hidden")])
            {
              v66 = [NSNumber numberWithBool:[(CPLAssetChange *)v9 isHidden]];
              [v7 setObject:v66 forKey:@"isHidden"];
            }

            if (v65)
            {
              v67 = 1;
              goto LABEL_130;
            }

LABEL_127:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"favorite" changeType:2])
            {
              goto LABEL_134;
            }

            v67 = 0;
LABEL_130:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"favorite")])
            {
              v68 = [NSNumber numberWithBool:[(CPLAssetChange *)v9 isFavorite]];
              [v7 setObject:v68 forKey:@"isFavorite"];
            }

            if (v67)
            {
              v69 = 1;
              goto LABEL_137;
            }

LABEL_134:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"caption" changeType:2])
            {
              goto LABEL_141;
            }

            v69 = 0;
LABEL_137:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"caption")])
            {
              v70 = [(CPLAssetChange *)v9 caption];
              [v7 setLegacyEncryptedObject:v70 forKey:@"captionEnc"];
            }

            if (v69)
            {
              v71 = 1;
              goto LABEL_144;
            }

LABEL_141:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"keywords" changeType:2])
            {
              goto LABEL_148;
            }

            v71 = 0;
LABEL_144:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"keywords")])
            {
              v72 = [(CPLAssetChange *)v9 keywords];
              [v7 setLegacyEncryptedObject:v72 forKey:@"keywordsEnc"];
            }

            if (v71)
            {
              v73 = 1;
              goto LABEL_151;
            }

LABEL_148:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"extendedDescription" changeType:2])
            {
              goto LABEL_155;
            }

            v73 = 0;
LABEL_151:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"extendedDescription")])
            {
              v74 = [(CPLAssetChange *)v9 extendedDescription];
              [v7 setLegacyEncryptedObject:v74 forKey:@"extendedDescEnc"];
            }

            if (v73)
            {
              v75 = 1;
              goto LABEL_158;
            }

LABEL_155:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"accessibilityDescription" changeType:2])
            {
              goto LABEL_162;
            }

            v75 = 0;
LABEL_158:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"accessibilityDescription")])
            {
              v76 = [(CPLAssetChange *)v9 accessibilityDescription];
              [v7 setLegacyEncryptedObject:v76 forKey:@"accessibilityDescEnc"];
            }

            if (v75)
            {
              v77 = 1;
              goto LABEL_165;
            }

LABEL_162:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"masterIdentifier" changeType:2])
            {
              goto LABEL_170;
            }

            v77 = 0;
LABEL_165:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"masterIdentifier")])
            {
              v78 = [(CPLAssetChange *)v9 masterScopedIdentifier];
              if (!v78)
              {
                sub_1001AC45C(v189, v9);
              }

              v79 = v78;
              [v7 setCKReferenceWithScopedIdentifier:v78 forKey:@"masterRef" referenceAction:1];
            }

            if (v77)
            {
              v80 = 1;
              goto LABEL_173;
            }

LABEL_170:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"addedDate" changeType:2])
            {
              goto LABEL_177;
            }

            v80 = 0;
LABEL_173:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"addedDate")])
            {
              v81 = [(CPLAssetChange *)v9 addedDate];
              [v7 setObject:v81 forKey:@"addedDate"];
            }

            if (v80)
            {
              v82 = 1;
              goto LABEL_180;
            }

LABEL_177:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"location" changeType:2])
            {
              if (([v11[39] serverSupportsDeletedByUserIdentifier] & 1) == 0)
              {
                goto LABEL_192;
              }

              goto LABEL_186;
            }

            v82 = 0;
LABEL_180:
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"location")])
            {
              v83 = [(CPLAssetChange *)v9 location];
              v84 = [v83 cplLocationDictionary];
              [v7 setLegacyEncryptedObject:v84 forKey:@"locationEnc"];
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
              if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"placeAnnotation" changeType:2])
              {
                goto LABEL_199;
              }

              v85 = 0;
LABEL_195:
              if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"placeAnnotation")])
              {
                v86 = [(CPLAssetChange *)v9 placeAnnotation];
                v87 = [v86 cplPlaceAnnotationDictionary];
                [v7 setLegacyEncryptedObject:v87 forKey:@"placeInfoEnc"];
              }

              if (v85)
              {
                v88 = 1;
                goto LABEL_202;
              }

LABEL_199:
              if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"timeZoneName" changeType:2])
              {
                goto LABEL_206;
              }

              v88 = 0;
LABEL_202:
              if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"timeZoneName")])
              {
                v89 = [(CPLAssetChange *)v9 timeZoneName];
                [v7 setLegacyEncryptedObject:v89 forKey:@"timeZoneNameEnc"];
              }

              if (v88)
              {
                v90 = 1;
                goto LABEL_209;
              }

LABEL_206:
              if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"burstIdentifier" changeType:2])
              {
                goto LABEL_219;
              }

              v90 = 0;
LABEL_209:
              if (![(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"burstIdentifier")])
              {
                goto LABEL_217;
              }

              v91 = [(CPLAssetChange *)v9 burstIdentifier];
              if (v91)
              {
                if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
                {
                  [v7 setObject:0 forKey:@"burstId"];
                  v92 = objc_opt_class();
                  v93 = v7;
                  v94 = v91;
LABEL_216:
                  [v93 setEncryptedObject:v94 forKey:@"burstIdEnc" validateClass:v92];

LABEL_217:
                  if (v90)
                  {
                    v97 = 1;
                    goto LABEL_222;
                  }

LABEL_219:
                  if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"mediaGroupIdentifier" changeType:2])
                  {
                    goto LABEL_232;
                  }

                  v97 = 0;
LABEL_222:
                  if (![(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mediaGroupIdentifier")])
                  {
                    goto LABEL_230;
                  }

                  v98 = [(CPLAssetChange *)v9 mediaGroupIdentifier];
                  if (v98)
                  {
                    if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
                    {
                      [v7 setObject:0 forKey:@"mediaGroupId"];
                      v99 = objc_opt_class();
                      v100 = v7;
                      v101 = v98;
LABEL_229:
                      [v100 setEncryptedObject:v101 forKey:@"mediaGroupIdEnc" validateClass:v99];

LABEL_230:
                      if (v97)
                      {
                        v104 = 1;
                        goto LABEL_235;
                      }

LABEL_232:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"videoComplementDurationValue" changeType:2])
                      {
                        goto LABEL_239;
                      }

                      v104 = 0;
LABEL_235:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementDurationValue")])
                      {
                        v105 = [NSNumber numberWithInteger:[(CPLAssetChange *)v9 videoComplementDurationValue]];
                        [v7 setObject:v105 forKey:@"vidComplDurValue"];
                      }

                      if (v104)
                      {
                        v106 = 1;
                        goto LABEL_242;
                      }

LABEL_239:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"videoComplementDurationTimescale" changeType:2])
                      {
                        goto LABEL_246;
                      }

                      v106 = 0;
LABEL_242:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementDurationTimescale")])
                      {
                        v107 = [NSNumber numberWithInteger:[(CPLAssetChange *)v9 videoComplementDurationTimescale]];
                        [v7 setObject:v107 forKey:@"vidComplDurScale"];
                      }

                      if (v106)
                      {
                        v108 = 1;
                        goto LABEL_249;
                      }

LABEL_246:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"videoComplementImageDisplayValue" changeType:2])
                      {
                        goto LABEL_253;
                      }

                      v108 = 0;
LABEL_249:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementImageDisplayValue")])
                      {
                        v109 = [NSNumber numberWithInteger:[(CPLAssetChange *)v9 videoComplementImageDisplayValue]];
                        [v7 setObject:v109 forKey:@"vidComplDispValue"];
                      }

                      if (v108)
                      {
                        v110 = 1;
                        goto LABEL_256;
                      }

LABEL_253:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"videoComplementImageDisplayTimescale" changeType:2])
                      {
                        goto LABEL_260;
                      }

                      v110 = 0;
LABEL_256:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementImageDisplayTimescale")])
                      {
                        v111 = [NSNumber numberWithInteger:[(CPLAssetChange *)v9 videoComplementImageDisplayTimescale]];
                        [v7 setObject:v111 forKey:@"vidComplDispScale"];
                      }

                      if (v110)
                      {
                        v112 = 1;
                        goto LABEL_263;
                      }

LABEL_260:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"videoComplementVisibilityState" changeType:2])
                      {
                        goto LABEL_267;
                      }

                      v112 = 0;
LABEL_263:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoComplementVisibilityState")])
                      {
                        v113 = [NSNumber numberWithUnsignedInteger:[(CPLAssetChange *)v9 videoComplementVisibilityState]];
                        [v7 setObject:v113 forKey:@"vidComplVisibilityState"];
                      }

                      if (v112)
                      {
                        v114 = 1;
                        goto LABEL_270;
                      }

LABEL_267:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"assetSubtype" changeType:2])
                      {
                        goto LABEL_279;
                      }

                      v114 = 0;
LABEL_270:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetSubtype")])
                      {
                        v115 = [(CPLAssetChange *)v9 assetSubtype];
                        if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:"assetSubtype"])
                        {
                          v116 = [NSNumber numberWithUnsignedInteger:v115];
                          [v7 setObject:v116 forKey:@"assetSubtypeV2"];
                        }

                        if ((v115 - 100) >= 2 && v115 > 1)
                        {
                          [v7 setObject:&off_10028EE78 forKey:@"assetSubtype"];
                          if (v114)
                          {
                            goto LABEL_277;
                          }

                          goto LABEL_279;
                        }

                        v117 = [NSNumber numberWithUnsignedInteger:v115];
                        [v7 setObject:v117 forKey:@"assetSubtype"];
                      }

                      if (v114)
                      {
LABEL_277:
                        v118 = 1;
                        goto LABEL_282;
                      }

LABEL_279:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"burstFlags" changeType:2])
                      {
                        goto LABEL_289;
                      }

                      v118 = 0;
LABEL_282:
                      if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"burstFlags")])
                      {
                        v119 = [(CPLAssetChange *)v9 burstFlags];
                        v120 = v119 & 0xFFFFFFFFFFFFFFE0;
                        if ((v119 & 0xFFFFFFFFFFFFFFE0) != 0)
                        {
                          v121 = [NSNumber numberWithUnsignedInteger:v119 & 0x1F];
                          [v7 setObject:v121 forKey:@"burstFlags"];

                          v122 = @"burstFlagsExt";
                          v119 = v120;
                        }

                        else
                        {
                          v122 = @"burstFlags";
                        }

                        v123 = [NSNumber numberWithUnsignedInteger:v119];
                        [v7 setObject:v123 forKey:v122];
                      }

                      if (v118)
                      {
                        v124 = 1;
                        goto LABEL_292;
                      }

LABEL_289:
                      if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"timeZoneOffset" changeType:2])
                      {
                        goto LABEL_302;
                      }

                      v124 = 0;
LABEL_292:
                      if (![(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"timeZoneOffset")])
                      {
                        goto LABEL_300;
                      }

                      v125 = [(CPLAssetChange *)v9 timeZoneOffset];
                      if (v125)
                      {
                        if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
                        {
                          [v7 setObject:0 forKey:@"timeZoneOffset"];
                          v126 = objc_opt_class();
                          v127 = v7;
                          v128 = v125;
LABEL_299:
                          [v127 setEncryptedObject:v128 forKey:@"timeZoneOffsetEnc" validateClass:v126];

LABEL_300:
                          if (v124)
                          {
                            v131 = 1;
                            goto LABEL_305;
                          }

LABEL_302:
                          if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"assetHDRType" changeType:2])
                          {
                            goto LABEL_309;
                          }

                          v131 = 0;
LABEL_305:
                          if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetHDRType")])
                          {
                            v132 = [NSNumber numberWithUnsignedInteger:[(CPLAssetChange *)v9 assetHDRType]];
                            [v7 setObject:v132 forKey:@"assetHDRType"];
                          }

                          if (v131)
                          {
                            v133 = 1;
                            goto LABEL_312;
                          }

LABEL_309:
                          if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"customRenderedValue" changeType:2])
                          {
LABEL_328:
                            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"trashedReason" changeType:2])
                            {
LABEL_332:

                              goto LABEL_333;
                            }

LABEL_330:
                            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"trashedReason")])
                            {
                              v146 = [NSNumber numberWithUnsignedShort:[(CPLAssetChange *)v9 trashedReason]];
                              [v7 setObject:v146 forKey:@"trashReason"];
                            }

                            goto LABEL_332;
                          }

                          v133 = 0;
LABEL_312:
                          if (![(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"customRenderedValue")])
                          {
                            goto LABEL_327;
                          }

                          v134 = [(CPLAssetChange *)v9 customRenderedValue];
                          v135 = [NSNumber numberWithLongLong:v134];
                          if (v135)
                          {
                            if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
                            {
                              v188 = v8;
                              v136 = v10;
                              if (v134 >= 0xB)
                              {
                                v137 = 0;
                              }

                              else
                              {
                                v137 = v134;
                              }

                              v138 = [NSNumber numberWithLongLong:v137];
                              v139 = v135;
                              if (v138 && ([v138 isEqual:v139] & 1) != 0)
                              {

                                [v7 setObject:v139 forKey:@"customRenderedValue"];
                                v140 = objc_opt_class();
                                v141 = v7;
                                v142 = 0;
                              }

                              else
                              {

                                v145 = [NSNumber numberWithLongLong:v137];
                                [v7 setObject:v145 forKey:@"customRenderedValue"];

                                v140 = objc_opt_class();
                                v141 = v7;
                                v142 = v139;
                              }

                              [v141 setEncryptedObject:v142 forKey:@"customRenderedValueEnc" validateClass:v140];

                              v10 = v136;
                              v8 = v188;
                              goto LABEL_326;
                            }

                            v143 = v7;
                            v144 = v135;
                          }

                          else
                          {
                            v143 = v7;
                            v144 = 0;
                          }

                          [v143 setObject:v144 forKey:@"customRenderedValue"];
                          [v7 setEncryptedObject:0 forKey:@"customRenderedValueEnc" validateClass:objc_opt_class()];
LABEL_326:

LABEL_327:
                          if (v133)
                          {
                            goto LABEL_330;
                          }

                          goto LABEL_328;
                        }

                        v129 = v7;
                        v130 = v125;
                      }

                      else
                      {
                        v129 = v7;
                        v130 = 0;
                      }

                      [v129 setObject:v130 forKey:@"timeZoneOffset"];
                      v126 = objc_opt_class();
                      v127 = v7;
                      v128 = 0;
                      goto LABEL_299;
                    }

                    v102 = v7;
                    v103 = v98;
                  }

                  else
                  {
                    v102 = v7;
                    v103 = 0;
                  }

                  [v102 setObject:v103 forKey:@"mediaGroupId"];
                  v99 = objc_opt_class();
                  v100 = v7;
                  v101 = 0;
                  goto LABEL_229;
                }

                v95 = v7;
                v96 = v91;
              }

              else
              {
                v95 = v7;
                v96 = 0;
              }

              [v95 setObject:v96 forKey:@"burstId"];
              v92 = objc_opt_class();
              v93 = v7;
              v94 = 0;
              goto LABEL_216;
            }

            if (v82)
            {
              v82 = 1;
LABEL_189:
              [(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"deletedByUserIdentifier")];
              goto LABEL_190;
            }

LABEL_186:
            if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"deletedByUserIdentifier" changeType:2])
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
            if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"lastViewedDate")])
            {
              v27 = [(CPLAssetChange *)v9 lastViewedDate];
              [v7 setLegacyEncryptedObject:v27 forKey:@"lastViewedDateEnc"];
            }

            goto LABEL_52;
          }

LABEL_47:
          if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"lastViewedDate" changeType:2])
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
          if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"sharedLibrarySharingState")])
          {
            v24 = [NSNumber numberWithLongLong:[(CPLAssetChange *)v9 sharedLibrarySharingState]];
            [v7 setLegacyEncryptedObject:v24 forKey:@"sharedSyncSharingStateEnc"];
          }

          goto LABEL_36;
        }

LABEL_31:
        if ((-[CPLAssetChange isFullRecord](v9, "isFullRecord") & 1) == 0 && ![v12 areObjectsDifferentOnProperty:@"sharedLibrarySharingState" changeType:2])
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
  if (![(CPLAssetChange *)v9 hasChangeType:8])
  {
    goto LABEL_372;
  }

  if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"orientation")])
  {
    v147 = [NSNumber numberWithInteger:[(CPLAssetChange *)v9 orientation]];
    [v7 setObject:v147 forKey:@"orientation"];
  }

  if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"adjustments")])
  {
    v148 = [(CPLAssetChange *)v9 adjustments];
    v149 = [v148 adjustmentType];
    if (v149)
    {
      if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
      {
        [v7 setObject:0 forKey:@"adjustmentType"];
        v150 = objc_opt_class();
        v151 = v7;
        v152 = v149;
LABEL_343:
        [v151 setEncryptedObject:v152 forKey:@"adjustmentTypeEnc" validateClass:v150];

        v155 = [v148 adjustmentCompoundVersion];
        [v7 setObject:v155 forKey:@"adjustmentCompoundVersion"];

        v156 = [v148 adjustmentCreatorCode];
        [v7 setObject:v156 forKey:@"adjustmentCreatorCode"];

        v157 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v148 adjustmentSourceType]);
        [v7 setObject:v157 forKey:@"adjustmentSourceType"];

        v158 = [v148 similarToOriginalAdjustmentsFingerprint];
        [v7 setObject:v158 forKey:@"similarToOriginalAdjustmentsFingerprint"];

        v159 = [v148 otherAdjustmentsFingerprint];
        [v7 setObject:v159 forKey:@"otherAdjustmentsFingerprint"];

        v160 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v148 adjustmentRenderTypes]);
        [v7 setObject:v160 forKey:@"adjustmentRenderType"];

        v161 = [v148 adjustmentTimestamp];
        [v7 setLegacyEncryptedObject:v161 forKey:@"adjustmentTimestampEnc"];

        v162 = [v148 simpleAdjustmentData];
        [v7 setLegacyEncryptedObject:v162 forKey:@"adjustmentSimpleDataEnc"];

        goto LABEL_344;
      }

      v153 = v7;
      v154 = v149;
    }

    else
    {
      v153 = v7;
      v154 = 0;
    }

    [v153 setObject:v154 forKey:@"adjustmentType"];
    v150 = objc_opt_class();
    v151 = v7;
    v152 = 0;
    goto LABEL_343;
  }

LABEL_344:
  if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"duration")])
  {
    v163 = [(CPLAssetChange *)v9 duration];
    v164 = [NSNumber numberWithInteger:v163];
    if (v164)
    {
      if ([(CPLAssetChange *)v9 shouldUseEncryptedPropertiesIfPossibleWithContext:v10])
      {
        if ((v163 & 0x8000000000000000) != 0)
        {
          v165 = 0;
        }

        else
        {
          v165 = v163;
          if (v163 >= 0xF)
          {
            if (v163 >= 0x1E)
            {
              if (v163 > 0xF0)
              {
                v184 = 540;
                if (v163 < 0x21C)
                {
                  v184 = 390;
                }

                if (v163 >= 0x186)
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
                v165 = v163 - v163 % 0x1Eu;
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

          [v7 setObject:v169 forKey:@"duration"];
          v170 = objc_opt_class();
          v171 = v7;
          v172 = 0;
        }

        else
        {

          if ((v163 & 0x8000000000000000) != 0)
          {
            v163 = 0;
          }

          else if (v163 >= 0xF)
          {
            if (v163 >= 0x1E)
            {
              if (v163 > 0xF0)
              {
                v185 = 540;
                if (v163 < 0x21C)
                {
                  v185 = 390;
                }

                if (v163 >= 0x186)
                {
                  v163 = v185;
                }

                else
                {
                  v163 = 240;
                }
              }

              else
              {
                v163 -= v163 % 0x1Eu;
              }
            }

            else
            {
              v163 = 15;
            }
          }

          v173 = [NSNumber numberWithInteger:v163];
          [v7 setObject:v173 forKey:@"duration"];

          v170 = objc_opt_class();
          v171 = v7;
          v172 = v169;
        }

        [v171 setEncryptedObject:v172 forKey:@"durationEnc" validateClass:v170];

        goto LABEL_365;
      }

      v166 = v7;
      v167 = v164;
    }

    else
    {
      v166 = v7;
      v167 = 0;
    }

    [v166 setObject:v167 forKey:@"duration"];
    [v7 setEncryptedObject:0 forKey:@"durationEnc" validateClass:objc_opt_class()];
LABEL_365:
  }

  if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"originalChoice")])
  {
    v174 = [NSNumber numberWithUnsignedInteger:[(CPLAssetChange *)v9 originalChoice]];
    [v7 setObject:v174 forKey:@"originalChoice"];
  }

  if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"adjustedMediaMetaDataType")])
  {
    v175 = [(CPLAssetChange *)v9 adjustedMediaMetaDataType];
    [v7 setObject:v175 forKey:@"adjustedMediaMetaDataStrType"];
  }

  if ([(CPLAssetChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"adjustedMediaMetaData")])
  {
    v176 = [(CPLAssetChange *)v9 adjustedMediaMetaData];
    [v7 setLegacyEncryptedObject:v176 forKey:@"adjustedMediaMetaDataEnc"];
  }

LABEL_372:
  if ([(CPLAssetChange *)v9 hasChangeType:32])
  {
    v177 = v9;
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

        if (([(CPLAssetChange *)v177 shouldApplyPropertiesWithSelector:NSSelectorFromString(*(*(&v196 + 1) + 8 * v181))]& 1) != 0)
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

    if ([(CPLAssetChange *)v177 shouldApplyPropertiesWithSelector:"facesData"])
    {
      v182 = [(CPLAssetChange *)v177 facesData];
      [v7 setLegacyEncryptedObject:v182 forKey:@"faces"];

      v183 = [NSNumber numberWithInteger:[(CPLAssetChange *)v177 facesVersion]];
      [v7 setObject:v183 forKey:@"facesVersion"];

      v177 = [(CPLAssetChange *)v177 facesAdjustmentsFingerprint];
      [v7 setObject:v177 forKey:@"facesAdjustmentsFingerprint"];
      goto LABEL_385;
    }
  }

LABEL_386:
}

@end