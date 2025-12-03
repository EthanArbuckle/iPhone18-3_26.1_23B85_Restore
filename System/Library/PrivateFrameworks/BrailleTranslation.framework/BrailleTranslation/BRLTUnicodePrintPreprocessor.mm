@interface BRLTUnicodePrintPreprocessor
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges;
@end

@implementation BRLTUnicodePrintPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges
{
  v55 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v8 = stringCopy;
  if (stringCopy)
  {
    v9 = [stringCopy length];
    string = [MEMORY[0x277CCAB68] string];
    if (map)
    {
      v10 = [MEMORY[0x277CBEB28] dataWithLength:0];
    }

    else
    {
      v10 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    allKeys = [&unk_2854025F8 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v49 objects:v54 count:16];
    mapCopy = map;
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      v15 = &stru_2853FD1A8;
      do
      {
        v16 = 0;
        v17 = v15;
        do
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = [(__CFString *)v17 stringByAppendingString:*(*(&v49 + 1) + 8 * v16)];

          ++v16;
          v17 = v15;
        }

        while (v13 != v16);
        v13 = [allKeys countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = &stru_2853FD1A8;
    }

    v42 = v9;

    v18 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v15];
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = v8;
    v19 = v8;
    v47 = v18;
    v45 = v19;
    v20 = 0;
    if ([v19 rangeOfCharacterFromSet:v18] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v19;
      do
      {
        v22 = [v21 rangeOfCharacterFromSet:v47];
        v23 = v22;
        v25 = v24;
        if (v22)
        {
          if (v22 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v21;
            break;
          }

          v26 = string;
          v27 = v10;
          v28 = [v45 substringWithRange:{v20, v23}];
          [v26 appendString:v28];

          v29 = v20;
          v30 = v23;
          do
          {
            v53 = v29;
            [v27 appendBytes:&v53 length:8];
            ++v29;
            --v30;
          }

          while (v30);
        }

        v31 = [v21 substringWithRange:{v23, v25}];
        v32 = [&unk_2854025F8 objectForKey:v31];
        v33 = [v46 localizedStringForKey:v32 value:&stru_2853FD1A8 table:@"CharacterReplacements"];

        if ([v33 length])
        {
          v34 = 0;
          do
          {
            v53 = v23 + v20;
            [v10 appendBytes:&v53 length:8];
            ++v34;
          }

          while (v34 < [v33 length]);
        }

        [string appendString:v33];
        v35 = v23 + v25;
        v19 = [v21 substringFromIndex:v23 + v25];

        v20 += v35;
        v21 = v19;
      }

      while (v23 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v42 > v20)
    {
      v36 = string;
      v37 = v10;
      v38 = [v45 substringWithRange:{v20, v42 - v20}];
      [v36 appendString:v38];

      do
      {
        v53 = v20;
        [v37 appendBytes:&v53 length:8];
        ++v20;
      }

      while (v42 != v20);
    }

    if (mapCopy)
    {
      v39 = v10;
      *mapCopy = v10;
    }

    v8 = v44;
  }

  else
  {
    string = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return string;
}

@end