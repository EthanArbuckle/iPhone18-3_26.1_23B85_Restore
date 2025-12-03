@interface CPLBatchExtractionStrategy
+ (id)minglingStrategyWithStorage:(id)storage coveringScopeIdentifier:(id)identifier maximumBatchSize:(unint64_t)size;
+ (id)overQuotaStrategyWithStorage:(id)storage coveringScopeIdentifier:(id)identifier;
+ (id)usualStrategyWithStorage:(id)storage coveringScopeIdentifier:(id)identifier;
+ (unint64_t)maximumAlbumsPerBatch;
+ (void)setMaximumRecordCountPerBatch:(unint64_t)batch;
- (BOOL)_hasChanges;
- (BOOL)extractBatch:(id *)batch maximumResourceSize:(unint64_t)size error:(id *)error;
- (CPLBatchExtractionStrategy)initWithName:(id)name storage:(id)storage scopeIdentifier:(id)identifier steps:(id)steps;
- (CPLBatchExtractionStrategyStorage)storage;
- (NSString)currentStepDescription;
- (NSString)stepsDescription;
- (id)cplFullDescription;
- (id)description;
- (void)_computeNextStep;
- (void)reset;
- (void)resetConditionallyFromNewIncomingChange:(id)change;
@end

@implementation CPLBatchExtractionStrategy

- (CPLBatchExtractionStrategyStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

- (id)cplFullDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  name = [(CPLBatchExtractionStrategy *)self name];
  stepsDescription = [(CPLBatchExtractionStrategy *)self stepsDescription];
  v7 = [v3 initWithFormat:@"<%@ %@ %@>", v4, name, stepsDescription];

  return v7;
}

- (NSString)stepsDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_steps, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_steps;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        shortDescription = [*(*(&v13 + 1) + 8 * i) shortDescription];
        [v3 addObject:shortDescription];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:@">"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  name = [(CPLBatchExtractionStrategy *)self name];
  v6 = [v3 initWithFormat:@"<%@ %@>", v4, name];

  return v6;
}

- (NSString)currentStepDescription
{
  currentStep = self->_currentStep;
  if (currentStep)
  {
    shortDescription = [(CPLBatchExtractionStep *)currentStep shortDescription];
  }

  else
  {
    if (self->_finished)
    {
      shortDescription = @"end";
    }

    else
    {
      shortDescription = @"start";
    }
  }

  return shortDescription;
}

- (void)resetConditionallyFromNewIncomingChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (self->_finished)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLStrategyOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412290;
        v16 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Resetting finished strategy because of %@", &v15, 0xCu);
      }
    }

    [(CPLBatchExtractionStrategy *)self reset];
  }

  else
  {
    p_currentStep = &self->_currentStep;
    if (self->_currentStep)
    {
      objectEnumerator = [(NSArray *)self->_steps objectEnumerator];
      nextObject = 0;
      while (1)
      {
        v9 = nextObject;
        nextObject = [objectEnumerator nextObject];

        if (!nextObject || nextObject == *p_currentStep)
        {
          break;
        }

        if ([nextObject shouldResetFromThisStepWithIncomingChange:changeCopy])
        {
          [*p_currentStep reset];
          objc_storeStrong(&self->_currentStep, nextObject);
          [*p_currentStep reset];
          if ((_CPLSilentLogging & 1) == 0)
          {
            v10 = __CPLStrategyOSLogDomain();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              shortDescription = [*p_currentStep shortDescription];
              v15 = 138412546;
              v16 = shortDescription;
              v17 = 2112;
              v18 = changeCopy;
              _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Resetting strategy to %@ because of %@", &v15, 0x16u);
            }
          }

          objc_storeStrong(&self->_stepEnumerator, objectEnumerator);
          goto LABEL_22;
        }
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStrategyOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          shortDescription2 = [*p_currentStep shortDescription];
          v15 = 138412546;
          v16 = shortDescription2;
          v17 = 2112;
          v18 = changeCopy;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Resetting %@ conditionnally because of %@", &v15, 0x16u);
        }
      }

      [*p_currentStep resetConditionallyFromNewIncomingChange:changeCopy];
LABEL_22:
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  currentStep = self->_currentStep;
  if (currentStep)
  {
    [(CPLBatchExtractionStep *)currentStep reset];
    v4 = self->_currentStep;
  }

  else
  {
    v4 = 0;
  }

  self->_currentStep = 0;

  stepEnumerator = self->_stepEnumerator;
  self->_stepEnumerator = 0;

  *&self->_loggedForThisStep = 0;
}

