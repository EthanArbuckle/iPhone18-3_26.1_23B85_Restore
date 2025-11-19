@interface FCLocalAreasMapping
- (FCLocalAreasMapping)init;
- (FCLocalAreasMapping)initWithCoder:(id)a3;
- (FCLocalAreasMapping)initWithData:(id)a3;
- (id)areasForLocation:(id)a3;
- (id)autoFavoriteTagIDsForLocation:(id)a3 searchOption:(unint64_t)a4;
- (id)filterOuterRegions:(id)a3;
- (id)regionsForLocation:(id)a3;
- (id)tagIDsForLocation:(id)a3 searchOption:(unint64_t)a4;
- (unint64_t)count;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCLocalAreasMapping

- (FCLocalAreasMapping)initWithData:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = FCLocalAreasMapping;
  v5 = [(FCLocalAreasMapping *)&v43 init];
  v6 = v5;
  if (v4 && v5)
  {
    v31 = v4;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
    v8 = FCAppConfigurationArrayValueWithDefaultValue(v7, @"regions", 0);
    v9 = [v8 fc_arrayByTransformingWithBlock:&__block_literal_global_127];

    v10 = MEMORY[0x1E695DF20];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __36__FCLocalAreasMapping_initWithData___block_invoke_2;
    v41[3] = &unk_1E7C36EC8;
    v29 = v9;
    v42 = v29;
    v11 = [v10 fc_dictionary:v41];
    regionMap = v6->_regionMap;
    v6->_regionMap = v11;

    v30 = v7;
    v13 = FCAppConfigurationArrayValueWithDefaultValue(v7, @"areas", 0);
    v14 = [v13 fc_arrayByTransformingWithBlock:&__block_literal_global_12];
    areas = v6->_areas;
    v6->_areas = v14;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v6->_areas;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v21 = [v20 regionIds];
          v22 = [v21 countByEnumeratingWithState:&v33 objects:v44 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v34;
            do
            {
              v25 = 0;
              do
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [(NSDictionary *)v6->_regionMap objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v25)];
                [v26 addLocalArea:v20];

                ++v25;
              }

              while (v23 != v25);
              v23 = [v21 countByEnumeratingWithState:&v33 objects:v44 count:16];
            }

            while (v23);
          }

          ++v19;
        }

        while (v19 != v17);
        v17 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v17);
    }

    v4 = v31;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

FCLocalRegion *__36__FCLocalAreasMapping_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCLocalRegion alloc] initWithDictionary:v2];

  return v3;
}

void __36__FCLocalAreasMapping_initWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 identifier];
        [v3 setValue:v9 forKey:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

FCLocalArea *__36__FCLocalAreasMapping_initWithData___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCLocalArea alloc] initWithDictionary:v2];

  return v3;
}

- (FCLocalAreasMapping)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCLocalAreasMapping init]";
    v10 = 2080;
    v11 = "FCLocalAreasMapping.m";
    v12 = 1024;
    v13 = 67;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCLocalAreasMapping init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)count
{
  v3 = [(FCLocalAreasMapping *)self regionMap];
  v4 = [v3 allValues];
  v5 = [v4 count];
  v6 = [(FCLocalAreasMapping *)self areas];
  v7 = [v6 count];

  return v7 + v5;
}

- (id)regionsForLocation:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if (v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(FCLocalAreasMapping *)self areas];
    v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      v23 = *v31;
      do
      {
        v9 = 0;
        v24 = v7;
        do
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * v9);
          if ([v10 containsLocation:v4])
          {
            v11 = v4;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v12 = [v10 regionIds];
            v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v27;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v27 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v26 + 1) + 8 * i);
                  v18 = [(FCLocalAreasMapping *)self regionMap];
                  v19 = [v18 objectForKeyedSubscript:v17];
                  [v5 addObject:v19];
                }

                v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
              }

              while (v14);
            }

            v4 = v11;
            v8 = v23;
            v7 = v24;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }
  }

  v20 = [v5 array];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)areasForLocation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(FCLocalAreasMapping *)self areas];
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
          if ([v11 containsLocation:v4])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v12 = [v5 array];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)autoFavoriteTagIDsForLocation:(id)a3 searchOption:(unint64_t)a4
{
  v6 = [(FCLocalAreasMapping *)self regionsForLocation:a3];
  v7 = [(FCLocalAreasMapping *)self filterOuterRegions:v6];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__FCLocalAreasMapping_autoFavoriteTagIDsForLocation_searchOption___block_invoke;
  v13[3] = &__block_descriptor_40_e30___NSSet_16__0__FCLocalRegion_8l;
  v13[4] = a4;
  v8 = [v7 fc_setByCollectingObjectsWithBlock:v13];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v11 = v10;

  return v11;
}

