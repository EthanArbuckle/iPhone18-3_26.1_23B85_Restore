@interface NSMutableString(EncodedWord)
- (void)sg_decodeEncodedWords;
@end

@implementation NSMutableString(EncodedWord)

- (void)sg_decodeEncodedWords
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if ([a1 length] >= 9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NSMutableString_EncodedWord__sg_decodeEncodedWords__block_invoke;
    block[3] = &unk_278955468;
    block[4] = a1;
    block[5] = a2;
    v32 = a1;
    v28 = v4;
    if (sg_decodeEncodedWords__pasOnceToken8 != -1)
    {
      dispatch_once(&sg_decodeEncodedWords__pasOnceToken8, block);
    }

    v5 = a1;
    v27 = sg_decodeEncodedWords__pasExprOnceResult;
    [v27 matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v36 = 0u;
    v6 = [v26 reverseObjectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      v29 = v6;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v33 + 1) + 8 * v10) range];
          v13 = v12;
          v14 = [v5 substringWithRange:{v11, v12}];
          v15 = [v14 dataUsingEncoding:1];

          v16 = [objc_alloc(MEMORY[0x277D070A0]) initWithHeaderData:v15];
          if ([v16 identifyRangeOfEncodedWordAtIndex:0] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [v16 stringEncoding];

            if (v17)
            {
              v18 = objc_opt_new();
              if ([v16 decodeEncodedTextToData:v18] && objc_msgSend(v18, "length"))
              {
                v19 = objc_alloc(MEMORY[0x277CCACA8]);
                v20 = [v16 stringEncoding];
                v21 = [v19 initWithData:v18 encoding:{objc_msgSend(v20, "unsignedIntValue")}];

                if (v21)
                {
                  v22 = v30;
                  v5 = v32;
                  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (sg_decodeEncodedWords__pasOnceToken9 != -1)
                    {
                      dispatch_once(&sg_decodeEncodedWords__pasOnceToken9, &__block_literal_global_11672);
                      v22 = v30;
                    }

                    v31 = v22 - (v11 + v13);
                    v5 = v32;
                    v23 = [v32 rangeOfCharacterFromSet:sg_decodeEncodedWords__pasExprOnceResult_18 options:2 range:?];
                    v24 = v31;
                    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v24 = 0;
                    }

                    v13 += v24;
                  }

                  [v5 replaceCharactersInRange:v11 withString:{v13, v21}];
                  v30 = v11;
                }

                else
                {
                  v5 = v32;
                }

                v6 = v29;
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }

    v4 = v28;
  }

  objc_autoreleasePoolPop(v4);
  v25 = *MEMORY[0x277D85DE8];
}

@end