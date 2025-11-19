@interface ICTK2InlineTextAttachmentViewProvider
- (ICInlineAttachmentView)inlineAttachmentView;
- (ICInlineTextAttachment)inlineTextAttachment;
- (ICTK2InlineTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (NSTextContainer)displayTextTextContainer;
- (NSTextStorage)displayTextTextStorage;
- (_NSRange)selectedRangeWithinRange:(_NSRange)a3 inFindableString:(id)a4;
- (_NSRange)selectedSearchRange;
- (id)rectsForRange:(_NSRange)a3 inFindableString:(id)a4;
- (id)viewForRange:(_NSRange)a3 inFindableString:(id)a4;
- (void)drawCharactersInRange:(_NSRange)a3 inFindableString:(id)a4 forContentView:(id)a5;
- (void)loadView;
- (void)updateDisplayTextTextStorage;
@end

@implementation ICTK2InlineTextAttachmentViewProvider

- (ICTK2InlineTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v18.receiver = self;
  v18.super_class = ICTK2InlineTextAttachmentViewProvider;
  v6 = [(ICTK2TextAttachmentViewProvider *)&v18 initWithTextAttachment:a3 parentView:a4 textLayoutManager:a5 location:a6];
  if (v6)
  {
    if (ICInternalSettingsIsAsyncFindEnabled())
    {
      v7 = objc_alloc_init(MEMORY[0x277D74280]);
      tk2displayTextContentStorage = v6->_tk2displayTextContentStorage;
      v6->_tk2displayTextContentStorage = v7;

      v9 = objc_alloc_init(MEMORY[0x277D742A8]);
      tk2displayTextLayoutManager = v6->_tk2displayTextLayoutManager;
      v6->_tk2displayTextLayoutManager = v9;

      v11 = v6->_tk2displayTextContentStorage;
      v12 = [(ICTK2InlineTextAttachmentViewProvider *)v6 tk2displayTextLayoutManager];
      [(NSTextContentStorage *)v11 addTextLayoutManager:v12];

      v13 = [(ICTK2InlineTextAttachmentViewProvider *)v6 displayTextTextContainer];
      [(NSTextLayoutManager *)v6->_tk2displayTextLayoutManager setTextContainer:v13];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D74238]);
      displayTextLayoutManager = v6->_displayTextLayoutManager;
      v6->_displayTextLayoutManager = v14;

      v16 = v6->_displayTextLayoutManager;
      v13 = [(ICTK2InlineTextAttachmentViewProvider *)v6 displayTextTextContainer];
      [(NSLayoutManager *)v16 addTextContainer:v13];
    }
  }

  return v6;
}

- (void)loadView
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v16 = ICDynamicCast();

  v4 = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  if (v4)
  {
    objc_opt_class();
    v5 = [v16 textContainer];
    v6 = [v4 newlyCreatedViewForTextContainer:v5];
    v7 = ICDynamicCast();

    v8 = [v16 textContentStorage];
    v9 = [v8 documentRange];
    v10 = [v9 location];
    v11 = [(ICTK2TextAttachmentViewProvider *)self location];
    v12 = [v8 offsetFromLocation:v10 toLocation:v11];

    v13 = [v8 textStorage];
    v14 = [v13 attributesAtIndex:v12 effectiveRange:0];

    [v7 updateStyleWithAttributes:v14];
    v15 = [(ICTK2TextAttachmentViewProvider *)self highlightPatternRegexFinder];
    [v7 setHighlightPatternRegexFinder:v15];

    [(NSTextAttachmentViewProvider *)self setView:v7];
  }
}

- (NSTextContainer)displayTextTextContainer
{
  displayTextTextContainer = self->_displayTextTextContainer;
  if (!displayTextTextContainer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74278]);
    v5 = self->_displayTextTextContainer;
    self->_displayTextTextContainer = v4;

    [(NSTextContainer *)self->_displayTextTextContainer setLineFragmentPadding:0.0];
    [(NSTextContainer *)self->_displayTextTextContainer setMaximumNumberOfLines:1];
    displayTextTextContainer = self->_displayTextTextContainer;
  }

  return displayTextTextContainer;
}

- (NSTextStorage)displayTextTextStorage
{
  displayTextTextStorage = self->_displayTextTextStorage;
  if (!displayTextTextStorage)
  {
    v4 = objc_alloc_init(MEMORY[0x277D742D8]);
    v5 = self->_displayTextTextStorage;
    self->_displayTextTextStorage = v4;

    Enabled = ICInternalSettingsIsAsyncFindEnabled();
    displayTextTextStorage = self->_displayTextTextStorage;
    if ((Enabled & 1) == 0)
    {
      v7 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
      [(NSTextStorage *)displayTextTextStorage addLayoutManager:v7];

      displayTextTextStorage = self->_displayTextTextStorage;
    }
  }

  return displayTextTextStorage;
}

