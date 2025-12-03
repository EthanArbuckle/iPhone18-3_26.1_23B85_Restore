@interface NSAttributedString(IC_UI)
+ (id)ic_attributedStringWithString:()IC_UI font:;
+ (id)ic_blockQuoteMenuItemAttributedString;
- (id)_ic_attributedStringByHighlightingRegexMatches:()IC_UI withHighlightColor:attributeName:;
- (id)ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext:()IC_UI;
- (id)ic_attributedStringByFlatteningInlineAttachmentsWithContext:()IC_UI formatter:;
- (id)ic_attributedStringByHighlightingRegex:()IC_UI withHighlightColor:attributeName:;
- (id)ic_attributedStringByHighlightingRegexFinderMatches:()IC_UI withHighlightColor:attributeName:;
- (id)ic_attributedSubstringUntilLine:()IC_UI;
- (id)ic_attributesByHighlightingAttributes:()IC_UI withHighlightColor:attributeName:;
- (id)ic_itemProviderDataForUTI:()IC_UI;
- (id)ic_stringByTrimmingLeadingTrailingWhitespace;
- (id)ic_stringWithoutAttachments;
- (uint64_t)ic_containsBlockAttachmentsInRange:()IC_UI;
- (uint64_t)ic_containsTextAttachment:()IC_UI;
- (uint64_t)ic_rangeForAttachment:()IC_UI withTextAttachment:;
- (uint64_t)ic_rangeForBaseAttachment:()IC_UI withTextAttachment:;
- (uint64_t)ic_rangeForInlineAttachment:()IC_UI withTextAttachment:;
- (uint64_t)ic_writingDirectionAtIndex:()IC_UI;
@end

@implementation NSAttributedString(IC_UI)

+ (id)ic_blockQuoteMenuItemAttributedString
{
  v0 = objc_alloc(MEMORY[0x1E696AD40]);
  v1 = __ICLocalizedFrameworkString_impl(@"Block Quote", @"Block Quote", 0, 1);
  v2 = [v0 initWithString:v1];

  v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v2 insertAttributedString:v3 atIndex:0];

  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"|"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v7 = *MEMORY[0x1E69DB650];
  [dictionary setObject:secondaryLabelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  [dictionary setObject:&unk_1F4FC4140 forKeyedSubscript:*MEMORY[0x1E69DB610]];
  ic_preferredFontForBodyText = [MEMORY[0x1E69DB878] ic_preferredFontForBodyText];
  ic_fontWithSymbolicBoldTrait = [ic_preferredFontForBodyText ic_fontWithSymbolicBoldTrait];
  ic_fontWithRoundedDesign = [ic_fontWithSymbolicBoldTrait ic_fontWithRoundedDesign];

  [dictionary setObject:ic_fontWithRoundedDesign forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v4 addAttributes:dictionary range:{0, 1}];
  [v2 insertAttributedString:v4 atIndex:0];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [dictionary2 setObject:labelColor forKeyedSubscript:v7];

  [v2 addAttributes:dictionary2 range:{1, objc_msgSend(v2, "length") - 1}];
  v13 = [v2 copy];

  return v13;
}

+ (id)ic_attributedStringWithString:()IC_UI font:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v12 = *MEMORY[0x1E69DB648];
  v13[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:v7 attributes:v9];

  return v10;
}

- (uint64_t)ic_rangeForAttachment:()IC_UI withTextAttachment:
{
  v9 = 0;
  v5 = [self ic_rangeForBaseAttachment:a3 withTextAttachment:&v9];
  v6 = v9;
  v7 = v6;
  if (a4 && v6)
  {
    objc_opt_class();
    *a4 = ICCheckedDynamicCast();
  }

  return v5;
}

- (uint64_t)ic_rangeForInlineAttachment:()IC_UI withTextAttachment:
{
  v9 = 0;
  v5 = [self ic_rangeForBaseAttachment:a3 withTextAttachment:&v9];
  v6 = v9;
  v7 = v6;
  if (a4 && v6)
  {
    objc_opt_class();
    *a4 = ICCheckedDynamicCast();
  }

  return v5;
}

