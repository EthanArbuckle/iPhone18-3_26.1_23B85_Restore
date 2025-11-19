@interface HDHealthRecordFindReferencesTask
- (BOOL)_canProcessResource:(id)a3;
- (BOOL)_isIrretrievableReference:(id)a3 serverBaseURL:(id)a4;
- (BOOL)_resourceReference:(id)a3 containedInResource:(id)a4;
- (BOOL)processContainedResourcesInProcessingContext:(id)a3 error:(id *)a4;
- (HDHealthRecordFindReferencesTask)init;
- (HDHealthRecordFindReferencesTask)initWithRuleset:(id)a3;
- (id)_filterResources:(id)a3;
- (id)_processedContainReferencesResourceWithResource:(id)a3 processingContext:(id)a4 rule:(id)a5 allResources:(id)a6;
- (id)_processedRetrieveReferencesResourceWithResource:(id)a3 processingContext:(id)a4 rule:(id)a5 allResources:(id)a6;
- (id)_resourceForReference:(id)a3 containedInResource:(id)a4 error:(id *)a5;
- (id)_resourceReference:(id)a3 presentInResources:(id)a4;
- (id)debugDescription;
- (id)processResourcesForReferenceExtractionRequest:(id)a3 error:(id *)a4;
@end

@implementation HDHealthRecordFindReferencesTask

- (HDHealthRecordFindReferencesTask)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthRecordFindReferencesTask)initWithRuleset:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(HDHealthRecordFindReferencesTask *)a2 initWithRuleset:?];
  }

  v10.receiver = self;
  v10.super_class = HDHealthRecordFindReferencesTask;
  v7 = [(HDHealthRecordFindReferencesTask *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_ruleset, a3);
  }

  return v8;
}

- (id)processResourcesForReferenceExtractionRequest:(id)a3 error:(id *)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(HDReferenceExtractionProcessingContext);
  v95 = objc_alloc_init(HKHealthRecordsExtractionRouter);
  v7 = [v5 resources];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    v9 = [v5 resources];
    v92 = [v8 initWithArray:v9];
  }

  else
  {
    v92 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v96 = v6;
  v97 = self;

  v94 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [v5 serverBaseURL];
  v91 = v90 = v5;
  [v5 FHIRResourceData];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v10 = v112 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v109 objects:v122 count:16];
  v93 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v110;
    v15 = 0x277D12000uLL;
    while (1)
    {
      v16 = 0;
      obj = v12;
      do
      {
        if (*v110 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v109 + 1) + 8 * v16);
        v18 = *(v15 + 880);
        v108 = 0;
        v19 = [v18 objectWithResourceData:v17 error:&v108];
        v20 = v108;
        if (!v19)
        {
          v41 = v13;
          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v86 = v42;
            v87 = [(HDHealthRecordFindReferencesTask *)v97 debugDescription];
            v88 = [v17 debugDescription];
            *buf = 138543874;
            v117 = v87;
            v118 = 2114;
            v119 = v88;
            v120 = 2114;
            v121 = v20;
            _os_log_error_impl(&dword_251CC8000, v86, OS_LOG_TYPE_ERROR, "%{public}@: failed to parse JSON data %{public}@: %{public}@", buf, 0x20u);
          }

          v43 = [MEMORY[0x277CCA9B8] hrs_resourceParsingErrorWithUnderlyingError:v20];
          v44 = v43;
          v45 = v90;
          v46 = v96;
          if (v43)
          {
            if (a4)
            {
              v47 = v43;
              v48 = 0;
              *a4 = v44;
LABEL_59:
              v82 = v44;
              v83 = v93;
              v81 = v93;
              goto LABEL_60;
            }

            _HKLogDroppedError();
          }

          v48 = 0;
          goto LABEL_59;
        }

        v21 = [v19 detectedResourceType];
        v22 = [v21 isEqualToString:@"Bundle"];

        if (!v22)
        {
          v25 = v14;
          v26 = v13;
          v27 = MEMORY[0x277D12380];
          v28 = [v19 JSONObject];
          v29 = [v19 sourceURL];
          v30 = [v19 FHIRVersion];
          v106 = v20;
          v31 = [v27 resourceObjectWithJSONObject:v28 sourceURL:v29 FHIRVersion:v30 receivedDate:v94 extractionHints:0 error:&v106];
          v24 = v106;

          if (v31)
          {
            [v92 addObject:v31];
            v10 = v93;
            goto LABEL_17;
          }

          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC2C0];
          v10 = v93;
          v13 = v26;
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v36 = v34;
            v37 = [(HDHealthRecordFindReferencesTask *)v97 debugDescription];
            *buf = 138543618;
            v117 = v37;
            v118 = 2114;
            v119 = v24;
            _os_log_error_impl(&dword_251CC8000, v36, OS_LOG_TYPE_ERROR, "%{public}@: invalid resourceObject error: %{public}@", buf, 0x16u);

