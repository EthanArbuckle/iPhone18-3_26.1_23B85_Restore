@interface FCUserVector
- (FCUserVector)init;
- (FCUserVector)initWithWhitelistURL:(id)a3 modelURL:(id)a4 personalizationTreatment:(id)a5 bundleChannelIDs:(id)a6 bundleChannelIDsVersion:(id)a7 subscriptionController:(id)a8 sportsTagIDs:(id)a9;
- (id)bundleSubscribedVector;
- (id)computePersonalizationVectorWithAggregateStore:(id)a3 personalizationTreatment:(id)a4 tagRanker:(id)a5 options:(int64_t)a6;
- (id)computePersonalizationVectorWithAggregateVectorProvider:(id)a3 personalizationTreatment:(id)a4 tagRanker:(id)a5 options:(int64_t)a6;
- (id)findVector:(id)a3 closestToBins:(id)a4;
- (id)subscribedBundleChannelIDs;
- (id)subscribedSportsTagsWithPersonalizationTreatment:(id)a3 tagRanker:(id)a4;
@end

@implementation FCUserVector

- (FCUserVector)initWithWhitelistURL:(id)a3 modelURL:(id)a4 personalizationTreatment:(id)a5 bundleChannelIDs:(id)a6 bundleChannelIDsVersion:(id)a7 subscriptionController:(id)a8 sportsTagIDs:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = FCUserVector;
  v18 = [(FCUserVector *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_whitelistURL, a3);
    objc_storeStrong(&v19->_modelURL, a4);
    objc_storeStrong(&v19->_personalizationTreatment, a5);
    objc_storeStrong(&v19->_bundleChannelIDs, a6);
    objc_storeStrong(&v19->_bundleChannelIDsVersion, a7);
    objc_storeStrong(&v19->_subscriptionController, a8);
    objc_storeStrong(&v19->_sportsTagIDs, a9);
  }

  return v19;
}

