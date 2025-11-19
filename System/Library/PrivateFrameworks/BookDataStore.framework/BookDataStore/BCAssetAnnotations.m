@interface BCAssetAnnotations
- (NSString)debugDescription;
- (id)mutableCopy;
- (void)_configureFromAssetAnnotations:(id)a3 withMergers:(id)a4;
- (void)_mergeInAssetID:(id)a3 assetVersion:(id)a4 serializedData:(id)a5;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation BCAssetAnnotations

- (id)mutableCopy
{
  v2 = [BCMutableAssetAnnotations alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetAnnotations *)self _configureFromAssetAnnotations:v6 withMergers:v5];
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

- (void)_configureFromAssetAnnotations:(id)a3 withMergers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = BCAssetAnnotations;
  [(BCCloudData *)&v17 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 assetID];
  [(NSManagedObject *)self setDifferentString:v7 forKey:@"assetID"];

  v8 = [v6 assetID];
  v9 = [v6 assetVersion];
  v10 = [v6 bookAnnotations];
  [(BCAssetAnnotations *)self _mergeInAssetID:v8 assetVersion:v9 serializedData:v10];

  v11 = [MEMORY[0x1E698F550] shared];
  LODWORD(v9) = [v11 verboseLoggingEnabled];

  if (v9)
  {
    v12 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BCAssetAnnotations *)self assetID];
      v14 = [(BCAssetAnnotations *)self debugDescription];
      v15 = [v6 assetID];
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "\\BCAssetAnnotations configured: %{public}@ %@ from assetDetail:%{public}@\\"", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_mergeInAssetID:(id)a3 assetVersion:(id)a4 serializedData:(id)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(BCAnnotationsProtoBook);
  v12 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v10];
  if (BCAnnotationsProtoBookReadFrom(v11, v12))
  {
    v67 = v12;
    v69 = v10;
    v13 = [(BCAssetAnnotations *)self assetID];
    v14 = [v13 isEqualToString:v8];

    if ((v14 & 1) == 0)
    {
      v15 = BDSCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1E4705AC0(self);
      }

      [(BCAssetAnnotations *)self setAssetID:v8];
    }

    v16 = objc_alloc_init(BCAnnotationsProtoBook);
    [(BCAnnotationsProtoBook *)v16 setAssetID:v8];
    v17 = +[BDSAppVersion appVersion];
    [(BCAnnotationsProtoBook *)v16 setAppVersion:v17];

    v18 = [(BCAssetAnnotations *)self bookAnnotations];
    v19 = [v18 length];

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E69C65B8]);
      v21 = [(BCAssetAnnotations *)self bookAnnotations];
      v22 = [v20 initWithData:v21];

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

    v70 = v9;
    v71 = v8;
    v26 = v16;
    v68 = v11;
    v72 = v11;
    v27 = [MEMORY[0x1E695DF90] dictionary];
    [MEMORY[0x1E695DF70] array];
    v75 = p_super = &v26->super.super;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v28 = [(BCAnnotationsProtoBook *)v26 annotations];
    v29 = [v28 countByEnumeratingWithState:&v80 objects:v88 count:16];
    v65 = self;
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
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v80 + 1) + 8 * i);
          if (sub_1E46157D8(v34))
          {
            v35 = [v34 uuid];
            [v27 setObject:v34 forKeyedSubscript:v35];
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

        v30 = [v28 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v30);
    }

    else
    {
      v31 = 0;
    }

    v37 = [p_super annotations];
    [v37 removeObjectsInArray:v75];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v38 = [(BCAnnotationsProtoBook *)v72 annotations];
    v39 = [v38 countByEnumeratingWithState:&v76 objects:buf count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v77;
      v73 = v27;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v77 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v76 + 1) + 8 * j);
          v44 = [v43 uuid];
          v45 = [v27 objectForKeyedSubscript:v44];
          if (sub_1E46157D8(v43))
          {
            if (v45)
            {
              [v43 modificationDate];
              v47 = v46;
              [(BCProtoAnnotation *)v45 modificationDate];
              if (v47 > v48)
              {
                v49 = v38;
                v50 = [v43 deleted];
                v51 = [MEMORY[0x1E698F550] shared];
                v52 = [v51 verboseLoggingEnabled];

                if (v50)
                {
                  v38 = v49;
                  if (v52)
                  {
                    v53 = BDSCloudKitDevelopmentLog();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      v54 = [v43 uuid];
                      *v84 = 138412290;
                      v85 = v54;
                      _os_log_impl(&dword_1E45E0000, v53, OS_LOG_TYPE_DEFAULT, "\\Annotation updated: annotation %@ is deleted, making a tombstone\\"", v84, 0xCu);

                      v38 = v49;
                    }
                  }

                  [v43 modificationDate];
                  [(BCProtoAnnotation *)v45 setModificationDate:?];
                  bc_turnProtoAnnotationIntoTombstone(v45);
                }

                else
                {
                  v38 = v49;
                  if (v52)
                  {
                    v60 = BDSCloudKitDevelopmentLog();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      v61 = [v43 locationCFIString];
                      *v84 = 138412290;
                      v85 = v61;
                      _os_log_impl(&dword_1E45E0000, v60, OS_LOG_TYPE_DEFAULT, "\\Annotation updated: annotation at location %@\\"", v84, 0xCu);

                      v38 = v49;
                    }
                  }

                  [v43 copyTo:v45];
                }

                v31 = 1;
                v27 = v73;
              }
            }

            else
            {
              v45 = objc_alloc_init(BCProtoAnnotation);
              [v43 copyTo:v45];
              [p_super addAnnotation:v45];
              v56 = [MEMORY[0x1E698F550] shared];
              v57 = [v56 verboseLoggingEnabled];

              if (v57)
              {
                v58 = BDSCloudKitDevelopmentLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = [(BCProtoAnnotation *)v45 locationCFIString];
                  *v84 = 138412290;
                  v85 = v59;
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

        v40 = [v38 countByEnumeratingWithState:&v76 objects:buf count:16];
      }

      while (v40);
    }

    v25 = p_super;
    v9 = v70;
    if ((v66 | v31))
    {
      [(BCAssetAnnotations *)v65 setAssetVersion:v70];
      v62 = objc_alloc_init(MEMORY[0x1E69C65C0]);
      [p_super writeTo:v62];
      v63 = [v62 immutableData];
      [(BCAssetAnnotations *)v65 setBookAnnotations:v63];
    }

    v8 = v71;
    v11 = v68;
    v10 = v69;
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

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31.receiver = self;
  v31.super_class = BCAssetAnnotations;
  [(BCCloudData *)&v31 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCAssetAnnotations *)self modificationDate];
    if (v8)
    {
      v9 = v8;
      v10 = [(BCAssetAnnotations *)self modificationDate];
      [v10 timeIntervalSinceReferenceDate];
      v12 = v11;
      v13 = [v6 modificationDate];
      [v13 timeIntervalSinceReferenceDate];
      v15 = v14;

      if (v12 > v15)
      {
        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_20;
      }
    }

    objc_opt_class();
    v16 = [v6 objectForKey:@"assetAnnotations"];
    v17 = BUDynamicCast();
    v18 = [v17 fileURL];

    if (v18)
    {
      v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v18];
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

    v20 = [v6 objectForKeyedSubscript:@"assetVersion"];
    [(BCAssetAnnotations *)self _mergeInAssetID:v7 assetVersion:v20 serializedData:v19];

    v21 = [(BCAssetAnnotations *)self hasChanges];
    v22 = [MEMORY[0x1E698F550] shared];
    v23 = [v22 verboseLoggingEnabled];

    if (v21)
    {
      if (!v23)
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

      v25 = [(BCAssetAnnotations *)self assetID];
      v26 = [v6 recordID];
      v27 = [v26 recordName];
      v28 = [(BCAssetAnnotations *)self debugDescription];
      *buf = 138412802;
      v33 = v25;
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      v29 = "\\BCAssetAnnotations %@ Resolving: Adopted properties from record: %@ %@\\"";
    }

    else
    {
      if (!v23)
      {
        goto LABEL_19;
      }

      v24 = BDSCloudKitDevelopmentLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v25 = [(BCAssetAnnotations *)self assetID];
      v26 = [v6 recordID];
      v27 = [v26 recordName];
      v28 = [(BCAssetAnnotations *)self debugDescription];
      *buf = 138412802;
      v33 = v25;
      v34 = 2112;
      v35 = v27;
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
  v4 = [(BCAssetAnnotations *)self assetID];
  v5 = [(BCAssetAnnotations *)self assetVersion];
  v6 = [(BCAssetAnnotations *)self bookAnnotations];
  v7 = [v3 stringWithFormat:@"assetID: %@, assetVersion: %@, statistics: %@", v4, v5, v6];

  return v7;
}

@end