- (uint64_t)ic_rangeForBaseAttachment:()IC_UI withTextAttachment:
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_1D449C2A9;
  v26 = xmmword_1D4433FC0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__64;
  v20 = __Block_byref_object_dispose__64;
  v21 = 0;
  v7 = [self length];
  v8 = *MEMORY[0x1E69DB5F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__NSAttributedString_IC_UI__ic_rangeForBaseAttachment_withTextAttachment___block_invoke;
  v12[3] = &unk_1E846DA48;
  v9 = v6;
  v13 = v9;
  v14 = &v22;
  v15 = &v16;
  [self enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v12}];
  if (a4)
  {
    *a4 = v17[5];
  }

  v10 = v23[4];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (id)ic_stringByTrimmingLeadingTrailingWhitespace
{
  selfCopy = self;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  string = [selfCopy string];
  v4 = [string rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
  v6 = v5;

  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    do
    {
      v8 = selfCopy;
      selfCopy = [selfCopy mutableCopy];

      [selfCopy replaceCharactersInRange:0 withString:{v6, &stru_1F4F94F00}];
      string2 = [selfCopy string];

      v10 = [string2 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
      v6 = v11;
    }

    while (v6 && !v10);
  }

  string3 = [selfCopy string];
  v13 = [string3 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:4];
  v15 = v14;

  if (v15)
  {
    while (v13 + v15 == [selfCopy length])
    {
      v16 = [selfCopy mutableCopy];

      [v16 replaceCharactersInRange:v13 withString:{v15, &stru_1F4F94F00}];
      string4 = [v16 string];

      v13 = [string4 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:4];
      v15 = v18;

      selfCopy = v16;
      if (!v15)
      {
        goto LABEL_13;
      }
    }
  }

  v16 = selfCopy;
LABEL_13:

  return v16;
}

- (id)ic_stringWithoutAttachments
{
  v2 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:self];
  v12 = 0;
  v13 = 0;
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x1E69DB5F8];
    do
    {
      v8 = [self attribute:v7 atIndex:v6 effectiveRange:&v12];
      v10 = v12;
      v9 = v13;
      if (v8)
      {
        [v2 deleteCharactersInRange:{v12 - v5, v13}];
        v5 += v13;
      }

      v6 = v9 + v10;
    }

    while (v6 < v4);
  }

  return v2;
}

- (id)ic_attributesByHighlightingAttributes:()IC_UI withHighlightColor:attributeName:
{
  v7 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = [v9 mutableCopy];
  v11 = v10;
  if (*MEMORY[0x1E69DB650] == v8 || *MEMORY[0x1E69DB600] == v8)
  {
    [v10 setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NSAttributedString(IC_UI) ic_attributesByHighlightingAttributes:v8 withHighlightColor:v13 attributeName:?];
    }
  }

  v15 = [v11 copy];

  return v15;
}

- (uint64_t)ic_writingDirectionAtIndex:()IC_UI
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [self attribute:*MEMORY[0x1E69DB688] atIndex:a3 effectiveRange:0];
  baseWritingDirection = [v5 baseWritingDirection];
  if (baseWritingDirection == -1)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD00]);
    v15[0] = *MEMORY[0x1E696A528];
    v8 = v15[0];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [v7 initWithTagSchemes:v9 options:0];

    string = [self string];
    v12 = [string ic_substringWithRange:{a3, 1}];
    [v10 setString:v12];

    v13 = [v10 tagAtIndex:0 scheme:v8 tokenRange:0 sentenceRange:0];
    baseWritingDirection = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:v13];
  }

  return baseWritingDirection;
}

- (id)_ic_attributedStringByHighlightingRegexMatches:()IC_UI withHighlightColor:attributeName:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __109__NSAttributedString_IC_UI___ic_attributedStringByHighlightingRegexMatches_withHighlightColor_attributeName___block_invoke;
    v22[3] = &unk_1E846DA70;
    v23 = v11;
    v12 = v11;
    [v8 enumerateObjectsUsingBlock:v22];
    v13 = [self mutableCopy];
    v14 = [self ic_attributesByHighlightingAttributes:MEMORY[0x1E695E0F8] withHighlightColor:v9 attributeName:v10];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __109__NSAttributedString_IC_UI___ic_attributedStringByHighlightingRegexMatches_withHighlightColor_attributeName___block_invoke_2;
    v19[3] = &unk_1E846DA98;
    v20 = v13;
    v21 = v14;
    v15 = v14;
    v16 = v13;
    [v12 enumerateRangesUsingBlock:v19];
    selfCopy = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v16];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)ic_attributedStringByHighlightingRegex:()IC_UI withHighlightColor:attributeName:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  string = [self string];
  v12 = [v10 matchesInString:string options:0 range:{0, objc_msgSend(self, "length")}];

  v13 = [self _ic_attributedStringByHighlightingRegexMatches:v12 withHighlightColor:v9 attributeName:v8];

  return v13;
}

