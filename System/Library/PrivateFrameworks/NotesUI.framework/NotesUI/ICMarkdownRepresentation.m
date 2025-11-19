@interface ICMarkdownRepresentation
+ (BOOL)isMarkdownAttributedString:(id)a3;
+ (id)attributedMarkdownStringFromPlainMarkdown:(id)a3 error:(id *)a4;
+ (id)createMarkdownStringFrom:(id)a3 context:(id)a4 rangeMapping:(id *)a5;
+ (id)parseExtendedAttribute:(id)a3 token:(id)a4 markdown:(id)a5;
+ (id)parseExtendedAttributes:(id)a3;
- (ICMarkdownRepresentation)initWithMarkdown:(id)a3;
- (ICMarkdownRepresentation)initWithPlainMarkdown:(id)a3 error:(id *)a4;
- (id)createRenderableAttributedString;
@end

@implementation ICMarkdownRepresentation

+ (id)attributedMarkdownStringFromPlainMarkdown:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AAB8];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setAllowsExtendedAttributes:1];
  [v7 setAppliesSourcePositionAttributes:1];
  v14 = 0;
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithMarkdownString:v6 options:v7 baseURL:0 error:&v14];

  v9 = v14;
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v11 = v9;
      v12 = 0;
      *a4 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (ICMarkdownRepresentation)initWithPlainMarkdown:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [ICMarkdownRepresentation attributedMarkdownStringFromPlainMarkdown:v6 error:a4];
  if (!v7)
  {
    v8 = os_log_create("com.apple.notes", "Markdown");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICMarkdownRepresentation initWithPlainMarkdown:v6 error:v8];
    }

    v7 = objc_opt_new();
  }

  v9 = [ICMarkdownRepresentation parseExtendedAttributes:v7];

  v10 = [(ICMarkdownRepresentation *)self initWithMarkdown:v9];
  return v10;
}

- (ICMarkdownRepresentation)initWithMarkdown:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICMarkdownRepresentation;
  v5 = [(ICMarkdownRepresentation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICMarkdownRepresentation *)v5 setMarkdown:v4];
  }

  return v6;
}

+ (BOOL)isMarkdownAttributedString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v4 = [v3 ic_range];
    v5 = *MEMORY[0x1E696A4A0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__ICMarkdownRepresentation_isMarkdownAttributedString___block_invoke;
    v13[3] = &unk_1E846A0D0;
    v13[4] = &v14;
    [v3 enumerateAttribute:v5 inRange:v4 options:v6 usingBlock:{0, v13}];
    v7 = [v3 ic_range];
    v8 = *MEMORY[0x1E696A7D0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__ICMarkdownRepresentation_isMarkdownAttributedString___block_invoke_2;
    v12[3] = &unk_1E846A0D0;
    v12[4] = &v14;
    [v3 enumerateAttribute:v8 inRange:v7 options:v9 usingBlock:{0, v12}];
    v10 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t __55__ICMarkdownRepresentation_isMarkdownAttributedString___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t __55__ICMarkdownRepresentation_isMarkdownAttributedString___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

+ (id)parseExtendedAttribute:(id)a3 token:(id)a4 markdown:(id)a5
{
  v36 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 mutableCopy];
  v10 = [v8 string];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = v8;
  v12 = [v8 string];
  v13 = [v12 ic_range];
  v15 = v14;

  v16 = [v10 rangeOfString:v7 options:0 range:{v13, v15}];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v16;
    v19 = v17;
    do
    {
      v20 = [MEMORY[0x1E696B098] valueWithRange:{v18, v19}];
      [v11 addObject:v20];

      v18 = [v10 rangeOfString:v7 options:0 range:{v18 + v19, objc_msgSend(v10, "length") - (v18 + v19)}];
      v19 = v21;
    }

    while (v18 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v35 = v7;
  if ([v11 count])
  {
    [v11 removeLastObject];
  }

  v22 = v36;
  if ([v11 count] >= 2)
  {
    v23 = MEMORY[0x1E695E118];
    do
    {
      v24 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
      v25 = [v24 rangeValue];
      v27 = v26;

      v28 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 2}];
      v29 = [v28 rangeValue];
      v31 = v30;

      v22 = v36;
      [v9 addAttribute:v36 value:v23 range:{v29 + v31, v25 - (v29 + v31)}];
      [v9 replaceCharactersInRange:v25 withString:{v27, &stru_1F4F94F00}];
      [v9 replaceCharactersInRange:v29 withString:{v31, &stru_1F4F94F00}];
      [v11 removeLastObject];
      [v11 removeLastObject];
    }

    while ([v11 count] > 1);
  }

  v32 = [v9 copy];

  return v32;
}

