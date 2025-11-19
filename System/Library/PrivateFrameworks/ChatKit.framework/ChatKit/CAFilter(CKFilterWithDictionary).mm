@interface CAFilter(CKFilterWithDictionary)
+ (id)ck_filterWithDictionary:()CKFilterWithDictionary;
@end

@implementation CAFilter(CKFilterWithDictionary)

+ (id)ck_filterWithDictionary:()CKFilterWithDictionary
{
  v3 = a3;
  v4 = [v3 _stringForKey:@"type"];
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke;
    aBlock[3] = &unk_1E72F3040;
    v6 = v5;
    v53 = v6;
    v7 = _Block_copy(aBlock);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_474;
    v50[3] = &unk_1E72F3068;
    v8 = v6;
    v51 = v8;
    v9 = _Block_copy(v50);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_477;
    v48[3] = &unk_1E72F3040;
    v10 = v8;
    v49 = v10;
    v11 = _Block_copy(v48);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_478;
    v46[3] = &unk_1E72F3040;
    v12 = v10;
    v47 = v12;
    v13 = _Block_copy(v46);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_479;
    v44[3] = &unk_1E72F3040;
    v14 = v12;
    v45 = v14;
    v15 = _Block_copy(v44);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_495;
    v42[3] = &unk_1E72F3040;
    v16 = v14;
    v43 = v16;
    v17 = _Block_copy(v42);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_496;
    v34[3] = &unk_1E72F30B0;
    v28 = v7;
    v35 = v28;
    v18 = v11;
    v36 = v18;
    v19 = v13;
    v37 = v19;
    v20 = v15;
    v38 = v20;
    v39 = &__block_literal_global_494;
    v21 = v17;
    v40 = v21;
    v22 = v9;
    v41 = v22;
    [v3 enumerateKeysAndObjectsUsingBlock:v34];
    v23 = [objc_alloc(MEMORY[0x1E6979378]) initWithType:v4];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __60__CAFilter_CKFilterWithDictionary__ck_filterWithDictionary___block_invoke_516;
    v32 = &unk_1E72F30D8;
    v24 = v23;
    v33 = v24;
    [v16 enumerateKeysAndObjectsUsingBlock:&v29];
    v25 = [v3 _stringForKey:@"name"];
    if (v25)
    {
      [v24 setName:{v25, v28, v29, v30, v31, v32}];
    }

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end