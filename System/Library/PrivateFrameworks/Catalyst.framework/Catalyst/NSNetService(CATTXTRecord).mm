@interface NSNetService(CATTXTRecord)
+ (id)cat_dataFromDictionary:()CATTXTRecord;
+ (id)cat_dictionaryFromData:()CATTXTRecord;
@end

@implementation NSNetService(CATTXTRecord)

+ (id)cat_dictionaryFromData:()CATTXTRecord
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    context = objc_autoreleasePoolPush();
    v31 = v3;
    v5 = [MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:v3];
    v6 = [v5 allKeys];
    v7 = [MEMORY[0x277CBEB58] setWithArray:v6];
    v28 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_28];
    v29 = v6;
    v8 = [v6 objectsAtIndexes:?];
    v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
    [v7 minusSet:v9];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v8;
    v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v34)
    {
      v33 = *v40;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          v11 = v4;
          if (*v40 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v39 + 1) + 8 * i) substringToIndex:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "length") - objc_msgSend(@"-0", "length")}];
          v13 = objc_opt_new();
          for (j = 0; ; ++j)
          {
            v15 = [v12 stringByAppendingFormat:@"-%lu", j];
            [v7 removeObject:v15];
            v16 = [v5 objectForKeyedSubscript:v15];
            if (!v16)
            {
              break;
            }

            v17 = v16;
            [v13 appendData:v16];
          }

          v4 = v11;
          [v11 setObject:v13 forKeyedSubscript:v12];
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v35 + 1) + 8 * k);
          v24 = [v5 objectForKeyedSubscript:v23];
          [v4 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v20);
    }

    objc_autoreleasePoolPop(context);
    v25 = [v4 copy];

    v3 = v31;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)cat_dataFromDictionary:()CATTXTRecord
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v25)
  {
    v24 = *v31;
    v5 = @"-%lu";
    v29 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [obj objectForKeyedSubscript:v7];
        v9 = [v7 length];
        v10 = 249 - v9;
        v11 = [v8 length] / (249 - v9) + 1;
        if (v11 < 2)
        {
          [v4 setObject:v8 forKey:v7];
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v28 = v9 - 249;
          do
          {
            v15 = v11;
            v16 = [v8 length];
            if (v10 >= v16 + v12)
            {
              v17 = v16 + v12;
            }

            else
            {
              v17 = v10;
            }

            v18 = [v8 subdataWithRange:{v13, v17}];
            [v7 stringByAppendingFormat:v5, v14];
            v20 = v19 = v5;
            [v29 setObject:v18 forKey:v20];

            v5 = v19;
            v11 = v15;
            ++v14;
            v13 += v10;
            v12 += v28;
          }

          while (v14 < v15);
        }

        v6 = v27 + 1;
        v4 = v29;
      }

      while (v27 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v25);
  }

  v21 = [MEMORY[0x277CBAB60] dataFromTXTRecordDictionary:v4];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end