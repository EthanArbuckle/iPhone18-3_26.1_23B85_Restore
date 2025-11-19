@interface WFPHAssetCollectionPredicate
- (id)initForAssetsInCollection:(id)a3;
- (id)wf_photoLibraryFilteringPredicate;
@end

@implementation WFPHAssetCollectionPredicate

- (id)wf_photoLibraryFilteringPredicate
{
  v3 = MEMORY[0x277CCA9C0];
  v4 = [(WFPHAssetCollectionPredicate *)self rightExpression];
  v5 = [v4 expressionValueWithObject:0 context:0];
  v6 = [v3 expressionForConstantValue:v5];

  v7 = MEMORY[0x277CCA918];
  v8 = [(WFPHAssetCollectionPredicate *)self leftExpression];
  v9 = [v7 predicateWithLeftExpression:v8 rightExpression:v6 modifier:-[WFPHAssetCollectionPredicate comparisonPredicateModifier](self type:"comparisonPredicateModifier") options:{-[WFPHAssetCollectionPredicate predicateOperatorType](self, "predicateOperatorType"), -[WFPHAssetCollectionPredicate options](self, "options")}];

  return v9;
}

- (id)initForAssetsInCollection:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"localIdentifier"];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__11415;
  v18[4] = __Block_byref_object_dispose__11416;
  v19 = 0;
  v7 = MEMORY[0x277CCA9C0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__WFPHAssetCollectionPredicate_initForAssetsInCollection___block_invoke;
  v15[3] = &unk_278347068;
  v17 = v18;
  v8 = v5;
  v16 = v8;
  v9 = [v7 expressionForBlock:v15 arguments:0];
  v14.receiver = self;
  v14.super_class = WFPHAssetCollectionPredicate;
  v10 = [(WFPHAssetCollectionPredicate *)&v14 initWithLeftExpression:v6 rightExpression:v9 modifier:0 type:10 options:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetCollection, a3);
    v12 = v11;
  }

  _Block_object_dispose(v18, 8);
  return v11;
}

id __58__WFPHAssetCollectionPredicate_initForAssetsInCollection___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (v10)
  {
LABEL_13:
    v26 = v10;
    goto LABEL_14;
  }

  v11 = getWFPhotoLibraryFilteringLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) wfName];
    *buf = 136315394;
    v37 = "[WFPHAssetCollectionPredicate initForAssetsInCollection:]_block_invoke";
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_INFO, "%s Performing non-optimized photo identifier lookup for album %@", buf, 0x16u);
  }

  v13 = objc_opt_new();
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = +[WFSharedPhotoLibrary sharedLibrary];
  v34 = 0;
  v17 = [v16 fetchOptionsWithError:&v34];
  v18 = v34;

  if (v17)
  {
    v28 = v18;
    v29 = v7;
    [v17 setWantsIncrementalChangeDetails:0];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [getPHAssetClass_11424() fetchAssetsInAssetCollection:*(a1 + 32) options:v17];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(*(a1 + 40) + 8) + 40);
          v25 = [*(*(&v30 + 1) + 8 * i) localIdentifier];
          [v24 addObject:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    v10 = *(*(*(a1 + 40) + 8) + 40);
    v7 = v29;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_14:

  return v26;
}

@end