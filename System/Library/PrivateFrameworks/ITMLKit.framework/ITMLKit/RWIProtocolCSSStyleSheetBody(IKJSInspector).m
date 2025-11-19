@interface RWIProtocolCSSStyleSheetBody(IKJSInspector)
+ (id)ik_stylesheetBodyFromRuleList:()IKJSInspector forStyleMarkup:withHeader:;
- (void)ik_setRuleList:()IKJSInspector;
- (void)ik_setTextNewLineIndexSet:()IKJSInspector;
@end

@implementation RWIProtocolCSSStyleSheetBody(IKJSInspector)

+ (id)ik_stylesheetBodyFromRuleList:()IKJSInspector forStyleMarkup:withHeader:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v11 = [MEMORY[0x277D7B6D8] ik_newLineIndexSetForStyleMarkup:v8];
    if ([v7 count])
    {
      v12 = 0;
      do
      {
        v13 = [v7 ruleAtIndex:v12];
        v14 = [MEMORY[0x277D7B6A8] ik_cssRuleForRule:v13 withOrdinal:v12 forStyleSheetHeader:v9 forStyleMarkup:v8 withNewLineIndexSet:v11];
        [v10 addObject:v14];

        ++v12;
      }

      while ([v7 count] > v12);
    }

    v15 = MEMORY[0x277D7B6F8];
    v16 = [v9 styleSheetId];
    v17 = [v15 safe_initWithStyleSheetId:v16 rules:v10];

    [v17 setText:v8];
    [v17 ik_setTextNewLineIndexSet:v11];
    [v17 ik_setRuleList:v7];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)ik_setRuleList:()IKJSInspector
{
  value = a3;
  v4 = [a1 ik_ruleList];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(a1, sel_ik_ruleList, value, 1);
    v5 = value;
  }
}

- (void)ik_setTextNewLineIndexSet:()IKJSInspector
{
  value = a3;
  v4 = [a1 ik_textNewLineIndexSet];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(a1, sel_ik_textNewLineIndexSet, value, 1);
    v5 = value;
  }
}

@end