LABEL_17:
            v13 = v26;
          }

          v14 = v25;
          v15 = 0x277D12000;
          v12 = obj;
          goto LABEL_22;
        }

        if (v13)
        {
          _HKInitializeLogging();
          v23 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            [(HDHealthRecordFindReferencesTask *)v114 processResourcesForReferenceExtractionRequest:v23 error:v97, &v115];
          }

          v24 = v20;
        }

        else
        {
          v107 = v20;
          v13 = [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:v19 serverBaseURL:v91 error:&v107];
          v24 = v107;

          if (v13)
          {
            v32 = [v13 entries];
            v33 = [(HDHealthRecordFindReferencesTask *)v97 _filterResources:v32];

            [v92 addObjectsFromArray:v33];
          }

          else
          {
            _HKInitializeLogging();
            v35 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
            {
              v38 = v35;
              v39 = [(HDHealthRecordFindReferencesTask *)v97 debugDescription];
              *buf = 138543618;
              v117 = v39;
              v118 = 2114;
              v119 = v24;
              _os_log_error_impl(&dword_251CC8000, v38, OS_LOG_TYPE_ERROR, "%{public}@: invalid bundle error: %{public}@", buf, 0x16u);
            }

            v13 = 0;
          }
        }

LABEL_22:

        v16 = v16 + 1;
      }

      while (v12 != v16);
      v40 = [v10 countByEnumeratingWithState:&v109 objects:v122 count:16];
      v12 = v40;
      if (!v40)
      {
        goto LABEL_36;
      }
    }
  }

  v13 = 0;
