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
  v2 = [BCMutableAssetDetail alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
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
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4708DF0();
    }
  }
}

- (void)_configureFromAssetDetail:(id)a3 withMergers:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v66.receiver = self;
  v66.super_class = BCAssetDetail;
  [(BCCloudData *)&v66 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 assetID];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"assetID"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isFinished")}];
  [(NSManagedObject *)self setDifferentNumber:v8 forKey:@"isFinished"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "notFinished")}];
  [(NSManagedObject *)self setDifferentNumber:v9 forKey:@"notFinished"];

  v10 = MEMORY[0x1E696AD98];
  v11 = [(BCAssetDetail *)self taste];
  v12 = [v6 taste];
  v13 = v11 & 3;
  if ((v12 & 3) != 0)
  {
    v13 = v12 & 3;
  }

  v14 = [v10 numberWithShort:v13 | (v12 | v11) & 4u];
  [(NSManagedObject *)self setDifferentNumber:v14 forKey:@"taste"];

  v15 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v6, "tasteSyncedToStore")}];
  [(NSManagedObject *)self setDifferentNumber:v15 forKey:@"tasteSyncedToStore"];

  v16 = [v6 dateFinished];
  [(NSManagedObject *)self setDifferentDate:v16 forKey:@"dateFinished"];

  v17 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v6, "finishedDateKind")}];
  [(NSManagedObject *)self setDifferentNumber:v17 forKey:@"finishedDateKind"];

  v18 = [v6 lastOpenDate];
  [(NSManagedObject *)self setDifferentDate:v18 forKey:@"lastOpenDate"];

  v19 = [v6 readingPositionLocationUpdateDate];
  v20 = v19;
  if (v19)
  {
    [v19 timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = [(BCAssetDetail *)self readingPositionLocationUpdateDate];
    [v23 timeIntervalSinceReferenceDate];
    v25 = v24;

    if (v22 > v25)
    {
      v26 = MEMORY[0x1E696AD98];
      [v6 readingProgress];
      v27 = [v26 numberWithFloat:?];
      [(NSManagedObject *)self setDifferentNumber:v27 forKey:@"readingProgress"];

      v28 = MEMORY[0x1E696AD98];
      [v6 readingProgressHighWaterMark];
      v29 = [v28 numberWithFloat:?];
      [(NSManagedObject *)self setDifferentNumber:v29 forKey:@"readingProgressHighWaterMark"];

      v30 = [v6 readingPositionCFIString];
      [(NSManagedObject *)self setDifferentString:v30 forKey:@"readingPositionCFIString"];

      v31 = [v6 readingPositionAnnotationVersion];
      [(NSManagedObject *)self setDifferentString:v31 forKey:@"readingPositionAnnotationVersion"];

      v32 = [v6 readingPositionAssetVersion];
      [(NSManagedObject *)self setDifferentString:v32 forKey:@"readingPositionAssetVersion"];

      v33 = [v6 readingPositionUserData];
      [(NSManagedObject *)self setDifferentValue:v33 forKey:@"readingPositionUserData" klass:objc_opt_class()];

      v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "readingPositionLocationRangeStart")}];
      [(NSManagedObject *)self setDifferentNumber:v34 forKey:@"readingPositionLocationRangeStart"];

      v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "readingPositionLocationRangeEnd")}];
      [(NSManagedObject *)self setDifferentNumber:v35 forKey:@"readingPositionLocationRangeEnd"];

      v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "readingPositionAbsolutePhysicalLocation")}];
      [(NSManagedObject *)self setDifferentNumber:v36 forKey:@"readingPositionAbsolutePhysicalLocation"];

      v37 = [v6 readingPositionStorageUUID];
      [(NSManagedObject *)self setDifferentString:v37 forKey:@"readingPositionStorageUUID"];

      [(NSManagedObject *)self setDifferentDate:v20 forKey:@"readingPositionLocationUpdateDate"];
    }
  }

  v38 = [v6 datePlaybackTimeUpdated];
  if (v38)
  {
    v39 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    if (!v39)
    {
      goto LABEL_9;
    }

    v40 = v39;
    [v38 timeIntervalSinceReferenceDate];
    v42 = v41;
    v43 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
    [v43 timeIntervalSinceReferenceDate];
    v45 = v44;

    if (v42 <= v45)
    {
      v53 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [(BCAssetDetail *)self assetID];
        v55 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        v57 = v56;
        [v6 bookmarkTime];
        *buf = 138413314;
        v68 = v54;
        v69 = 2112;
        v70 = v55;
        v71 = 2048;
        v72 = v57;
        v73 = 2112;
        v74 = v38;
        v75 = 2048;
        v76 = v58;
        _os_log_impl(&dword_1E45E0000, v53, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time, ignoring as my bookmark time is same or newer old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }
    }

    else
    {
LABEL_9:
      [v6 bookmarkTime];
      v47 = v46;
      v48 = BDSCloudKitAudiobookLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [(BCAssetDetail *)self assetID];
        v50 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
        [(BCAssetDetail *)self bookmarkTime];
        *buf = 138413314;
        v68 = v49;
        v69 = 2112;
        v70 = v50;
        v71 = 2048;
        v72 = v51;
        v73 = 2112;
        v74 = v38;
        v75 = 2048;
        v76 = v47;
        _os_log_impl(&dword_1E45E0000, v48, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Configuring bookmark time old:[%@ = %.2f] new:[%@ = %.2f].", buf, 0x34u);
      }

      v52 = [v6 datePlaybackTimeUpdated];
      [(NSManagedObject *)self setDifferentDate:v52 forKey:@"datePlaybackTimeUpdated"];

      [(BCAssetDetail *)self setDifferentBookmarkTime:v47];
    }
  }

  v59 = [MEMORY[0x1E698F550] shared];
  v60 = [v59 verboseLoggingEnabled];

  if (v60)
  {
    v61 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [(BCAssetDetail *)self assetID];
      v63 = [(BCAssetDetail *)self debugDescription];
      v64 = [v6 assetID];
      *buf = 138412802;
      v68 = v62;
      v69 = 2112;
      v70 = v63;
      v71 = 2112;
      v72 = v64;
      _os_log_impl(&dword_1E45E0000, v61, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail configured: %@ %@ from assetDetail:%@\\"", buf, 0x20u);
    }
  }

  v65 = *MEMORY[0x1E69E9840];
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
  v162 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v151.receiver = self;
  v151.super_class = BCAssetDetail;
  [(BCCloudData *)&v151 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [MEMORY[0x1E698F550] shared];
    v8 = [v7 verboseLoggingEnabled];

    if (v8)
    {
      v9 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "\\BCAssetDetail resolveConflictsFromRecord:withResolvers: record != nil\\"", buf, 2u);
      }
    }

    v10 = [BCCloudData localIdentifierFromRecord:v6];
    v11 = [(BCAssetDetail *)self assetID];
    v12 = [v11 isEqualToString:v10];

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

      v26 = BDSCloudKitLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v135 = [(BCAssetDetail *)self assetID];
        v136 = [v6 recordID];
        v137 = [v136 recordName];
        v138 = [(BCAssetDetail *)self modificationDate];
        [v138 timeIntervalSinceReferenceDate];
        v140 = v139;
        v141 = [v6 modificationDate];
        [v141 timeIntervalSinceReferenceDate];
        v142 = @"newer";
        *buf = 138412802;
        v153 = v135;
        if (v140 == v143)
        {
          v142 = @"the same";
        }

        v154 = 2112;
        v155 = v137;
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
        v23 = [(BCAssetDetail *)self assetID];
        v24 = [v6 recordID];
        v25 = [v24 recordName];
        *buf = 138412546;
        v153 = v23;
        v154 = 2112;
        v155 = v25;
        _os_log_impl(&dword_1E45E0000, v22, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting general record properties.", buf, 0x16u);
      }

      v26 = [v6 objectForKey:@"isFinished"];
      [(NSManagedObject *)self setDifferentNumber:v26 forKey:@"isFinished"];
      v27 = [v6 objectForKey:@"notFinished"];
      [(NSManagedObject *)self setDifferentNumber:v27 forKey:@"notFinished"];
      v28 = [v6 objectForKey:@"taste"];
      v29 = [(BCAssetDetail *)self taste];
      v30 = [v28 shortValue];
      v31 = v29 & 3;
      if ((v30 & 3) != 0)
      {
        v31 = v30 & 3;
      }

      v32 = [MEMORY[0x1E696AD98] numberWithShort:v31 | (v30 | v29) & 4u];
      [(NSManagedObject *)self setDifferentNumber:v32 forKey:@"taste"];

      v33 = [v6 objectForKey:@"tasteSyncedToStore"];
      [(NSManagedObject *)self setDifferentNumber:v33 forKey:@"tasteSyncedToStore"];
      v34 = [v6 objectForKey:@"dateFinished"];
      [(NSManagedObject *)self setDifferentDate:v34 forKey:@"dateFinished"];
      v35 = [v6 encryptedValues];
      v36 = [v35 objectForKeyedSubscript:@"finishedDateKind"];

      [(NSManagedObject *)self setDifferentNumber:v36 forKey:@"finishedDateKind"];
      v37 = [v6 objectForKey:@"lastOpenDate"];
      [(NSManagedObject *)self setDifferentDate:v37 forKey:@"lastOpenDate"];
      v38 = [v6 modificationDate];
      [(NSManagedObject *)self setDifferentDate:v38 forKey:@"modificationDate"];

      v39 = 0;
    }

    v40 = [v6 objectForKey:@"readingPositionLocationUpdateDate"];
    v41 = v40;
    if (v40 && ([v40 timeIntervalSinceReferenceDate], v43 = v42, -[BCAssetDetail readingPositionLocationUpdateDate](self, "readingPositionLocationUpdateDate"), v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "timeIntervalSinceReferenceDate"), v46 = v45, v44, v43 > v46))
    {
      v148 = v39;
      v149 = v41;
      v47 = BDSCloudKitLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [(BCAssetDetail *)self assetID];
        v49 = [v6 recordID];
        v50 = [v49 recordName];
        *buf = 138412546;
        v153 = v48;
        v154 = 2112;
        v155 = v50;
        _os_log_impl(&dword_1E45E0000, v47, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@ adopting reading position properties.", buf, 0x16u);
      }

      v51 = [v6 objectForKey:@"readingProgress"];
      [(NSManagedObject *)self setDifferentNumber:v51 forKey:@"readingProgress"];
      v147 = [v6 objectForKey:@"readingProgressHighWaterMark"];
      [(NSManagedObject *)self setDifferentNumber:v147 forKey:@"readingProgressHighWaterMark"];
      v146 = [v6 objectForKey:@"readingPositionCFIString"];
      [(NSManagedObject *)self setDifferentString:v146 forKey:@"readingPositionCFIString"];
      v145 = [v6 objectForKey:@"readingPositionAssetVersion"];
      [(NSManagedObject *)self setDifferentString:v145 forKey:@"readingPositionAssetVersion"];
      v144 = [v6 objectForKey:@"readingPositionAnnotationVersion"];
      [(NSManagedObject *)self setDifferentString:v144 forKey:@"readingPositionAnnotationVersion"];
      v52 = [v6 objectForKey:@"readingPositionUserData"];
      [(NSManagedObject *)self setDifferentValue:v52 forKey:@"readingPositionUserData" klass:objc_opt_class()];
      v53 = [v6 objectForKey:@"readingPositionLocationRangeStart"];
      [(NSManagedObject *)self setDifferentNumber:v53 forKey:@"readingPositionLocationRangeStart"];
      v54 = [v6 objectForKey:@"readingPositionLocationRangeEnd"];
      [(NSManagedObject *)self setDifferentNumber:v54 forKey:@"readingPositionLocationRangeEnd"];
      v55 = [v6 objectForKey:@"readingPositionAbsolutePhysicalLocation"];
      [(NSManagedObject *)self setDifferentNumber:v55 forKey:@"readingPositionAbsolutePhysicalLocation"];
      v56 = [v6 objectForKey:@"readingPositionStorageUUID"];
      [(NSManagedObject *)self setDifferentString:v56 forKey:@"readingPositionStorageUUID"];
      v57 = [v6 objectForKey:@"readingPositionLocationUpdateDate"];
      [(NSManagedObject *)self setDifferentDate:v57 forKey:@"readingPositionLocationUpdateDate"];

      v41 = v149;
      v39 = v148;
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

      v51 = BDSCloudKitLog();
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
        v153 = v64;
        if (v69 == v71)
        {
          v70 = @"the same";
        }

        v154 = 2112;
        v155 = v66;
        v156 = 2114;
        v157 = v70;
        _os_log_impl(&dword_1E45E0000, v51, OS_LOG_TYPE_INFO, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my reading position properties as my reading position update date is %{public}@.", buf, 0x20u);
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
        v80 = BDSCloudKitLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = [(BCAssetDetail *)self assetID];
          v82 = [v6 recordID];
          v83 = [v82 recordName];
          *buf = 138412546;
          v153 = v81;
          v154 = 2112;
          v155 = v83;
          _os_log_impl(&dword_1E45E0000, v80, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@ adopting playback time properties.", buf, 0x16u);
        }

        v84 = [v6 objectForKey:@"bookmarkTime"];
        v85 = v84;
        if (v84)
        {
          [v84 doubleValue];
          v87 = v86;
          v88 = BDSCloudKitAudiobookLog();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = [(BCAssetDetail *)self assetID];
            v90 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
            [(BCAssetDetail *)self bookmarkTime];
            *buf = 138413314;
            v153 = v89;
            v154 = 2112;
            v155 = v90;
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

          v125 = [(BCAssetDetail *)self hasChanges];
          v126 = [MEMORY[0x1E698F550] shared];
          v127 = [v126 verboseLoggingEnabled];

          if (v125)
          {
            if (v127)
            {
              v128 = BDSCloudKitDevelopmentLog();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                v129 = [(BCAssetDetail *)self assetID];
                v130 = [v6 recordID];
                v131 = [v130 recordName];
                v132 = [(BCAssetDetail *)self debugDescription];
                *buf = 138412802;
                v153 = v129;
                v154 = 2112;
                v155 = v131;
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

          else if (v127)
          {
            v128 = BDSCloudKitDevelopmentLog();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              v129 = [(BCAssetDetail *)self assetID];
              v130 = [v6 recordID];
              v131 = [v130 recordName];
              v132 = [(BCAssetDetail *)self debugDescription];
              *buf = 138412802;
              v153 = v129;
              v154 = 2112;
              v155 = v131;
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

        v115 = BDSCloudKitAudiobookLog();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v123 = [(BCAssetDetail *)self assetID];
          *buf = 138412290;
          v153 = v123;
          _os_log_impl(&dword_1E45E0000, v115, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Audiobook Resolving bookmark time, ignoring as bookmark time is NULL.", buf, 0xCu);
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
      v85 = BDSCloudKitAudiobookLog();
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
      v153 = v115;
      if (v120 == v122)
      {
        v121 = @"the same";
      }

      v154 = 2112;
      v155 = v117;
      v156 = 2114;
      v157 = v121;
      _os_log_impl(&dword_1E45E0000, v85, OS_LOG_TYPE_DEFAULT, "BCAssetDetail %@ Resolving conflicts from record %@, keeping my playback time properties as my playback time update date is %{public}@.", buf, 0x20u);

      goto LABEL_53;
    }

    v85 = [v6 objectForKey:@"bookmarkTime"];
    v99 = BDSCloudKitAudiobookLog();
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
        v153 = v101;
        v154 = 2112;
        v155 = v102;
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
      v101 = [(BCAssetDetail *)self assetID];
      v102 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
      [(BCAssetDetail *)self bookmarkTime];
      *buf = 138413058;
      v153 = v101;
      v154 = 2112;
      v155 = v102;
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
  v2 = [(BCAssetDetail *)self datePlaybackTimeUpdated];
  v3 = v2 != 0;

  return v3;
}

- (NSString)debugDescription
{
  v30 = MEMORY[0x1E696AEC0];
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
  v18 = [v30 stringWithFormat:@"BCAssetDetail assetID: %@\n  (isFinished: %@, notFinished: %@, dateFinished: %@, finishedDateKind: %d, lastOpenDate: %@)  (taste: %x, tasteSyncedToStore: %d)  readingPosition=(\n    readingProgress:%.2f\n    readingProgressHighWaterMark:%.2f\n    cfi:%@\n    annotationVersion=%@\n    assetVersion=%@\n    userData=%@\n    locationRangeStart=%d    locationRangeEnd=%d    absolutePhysicalLocation=%d    storageUUID=%@\n    locationUpdateDate=%@)\n  playbackPosition=(\n    datePlaybackTimeUpdated=%@\n    bookmarkTime = %.2f)", v29, v28, v27, v26, v25, v24, v23, v22, *&v6, *&v8, v9, v10, v11, v21, v20, v12, v13, v14, v15, v16, v17];

  return v18;
}

@end