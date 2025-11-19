@interface ICTextFindingResult
- (_NSRange)range;
- (id)framesForHighlightInTextView:(id)a3;
- (int64_t)compare:(id)a3;
- (void)scrollToVisibleInTextView:(id)a3;
- (void)selectInTextView:(id)a3;
@end

@implementation ICTextFindingResult

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICTextFindingResult *)self range];
  v6 = [v4 range];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

- (id)framesForHighlightInTextView:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(ICTextFindingResult *)self range];
  v8 = v7;
  [v4 textContainerInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v17 = [v4 textLayoutManager];
    v18 = [v17 ic_textRangeForRange:{v6, v8}];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__ICTextFindingResult_framesForHighlightInTextView___block_invoke;
    v30[3] = &unk_2781AF6C8;
    v32 = v10;
    v33 = v12;
    v34 = v14;
    v35 = v16;
    v31 = v5;
    [v17 enumerateTextSegmentsInRange:v18 type:0 options:1 usingBlock:v30];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTextFindingResult framesForHighlightInTextView:]" simulateCrash:1 showAlert:0 format:@"Unsupported use of TextKit1."];
    v19 = [v4 layoutManager];
    [v19 ensureLayoutForGlyphRange:{0, v6 + v8}];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__ICTextFindingResult_framesForHighlightInTextView___block_invoke_2;
    v21[3] = &unk_2781AF718;
    v24 = v6;
    v25 = v8;
    v22 = v19;
    v26 = v10;
    v27 = v12;
    v28 = v14;
    v29 = v16;
    v23 = v5;
    v17 = v19;
    [v17 enumerateLineFragmentsForGlyphRange:v6 usingBlock:{v8, v21}];

    v18 = v22;
  }

  return v5;
}

uint64_t __52__ICTextFindingResult_framesForHighlightInTextView___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAE60] valueWithRect:{a2 + *(a1 + 48), a3 + *(a1 + 40)}];
  [v3 addObject:v4];

  return 1;
}

void __52__ICTextFindingResult_framesForHighlightInTextView___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = a2;
  v17.location = a3;
  v17.length = a4;
  v18.location = v7;
  v18.length = v8;
  v10 = NSIntersectionRange(v17, v18);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v11 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v11;
  v13[2] = __52__ICTextFindingResult_framesForHighlightInTextView___block_invoke_3;
  v13[3] = &unk_2781AF6F0;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v12 enumerateEnclosingRectsForGlyphRange:v10.location withinSelectedGlyphRange:v10.length inTextContainer:v10.location usingBlock:{v10.length, v9, v13}];
}

void __52__ICTextFindingResult_framesForHighlightInTextView___block_invoke_3(uint64_t a1, double a2, double a3)
{
  v4 = [MEMORY[0x277CCAE60] ic_valueWithRect:{a2 + *(a1 + 48), a3 + *(a1 + 40)}];
  [*(a1 + 32) addObject:v4];
}

- (void)selectInTextView:(id)a3
{
  v6 = a3;
  v4 = [(ICTextFindingResult *)self range];
  [v6 setSelectedRange:{v4, v5}];
}

- (void)scrollToVisibleInTextView:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICTextFindingResult *)self isAttachmentResult])
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(ICTextFindingResult *)self framesForHighlightInTextView:v4, 0];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v20 + 1) + 8 * v13) ic_rectValue];
          v28.origin.x = v14;
          v28.origin.y = v15;
          v28.size.width = v16;
          v28.size.height = v17;
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectUnion(v26, v28);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v4 ic_scrollRectToVisible:1 animated:0 completionHandler:{x, y, width, height}];
  }

  else
  {
    v18 = [(ICTextFindingResult *)self range];
    [v4 scrollRangeToVisible:{v18, v19}];
  }
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end