id __66__FCLocalAreasMapping_autoFavoriteTagIDsForLocation_searchOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [v3 localVersionedTagIDs];
  [v4 fc_safelyAddObjects:v5];

  if (*(a1 + 32) == 1)
  {
    v6 = [v3 autoFavoriteTagIDs];
    [v4 fc_safelyAddObjects:v6];
  }

  return v4;
}

- (id)filterOuterRegions:(id)a3
{
  v3 = a3;
  if ([v3 count] <= 1)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__FCLocalAreasMapping_filterOuterRegions___block_invoke;
    v12 = &unk_1E7C3B578;
    v13 = v3;
    v5 = v3;
    v4 = v5;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__FCLocalAreasMapping_filterOuterRegions___block_invoke_2;
    v7[3] = &unk_1E7C43F38;
    v8 = v3;
    v4 = [v3 fc_arrayOfObjectsPassingTest:v7];
    v5 = v8;
  }

  return v4;
}

uint64_t __42__FCLocalAreasMapping_filterOuterRegions___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 rectForEntireRegion];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * v16);
        if (v17 != v3)
        {
          [v17 rectForEntireRegion];
          v32.origin.x = v18;
          v32.origin.y = v19;
          v32.size.width = v20;
          v32.size.height = v21;
          v31.origin.x = v5;
          v31.origin.y = v7;
          v31.size.width = v9;
          v31.size.height = v11;
          if (CGRectContainsRect(v31, v32))
          {
            v22 = 0;
            goto LABEL_12;
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)tagIDsForLocation:(id)a3 searchOption:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FCLocalAreasMapping *)self regionMap];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__FCLocalAreasMapping_tagIDsForLocation_searchOption___block_invoke;
  v19[3] = &unk_1E7C43F60;
  v20 = v6;
  v8 = v6;
  v9 = [v7 fc_dictionaryByTransformingValuesWithBlock:v19];

  v10 = [v9 keysSortedByValueUsingComparator:&__block_literal_global_34_1];
  v11 = MEMORY[0x1E695DF70];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__FCLocalAreasMapping_tagIDsForLocation_searchOption___block_invoke_3;
  v15[3] = &unk_1E7C43FA8;
  v17 = self;
  v18 = a4;
  v16 = v10;
  v12 = v10;
  v13 = [v11 fc_array:v15];

  return v13;
}

id __54__FCLocalAreasMapping_tagIDsForLocation_searchOption___block_invoke(uint64_t a1, void *a2)
{
  [a2 centerLocationCoordinateForEntireRegion];
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v7 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v5 longitude:v6];
  [v4 distanceFromLocation:v7];
  v8 = [v3 numberWithDouble:?];

  return v8;
}

void __54__FCLocalAreasMapping_tagIDsForLocation_searchOption___block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __54__FCLocalAreasMapping_tagIDsForLocation_searchOption___block_invoke_4;
        v24[3] = &unk_1E7C43FA8;
        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v24[5] = v8;
        v24[6] = v9;
        v24[4] = v10;
        v11 = [MEMORY[0x1E695DEC8] fc_array:v24];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              if (([v4 containsObject:v16] & 1) == 0)
              {
                [v4 addObject:v16];
                [v3 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __54__FCLocalAreasMapping_tagIDsForLocation_searchOption___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    v12 = v3;
    v8 = [*(a1 + 32) regionMap];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];
    v10 = [v9 localVersionedTagIDs];
    [v12 addObjectsFromArray:v10];

    v5 = [*(a1 + 32) regionMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v7 = [v6 autoFavoriteTagIDs];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v12 = v3;
    v5 = [*(a1 + 32) regionMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v7 = [v6 localVersionedTagIDs];
  }

  v11 = v7;
  [v12 addObjectsFromArray:v7];

  v3 = v12;
LABEL_6:
}

- (FCLocalAreasMapping)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localAreasMapping"];

  v6 = [(FCLocalAreasMapping *)self initWithData:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  if (data)
  {
    [a3 encodeObject:data forKey:@"localAreasMapping"];
  }
}

@end