- (FCUserVector)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCUserVector init]";
    v10 = 2080;
    v11 = "FCUserVector.m";
    v12 = 1024;
    v13 = 66;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCUserVector init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)computePersonalizationVectorWithAggregateVectorProvider:(id)a3 personalizationTreatment:(id)a4 tagRanker:(id)a5 options:(int64_t)a6
{
  v6 = a6;
  v108 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E69B7060]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_33;
  }

  v88 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E695FEB0]);
  [v14 setComputeUnits:0];
  v15 = MEMORY[0x1E695FE90];
  v16 = [(FCUserVector *)self modelURL];
  v104 = 0;
  v17 = [v15 compileModelAtURL:v16 error:&v104];
  v18 = v104;

  v19 = [FCUserVectorModel alloc];
  if (v17)
  {
    v103 = v18;
    v20 = &v103;
    v21 = [(FCUserVectorModel *)v19 initWithContentsOfURL:v17 configuration:v14 error:&v103];
  }

  else
  {
    v102 = v18;
    v20 = &v102;
    v21 = [(FCUserVectorModel *)v19 initWithConfiguration:v14 error:&v102];
  }

  v22 = v21;
  v89 = v17;
  v23 = *v20;

  v87 = v14;
  if (v22)
  {
    v83 = v22;
    v84 = v10;
    v86 = v22;
    v24 = [v86 model];
    v25 = [v24 modelDescription];
    v26 = [v25 metadata];
    v27 = [v26 fc_safeObjectForKey:*MEMORY[0x1E695FDB0]];
    v85 = [v27 fc_safeObjectForKey:@"version"];

    v28 = MEMORY[0x1E695DEF0];
    v29 = [(FCUserVector *)self whitelistURL];
    v30 = [v28 dataWithContentsOfURL:v29];

    v82 = v30;
    if (v30)
    {
      v81 = v6;
      v98 = v23;
      v31 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v30 options:4 error:&v98];
      v32 = v98;

      v10 = v84;
      if (v31)
      {
        v79 = v32;
        v33 = v31;
        v34 = [v33 fc_safeObjectForKey:@"tagIds"];
        [v33 fc_safeObjectForKey:@"bins"];
        v78 = v77 = v33;
        v35 = [v33 fc_safeObjectForKey:@"version"];
        v36 = v35;
        v75 = v35;
        v76 = v34;
        if (!v89)
        {
          goto LABEL_10;
        }

        if (![v35 isEqualToString:v85])
        {
          v55 = 0;
          v62 = 0;
          v12 = v88;
          v22 = v83;
        }

        else
        {
LABEL_10:
          v73 = v31;
          v74 = v11;
          v37 = [v84 aggregateVectorForTags:v34];
          v38 = FCPersonalizationLog;
          if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = v36;
            v106 = 2112;
            v107 = v37;
            _os_log_debug_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_DEBUG, "Created user aggregate input with whitelist version %@ and vector %@.", buf, 0x16u);
          }

          v39 = [v86 model];
          v40 = [v39 modelDescription];
          v41 = [v40 inputDescriptionsByName];
          v42 = [v41 objectForKeyedSubscript:@"aggregates"];
          v43 = [v42 multiArrayConstraint];
          v44 = [v43 shape];

          v45 = [v37 count];
          v46 = [v44 firstObject];
          LODWORD(v40) = [v46 intValue];

          if (v45 == v40)
          {
            v72 = v44;
            v47 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:v44 dataType:65600 error:0];
            v22 = v83;
            if ([v37 count])
            {
              v48 = 0;
              do
              {
                v49 = [v37 objectAtIndexedSubscript:v48];
                [v47 setObject:v49 atIndexedSubscript:v48];

                ++v48;
              }

              while ([v37 count] > v48);
            }

            v50 = [[FCUserVectorModelInput alloc] initWithAggregates:v47];
            v92 = v79;
            v51 = [v86 predictionFromFeatures:v50 error:&v92];
            v52 = v92;

            v80 = v51;
            v53 = [v51 featureValueForName:@"user_vector"];
            v54 = [v53 multiArrayValue];

            v55 = v54 != 0;
            v71 = v54;
            if (v54)
            {
              v70 = v50;
              v56 = [(FCUserVector *)self findVector:v54 closestToBins:v78];
              v57 = [MEMORY[0x1E695DF88] data];
              if ([v56 count])
              {
                v58 = 0;
                do
                {
                  v59 = [v56 objectAtIndex:v58];
                  [v59 doubleValue];
                  v61 = v60;

                  *buf = v61;
                  [v57 appendBytes:buf length:8];
                  ++v58;
                }

                while ([v56 count] > v58);
              }

              [v13 setPersonalizationVector:v57];
              [v13 setVersion:v85];

              v22 = v83;
              v50 = v70;
            }

            else
            {
              v90[0] = MEMORY[0x1E69E9820];
              v90[1] = 3221225472;
              v90[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_37;
              v90[3] = &unk_1E7C3FD98;
              v91 = v52;
              __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_37(v90);
              objc_claimAutoreleasedReturnValue();
              v56 = v91;
            }

            v62 = 0;
            v79 = v52;
            v11 = v74;
            v12 = v88;
            v44 = v72;
          }

          else
          {
            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 3221225472;
            v93[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_34;
            v93[3] = &unk_1E7C3FDC0;
            v94 = v44;
            v95 = v37;
            v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_34(v93);

            v55 = 0;
            v47 = v94;
            v11 = v74;
            v12 = v88;
            v22 = v83;
          }

          v10 = v84;
          v31 = v73;
        }

        v64 = v77;
        v23 = v79;
      }

      else
      {
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_32;
        v96[3] = &unk_1E7C3FD98;
        v23 = v32;
        v97 = v23;
        v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_32(v96);
        v55 = 0;
        v64 = v97;
        v12 = v88;
        v22 = v83;
      }

      v6 = v81;
    }

    else
    {
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_30;
      v99[3] = &unk_1E7C3FD98;
      v99[4] = self;
      v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_30(v99);
      v55 = 0;
      v22 = v83;
      v10 = v84;
      v12 = v88;
    }

    v63 = v86;
  }

  else
  {
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke;
    v100[3] = &unk_1E7C3FD98;
    v23 = v23;
    v101 = v23;
    v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke(v100);
    v55 = 0;
    v63 = v101;
    v12 = v88;
  }

  if (v55)
  {
LABEL_33:
    if ((v6 & 2) != 0)
    {
      v65 = [(FCUserVector *)self bundleSubscribedVector];
      [v13 setBundleSubscribedVector:v65];

      v66 = [(FCUserVector *)self bundleChannelIDsVersion];
      [v13 setBundleSubscribedVectorVersion:v66];
    }

    v67 = [(FCUserVector *)self subscribedSportsTagsWithPersonalizationTreatment:v11 tagRanker:v12];
    [v13 setSportsFavoritesVector:v67];

    v62 = v13;
  }

  v68 = *MEMORY[0x1E69E9840];

  return v62;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error in creating user vector model: %{public}@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_30(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 whitelistURL];
    v8 = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to get data from fileURL: %@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_32(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Failed to serialize whitelist data: %@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_34(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 firstObject];
    v6 = [v5 intValue];
    v7 = [*(a1 + 40) count];
    v10 = 134218240;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Model metadata shape %lu does not match tag list count %lu, not submitting vector.", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_37(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when performing prediction using user vector model: %@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)computePersonalizationVectorWithAggregateStore:(id)a3 personalizationTreatment:(id)a4 tagRanker:(id)a5 options:(int64_t)a6
{
  v6 = a6;
  v139 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E69B7060]);
  if ((v6 & 1) == 0)
  {
    LODWORD(v14) = 0;
LABEL_41:
    if ((v6 & 2) != 0)
    {
      v80 = [(FCUserVector *)self bundleSubscribedVector];
      [v13 setBundleSubscribedVector:v80];
      [(FCUserVector *)self bundleChannelIDsVersion];
      v82 = v81 = v12;
      [v13 setBundleSubscribedVectorVersion:v82];

      v12 = v81;
      v79 = v80 != 0;
    }

    else
    {
      v79 = 0;
    }

    v83 = [(FCUserVector *)self subscribedSportsTagsWithPersonalizationTreatment:v11 tagRanker:v12];
    [v13 setSportsFavoritesVector:v83];
    if (((v14 | v79) & 1) != 0 || v83)
    {
      v76 = v13;
    }

    else
    {
      v84 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v84, OS_LOG_TYPE_DEFAULT, "Returning no user vector, since it would be empty", buf, 2u);
      }

      v76 = 0;
    }

    goto LABEL_51;
  }

  v108 = v6;
  v15 = objc_alloc_init(MEMORY[0x1E695FEB0]);
  [v15 setComputeUnits:0];
  v16 = MEMORY[0x1E695FE90];
  v17 = [(FCUserVector *)self modelURL];
  v134 = 0;
  v18 = [v16 compileModelAtURL:v17 error:&v134];
  v19 = v134;

  v20 = [FCUserVectorModel alloc];
  if (v18)
  {
    v133 = v19;
    v21 = &v133;
    v22 = [(FCUserVectorModel *)v20 initWithContentsOfURL:v18 configuration:v15 error:&v133];
  }

  else
  {
    v132 = v19;
    v21 = &v132;
    v22 = [(FCUserVectorModel *)v20 initWithConfiguration:v15 error:&v132];
  }

  v14 = v22;
  v109 = v18;
  v23 = *v21;

  v106 = v14;
  v107 = v15;
  if (v14)
  {
    v105 = v11;
    v104 = v14;
    v24 = [v104 model];
    v25 = [v24 modelDescription];
    v26 = [v25 metadata];
    v27 = [v26 fc_safeObjectForKey:*MEMORY[0x1E695FDB0]];
    v103 = [v27 fc_safeObjectForKey:@"version"];

    v28 = MEMORY[0x1E695DEF0];
    v29 = [(FCUserVector *)self whitelistURL];
    v14 = [v28 dataWithContentsOfURL:v29];

    v102 = v14;
    if (v14)
    {
      v101 = v10;
      v128 = v23;
      v30 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:4 error:&v128];
      v31 = v128;

      v11 = v105;
      if (v30)
      {
        v99 = v31;
        v32 = v30;
        v33 = [v32 fc_safeObjectForKey:@"tagIds"];
        v98 = [v32 fc_safeObjectForKey:@"bins"];
        v96 = v32;
        v34 = [v32 fc_safeObjectForKey:@"version"];
        v95 = v33;
        v97 = v34;
        if (v109 && ![v34 isEqualToString:v103])
        {
          v69 = 0;
          LODWORD(v14) = 0;
          v76 = 0;
          v6 = v108;
        }

        else
        {
          v93 = v30;
          v94 = v12;
          v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v36 = v33;
          v37 = [v36 countByEnumeratingWithState:&v122 objects:v138 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v123;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v123 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v122 + 1) + 8 * i);
                v42 = [[FCTagIDFeature alloc] initWithTagID:v41];
                [v35 setObject:v42 forKeyedSubscript:v41];
              }

              v38 = [v36 countByEnumeratingWithState:&v122 objects:v138 count:16];
            }

            while (v38);
          }

          v43 = [v101 baselineAggregateWithConfigurableValues:v105];
          v44 = [v35 allValues];
          v45 = [v101 aggregatesForFeatures:v44];

          v46 = [(FCUserVector *)self personalizationTreatment];
          v47 = [v46 defaultScoringConfig];
          [v47 decayFactor];
          v49 = v48;

          [v43 personalizationValueWithBaseline:0 decayRate:v49];
          v51 = v50;
          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v116[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_2;
          v116[3] = &unk_1E7C3FDE8;
          v91 = v45;
          v117 = v91;
          v52 = v35;
          v118 = v52;
          v90 = v43;
          v119 = v90;
          v120 = v49;
          v121 = v51;
          v53 = [v36 fc_arrayByTransformingWithBlock:v116];
          v54 = FCPersonalizationLog;
          if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = v97;
            v136 = 2112;
            v137 = v53;
            _os_log_debug_impl(&dword_1B63EF000, v54, OS_LOG_TYPE_DEBUG, "Created user aggregate input with whitelist version %@ and vector %@.", buf, 0x16u);
          }

          v55 = [v104 model];
          v56 = [v55 modelDescription];
          v57 = [v56 inputDescriptionsByName];
          v58 = [v57 objectForKeyedSubscript:@"aggregates"];
          v59 = [v58 multiArrayConstraint];
          v60 = [v59 shape];

          v61 = [v53 count];
          v62 = [v60 firstObject];
          LODWORD(v57) = [v62 intValue];

          v92 = v52;
          if (v61 == v57)
          {
            v89 = v60;
            v63 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:v60 dataType:65600 error:0];
            v6 = v108;
            if ([v53 count])
            {
              v64 = 0;
              do
              {
                v65 = [v53 objectAtIndexedSubscript:v64];
                [v63 setObject:v65 atIndexedSubscript:v64];

                ++v64;
              }

              while ([v53 count] > v64);
            }

            v112 = v99;
            v88 = [[FCUserVectorModelInput alloc] initWithAggregates:v63];
            v66 = [v104 predictionFromFeatures:? error:?];
            v67 = v99;

            v100 = v66;
            v68 = [v66 featureValueForName:@"user_vector"];
            v14 = [v68 multiArrayValue];

            v69 = v14 != 0;
            v87 = v14;
            if (v14)
            {
              v70 = [(FCUserVector *)self findVector:v14 closestToBins:v98];
              v71 = [MEMORY[0x1E695DF88] data];
              if ([v70 count])
              {
                v72 = 0;
                do
                {
                  v73 = [v70 objectAtIndex:v72];
                  [v73 doubleValue];
                  v75 = v74;

                  *buf = v75;
                  [v71 appendBytes:buf length:8];
                  ++v72;
                }

                while ([v70 count] > v72);
              }

              [v13 setPersonalizationVector:v71];
              [v13 setVersion:v103];
              LODWORD(v14) = v71 != 0;

              v6 = v108;
            }

            else
            {
              v110[0] = MEMORY[0x1E69E9820];
              v110[1] = 3221225472;
              v110[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_49;
              v110[3] = &unk_1E7C3FD98;
              v111 = v67;
              __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_49(v110);
              objc_claimAutoreleasedReturnValue();
              v70 = v111;
            }

            v76 = 0;
            v99 = v67;
            v12 = v94;
            v60 = v89;
          }

          else
          {
            v113[0] = MEMORY[0x1E69E9820];
            v113[1] = 3221225472;
            v113[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_48;
            v113[3] = &unk_1E7C3FDC0;
            v114 = v60;
            v115 = v53;
            v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_48(v113);

            v69 = 0;
            LODWORD(v14) = 0;
            v63 = v114;
            v12 = v94;
            v6 = v108;
          }

          v11 = v105;
          v30 = v93;
        }

        v78 = v96;
        v23 = v99;
      }

      else
      {
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_40;
        v126[3] = &unk_1E7C3FD98;
        v23 = v31;
        v127 = v23;
        v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_40(v126);
        v69 = 0;
        LODWORD(v14) = 0;
        v78 = v127;
        v6 = v108;
      }

      v10 = v101;
    }

    else
    {
      v129[0] = MEMORY[0x1E69E9820];
      v129[1] = 3221225472;
      v129[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_39;
      v129[3] = &unk_1E7C3FD98;
      v129[4] = self;
      v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_39(v129);
      v69 = 0;
      v11 = v105;
      v6 = v108;
    }

    v77 = v104;
  }

  else
  {
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke;
    v130[3] = &unk_1E7C3FD98;
    v23 = v23;
    v131 = v23;
    v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke(v130);
    v69 = 0;
    v77 = v131;
    v6 = v108;
  }

  if (v69)
  {
    goto LABEL_41;
  }

