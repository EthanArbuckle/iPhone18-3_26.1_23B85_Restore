@interface ICHashtagController
@end

@implementation ICHashtagController

void __101__ICHashtagController_App__createNewHashtagIfNecessary_textStorage_ignoreDelimiter_parentAttachment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = [v11 stringByApplyingTransform:*MEMORY[0x277CBE750] reverse:0];
  v13 = [MEMORY[0x277CCACA8] ic_hashtagCharacterString];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = *(a1 + 32);
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      v19 = a3 + a4;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v29 + 1) + 8 * i) range];
          if (v19 >= v21 && v19 - v21 < v22)
          {

            goto LABEL_21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    [*(a1 + 40) setEditedRange:{a3, objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "length") + 1}];
    if ([*(*(*(a1 + 72) + 8) + 40) length] && (objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "ic_isNumeric") & 1) == 0)
    {
      if (*(a1 + 80))
      {
        v24 = 0;
      }

      else
      {
        v24 = *(a1 + 48);
      }

      [*(a1 + 40) insertHashtagWithText:*(*(*(a1 + 72) + 8) + 40) viaAutoComplete:0 delimiter:v24 parentAttachment:{*(a1 + 56), v29}];
    }

LABEL_21:
    [*(a1 + 40) clearUnconfirmedHashtagInTextStorage:{*(a1 + 64), v29}];
    goto LABEL_22;
  }

  if (([*(a1 + 40) isValidElement:{objc_msgSend(v11, "characterAtIndex:", 0)}] & 1) == 0 && !objc_msgSend(*(a1 + 40), "isEmoji:", v11))
  {
LABEL_22:
    *a7 = 1;
    goto LABEL_23;
  }

  v25 = [v11 stringByAppendingString:*(*(*(a1 + 72) + 8) + 40)];
  v26 = [v25 mutableCopy];
  v27 = *(*(a1 + 72) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

LABEL_23:
}

uint64_t __36__ICHashtagController_App__isEmoji___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = CEMStringIsSingleEmoji();
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a7 = 1;
  }

  return result;
}

uint64_t __67__ICHashtagController_App__rangeOfUnconfirmedHashtagInTextStorage___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v5 = *(*(result + 32) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

@end