- (void)updateDisplayTextTextStorage
{
  v3 = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  v4 = [v3 attachment];
  v5 = [v4 uiModel];
  v6 = [(ICTK2InlineTextAttachmentViewProvider *)self inlineAttachmentView];
  v7 = [v6 surroundingAttributes];
  v32 = [v5 attributedStringWithSurroundingAttributes:v7 formatter:0];

  v8 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
  LOBYTE(v4) = [v8 isEqual:v32];

  if ((v4 & 1) == 0)
  {
    v9 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
    v10 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
    v11 = [v10 ic_range];
    [v9 replaceCharactersInRange:v11 withAttributedString:{v12, v32}];
  }

  if ((ICInternalSettingsIsAsyncFindEnabled() & 1) != 0 || (-[ICTK2InlineTextAttachmentViewProvider displayTextTextContainer](self, "displayTextTextContainer"), v13 = objc_claimAutoreleasedReturnValue(), [v13 size], v15 = v14, v17 = v16, -[NSTextAttachmentViewProvider view](self, "view"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, v13, v15 == v20) && v17 == v22)
  {
    v23 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
    v24 = [(ICTK2InlineTextAttachmentViewProvider *)self tk2displayTextContentStorage];
    [v24 setTextStorage:v23];

    v25 = [(ICTK2InlineTextAttachmentViewProvider *)self tk2displayTextLayoutManager];
    v26 = [(ICTK2InlineTextAttachmentViewProvider *)self tk2displayTextLayoutManager];
    v27 = [v26 documentRange];
    [v25 ensureLayoutForRange:v27];
  }

  else
  {
    v25 = [(NSTextAttachmentViewProvider *)self view];
    [v25 bounds];
    v29 = v28;
    v31 = v30;
    v26 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
    [v26 setSize:{v29, v31}];
  }
}

- (id)viewForRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  v9 = [v8 attachment];
  [v9 displayTextRangeForSearchRange:location inSearchableString:{length, v7}];
  v11 = v10;

  if (v11)
  {
    v12 = [(NSTextAttachmentViewProvider *)self view];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)rectsForRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  v9 = [v8 attachment];
  v10 = [v9 displayTextRangeForSearchRange:location inSearchableString:{length, v7}];
  v12 = v11;

  v27 = 0;
  v28 = 0;
  [(ICTK2InlineTextAttachmentViewProvider *)self updateDisplayTextTextStorage];
  v13 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  [v13 characterRangeForGlyphRange:v10 actualGlyphRange:{v12, &v27}];

  v14 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  v15 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
  [v14 boundingRectForGlyphRange:v27 inTextContainer:{v28, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [MEMORY[0x277CCAE60] valueWithRect:{v17, v19, v21, v23}];
  v29[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  return v25;
}

- (void)drawCharactersInRange:(_NSRange)a3 inFindableString:(id)a4 forContentView:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
  [v9 size];
  v11 = v10 * -0.5;
  v12 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
  [v12 lineFragmentPadding];
  v14 = v11 - v13;

  v15 = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  v16 = [v15 attachment];
  v17 = [v16 displayTextRangeForSearchRange:location inSearchableString:{length, v8}];
  v19 = v18;

  v22 = 0;
  v23 = 0;
  [(ICTK2InlineTextAttachmentViewProvider *)self updateDisplayTextTextStorage];
  v20 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  [v20 characterRangeForGlyphRange:v17 actualGlyphRange:{v19, &v22}];

  v21 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  [v21 drawGlyphsForGlyphRange:v22 atPoint:{v23, 0.0, v14}];
}

- (_NSRange)selectedRangeWithinRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6.location = [(ICTK2InlineTextAttachmentViewProvider *)self selectedSearchRange:a3.location];
  v7.location = location;
  v7.length = length;

  v10 = NSIntersectionRange(v6, v7);
  v9 = v10.length;
  v8 = v10.location;
  result.length = v9;
  result.location = v8;
  return result;
}

- (ICInlineTextAttachment)inlineTextAttachment
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v4 = ICDynamicCast();

  return v4;
}

- (ICInlineAttachmentView)inlineAttachmentView
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self view];
  v4 = ICDynamicCast();

  return v4;
}

- (_NSRange)selectedSearchRange
{
  p_selectedSearchRange = &self->_selectedSearchRange;
  location = self->_selectedSearchRange.location;
  length = p_selectedSearchRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end