LABEL_51:

  v85 = *MEMORY[0x1E69E9840];

  return v76;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error in creating user vector model: %{public}@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_39(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 whitelistURL];
    v8 = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to get data from fileURL: %@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_40(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Failed to serialize whitelist data: %@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

id __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v5 = [v3 fc_safeObjectForKey:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    [v5 personalizationValueWithBaseline:*(a1 + 48) decayRate:*(a1 + 56)];
    v8 = [v6 numberWithDouble:v7 - *(a1 + 64)];
  }

  else
  {
    v8 = &unk_1F2E71B88;
  }

  return v8;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_48(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 firstObject];
    v6 = [v5 intValue];
    v7 = [*(a1 + 40) count];
    v10 = 134218240;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Model metadata shape %lu does not match tag list count %lu, not submitting vector.", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_49(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when performing prediction using user vector model: %@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)subscribedBundleChannelIDs
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(FCUserVector *)self bundleChannelIDs];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(FCUserVector *)self subscriptionController];
        v11 = [v10 subscriptionForTagID:v9];

        if (v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)bundleSubscribedVector
{
  v3 = *MEMORY[0x1E695E480];
  v4 = [(FCUserVector *)self bundleChannelIDs];
  Mutable = CFBitVectorCreateMutable(v3, [v4 count]);

  v6 = [(FCUserVector *)self bundleChannelIDs];
  CFBitVectorSetCount(Mutable, [v6 count]);

  v7 = [(FCUserVector *)self subscribedBundleChannelIDs];
  v8 = [(FCUserVector *)self bundleChannelIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [(FCUserVector *)self bundleChannelIDs];
      v12 = [v11 objectAtIndex:v10];

      if (v12)
      {
        v13 = [v7 containsObject:v12];
      }

      else
      {
        v13 = 0;
      }

      CFBitVectorSetBitAtIndex(Mutable, v10, v13);

      ++v10;
      v14 = [(FCUserVector *)self bundleChannelIDs];
      v15 = [v14 count];
    }

    while (v15 > v10);
  }

  Count = CFBitVectorGetCount(Mutable);
  v17 = Count + 7;
  if (Count < -7)
  {
    v17 = Count + 14;
  }

  v18 = [MEMORY[0x1E695DF88] dataWithLength:v17 >> 3];
  v19 = CFBitVectorGetCount(Mutable);
  v20 = [v18 mutableBytes];
  v23.location = 0;
  v23.length = v19;
  CFBitVectorGetBits(Mutable, v23, v20);

  return v18;
}

