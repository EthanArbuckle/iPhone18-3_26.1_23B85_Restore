@interface BCAssetDetail
- (BOOL)isAudiobook;
- (BOOL)setDifferentBookmarkTime:(double)a3;
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromAssetDetail:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCAssetDetail

- (id)mutableCopy
{
  v3 = [BCMutableAssetDetail alloc];

  return [(BCMutableAssetDetail *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetDetail *)self _configureFromAssetDetail:v6 withMergers:v5];
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

- (void)_configureFromAssetDetail:(id)a3 withMergers:(id)a4
{
  v6 = a3;
  v62.receiver = self;
  v62.super_class = BCAssetDetail;
  [(BCCloudData *)&v62 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 assetID];
  [(BCAssetDetail *)self setDifferentString:v7 forKey:@"assetID"];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isFinished]);
  [(BCAssetDetail *)self setDifferentNumber:v8 forKey:@"isFinished"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 notFinished]);
  [(BCAssetDetail *)self setDifferentNumber:v9 forKey:@"notFinished"];

  v10 = [(BCAssetDetail *)self taste];
  v11 = [v6 taste];
  v12 = v10 & 3;
  if ((v11 & 3) != 0)
  {
    v12 = v11 & 3;
  }

  v13 = [NSNumber numberWithShort:v12 | (v11 | v10) & 4u];
  [(BCAssetDetail *)self setDifferentNumber:v13 forKey:@"taste"];

  v14 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v6 tasteSyncedToStore]);
  [(BCAssetDetail *)self setDifferentNumber:v14 forKey:@"tasteSyncedToStore"];

  v15 = [v6 dateFinished];
  [(BCAssetDetail *)self setDifferentDate:v15 forKey:@"dateFinished"];

  v16 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v6 finishedDateKind]);
  [(BCAssetDetail *)self setDifferentNumber:v16 forKey:@"finishedDateKind"];

  v17 = [v6 lastOpenDate];
  [(BCAssetDetail *)self setDifferentDate:v17 forKey:@"lastOpenDate"];

  v18 = [v6 readingPositionLocationUpdateDate];
  v19 = v18;
  if (v18)
  {
    [v18 timeIntervalSinceReferenceDate];
    v21 = v20;
    v22 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    if (v21 > v24)
    {
      [v6 readingProgress];
      v25 = [NSNumber numberWithFloat:?];
      [(BCAssetDetail *)self setDifferentNumber:v25 forKey:@"readingProgress"];

      [v6 readingProgressHighWaterMark];
      v26 = [NSNumber numberWithFloat:?];
      [(BCAssetDetail *)self setDifferentNumber:v26 forKey:@"readingProgressHighWaterMark"];

      v27 = [v6 readingPositionCFIString];
      [(BCAssetDetail *)self setDifferentString:v27 forKey:@"readingPositionCFIString"];

      v28 = [v6 readingPositionAnnotationVersion];
      [(BCAssetDetail *)self setDifferentString:v28 forKey:@"readingPositionAnnotationVersion"];

      v29 = [v6 readingPositionAssetVersion];
      [(BCAssetDetail *)self setDifferentString:v29 forKey:@"readingPositionAssetVersion"];

      v30 = [v6 readingPositionUserData];
      [(BCAssetDetail *)self setDifferentValue:v30 forKey:@"readingPositionUserData" klass:objc_opt_class()];

      v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 readingPositionLocationRangeStart]);
      [(BCAssetDetail *)self setDifferentNumber:v31 forKey:@"readingPositionLocationRangeStart"];

      v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 readingPositionLocationRangeEnd]);
      [(BCAssetDetail *)self setDifferentNumber:v32 forKey:@"readingPositionLocationRangeEnd"];

      v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 readingPositionAbsolutePhysicalLocation]);
      [(BCAssetDetail *)self setDifferentNumber:v33 forKey:@"readingPositionAbsolutePhysicalLocation"];

      v34 = [v6 readingPositionStorageUUID];
      [(BCAssetDetail *)self setDifferentString:v34 forKey:@"readingPositionStorageUUID"];

      [(BCAssetDetail *)self setDifferentDate:v19 forKey:@"readingPositionLocationUpdateDate"];
    }
  }

  v35 = [v6 datePlaybackTimeUpdated];
  if (v35)
  {
    v36 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (!v36)
    {
      goto LABEL_9;
    }

    v37 = v36;
    [v35 timeIntervalSinceReferenceDate];
    v39 = v38;
    v40 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    [v40 timeIntervalSinceReferenceDate];
    v42 = v41;

    if (v39 <= v42)
    {
      v50 = sub_10000DC90();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [(BCAssetDetail *)self assetID];
        v52 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v54 = v53;
        [v6 bookmarkTime];
        *buf = 138413314;
        v64 = v51;
        v65 = 2112;
        v66 = v52;
        v67 = 2048;
        v68 = v54;
        v69 = 2112;
        v70 = v35;
        v71 = 2048;
        v72 = v55;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time, ignoring as my bookmark time is same or newer old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }
    }

    else
    {
LABEL_9:
      [v6 bookmarkTime];
      v44 = v43;
      v45 = sub_10000DC90();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [(BCAssetDetail *)self assetID];
        v47 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        *buf = 138413314;
        v64 = v46;
        v65 = 2112;
        v66 = v47;
        v67 = 2048;
        v68 = v48;
        v69 = 2112;
        v70 = v35;
        v71 = 2048;
        v72 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }

      v49 = [v6 datePlaybackTimeUpdated];
      [(BCAssetDetail *)self setDifferentDate:v49 forKey:@"datePlaybackTimeUpdated"];

      [(BCAssetDetail *)self setDifferentBookmarkTime:v44];
    }
  }

  v56 = +[BULogUtilities shared];
  v57 = [v56 verboseLoggingEnabled];

  if (v57)
  {
    v58 = sub_10000DB80();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [(BCAssetDetail *)self assetID];
      v60 = [(BCAssetDetail *)self debugDescription];
      v61 = [v6 assetID];
      *buf = 138412802;
      v64 = v59;
      v65 = 2112;
      v66 = v60;
      v67 = 2112;
      v68 = v61;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail configured: %@ %@ from assetDetail:%@\\"", buf, 0x20u);
    }
  }
}