+ (id)parseExtendedAttributes:(id)a3
{
  v4 = [a1 parseExtendedAttribute:ICNSAttributeNamePresentationIntentEmphasis token:@"==" markdown:a3];
  v5 = [a1 parseExtendedAttribute:ICNSAttributeNamePresentationIntentUnderline token:@"++" markdown:v4];

  return v5;
}

+ (id)createMarkdownStringFrom:(id)a3 context:(id)a4 rangeMapping:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v36 = a4;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__ICMarkdownRepresentation_createMarkdownStringFrom_context_rangeMapping___block_invoke;
  aBlock[3] = &unk_1E846E098;
  aBlock[4] = v53;
  v6 = _Block_copy(aBlock);
  v7 = [v37 mutableCopy];
  v8 = *MEMORY[0x1E69B7600];
  v9 = [v7 ic_range];
  v11 = v10;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __74__ICMarkdownRepresentation_createMarkdownStringFrom_context_rangeMapping___block_invoke_2;
  v49[3] = &unk_1E846E0C0;
  v12 = v6;
  v51 = v12;
  v50 = v7;
  v41 = v50;
  [v50 enumerateAttribute:v8 inRange:v9 options:v11 usingBlock:{0, v49}];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [v41 ic_range];
  v16 = v15;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __74__ICMarkdownRepresentation_createMarkdownStringFrom_context_rangeMapping___block_invoke_3;
  v46[3] = &unk_1E846E0E8;
  v33 = v12;
  v48 = v33;
  v17 = v13;
  v47 = v17;
  [v41 ic_enumerateAttachmentsInContext:v36 range:v14 options:v16 usingBlock:{0, v46}];
  v40 = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v18)
  {
    v19 = 0;
    v39 = *v43;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = [v21 firstObject];
        v23 = [v22 rangeValue];
        v25 = v24;

        v26 = [v21 secondObject];
        v27 = [v26 length];
        [v41 replaceCharactersInRange:v23 + v19 withAttributedString:{v25, v26}];
        v28 = [v26 length];
        v29 = [MEMORY[0x1E696B098] valueWithRange:{v23, v25}];
        v30 = [MEMORY[0x1E696B098] valueWithRange:{v23 + v19, v27}];
        [v40 setObject:v29 forKeyedSubscript:v30];

        v19 += v28 - v25;
      }

      v18 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v18);
  }

  if (a5)
  {
    *a5 = [v40 copy];
  }

  v31 = [v41 copy];

  _Block_object_dispose(v53, 8);

  return v31;
}

uint64_t __74__ICMarkdownRepresentation_createMarkdownStringFrom_context_rangeMapping___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(v1 + 24);
  *(v1 + 24) = result + 1;
  return result;
}

void __74__ICMarkdownRepresentation_createMarkdownStringFrom_context_rangeMapping___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v23 = ICDynamicCast();

  if (v23)
  {
    v8 = [v23 style];
    if (v8 <= 4)
    {
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_23;
          }

          v14 = MEMORY[0x1E696AE28];
          v15 = (*(*(a1 + 40) + 16))();
          v16 = v14;
          v17 = 2;
        }

        else
        {
          v22 = MEMORY[0x1E696AE28];
          v15 = (*(*(a1 + 40) + 16))();
          v16 = v22;
          v17 = 1;
        }
      }

      else
      {
        if (v8 != 2)
        {
          if (v8 != 3)
          {
            v9 = [MEMORY[0x1E696AE28] codeBlockIntentWithIdentity:(*(*(a1 + 40) + 16))() languageHint:0 nestedInsideIntent:0];
            goto LABEL_21;
          }

          goto LABEL_17;
        }

        v21 = MEMORY[0x1E696AE28];
        v15 = (*(*(a1 + 40) + 16))();
        v16 = v21;
        v17 = 3;
      }

      v9 = [v16 headerIntentWithIdentity:v15 level:v17 nestedInsideIntent:0];
