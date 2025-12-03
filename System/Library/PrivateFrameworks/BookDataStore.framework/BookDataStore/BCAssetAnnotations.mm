@interface BCAssetAnnotations
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromAssetAnnotations:(id)annotations withMergers:(id)mergers;
- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation BCAssetAnnotations

- (id)mutableCopy
{
  v2 = [BCMutableAssetAnnotations alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetAnnotations *)self _configureFromAssetAnnotations:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E47059F8();
    }
  }
}

- (void)_configureFromAssetAnnotations:(id)annotations withMergers:(id)mergers
{
  v24 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  v17.receiver = self;
  v17.super_class = BCAssetAnnotations;
  [(BCCloudData *)&v17 configureFromCloudData:annotationsCopy withMergers:mergers];
  assetID = [annotationsCopy assetID];
  [(NSManagedObject *)self setDifferentString:assetID forKey:@"assetID"];

  assetID2 = [annotationsCopy assetID];
  assetVersion = [annotationsCopy assetVersion];
  bookAnnotations = [annotationsCopy bookAnnotations];
  [(BCAssetAnnotations *)self _mergeInAssetID:assetID2 assetVersion:assetVersion serializedData:bookAnnotations];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  LODWORD(assetVersion) = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (assetVersion)
  {
    v12 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      assetID3 = [(BCAssetAnnotations *)self assetID];
      v14 = [(BCAssetAnnotations *)self debugDescription];
      assetID4 = [annotationsCopy assetID];
      *buf = 138543874;
      v19 = assetID3;
      v20 = 2112;
      v21 = v14;
      v22 = 2114;
      v23 = assetID4;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "\\BCAssetAnnotations configured: %{public}@ %@ from assetDetail:%{public}@\\"", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_mergeInAssetID:(id)d assetVersion:(id)version serializedData:(id)data
{
  v89 = *MEMORY[0x1E69E9840];
  dCopy = d;
  versionCopy = version;
  dataCopy = data;
  v11 = objc_alloc_init(BCAnnotationsProtoBook);
  v12 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
  if (BCAnnotationsProtoBookReadFrom(v11, v12))
  {
    v67 = v12;
    v69 = dataCopy;
    assetID = [(BCAssetAnnotations *)self assetID];
    v14 = [assetID isEqualToString:dCopy];

    if ((v14 & 1) == 0)
    {
      v15 = BDSCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705AC0(self);
      }

      [(BCAssetAnnotations *)self setAssetID:dCopy];
    }

    v16 = objc_alloc_init(BCAnnotationsProtoBook);
    [(BCAnnotationsProtoBook *)v16 setAssetID:dCopy];
    v17 = +[BDSAppVersion appVersion];
    [(BCAnnotationsProtoBook *)v16 setAppVersion:v17];

    bookAnnotations = [(BCAssetAnnotations *)self bookAnnotations];
    v19 = [bookAnnotations length];

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E69C65B8]);
      bookAnnotations2 = [(BCAssetAnnotations *)self bookAnnotations];
      v22 = [v20 initWithData:bookAnnotations2];

      v23 = BCAnnotationsProtoBookReadFrom(v16, v22);
      if ((v23 & 1) == 0)
      {
        v24 = BDSCloudKitLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1E4705B64(self);
        }
      }

      v66 = v23 ^ 1;
    }

    else
    {
      v66 = 1;
    }

    v70 = versionCopy;
    v71 = dCopy;
    v26 = v16;
    v68 = v11;
    v72 = v11;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [MEMORY[0x1E695DF70] array];
    v75 = p_super = &v26->super.super;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    annotations = [(BCAnnotationsProtoBook *)v26 annotations];
    v29 = [annotations countByEnumeratingWithState:&v80 objects:v88 count:16];
    selfCopy = self;
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v32 = *v81;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v81 != v32)
          {
            objc_enumerationMutation(annotations);
          }

          v34 = *(*(&v80 + 1) + 8 * i);
          if (sub_1E46157D8(v34))
          {
            uuid = [v34 uuid];
            [dictionary setObject:v34 forKeyedSubscript:uuid];
          }

          else
          {
            v36 = BDSCloudKitLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v87 = v34;
              _os_log_error_impl(&dword_1E45E0000, v36, OS_LOG_TYPE_ERROR, "skipping annotation not valid for sync %@", buf, 0xCu);
            }

            [v75 addObject:v34];
            v31 = 1;
          }
        }

        v30 = [annotations countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v30);
    }

    else
    {
      v31 = 0;
    }

    annotations2 = [p_super annotations];
    [annotations2 removeObjectsInArray:v75];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    annotations3 = [(BCAnnotationsProtoBook *)v72 annotations];
    v39 = [annotations3 countByEnumeratingWithState:&v76 objects:buf count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v77;
      v73 = dictionary;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v77 != v41)
          {
            objc_enumerationMutation(annotations3);
          }

          v43 = *(*(&v76 + 1) + 8 * j);
          uuid2 = [v43 uuid];
          v45 = [dictionary objectForKeyedSubscript:uuid2];
          if (sub_1E46157D8(v43))
          {
            if (v45)
            {
              [v43 modificationDate];
              v47 = v46;
              [(BCProtoAnnotation *)v45 modificationDate];
              if (v47 > v48)
              {
                v49 = annotations3;
                deleted = [v43 deleted];
                mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
                verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

                if (deleted)
                {
                  annotations3 = v49;
                  if (verboseLoggingEnabled)
                  {
                    v53 = BDSCloudKitDevelopmentLog();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      uuid3 = [v43 uuid];
                      *v84 = 138412290;
                      v85 = uuid3;
                      _os_log_impl(&dword_1E45E0000, v53, OS_LOG_TYPE_DEFAULT, "\\Annotation updated: annotation %@ is deleted, making a tombstone\\"", v84, 0xCu);

                      annotations3 = v49;
                    }
                  }

                  [v43 modificationDate];
                  [(BCProtoAnnotation *)v45 setModificationDate:?];
                  bc_turnProtoAnnotationIntoTombstone(v45);
                }

                else
                {
                  annotations3 = v49;
                  if (verboseLoggingEnabled)
                  {
                    v60 = BDSCloudKitDevelopmentLog();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      locationCFIString = [v43 locationCFIString];
                      *v84 = 138412290;
                      v85 = locationCFIString;
                      _os_log_impl(&dword_1E45E0000, v60, OS_LOG_TYPE_DEFAULT, "\\Annotation updated: annotation at location %@\\"", v84, 0xCu);

                      annotations3 = v49;
                    }
                  }

                  [v43 copyTo:v45];
                }

                v31 = 1;
                dictionary = v73;
              }
            }

            else
            {
              v45 = objc_alloc_init(BCProtoAnnotation);
              [v43 copyTo:v45];
              [p_super addAnnotation:v45];
              mEMORY[0x1E698F550]2 = [MEMORY[0x1E698F550] shared];
              verboseLoggingEnabled2 = [mEMORY[0x1E698F550]2 verboseLoggingEnabled];

              if (verboseLoggingEnabled2)
              {
                v58 = BDSCloudKitDevelopmentLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  locationCFIString2 = [(BCProtoAnnotation *)v45 locationCFIString];
                  *v84 = 138412290;
                  v85 = locationCFIString2;
                  _os_log_impl(&dword_1E45E0000, v58, OS_LOG_TYPE_DEFAULT, "\\Annotations updated: new annotation synced down at %@\\"", v84, 0xCu);
                }
              }

              v31 = 1;
            }
          }

          else
          {
            v55 = BDSCloudKitLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *v84 = 138412290;
              v85 = v43;
              _os_log_error_impl(&dword_1E45E0000, v55, OS_LOG_TYPE_ERROR, "skipping annotation not valid for sync %@.", v84, 0xCu);
            }
          }
        }

        v40 = [annotations3 countByEnumeratingWithState:&v76 objects:buf count:16];
      }

      while (v40);
    }

    v25 = p_super;
    versionCopy = v70;
    if ((v66 | v31))
    {
      [(BCAssetAnnotations *)selfCopy setAssetVersion:v70];
      v62 = objc_alloc_init(MEMORY[0x1E69C65C0]);
      [p_super writeTo:v62];
      immutableData = [v62 immutableData];
      [(BCAssetAnnotations *)selfCopy setBookAnnotations:immutableData];
    }

    dCopy = v71;
    v11 = v68;
    dataCopy = v69;
    v12 = v67;
  }

  else
  {
    v25 = BDSCloudKitLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705A34(self);
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v38 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v31.receiver = self;
  v31.super_class = BCAssetAnnotations;
  [(BCCloudData *)&v31 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    modificationDate = [(BCAssetAnnotations *)self modificationDate];
    if (modificationDate)
    {
      v9 = modificationDate;
      modificationDate2 = [(BCAssetAnnotations *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v12 = v11;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v15 = v14;

      if (v12 > v15)
      {
        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_20;
      }
    }

    objc_opt_class();
    v16 = [recordCopy objectForKey:@"assetAnnotations"];
    v17 = BUDynamicCast();
    fileURL = [v17 fileURL];

    if (fileURL)
    {
      v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL];
    }

    else
    {
      v19 = 0;
    }

    if (!-[NSObject length](v7, "length") || ![v19 length])
    {
      v24 = BDSCloudKitLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705BF0(self);
      }

      goto LABEL_18;
    }

    v20 = [recordCopy objectForKeyedSubscript:@"assetVersion"];
    [(BCAssetAnnotations *)self _mergeInAssetID:v7 assetVersion:v20 serializedData:v19];

    hasChanges = [(BCAssetAnnotations *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (!verboseLoggingEnabled)
      {
LABEL_19:

        goto LABEL_20;
      }

      v24 = BDSCloudKitDevelopmentLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        goto LABEL_19;
      }

      assetID = [(BCAssetAnnotations *)self assetID];
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v28 = [(BCAssetAnnotations *)self debugDescription];
      *buf = 138412802;
      v33 = assetID;
      v34 = 2112;
      v35 = recordName;
      v36 = 2112;
      v37 = v28;
      v29 = "\\BCAssetAnnotations %@ Resolving: Adopted properties from record: %@ %@\\"";
    }

    else
    {
      if (!verboseLoggingEnabled)
      {
        goto LABEL_19;
      }

      v24 = BDSCloudKitDevelopmentLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      assetID = [(BCAssetAnnotations *)self assetID];
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v28 = [(BCAssetAnnotations *)self debugDescription];
      *buf = 138412802;
      v33 = assetID;
      v34 = 2112;
      v35 = recordName;
      v36 = 2112;
      v37 = v28;
      v29 = "\\BCAssetAnnotations %@ Resolving: Identical properties from record: %@ %@\\"";
    }

    _os_log_impl(&dword_1E45E0000, v24, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);

    goto LABEL_18;
  }

  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E4705C7C(self);
  }

LABEL_20:

  v30 = *MEMORY[0x1E69E9840];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  assetID = [(BCAssetAnnotations *)self assetID];
  assetVersion = [(BCAssetAnnotations *)self assetVersion];
  bookAnnotations = [(BCAssetAnnotations *)self bookAnnotations];
  v7 = [v3 stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", assetID, assetVersion, bookAnnotations];

  return v7;
}

@end