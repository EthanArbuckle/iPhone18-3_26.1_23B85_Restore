@interface FCPersonalizationWhitelist
- (FCPersonalizationWhitelist)initWithCoder:(id)a3;
- (FCPersonalizationWhitelist)initWithPBPersonalizationWhitelist:(id)a3;
- (id)jsonEncodableObject;
- (unint64_t)count;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationWhitelist

- (FCPersonalizationWhitelist)initWithPBPersonalizationWhitelist:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = FCPersonalizationWhitelist;
  v6 = [(FCPersonalizationWhitelist *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pbWhitelist, a3);
    v8 = MEMORY[0x1E695DF20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__FCPersonalizationWhitelist_initWithPBPersonalizationWhitelist___block_invoke;
    v17[3] = &unk_1E7C36EC8;
    v9 = v5;
    v18 = v9;
    v10 = [v8 fc_dictionary:v17];
    whitelist = v7->_whitelist;
    v7->_whitelist = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = [v9 disabledPortraitTags];
    v14 = [v12 setWithArray:v13];
    portraitDisabledTagIDs = v7->_portraitDisabledTagIDs;
    v7->_portraitDisabledTagIDs = v14;
  }

  return v7;
}

void __65__FCPersonalizationWhitelist_initWithPBPersonalizationWhitelist___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) defaultTags];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v7];
  [v3 setObject:v8 forKeyedSubscript:@"defaultTags"];

  v9 = [*(a1 + 32) optionalTags];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v11];
  [v3 setObject:v12 forKeyedSubscript:@"optionalTags"];

  if (NFInternalBuild())
  {
    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [v13 stringForKey:@"personalization_whitelist_additions"];

    if ([v14 length])
    {
      v15 = MEMORY[0x1E696ACB0];
      v16 = [v14 dataUsingEncoding:4];
      v28 = 0;
      v17 = [v15 JSONObjectWithData:v16 options:4 error:&v28];
      v18 = v28;

      if (v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "error"];
        *buf = 136315906;
        v30 = "[FCPersonalizationWhitelist initWithPBPersonalizationWhitelist:]_block_invoke";
        v31 = 2080;
        v32 = "FCPersonalizationWhitelist.m";
        v33 = 1024;
        v34 = 73;
        v35 = 2114;
        v36 = v24;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v19 = MEMORY[0x1E695DF20];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __65__FCPersonalizationWhitelist_initWithPBPersonalizationWhitelist___block_invoke_16;
      v25[3] = &unk_1E7C37D00;
      v20 = v3;
      v26 = v20;
      v27 = v17;
      v21 = v17;
      v22 = [v19 fc_dictionary:v25];
      [v20 setObject:v22 forKeyedSubscript:@"optionalTags"];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __65__FCPersonalizationWhitelist_initWithPBPersonalizationWhitelist___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"optionalTags"];
  [v4 addEntriesFromDictionary:v5];

  v6 = [MEMORY[0x1E695DF20] fc_dictionaryWithKeys:*(a1 + 40) valueBlock:&__block_literal_global_49];
  [v4 addEntriesFromDictionary:v6];
}

- (unint64_t)count
{
  v3 = [(FCPersonalizationWhitelist *)self defaultTags];
  v4 = [v3 count];
  v5 = [(FCPersonalizationWhitelist *)self optionalTags];
  v6 = [v5 count];

  return v6 + v4;
}

- (FCPersonalizationWhitelist)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"whiteList"];

  v6 = [(FCPersonalizationWhitelist *)self initWithPBPersonalizationWhitelist:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  pbWhitelist = self->_pbWhitelist;
  if (pbWhitelist)
  {
    [a3 encodeObject:pbWhitelist forKey:@"whiteList"];
  }
}

- (id)jsonEncodableObject
{
  v2 = [(FCPersonalizationWhitelist *)self whitelist];
  v3 = [v2 fc_jsonEncodableDictionary];

  return v3;
}

@end