LABEL_21:
      v20 = v9;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if ((v8 - 100) < 2)
    {
      v10 = MEMORY[0x1E696AE28];
      v11 = (*(*(a1 + 40) + 16))();
      v12 = [v23 startingItemNumber];
      v13 = [MEMORY[0x1E696AE28] unorderedListIntentWithIdentity:(*(*(a1 + 40) + 16))() nestedInsideIntent:0];
    }

    else
    {
      if (v8 == 5)
      {
LABEL_17:
        v9 = [MEMORY[0x1E696AE28] paragraphIntentWithIdentity:(*(*(a1 + 40) + 16))() nestedInsideIntent:0];
        goto LABEL_21;
      }

      if (v8 != 102)
      {
        goto LABEL_23;
      }

      v10 = MEMORY[0x1E696AE28];
      v11 = (*(*(a1 + 40) + 16))();
      v12 = [v23 startingItemNumber];
      v13 = [MEMORY[0x1E696AE28] orderedListIntentWithIdentity:(*(*(a1 + 40) + 16))() nestedInsideIntent:0];
    }

    v18 = v13;
    v19 = [v10 listItemIntentWithIdentity:v11 ordinal:v12 nestedInsideIntent:v13];

    v20 = [MEMORY[0x1E696AE28] paragraphIntentWithIdentity:(*(*(a1 + 40) + 16))() nestedInsideIntent:v19];

    if (v20)
    {
LABEL_22:
      [*(a1 + 32) addAttribute:*MEMORY[0x1E696A7D0] value:v20 range:{a3, a4}];
    }
  }

LABEL_23:
}

void __74__ICMarkdownRepresentation_createMarkdownStringFrom_context_rangeMapping___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  if ([v35 isTable])
  {
    v33 = a3;
    v34 = a4;
    v37 = objc_opt_new();
    objc_opt_class();
    v7 = [v35 attachmentModel];
    v8 = ICDynamicCast();

    v32 = v8;
    v9 = [v8 table];
    v10 = MEMORY[0x1E696AE28];
    v11 = (*(*(a1 + 40) + 16))();
    v12 = [v9 columnCount];
    v13 = [MEMORY[0x1E695DEC8] ic_repeating:&unk_1F4FC4188 count:{objc_msgSend(v9, "columnCount")}];
    v36 = [v10 tableIntentWithIdentity:v11 columnCount:v12 alignments:v13 nestedInsideIntent:0];

    if ([v9 rowCount])
    {
      v14 = 0;
      v15 = *MEMORY[0x1E696A7D0];
      do
      {
        v16 = MEMORY[0x1E696AE28];
        v17 = (*(*(a1 + 40) + 16))();
        if (v14)
        {
          [v16 tableRowIntentWithIdentity:v17 row:v14 nestedInsideIntent:v36];
        }

        else
        {
          [v16 tableHeaderRowIntentWithIdentity:v17 nestedInsideIntent:v36];
        }
        v18 = ;
        if ([v9 columnCount])
        {
          v19 = 0;
          do
          {
            v20 = [MEMORY[0x1E696AE28] tableCellIntentWithIdentity:(*(*(a1 + 40) + 16))() column:v19 nestedInsideIntent:v18];
            v21 = [v9 stringForColumnIndex:v19 rowIndex:v14];
            v22 = [v21 mutableCopy];
            v23 = v22;
            if (v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = objc_opt_new();
            }

            v25 = v24;

            v26 = [v25 ic_range];
            [v25 addAttribute:v15 value:v20 range:{v26, v27}];
            [v37 appendAttributedString:v25];

            ++v19;
          }

          while (v19 < [v9 columnCount]);
        }

        ++v14;
      }

      while (v14 < [v9 rowCount]);
    }

    v28 = *(a1 + 32);
    v29 = objc_alloc(MEMORY[0x1E69B7AC8]);
    v30 = [MEMORY[0x1E696B098] valueWithRange:{v33, v34}];
    v31 = [v29 initWithFirstObject:v30 secondObject:v37];
    [v28 addObject:v31];
  }
}

