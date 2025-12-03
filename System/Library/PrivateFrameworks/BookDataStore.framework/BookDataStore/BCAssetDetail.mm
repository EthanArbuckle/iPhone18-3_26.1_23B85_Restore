@interface BCAssetDetail
- (BOOL)isAudiobook;
- (BOOL)setDifferentBookmarkTime:(double)time;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromAssetDetail:(id)detail withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCAssetDetail

- (id)mutableCopy
{
  v2 = [BCMutableAssetDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetDetail *)self _configureFromAssetDetail:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708DF0();
    }
  }
}

- (void)_configureFromAssetDetail:(id)detail withMergers:(id)mergers
{
  v77 = *MEMORY[0x1E69E9840];
  detailCopy = detail;
  v66.receiver = self;
  v66.super_class = BCAssetDetail;
  [(BCCloudData *)&v66 configureFromCloudData:detailCopy withMergers:mergers];
  assetID = [detailCopy assetID];
  [(NSManagedObject *)self setDifferentString:assetID forKey:@"assetID"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(detailCopy, "isFinished")}];
  [(NSManagedObject *)self setDifferentNumber:v8 forKey:@"isFinished"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(detailCopy, "notFinished")}];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"notFinished"];

  v10 = MEMORY[0x1E696AD98];
  taste = [(BCAssetDetail *)self taste];
  taste2 = [detailCopy taste];
  v13 = taste & 3;
  if ((taste2 & 3) != 0)
  {
    v13 = taste2 & 3;
  }

  v14 = [v10 numberWithShort:v13 | (taste2 | taste) & 4u];
  [(NSManagedObject *)self setDifferentNumber:v14 forKey:@"taste"];

  v15 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(detailCopy, "tasteSyncedToStore")}];
  [(NSManagedObject *)self setDifferentNumber:v15 forKey:@"tasteSyncedToStore"];

  dateFinished = [detailCopy dateFinished];
  [(NSManagedObject *)self setDifferentDate:dateFinished forKey:@"dateFinished"];

  v17 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(detailCopy, "finishedDateKind")}];
  [(NSManagedObject *)self setDifferentNumber:v17 forKey:@"finishedDateKind"];

  lastOpenDate = [detailCopy lastOpenDate];
  [(NSManagedObject *)self setDifferentDate:lastOpenDate forKey:@"lastOpenDate"];

  readingPositionLocationUpdateDate = [detailCopy readingPositionLocationUpdateDate];
  v20 = readingPositionLocationUpdateDate;
  if (readingPositionLocationUpdateDate)
  {
    [readingPositionLocationUpdateDate timeIntervalSinceReferenceDate];
    v22 = v21;
    readingPositionLocationUpdateDate2 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
    [readingPositionLocationUpdateDate2 timeIntervalSinceReferenceDate];
    v25 = v24;

    if (v22 > v25)
    {
      v26 = MEMORY[0x1E696AD98];
      [detailCopy readingProgress];
      v27 = [v26 numberWithFloat:?];
      [(NSManagedObject *)self setDifferentNumber:v27 forKey:@"readingProgress"];

      v28 = MEMORY[0x1E696AD98];
      [detailCopy readingProgressHighWaterMark];
      v29 = [v28 numberWithFloat:?];
      [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"readingProgressHighWaterMark"];

      readingPositionCFIString = [detailCopy readingPositionCFIString];
      [(NSManagedObject *)self setDifferentString:readingPositionCFIString forKey:@"readingPositionCFIString"];

      readingPositionAnnotationVersion = [detailCopy readingPositionAnnotationVersion];
      [(NSManagedObject *)self setDifferentString:readingPositionAnnotationVersion forKey:@"readingPositionAnnotationVersion"];

      readingPositionAssetVersion = [detailCopy readingPositionAssetVersion];
      [(NSManagedObject *)self setDifferentString:readingPositionAssetVersion forKey:@"readingPositionAssetVersion"];

      readingPositionUserData = [detailCopy readingPositionUserData];
      [(NSManagedObject *)self setDifferentValue:readingPositionUserData forKey:@"readingPositionUserData" klass:objc_opt_class()];

      v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(detailCopy, "readingPositionLocationRangeStart")}];
      [(NSManagedObject *)self setDifferentNumber:v34 forKey:@"readingPositionLocationRangeStart"];

      v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(detailCopy, "readingPositionLocationRangeEnd")}];
      [(NSManagedObject *)self setDifferentNumber:v35 forKey:@"readingPositionLocationRangeEnd"];

      v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(detailCopy, "readingPositionAbsolutePhysicalLocation")}];
      [(NSManagedObject *)self setDifferentNumber:v36 forKey:@"readingPositionAbsolutePhysicalLocation"];

      readingPositionStorageUUID = [detailCopy readingPositionStorageUUID];
      [(NSManagedObject *)self setDifferentString:readingPositionStorageUUID forKey:@"readingPositionStorageUUID"];

      [(NSManagedObject *)self setDifferentDate:v20 forKey:@"readingPositionLocationUpdateDate"];
    }
  }

  datePlaybackTimeUpdated = [detailCopy datePlaybackTimeUpdated];
  if (datePlaybackTimeUpdated)
  {
    datePlaybackTimeUpdated2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (!datePlaybackTimeUpdated2)
    {
      goto LABEL_9;
    }

    v40 = datePlaybackTimeUpdated2;
    [datePlaybackTimeUpdated timeIntervalSinceReferenceDate];
    v42 = v41;
    datePlaybackTimeUpdated3 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    [datePlaybackTimeUpdated3 timeIntervalSinceReferenceDate];
    v45 = v44;

    if (v42 <= v45)
    {
      v53 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        assetID2 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated4 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v57 = v56;
        [detailCopy bookmarkTime];
        *buf = 138413314;
        v68 = assetID2;
        v69 = 2112;
        v70 = datePlaybackTimeUpdated4;
        v71 = 2048;
        v72 = v57;
        v73 = 2112;
        v74 = datePlaybackTimeUpdated;
        v75 = 2048;
        v76 = v58;
        _os_log_impl(&dword_1E45E0000, v53, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time, ignoring as my bookmark time is same or newer old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }
    }

    else
    {
LABEL_9:
      [detailCopy bookmarkTime];
      v47 = v46;
      v48 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        assetID3 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated5 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        *buf = 138413314;
        v68 = assetID3;
        v69 = 2112;
        v70 = datePlaybackTimeUpdated5;
        v71 = 2048;
        v72 = v51;
        v73 = 2112;
        v74 = datePlaybackTimeUpdated;
        v75 = 2048;
        v76 = v47;
        _os_log_impl(&dword_1E45E0000, v48, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }

      datePlaybackTimeUpdated6 = [detailCopy datePlaybackTimeUpdated];
      [(NSManagedObject *)self setDifferentDate:datePlaybackTimeUpdated6 forKey:@"datePlaybackTimeUpdated"];

      [(BCAssetDetail *)self setDifferentBookmarkTime:v47];
    }
  }

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v61 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      assetID4 = [(BCAssetDetail *)self assetID];
      v63 = [(BCAssetDetail *)self debugDescription];
      assetID5 = [detailCopy assetID];
      *buf = 138412802;
      v68 = assetID4;
      v69 = 2112;
      v70 = v63;
      v71 = 2112;
      v72 = assetID5;
      _os_log_impl(&dword_1E45E0000, v61, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail configured: %@ %@ from assetDetail:%@\\"", buf, 0x20u);
    }
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (BOOL)setDifferentBookmarkTime:(double)time
{
  [(BCAssetDetail *)self bookmarkTime];
  if (v5 == time || vabdd_f64(time, v5) <= 0.001)
  {
    return 0;
  }

  [(BCAssetDetail *)self setBookmarkTime:time];
  return 1;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v162 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v151.receiver = self;
  v151.super_class = BCAssetDetail;
  [(BCCloudData *)&v151 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v9 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail resolveConflictsFromRecord:withResolvers: record != nil\\"", buf, 2u);
      }
    }

    v10 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = [(BCAssetDetail *)self assetID];
    v12 = [assetID isEqualToString:v10];

    if ((v12 & 1) == 0)
    {
      v13 = BDSCloudKitLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1E4708E24(self, v10, v13);
      }

      [(BCAssetDetail *)self setAssetID:v10];
    }

    v150 = v10;
    modificationDate = [(BCAssetDetail *)self modificationDate];
    if (!modificationDate)
    {
      goto LABEL_12;
    }

    v15 = modificationDate;
    modificationDate2 = [(BCAssetDetail *)self modificationDate];
    [modificationDate2 timeIntervalSinceReferenceDate];
    v18 = v17;
    modificationDate3 = [recordCopy modificationDate];
    [modificationDate3 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v18 >= v21)
    {
      modificationDate4 = [(BCAssetDetail *)self modificationDate];
      if (modificationDate4)
      {
        modificationDate5 = [recordCopy modificationDate];
        [modificationDate5 timeIntervalSinceReferenceDate];
        v112 = v111;
        modificationDate6 = [(BCAssetDetail *)self modificationDate];
        [modificationDate6 timeIntervalSinceReferenceDate];
        v39 = v112 != v114;
      }

      else
      {
        v39 = 0;
      }

      v26 = BDSCloudKitLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        assetID2 = [(BCAssetDetail *)self assetID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate7 = [(BCAssetDetail *)self modificationDate];
        [modificationDate7 timeIntervalSinceReferenceDate];
        v140 = v139;
        modificationDate8 = [recordCopy modificationDate];
        [modificationDate8 timeIntervalSinceReferenceDate];
        v142 = @"newer";
        *buf = 138412802;
        v153 = assetID2;
        if (v140 == v143)
        {
          v142 = @"the same";
        }

        v154 = 2112;
        v155 = recordName;
        v156 = 2114;
        v157 = v142;
        _os_log_impl(&dword_1E45E0000, v26, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my basic properties as my modification date is %{public}@.", buf, 0x20u);
      }
    }

    else
    {
LABEL_12:
      v22 = BDSCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        assetID3 = [(BCAssetDetail *)self assetID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        *buf = 138412546;
        v153 = assetID3;
        v154 = 2112;
        v155 = recordName2;
        _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting general record properties.", buf, 0x16u);
      }

      v26 = [recordCopy objectForKey:@"isFinished"];
      [(NSManagedObject *)self setDifferentNumber:v26 forKey:@"isFinished"];
      v27 = [recordCopy objectForKey:@"notFinished"];
      [(NSManagedObject *)self setDifferentNumber:v27 forKey:@"notFinished"];
      v28 = [recordCopy objectForKey:@"taste"];
      taste = [(BCAssetDetail *)self taste];
      shortValue = [v28 shortValue];
      v31 = taste & 3;
      if ((shortValue & 3) != 0)
      {
        v31 = shortValue & 3;
      }

      v32 = [MEMORY[0x1E696AD98] numberWithShort:v31 | (shortValue | taste) & 4u];
      [(NSManagedObject *)self setDifferentNumber:v32 forKey:@"taste"];

      v33 = [recordCopy objectForKey:@"tasteSyncedToStore"];
      [(NSManagedObject *)self setDifferentNumber:v33 forKey:@"tasteSyncedToStore"];
      v34 = [recordCopy objectForKey:@"dateFinished"];
      [(NSManagedObject *)self setDifferentDate:v34 forKey:@"dateFinished"];
      encryptedValues = [recordCopy encryptedValues];
      v36 = [encryptedValues objectForKeyedSubscript:@"finishedDateKind"];

      [(NSManagedObject *)self setDifferentNumber:v36 forKey:@"finishedDateKind"];
      v37 = [recordCopy objectForKey:@"lastOpenDate"];
      [(NSManagedObject *)self setDifferentDate:v37 forKey:@"lastOpenDate"];
      modificationDate9 = [recordCopy modificationDate];
      [(NSManagedObject *)self setDifferentDate:modificationDate9 forKey:@"modificationDate"];

      v39 = 0;
    }

    v40 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
    v41 = v40;
    if (v40 && ([v40 timeIntervalSinceReferenceDate], v43 = v42, -[BCAssetDetail readingPositionLocationUpdateDate](self, "readingPositionLocationUpdateDate"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "timeIntervalSinceReferenceDate"), v46 = v45, v44, v43 > v46))
    {
      v148 = v39;
      v149 = v41;
      v47 = BDSCloudKitLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        assetID4 = [(BCAssetDetail *)self assetID];
        recordID3 = [recordCopy recordID];
        recordName3 = [recordID3 recordName];
        *buf = 138412546;
        v153 = assetID4;
        v154 = 2112;
        v155 = recordName3;
        _os_log_impl(&dword_1E45E0000, v47, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting reading position properties.", buf, 0x16u);
      }

      v51 = [recordCopy objectForKey:@"readingProgress"];
      [(NSManagedObject *)self setDifferentNumber:v51 forKey:@"readingProgress"];
      v147 = [recordCopy objectForKey:@"readingProgressHighWaterMark"];
      [(NSManagedObject *)self setDifferentNumber:v147 forKey:@"readingProgressHighWaterMark"];
      v146 = [recordCopy objectForKey:@"readingPositionCFIString"];
      [(NSManagedObject *)self setDifferentString:v146 forKey:@"readingPositionCFIString"];
      v145 = [recordCopy objectForKey:@"readingPositionAssetVersion"];
      [(NSManagedObject *)self setDifferentString:v145 forKey:@"readingPositionAssetVersion"];
      v144 = [recordCopy objectForKey:@"readingPositionAnnotationVersion"];
      [(NSManagedObject *)self setDifferentString:v144 forKey:@"readingPositionAnnotationVersion"];
      v52 = [recordCopy objectForKey:@"readingPositionUserData"];
      [(NSManagedObject *)self setDifferentValue:v52 forKey:@"readingPositionUserData" klass:objc_opt_class()];
      v53 = [recordCopy objectForKey:@"readingPositionLocationRangeStart"];
      [(NSManagedObject *)self setDifferentNumber:v53 forKey:@"readingPositionLocationRangeStart"];
      v54 = [recordCopy objectForKey:@"readingPositionLocationRangeEnd"];
      [(NSManagedObject *)self setDifferentNumber:v54 forKey:@"readingPositionLocationRangeEnd"];
      v55 = [recordCopy objectForKey:@"readingPositionAbsolutePhysicalLocation"];
      [(NSManagedObject *)self setDifferentNumber:v55 forKey:@"readingPositionAbsolutePhysicalLocation"];
      v56 = [recordCopy objectForKey:@"readingPositionStorageUUID"];
      [(NSManagedObject *)self setDifferentString:v56 forKey:@"readingPositionStorageUUID"];
      v57 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
      [(NSManagedObject *)self setDifferentDate:v57 forKey:@"readingPositionLocationUpdateDate"];

      v41 = v149;
      v39 = v148;
    }

    else
    {
      readingPositionLocationUpdateDate = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
      if (readingPositionLocationUpdateDate)
      {
        [v41 timeIntervalSinceReferenceDate];
        v60 = v59;
        readingPositionLocationUpdateDate2 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
        [readingPositionLocationUpdateDate2 timeIntervalSinceReferenceDate];
        v63 = v60 != v62;

        v39 |= v63;
      }

      v51 = BDSCloudKitLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        assetID5 = [(BCAssetDetail *)self assetID];
        recordID4 = [recordCopy recordID];
        recordName4 = [recordID4 recordName];
        readingPositionLocationUpdateDate3 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
        [readingPositionLocationUpdateDate3 timeIntervalSinceReferenceDate];
        v69 = v68;
        [v41 timeIntervalSinceReferenceDate];
        v70 = @"newer";
        *buf = 138412802;
        v153 = assetID5;
        if (v69 == v71)
        {
          v70 = @"the same";
        }

        v154 = 2112;
        v155 = recordName4;
        v156 = 2114;
        v157 = v70;
        _os_log_impl(&dword_1E45E0000, v51, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my reading position properties as my reading position update date is %{public}@.", buf, 0x20u);
      }
    }

    v72 = [recordCopy objectForKey:@"datePlaybackTimeUpdated"];
    if (v72)
    {
      datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      if (!datePlaybackTimeUpdated)
      {
        goto LABEL_31;
      }

      v74 = datePlaybackTimeUpdated;
      [v72 timeIntervalSinceReferenceDate];
      v76 = v75;
      datePlaybackTimeUpdated2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [datePlaybackTimeUpdated2 timeIntervalSinceReferenceDate];
      v79 = v78;

      if (v76 > v79)
      {
LABEL_31:
        v80 = BDSCloudKitLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          assetID6 = [(BCAssetDetail *)self assetID];
          recordID5 = [recordCopy recordID];
          recordName5 = [recordID5 recordName];
          *buf = 138412546;
          v153 = assetID6;
          v154 = 2112;
          v155 = recordName5;
          _os_log_impl(&dword_1E45E0000, v80, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@ adopting playback time properties.", buf, 0x16u);
        }

        v84 = [recordCopy objectForKey:@"bookmarkTime"];
        v85 = v84;
        if (v84)
        {
          [v84 doubleValue];
          v87 = v86;
          v88 = BDSCloudKitAudiobookLog();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            assetID7 = [(BCAssetDetail *)self assetID];
            datePlaybackTimeUpdated3 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
            [(BCAssetDetail *)self bookmarkTime];
            *buf = 138413314;
            v153 = assetID7;
            v154 = 2112;
            v155 = datePlaybackTimeUpdated3;
            v156 = 2048;
            v157 = v91;
            v158 = 2112;
            v159 = v72;
            v160 = 2048;
            v161 = v87;
            _os_log_impl(&dword_1E45E0000, v88, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
          }

          [(NSManagedObject *)self setDifferentDate:v72 forKey:@"datePlaybackTimeUpdated"];
          [(BCAssetDetail *)self setDifferentBookmarkTime:v87];
LABEL_58:

          if (v39)
          {
            [(BCCloudData *)self incrementEditGeneration];
          }

          hasChanges = [(BCAssetDetail *)self hasChanges];
          mEMORY[0x1E698F550]2 = [MEMORY[0x1E698F550] shared];
          verboseLoggingEnabled2 = [mEMORY[0x1E698F550]2 verboseLoggingEnabled];

          if (hasChanges)
          {
            if (verboseLoggingEnabled2)
            {
              v128 = BDSCloudKitDevelopmentLog();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                assetID8 = [(BCAssetDetail *)self assetID];
                recordID6 = [recordCopy recordID];
                recordName6 = [recordID6 recordName];
                v132 = [(BCAssetDetail *)self debugDescription];
                *buf = 138412802;
                v153 = assetID8;
                v154 = 2112;
                v155 = recordName6;
                v156 = 2112;
                v157 = v132;
                v133 = "\\BCAssetDetail %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_67:
                _os_log_impl(&dword_1E45E0000, v128, OS_LOG_TYPE_DEFAULT, v133, buf, 0x20u);

                goto LABEL_68;
              }

              goto LABEL_68;
            }
          }

          else if (verboseLoggingEnabled2)
          {
            v128 = BDSCloudKitDevelopmentLog();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              assetID8 = [(BCAssetDetail *)self assetID];
              recordID6 = [recordCopy recordID];
              recordName6 = [recordID6 recordName];
              v132 = [(BCAssetDetail *)self debugDescription];
              *buf = 138412802;
              v153 = assetID8;
              v154 = 2112;
              v155 = recordName6;
              v156 = 2112;
              v157 = v132;
              v133 = "\\BCAssetDetail %@ Resolving: Identical properties from record: %@ %@\\"";
              goto LABEL_67;
            }

LABEL_68:
          }

          v92 = v150;
          goto LABEL_70;
        }

        assetID10 = BDSCloudKitAudiobookLog();
        if (os_log_type_enabled(assetID10, OS_LOG_TYPE_DEFAULT))
        {
          assetID9 = [(BCAssetDetail *)self assetID];
          *buf = 138412290;
          v153 = assetID9;
          _os_log_impl(&dword_1E45E0000, assetID10, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as bookmark time is NULL.", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_58;
      }
    }

    datePlaybackTimeUpdated4 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (datePlaybackTimeUpdated4)
    {
      [v72 timeIntervalSinceReferenceDate];
      v95 = v94;
      datePlaybackTimeUpdated5 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [datePlaybackTimeUpdated5 timeIntervalSinceReferenceDate];
      v98 = v95 != v97;

      v39 |= v98;
    }

    if (!v72)
    {
      v85 = BDSCloudKitAudiobookLog();
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      assetID10 = [(BCAssetDetail *)self assetID];
      recordID7 = [recordCopy recordID];
      recordName7 = [recordID7 recordName];
      datePlaybackTimeUpdated6 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [datePlaybackTimeUpdated6 timeIntervalSinceReferenceDate];
      v120 = v119;
      [0 timeIntervalSinceReferenceDate];
      v121 = @"newer";
      *buf = 138412802;
      v153 = assetID10;
      if (v120 == v122)
      {
        v121 = @"the same";
      }

      v154 = 2112;
      v155 = recordName7;
      v156 = 2114;
      v157 = v121;
      _os_log_impl(&dword_1E45E0000, v85, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my playback time properties as my playback time update date is %{public}@.", buf, 0x20u);

      goto LABEL_53;
    }

    v85 = [recordCopy objectForKey:@"bookmarkTime"];
    v99 = BDSCloudKitAudiobookLog();
    v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
    if (v85)
    {
      if (v100)
      {
        assetID11 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated7 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v104 = v103;
        [v85 doubleValue];
        *buf = 138413314;
        v153 = assetID11;
        v154 = 2112;
        v155 = datePlaybackTimeUpdated7;
        v156 = 2048;
        v157 = v104;
        v158 = 2112;
        v159 = v72;
        v160 = 2048;
        v161 = v105;
        v106 = "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as my bookmark time is newer old:[%@ = %.2f] new:[%@ = %.2f].";
        v107 = v99;
        v108 = 52;
LABEL_56:
        _os_log_impl(&dword_1E45E0000, v107, OS_LOG_TYPE_DEFAULT, v106, buf, v108);
      }
    }

    else if (v100)
    {
      assetID11 = [(BCAssetDetail *)self assetID];
      datePlaybackTimeUpdated7 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [(BCAssetDetail *)self bookmarkTime];
      *buf = 138413058;
      v153 = assetID11;
      v154 = 2112;
      v155 = datePlaybackTimeUpdated7;
      v156 = 2048;
      v157 = v124;
      v158 = 2112;
      v159 = v72;
      v106 = "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as my bookmark time is newer old:[%@ = %.2f] new:[%@ = NULL].";
      v107 = v99;
      v108 = 42;
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v92 = BDSCloudKitLog();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    sub_1E4708ED4(self, v92);
  }

LABEL_70:

  v134 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAudiobook
{
  datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  v3 = datePlaybackTimeUpdated != 0;

  return v3;
}

- (NSString)debugDescription
{
  v30 = MEMORY[0x1E696AEC0];
  assetID = [(BCAssetDetail *)self assetID];
  if ([(BCAssetDetail *)self isFinished])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v28 = v3;
  if ([(BCAssetDetail *)self notFinished])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v27 = v4;
  dateFinished = [(BCAssetDetail *)self dateFinished];
  finishedDateKind = [(BCAssetDetail *)self finishedDateKind];
  lastOpenDate = [(BCAssetDetail *)self lastOpenDate];
  taste = [(BCAssetDetail *)self taste];
  tasteSyncedToStore = [(BCAssetDetail *)self tasteSyncedToStore];
  [(BCAssetDetail *)self readingProgress];
  v6 = v5;
  [(BCAssetDetail *)self readingProgressHighWaterMark];
  v8 = v7;
  readingPositionCFIString = [(BCAssetDetail *)self readingPositionCFIString];
  readingPositionAnnotationVersion = [(BCAssetDetail *)self readingPositionAnnotationVersion];
  readingPositionAssetVersion = [(BCAssetDetail *)self readingPositionAssetVersion];
  readingPositionUserData = [(BCAssetDetail *)self readingPositionUserData];
  readingPositionLocationRangeStart = [(BCAssetDetail *)self readingPositionLocationRangeStart];
  readingPositionLocationRangeEnd = [(BCAssetDetail *)self readingPositionLocationRangeEnd];
  readingPositionAbsolutePhysicalLocation = [(BCAssetDetail *)self readingPositionAbsolutePhysicalLocation];
  readingPositionStorageUUID = [(BCAssetDetail *)self readingPositionStorageUUID];
  readingPositionLocationUpdateDate = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
  datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  [(BCAssetDetail *)self bookmarkTime];
  v18 = [v30 stringWithFormat:@"BCAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", assetID, v28, v27, dateFinished, finishedDateKind, lastOpenDate, taste, tasteSyncedToStore, *&v6, *&v8, readingPositionCFIString, readingPositionAnnotationVersion, readingPositionAssetVersion, readingPositionUserData, readingPositionLocationRangeStart, readingPositionLocationRangeEnd, readingPositionAbsolutePhysicalLocation, readingPositionStorageUUID, readingPositionLocationUpdateDate, datePlaybackTimeUpdated, v17];

  return v18;
}

@end