@interface CPLNewChainedRecordExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change;
- (CPLNewChainedRecordExtractionStep)initWithStorage:(id)storage class:(Class)class classDescription:(id)description scopeIdentifier:(id)identifier maximumCount:(unint64_t)count;
- (id)shortDescription;
@end

@implementation CPLNewChainedRecordExtractionStep

- (id)shortDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"New(%@, chained)", self->_classDescription];

  return v2;
}

- (BOOL)shouldResetFromThisStepWithIncomingChange:(id)change
{
  changeCopy = change;
  recordClass = self->_recordClass;
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ([changeCopy isFullRecord] & 1) != 0;

  return v6;
}

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  maximumCount = self->_maximumCount;
  if (maximumCount >= count)
  {
    maximumCount = count;
  }

  v47 = maximumCount;
  storage = [(CPLBatchExtractionStep *)self storage];
  recordClass = self->_recordClass;
  scopeIdentifier = [(CPLBatchExtractionStep *)self scopeIdentifier];
  v13 = [storage allChangesWithClass:recordClass scopeIdentifier:scopeIdentifier changeType:0];

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
    errorCopy = error;
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
        scopedIdentifier = [v22 scopedIdentifier];
        if (([v14 containsObject:scopedIdentifier] & 1) == 0)
        {
          [v14 addObject:scopedIdentifier];
          relatedScopedIdentifier = [v22 relatedScopedIdentifier];
          v48 = v22;
          v49 = scopedIdentifier;
          if (relatedScopedIdentifier && ([v14 containsObject:relatedScopedIdentifier] & 1) == 0)
          {
            v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
            while (([v14 containsObject:relatedScopedIdentifier] & 1) == 0)
            {
              v25 = [storage changeWithScopedIdentifier:relatedScopedIdentifier];
              [v14 addObject:relatedScopedIdentifier];
              if (!v25 || ([v25 isDelete] & 1) != 0 || (objc_msgSend(v25, "isFullRecord") & 1) == 0)
              {

                break;
              }

              [v50 addObject:v25];
              relatedScopedIdentifier2 = [v25 relatedScopedIdentifier];

              relatedScopedIdentifier = relatedScopedIdentifier2;
              if (!relatedScopedIdentifier2)
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
                  [batchCopy addChange:v33 fromStorage:storage];
                  v54 = v32;
                  v34 = [storage removeChange:v33 error:&v54];
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
          [batchCopy addChange:v48 fromStorage:storage];
          v53 = v19;
          v34 = [storage removeChange:v48 error:&v53];
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

            error = errorCopy;
            goto LABEL_39;
          }

          v20 = v44;
          v17 = v45;
          scopedIdentifier = v49;
        }

        ++v21;
      }

      while (v21 != v17);
      v17 = [v15 countByEnumeratingWithState:&v59 objects:v64 count:16];
      v34 = 1;
      error = errorCopy;
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
    [batchCopy setFull:1];
  }

  if (error)
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
    *error = v19;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v34;
}

- (CPLNewChainedRecordExtractionStep)initWithStorage:(id)storage class:(Class)class classDescription:(id)description scopeIdentifier:(id)identifier maximumCount:(unint64_t)count
{
  v31 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  descriptionCopy = description;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = CPLNewChainedRecordExtractionStep;
  v16 = [(CPLBatchExtractionStep *)&v26 initWithStorage:storageCopy scopeIdentifier:identifierCopy];
  if (v16)
  {
    if ([(objc_class *)class relatedRecordClass]!= class)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          relatedRecordClass = [(objc_class *)class relatedRecordClass];
          *buf = 138412546;
          classCopy = class;
          v29 = 2112;
          v30 = relatedRecordClass;
          v23 = relatedRecordClass;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Trying to extract new %@ chained but their related record class is %@", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStep.m"];
      [currentHandler handleFailureInMethod:a2 object:v16 file:v25 lineNumber:174 description:{@"Trying to extract new %@ chained but their related record class is %@", class, -[objc_class relatedRecordClass](class, "relatedRecordClass")}];

      abort();
    }

    objc_storeStrong(&v16->_recordClass, class);
    v17 = [descriptionCopy copy];
    classDescription = v16->_classDescription;
    v16->_classDescription = v17;

    v16->_maximumCount = count;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

@end