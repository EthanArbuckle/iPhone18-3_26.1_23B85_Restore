@interface ICTagSelection
@end

@implementation ICTagSelection

void __81__ICTagSelection_UI__summaryWithJoinOperatorMenu_usingTextStyle_foregroundColor___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = [v5 ic_attachmentCharacterString];
  v8 = [v5 stringWithFormat:@"%@_%lu", v7, a3];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
  [*(a1 + 40) addObject:v8];
}

void __81__ICTagSelection_UI__summaryWithJoinOperatorMenu_usingTextStyle_foregroundColor___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18[0] = *MEMORY[0x1E69DB648];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v6 boldFontForTextStyle:v7];
  v18[1] = *MEMORY[0x1E69DB650];
  v19[0] = v9;
  v19[1] = *(a1 + 48);
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [v10 mutableCopy];

  v12 = [*(a1 + 32) excludedHashtagPrefixedDisplayTexts];
  LODWORD(v10) = [v12 containsObject:v5];

  if (v10)
  {
    [v11 setObject:&unk_1F4FC3EB8 forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
  }

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v11];
  v14 = [*(a1 + 56) string];
  v15 = [v14 rangeOfString:v8];
  v17 = v16;

  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v15 + v17 <= [*(a1 + 56) length])
  {
    [*(a1 + 56) replaceCharactersInRange:v15 withAttributedString:{v17, v13}];
  }
}

@end