@interface NSDictionary(FCAdditions)
+ (id)fc_dictionaryByAddingEntriesFromDictionary:()FCAdditions toDictionary:;
+ (id)fc_dictionaryFromArray:()FCAdditions keyBlock:valueBlock:;
+ (id)fc_dictionaryFromJSON:()FCAdditions error:;
+ (id)fc_dictionaryWithKeys:()FCAdditions allowingNil:valueBlock:;
+ (id)fc_dictionaryWithKeys:()FCAdditions valueWithIndexBlock:;
+ (id)fc_dictionaryWithObjects:()FCAdditions keyBlock:;
+ (void)fc_dictionary:()FCAdditions;
- (id)fc_arrayByTransformingWithKeyAndValueBlock:()FCAdditions;
- (id)fc_deepCopy;
- (id)fc_dictionaryByMergingDictionary:()FCAdditions withValueCombiner:;
- (id)fc_dictionaryByRemovingObjectForKey:()FCAdditions;
- (id)fc_dictionaryBySwappingValuesAndKeys;
- (id)fc_dictionaryByTransformingKeysWithBlock:()FCAdditions;
- (id)fc_dictionaryByTransformingKeysWithKeyAndValueBlock:()FCAdditions;
- (id)fc_dictionaryByTransformingValuesWithBlock:()FCAdditions;
- (id)fc_dictionaryByTransformingValuesWithKeyAndValueBlock:()FCAdditions;
- (id)fc_jsonString;
- (id)fc_jsonStringWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:;
- (id)fc_jsonStringWithOmittedUnsupportedDataTypes;
- (id)fc_safeObjectForKey:()FCAdditions;
- (id)fc_sortedEntriesWithKeyBlock:()FCAdditions;
- (id)fc_subdictionaryForKeys:()FCAdditions;
- (id)fc_subdictionaryWithCopiesForKeys:()FCAdditions;
- (id)fr_descriptionWithKeyComparator:()FCAdditions;
- (id)nf_mutableObjectsForKeysWithoutMarker:()FCAdditions;
- (void)fc_jsonEncodableDictionaryWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:;
@end

@implementation NSDictionary(FCAdditions)

+ (void)fc_dictionary:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = v7;

  return v7;
}

+ (id)fc_dictionaryFromJSON:()FCAdditions error:
{
  v5 = [a3 dataUsingEncoding:4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:a4];
    v8 = FCCheckedDynamicCast(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fc_dictionaryFromArray:()FCAdditions keyBlock:valueBlock:
{
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = a3;
  v10 = [v9 fc_arrayByTransformingWithBlock:a5];
  v11 = [v9 fc_arrayByTransformingWithBlock:v8];

  v12 = [v7 dictionaryWithObjects:v10 forKeys:v11];

  return v12;
}

- (id)fc_dictionaryByTransformingKeysWithKeyAndValueBlock:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v17 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingKeysWithKeyAndValueBlock:]";
    v18 = 2080;
    v19 = "NSDictionary+FCAdditions.m";
    v20 = 1024;
    v21 = 53;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__NSDictionary_FCAdditions__fc_dictionaryByTransformingKeysWithKeyAndValueBlock___block_invoke;
  v13[3] = &unk_1E7C44718;
  v15 = v4;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v13];
  v8 = v14;
  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_dictionaryByTransformingKeysWithBlock:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v17 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingKeysWithBlock:]";
    v18 = 2080;
    v19 = "NSDictionary+FCAdditions.m";
    v20 = 1024;
    v21 = 68;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NSDictionary_FCAdditions__fc_dictionaryByTransformingKeysWithBlock___block_invoke;
  v13[3] = &unk_1E7C44718;
  v15 = v4;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v13];
  v8 = v14;
  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_sortedEntriesWithKeyBlock:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v17 = "[NSDictionary(FCAdditions) fc_sortedEntriesWithKeyBlock:]";
    v18 = 2080;
    v19 = "NSDictionary+FCAdditions.m";
    v20 = 1024;
    v21 = 83;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__NSDictionary_FCAdditions__fc_sortedEntriesWithKeyBlock___block_invoke;
  v13[3] = &unk_1E7C44718;
  v15 = v4;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v13];
  v8 = v14;
  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_dictionaryByTransformingValuesWithKeyAndValueBlock:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v17 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingValuesWithKeyAndValueBlock:]";
    v18 = 2080;
    v19 = "NSDictionary+FCAdditions.m";
    v20 = 1024;
    v21 = 106;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__NSDictionary_FCAdditions__fc_dictionaryByTransformingValuesWithKeyAndValueBlock___block_invoke;
  v13[3] = &unk_1E7C44718;
  v15 = v4;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v13];
  v8 = v14;
  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_dictionaryByTransformingValuesWithBlock:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v17 = "[NSDictionary(FCAdditions) fc_dictionaryByTransformingValuesWithBlock:]";
    v18 = 2080;
    v19 = "NSDictionary+FCAdditions.m";
    v20 = 1024;
    v21 = 121;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__NSDictionary_FCAdditions__fc_dictionaryByTransformingValuesWithBlock___block_invoke;
  v13[3] = &unk_1E7C44718;
  v15 = v4;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v13];
  v8 = v14;
  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_dictionaryByRemovingObjectForKey:()FCAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectForKey:v4];

  return v5;
}

