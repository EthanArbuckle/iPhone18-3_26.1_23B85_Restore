@interface RWIProtocolCSSStyle(IKJSInspector)
+ (id)ik_cssStyleFromDeclarationList:()IKJSInspector forStyleMarkup:withNewLineIndexSet:existingStyle:;
@end

@implementation RWIProtocolCSSStyle(IKJSInspector)

+ (id)ik_cssStyleFromDeclarationList:()IKJSInspector forStyleMarkup:withNewLineIndexSet:existingStyle:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v41 = a6;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if ([v9 count])
  {
    v13 = 0;
    do
    {
      v14 = [v9 declarationAtIndex:v13];
      v15 = v14;
      if (v10)
      {
        valueRange = [v14 valueRange];
        [v10 substringWithRange:{valueRange, v17}];
      }

      else
      {
        [v14 stringValue];
      }
      v18 = ;
      v19 = MEMORY[0x277D7B690];
      name = [v15 name];
      v21 = [v19 safe_initWithName:name value:v18];

      [v21 setParsedOk:1];
      [v21 setStatus:0];
      if (v10)
      {
        range = [v15 range];
        v24 = [v10 substringWithRange:{range, v23}];
        [v21 setText:v24];
      }

      v25 = MEMORY[0x277D7B6D8];
      range2 = [v15 range];
      v28 = [v25 ik_cssSourceRangeForRange:range2 withNewLineIndexSet:{v27, v11}];
      if (v28)
      {
        [v21 setRange:v28];
      }

      [v12 addObject:v21];

      ++v13;
    }

    while ([v9 count] > v13);
  }

  v29 = v41;
  v30 = v29;
  if (v29)
  {
    [v29 setCssProperties:v12];
    v31 = v30;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v31 = [MEMORY[0x277D7B6E0] safe_initWithCssProperties:v12 shorthandEntries:MEMORY[0x277CBEBF8]];
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  range3 = [v9 range];
  v42 = v33;
  styleId = [v30 styleId];
  styleSheetId = [styleId styleSheetId];
  v36 = [styleSheetId isEqualToString:@"inline"];

  if (v36)
  {
    v37 = [v10 length];
    range3 = 0;
  }

  else
  {
    v37 = v42;
  }

  v38 = [MEMORY[0x277D7B6D8] ik_cssSourceRangeForRange:range3 withNewLineIndexSet:{v37, v11}];
  if (v38)
  {
    [v31 setRange:v38];
  }

  if (v10)
  {
    v39 = [v10 substringWithRange:{range3, v37}];
    [v31 setCssText:v39];
  }

LABEL_23:

  return v31;
}

@end