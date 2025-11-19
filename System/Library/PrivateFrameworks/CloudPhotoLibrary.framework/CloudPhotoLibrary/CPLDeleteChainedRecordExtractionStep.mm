@interface CPLDeleteChainedRecordExtractionStep
- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)a3;
- (CPLDeleteChainedRecordExtractionStep)initWithStorage:(id)a3 class:(Class)a4 classDescription:(id)a5 scopeIdentifier:(id)a6 maximumCount:(unint64_t)a7;
- (id)shortDescription;
@end

@implementation CPLDeleteChainedRecordExtractionStep

- (id)shortDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Deleted(%@, chained)", self->_classDescription];

  return v2;
}

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)a3
{
  v4 = a3;
  recordClass = self->_recordClass;
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ([v4 isDelete] & 1) != 0;

  return v6;
}

- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a3;
  maximumCount = self->_maximumCount;
  if (maximumCount >= a4)
  {
    maximumCount = a4;
  }

  v59 = v8;
  v60 = maximumCount;
  v10 = [(CPLBatchExtractionStep *)self storage];
  v63 = self;
  recordClass = self->_recordClass;
  v12 = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v65 = v10;
  v13 = [v10 allChangesWithClass:recordClass scopeIdentifier:v12 changeType:1024];

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v82 objects:v89 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v57 = 0;
    v18 = *v83;
    v52 = *v83;
    while (2)
    {
      v19 = 0;
      v53 = v16;
      do
      {
        if (*v83 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v82 + 1) + 8 * v19);
        v21 = [v20 scopedIdentifier];
        if (([v14 containsObject:v21] & 1) == 0)
        {
          v55 = v19;
          v56 = v21;
          v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
          v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v20, 0}];
          v58 = v17;
          while ([v22 count])
          {
            v23 = v22;
            context = objc_autoreleasePoolPush();
            [v61 addObjectsFromArray:v22];
            v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v67 = v23;
            v24 = [v67 countByEnumeratingWithState:&v78 objects:v88 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v79;
              v64 = *v79;
              do
              {
                v27 = 0;
                v66 = v25;
                do
                {
                  if (*v79 != v26)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v28 = [*(*(&v78 + 1) + 8 * v27) scopedIdentifier];
                  if (([v14 containsObject:v28] & 1) == 0)
                  {
                    [v14 addObject:v28];
                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v68 = v28;
                    v29 = [v65 allChangesWithClass:v63->_recordClass relatedScopedIdentifier:v28];
                    v30 = [v29 countByEnumeratingWithState:&v74 objects:v87 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v32 = *v75;
                      do
                      {
                        for (i = 0; i != v31; ++i)
                        {
                          if (*v75 != v32)
                          {
                            objc_enumerationMutation(v29);
                          }

                          v34 = *(*(&v74 + 1) + 8 * i);
                          if ([v34 isDelete])
                          {
                            v35 = [v34 scopedIdentifier];
                            v36 = [v14 containsObject:v35];

                            if ((v36 & 1) == 0)
                            {
                              [v22 addObject:v34];
                            }
                          }
                        }

                        v31 = [v29 countByEnumeratingWithState:&v74 objects:v87 count:16];
                      }

                      while (v31);
                    }

                    v26 = v64;
                    v25 = v66;
                    v28 = v68;
                  }

                  ++v27;
                }

                while (v27 != v25);
                v25 = [v67 countByEnumeratingWithState:&v78 objects:v88 count:16];
              }

              while (v25);
            }

            objc_autoreleasePoolPop(context);
          }

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v37 = [v61 reverseObjectEnumerator];
          v38 = [v37 countByEnumeratingWithState:&v70 objects:v86 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v71;
            while (2)
            {
              v41 = 0;
              v42 = v57;
              v17 = v58 + 1;
              v58 += v39;
              do
              {
                if (*v71 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v43 = *(*(&v70 + 1) + 8 * v41);
                [v59 addChange:v43 fromStorage:v65];
                v69 = v42;
                v44 = [v65 removeChange:v43 error:&v69];
                v45 = v69;

                if (v44)
                {
                  v46 = v17 >= v60;
                }

                else
                {
                  v46 = 1;
                }

                if (v46)
                {
                  v57 = v45;
                  goto LABEL_43;
                }

                ++v41;
                ++v17;
                v42 = v45;
              }

              while (v39 != v41);
              v57 = v45;
              v39 = [v37 countByEnumeratingWithState:&v70 objects:v86 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }

          v44 = 1;
          v17 = v58;
LABEL_43:

          if (v44)
          {
            v47 = v17 >= v60;
          }

          else
          {
            v47 = 1;
          }

          if (v47)
          {

            goto LABEL_54;
          }

          v18 = v52;
          v16 = v53;
          v19 = v55;
          v21 = v56;
        }

        ++v19;
      }

      while (v19 != v16);
      v16 = [obj countByEnumeratingWithState:&v82 objects:v89 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
    v57 = 0;
  }

  v44 = 1;
LABEL_54:

  if (v44 && v17 >= v60)
  {
    [v59 setFull:1];
  }

  if (a6)
  {
    v48 = v44;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    *a6 = v57;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v44;
}

- (CPLDeleteChainedRecordExtractionStep)initWithStorage:(id)a3 class:(Class)a4 classDescription:(id)a5 scopeIdentifier:(id)a6 maximumCount:(unint64_t)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = CPLDeleteChainedRecordExtractionStep;
  v16 = [(CPLBatchExtractionStep *)&v26 initWithStorage:v13 scopeIdentifier:v15];
  if (v16)
  {
    if ([(objc_class *)a4 relatedRecordClass]!= a4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [(objc_class *)a4 relatedRecordClass];
          *buf = 138412546;
          v28 = a4;
          v29 = 2112;
          v30 = v22;
          v23 = v22;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to extract new %@ chained but their related record class is %@", buf, 0x16u);
        }
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [v24 handleFailureInMethod:a2 object:v16 file:v25 lineNumber:282 description:{@"Trying to extract new %@ chained but their related record class is %@", a4, -[objc_class relatedRecordClass](a4, "relatedRecordClass")}];

      abort();
    }

    objc_storeStrong(&v16->_recordClass, a4);
    v17 = [v14 copy];
    classDescription = v16->_classDescription;
    v16->_classDescription = v17;

    v16->_maximumCount = a7;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

@end