+ (id)fc_dictionaryWithObjects:()FCAdditions keyBlock:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keyBlock"];
    *buf = 136315906;
    v26 = "+[NSDictionary(FCAdditions) fc_dictionaryWithObjects:keyBlock:]";
    v27 = 2080;
    v28 = "NSDictionary+FCAdditions.m";
    v29 = 1024;
    v30 = 143;
    v31 = 2114;
    v32 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = v6[2](v6, v14);
        if (v15)
        {
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "key"];
          *buf = 136315906;
          v26 = "+[NSDictionary(FCAdditions) fc_dictionaryWithObjects:keyBlock:]";
          v27 = 2080;
          v28 = "NSDictionary+FCAdditions.m";
          v29 = 1024;
          v30 = 149;
          v31 = 2114;
          v32 = v16;
          _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)fc_dictionaryWithKeys:()FCAdditions allowingNil:valueBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueBlock"];
    *buf = 136315906;
    v29 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:allowingNil:valueBlock:]";
    v30 = 2080;
    v31 = "NSDictionary+FCAdditions.m";
    v32 = 1024;
    v33 = 161;
    v34 = 2114;
    v35 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = v8[2](v8, v15);
        v17 = v16;
        if ((a4 & 1) != 0 || v16)
        {
          if (v16)
          {
            [v22 setObject:v16 forKeyedSubscript:v15];
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "value"];
          *buf = 136315906;
          v29 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:allowingNil:valueBlock:]";
          v30 = 2080;
          v31 = "NSDictionary+FCAdditions.m";
          v32 = 1024;
          v33 = 170;
          v34 = 2114;
          v35 = v18;
          _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)fc_dictionaryWithKeys:()FCAdditions valueWithIndexBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueWithIndexBlock"];
    *buf = 136315906;
    v19 = "+[NSDictionary(FCAdditions) fc_dictionaryWithKeys:valueWithIndexBlock:]";
    v20 = 2080;
    v21 = "NSDictionary+FCAdditions.m";
    v22 = 1024;
    v23 = 190;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__NSDictionary_FCAdditions__fc_dictionaryWithKeys_valueWithIndexBlock___block_invoke;
  v15[3] = &unk_1E7C43AC8;
  v17 = v6;
  v8 = v7;
  v16 = v8;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v15];
  v10 = v16;
  v11 = v8;

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)nf_mutableObjectsForKeysWithoutMarker:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_subdictionaryForKeys:()FCAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_subdictionaryWithCopiesForKeys:()FCAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [self objectForKeyedSubscript:{v11, v16}];
        v13 = [v12 copy];

        if (v13)
        {
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_deepCopy
{
  allKeys = [self allKeys];
  v3 = [self fc_subdictionaryWithCopiesForKeys:allKeys];

  return v3;
}

- (id)fc_dictionaryBySwappingValuesAndKeys
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [selfCopy objectForKeyedSubscript:{v8, v12}];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)fc_dictionaryByAddingEntriesFromDictionary:()FCAdditions toDictionary:
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  dictionary = [v5 dictionary];
  [dictionary addEntriesFromDictionary:v6];

  [dictionary addEntriesFromDictionary:v7];

  return dictionary;
}

- (id)fr_descriptionWithKeyComparator:()FCAdditions
{
  v4 = MEMORY[0x1E696AD60];
  v5 = a3;
  v6 = [v4 stringWithString:@"{\n"];
  allKeys = [self allKeys];
  v8 = [allKeys sortedArrayUsingComparator:v5];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61__NSDictionary_FCAdditions__fr_descriptionWithKeyComparator___block_invoke;
  v15 = &unk_1E7C38AA8;
  v16 = v6;
  selfCopy = self;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:&v12];

  [v9 appendString:{@"}", v12, v13, v14, v15}];
  v10 = [v9 copy];

  return v10;
}

- (id)fc_jsonStringWithOmittedUnsupportedDataTypes
{
  objc_opt_class();
  v2 = fc_JSONEncodableObjectWithObjectHandlers(self, 0, 0, 0, 0);
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  fc_jsonString = [v4 fc_jsonString];

  return fc_jsonString;
}

- (void)fc_jsonEncodableDictionaryWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  objc_opt_class();
  v14 = fc_JSONEncodableObjectWithObjectHandlers(self, v13, v12, v11, v10);

  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (id)fc_jsonStringWithObjectHandler:()FCAdditions arrayObjectHandler:dictionaryKeyHandler:dictionaryValueHandler:
{
  v1 = [self fc_jsonEncodableDictionaryWithObjectHandler:? arrayObjectHandler:? dictionaryKeyHandler:? dictionaryValueHandler:?];
  fc_jsonString = [v1 fc_jsonString];

  return fc_jsonString;
}

- (id)fc_jsonString
{
  v4 = 0;
  v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self options:0 error:&v4];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)fc_dictionaryByMergingDictionary:()FCAdditions withValueCombiner:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF20];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__NSDictionary_FCAdditions__fc_dictionaryByMergingDictionary_withValueCombiner___block_invoke;
  v13[3] = &unk_1E7C44768;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fc_dictionary:v13];

  return v11;
}

- (id)fc_safeObjectForKey:()FCAdditions
{
  if (a3)
  {
    v4 = [self objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fc_arrayByTransformingWithKeyAndValueBlock:()FCAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__NSDictionary_FCAdditions__fc_arrayByTransformingWithKeyAndValueBlock___block_invoke;
  v11[3] = &unk_1E7C44790;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

@end