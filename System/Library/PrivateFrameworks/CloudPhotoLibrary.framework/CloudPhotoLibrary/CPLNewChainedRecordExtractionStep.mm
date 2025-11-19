@interface CPLNewChainedRecordExtractionStep
- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)a3;
- (CPLNewChainedRecordExtractionStep)initWithStorage:(id)a3 class:(Class)a4 classDescription:(id)a5 scopeIdentifier:(id)a6 maximumCount:(unint64_t)a7;
- (id)shortDescription;
@end

@implementation CPLNewChainedRecordExtractionStep

- (id)shortDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"New(%@, chained)", self->_classDescription];

  return v2;
}

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)a3
{
  v4 = a3;
  recordClass = self->_recordClass;
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ([v4 isFullRecord] & 1) != 0;

  return v6;
}

- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v52 = a3;
  maximumCount = self->_maximumCount;
  if (maximumCount >= a4)
  {
    maximumCount = a4;
  }

  v47 = maximumCount;
  v10 = [(CPLBatchExtractionStep *)self storage];
  recordClass = self->_recordClass;
  v12 = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v13 = [v10 allChangesWithClass:recordClass scopeIdentifier:v12 changeType:0];

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = 0;
    v20 = *v60;
    v43 = v14;
    v44 = *v60;
    v41 = a6;
    v42 = v15;
    while (2)
    {
      v21 = 0;
      v45 = v17;
      do
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v59 + 1) + 8 * v21);
        v23 = [v22 scopedIdentifier];
        if (([v14 containsObject:v23] & 1) == 0)
        {
          [v14 addObject:v23];
          v24 = [v22 relatedScopedIdentifier];
          v48 = v22;
          v49 = v23;
          if (v24 && ([v14 containsObject:v24] & 1) == 0)
          {
            v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
            while (([v14 containsObject:v24] & 1) == 0)
            {
              v25 = [v10 changeWithScopedIdentifier:v24];
              [v14 addObject:v24];
              if (!v25 || ([v25 isDelete] & 1) != 0 || (objc_msgSend(v25, "isFullRecord") & 1) == 0)
              {

                break;
              }

              [v50 addObject:v25];
              v26 = [v25 relatedScopedIdentifier];

              v24 = v26;
              if (!v26)
              {
                break;
              }
            }

            v46 = v18;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = [v50 reverseObjectEnumerator];
            v27 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v56;
              while (2)
              {
                v30 = 0;
                v31 = v46 + 1;
                v46 += v28;
                v32 = v19;
                do
                {
                  if (*v56 != v29)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v33 = *(*(&v55 + 1) + 8 * v30);
                  [v52 addChange:v33 fromStorage:v10];
                  v54 = v32;
                  v34 = [v10 removeChange:v33 error:&v54];
                  v19 = v54;

                  if (!v34)
                  {

                    v18 = v31;
                    v15 = v42;
                    v14 = v43;
                    goto LABEL_37;
                  }

                  ++v30;
                  ++v31;
                  v32 = v19;
                }

                while (v28 != v30);
                v28 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

            v15 = v42;
            v14 = v43;
            v18 = v46;
          }

          v35 = v19;
          ++v18;
          [v52 addChange:v48 fromStorage:v10];
          v53 = v19;
          v34 = [v10 removeChange:v48 error:&v53];
          v19 = v53;

          if (v34)
          {
            v36 = v18 >= v47;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
LABEL_37:

            a6 = v41;
            goto LABEL_39;
          }

          v20 = v44;
          v17 = v45;
          v23 = v49;
        }

        ++v21;
      }

      while (v21 != v17);
      v17 = [v15 countByEnumeratingWithState:&v59 objects:v64 count:16];
      v34 = 1;
      a6 = v41;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v34 = 1;
  }

LABEL_39:

  if (v34 && v18 >= v47)
  {
    [v52 setFull:1];
  }

  if (a6)
  {
    v37 = v34;
  }

  else
  {
    v37 = 1;
  }

  if ((v37 & 1) == 0)
  {
    v38 = v19;
    *a6 = v19;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v34;
}

- (CPLNewChainedRecordExtractionStep)initWithStorage:(id)a3 class:(Class)a4 classDescription:(id)a5 scopeIdentifier:(id)a6 maximumCount:(unint64_t)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = CPLNewChainedRecordExtractionStep;
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
      [v24 handleFailureInMethod:a2 object:v16 file:v25 lineNumber:174 description:{@"Trying to extract new %@ chained but their related record class is %@", a4, -[objc_class relatedRecordClass](a4, "relatedRecordClass")}];

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