- (BOOL)extractBatch:(id *)batch maximumResourceSize:(unint64_t)size error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  if (!size)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "can't extract batches with no size", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStrategy.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v33 lineNumber:286 description:@"can't extract batches with no size"];

    abort();
  }

  if (self->_finished)
  {
    v6 = 1;
    goto LABEL_37;
  }

  if (self->_currentStep)
  {
LABEL_5:
    batchCopy = batch;
    *batch = 0;
    WeakRetained = objc_loadWeakRetained(&self->_storage);
    [WeakRetained beginExtractingBatch];

    v11 = objc_alloc_init(CPLExtractedBatch);
    batch = [(CPLExtractedBatch *)v11 batch];
    v13 = batch;
    if (self->_maximumRecordCountPerBatch)
    {
      maximumRecordCountPerBatch = self->_maximumRecordCountPerBatch;
    }

    else
    {
      maximumRecordCountPerBatch = _CPLMaximumBatchSize;
    }

    if (self->_currentStep)
    {
      v15 = [batch count];
      v16 = objc_loadWeakRetained(&self->_storage);
      v17 = [(CPLExtractedBatch *)v11 effectiveResourceSizeToUploadUsingStorage:v16];

      if (v15 < maximumRecordCountPerBatch && v17 < size)
      {
        *&v18 = 138543362;
        v34 = v18;
        while (1)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = __CPLStrategyOSLogDomain();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              shortDescription = [(CPLBatchExtractionStep *)self->_currentStep shortDescription];
              *buf = 138412290;
              v37 = shortDescription;
              _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEBUG, "Will extract changes to batch with %@", buf, 0xCu);
            }
          }

          if (![(CPLBatchExtractionStep *)self->_currentStep extractToBatch:v11 maximumCount:maximumRecordCountPerBatch - v15 maximumResourceSize:size - v17 error:error, v34])
          {
            break;
          }

          if (!self->_loggedForThisStep && [v13 count] > v15)
          {
            self->_loggedForThisStep = 1;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v21 = __CPLStrategyOSLogDomain();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                shortDescription2 = [(CPLBatchExtractionStep *)self->_currentStep shortDescription];
                *buf = v34;
                v37 = shortDescription2;
                _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Extracting batches with %{public}@", buf, 0xCu);
              }
            }
          }

          if ([(CPLExtractedBatch *)v11 isFull])
          {
            goto LABEL_33;
          }

          [(CPLBatchExtractionStrategy *)self _computeNextStep];
          if (!self->_currentStep)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v23 = __CPLStrategyOSLogDomain();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Done extracting batches", buf, 2u);
              }
            }

            [(CPLBatchExtractionStrategy *)self reset];
            self->_finished = 1;
            if (!self->_currentStep)
            {
              goto LABEL_33;
            }
          }

          v15 = [v13 count];
          v24 = objc_loadWeakRetained(&self->_storage);
          v17 = [(CPLExtractedBatch *)v11 effectiveResourceSizeToUploadUsingStorage:v24];

          if (v15 >= maximumRecordCountPerBatch || v17 >= size)
          {
            goto LABEL_32;
          }
        }

        v6 = 0;
        goto LABEL_36;
      }

LABEL_32:
      [(CPLExtractedBatch *)v11 setFull:1];
    }

LABEL_33:
    if ([v13 count])
    {
      v25 = v11;
      *batchCopy = v11;
    }

    v6 = 1;
LABEL_36:
    v26 = objc_loadWeakRetained(&self->_storage);
    [v26 cleanupAfterExtractingBatch];

    goto LABEL_37;
  }

  if ([(CPLBatchExtractionStrategy *)self _hasChanges])
  {
    if (!self->_currentStep)
    {
      [(CPLBatchExtractionStrategy *)self _computeNextStep];
    }

    goto LABEL_5;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v29 = __CPLStrategyOSLogDomain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_DEBUG, "No changes to extract, finishing immediately", buf, 2u);
    }
  }

  v6 = 1;
  self->_finished = 1;
LABEL_37:
  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_computeNextStep
{
  currentStep = self->_currentStep;
  if (currentStep)
  {
    [(CPLBatchExtractionStep *)currentStep reset];
  }

  if (!self->_stepEnumerator)
  {
    objectEnumerator = [(NSArray *)self->_steps objectEnumerator];
    stepEnumerator = self->_stepEnumerator;
    self->_stepEnumerator = objectEnumerator;
  }

  self->_loggedForThisStep = 0;
  if ([(CPLBatchExtractionStrategy *)self _hasChanges])
  {
    nextObject = [(NSEnumerator *)self->_stepEnumerator nextObject];
    v7 = self->_currentStep;
    self->_currentStep = nextObject;

    v8 = self->_currentStep;
    if (v8)
    {

      [(CPLBatchExtractionStep *)v8 reset];
    }
  }

  else
  {
    v9 = self->_currentStep;
    self->_currentStep = 0;
  }
}

- (BOOL)_hasChanges
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  LOBYTE(selfCopy) = [WeakRetained hasChangesInScopeWithIdentifier:selfCopy->_scopeIdentifier];

  return selfCopy;
}