- (id)ic_attributedStringByHighlightingRegexFinderMatches:()IC_UI withHighlightColor:attributeName:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  string = [self string];
  v12 = [v10 matchesInDocumentWithPerTokenFallback:string];

  allObjects = [v12 allObjects];

  v14 = [self _ic_attributedStringByHighlightingRegexMatches:allObjects withHighlightColor:v9 attributeName:v8];

  return v14;
}

- (id)ic_itemProviderDataForUTI:()IC_UI
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__64;
  v17 = __Block_byref_object_dispose__64;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__NSAttributedString_IC_UI__ic_itemProviderDataForUTI___block_invoke;
  v10[3] = &unk_1E846DAC0;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  v7 = [self loadDataWithTypeIdentifier:v4 forItemProviderCompletionHandler:v10];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)ic_attributedStringByFlatteningInlineAttachmentsWithContext:()IC_UI formatter:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__NSAttributedString_IC_UI__ic_attributedStringByFlatteningInlineAttachmentsWithContext_formatter___block_invoke_2;
  v10[3] = &unk_1E846DB08;
  v11 = v6;
  v7 = v6;
  v8 = [self ic_attributedStringByFlatteningInlineAttachmentsWithContext:a3 flattenUnsupportedInlineAttachmentsOnly:0 updateRangeValueToObjectMapBlock:&__block_literal_global_79 replacementAttributedStringBlock:v10];

  return v8;
}

- (id)ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext:()IC_UI
{
  v4 = a3;
  v5 = [self mutableCopy];
  v6 = *MEMORY[0x1E69DB5F8];
  v7 = [self length];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __108__NSAttributedString_IC_UI__ic_attributedStringByCopyingInlineAttachmentsAndUpdatingChangeCountWithContext___block_invoke;
  v15 = &unk_1E846A768;
  v16 = v4;
  v17 = v5;
  v8 = v5;
  v9 = v4;
  [v8 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, &v12}];
  v10 = [v8 copy];

  return v10;
}

- (uint64_t)ic_containsBlockAttachmentsInRange:()IC_UI
{
  if ([self containsAttachmentsInRange:?])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = *MEMORY[0x1E69DB5F8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__NSAttributedString_IC_UI__ic_containsBlockAttachmentsInRange___block_invoke;
    v10[3] = &unk_1E846A0D0;
    v10[4] = &v11;
    [self enumerateAttribute:v7 inRange:a3 options:a4 usingBlock:{0, v10}];
    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (uint64_t)ic_containsTextAttachment:()IC_UI
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  ic_range = [self ic_range];
  v7 = v6;
  v8 = *MEMORY[0x1E69DB5F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__NSAttributedString_IC_UI__ic_containsTextAttachment___block_invoke;
  v12[3] = &unk_1E846D378;
  v9 = v4;
  v13 = v9;
  v14 = &v15;
  [self enumerateAttribute:v8 inRange:ic_range options:v7 usingBlock:{0, v12}];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (id)ic_attributedSubstringUntilLine:()IC_UI
{
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__NSAttributedString_IC_UI__ic_attributedSubstringUntilLine___block_invoke;
  v17[3] = &unk_1E846AF80;
  v17[4] = self;
  ic_range = [self ic_range];
  v7 = [self ic_componentRangesSeparatedByPredicate:v17 inRange:{ic_range, v6}];
  v8 = [v7 count];
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 subarrayWithRange:{0, v9}];

  lastObject = [v10 lastObject];
  rangeValue = [lastObject rangeValue];
  v14 = [self attributedSubstringFromRange:{0, rangeValue + v13}];
  v15 = [v14 mutableCopy];

  return v15;
}

- (void)ic_attributesByHighlightingAttributes:()IC_UI withHighlightColor:attributeName:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Invalid highlighting attribute: %@", &v2, 0xCu);
}

@end