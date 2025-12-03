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
  v3 = [BCMutableAssetDetail alloc];

  return [(BCMutableAssetDetail *)v3 initWithCloudData:self];
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
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C011C();
    }
  }
}

- (void)_configureFromAssetDetail:(id)detail withMergers:(id)mergers
{
  detailCopy = detail;
  v62.receiver = self;
  v62.super_class = BCAssetDetail;
  [(BCCloudData *)&v62 configureFromCloudData:detailCopy withMergers:mergers];
  assetID = [detailCopy assetID];
  [(BCAssetDetail *)self setDifferentString:assetID forKey:@"assetID"];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy isFinished]);
  [(BCAssetDetail *)self setDifferentNumber:v8 forKey:@"isFinished"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [detailCopy notFinished]);
  [(BCAssetDetail *)self setDifferentNumber:v9 forKey:@"notFinished"];

  taste = [(BCAssetDetail *)self taste];
  taste2 = [detailCopy taste];
  v12 = taste & 3;
  if ((taste2 & 3) != 0)
  {
    v12 = taste2 & 3;
  }

  v13 = [NSNumber numberWithShort:v12 | (taste2 | taste) & 4u];
  [(BCAssetDetail *)self setDifferentNumber:v13 forKey:@"taste"];

  v14 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [detailCopy tasteSyncedToStore]);
  [(BCAssetDetail *)self setDifferentNumber:v14 forKey:@"tasteSyncedToStore"];

  dateFinished = [detailCopy dateFinished];
  [(BCAssetDetail *)self setDifferentDate:dateFinished forKey:@"dateFinished"];

  v16 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [detailCopy finishedDateKind]);
  [(BCAssetDetail *)self setDifferentNumber:v16 forKey:@"finishedDateKind"];

  lastOpenDate = [detailCopy lastOpenDate];
  [(BCAssetDetail *)self setDifferentDate:lastOpenDate forKey:@"lastOpenDate"];

  readingPositionLocationUpdateDate = [detailCopy readingPositionLocationUpdateDate];
  v19 = readingPositionLocationUpdateDate;
  if (readingPositionLocationUpdateDate)
  {
    [readingPositionLocationUpdateDate timeIntervalSinceReferenceDate];
    v21 = v20;
    readingPositionLocationUpdateDate2 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
    [readingPositionLocationUpdateDate2 timeIntervalSinceReferenceDate];
    v24 = v23;

    if (v21 > v24)
    {
      [detailCopy readingProgress];
      v25 = [NSNumber numberWithFloat:?];
      [(BCAssetDetail *)self setDifferentNumber:v25 forKey:@"readingProgress"];

      [detailCopy readingProgressHighWaterMark];
      v26 = [NSNumber numberWithFloat:?];
      [(BCAssetDetail *)self setDifferentNumber:v26 forKey:@"readingProgressHighWaterMark"];

      readingPositionCFIString = [detailCopy readingPositionCFIString];
      [(BCAssetDetail *)self setDifferentString:readingPositionCFIString forKey:@"readingPositionCFIString"];

      readingPositionAnnotationVersion = [detailCopy readingPositionAnnotationVersion];
      [(BCAssetDetail *)self setDifferentString:readingPositionAnnotationVersion forKey:@"readingPositionAnnotationVersion"];

      readingPositionAssetVersion = [detailCopy readingPositionAssetVersion];
      [(BCAssetDetail *)self setDifferentString:readingPositionAssetVersion forKey:@"readingPositionAssetVersion"];

      readingPositionUserData = [detailCopy readingPositionUserData];
      [(BCAssetDetail *)self setDifferentValue:readingPositionUserData forKey:@"readingPositionUserData" klass:objc_opt_class()];

      v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [detailCopy readingPositionLocationRangeStart]);
      [(BCAssetDetail *)self setDifferentNumber:v31 forKey:@"readingPositionLocationRangeStart"];

      v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [detailCopy readingPositionLocationRangeEnd]);
      [(BCAssetDetail *)self setDifferentNumber:v32 forKey:@"readingPositionLocationRangeEnd"];

      v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [detailCopy readingPositionAbsolutePhysicalLocation]);
      [(BCAssetDetail *)self setDifferentNumber:v33 forKey:@"readingPositionAbsolutePhysicalLocation"];

      readingPositionStorageUUID = [detailCopy readingPositionStorageUUID];
      [(BCAssetDetail *)self setDifferentString:readingPositionStorageUUID forKey:@"readingPositionStorageUUID"];

      [(BCAssetDetail *)self setDifferentDate:v19 forKey:@"readingPositionLocationUpdateDate"];
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

    v37 = datePlaybackTimeUpdated2;
    [datePlaybackTimeUpdated timeIntervalSinceReferenceDate];
    v39 = v38;
    datePlaybackTimeUpdated3 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    [datePlaybackTimeUpdated3 timeIntervalSinceReferenceDate];
    v42 = v41;

    if (v39 <= v42)
    {
      v50 = sub_10000DC90();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        assetID2 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated4 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v54 = v53;
        [detailCopy bookmarkTime];
        *buf = 138413314;
        v64 = assetID2;
        v65 = 2112;
        v66 = datePlaybackTimeUpdated4;
        v67 = 2048;
        v68 = v54;
        v69 = 2112;
        v70 = datePlaybackTimeUpdated;
        v71 = 2048;
        v72 = v55;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time, ignoring as my bookmark time is same or newer old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }
    }

    else
    {
LABEL_9:
      [detailCopy bookmarkTime];
      v44 = v43;
      v45 = sub_10000DC90();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        assetID3 = [(BCAssetDetail *)self assetID];
        datePlaybackTimeUpdated5 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        *buf = 138413314;
        v64 = assetID3;
        v65 = 2112;
        v66 = datePlaybackTimeUpdated5;
        v67 = 2048;
        v68 = v48;
        v69 = 2112;
        v70 = datePlaybackTimeUpdated;
        v71 = 2048;
        v72 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }

      datePlaybackTimeUpdated6 = [detailCopy datePlaybackTimeUpdated];
      [(BCAssetDetail *)self setDifferentDate:datePlaybackTimeUpdated6 forKey:@"datePlaybackTimeUpdated"];

      [(BCAssetDetail *)self setDifferentBookmarkTime:v44];
    }
  }

  v56 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v56 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v58 = sub_10000DB80();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      assetID4 = [(BCAssetDetail *)self assetID];
      v60 = [(BCAssetDetail *)self debugDescription];
      assetID5 = [detailCopy assetID];
      *buf = 138412802;
      v64 = assetID4;
      v65 = 2112;
      v66 = v60;
      v67 = 2112;
      v68 = assetID5;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail configured: %@ %@ from assetDetail:%@\\"", buf, 0x20u);
    }
  }
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
  recordCopy = record;
  v150.receiver = self;
  v150.super_class = BCAssetDetail;
  [(BCCloudData *)&v150 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v7 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v9 = sub_10000DB80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail resolveConflictsFromRecord:withResolvers: record != nil\\"", buf, 2u);
      }
    }

    v10 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetID = [(BCAssetDetail *)self assetID];
    v12 = [assetID isEqualToString:v10];

    if ((v12 & 1) == 0)
    {
      v13 = sub_100002660();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0150(self, v10, v13);
      }

      [(BCAssetDetail *)self setAssetID:v10];
    }

    v149 = v10;
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

      v26 = sub_100002660();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        assetID2 = [(BCAssetDetail *)self assetID];
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        modificationDate7 = [(BCAssetDetail *)self modificationDate];
        [modificationDate7 timeIntervalSinceReferenceDate];
        v139 = v138;
        modificationDate8 = [recordCopy modificationDate];
        [modificationDate8 timeIntervalSinceReferenceDate];
        v141 = @"newer";
        *buf = 138412802;
        v152 = assetID2;
        if (v139 == v142)
        {
          v141 = @"the same";
        }

        v153 = 2112;
        v154 = recordName;
        v155 = 2114;
        v156 = v141;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my basic properties as my modification date is %{public}@.", buf, 0x20u);
      }
    }

    else
    {
LABEL_12:
      v22 = sub_100002660();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        assetID3 = [(BCAssetDetail *)self assetID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        *buf = 138412546;
        v152 = assetID3;
        v153 = 2112;
        v154 = recordName2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting general record properties.", buf, 0x16u);
      }

      v26 = [recordCopy objectForKey:@"isFinished"];
      [(BCAssetDetail *)self setDifferentNumber:v26 forKey:@"isFinished"];
      v27 = [recordCopy objectForKey:@"notFinished"];
      [(BCAssetDetail *)self setDifferentNumber:v27 forKey:@"notFinished"];
      v28 = [recordCopy objectForKey:@"taste"];
      taste = [(BCAssetDetail *)self taste];
      shortValue = [v28 shortValue];
      v31 = taste & 3;
      if ((shortValue & 3) != 0)
      {
        v31 = shortValue & 3;
      }

      v32 = [NSNumber numberWithShort:v31 | (shortValue | taste) & 4u];
      [(BCAssetDetail *)self setDifferentNumber:v32 forKey:@"taste"];

      v33 = [recordCopy objectForKey:@"tasteSyncedToStore"];
      [(BCAssetDetail *)self setDifferentNumber:v33 forKey:@"tasteSyncedToStore"];
      v34 = [recordCopy objectForKey:@"dateFinished"];
      [(BCAssetDetail *)self setDifferentDate:v34 forKey:@"dateFinished"];
      encryptedValues = [recordCopy encryptedValues];
      v36 = [encryptedValues objectForKeyedSubscript:@"finishedDateKind"];

      [(BCAssetDetail *)self setDifferentNumber:v36 forKey:@"finishedDateKind"];
      v37 = [recordCopy objectForKey:@"lastOpenDate"];
      [(BCAssetDetail *)self setDifferentDate:v37 forKey:@"lastOpenDate"];
      modificationDate9 = [recordCopy modificationDate];
      [(BCAssetDetail *)self setDifferentDate:modificationDate9 forKey:@"modificationDate"];

      v39 = 0;
    }

    v40 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
    v41 = v40;
    if (v40 && ([v40 timeIntervalSinceReferenceDate], v43 = v42, -[BCAssetDetail readingPositionLocationUpdateDate](self, "readingPositionLocationUpdateDate"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "timeIntervalSinceReferenceDate"), v46 = v45, v44, v43 > v46))
    {
      v147 = v39;
      v148 = v41;
      v47 = sub_100002660();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        assetID4 = [(BCAssetDetail *)self assetID];
        recordID3 = [recordCopy recordID];
        recordName3 = [recordID3 recordName];
        *buf = 138412546;
        v152 = assetID4;
        v153 = 2112;
        v154 = recordName3;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting reading position properties.", buf, 0x16u);
      }

      v51 = [recordCopy objectForKey:@"readingProgress"];
      [(BCAssetDetail *)self setDifferentNumber:v51 forKey:@"readingProgress"];
      v146 = [recordCopy objectForKey:@"readingProgressHighWaterMark"];
      [(BCAssetDetail *)self setDifferentNumber:v146 forKey:@"readingProgressHighWaterMark"];
      v145 = [recordCopy objectForKey:@"readingPositionCFIString"];
      [(BCAssetDetail *)self setDifferentString:v145 forKey:@"readingPositionCFIString"];
      v144 = [recordCopy objectForKey:@"readingPositionAssetVersion"];
      [(BCAssetDetail *)self setDifferentString:v144 forKey:@"readingPositionAssetVersion"];
      v143 = [recordCopy objectForKey:@"readingPositionAnnotationVersion"];
      [(BCAssetDetail *)self setDifferentString:v143 forKey:@"readingPositionAnnotationVersion"];
      v52 = [recordCopy objectForKey:@"readingPositionUserData"];
      [(BCAssetDetail *)self setDifferentValue:v52 forKey:@"readingPositionUserData" klass:objc_opt_class()];
      v53 = [recordCopy objectForKey:@"readingPositionLocationRangeStart"];
      [(BCAssetDetail *)self setDifferentNumber:v53 forKey:@"readingPositionLocationRangeStart"];
      v54 = [recordCopy objectForKey:@"readingPositionLocationRangeEnd"];
      [(BCAssetDetail *)self setDifferentNumber:v54 forKey:@"readingPositionLocationRangeEnd"];
      v55 = [recordCopy objectForKey:@"readingPositionAbsolutePhysicalLocation"];
      [(BCAssetDetail *)self setDifferentNumber:v55 forKey:@"readingPositionAbsolutePhysicalLocation"];
      v56 = [recordCopy objectForKey:@"readingPositionStorageUUID"];
      [(BCAssetDetail *)self setDifferentString:v56 forKey:@"readingPositionStorageUUID"];
      v57 = [recordCopy objectForKey:@"readingPositionLocationUpdateDate"];
      [(BCAssetDetail *)self setDifferentDate:v57 forKey:@"readingPositionLocationUpdateDate"];

      v41 = v148;
      v39 = v147;
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

      v51 = sub_100002660();
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
        v152 = assetID5;
        if (v69 == v71)
        {
          v70 = @"the same";
        }

        v153 = 2112;
        v154 = recordName4;
        v155 = 2114;
        v156 = v70;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my reading position properties as my reading position update date is %{public}@.", buf, 0x20u);
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
        v80 = sub_100002660();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          assetID6 = [(BCAssetDetail *)self assetID];
          recordID5 = [recordCopy recordID];
          recordName5 = [recordID5 recordName];
          *buf = 138412546;
          v152 = assetID6;
          v153 = 2112;
          v154 = recordName5;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@ adopting playback time properties.", buf, 0x16u);
        }

        v84 = [recordCopy objectForKey:@"bookmarkTime"];
        v85 = v84;
        if (v84)
        {
          [v84 doubleValue];
          v87 = v86;
          v88 = sub_10000DC90();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            assetID7 = [(BCAssetDetail *)self assetID];
            datePlaybackTimeUpdated3 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
            [(BCAssetDetail *)self bookmarkTime];
            *buf = 138413314;
            v152 = assetID7;
            v153 = 2112;
            v154 = datePlaybackTimeUpdated3;
            v155 = 2048;
            v156 = v91;
            v157 = 2112;
            v158 = v72;
            v159 = 2048;
            v160 = v87;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
          }

          [(BCAssetDetail *)self setDifferentDate:v72 forKey:@"datePlaybackTimeUpdated"];
          [(BCAssetDetail *)self setDifferentBookmarkTime:v87];
