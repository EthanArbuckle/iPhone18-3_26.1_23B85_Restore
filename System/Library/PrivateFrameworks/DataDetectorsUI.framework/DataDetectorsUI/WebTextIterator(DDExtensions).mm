@interface WebTextIterator(DDExtensions)
- (id)dd_collectDDRangesForQuery:()DDExtensions forResults:;
@end

@implementation WebTextIterator(DDExtensions)

- (id)dd_collectDDRangesForQuery:()DDExtensions forResults:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v35)
  {
    v6 = 0;
    v33 = *v38;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        QueryRangeForURLification = DDResultGetQueryRangeForURLification();
        v10 = v9;
        v11 = QueryRangeForURLification >> 16;
        FragmentMetaData = DDScanQueryGetFragmentMetaData();
        v13 = FragmentMetaData;
        if (v6 < FragmentMetaData)
        {
          v14 = FragmentMetaData - v6;
          do
          {
            [a1 advance];
            --v14;
          }

          while (v14);
          v6 = v13;
        }

        v15 = [a1 currentRange];
        v16 = [DDRange rangeWithDOMRange:v15];

        v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v16, 0}];
        v18 = [v16 node];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v20 = v10 >> 16;
        if (v11 < v20)
        {
          do
          {
            ++v11;
            v21 = DDScanQueryGetFragmentMetaData();
            v22 = v21;
            if (v6 < v21)
            {
              v23 = v21 - v6;
              do
              {
                [a1 advance];
                --v23;
              }

              while (v23);
              v6 = v22;
            }

            v24 = [a1 currentRange];
            v25 = [DDRange rangeWithDOMRange:v24];
            [v17 addObject:v25];

            if (isKindOfClass)
            {
              v26 = [v16 node];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          while (v11 != v20);
        }

        if (isKindOfClass)
        {
          [v34 addObject:v17];
        }

        else
        {
          v27 = [MEMORY[0x277CBEB68] null];
          [v34 addObject:v27];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);
  v28 = v34;

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

@end