LABEL_36:
  v89 = v13;

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obja = v92;
  v49 = [obja countByEnumeratingWithState:&v102 objects:v113 count:16];
  v46 = v96;
  p_isa = &v97->super.isa;
  if (v49)
  {
    v51 = v49;
    v52 = *v103;
    do
    {
      v53 = 0;
      v99 = v51;
      do
      {
        if (*v103 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v102 + 1) + 8 * v53);
        if ([p_isa _canProcessResource:v54])
        {
          v55 = [p_isa[1] rulesetForFHIRResourceObject:v54];
          if (v55)
          {
            v56 = [p_isa _processedContainReferencesResourceWithResource:v54 processingContext:v46 rule:v55 allResources:obja];
            v57 = [p_isa _processedRetrieveReferencesResourceWithResource:v56 processingContext:v46 rule:v55 allResources:obja];

            [(HDReferenceExtractionProcessingContext *)v46 recordProcessedResource:v57];
          }

          else
          {
            v61 = [p_isa[1] releaseSupport];
            v62 = [v61 FHIRRelease];
            v63 = [(HKHealthRecordsExtractionRouter *)v95 supportedResourceTypesForRelease:v62];
            v64 = [v54 identifier];
            v65 = [v64 resourceType];
            v66 = [v63 containsObject:v65];

            if (v66)
            {
              _HKInitializeLogging();
              v67 = *MEMORY[0x277CCC2C0];
              p_isa = &v97->super.isa;
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                v72 = v67;
                v73 = [(HDHealthRecordFindReferencesTask *)v97 debugDescription];
                v74 = [v54 identifier];
                v75 = [v74 resourceType];
                *buf = 138543618;
                v117 = v73;
                v118 = 2114;
                v119 = v75;
                _os_log_debug_impl(&dword_251CC8000, v72, OS_LOG_TYPE_DEBUG, "%{public}@ processResourcesForReferenceExtractionRequest: resource type %{public}@. Skipping Reference extraction.", buf, 0x16u);
              }

              v46 = v96;
              [(HDReferenceExtractionProcessingContext *)v96 recordProcessedResource:v54];
            }

            else
            {
              v68 = [v54 identifier];
              v69 = [v68 resourceType];
              v70 = [v69 isEqualToString:@"Medication"];

              v46 = v96;
              p_isa = &v97->super.isa;
              if ((v70 & 1) == 0)
              {
                _HKInitializeLogging();
                v71 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                {
                  v76 = v71;
                  v77 = [(HDHealthRecordFindReferencesTask *)v97 debugDescription];
                  v78 = [v54 identifier];
                  v79 = [v78 resourceType];
                  *buf = 138543618;
                  v117 = v77;
                  v118 = 2114;
                  v119 = v79;
                  _os_log_error_impl(&dword_251CC8000, v76, OS_LOG_TYPE_ERROR, "%{public}@ processResourcesForReferenceExtractionRequest: no extraction rules for resource type %{public}@", buf, 0x16u);
                }
              }
            }
          }

          v51 = v99;
        }

        else
        {
          _HKInitializeLogging();
          v58 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v59 = v58;
            v60 = [p_isa debugDescription];
            *buf = 138543618;
            v117 = v60;
            v118 = 2114;
            v119 = v54;
            _os_log_error_impl(&dword_251CC8000, v59, OS_LOG_TYPE_ERROR, "%{public}@ processResourcesForReferenceExtractionRequest: cannot process resource: %{public}@", buf, 0x16u);
          }
        }

        ++v53;
      }

      while (v51 != v53);
      v51 = [obja countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v51);
  }

  v80 = objc_alloc(MEMORY[0x277D123C8]);
  v81 = [(HDReferenceExtractionProcessingContext *)v46 completeResources];
  v20 = [(HDReferenceExtractionProcessingContext *)v46 incompleteResources];
  v82 = [(HDReferenceExtractionProcessingContext *)v46 unresolvableReferences];
  v41 = v89;
  v44 = [v89 nextPageURL];
  v48 = [v80 initWithCompleteResources:v81 incompleteResources:v20 unresolvableReferences:v82 nextSearchResultURL:v44];
  v45 = v90;
  v83 = v93;