- (id)createRenderableAttributedString
{
  v128 = *MEMORY[0x1E69E9840];
  if ([(ICMarkdownRepresentation *)self keepOriginalAttributes])
  {
    v3 = [(ICMarkdownRepresentation *)self markdown];
    v4 = [v3 mutableCopy];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    v3 = [(ICMarkdownRepresentation *)self markdown];
    v6 = [v3 string];
    v4 = [v5 initWithString:v6];
  }

  v7 = *MEMORY[0x1E69D93B0];
  v8 = [v4 ic_range];
  [v4 removeAttribute:v7 range:{v8, v9}];
  v10 = *MEMORY[0x1E69D93C8];
  v11 = [v4 ic_range];
  [v4 removeAttribute:v10 range:{v11, v12}];
  if ([(ICMarkdownRepresentation *)self keepOriginalAttributes]&& [(ICMarkdownRepresentation *)self filterConflictingAttributes])
  {
    v13 = *MEMORY[0x1E69DB648];
    v14 = [v4 ic_range];
    [v4 removeAttribute:v13 range:{v14, v15}];
  }

  v16 = [(ICMarkdownRepresentation *)self markdown];
  v17 = [(ICMarkdownRepresentation *)self markdown];
  v18 = *MEMORY[0x1E696A4A0];
  v19 = [v17 length];
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke;
  v124[3] = &unk_1E846E110;
  v20 = v4;
  v125 = v20;
  v84 = v18;
  [v16 enumerateAttribute:v18 inRange:0 options:v19 usingBlock:{0, v124}];

  v122[0] = 0;
  v122[1] = v122;
  v122[2] = 0x3032000000;
  v122[3] = __Block_byref_object_copy__76;
  v122[4] = __Block_byref_object_dispose__76;
  v123 = [MEMORY[0x1E695DF70] array];
  v120[0] = 0;
  v120[1] = v120;
  v120[2] = 0x3032000000;
  v120[3] = __Block_byref_object_copy__76;
  v120[4] = __Block_byref_object_dispose__76;
  v121 = objc_opt_new();
  v21 = [(ICMarkdownRepresentation *)self markdown];
  v22 = [(ICMarkdownRepresentation *)self markdown];
  v23 = [v22 length];
  v24 = *MEMORY[0x1E696A7D0];
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_52;
  v115[3] = &unk_1E846E188;
  v25 = v20;
  v116 = v25;
  v117 = self;
  v118 = v122;
  v119 = v120;
  [v21 enumerateAttribute:v24 inRange:0 options:v23 usingBlock:{0, v115}];

  v26 = [(ICMarkdownRepresentation *)self markdown];
  v27 = [(ICMarkdownRepresentation *)self markdown];
  v28 = [v27 ic_range];
  v30 = v29;
  v31 = *MEMORY[0x1E69DB670];
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_4;
  v113[3] = &unk_1E846A170;
  v32 = v25;
  v114 = v32;
  [v26 enumerateAttribute:v31 inRange:v28 options:v30 usingBlock:{0, v113}];

  v33 = [(ICMarkdownRepresentation *)self markdown];
  v34 = [(ICMarkdownRepresentation *)self markdown];
  v35 = [v34 ic_range];
  v37 = v36;
  v38 = *MEMORY[0x1E696A488];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_5;
  v111[3] = &unk_1E846A170;
  v39 = v32;
  v112 = v39;
  [v33 enumerateAttribute:v38 inRange:v35 options:v37 usingBlock:{0, v111}];

  v40 = [(ICMarkdownRepresentation *)self markdown];
  v41 = ICNSAttributeNamePresentationIntentEmphasis;
  v42 = [(ICMarkdownRepresentation *)self markdown];
  v43 = [v42 ic_range];
  v45 = v44;
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_6;
  v109[3] = &unk_1E846A170;
  v46 = v39;
  v110 = v46;
  [v40 enumerateAttribute:v41 inRange:v43 options:v45 usingBlock:{0, v109}];

  v47 = [(ICMarkdownRepresentation *)self markdown];
  v48 = ICNSAttributeNamePresentationIntentUnderline;
  v49 = [(ICMarkdownRepresentation *)self markdown];
  v50 = [v49 ic_range];
  v52 = v51;
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_7;
  v107[3] = &unk_1E846A170;
  v53 = v46;
  v108 = v53;
  [v47 enumerateAttribute:v48 inRange:v50 options:v52 usingBlock:{0, v107}];

  v106[0] = 0;
  v106[1] = v106;
  v106[2] = 0x2020000000;
  v106[3] = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v105[3] = 0;
  v54 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_8;
  aBlock[3] = &unk_1E846E1B0;
  v102 = v122;
  v103 = v105;
  v104 = v106;
  v55 = v53;
  v100 = v55;
  v56 = v54;
  v101 = v56;
  v57 = _Block_copy(aBlock);
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x2020000000;
  v98[3] = 1;
  v58 = [(ICMarkdownRepresentation *)self markdown];
  v59 = [(ICMarkdownRepresentation *)self markdown];
  v60 = [v59 ic_range];
  v62 = v61;
  v63 = *MEMORY[0x1E696A5A8];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_9;
  v91[3] = &unk_1E846E1D8;
  v64 = v57;
  v95 = v64;
  v96 = v106;
  v65 = v55;
  v97 = v98;
  v92 = v65;
  v93 = self;
  v66 = v56;
  v94 = v66;
  [v58 enumerateAttribute:v63 inRange:v60 options:v62 usingBlock:{0, v91}];

  v67 = *MEMORY[0x1E69B7600];
  v68 = [v65 ic_range];
  v70 = v69;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_10;
  v89[3] = &unk_1E846A170;
  v71 = v65;
  v90 = v71;
  [v71 enumerateAttribute:v67 inRange:v68 options:v70 usingBlock:{2, v89}];
  v72 = [(ICMarkdownRepresentation *)self markdown];
  (*(v64 + 2))(v64, [v72 length]);

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v126[0] = v84;
  v126[1] = v24;
  v126[2] = v63;
  v126[3] = ICNSAttributeNamePresentationIntentEmphasis;
  v73 = *MEMORY[0x1E696A570];
  v126[4] = ICNSAttributeNamePresentationIntentUnderline;
  v126[5] = v73;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:6];
  v75 = [v74 countByEnumeratingWithState:&v85 objects:v127 count:16];
  if (v75)
  {
    v76 = *v86;
    do
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v86 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v85 + 1) + 8 * i);
        v79 = [v71 ic_range];
        [v71 removeAttribute:v78 range:{v79, v80}];
      }

      v75 = [v74 countByEnumeratingWithState:&v85 objects:v127 count:16];
    }

    while (v75);
  }

  v81 = v90;
  v82 = v71;

  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v106, 8);

  _Block_object_dispose(v120, 8);
  _Block_object_dispose(v122, 8);

  return v82;
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 unsignedIntValue];
  v8 = v7;
  if (v7)
  {
    [*(a1 + 32) ic_setFontHint:2 atRange:{a3, a4}];
    if ((v8 & 2) == 0)
    {
LABEL_3:
      if ((v8 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      v10 = *MEMORY[0x1E69B75D8];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:ic_currentEmphasisColorTypeDefault()];
      [v9 addAttribute:v10 value:v11 range:{a3, a4}];

      if ((v8 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_3;
  }

  [*(a1 + 32) ic_setFontHint:1 atRange:{a3, a4}];
  if ((v8 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v8 & 0x20) == 0)
  {
    return;
  }

LABEL_9:
  v12 = *(a1 + 32);
  v13 = *MEMORY[0x1E69DB6B8];

  [v12 addAttribute:v13 value:&unk_1F4FC41A0 range:{a3, a4}];
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_52(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__76;
  v16[4] = __Block_byref_object_dispose__76;
  v7 = a2;
  v17 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_2;
    v10[3] = &unk_1E846E160;
    v12 = v16;
    v9 = *(a1 + 32);
    v8 = v9.i64[0];
    v11 = vextq_s8(v9, v9, 8uLL);
    v14 = a3;
    v15 = a4;
    v13 = *(a1 + 48);
    [v8 ic_addOrUpdateParagraphStyleAtRange:a3 usingBlock:{a4, v10}];
  }

  _Block_object_dispose(v16, 8);
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_2(uint64_t a1, void *a2)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setIndent:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "indentationLevel")}];
  v4 = [*(*(*(a1 + 48) + 8) + 40) parentIntent];

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v6 = [v5 parentIntent];
    if ([*(*(*(a1 + 48) + 8) + 40) intentKind] == 11 && (objc_msgSend(v6, "parentIntent"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "intentKind"), v7, v8 == 8))
    {
      v9 = [v6 parentIntent];
      v10 = *(*(*(a1 + 64) + 8) + 40);
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "identity")}];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x1E69DB860]);
        [v12 setNumberOfColumns:{objc_msgSend(v9, "columnCount")}];
        v13 = *(*(*(a1 + 64) + 8) + 40);
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "identity")}];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      [v3 setStyle:3];
      [v3 setIndent:{objc_msgSend(v6, "indentationLevel")}];
      v15 = *(a1 + 40);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_3;
      v37[3] = &unk_1E846E138;
      v38 = v12;
      v16 = v6;
      v17 = *(a1 + 48);
      v39 = v16;
      v40 = v17;
      v19 = *(a1 + 72);
      v18 = *(a1 + 80);
      v20 = v12;
      [v15 ic_addOrUpdateNSParagraphStyleAtRange:v19 usingBlock:{v18, v37}];
    }

    else
    {
      v21 = [*(a1 + 32) markdown];
      v22 = *MEMORY[0x1E696A570];
      v9 = [v21 attribute:*MEMORY[0x1E696A570] atIndex:*(a1 + 72) effectiveRange:0];

      v23 = [v6 intentKind];
      if (v23 != 4)
      {
        if (v23 == 6 && v6)
        {
          do
          {
            [v3 setBlockQuoteLevel:{objc_msgSend(v3, "blockQuoteLevel") + 1}];
            v24 = [v6 parentIntent];

            v6 = v24;
          }

          while (v24);
        }

        goto LABEL_34;
      }

      [v3 setStartingItemNumber:{objc_msgSend(v6, "ordinal")}];
      v32 = [v6 parentIntent];
      if ([v32 intentKind] == 2)
      {
        v33 = 102;
      }

      else
      {
        v33 = 101;
      }

      [v3 setStyle:v33];

      v34 = [v6 indentationLevel];
      if (v34 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      [v3 setIndent:v35 - 1];
      if (!v9)
      {
LABEL_34:

        goto LABEL_35;
      }

      v36 = *(a1 + 40);
      v41 = v22;
      v42[0] = v9;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      [v36 addAttributes:v20 range:{*(a1 + 72), *(a1 + 80)}];
    }

    goto LABEL_34;
  }

  v25 = [v5 intentKind];
  if (v25 > 4)
  {
    if (v25 == 5)
    {
      [v3 setStyle:4];
    }

    else if (v25 == 7)
    {
      v30 = *(*(*(a1 + 56) + 8) + 40);
      v31 = [MEMORY[0x1E696B098] valueWithRange:{*(a1 + 72), *(a1 + 80)}];
      [v30 addObject:v31];
    }
  }

  else
  {
    if (v25)
    {
      if (v25 != 1)
      {
        goto LABEL_35;
      }

      v26 = [*(*(*(a1 + 48) + 8) + 40) headerLevel];
      if (v26 == 2)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      v29 = v3;
    }

    else
    {
      v29 = v3;
      v28 = 3;
    }

    [v29 setStyle:v28];
    if ([*(a1 + 32) keepOriginalAttributes] && objc_msgSend(*(a1 + 32), "filterConflictingAttributes"))
    {
      [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB648] range:{*(a1 + 72), *(a1 + 80)}];
    }
  }