- (CPLBatchExtractionStrategy)initWithName:(id)name storage:(id)storage scopeIdentifier:(id)identifier steps:(id)steps
{
  nameCopy = name;
  storageCopy = storage;
  identifierCopy = identifier;
  stepsCopy = steps;
  v24.receiver = self;
  v24.super_class = CPLBatchExtractionStrategy;
  v14 = [(CPLBatchExtractionStrategy *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    strategyName = v14->_strategyName;
    v14->_strategyName = v15;

    objc_storeWeak(&v14->_storage, storageCopy);
    v17 = [identifierCopy copy];
    scopeIdentifier = v14->_scopeIdentifier;
    v14->_scopeIdentifier = v17;

    v19 = [stepsCopy copy];
    steps = v14->_steps;
    v14->_steps = v19;

    v21 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v21;
  }

  return v14;
}

+ (id)minglingStrategyWithStorage:(id)storage coveringScopeIdentifier:(id)identifier maximumBatchSize:(unint64_t)size
{
  v108[24] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  identifierCopy = identifier;
  v104 = [self alloc];
  v9 = objc_opt_class();
  v10 = storageCopy;
  v11 = identifierCopy;
  v106 = [[CPLNewChainedRecordExtractionStep alloc] initWithStorage:v10 class:v9 classDescription:@"Person" scopeIdentifier:v11 maximumCount:-1];

  v108[0] = v106;
  v12 = objc_opt_class();
  v13 = +[CPLBatchExtractionStrategy maximumAlbumsPerBatch];
  v14 = v10;
  v15 = v11;
  v105 = [[CPLNewChainedRecordExtractionStep alloc] initWithStorage:v14 class:v12 classDescription:@"Album" scopeIdentifier:v15 maximumCount:v13];

  v108[1] = v105;
  v103 = [[CPLNewAssetExtractionStep alloc] initWithStorage:v14 scopeIdentifier:v15 maximumCount:-1];
  v108[2] = v103;
  v16 = objc_opt_class();
  v17 = v14;
  v18 = v15;
  v102 = [[CPLByClassExtractionStep alloc] initWithStorage:v17 scopeIdentifier:v18 description:@"New(Master)" class:v16 maximumCount:-1 query:CPLStepNew];

  v108[3] = v102;
  v19 = objc_opt_class();
  v20 = v17;
  v21 = v18;
  v101 = [[CPLByClassExtractionStep alloc] initWithStorage:v20 scopeIdentifier:v21 description:@"New(ContainerRelation)" class:v19 maximumCount:-1 query:CPLStepNew];

  v108[4] = v101;
  v22 = objc_opt_class();
  v23 = v20;
  v24 = v21;
  v100 = [[CPLByClassExtractionStep alloc] initWithStorage:v23 scopeIdentifier:v24 description:@"New(TextComment)" class:v22 maximumCount:-1 query:CPLStepNew];

  v108[5] = v100;
  v25 = objc_opt_class();
  v26 = v23;
  v27 = v24;
  v99 = [[CPLByClassExtractionStep alloc] initWithStorage:v26 scopeIdentifier:v27 description:@"New(React)" class:v25 maximumCount:-1 query:CPLStepNew];

  v108[6] = v99;
  v28 = objc_opt_class();
  v29 = v26;
  v30 = v27;
  v98 = [[CPLByClassExtractionStep alloc] initWithStorage:v29 scopeIdentifier:v30 description:@"New(FaceCrop)" class:v28 maximumCount:10 query:CPLStepNew];

  v108[7] = v98;
  v31 = objc_opt_class();
  v32 = v29;
  v33 = v30;
  v97 = [[CPLByClassExtractionStep alloc] initWithStorage:v32 scopeIdentifier:v33 description:@"New(SocialGroup)" class:v31 maximumCount:5 query:CPLStepNew];

  v108[8] = v97;
  v34 = objc_opt_class();
  v35 = v32;
  v36 = v33;
  v96 = [[CPLByClassExtractionStep alloc] initWithStorage:v35 scopeIdentifier:v36 description:@"Deleted(SocialGroup)" class:v34 maximumCount:-1 query:CPLStepDeleted];

  v108[9] = v96;
  v37 = objc_opt_class();
  v38 = v35;
  v39 = v36;
  v95 = [[CPLByClassExtractionStep alloc] initWithStorage:v38 scopeIdentifier:v39 description:@"New(Memory)" class:v37 maximumCount:5 query:CPLStepNew];

  v108[10] = v95;
  v40 = objc_opt_class();
  v41 = v38;
  v42 = v39;
  v94 = [[CPLByClassExtractionStep alloc] initWithStorage:v41 scopeIdentifier:v42 description:@"Deleted(Memory)" class:v40 maximumCount:-1 query:CPLStepDeleted];

  v108[11] = v94;
  v43 = objc_opt_class();
  v44 = v41;
  v45 = v42;
  v93 = [[CPLByClassExtractionStep alloc] initWithStorage:v44 scopeIdentifier:v45 description:@"New(Suggestion)" class:v43 maximumCount:5 query:CPLStepNew];

  v108[12] = v93;
  v46 = objc_opt_class();
  v47 = v44;
  v48 = v45;
  v92 = [[CPLByClassExtractionStep alloc] initWithStorage:v47 scopeIdentifier:v48 description:@"Deleted(React)" class:v46 maximumCount:-1 query:CPLStepDeleted];

  v108[13] = v92;
  v49 = objc_opt_class();
  v50 = v47;
  v51 = v48;
  v91 = [[CPLByClassExtractionStep alloc] initWithStorage:v50 scopeIdentifier:v51 description:@"Deleted(TextComment)" class:v49 maximumCount:-1 query:CPLStepDeleted];

  v108[14] = v91;
  v52 = objc_opt_class();
  v53 = v50;
  v54 = v51;
  v90 = [[CPLByClassExtractionStep alloc] initWithStorage:v53 scopeIdentifier:v54 description:@"Deleted(Suggestion)" class:v52 maximumCount:-1 query:CPLStepDeleted];

  v108[15] = v90;
  v55 = objc_opt_class();
  v56 = v53;
  v57 = v54;
  v89 = [[CPLByClassExtractionStep alloc] initWithStorage:v56 scopeIdentifier:v57 description:@"Deleted(FaceCrop)" class:v55 maximumCount:-1 query:CPLStepDeleted];

  v108[16] = v89;
  v58 = objc_opt_class();
  v59 = v56;
  v60 = v57;
  v88 = [[CPLByClassExtractionStep alloc] initWithStorage:v59 scopeIdentifier:v60 description:@"Deleted(ContainerRelation)" class:v58 maximumCount:-1 query:CPLStepDeleted];

  v108[17] = v88;
  v61 = objc_opt_class();
  v62 = v59;
  v63 = v60;
  v64 = [[CPLDeleteChainedRecordExtractionStep alloc] initWithStorage:v62 class:v61 classDescription:@"Album" scopeIdentifier:v63 maximumCount:-1];

  v108[18] = v64;
  v65 = objc_opt_class();
  v66 = v62;
  v67 = v63;
  v68 = [[CPLByClassExtractionStep alloc] initWithStorage:v66 scopeIdentifier:v67 description:@"Deleted(Asset)" class:v65 maximumCount:-1 query:CPLStepDeleted];

  v108[19] = v68;
  v69 = objc_opt_class();
  v70 = v66;
  v71 = v67;
  v72 = [[CPLByClassExtractionStep alloc] initWithStorage:v70 scopeIdentifier:v71 description:@"Deleted(Master)" class:v69 maximumCount:-1 query:CPLStepDeleted];

  v108[20] = v72;
  v73 = objc_opt_class();
  v74 = v70;
  v75 = v71;
  v76 = [[CPLDeleteChainedRecordExtractionStep alloc] initWithStorage:v74 class:v73 classDescription:@"Person" scopeIdentifier:v75 maximumCount:-1];

  v108[21] = v76;
  v77 = objc_opt_class();
  v78 = v74;
  v79 = v75;
  v80 = [[CPLByClassExtractionStep alloc] initWithStorage:v78 scopeIdentifier:v79 description:@"Deleted(Record)" class:v77 maximumCount:-1 query:CPLStepDeleted];

  v108[22] = v80;
  v81 = v78;
  v82 = v79;
  v83 = [[CPLByClassExtractionStep alloc] initWithStorage:v81 scopeIdentifier:v82 description:@"All" class:0 maximumCount:-1 query:CPLStepAllChanges];

  v108[23] = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:24];
  v85 = [v104 initWithName:@"mingling" storage:v81 scopeIdentifier:v82 steps:v84];

  if (size)
  {
    [v85 setMaximumRecordCountPerBatch:?];
  }

  v86 = *MEMORY[0x1E69E9840];

  return v85;
}

