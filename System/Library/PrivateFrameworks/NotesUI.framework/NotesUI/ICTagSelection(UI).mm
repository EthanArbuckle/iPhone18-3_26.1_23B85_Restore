@interface ICTagSelection(UI)
- (id)boldFontForTextStyle:()UI;
- (id)fontForTextStyle:()UI;
- (id)summaryWithJoinOperatorMenu:()UI usingTextStyle:foregroundColor:;
@end

@implementation ICTagSelection(UI)

- (id)summaryWithJoinOperatorMenu:()UI usingTextStyle:foregroundColor:
{
  v54[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E69DB648];
  v53[0] = *MEMORY[0x1E69DB648];
  v12 = [a1 fontForTextStyle:v8];
  v53[1] = *MEMORY[0x1E69DB650];
  v54[0] = v12;
  v54[1] = v9;
  v13 = 0x1E695D000uLL;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v15 = [v10 dictionaryWithDictionary:v14];

  v16 = [a1 mode];
  switch(v16)
  {
    case 2:
      v21 = objc_alloc(MEMORY[0x1E696AD40]);
      v22 = @"Show untagged notes only.";
      goto LABEL_8;
    case 1:
      v21 = objc_alloc(MEMORY[0x1E696AD40]);
      v22 = @"Show notes with tags.";
LABEL_8:
      v17 = __ICLocalizedFrameworkString_impl(v22, v22, 0, 1);
      v23 = v21;
      goto LABEL_9;
    case 0:
      if ([a1 selectedTagCount] >= 3)
      {
        v17 = __ICLocalizedFrameworkString_impl(@"Show notes that match INLINE_MENU_PLEASE_READ_COMMENTS %lu selected tags.", @"Show notes that match INLINE_MENU_PLEASE_READ_COMMENTS %lu selected tags.", 0, 1);
        v18 = objc_alloc(MEMORY[0x1E696AD40]);
        v19 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v17, objc_msgSend(a1, "selectedTagCount")];
        v20 = [v18 initWithString:v19 attributes:v15];

        goto LABEL_10;
      }

      if ([a1 selectedTagCount])
      {
        if ([a1 selectedTagCount] == 1)
        {
          v34 = @"Show notes that match the selected tag: %@.";
        }

        else
        {
          v34 = @"Show notes that match INLINE_MENU_PLEASE_READ_COMMENTS selected tags: %@.";
        }

        v17 = __ICLocalizedFrameworkString_impl(v34, v34, 0, 1);
        v35 = [MEMORY[0x1E695DF70] array];
        v36 = [MEMORY[0x1E695DF90] dictionary];
        v37 = [a1 hashtagPrefixedDisplayTexts];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __81__ICTagSelection_UI__summaryWithJoinOperatorMenu_usingTextStyle_foregroundColor___block_invoke;
        v48[3] = &unk_1E846AD40;
        v49 = v36;
        v50 = v35;
        v43 = v35;
        v38 = v36;
        [v37 enumerateObjectsUsingBlock:v48];

        v42 = __ICLocalizedFrameworkString_impl(@", ", @", ", 0, 1);
        v41 = [v43 componentsJoinedByString:v42];
        v39 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v17, v41];
        v40 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v39 attributes:v15];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __81__ICTagSelection_UI__summaryWithJoinOperatorMenu_usingTextStyle_foregroundColor___block_invoke_2;
        v44[3] = &unk_1E846AD68;
        v44[4] = a1;
        v45 = v8;
        v46 = v9;
        v20 = v40;
        v47 = v20;
        [v38 enumerateKeysAndObjectsUsingBlock:v44];

        v13 = 0x1E695D000;
LABEL_10:

        if (a3)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      v17 = __ICLocalizedFrameworkString_impl(@"Show notes that match INLINE_MENU_PLEASE_READ_COMMENTS selected tags.", @"Show notes that match INLINE_MENU_PLEASE_READ_COMMENTS selected tags.", 0, 1);
      v23 = objc_alloc(MEMORY[0x1E696AD40]);
LABEL_9:
      v20 = [v23 initWithString:v17 attributes:v15];
      goto LABEL_10;
  }

  v20 = 0;
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_13:
  v24 = [v20 string];
  v25 = [v24 rangeOfString:ICTagSelectionMenuReplacementSubstring];
  v27 = v26;

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v51 = v11;
    v28 = [a1 boldFontForTextStyle:v8];
    v52 = v28;
    v29 = [*(v13 + 3872) dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    [v20 addAttributes:v29 range:{v25, v27}];

    [a1 tagOperator];
    v30 = ICLocalizedStringFromICTagSelectionOperator();
    [v20 replaceCharactersInRange:v25 withString:{v27, v30}];
  }

LABEL_15:
  if (v20)
  {
    v31 = [v20 copy];
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4F94F00];
  }

  v32 = v31;

  return v32;
}

- (id)fontForTextStyle:()UI
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
  v1 = [v0 ic_fontWithSingleLineA];

  return v1;
}

- (id)boldFontForTextStyle:()UI
{
  v3 = [MEMORY[0x1E69DB878] ic_preferredFontForStyle:a3 symbolicTraits:2];
  v4 = [v3 ic_fontWithSingleLineA];

  return v4;
}

@end