LABEL_35:
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_3(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB868];
  v4 = a2;
  v5 = [[v3 alloc] initWithTable:*(a1 + 32) startingRow:objc_msgSend(*(a1 + 40) rowSpan:"row") startingColumn:1 columnSpan:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "column"), 1}];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 setTextBlocks:v6];
}

uint64_t __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x1E69DB670] value:a2 range:{a3, a4}];
  }

  return result;
}

uint64_t __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*MEMORY[0x1E69DB670] value:a2 range:{a3, a4}];
  }

  return result;
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a2 BOOLValue])
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x1E69B75D8];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:ic_currentEmphasisColorTypeDefault()];
    [v7 addAttribute:v8 value:v9 range:{a3, a4}];
  }
}

uint64_t __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 BOOLValue];
  if (result)
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69DB758];

    return [v8 addAttribute:v9 value:&unk_1F4FC4188 range:{a3, a4}];
  }

  return result;
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_8(uint64_t a1, unint64_t a2)
{
  for (i = *(a1 + 48); [*(*(i + 8) + 40) count] > *(*(*(a1 + 56) + 8) + 24); i = *(a1 + 48))
  {
    v5 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:?];
    v6 = [v5 rangeValue];
    v8 = v7;

    if (v6 + v8 > a2)
    {
      break;
    }

    [*(a1 + 32) insertAttributedString:*(a1 + 40) atIndex:*(*(*(a1 + 64) + 8) + 24) + v6];
    ++*(*(*(a1 + 64) + 8) + 24);
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  (*(*(a1 + 56) + 16))();
  objc_opt_class();
  v5 = ICDynamicCast();
  if (v5)
  {
    v6 = [*(a1 + 32) attribute:*MEMORY[0x1E69DB688] atIndex:*(*(*(a1 + 64) + 8) + 24) + a3 effectiveRange:0];
    v7 = [v6 textBlocks];

    if (v7)
    {
      *(*(*(a1 + 72) + 8) + 24) = [v5 endLine];
    }

    else
    {
      if (a3)
      {
        v8 = [*(a1 + 40) markdown];
        v9 = [v8 attribute:*MEMORY[0x1E696A7D0] atIndex:a3 - 1 effectiveRange:0];

        if (v9 && [v9 intentKind] == 7)
        {
          *(*(*(a1 + 72) + 8) + 24) += 3;
        }
      }

      else
      {
        v9 = 0;
      }

      for (i = *(*(*(a1 + 72) + 8) + 24); i < [v5 startLine]; ++i)
      {
        [*(a1 + 32) insertAttributedString:*(a1 + 48) atIndex:*(*(*(a1 + 64) + 8) + 24) + a3];
        ++*(*(*(a1 + 64) + 8) + 24);
      }

      *(*(*(a1 + 72) + 8) + 24) = [v5 endLine];
    }
  }
}

