@interface ICInlineAttachment(TextFinding)
- (id)textFindingResultsMatchingExpression:()TextFinding ignoreCase:wholeWords:startsWith:;
- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:;
@end

@implementation ICInlineAttachment(TextFinding)

- (id)textFindingResultsMatchingExpression:()TextFinding ignoreCase:wholeWords:startsWith:
{
  v9 = a3;
  uiModel = [self uiModel];
  v11 = [uiModel attributedStringWithSurroundingAttributes:MEMORY[0x277CBEC10] formatter:0];

  string = [v11 string];
  ic_range = [v11 ic_range];
  v15 = [v9 matchesInString:string options:0 range:{ic_range, v14}];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__ICInlineAttachment_TextFinding__textFindingResultsMatchingExpression_ignoreCase_wholeWords_startsWith___block_invoke;
  v19[3] = &unk_2781AF1A0;
  v22 = a5;
  v23 = a6;
  v20 = v11;
  selfCopy = self;
  v16 = v11;
  v17 = [v15 ic_compactMap:v19];

  return v17;
}

- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:
{
  v22 = a3;
  v15 = a4;
  v16 = a9;
  if (a8)
  {
    v17 = v22;
  }

  else
  {
    v17 = [MEMORY[0x277CCAC68] escapedPatternForString:v22];
  }

  v18 = v17;
  if (a5)
  {
    v19 = 1;
  }

  else
  {
    v19 = 1024;
  }

  v20 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v17 options:v19 error:0];
  v21 = [self textFindingResultsMatchingExpression:v20 ignoreCase:a5 wholeWords:a6 startsWith:a7];
  if (v16)
  {
    v16[2](v16, v21);
  }
}

@end