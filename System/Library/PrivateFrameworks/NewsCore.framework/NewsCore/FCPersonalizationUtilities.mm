@interface FCPersonalizationUtilities
+ (id)diversifyItems:(id)a3 withPreselectedItems:(id)a4 limit:(unint64_t)a5 similarityStartExpectation:(double)a6 similarityEndExpectation:(double)a7 publisherDiversificationSlope:(double)a8 publisherDiversificationYIntercept:(double)a9;
@end

@implementation FCPersonalizationUtilities

+ (id)diversifyItems:(id)a3 withPreselectedItems:(id)a4 limit:(unint64_t)a5 similarityStartExpectation:(double)a6 similarityEndExpectation:(double)a7 publisherDiversificationSlope:(double)a8 publisherDiversificationYIntercept:(double)a9
{
  v52 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v26 = MEMORY[0x1E696AD98];
    v27 = v17;
    v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    *buf = 138412546;
    v49 = v28;
    v50 = 2112;
    v51 = v29;
    _os_log_debug_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEBUG, "Diversifying set of %@ items down to %@", buf, 0x16u);

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else if (a5)
  {
LABEL_3:
    if ([v15 count] <= a5)
    {
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_2;
      v46 = &unk_1E7C3B578;
      v47 = v15;
      v22 = v47;
      v25 = v22;
    }

    else
    {
      v18 = [v15 fc_subarrayWithMaxCount:10 * a5];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_4;
      aBlock[3] = &unk_1E7C3B5E8;
      v42 = &__block_literal_global_8;
      v19 = _Block_copy(aBlock);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_6;
      v40[3] = &__block_descriptor_48_e8_Q16__0Q8l;
      *&v40[4] = a8;
      *&v40[5] = a9;
      v20 = _Block_copy(v40);
      v21 = MEMORY[0x1E695DEC8];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_7;
      v32[3] = &unk_1E7C3B6C8;
      v33 = v16;
      v34 = v18;
      v36 = v19;
      v37 = a5;
      v38 = a6;
      v39 = a7;
      v35 = v20;
      v22 = v18;
      v23 = v20;
      v24 = v19;
      v25 = [v21 fc_array:v32];
    }

    goto LABEL_9;
  }

  v25 = MEMORY[0x1E695E0F0];
LABEL_9:

  v30 = *MEMORY[0x1E69E9840];

  return v25;
}

double __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 fc_setByIntersectingSet:v4];
  v7 = [v6 count];

  v8 = [v5 fc_setByUnioningSet:v4];

  v9 = [v8 count];
  if (v9)
  {
    return v7 / v9;
  }

  else
  {
    return 1.0;
  }
}

double __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_5;
  v16 = &unk_1E7C3B5C0;
  v6 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v7 = v5;
  v8 = [a3 fc_arrayByTransformingWithBlock:&v13];
  v9 = [v8 valueForKeyPath:{@"@max.self", v13, v14, v15, v16}];
  [v9 doubleValue];
  v11 = v10;

  return v11;
}

id __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = MEMORY[0x1E695DFD8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 topicIDs];
  v8 = [v3 setWithArray:v7];
  v9 = MEMORY[0x1E695DFD8];
  v10 = [v6 topicIDs];

  v11 = [v9 setWithArray:v10];
  (*(v4 + 16))(v4, v8, v11);
  v12 = [v2 numberWithDouble:?];

  return v12;
}