+ (id)overQuotaStrategyWithStorage:(id)storage coveringScopeIdentifier:(id)identifier
{
  v128[30] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  identifierCopy = identifier;
  v125 = [self alloc];
  v8 = objc_opt_class();
  v9 = storageCopy;
  v10 = identifierCopy;
  v127 = [[CPLNewChainedRecordExtractionStep alloc] initWithStorage:v9 class:v8 classDescription:@"Person" scopeIdentifier:v10 maximumCount:-1];

  v128[0] = v127;
  v11 = objc_opt_class();
  v12 = v9;
  v13 = v10;
  v126 = [[CPLByClassExtractionStep alloc] initWithStorage:v12 scopeIdentifier:v13 description:@"Deleted(ContainerRelation)" class:v11 maximumCount:-1 query:CPLStepDeleted];

  v128[1] = v126;
  v14 = objc_opt_class();
  v15 = v12;
  v16 = v13;
  v124 = [[CPLByClassExtractionStep alloc] initWithStorage:v15 scopeIdentifier:v16 description:@"Deleted(Asset)" class:v14 maximumCount:-1 query:CPLStepDeleted];

  v128[2] = v124;
  v123 = [[CPLTrashedAssetExtractionStep alloc] initWithStorage:v15 scopeIdentifier:v16 maximumCount:-1];
  v128[3] = v123;
  v122 = [[CPLNewAssetExtractionStep alloc] initWithStorage:v15 scopeIdentifier:v16 maximumCount:-1];
  v128[4] = v122;
  v17 = objc_opt_class();
  v18 = v15;
  v19 = v16;
  v121 = [[CPLByClassExtractionStep alloc] initWithStorage:v18 scopeIdentifier:v19 description:@"New(Master)" class:v17 maximumCount:-1 query:CPLStepNew];

  v128[5] = v121;
  v20 = objc_opt_class();
  v21 = +[CPLBatchExtractionStrategy maximumAlbumsPerBatch];
  v22 = v18;
  v23 = v19;
  v120 = [[CPLNewChainedRecordExtractionStep alloc] initWithStorage:v22 class:v20 classDescription:@"Album" scopeIdentifier:v23 maximumCount:v21];

  v128[6] = v120;
  v24 = objc_opt_class();
  v25 = v22;
  v26 = v23;
  v119 = [[CPLByClassExtractionStep alloc] initWithStorage:v25 scopeIdentifier:v26 description:@"NotDeleted(Person)" class:v24 maximumCount:-1 query:CPLStepNotDeleted];

  v128[7] = v119;
  v27 = objc_opt_class();
  v28 = v25;
  v29 = v26;
  v118 = [[CPLByClassExtractionStep alloc] initWithStorage:v28 scopeIdentifier:v29 description:@"NotDeleted(FaceCrop)" class:v27 maximumCount:10 query:CPLStepNotDeleted];

  v128[8] = v118;
  v30 = objc_opt_class();
  v31 = v28;
  v32 = v29;
  v117 = [[CPLByClassExtractionStep alloc] initWithStorage:v31 scopeIdentifier:v32 description:@"NotDeleted(Asset)" class:v30 maximumCount:-1 query:CPLStepNotDeleted];

  v128[9] = v117;
  v33 = objc_opt_class();
  v34 = v31;
  v35 = v32;
  v116 = [[CPLByClassExtractionStep alloc] initWithStorage:v34 scopeIdentifier:v35 description:@"NotDeleted(Master)" class:v33 maximumCount:-1 query:CPLStepNotDeleted];

  v128[10] = v116;
  v36 = objc_opt_class();
  v37 = +[CPLBatchExtractionStrategy maximumAlbumsPerBatch];
  v38 = v34;
  v39 = v35;
  v115 = [[CPLByClassExtractionStep alloc] initWithStorage:v38 scopeIdentifier:v39 description:@"NotDeleted(Album)" class:v36 maximumCount:v37 query:CPLStepNotDeleted];

  v128[11] = v115;
  v40 = objc_opt_class();
  v41 = v38;
  v42 = v39;
  v114 = [[CPLByClassExtractionStep alloc] initWithStorage:v41 scopeIdentifier:v42 description:@"NotDeleted(Container)" class:v40 maximumCount:-1 query:CPLStepNotDeleted];

  v128[12] = v114;
  v43 = objc_opt_class();
  v44 = v41;
  v45 = v42;
  v113 = [[CPLByClassExtractionStep alloc] initWithStorage:v44 scopeIdentifier:v45 description:@"New(ContainerRelation)" class:v43 maximumCount:-1 query:CPLStepNew];

  v128[13] = v113;
  v46 = objc_opt_class();
  v47 = v44;
  v48 = v45;
  v112 = [[CPLByClassExtractionStep alloc] initWithStorage:v47 scopeIdentifier:v48 description:@"NotDeleted(ContainerRelation)" class:v46 maximumCount:-1 query:CPLStepNotDeleted];

  v128[14] = v112;
  v49 = objc_opt_class();
  v50 = v47;
  v51 = v48;
  v111 = [[CPLByClassExtractionStep alloc] initWithStorage:v50 scopeIdentifier:v51 description:@"NotDeleted(TextComment)" class:v49 maximumCount:-1 query:CPLStepNotDeleted];

  v128[15] = v111;
  v52 = objc_opt_class();
  v53 = v50;
  v54 = v51;
  v110 = [[CPLByClassExtractionStep alloc] initWithStorage:v53 scopeIdentifier:v54 description:@"NotDeleted(React)" class:v52 maximumCount:-1 query:CPLStepNotDeleted];

  v128[16] = v110;
  v55 = objc_opt_class();
  v56 = v53;
  v57 = v54;
  v109 = [[CPLByClassExtractionStep alloc] initWithStorage:v56 scopeIdentifier:v57 description:@"NotDeleted(SocialGroup)" class:v55 maximumCount:5 query:CPLStepNotDeleted];

  v128[17] = v109;
  v58 = objc_opt_class();
  v59 = v56;
  v60 = v57;
  v108 = [[CPLByClassExtractionStep alloc] initWithStorage:v59 scopeIdentifier:v60 description:@"Deleted(SocialGroup)" class:v58 maximumCount:-1 query:CPLStepDeleted];

  v128[18] = v108;
  v61 = objc_opt_class();
  v62 = v59;
  v63 = v60;
  v107 = [[CPLByClassExtractionStep alloc] initWithStorage:v62 scopeIdentifier:v63 description:@"NotDeleted(Memory)" class:v61 maximumCount:5 query:CPLStepNotDeleted];

  v128[19] = v107;
  v64 = objc_opt_class();
  v65 = v62;
  v66 = v63;
  v106 = [[CPLByClassExtractionStep alloc] initWithStorage:v65 scopeIdentifier:v66 description:@"Deleted(Memory)" class:v64 maximumCount:-1 query:CPLStepDeleted];

  v128[20] = v106;
  v67 = objc_opt_class();
  v68 = v65;
  v69 = v66;
  v105 = [[CPLByClassExtractionStep alloc] initWithStorage:v68 scopeIdentifier:v69 description:@"NotDeleted(Suggestion)" class:v67 maximumCount:5 query:CPLStepNotDeleted];

  v128[21] = v105;
  v70 = objc_opt_class();
  v71 = v68;
  v72 = v69;
  v104 = [[CPLByClassExtractionStep alloc] initWithStorage:v71 scopeIdentifier:v72 description:@"Deleted(Suggestion)" class:v70 maximumCount:-1 query:CPLStepDeleted];

  v128[22] = v104;
  v73 = objc_opt_class();
  v74 = v71;
  v75 = v72;
  v103 = [[CPLByClassExtractionStep alloc] initWithStorage:v74 scopeIdentifier:v75 description:@"Deleted(React)" class:v73 maximumCount:-1 query:CPLStepDeleted];

  v128[23] = v103;
  v76 = objc_opt_class();
  v77 = v74;
  v78 = v75;
  v102 = [[CPLByClassExtractionStep alloc] initWithStorage:v77 scopeIdentifier:v78 description:@"Deleted(TextComment)" class:v76 maximumCount:-1 query:CPLStepDeleted];

  v128[24] = v102;
  v79 = objc_opt_class();
  v80 = v77;
  v81 = v78;
  v82 = [[CPLByClassExtractionStep alloc] initWithStorage:v80 scopeIdentifier:v81 description:@"Deleted(FaceCrop)" class:v79 maximumCount:-1 query:CPLStepDeleted];

  v128[25] = v82;
  v83 = objc_opt_class();
  v84 = v80;
  v85 = v81;
  v86 = [[CPLDeleteChainedRecordExtractionStep alloc] initWithStorage:v84 class:v83 classDescription:@"Album" scopeIdentifier:v85 maximumCount:-1];

  v128[26] = v86;
  v87 = objc_opt_class();
  v88 = v84;
  v89 = v85;
  v90 = [[CPLByClassExtractionStep alloc] initWithStorage:v88 scopeIdentifier:v89 description:@"Deleted(Master)" class:v87 maximumCount:-1 query:CPLStepDeleted];

  v128[27] = v90;
  v91 = objc_opt_class();
  v92 = v88;
  v93 = v89;
  v94 = [[CPLDeleteChainedRecordExtractionStep alloc] initWithStorage:v92 class:v91 classDescription:@"Person" scopeIdentifier:v93 maximumCount:-1];

  v128[28] = v94;
  v95 = v92;
  v96 = v93;
  v97 = [[CPLByClassExtractionStep alloc] initWithStorage:v95 scopeIdentifier:v96 description:@"All" class:0 maximumCount:-1 query:CPLStepAllChanges];

  v128[29] = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:30];
  v99 = [v125 initWithName:@"overQuota" storage:v95 scopeIdentifier:v96 steps:v98];

  v100 = *MEMORY[0x1E69E9840];

  return v99;
}