LABEL_58:

          if (v39)
          {
            [(BCCloudData *)self incrementEditGeneration];
          }

          hasChanges = [(BCAssetDetail *)self hasChanges];
          v126 = +[BULogUtilities shared];
          verboseLoggingEnabled2 = [v126 verboseLoggingEnabled];

          if (hasChanges)
          {
            if (verboseLoggingEnabled2)
            {
              v128 = sub_10000DB80();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                assetID8 = [(BCAssetDetail *)self assetID];
                recordID6 = [recordCopy recordID];
                recordName6 = [recordID6 recordName];
                v132 = [(BCAssetDetail *)self debugDescription];
                *buf = 138412802;
                v152 = assetID8;
                v153 = 2112;
                v154 = recordName6;
                v155 = 2112;
                v156 = v132;
                v133 = "\\BCAssetDetail %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_67:
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, v133, buf, 0x20u);

                goto LABEL_68;
              }

              goto LABEL_68;
            }
          }

          else if (verboseLoggingEnabled2)
          {
            v128 = sub_10000DB80();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              assetID8 = [(BCAssetDetail *)self assetID];
              recordID6 = [recordCopy recordID];
              recordName6 = [recordID6 recordName];
              v132 = [(BCAssetDetail *)self debugDescription];
              *buf = 138412802;
              v152 = assetID8;
              v153 = 2112;
              v154 = recordName6;
              v155 = 2112;
              v156 = v132;
              v133 = "\\BCAssetDetail %@ Resolving: Identical properties from record: %@ %@\\"";
              goto LABEL_67;
            }

