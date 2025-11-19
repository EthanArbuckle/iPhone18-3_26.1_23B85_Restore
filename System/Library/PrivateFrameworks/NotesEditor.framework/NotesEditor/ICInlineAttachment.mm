@interface ICInlineAttachment
@end

@implementation ICInlineAttachment

ICInlineTextFindingResult *__105__ICInlineAttachment_TextFinding__textFindingResultsMatchingExpression_ignoreCase_wholeWords_startsWith___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1 && ([*(a1 + 32) string], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "range"), v7 = objc_msgSend(v4, "ic_rangeEncapsulatesWord:", v5, v6), v4, !v7) || *(a1 + 49) == 1 && (objc_msgSend(*(a1 + 32), "string"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v3, "range"), v11 = objc_msgSend(v8, "ic_startsWithDelimeter:", v9, v10), v8, !v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(ICInlineTextFindingResult);
    [(ICInlineTextFindingResult *)v12 setAttachment:*(a1 + 40)];
    [(ICInlineTextFindingResult *)v12 setFindableString:*(a1 + 32)];
    v13 = [v3 range];
    [(ICInlineTextFindingResult *)v12 setDisplayTextRange:v13, v14];
  }

  return v12;
}

@end