+ (id)usualStrategyWithStorage:(id)storage coveringScopeIdentifier:(id)identifier
{
  v129[29] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  identifierCopy = identifier;
  if (usualStrategyWithStorage_coveringScopeIdentifier__onceToken != -1)
  {
    dispatch_once(&usualStrategyWithStorage_coveringScopeIdentifier__onceToken, &__block_literal_global_4031);
  }

  if (usualStrategyWithStorage_coveringScopeIdentifier__forceOverQuotaStrategy == 1)
  {
    v8 = [self overQuotaStrategyWithStorage:storageCopy coveringScopeIdentifier:identifierCopy];
  }

  else
  {
    v123 = [self alloc];
    v9 = objc_opt_class();
    v10 = storageCopy;
    v127 = identifierCopy;
    v11 = identifierCopy;
    v126 = [[CPLNewChainedRecordExtractionStep alloc] initWithStorage:v10 class:v9 classDescription:@"Person" scopeIdentifier:v11 maximumCount:-1];

    v129[0] = v126;
    v125 = [[CPLNewAssetExtractionStep alloc] initWithStorage:v10 scopeIdentifier:v11 maximumCount:-1];
    v129[1] = v125;
    v12 = objc_opt_class();
    v128 = storageCopy;
    v13 = v10;
    v14 = v11;
    v124 = [[CPLByClassExtractionStep alloc] initWithStorage:v13 scopeIdentifier:v14 description:@"New(Master)" class:v12 maximumCount:-1 query:CPLStepNew];

    v129[2] = v124;
    v15 = objc_opt_class();
    v16 = +[CPLBatchExtractionStrategy maximumAlbumsPerBatch];
    v17 = v13;
    v18 = v14;
    v122 = [[CPLNewChainedRecordExtractionStep alloc] initWithStorage:v17 class:v15 classDescription:@"Album" scopeIdentifier:v18 maximumCount:v16];

    v129[3] = v122;
    v19 = objc_opt_class();
    v20 = v17;
    v21 = v18;
    v121 = [[CPLByClassExtractionStep alloc] initWithStorage:v20 scopeIdentifier:v21 description:@"NotDeleted(Person)" class:v19 maximumCount:-1 query:CPLStepNotDeleted];

    v129[4] = v121;
    v22 = objc_opt_class();
    v23 = v20;
    v24 = v21;
    v120 = [[CPLByClassExtractionStep alloc] initWithStorage:v23 scopeIdentifier:v24 description:@"NotDeleted(FaceCrop)" class:v22 maximumCount:10 query:CPLStepNotDeleted];

    v129[5] = v120;
    v25 = objc_opt_class();
    v26 = v23;
    v27 = v24;
    v119 = [[CPLByClassExtractionStep alloc] initWithStorage:v26 scopeIdentifier:v27 description:@"NotDeleted(Asset)" class:v25 maximumCount:-1 query:CPLStepNotDeleted];

    v129[6] = v119;
    v28 = objc_opt_class();
    v29 = v26;
    v30 = v27;
    v118 = [[CPLByClassExtractionStep alloc] initWithStorage:v29 scopeIdentifier:v30 description:@"New(ContainerRelation)" class:v28 maximumCount:-1 query:CPLStepNew];

    v129[7] = v118;
    v31 = objc_opt_class();
    v32 = v29;
    v33 = v30;
    v117 = [[CPLByClassExtractionStep alloc] initWithStorage:v32 scopeIdentifier:v33 description:@"NotDeleted(Master)" class:v31 maximumCount:-1 query:CPLStepNotDeleted];

    v129[8] = v117;
    v34 = objc_opt_class();
    v35 = +[CPLBatchExtractionStrategy maximumAlbumsPerBatch];
    v36 = v32;
    v37 = v33;
    v116 = [[CPLByClassExtractionStep alloc] initWithStorage:v36 scopeIdentifier:v37 description:@"NotDeleted(Album)" class:v34 maximumCount:v35 query:CPLStepNotDeleted];

    v129[9] = v116;
    v38 = objc_opt_class();
    v39 = v36;
    v40 = v37;
    v115 = [[CPLByClassExtractionStep alloc] initWithStorage:v39 scopeIdentifier:v40 description:@"NotDeleted(Container)" class:v38 maximumCount:-1 query:CPLStepNotDeleted];

    v129[10] = v115;
    v41 = objc_opt_class();
    v42 = v39;
    v43 = v40;
    v114 = [[CPLByClassExtractionStep alloc] initWithStorage:v42 scopeIdentifier:v43 description:@"NotDeleted(ContainerRelation)" class:v41 maximumCount:-1 query:CPLStepNotDeleted];

    v129[11] = v114;
    v44 = objc_opt_class();
    v45 = v42;
    v46 = v43;
    v113 = [[CPLByClassExtractionStep alloc] initWithStorage:v45 scopeIdentifier:v46 description:@"NotDeleted(TextComment)" class:v44 maximumCount:-1 query:CPLStepNotDeleted];

    v129[12] = v113;
    v47 = objc_opt_class();
    v48 = v45;
    v49 = v46;
    v112 = [[CPLByClassExtractionStep alloc] initWithStorage:v48 scopeIdentifier:v49 description:@"NotDeleted(React)" class:v47 maximumCount:-1 query:CPLStepNotDeleted];

    v129[13] = v112;
    v50 = objc_opt_class();
    v51 = v48;
    v52 = v49;
    v111 = [[CPLByClassExtractionStep alloc] initWithStorage:v51 scopeIdentifier:v52 description:@"NotDeleted(SocialGroup)" class:v50 maximumCount:5 query:CPLStepNotDeleted];

    v129[14] = v111;
    v53 = objc_opt_class();
    v54 = v51;
    v55 = v52;
    v110 = [[CPLByClassExtractionStep alloc] initWithStorage:v54 scopeIdentifier:v55 description:@"Deleted(SocialGroup)" class:v53 maximumCount:-1 query:CPLStepDeleted];

    v129[15] = v110;
    v56 = objc_opt_class();
    v57 = v54;
    v58 = v55;
    v109 = [[CPLByClassExtractionStep alloc] initWithStorage:v57 scopeIdentifier:v58 description:@"NotDeleted(Memory)" class:v56 maximumCount:5 query:CPLStepNotDeleted];

    v129[16] = v109;
    v59 = objc_opt_class();
    v60 = v57;
    v61 = v58;
    v108 = [[CPLByClassExtractionStep alloc] initWithStorage:v60 scopeIdentifier:v61 description:@"Deleted(Memory)" class:v59 maximumCount:-1 query:CPLStepDeleted];

    v129[17] = v108;
    v62 = objc_opt_class();
    v63 = v60;
    v64 = v61;
    v107 = [[CPLByClassExtractionStep alloc] initWithStorage:v63 scopeIdentifier:v64 description:@"NotDeleted(Suggestion)" class:v62 maximumCount:5 query:CPLStepNotDeleted];

    v129[18] = v107;
    v65 = objc_opt_class();
    v66 = v63;
    v67 = v64;
    v106 = [[CPLByClassExtractionStep alloc] initWithStorage:v66 scopeIdentifier:v67 description:@"Deleted(React)" class:v65 maximumCount:-1 query:CPLStepDeleted];

    v129[19] = v106;
    v68 = objc_opt_class();
    v69 = v66;
    v70 = v67;
    v105 = [[CPLByClassExtractionStep alloc] initWithStorage:v69 scopeIdentifier:v70 description:@"Deleted(TextComment)" class:v68 maximumCount:-1 query:CPLStepDeleted];

    v129[20] = v105;
    v71 = objc_opt_class();
    v72 = v69;
    v73 = v70;
    v104 = [[CPLByClassExtractionStep alloc] initWithStorage:v72 scopeIdentifier:v73 description:@"Deleted(Suggestion)" class:v71 maximumCount:-1 query:CPLStepDeleted];

    v129[21] = v104;
    v74 = objc_opt_class();
    v75 = v72;
    v76 = v73;
    v103 = [[CPLByClassExtractionStep alloc] initWithStorage:v75 scopeIdentifier:v76 description:@"Deleted(FaceCrop)" class:v74 maximumCount:-1 query:CPLStepDeleted];

    v129[22] = v103;
    v77 = objc_opt_class();
    v78 = v75;
    v79 = v76;
    v102 = [[CPLByClassExtractionStep alloc] initWithStorage:v78 scopeIdentifier:v79 description:@"Deleted(ContainerRelation)" class:v77 maximumCount:-1 query:CPLStepDeleted];

    v129[23] = v102;
    v80 = objc_opt_class();
    v81 = v78;
    v82 = v79;
    v83 = [[CPLDeleteChainedRecordExtractionStep alloc] initWithStorage:v81 class:v80 classDescription:@"Album" scopeIdentifier:v82 maximumCount:-1];

    v129[24] = v83;
    v84 = objc_opt_class();
    v85 = v81;
    v86 = v82;
    v87 = [[CPLByClassExtractionStep alloc] initWithStorage:v85 scopeIdentifier:v86 description:@"Deleted(Asset)" class:v84 maximumCount:-1 query:CPLStepDeleted];

    v129[25] = v87;
    v88 = objc_opt_class();
    v89 = v85;
    v90 = v86;
    v91 = [[CPLByClassExtractionStep alloc] initWithStorage:v89 scopeIdentifier:v90 description:@"Deleted(Master)" class:v88 maximumCount:-1 query:CPLStepDeleted];

    v129[26] = v91;
    v92 = objc_opt_class();
    v93 = v89;
    v94 = v90;
    v95 = [[CPLDeleteChainedRecordExtractionStep alloc] initWithStorage:v93 class:v92 classDescription:@"Person" scopeIdentifier:v94 maximumCount:-1];

    v129[27] = v95;
    v96 = v93;
    v97 = v94;
    v98 = [[CPLByClassExtractionStep alloc] initWithStorage:v96 scopeIdentifier:v97 description:@"All" class:0 maximumCount:-1 query:CPLStepAllChanges];

    v129[28] = v98;
    v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:29];
    v8 = [v123 initWithName:@"usual" storage:v96 scopeIdentifier:v97 steps:v99];

    identifierCopy = v127;
    storageCopy = v128;
  }

  v100 = *MEMORY[0x1E69E9840];

  return v8;
}

void __79__CPLBatchExtractionStrategy_usualStrategyWithStorage_coveringScopeIdentifier___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  usualStrategyWithStorage_coveringScopeIdentifier__forceOverQuotaStrategy = [v0 BOOLForKey:@"CPLForceOverQuotaStrategy"];

  if (usualStrategyWithStorage_coveringScopeIdentifier__forceOverQuotaStrategy == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v1 = __CPLStrategyOSLogDomain();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1DC05A000, v1, OS_LOG_TYPE_DEFAULT, "Forcing over quota stragegy", v2, 2u);
    }
  }
}

+ (unint64_t)maximumAlbumsPerBatch
{
  if (_maximumAlbumsPerBatch <= 1)
  {
    return 1;
  }

  else
  {
    return _maximumAlbumsPerBatch;
  }
}

+ (void)setMaximumRecordCountPerBatch:(unint64_t)batch
{
  batchCopy = 100;
  if (batch)
  {
    batchCopy = batch;
  }

  if (batchCopy <= 1)
  {
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v7;
    v21 = v8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Maximum record count is too low", v15, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLBatchExtractionStrategy.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:61 description:@"Maximum record count is too low"];

    abort();
  }

  _CPLMaximumBatchSize = batchCopy;
}

@end