- (id)subscribedSportsTagsWithPersonalizationTreatment:(id)a3 tagRanker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCUserVector *)self sportsTagIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(FCUserVector *)self sportsTagIDs];
    v11 = [v10 array];

    if ([v6 personalizesSportsTagsInUserVector])
    {
      v12 = [v7 rankTagIDsDescending:v11];

      v11 = v12;
    }

    v13 = [v11 fc_subarrayWithMaxCount:50];
    v14 = [v13 componentsJoinedByString:{@", "}];
    v15 = [v14 dataUsingEncoding:4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)findVector:(id)a3 closestToBins:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = [v5 objectAtIndexedSubscript:v8];
      [v10 doubleValue];
      v11 = [v9 numberWithDouble:?];
      [v7 addObject:v11];

      ++v8;
    }

    while ([v5 count] > v8);
  }

  v12 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_debug_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEBUG, "Computed user vector with vector %@.", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __41__FCUserVector_findVector_closestToBins___block_invoke;
  v20[3] = &unk_1E7C3B2C0;
  v13 = v7;
  v21 = v13;
  v14 = [v6 fc_arrayByTransformingWithBlock:v20];
  v15 = [v14 valueForKeyPath:@"@max.self"];
  v16 = [v6 objectAtIndexedSubscript:{objc_msgSend(v14, "indexOfObject:", v15)}];

  v17 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v16;
    _os_log_debug_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEBUG, "Selected bin with vector %@.", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __41__FCUserVector_findVector_closestToBins___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 fc_cosineDistanceToArray:*(a1 + 32)];

  return [v2 numberWithDouble:?];
}

@end