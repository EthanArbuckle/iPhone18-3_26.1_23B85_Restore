@interface ICInlineTextFindingResult
- (ICInlineAttachment)attachment;
- (_NSRange)displayTextRange;
- (id)framesForHighlightInTextView:(id)a3;
- (id)inlineAttachmentViewControllerInTextView:(id)a3;
- (id)inlineTextAttachmentViewProviderInTextView:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation ICInlineTextFindingResult

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();
  v11.receiver = self;
  v11.super_class = ICInlineTextFindingResult;
  v6 = [(ICTextFindingResult *)&v11 compare:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICInlineTextFindingResult displayTextRange](self, "displayTextRange")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "displayTextRange")}];
    v6 = [v8 compare:v9];
  }

  return v6;
}

- (id)inlineAttachmentViewControllerInTextView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 layoutManager];

  v6 = ICDynamicCast();

  v7 = MEMORY[0x277D367F0];
  v8 = [(ICInlineTextFindingResult *)self attachment];
  v9 = [v7 textAttachmentWithAttachment:v8];

  objc_opt_class();
  v10 = [v6 viewControllerForTextAttachment:v9];
  v11 = ICDynamicCast();

  return v11;
}

- (id)inlineTextAttachmentViewProviderInTextView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 textLayoutManager];

  v6 = ICDynamicCast();

  objc_opt_class();
  v7 = [(ICInlineTextFindingResult *)self attachment];
  v8 = [v7 identifier];
  v9 = [v6 existingAttachmentViewProviderForIdentifier:v8];
  v10 = ICDynamicCast();

  return v10;
}

- (id)framesForHighlightInTextView:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 textLayoutManager];

  if (v5)
  {
    v6 = [(ICInlineTextFindingResult *)self inlineTextAttachmentViewProviderInTextView:v4];
    [v6 updateDisplayTextTextStorage];
    v7 = [v6 tk2displayTextLayoutManager];
    v8 = [(ICInlineTextFindingResult *)self displayTextRange];
    [v7 ic_rectForRange:{v8, v9}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v6 = [(ICInlineTextFindingResult *)self inlineAttachmentViewControllerInTextView:v4];
    [v6 updateDisplayTextTextStorage];
    v39 = 0;
    v40 = 0;
    v18 = [v6 displayTextLayoutManager];
    v19 = [(ICInlineTextFindingResult *)self displayTextRange];
    [v18 characterRangeForGlyphRange:v19 actualGlyphRange:{v20, &v39}];

    v21 = [v6 displayTextLayoutManager];
    v22 = [v6 displayTextTextContainer];
    [v21 boundingRectForGlyphRange:v39 inTextContainer:{v40, v22}];
    v11 = v23;
    v13 = v24;
    v15 = v25;
    v17 = v26;
  }

  v27 = [v6 view];
  [v27 convertRect:v4 toView:{v11, v13, v15, v17}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [MEMORY[0x277CCAE60] valueWithRect:{v29, v31, v33, v35}];
  v41[0] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

  return v37;
}

- (ICInlineAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (_NSRange)displayTextRange
{
  p_displayTextRange = &self->_displayTextRange;
  location = self->_displayTextRange.location;
  length = p_displayTextRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end