@interface NSMutableAttributedString(WDClinicalOnboardingSearchResultCellHighlighting)
+ (id)wd_stringWithString:()WDClinicalOnboardingSearchResultCellHighlighting highlightingStrings:baseColor:baseFont:highlightingBaseColor:highlightColor:highlightFont:;
@end

@implementation NSMutableAttributedString(WDClinicalOnboardingSearchResultCellHighlighting)

+ (id)wd_stringWithString:()WDClinicalOnboardingSearchResultCellHighlighting highlightingStrings:baseColor:baseFont:highlightingBaseColor:highlightColor:highlightFont:
{
  v47 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v41 = a8;
  v40 = a9;
  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v14];
  v20 = [v14 length];
  v39 = *MEMORY[0x1E69DB648];
  [v19 addAttribute:? value:? range:?];
  if ([v15 count] == 1 && (objc_msgSend(v15, "firstObject"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, !v22))
  {
    [v19 addAttribute:*MEMORY[0x1E69DB650] value:v16 range:{0, v20}];
  }

  else
  {
    v23 = *MEMORY[0x1E69DB650];
    [v19 addAttribute:*MEMORY[0x1E69DB650] value:v18 range:{0, v20, v18, v17, v16}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v15;
    v38 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v38)
    {
      v37 = *v43;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v42 + 1) + 8 * i);
          if ([v25 length])
          {
            whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v27 = [v14 rangeOfString:v25 options:1 range:{0, v20}];
            if (v27 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = v27;
              v30 = v28;
              do
              {
                if (!v29 || [whitespaceCharacterSet characterIsMember:{objc_msgSend(v14, "characterAtIndex:", v29 - 1)}])
                {
                  [v19 addAttribute:v39 value:v40 range:{v29, v30}];
                  [v19 addAttribute:v23 value:v41 range:{v29, v30}];
                }

                v29 = [v14 rangeOfString:v25 options:1 range:{v29 + v30, v20 - (v29 + v30)}];
                v30 = v31;
              }

              while (v29 != 0x7FFFFFFFFFFFFFFFLL);
            }
          }
        }

        v38 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v38);
    }

    v16 = v35;
    v18 = v33;
    v17 = v34;
  }

  return v19;
}

@end