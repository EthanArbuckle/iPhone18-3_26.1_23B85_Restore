@interface FCPersonalizationBundleIDMapping
+ (id)decendingSpecificityBundleIDsForBundleID:(id)d;
- (FCPersonalizationBundleIDMapping)initWithCoder:(id)coder;
- (FCPersonalizationBundleIDMapping)initWithPBBundleIDMapping:(id)mapping;
- (id)jsonEncodableObject;
- (id)tagScoresForBundleID:(id)d;
- (unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPersonalizationBundleIDMapping

+ (id)decendingSpecificityBundleIDsForBundleID:(id)d
{
  dCopy = d;
  v4 = [dCopy componentsSeparatedByString:@"."];
  v5 = MEMORY[0x1E695DEC8];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __77__FCPersonalizationBundleIDMapping_decendingSpecificityBundleIDsForBundleID___block_invoke;
  v14 = &unk_1E7C3B110;
  v15 = v4;
  v16 = dCopy;
  v6 = dCopy;
  v7 = v4;
  v8 = [v5 fc_array:&v11];
  fc_arrayByReversingObjects = [v8 fc_arrayByReversingObjects];

  return fc_arrayByReversingObjects;
}

void __77__FCPersonalizationBundleIDMapping_decendingSpecificityBundleIDsForBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FCPersonalizationBundleIDMapping_decendingSpecificityBundleIDsForBundleID___block_invoke_2;
  v6[3] = &unk_1E7C40FE8;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  [v8 enumerateObjectsUsingBlock:v6];
}

void __77__FCPersonalizationBundleIDMapping_decendingSpecificityBundleIDsForBundleID___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v8 = [*(a1 + 40) fc_subarrayUpToIndex:a3 inclusive:1];
    v5 = [v8 componentsJoinedByString:@"."];
    [v4 addObject:v5];
  }

  else if ([*(a1 + 40) count] == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    [v6 addObject:v7];
  }
}

- (FCPersonalizationBundleIDMapping)initWithPBBundleIDMapping:(id)mapping
{
  mappingCopy = mapping;
  v14.receiver = self;
  v14.super_class = FCPersonalizationBundleIDMapping;
  v6 = [(FCPersonalizationBundleIDMapping *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pbBundleIDMapping, mapping);
    v8 = MEMORY[0x1E695DF20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke;
    v12[3] = &unk_1E7C36EC8;
    v13 = mappingCopy;
    v9 = [v8 fc_dictionary:v12];
    bundleIDMapping = v7->_bundleIDMapping;
    v7->_bundleIDMapping = v9;
  }

  return v7;
}

void __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) bundleIds];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke_2;
  v17[3] = &unk_1E7C41010;
  v5 = v3;
  v18 = v5;
  [v4 enumerateObjectsUsingBlock:v17];

  if (NFInternalBuild())
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 stringForKey:@"personalization_bundle_id_mapping_additions"];

    if ([v7 length])
    {
      v8 = MEMORY[0x1E696ACB0];
      v9 = [v7 dataUsingEncoding:4];
      v16 = 0;
      v10 = [v8 JSONObjectWithData:v9 options:4 error:&v16];
      v11 = v16;

      if (v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "error"];
        *buf = 136315906;
        v20 = "[FCPersonalizationBundleIDMapping initWithPBBundleIDMapping:]_block_invoke_2";
        v21 = 2080;
        v22 = "FCPersonalizationBundleIDMapping.m";
        v23 = 1024;
        v24 = 120;
        v25 = 2114;
        v26 = v13;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke_32;
      v14[3] = &unk_1E7C3A5F0;
      v15 = v5;
      [v10 enumerateKeysAndObjectsUsingBlock:v14];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 bundleId];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "bundleID.bundleId"];
    *buf = 136315906;
    v15 = "[FCPersonalizationBundleIDMapping initWithPBBundleIDMapping:]_block_invoke_2";
    v16 = 2080;
    v17 = "FCPersonalizationBundleIDMapping.m";
    v18 = 1024;
    v19 = 76;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF20];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke_22;
  v12[3] = &unk_1E7C36EC8;
  v13 = v3;
  v6 = v3;
  v7 = [v5 fc_dictionary:v12];
  v8 = *(a1 + 32);
  v9 = [v6 bundleId];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 channelTags];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v8];
  [v4 setObject:v9 forKeyedSubscript:@"channels"];

  v10 = [*(a1 + 32) topicTags];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v12];
  [v4 setObject:v13 forKeyedSubscript:@"topics"];

  v14 = [*(a1 + 32) sectionTags];
  v17 = v14;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v7;
  }

  v16 = [FCPersonalizationMappingUtilities scoredTagsDictionaryFromScoredTags:v15];
  [v4 setObject:v16 forKeyedSubscript:@"sections"];
}

void __62__FCPersonalizationBundleIDMapping_initWithPBBundleIDMapping___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "bundleIDsDict[extraBundleID]"];
    *buf = 136315906;
    v13 = "[FCPersonalizationBundleIDMapping initWithPBBundleIDMapping:]_block_invoke";
    v14 = 2080;
    v15 = "FCPersonalizationBundleIDMapping.m";
    v16 = 1024;
    v17 = 128;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = [v5 fc_dictionaryByTransformingValuesWithBlock:&__block_literal_global_87];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)count
{
  bundleIDMapping = [(FCPersonalizationBundleIDMapping *)self bundleIDMapping];
  v3 = [bundleIDMapping count];

  return v3;
}

- (id)tagScoresForBundleID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x1E695DF20];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke;
  v9[3] = &unk_1E7C37D00;
  v9[4] = self;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [v5 fc_dictionary:v9];

  return v7;
}

void __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() decendingSpecificityBundleIDsForBundleID:*(a1 + 40)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke_2;
  v11[3] = &unk_1E7C41078;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v7 = v3;
  v13 = v7;
  [v5 enumerateObjectsUsingBlock:v11];
  if (![v7 count])
  {
    if ([v5 count])
    {
      v9 = FCProgressivePersonalizationLog;
      if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 40);
        *buf = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEBUG, "Failed to find mapping for bundle ID %@ with decending IDs %@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bundleIDMapping];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) bundleIDMapping];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke_3;
    v10[3] = &unk_1E7C3A5F0;
    v11 = *(a1 + 48);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = FCProgressivePersonalizationLog;
    if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEBUG, "BundleID %@ Mapped to %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [v3 fc_dictionaryByMergingDictionary:a3 withValueCombiner:&__block_literal_global_44];
  [v3 addEntriesFromDictionary:v4];
}

uint64_t __57__FCPersonalizationBundleIDMapping_tagScoresForBundleID___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;

  return [v4 numberWithDouble:v7 + v9];
}

- (FCPersonalizationBundleIDMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIDMapping"];

  v6 = [(FCPersonalizationBundleIDMapping *)self initWithPBBundleIDMapping:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  pbBundleIDMapping = self->_pbBundleIDMapping;
  if (pbBundleIDMapping)
  {
    [coder encodeObject:pbBundleIDMapping forKey:@"bundleIDMapping"];
  }
}

- (id)jsonEncodableObject
{
  bundleIDMapping = [(FCPersonalizationBundleIDMapping *)self bundleIDMapping];
  fc_jsonEncodableDictionary = [bundleIDMapping fc_jsonEncodableDictionary];

  return fc_jsonEncodableDictionary;
}

@end