void __60__ICMarkdownRepresentation_createRenderableAttributedString__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v19 = ICDynamicCast();

  v8 = v19;
  if (v19)
  {
    v9 = [v19 style] == 101;
    v8 = v19;
    if (v9)
    {
      v10 = [*(a1 + 32) string];
      v11 = [v10 substringWithRange:{a3, a4}];

      v12 = [v19 mutableCopy];
      v13 = [*(a1 + 32) attribute:*MEMORY[0x1E696A570] atIndex:a3 effectiveRange:0];
      if (([v13 isEqualToString:@"*"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"+"))
      {
        [v12 setStyle:100];
      }

      else
      {
        if (![v13 isEqualToString:@"-"] || (objc_msgSend(v11, "hasPrefix:", @"[ ] ") & 1) == 0 && !objc_msgSend(v11, "hasPrefix:", @"[x] "))
        {
          goto LABEL_8;
        }

        [v12 setStyle:103];
        v16 = objc_alloc(MEMORY[0x1E69B78E0]);
        v17 = [MEMORY[0x1E696AFB0] UUID];
        v18 = [v16 initWithIdentifier:v17 done:{objc_msgSend(v11, "hasPrefix:", @"[x] "}];
        [v12 setTodo:v18];

        [*(a1 + 32) deleteCharactersInRange:{a3, 4}];
        a4 -= 4;
      }

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = [v12 copy];
      [v14 setObject:v15 forKey:*MEMORY[0x1E69B7600]];

      [*(a1 + 32) addAttributes:v14 range:{a3, a4}];
LABEL_8:

      v8 = v19;
    }
  }
}

- (void)initWithPlainMarkdown:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 length];
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "got empty attributed string from length %lu markdown string", &v3, 0xCu);
}

@end