LABEL_60:

  v84 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)_processedContainReferencesResourceWithResource:(id)a3 processingContext:(id)a4 rule:(id)a5 allResources:(id)a6
{
  v87 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v62 = a6;
  v13 = [v10 identifier];
  v51 = [v13 resourceType];

  v14 = [v10 serverBaseURL];
  v15 = v10;
  v16 = v11;
  v17 = v14;
  v18 = v15;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v48 = v12;
  obj = [v12 containReferences];
  v49 = v18;
  v53 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v53)
  {
    v52 = *v72;
    v63 = v16;
    v61 = v14;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v72 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v71 + 1) + 8 * i);
        v21 = [v18 JSONObject];
        v70 = 0;
        v22 = [HDFHIRReferenceProcessor referencesAtKeyPath:v20 resourceDictionary:v21 error:&v70];
        v23 = v70;

        if (v22)
        {
          v54 = v23;
          v55 = v22;
          v56 = i;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = v22;
          v24 = [v64 countByEnumeratingWithState:&v66 objects:v85 count:16];
          v17 = v61;
          v25 = MEMORY[0x277CCC2C0];
          if (v24)
          {
            v26 = v24;
            v27 = *v67;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v67 != v27)
                {
                  objc_enumerationMutation(v64);
                }

                v29 = *(*(&v66 + 1) + 8 * j);
                if ([(HDHealthRecordFindReferencesTask *)self _isIrretrievableReference:v29 serverBaseURL:v17])
                {
                  [v16 recordUnresolvableReference:v29 forResource:v18 hint:1];
                }

                else if ([(HDHealthRecordFindReferencesTask *)self _resourceReference:v29 containedInResource:v18])
                {
                  _HKInitializeLogging();
                  v30 = *v25;
                  if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
                  {
                    [HDHealthRecordFindReferencesTask _processedContainReferencesResourceWithResource:v75 processingContext:v30 rule:self allResources:&v76];
                  }
                }

                else
                {
                  if ([HDFHIRReferenceProcessor referenceRequiresContaining:v29]|| ([(HDHealthRecordFindReferencesTask *)self _resourceReference:v29 presentInResources:v62], (v31 = objc_claimAutoreleasedReturnValue()) == 0))
                  {
                    _HKInitializeLogging();
                    v37 = *v25;
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                    {
                      v39 = v37;
                      v40 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                      *buf = 138543618;
                      v78 = v40;
                      v79 = 2114;
                      v80 = v29;
                      _os_log_debug_impl(&dword_251CC8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ containReferences: referenced resource not present, marking unresolved: %{public}@", buf, 0x16u);
                    }

                    [v16 recordUnresolvedReference:v29 forResource:v18];
                  }

                  else
                  {
                    v32 = v31;
                    _HKInitializeLogging();
                    v33 = *v25;
                    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
                    {
                      v41 = v33;
                      v42 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                      *buf = 138543618;
                      v78 = v42;
                      v79 = 2114;
                      v80 = v32;
                      _os_log_debug_impl(&dword_251CC8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ containReferences: found resource %{public}@, containing", buf, 0x16u);

                      v25 = MEMORY[0x277CCC2C0];
                    }

                    v65 = 0;
                    v34 = [HDFHIRReferenceProcessor newResourceFromResource:v18 containingResource:v32 reference:v29 error:&v65];
                    v35 = v65;
                    if (v34)
                    {
                      v36 = v34;

                      [v63 recordContainedResource:v32];
                      v18 = v36;
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v38 = *v25;
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        log = v38;
                        v58 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                        v59 = [v32 identifier];
                        v57 = [v59 resourceType];
                        *buf = 138544130;
                        v78 = v58;
                        v79 = 2114;
                        v80 = v57;
                        v81 = 2114;
                        v82 = v51;
                        v83 = 2114;
                        v84 = v35;
                        _os_log_error_impl(&dword_251CC8000, log, OS_LOG_TYPE_ERROR, "%{public}@ containReferences: failed to contain resource %{public}@ in resource %{public}@: %{public}@", buf, 0x2Au);
                      }

                      [v63 recordUnresolvedReference:v29 forResource:v18];
                    }

                    v16 = v63;
                    v17 = v61;
                  }

                  v25 = MEMORY[0x277CCC2C0];
                }
              }

              v26 = [v64 countByEnumeratingWithState:&v66 objects:v85 count:16];
            }

            while (v26);
          }

          v22 = v55;
          i = v56;
          v23 = v54;
        }

        else
        {
          _HKInitializeLogging();
          v43 = *MEMORY[0x277CCC2C0];
          v17 = v61;
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v44 = v43;
            v45 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
            *buf = 138543874;
            v78 = v45;
            v79 = 2114;
            v80 = v51;
            v81 = 2114;
            v82 = v23;
            _os_log_error_impl(&dword_251CC8000, v44, OS_LOG_TYPE_ERROR, "%{public}@ containReferences: invalid reference on %{public}@ resource: %{public}@", buf, 0x20u);

            v17 = v61;
          }

          [v16 recordUnresolvableReference:v20 forResource:v18 hint:2];
        }
      }

      v53 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v53);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_processedRetrieveReferencesResourceWithResource:(id)a3 processingContext:(id)a4 rule:(id)a5 allResources:(id)a6
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v64 = a4;
  v11 = a5;
  v12 = v10;
  v13 = v11;
  v62 = a6;
  v14 = [v10 identifier];
  v52 = [v14 resourceType];

  v15 = [v10 serverBaseURL];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v51 = v13;
  obj = [v13 retrieveReferences];
  v55 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v55)
  {
    v54 = *v72;
    v63 = v10;
    do
    {
      v16 = 0;
      do
      {
        if (*v72 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v71 + 1) + 8 * v16);
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
        {
          v46 = v18;
          v47 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
          *buf = 138543874;
          v77 = v47;
          v78 = 2114;
          v79 = v17;
          v80 = 2114;
          v81 = v63;
          _os_log_debug_impl(&dword_251CC8000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: attempting to retrieve %{public}@ in %{public}@", buf, 0x20u);
        }

        v57 = v16;
        v19 = [v63 JSONObject];
        v70 = 0;
        v20 = [HDFHIRReferenceProcessor referencesAtKeyPath:v17 resourceDictionary:v19 error:&v70];
        v21 = v70;

        if (!v20)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC2C0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v23 = v28;
          v24 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
          *buf = 138544130;
          v77 = v24;
          v78 = 2114;
          v79 = v17;
          v80 = 2114;
          v81 = v52;
          v82 = 2114;
          v83 = v21;
          v25 = v23;
          v26 = "%{public}@ retrieveReferences: invalid reference at %{public}@ on %{public}@ resource: %{public}@";
          v27 = 42;
          goto LABEL_40;
        }

        v12 = v63;
        if (![v20 count])
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC2C0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
LABEL_13:
            v12 = v63;
            [v64 recordUnresolvableReference:v17 forResource:v63 hint:2];
            goto LABEL_14;
          }

          v23 = v22;
          v24 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
          *buf = 138543874;
          v77 = v24;
          v78 = 2114;
          v79 = v17;
          v80 = 2114;
          v81 = v52;
          v25 = v23;
          v26 = "%{public}@ retrieveReferences: reference %{public}@ on %{public}@ not present";
          v27 = 32;
LABEL_40:
          _os_log_error_impl(&dword_251CC8000, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);

          goto LABEL_13;
        }