void __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_7(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v40 = a2;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__23;
  v72 = __Block_byref_object_dispose__23;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__23;
  v66 = __Block_byref_object_dispose__23;
  v67 = objc_opt_new();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  [v63[5] addObjectsFromArray:v3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_18;
  aBlock[3] = &unk_1E7C3B630;
  v61 = &v62;
  v60 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = [v63[5] count];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 mutableCopy];
    v8 = v69[5];
    v69[5] = v7;
  }

  else
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_2_20;
    v58[3] = &unk_1E7C3B658;
    v58[4] = &v62;
    v58[5] = &v68;
    [v6 fc_subarrayWithCount:1 result:v58];
  }

  *&v9 = 136315906;
  v39 = v9;
  while (v4[2](v4) < *(a1 + 64))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = [v63[5] count];
    v13 = *(a1 + 64);
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 bundleIdentifier];
    v16 = v10 + (v11 - v10) * ((v12 + -1.0) / v13);
    if ([v15 isEqualToString:@"com.apple.news.widget"])
    {
      v17 = NewsCoreUserDefaults();
      v18 = [v17 BOOLForKey:@"widget_for_you_topic_diversification_disabled"];

      if (v18)
      {
        v19 = FCPersonalizationLog;
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Disabling topic diversification due to internal settings override", buf, 2u);
        }

        v16 = 1.79769313e308;
      }
    }

    else
    {
    }

    v20 = (*(*(a1 + 48) + 16))(*(a1 + 48), [v63[5] count] + 1);
    v21 = v4[2](v4);
    v22 = FCPersonalizationLog;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
      if (v21 <= 1)
      {
        v30 = &stru_1F2DC7DC0;
      }

      else
      {
        v30 = @"s";
      }

      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      *buf = 138413058;
      v75 = v29;
      v76 = 2112;
      v77 = v30;
      v78 = 2112;
      *v79 = v31;
      *&v79[8] = 2112;
      *&v79[10] = v32;
      _os_log_debug_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEBUG, "%@ item%@ chosen so far, our similarity threshold is %@ and our unique publisher requirement is %@", buf, 0x2Au);
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0x7FFFFFFFFFFFFFFFLL;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0x7FFFFFFFFFFFFFFFLL;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0x7FEFFFFFFFFFFFFFLL;
    v23 = v69[5];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_32;
    v41[3] = &unk_1E7C3B6A0;
    v42 = *(a1 + 56);
    v43 = &v62;
    v44 = v49;
    v45 = &v50;
    v48 = v16;
    v46 = &v54;
    v47 = v20;
    [v23 enumerateObjectsUsingBlock:v41];
    v24 = v55[3];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v51[3];
      v55[3] = v24;
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Didn't find a candidate, this should be impossible"];
          *buf = v39;
          v75 = "+[FCPersonalizationUtilities diversifyItems:withPreselectedItems:limit:similarityStartExpectation:similarityEndExpectation:publisherDiversificationSlope:publisherDiversificationYIntercept:]_block_invoke";
          v76 = 2080;
          v77 = "FCPersonalizationUtilities.m";
          v78 = 1024;
          *v79 = 236;
          *&v79[4] = 2114;
          *&v79[6] = v36;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v25 = MEMORY[0x1E69E9C10];
        }

        v24 = v55[3];
      }
    }

    v27 = [v69[5] objectAtIndex:v24];
    [v69[5] removeObjectAtIndex:v55[3]];
    [v63[5] addObject:v27];
    v28 = FCPersonalizationLog;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v55[3]];
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4[2](v4)];
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v69[5], "count")}];
      *buf = 138412802;
      v75 = v33;
      v76 = 2112;
      v77 = v34;
      v78 = 2112;
      *v79 = v35;
      _os_log_debug_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEBUG, "Candidate added from index %@, we have now chosen %@ candidates and have %@ remaining in our candidate pool", buf, 0x20u);
    }

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
  }

  v37 = [v63[5] fc_subarrayFromIndex:objc_msgSend(*(a1 + 32) inclusive:{"count"), 1}];
  [v40 addObjectsFromArray:v37];

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  v38 = *MEMORY[0x1E69E9840];
}

void __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_2_20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  [v5 addObjectsFromArray:a2];
  v7 = [v6 mutableCopy];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_32(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = *(v7 + 16);
  v10 = a2;
  v11 = v9(v7, v10, v8);
  v12 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v33 = MEMORY[0x1E696AD98];
    v34 = v12;
    v35 = [v33 numberWithDouble:v11];
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v44 = 138412546;
    v45 = v35;
    v46 = 2112;
    v47 = v36;
    _os_log_debug_impl(&dword_1B63EF000, v34, OS_LOG_TYPE_DEBUG, "Found similarity value of %@ for candidate at index %@", &v44, 0x16u);
  }

  v13 = *(*(a1 + 48) + 8);
  if (v11 < *(v13 + 24))
  {
    v14 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v37 = MEMORY[0x1E696AD98];
      v38 = v14;
      v39 = [v37 numberWithDouble:v11];
      v44 = 138412290;
      v45 = v39;
      _os_log_debug_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_DEBUG, "Similarity value %@ is our new lowest similarity value we have found so far", &v44, 0xCu);

      v13 = *(*(a1 + 48) + 8);
    }

    *(v13 + 24) = v11;
    *(*(*(a1 + 56) + 8) + 24) = a3;
  }

  v15 = [*(*(*(a1 + 40) + 8) + 40) fc_arrayByTransformingWithBlock:&__block_literal_global_36];
  v16 = [v10 publisherID];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"unknown+publisher+id";
  }

  v18 = [v15 arrayByAddingObject:v17];
  v19 = [v18 fc_uniqueCount];

  if (v19 >= *(a1 + 72))
  {
    v25 = *(a1 + 80);
    v26 = FCPersonalizationLog;
    v27 = os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG);
    if (v11 <= v25)
    {
      if (v27)
      {
        v40 = MEMORY[0x1E696AD98];
        v41 = v26;
        v42 = [v40 numberWithDouble:v11];
        v43 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
        v44 = 138412546;
        v45 = v42;
        v46 = 2112;
        v47 = v43;
        _os_log_debug_impl(&dword_1B63EF000, v41, OS_LOG_TYPE_DEBUG, "Similarity value %@ satisified our threshold of %@ and has been chosen", &v44, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = a3;
      *a4 = 1;
    }

    else if (v27)
    {
      v28 = MEMORY[0x1E696AD98];
      v29 = v26;
      v30 = [v28 numberWithDouble:v11];
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
      v44 = 138412546;
      v45 = v30;
      v46 = 2112;
      v47 = v31;
      _os_log_debug_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEBUG, "Similarity value %@ did not satisify our threshold of %@ and has not been chosen", &v44, 0x16u);
    }
  }

  else
  {
    v20 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = v20;
      v23 = [v21 numberWithUnsignedInteger:v19];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
      v44 = 138412546;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      _os_log_debug_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEBUG, "If we chose this item our unique publisher count would be %@ which doesn't satisfy our requirement of %@", &v44, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

@end