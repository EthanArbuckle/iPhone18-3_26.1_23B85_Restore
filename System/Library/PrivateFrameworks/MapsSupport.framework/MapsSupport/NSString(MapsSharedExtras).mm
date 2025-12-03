@interface NSString(MapsSharedExtras)
- (id)_maps_prefixMatchesForSearchString:()MapsSharedExtras;
@end

@implementation NSString(MapsSharedExtras)

- (id)_maps_prefixMatchesForSearchString:()MapsSharedExtras
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_autoreleasePoolPush();
  array2 = [MEMORY[0x277CBEB18] array];
  v8 = [v4 length];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __65__NSString_MapsSharedExtras___maps_prefixMatchesForSearchString___block_invoke;
  v46[3] = &unk_279867D38;
  v9 = array2;
  v47 = v9;
  [v4 enumerateSubstringsInRange:0 options:v8 usingBlock:{1027, v46}];
  array3 = [MEMORY[0x277CBEB18] array];
  v11 = [self length];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __65__NSString_MapsSharedExtras___maps_prefixMatchesForSearchString___block_invoke_2;
  v44[3] = &unk_279867D38;
  v12 = array3;
  v45 = v12;
  [self enumerateSubstringsInRange:0 options:v11 usingBlock:{1027, v44}];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v35)
  {
    v33 = array;
    v34 = *v41;
    context = v6;
    v30 = v4;
    v32 = v12;
    while (1)
    {
      v13 = 0;
LABEL_4:
      if (*v41 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v40 + 1) + 8 * v13);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = [v12 copy];
      v16 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = *v37;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * v19);
        v21 = [v20 objectAtIndexedSubscript:0];
        v22 = [v20 objectAtIndexedSubscript:1];
        rangeValue = [v22 rangeValue];

        if (![v21 localizedStandardRangeOfString:v14])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      v24 = [v14 length];
      v25 = [MEMORY[0x277CCAE60] valueWithRange:{rangeValue, v24}];
      array = v33;
      [v33 addObject:v25];

      v12 = v32;
      [v32 removeObject:v20];

      if (++v13 != v35)
      {
        goto LABEL_4;
      }

      v6 = context;
      v4 = v30;
      v35 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (!v35)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    objc_autoreleasePoolPop(context);
    v26 = 0;
    v4 = v30;
    array = v33;
  }

  else
  {
LABEL_17:

    objc_autoreleasePoolPop(v6);
    v26 = array;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end