LABEL_68:
          }

          v92 = v149;
          goto LABEL_70;
        }

        assetID10 = sub_10000DC90();
        if (os_log_type_enabled(assetID10, OS_LOG_TYPE_DEFAULT))
        {
          assetID9 = [(BCAssetDetail *)self assetID];
          *buf = 138412290;
          v152 = assetID9;
          _os_log_impl(&_mh_execute_header, assetID10, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as bookmark time is NULL.", buf, 0xCu);
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
      v85 = sub_10000DC90();
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
      v152 = assetID10;
      if (v120 == v122)
      {
        v121 = @"the same";
      }

      v153 = 2112;
      v154 = recordName7;
      v155 = 2114;
      v156 = v121;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my playback time properties as my playback time update date is %{public}@.", buf, 0x20u);

      goto LABEL_53;
    }

    v85 = [recordCopy objectForKey:@"bookmarkTime"];
    v99 = sub_10000DC90();
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
        v152 = assetID11;
        v153 = 2112;
        v154 = datePlaybackTimeUpdated7;
        v155 = 2048;
        v156 = v104;
        v157 = 2112;
        v158 = v72;
        v159 = 2048;
        v160 = v105;
        v106 = "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as my bookmark time is newer old:[%@ = %.2f] new:[%@ = %.2f].";
        v107 = v99;
        v108 = 52;
LABEL_56:
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, v106, buf, v108);
      }
    }

    else if (v100)
    {
      assetID11 = [(BCAssetDetail *)self assetID];
      datePlaybackTimeUpdated7 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [(BCAssetDetail *)self bookmarkTime];
      *buf = 138413058;
      v152 = assetID11;
      v153 = 2112;
      v154 = datePlaybackTimeUpdated7;
      v155 = 2048;
      v156 = v124;
      v157 = 2112;
      v158 = v72;
      v106 = "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as my bookmark time is newer old:[%@ = %.2f] new:[%@ = NULL].";
      v107 = v99;
      v108 = 42;
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v92 = sub_100002660();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0200(self, v92);
  }

LABEL_70:
}

- (BOOL)isAudiobook
{
  datePlaybackTimeUpdated = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  v3 = datePlaybackTimeUpdated != 0;

  return v3;
}

- (NSString)debugDescription
{
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
  v18 = [NSString stringWithFormat:@"BCAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", assetID, v28, v27, dateFinished, finishedDateKind, lastOpenDate, taste, tasteSyncedToStore, *&v6, *&v8, readingPositionCFIString, readingPositionAnnotationVersion, readingPositionAssetVersion, readingPositionUserData, readingPositionLocationRangeStart, readingPositionLocationRangeEnd, readingPositionAbsolutePhysicalLocation, readingPositionStorageUUID, readingPositionLocationUpdateDate, datePlaybackTimeUpdated, v17];

  return v18;
}

@end