LABEL_14:
        v56 = v21;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v29 = v20;
        v30 = [v29 countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (!v30)
        {
          goto LABEL_37;
        }

        v31 = v30;
        v32 = *v67;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v67 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v66 + 1) + 8 * i);
            if ([(HDHealthRecordFindReferencesTask *)self _isIrretrievableReference:v34 serverBaseURL:v15])
            {
              [v64 recordUnresolvableReference:v34 forResource:v12 hint:1];
              continue;
            }

            v35 = v15;
            v65 = 0;
            v36 = [(HDHealthRecordFindReferencesTask *)self _resourceForReference:v34 containedInResource:v12 error:&v65];
            v37 = v65;
            if (v36)
            {
              _HKInitializeLogging();
              v38 = *MEMORY[0x277CCC2C0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                v43 = v38;
                v44 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                *buf = 138543618;
                v77 = v44;
                v78 = 2114;
                v79 = v36;
                _os_log_debug_impl(&dword_251CC8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: resource %{public}@ was contained", buf, 0x16u);
              }

              [v64 recordContainedResource:v36];
            }

            else
            {
              if ([HDFHIRReferenceProcessor referenceRequiresContaining:v34]|| ([(HDHealthRecordFindReferencesTask *)self _resourceReference:v34 presentInResources:v62], (v39 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                _HKInitializeLogging();
                v42 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
                {
                  loga = v42;
                  v58 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                  v59 = HKSensitiveLogItem();
                  *buf = 138543618;
                  v77 = v58;
                  v78 = 2114;
                  v79 = v59;
                  _os_log_debug_impl(&dword_251CC8000, loga, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: referenced resource not present, marking unresolved: %{public}@", buf, 0x16u);
                }

                v12 = v63;
                [v64 recordUnresolvedReference:v34 forResource:v63];
                goto LABEL_34;
              }

              v40 = v39;
              _HKInitializeLogging();
              v41 = *MEMORY[0x277CCC2C0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
              {
                v45 = v41;
                log = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                *buf = 138543618;
                v77 = log;
                v78 = 2114;
                v79 = v40;
                _os_log_debug_impl(&dword_251CC8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ retrieveReferences: found resource %{public}@", buf, 0x16u);
              }

              [v64 recordProcessedResource:v40];
            }

            v12 = v63;
LABEL_34:

            v15 = v35;
          }

          v31 = [v29 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v31);
LABEL_37:

        v16 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v48 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
      v55 = v48;
    }

    while (v48);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)processContainedResourcesInProcessingContext:(id)a3 error:(id *)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v58 = a3;
  [v58 resources];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v5 = v72 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v70;
    v9 = 0x2796E1000uLL;
    v57 = self;
    v47 = *v70;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v70 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v69 + 1) + 8 * i);
        if ([(HDHealthRecordFindReferencesTask *)self _canProcessResource:v11])
        {
          v12 = [(HDHealthRecordRuleset *)self->_ruleset rulesetForFHIRResourceObject:v11];
          if (!v12)
          {
            continue;
          }

          v13 = v12;
          v68 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          obj = [v12 retrieveReferences];
          v52 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
          if (v52)
          {
            v54 = *v66;
            v48 = i;
            v49 = v5;
            v46 = v7;
            v50 = v13;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v66 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v65 + 1) + 8 * j);
                _HKInitializeLogging();
                v16 = *MEMORY[0x277CCC2C0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
                {
                  v35 = v16;
                  v36 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                  *buf = 138543874;
                  v75 = v36;
                  v76 = 2114;
                  v77 = v15;
                  v78 = 2114;
                  v79 = v11;
                  _os_log_debug_impl(&dword_251CC8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@ processContainedResources: looking at %{public}@ in %{public}@", buf, 0x20u);
                }

                v17 = *(v9 + 3552);
                v18 = [v11 JSONObject];
                v64 = 0;
                v19 = [v17 referencesAtKeyPath:v15 resourceDictionary:v18 error:&v64];
                v20 = v64;

                if (v19)
                {
                  v53 = v20;
                  v51 = j;
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v21 = v19;
                  v22 = [v21 countByEnumeratingWithState:&v60 objects:v73 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = *v61;
                    while (2)
                    {
                      for (k = 0; k != v23; ++k)
                      {
                        if (*v61 != v24)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v26 = *(*(&v60 + 1) + 8 * k);
                        v59 = 0;
                        v27 = [(HDHealthRecordFindReferencesTask *)self _resourceForReference:v26 containedInResource:v11 error:&v59];
                        v28 = v59;
                        if (v27)
                        {
                          v29 = [v27 copyWithOriginDataFrom:v11];
                          _HKInitializeLogging();
                          v30 = *MEMORY[0x277CCC2C0];
                          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEBUG))
                          {
                            v32 = v30;
                            v33 = [(HDHealthRecordFindReferencesTask *)v57 debugDescription];
                            *buf = 138543618;
                            v75 = v33;
                            v76 = 2114;
                            v77 = v29;
                            _os_log_debug_impl(&dword_251CC8000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ processContainedResources: found contained resource %{public}@", buf, 0x16u);
                          }

                          v31 = [v58 foundResource:v29 parentResource:v11 error:a4];

                          self = v57;
                          if (!v31)
                          {

                            v43 = 0;
                            v5 = v49;
                            goto LABEL_41;
                          }
                        }
                      }

                      v23 = [v21 countByEnumeratingWithState:&v60 objects:v73 count:16];
                      if (v23)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v9 = 0x2796E1000;
                  i = v48;
                  j = v51;
                  v20 = v53;
                }

                else
                {
                  _HKInitializeLogging();
                  v34 = *MEMORY[0x277CCC2C0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
                  {
                    v37 = v34;
                    v38 = [(HDHealthRecordFindReferencesTask *)self debugDescription];
                    v39 = [v50 resourceName];
                    *buf = 138544130;
                    v75 = v38;
                    v76 = 2114;
                    v77 = v15;
                    v78 = 2114;
                    v79 = v39;
                    v80 = 2114;
                    v81 = v20;
                    _os_log_error_impl(&dword_251CC8000, v37, OS_LOG_TYPE_ERROR, "%{public}@ processContainedResources: invalid reference at %{public}@ on %{public}@ resource: %{public}@", buf, 0x2Au);

                    self = v57;
                  }
                }
              }

              v5 = v49;
              v13 = v50;
              v8 = v47;
              v7 = v46;
              v52 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
            }

            while (v52);
          }
        }

        else
        {
          _HKInitializeLogging();
          v40 = *MEMORY[0x277CCC2C0];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            continue;
          }

          v13 = v40;
          [(HDHealthRecordFindReferencesTask *)self debugDescription];
          v42 = v41 = v7;
          *buf = 138543618;
          v75 = v42;
          v76 = 2114;
          v77 = v11;
          _os_log_error_impl(&dword_251CC8000, v13, OS_LOG_TYPE_ERROR, "%{public}@ processContainedResources: cannot process resource: %{public}@", buf, 0x16u);

          v7 = v41;
          v8 = v47;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v69 objects:v83 count:16];
      v43 = 1;
      if (!v7)
      {
        goto LABEL_41;
      }
    }
  }

  v43 = 1;
