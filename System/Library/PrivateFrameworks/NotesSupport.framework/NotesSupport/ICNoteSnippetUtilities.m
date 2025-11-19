@interface ICNoteSnippetUtilities
+ (_NSRange)rangeForTitleInContent:(id)a3 truncated:(BOOL *)a4;
+ (id)attributedStringByRemovingTitle:(id)a3 fromAttributedString:(id)a4;
+ (id)snippetForContent:(id)a3;
+ (id)stringByRemovingTitle:(id)a3 fromString:(id)a4;
+ (id)widgetSnippetForContent:(id)a3;
@end

@implementation ICNoteSnippetUtilities

+ (_NSRange)rangeForTitleInContent:(id)a3 truncated:(BOOL *)a4
{
  v5 = a3;
  v6 = +[ICNoteSnippetUtilities snippetAndTitleTrimCharacterSet];
  v7 = [v6 invertedSet];
  v8 = [v5 rangeOfCharacterFromSet:v7];

  v9 = v8 != 0x7FFFFFFFFFFFFFFFLL;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v5 paragraphRangeForRange:{v10, 0}];
  v13 = v11 < v8;
  v14 = !v9 || !v13;
  if (v9 && v13)
  {
    v15 = v12 - v8 + v11;
  }

  else
  {
    v15 = v12;
  }

  if (v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = v8;
  }

  if (v15 >= 0x41)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3010000000;
    v33 = &unk_1D45D60DB;
    v34 = v16;
    v35 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __59__ICNoteSnippetUtilities_rangeForTitleInContent_truncated___block_invoke;
    v29[3] = &unk_1E8484F38;
    v29[4] = &v30;
    [v5 enumerateSubstringsInRange:v16 options:v15 usingBlock:{3, v29}];
    v17 = v31;
    v18 = v31[5];
    if (v18 <= 0x64)
    {
      if (v18)
      {
LABEL_20:
        v20 = [v5 rangeOfComposedCharacterSequencesForRange:v17[4]];
        v22 = v20;
        v23 = v21;
        v24 = v31;
        v31[4] = v20;
        v24[5] = v21;
        if (a4)
        {
          v26 = v16 != v20 || v15 != v21;
          *a4 = v26;
        }

        _Block_object_dispose(&v30, 8);
        v15 = v23;
        v16 = v22;
        goto LABEL_29;
      }

      v31[4] = v16;
      if (v15 >= 0x64)
      {
        v19 = 100;
      }

      else
      {
        v19 = v15;
      }
    }

    else
    {
      v19 = 100;
    }

    v17[5] = v19;
    goto LABEL_20;
  }

  if (a4)
  {
    *a4 = 0;
  }

LABEL_29:

  v27 = v16;
  v28 = v15;
  result.length = v28;
  result.location = v27;
  return result;
}

NSUInteger __59__ICNoteSnippetUtilities_rangeForTitleInContent_truncated___block_invoke(uint64_t a1, uint64_t a2, NSRange a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = NSUnionRange(*(*(*(a1 + 32) + 8) + 32), a3);
  result = v9.location;
  *(*(*(a1 + 32) + 8) + 32) = v9;
  if (*(*(*(a1 + 32) + 8) + 40) >= 0x41uLL)
  {
    *a6 = 1;
  }

  return result;
}

+ (id)snippetForContent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([v4 length] >= 0x100)
  {
    v5 = [v4 ic_substringToIndex:255];
  }

  v6 = [a1 snippetAndTitleTrimCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [v7 ic_whitespaceAndNewlineCoalescedString];

  return v8;
}

+ (id)widgetSnippetForContent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 length] >= 0x100)
  {
    v4 = [v3 ic_substringToIndex:255];
  }

  v5 = [v4 ic_stringByRemovingAttachmentCharacters];

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = &stru_1F4FCDA88;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ICNoteSnippetUtilities_widgetSnippetForContent___block_invoke;
  v8[3] = &unk_1E8484F60;
  v8[4] = &v9;
  [v5 enumerateLinesUsingBlock:v8];
  if (![v10[5] length])
  {
    objc_storeStrong(v10 + 5, v5);
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __50__ICNoteSnippetUtilities_widgetSnippetForContent___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([v9 isEqualToString:&stru_1F4FCDA88] & 1) == 0)
  {
    if (([*(*(*(a1 + 32) + 8) + 40) isEqualToString:&stru_1F4FCDA88] & 1) == 0)
    {
      v3 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:@"\n"];
      v4 = *(*(a1 + 32) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    v6 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:v9];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

+ (id)stringByRemovingTitle:(id)a3 fromString:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 rangeOfString:a3];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 + v8;
    }

    if (v9 <= [v6 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 substringFromIndex:v10];
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;

  return v12;
}

+ (id)attributedStringByRemovingTitle:(id)a3 fromAttributedString:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = a3;
    v8 = [v6 string];
    v9 = [v8 rangeOfString:v7];
    v11 = v10;

    v12 = [v6 ic_range];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9 + v11;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 - (v9 + v11);
    }

    v16 = [v6 ic_attributedSubstringFromRange:{v14, v15}];
  }

  else
  {
    v16 = v5;
  }

  v17 = v16;

  return v17;
}

@end