@interface DDResultCluster
+ (id)clustersWithDDResults:(id)a3 mlResults:(id)a4;
- (__DDResult)resolvedDDResultFromOriginalQuery:(__DDScanQuery *)a3 mlSupportedTypes:(__CFArray *)a4;
- (void)addDDResult:(__DDResult *)a3;
- (void)setMLResult:(id)a3;
@end

@implementation DDResultCluster

- (__DDResult)resolvedDDResultFromOriginalQuery:(__DDScanQuery *)a3 mlSupportedTypes:(__CFArray *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableArray *)self->_DDResults count];
  v38 = self;
  MLResult = self->_MLResult;
  if (v7)
  {
    if (MLResult)
    {
      v36 = a3;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = self->_DDResults;
      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = *v44;
        v14 = -1;
        v15 = -1;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v44 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v43 + 1) + 8 * i);
            v18 = [(DDMLResult *)v38->_MLResult classification];
            if (v18 == 10 || DDMLClassificationForType(v17) != v18)
            {
              if (!DDResultTypeIsMLSupported(v17, a4) && *(v17 + 48) > v14)
              {
                v14 = *(v17 + 48);
                v11 = v17;
              }
            }

            else if (*(v17 + 48) > v15)
            {
              v15 = *(v17 + 48);
              v12 = v17;
            }
          }

          v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      if (v12)
      {
        v24 = v12;
      }

      else
      {
        v24 = v11;
      }

      a3 = v36;
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = self->_DDResults;
      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = *v40;
        v26 = -1;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(v21);
            }

            v28 = *(*(&v39 + 1) + 8 * j);
            if (!DDResultTypeIsMLSupported(v28, a4) && *(v28 + 48) > v26)
            {
              v26 = *(v28 + 48);
              v24 = v28;
            }
          }

          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v23);
      }

      else
      {
        v24 = 0;
      }
    }

    v29 = v38->_MLResult;
    if (!v24)
    {
LABEL_45:
      v24 = [(DDMLResult *)v29 ddResultFromQuery:a3];
LABEL_49:
      v35 = *MEMORY[0x1E69E9840];
      return v24;
    }

    if (v29)
    {
      if (!CFStringHasSuffix(v24->var5, @"MLCandidate"))
      {
        var0 = v24->var2.var0;
        var1 = v24->var2.var1;
        v32 = var0 - [(DDMLResult *)v38->_MLResult range];
        v33 = [(DDMLResult *)v38->_MLResult range];
        [(DDMLResult *)v38->_MLResult range];
        DDResultExpandRange(v24, a3, v32, v33 - (var0 + var1) + v34);
        goto LABEL_49;
      }

      v29 = v38->_MLResult;
      goto LABEL_45;
    }

    if ([DDMLResult shouldKeepResultOfType:v24->var5])
    {
      goto LABEL_49;
    }

LABEL_47:
    v24 = 0;
    goto LABEL_49;
  }

  if (!MLResult)
  {
    goto LABEL_47;
  }

  v19 = *MEMORY[0x1E69E9840];

  return [(DDMLResult *)MLResult ddResultFromQuery:a3];
}

- (void)setMLResult:(id)a3
{
  v12 = a3;
  if (self->_DDRange.length < 1)
  {
    goto LABEL_8;
  }

  v5 = [v12 range];
  location = self->_DDRange.location;
  if (location <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = self->_DDRange.location;
  }

  v9 = self->_DDRange.length + location;
  v10 = v5 + v6;
  v11 = v12;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v8 < v9)
  {
LABEL_8:
    objc_storeStrong(&self->_MLResult, a3);
    v11 = v12;
  }
}

- (void)addDDResult:(__DDResult *)a3
{
  if (self->_DDResults)
  {
    if (self->_DDRange.location == DDResultGetRangeForURLification(a3) && self->_DDRange.length == v5)
    {
      DDResults = self->_DDResults;

      [(NSMutableArray *)DDResults addObject:a3];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithObject:a3];
    v8 = self->_DDResults;
    self->_DDResults = v7;

    self->_DDRange.location = DDResultGetRangeForURLification(a3);
    self->_DDRange.length = v9;
  }
}

+ (id)clustersWithDDResults:(id)a3 mlResults:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = v5;
  v36 = [v5 count];
  v31 = v6;
  v35 = [v6 count];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = 0;
  v42 = 0;
  v43 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v39 = 0x7FFFFFFFFFFFFFFFuLL;
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v41 = 0x7FFFFFFFFFFFFFFFLL;
  v33 = v8;
  v34 = v7;
  while (1)
  {
    if (v13)
    {
      goto LABEL_5;
    }

    if (v12 < v36)
    {
      v13 = [v32 objectAtIndexedSubscript:v12];

      v40 = *(v13 + 32);
      v42 = *(v13 + 40);
      ++v12;
LABEL_5:
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    v13 = 0;
    if (!v10)
    {
LABEL_6:
      if (v11 >= v35)
      {
        v10 = 0;
      }

      else
      {
        v10 = [v31 objectAtIndexedSubscript:v11];
        v41 = [v10 range];
        v43 = v14;
        ++v11;
      }
    }

LABEL_11:
    v15 = v40;
    if (v10)
    {
      v16 = v40 >= v41;
    }

    else
    {
      v16 = 0;
    }

    v17 = !v16;
    if (!v17)
    {
      v15 = v41;
    }

    v18 = v42;
    v19 = v43;
    if (!v17)
    {
      v18 = v43;
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v20 = v41;
    }

    else
    {
      v19 = 0;
    }

    if (!v13)
    {
      v17 = 0;
    }

    v44 = v17;
    if (v13)
    {
      v21 = v15;
    }

    else
    {
      v21 = v20;
    }

    if (v13)
    {
      v22 = v18;
    }

    else
    {
      v22 = v19;
    }

    if (v9)
    {
      v51.location = v21;
      v51.length = v22;
      if (!NSIntersectionRange(v39, v51).length)
      {
        v37 = v12;
        v38 = v11;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = v8;
        v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v46;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(v23);
              }

              [(DDResultCluster *)v9 setMLResult:*(*(&v45 + 1) + 8 * i)];
            }

            v25 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v25);
        }

        [v23 removeAllObjects];
        v7 = v34;
        [v34 addObject:v9];

        v9 = 0;
        v8 = v33;
        v12 = v37;
        v11 = v38;
      }
    }

    if (!(v13 | v10))
    {
      break;
    }

    if (!v9)
    {
      v9 = objc_alloc_init(DDResultCluster);
      v39.location = v21;
      v39.length = v22;
    }

    if (v44)
    {
      [(DDResultCluster *)v9 addDDResult:v13];
      v13 = 0;
    }

    else
    {
      [v8 addObject:v10];

      v10 = 0;
    }
  }

  v28 = v7;

  v29 = *MEMORY[0x1E69E9840];
  return v7;
}

@end