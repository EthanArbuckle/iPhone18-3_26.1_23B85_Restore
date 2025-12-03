@interface ICInlineTextFindingResult
- (ICInlineAttachment)attachment;
- (_NSRange)displayTextRange;
- (id)framesForHighlightInTextView:(id)view;
- (id)inlineAttachmentViewControllerInTextView:(id)view;
- (id)inlineTextAttachmentViewProviderInTextView:(id)view;
- (int64_t)compare:(id)compare;
@end

@implementation ICInlineTextFindingResult

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = ICDynamicCast();
  v11.receiver = self;
  v11.super_class = ICInlineTextFindingResult;
  v6 = [(ICTextFindingResult *)&v11 compare:compareCopy];

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

- (id)inlineAttachmentViewControllerInTextView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  layoutManager = [viewCopy layoutManager];

  v6 = ICDynamicCast();

  v7 = MEMORY[0x277D367F0];
  attachment = [(ICInlineTextFindingResult *)self attachment];
  v9 = [v7 textAttachmentWithAttachment:attachment];

  objc_opt_class();
  v10 = [v6 viewControllerForTextAttachment:v9];
  v11 = ICDynamicCast();

  return v11;
}

- (id)inlineTextAttachmentViewProviderInTextView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  textLayoutManager = [viewCopy textLayoutManager];

  v6 = ICDynamicCast();

  objc_opt_class();
  attachment = [(ICInlineTextFindingResult *)self attachment];
  identifier = [attachment identifier];
  v9 = [v6 existingAttachmentViewProviderForIdentifier:identifier];
  v10 = ICDynamicCast();

  return v10;
}

- (id)framesForHighlightInTextView:(id)view
{
  v41[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  textLayoutManager = [viewCopy textLayoutManager];

  if (textLayoutManager)
  {
    v6 = [(ICInlineTextFindingResult *)self inlineTextAttachmentViewProviderInTextView:viewCopy];
    [v6 updateDisplayTextTextStorage];
    tk2displayTextLayoutManager = [v6 tk2displayTextLayoutManager];
    displayTextRange = [(ICInlineTextFindingResult *)self displayTextRange];
    [tk2displayTextLayoutManager ic_rectForRange:{displayTextRange, v9}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v6 = [(ICInlineTextFindingResult *)self inlineAttachmentViewControllerInTextView:viewCopy];
    [v6 updateDisplayTextTextStorage];
    v39 = 0;
    v40 = 0;
    displayTextLayoutManager = [v6 displayTextLayoutManager];
    displayTextRange2 = [(ICInlineTextFindingResult *)self displayTextRange];
    [displayTextLayoutManager characterRangeForGlyphRange:displayTextRange2 actualGlyphRange:{v20, &v39}];

    displayTextLayoutManager2 = [v6 displayTextLayoutManager];
    displayTextTextContainer = [v6 displayTextTextContainer];
    [displayTextLayoutManager2 boundingRectForGlyphRange:v39 inTextContainer:{v40, displayTextTextContainer}];
    v11 = v23;
    v13 = v24;
    v15 = v25;
    v17 = v26;
  }

  view = [v6 view];
  [view convertRect:viewCopy toView:{v11, v13, v15, v17}];
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