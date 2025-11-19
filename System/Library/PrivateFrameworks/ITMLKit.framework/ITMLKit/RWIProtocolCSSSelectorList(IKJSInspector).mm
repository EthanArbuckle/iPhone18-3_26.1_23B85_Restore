@interface RWIProtocolCSSSelectorList(IKJSInspector)
+ (id)ik_cssSelectorListFromSelectorList:()IKJSInspector forStyleMarkup:withNewLineIndexSet:;
@end

@implementation RWIProtocolCSSSelectorList(IKJSInspector)

+ (id)ik_cssSelectorListFromSelectorList:()IKJSInspector forStyleMarkup:withNewLineIndexSet:
{
  v6 = a3;
  v28 = a5;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x277CCAB68] string];
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 selectorAtIndex:v9];
      v11 = MEMORY[0x277D7B6C0];
      v12 = [v10 stringValue];
      v13 = [v11 safe_initWithText:v12];

      [v7 addObject:v13];
      if (v9)
      {
        v14 = @", ";
      }

      else
      {
        v14 = &stru_2866C1E60;
      }

      v15 = [v10 stringValue];
      [v8 appendFormat:@"%@%@", v14, v15];

      ++v9;
    }

    while ([v6 count] > v9);
  }

  v16 = [MEMORY[0x277D7B6C8] safe_initWithSelectors:v7 text:v8];
  if ([v6 count])
  {
    v17 = [v6 selectorAtIndex:0];
    v18 = [v17 range];
    v20 = v19;

    v21 = [v6 selectorAtIndex:{objc_msgSend(v6, "count") - 1}];
    v22 = [v21 range];
    v24 = v23;

    v30.location = v18;
    v30.length = v20;
    v31.location = v22;
    v31.length = v24;
    v25 = NSUnionRange(v30, v31);
    v26 = [MEMORY[0x277D7B6D8] ik_cssSourceRangeForRange:v25.location withNewLineIndexSet:{v25.length, v28}];
    if (v26)
    {
      [v16 setRange:v26];
    }
  }

  return v16;
}

@end