- (BOOL)setDifferentBookmarkTime:(double)a3
{
  [(BCAssetDetail *)self bookmarkTime];
  if (v5 == a3 || vabdd_f64(a3, v5) <= 0.001)
  {
    return 0;
  }

  [(BCAssetDetail *)self setBookmarkTime:a3];
  return 1;
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v6 = a3;
  v150.receiver = self;
  v150.super_class = BCAssetDetail;
  [(BCCloudData *)&v150 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = +[BULogUtilities shared];
    v8 = [v7 verboseLoggingEnabled];

    if (v8)
    {
      v9 = sub_10000DB80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail resolveConflictsFromRecord:withResolvers: record != nil\\"", buf, 2u);
      }
    }

    v10 = [BCCloudData localIdentifierFromRecord:v6];
    v11 = [(BCAssetDetail *)self assetID];
    v12 = [v11 isEqualToString:v10];

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
    v14 = [(BCAssetDetail *)self modificationDate];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v14;
    v16 = [(BCAssetDetail *)self modificationDate];
    [v16 timeIntervalSinceReferenceDate];
    v18 = v17;
    v19 = [v6 modificationDate];
    [v19 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v18 >= v21)
    {
      v109 = [(BCAssetDetail *)self modificationDate];
      if (v109)
      {
        v110 = [v6 modificationDate];
        [v110 timeIntervalSinceReferenceDate];
        v112 = v111;
        v113 = [(BCAssetDetail *)self modificationDate];
        [v113 timeIntervalSinceReferenceDate];
        v39 = v112 != v114;
      }

      else
      {
        v39 = 0;
      }

      v26 = sub_100002660();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v134 = [(BCAssetDetail *)self assetID];
        v135 = [v6 recordID];
        v136 = [v135 recordName];
        v137 = [(BCAssetDetail *)self modificationDate];
        [v137 timeIntervalSinceReferenceDate];
        v139 = v138;
        v140 = [v6 modificationDate];
        [v140 timeIntervalSinceReferenceDate];
        v141 = @"newer";
        *buf = 138412802;
        v152 = v134;
        if (v139 == v142)
        {
          v141 = @"the same";
        }

        v153 = 2112;
        v154 = v136;
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
        v23 = [(BCAssetDetail *)self assetID];
        v24 = [v6 recordID];
        v25 = [v24 recordName];
        *buf = 138412546;
        v152 = v23;
        v153 = 2112;
        v154 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting general record properties.", buf, 0x16u);
      }

      v26 = [v6 objectForKey:@"isFinished"];
      [(BCAssetDetail *)self setDifferentNumber:v26 forKey:@"isFinished"];
      v27 = [v6 objectForKey:@"notFinished"];
      [(BCAssetDetail *)self setDifferentNumber:v27 forKey:@"notFinished"];
      v28 = [v6 objectForKey:@"taste"];
      v29 = [(BCAssetDetail *)self taste];
      v30 = [v28 shortValue];
      v31 = v29 & 3;
      if ((v30 & 3) != 0)
      {
        v31 = v30 & 3;
      }

      v32 = [NSNumber numberWithShort:v31 | (v30 | v29) & 4u];
      [(BCAssetDetail *)self setDifferentNumber:v32 forKey:@"taste"];

      v33 = [v6 objectForKey:@"tasteSyncedToStore"];
      [(BCAssetDetail *)self setDifferentNumber:v33 forKey:@"tasteSyncedToStore"];
      v34 = [v6 objectForKey:@"dateFinished"];
      [(BCAssetDetail *)self setDifferentDate:v34 forKey:@"dateFinished"];
      v35 = [v6 encryptedValues];
      v36 = [v35 objectForKeyedSubscript:@"finishedDateKind"];

      [(BCAssetDetail *)self setDifferentNumber:v36 forKey:@"finishedDateKind"];
      v37 = [v6 objectForKey:@"lastOpenDate"];
      [(BCAssetDetail *)self setDifferentDate:v37 forKey:@"lastOpenDate"];
      v38 = [v6 modificationDate];
      [(BCAssetDetail *)self setDifferentDate:v38 forKey:@"modificationDate"];

      v39 = 0;
    }

    v40 = [v6 objectForKey:@"readingPositionLocationUpdateDate"];
    v41 = v40;
    if (v40 && ([v40 timeIntervalSinceReferenceDate], v43 = v42, -[BCAssetDetail readingPositionLocationUpdateDate](self, "readingPositionLocationUpdateDate"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "timeIntervalSinceReferenceDate"), v46 = v45, v44, v43 > v46))
    {
      v147 = v39;
      v148 = v41;
      v47 = sub_100002660();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [(BCAssetDetail *)self assetID];
        v49 = [v6 recordID];
        v50 = [v49 recordName];
        *buf = 138412546;
        v152 = v48;
        v153 = 2112;
        v154 = v50;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting reading position properties.", buf, 0x16u);
      }

      v51 = [v6 objectForKey:@"readingProgress"];
      [(BCAssetDetail *)self setDifferentNumber:v51 forKey:@"readingProgress"];
      v146 = [v6 objectForKey:@"readingProgressHighWaterMark"];
      [(BCAssetDetail *)self setDifferentNumber:v146 forKey:@"readingProgressHighWaterMark"];
      v145 = [v6 objectForKey:@"readingPositionCFIString"];
      [(BCAssetDetail *)self setDifferentString:v145 forKey:@"readingPositionCFIString"];
      v144 = [v6 objectForKey:@"readingPositionAssetVersion"];
      [(BCAssetDetail *)self setDifferentString:v144 forKey:@"readingPositionAssetVersion"];
      v143 = [v6 objectForKey:@"readingPositionAnnotationVersion"];
      [(BCAssetDetail *)self setDifferentString:v143 forKey:@"readingPositionAnnotationVersion"];
      v52 = [v6 objectForKey:@"readingPositionUserData"];
      [(BCAssetDetail *)self setDifferentValue:v52 forKey:@"readingPositionUserData" klass:objc_opt_class()];
      v53 = [v6 objectForKey:@"readingPositionLocationRangeStart"];
      [(BCAssetDetail *)self setDifferentNumber:v53 forKey:@"readingPositionLocationRangeStart"];
      v54 = [v6 objectForKey:@"readingPositionLocationRangeEnd"];
      [(BCAssetDetail *)self setDifferentNumber:v54 forKey:@"readingPositionLocationRangeEnd"];
      v55 = [v6 objectForKey:@"readingPositionAbsolutePhysicalLocation"];
      [(BCAssetDetail *)self setDifferentNumber:v55 forKey:@"readingPositionAbsolutePhysicalLocation"];
      v56 = [v6 objectForKey:@"readingPositionStorageUUID"];
      [(BCAssetDetail *)self setDifferentString:v56 forKey:@"readingPositionStorageUUID"];
      v57 = [v6 objectForKey:@"readingPositionLocationUpdateDate"];
      [(BCAssetDetail *)self setDifferentDate:v57 forKey:@"readingPositionLocationUpdateDate"];

      v41 = v148;
      v39 = v147;
    }

    else
    {
      v58 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
      if (v58)
      {
        [v41 timeIntervalSinceReferenceDate];
        v60 = v59;
        v61 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
        [v61 timeIntervalSinceReferenceDate];
        v63 = v60 != v62;

        v39 |= v63;
      }

      v51 = sub_100002660();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v64 = [(BCAssetDetail *)self assetID];
        v65 = [v6 recordID];
        v66 = [v65 recordName];
        v67 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
        [v67 timeIntervalSinceReferenceDate];
        v69 = v68;
        [v41 timeIntervalSinceReferenceDate];
        v70 = @"newer";
        *buf = 138412802;
        v152 = v64;
        if (v69 == v71)
        {
          v70 = @"the same";
        }

        v153 = 2112;
        v154 = v66;
        v155 = 2114;
        v156 = v70;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my reading position properties as my reading position update date is %{public}@.", buf, 0x20u);
      }
    }

    v72 = [v6 objectForKey:@"datePlaybackTimeUpdated"];
    if (v72)
    {
      v73 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      if (!v73)
      {
        goto LABEL_31;
      }

      v74 = v73;
      [v72 timeIntervalSinceReferenceDate];
      v76 = v75;
      v77 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [v77 timeIntervalSinceReferenceDate];
      v79 = v78;

      if (v76 > v79)
      {
LABEL_31:
        v80 = sub_100002660();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = [(BCAssetDetail *)self assetID];
          v82 = [v6 recordID];
          v83 = [v82 recordName];
          *buf = 138412546;
          v152 = v81;
          v153 = 2112;
          v154 = v83;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@ adopting playback time properties.", buf, 0x16u);
        }

        v84 = [v6 objectForKey:@"bookmarkTime"];
        v85 = v84;
        if (v84)
        {
          [v84 doubleValue];
          v87 = v86;
          v88 = sub_10000DC90();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = [(BCAssetDetail *)self assetID];
            v90 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
            [(BCAssetDetail *)self bookmarkTime];
            *buf = 138413314;
            v152 = v89;
            v153 = 2112;
            v154 = v90;
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

          v125 = [(BCAssetDetail *)self hasChanges];
          v126 = +[BULogUtilities shared];
          v127 = [v126 verboseLoggingEnabled];

          if (v125)
          {
            if (v127)
            {
              v128 = sub_10000DB80();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                v129 = [(BCAssetDetail *)self assetID];
                v130 = [v6 recordID];
                v131 = [v130 recordName];
                v132 = [(BCAssetDetail *)self debugDescription];
                *buf = 138412802;
                v152 = v129;
                v153 = 2112;
                v154 = v131;
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

          else if (v127)
          {
            v128 = sub_10000DB80();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              v129 = [(BCAssetDetail *)self assetID];
              v130 = [v6 recordID];
              v131 = [v130 recordName];
              v132 = [(BCAssetDetail *)self debugDescription];
              *buf = 138412802;
              v152 = v129;
              v153 = 2112;
              v154 = v131;
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

        v115 = sub_10000DC90();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v123 = [(BCAssetDetail *)self assetID];
          *buf = 138412290;
          v152 = v123;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as bookmark time is NULL.", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_58;
      }
    }

    v93 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (v93)
    {
      [v72 timeIntervalSinceReferenceDate];
      v95 = v94;
      v96 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [v96 timeIntervalSinceReferenceDate];
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

      v115 = [(BCAssetDetail *)self assetID];
      v116 = [v6 recordID];
      v117 = [v116 recordName];
      v118 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [v118 timeIntervalSinceReferenceDate];
      v120 = v119;
      [0 timeIntervalSinceReferenceDate];
      v121 = @"newer";
      *buf = 138412802;
      v152 = v115;
      if (v120 == v122)
      {
        v121 = @"the same";
      }

      v153 = 2112;
      v154 = v117;
      v155 = 2114;
      v156 = v121;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my playback time properties as my playback time update date is %{public}@.", buf, 0x20u);

      goto LABEL_53;
    }

    v85 = [v6 objectForKey:@"bookmarkTime"];
    v99 = sub_10000DC90();
    v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
    if (v85)
    {
      if (v100)
      {
        v101 = [(BCAssetDetail *)self assetID];
        v102 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v104 = v103;
        [v85 doubleValue];
        *buf = 138413314;
        v152 = v101;
        v153 = 2112;
        v154 = v102;
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
      v101 = [(BCAssetDetail *)self assetID];
      v102 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [(BCAssetDetail *)self bookmarkTime];
      *buf = 138413058;
      v152 = v101;
      v153 = 2112;
      v154 = v102;
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
  v2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  v3 = v2 != 0;

  return v3;
}

- (NSString)debugDescription
{
  v29 = [(BCAssetDetail *)self assetID];
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
  v26 = [(BCAssetDetail *)self dateFinished];
  v25 = [(BCAssetDetail *)self finishedDateKind];
  v24 = [(BCAssetDetail *)self lastOpenDate];
  v23 = [(BCAssetDetail *)self taste];
  v22 = [(BCAssetDetail *)self tasteSyncedToStore];
  [(BCAssetDetail *)self readingProgress];
  v6 = v5;
  [(BCAssetDetail *)self readingProgressHighWaterMark];
  v8 = v7;
  v9 = [(BCAssetDetail *)self readingPositionCFIString];
  v10 = [(BCAssetDetail *)self readingPositionAnnotationVersion];
  v11 = [(BCAssetDetail *)self readingPositionAssetVersion];
  v21 = [(BCAssetDetail *)self readingPositionUserData];
  v20 = [(BCAssetDetail *)self readingPositionLocationRangeStart];
  v12 = [(BCAssetDetail *)self readingPositionLocationRangeEnd];
  v13 = [(BCAssetDetail *)self readingPositionAbsolutePhysicalLocation];
  v14 = [(BCAssetDetail *)self readingPositionStorageUUID];
  v15 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
  v16 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  [(BCAssetDetail *)self bookmarkTime];
  v18 = [NSString stringWithFormat:@"BCAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", v29, v28, v27, v26, v25, v24, v23, v22, *&v6, *&v8, v9, v10, v11, v21, v20, v12, v13, v14, v15, v16, v17];

  return v18;
}

@end