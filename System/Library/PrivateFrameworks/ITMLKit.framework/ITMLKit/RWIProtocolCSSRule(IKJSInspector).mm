@interface RWIProtocolCSSRule(IKJSInspector)
+ (id)ik_cssRuleForRule:()IKJSInspector withOrdinal:forStyleSheetHeader:forStyleMarkup:withNewLineIndexSet:;
- (id)ik_ruleMatchForClassSelectors:()IKJSInspector andIdSelector:;
@end

@implementation RWIProtocolCSSRule(IKJSInspector)

+ (id)ik_cssRuleForRule:()IKJSInspector withOrdinal:forStyleSheetHeader:forStyleMarkup:withNewLineIndexSet:
{
  v39[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = MEMORY[0x277D7B6C8];
  v15 = a7;
  v16 = a6;
  selectorList = [v12 selectorList];
  v18 = [v14 ik_cssSelectorListFromSelectorList:selectorList forStyleMarkup:v16 withNewLineIndexSet:v15];

  v19 = MEMORY[0x277D7B6E0];
  declarationList = [v12 declarationList];
  v21 = [v19 ik_cssStyleFromDeclarationList:declarationList forStyleMarkup:v16 withNewLineIndexSet:v15 existingStyle:0];

  v22 = MEMORY[0x277D7B6F0];
  styleSheetId = [v13 styleSheetId];
  v24 = [v22 safe_initWithStyleSheetId:styleSheetId ordinal:a4];

  [v21 setStyleId:v24];
  v25 = MEMORY[0x277D7B6A8];
  if (v16)
  {
    range = [v18 range];
    startLine = [range startLine];
  }

  else
  {
    startLine = 0;
  }

  v27 = [v25 safe_initWithSelectorList:v18 sourceLine:startLine origin:objc_msgSend(v13 style:{"origin"), v21}];
  if (v16)
  {
  }

  v28 = MEMORY[0x277D7B6B0];
  styleSheetId2 = [v13 styleSheetId];
  v30 = [v28 safe_initWithStyleSheetId:styleSheetId2 ordinal:a4];

  [v27 setRuleId:v30];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = MEMORY[0x277D7B680];
    v32 = v12;
    v33 = [v31 safe_initWithType:0];
    mediaQuery = [v32 mediaQuery];

    queryExpression = [mediaQuery queryExpression];
    [v33 setText:queryExpression];

    v39[0] = v33;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v27 setGroupings:v36];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)ik_ruleMatchForClassSelectors:()IKJSInspector andIdSelector:
{
  v6 = a3;
  v7 = a4;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  selectorList = [self selectorList];
  selectors = [selectorList selectors];
  v11 = [selectors count];

  if (v11)
  {
    v12 = 0;
    while (1)
    {
      selectors2 = [selectorList selectors];
      v14 = [selectors2 objectAtIndex:v12];

      if ([v7 length])
      {
        text = [v14 text];
        if ([text hasPrefix:@"#"])
        {
          text2 = [v14 text];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@", v7];
          v18 = [text2 isEqualToString:v17];

          if (v18)
          {
            break;
          }
        }

        else
        {
        }
      }

      if ([v6 count])
      {
        text3 = [v14 text];
        if (![text3 hasPrefix:@"."])
        {
          goto LABEL_12;
        }

        text4 = [v14 text];
        v21 = [text4 substringFromIndex:1];
        v22 = [v6 containsObject:v21];

        if (v22)
        {
          break;
        }
      }

LABEL_13:

      ++v12;
      selectors3 = [selectorList selectors];
      v24 = [selectors3 count];

      if (v12 >= v24)
      {
        goto LABEL_14;
      }
    }

    text3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [array addObject:text3];
LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
  v25 = [MEMORY[0x277D7B6B8] safe_initWithRule:selfCopy matchingSelectors:array];

  return v25;
}

@end