LABEL_41:

  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

- (BOOL)_canProcessResource:(id)a3
{
  v4 = [a3 FHIRVersion];
  v5 = [v4 FHIRRelease];

  v6 = [(HDHealthRecordRuleset *)self->_ruleset FHIRRelease];
  LOBYTE(self) = v5 == v6;

  return self;
}

- (id)_filterResources:(id)a3
{
  v3 = [a3 hk_filter:&__block_literal_global_1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

uint64_t __53__HDHealthRecordFindReferencesTask__filterResources___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 resourceType];
  v4 = [v3 isEqualToString:@"OperationOutcome"];

  return v4 ^ 1u;
}

- (BOOL)_isIrretrievableReference:(id)a3 serverBaseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && [HDFHIRReferenceProcessor referenceIsAbsolute:v6])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    v9 = v8 == 0;
    if (!v8)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HDHealthRecordFindReferencesTask _isIrretrievableReference:v10 serverBaseURL:self];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_resourceReference:(id)a3 containedInResource:(id)a4
{
  v11 = 0;
  v5 = [HDFHIRReferenceProcessor resourceContainedInResource:a4 reference:a3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HDHealthRecordFindReferencesTask _resourceReference:v9 containedInResource:self];
    }
  }

  return v5 != 0;
}

- (id)_resourceReference:(id)a3 presentInResources:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 identifier];
        v13 = [HDFHIRReferenceProcessor reference:v5 matchesIdentifier:v12];

        if (v13)
        {
          v7 = v10;
          objc_autoreleasePoolPop(v11);
          goto LABEL_11;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_resourceForReference:(id)a3 containedInResource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [HDFHIRReferenceProcessor resourceContainedInResource:v8 reference:v7 error:a5];
  if (v9 && [HDFHIRReferenceProcessor referenceRequiresContaining:v7])
  {
    v10 = [v9 JSONObject];
    v11 = [v10 mutableCopy];

    v12 = [HDFHIRReferenceProcessor identifierForResource:v9 containedInResource:v8 error:a5];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 identifier];
      [v11 setObject:v14 forKeyedSubscript:@"id"];

      v15 = MEMORY[0x277D12380];
      v16 = [v9 FHIRVersion];
      v17 = [v9 receivedDate];
      v18 = [v15 resourceObjectWithJSONObject:v11 serverBaseURL:0 FHIRVersion:v16 receivedDate:v17 error:a5];

      v9 = v11;
    }

    else
    {
      v18 = 0;
      v13 = v11;
    }

    v9 = v18;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(HDHealthRecordRuleset *)self->_ruleset FHIRRelease];
  v6 = [v3 initWithFormat:@"<%@ [%@]>", v4, v5];

  return v6;
}

@end