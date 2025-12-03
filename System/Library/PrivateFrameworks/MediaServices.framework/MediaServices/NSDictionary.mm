@interface NSDictionary
- (void)_msv_enumerateKeysAndObjectsWithSortedKeys:(void *)keys usingBlock:;
@end

@implementation NSDictionary

uint64_t __53__NSDictionary_MSVSequence__msv_reduceIntoObject_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = (*(*(a1 + 32) + 16))();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53__NSDictionary_MSVSequence__msv_reduceIntoUInt64_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __53__NSDictionary_MSVSequence__msv_reduceIntoUInt32_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __51__NSDictionary_MSVSequence__msv_reduceIntoUInt_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __52__NSDictionary_MSVSequence__msv_reduceIntoInt64_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __52__NSDictionary_MSVSequence__msv_reduceIntoInt32_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __50__NSDictionary_MSVSequence__msv_reduceIntoInt_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __51__NSDictionary_MSVSequence__msv_reduceIntoBool_by___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __41__NSDictionary_MSVSequence__msv_flatMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObjectsFromArray:v2];
}

void __44__NSDictionary_MSVSequence__msv_firstWhere___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    *a4 = 1;
    v8 = [MSVPair pairWithFirst:v11 second:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __40__NSDictionary_MSVSequence__msv_filter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v3];
  }
}

void __50__NSDictionary_MSVSequence__msv_compactMapValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, v7, a3);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

void __57__NSDictionary_MSVSequence__msv_compactMapKeysAndValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  v8 = v7;
  if (v6 != v9)
  {
    [*(a1 + 32) removeObjectForKey:v9];
  }

  if (v6)
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
  }
}

uint64_t __44__NSDictionary_MSVSequence__msv_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

void __43__NSDictionary_MSVSequence__msv_mapValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, v7, a3);
  [v4 setObject:v8 forKey:v7];
}

void __50__NSDictionary_MSVSequence__msv_mapKeysAndValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  v8 = v7;
  if (v6 != v9)
  {
    [*(a1 + 32) removeObjectForKey:v9];
  }

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __37__NSDictionary_MSVSequence__msv_map___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObject:v2];
}

- (void)_msv_enumerateKeysAndObjectsWithSortedKeys:(void *)keys usingBlock:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  keysCopy = keys;
  if (self)
  {
    v19 = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [self objectForKey:{v12, v15}];
        keysCopy[2](keysCopy, v12, v13, &v19);
        LOBYTE(v12) = v19;

        if (v12)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __52__NSDictionary_MSVAdditions__msv_compactDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (_NSIsNSString())
  {
    v6 = *(a1 + 32);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@", v11, v5];
  }

  else
  {
    v7 = _NSIsNSArray();
    v6 = *(a1 + 32);
    v8 = MEMORY[0x1E696AEC0];
    if (v7)
    {
      v9 = [v5 msv_compactDescription];
      v10 = [v8 stringWithFormat:@"%@ : [%@]", v11, v9];
      [v6 addObject:v10];

      goto LABEL_7;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ : %@", v11, v5];
  }
  v9 = ;
  [v6 addObject:v9];
LABEL_7:
}

id __49__NSDictionary_MSVJSONConvertible__msv_jsonValue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((_NSIsNSString() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MSVJSON.m" lineNumber:67 description:{@"Found non-string key in dictionary while converting to JSON: %@", v5}];
  }

  if (_NSIsNSString() || _NSIsNSNumber())
  {
    goto LABEL_5;
  }

  if (!_NSIsNSDictionary() && !_NSIsNSArray())
  {
    v8 = [MEMORY[0x1E695DFB0] null];

    if (v8 != v6)
    {
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_10;
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MSVJSON.m" lineNumber:74 description:{@"Found non-JSON value while converting to JSON dictionary: %@", v6}];
    }

LABEL_5:
    v7 = v6;
    goto LABEL_11;
  }

LABEL_10:
  v7 = [v6 msv_jsonValue];
LABEL_11:
  v9 = v7;

  return v9;
}

id __58__NSDictionary_MSVJSONConvertible__msv_initWithJSONValue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (_NSIsNSString() || _NSIsNSNumber())
  {
    goto LABEL_3;
  }

  if (_NSIsNSDictionary())
  {
    v8 = MEMORY[0x1E695DF20];
  }

  else
  {
    if (!_NSIsNSArray())
    {
      v10 = [MEMORY[0x1E695DFB0] null];

      if (v10 == v4)
      {
        v5 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_4;
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MSVJSON.m" lineNumber:60 description:{@"Found non-JSON value inside JSON dictionary: %@", v4}];

LABEL_3:
      v5 = v4;
LABEL_4:
      v6 = v5;
      goto LABEL_5;
    }

    v8 = MEMORY[0x1E695DEC8];
  }

  v9 = [v8 alloc];
  v6 = [v9 msv_initWithJSONValue:v4];

LABEL_5:

  return v6;
}

@end