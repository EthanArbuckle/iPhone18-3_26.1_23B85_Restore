@interface ICTK2InlineTextAttachmentViewProvider
- (ICInlineAttachmentView)inlineAttachmentView;
- (ICInlineTextAttachment)inlineTextAttachment;
- (ICTK2InlineTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (NSTextContainer)displayTextTextContainer;
- (NSTextStorage)displayTextTextStorage;
- (_NSRange)selectedRangeWithinRange:(_NSRange)range inFindableString:(id)string;
- (_NSRange)selectedSearchRange;
- (id)rectsForRange:(_NSRange)range inFindableString:(id)string;
- (id)viewForRange:(_NSRange)range inFindableString:(id)string;
- (void)drawCharactersInRange:(_NSRange)range inFindableString:(id)string forContentView:(id)view;
- (void)loadView;
- (void)updateDisplayTextTextStorage;
@end

@implementation ICTK2InlineTextAttachmentViewProvider

- (ICTK2InlineTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  v18.receiver = self;
  v18.super_class = ICTK2InlineTextAttachmentViewProvider;
  v6 = [(ICTK2TextAttachmentViewProvider *)&v18 initWithTextAttachment:attachment parentView:view textLayoutManager:manager location:location];
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
      tk2displayTextLayoutManager = [(ICTK2InlineTextAttachmentViewProvider *)v6 tk2displayTextLayoutManager];
      [(NSTextContentStorage *)v11 addTextLayoutManager:tk2displayTextLayoutManager];

      displayTextTextContainer = [(ICTK2InlineTextAttachmentViewProvider *)v6 displayTextTextContainer];
      [(NSTextLayoutManager *)v6->_tk2displayTextLayoutManager setTextContainer:displayTextTextContainer];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277D74238]);
      displayTextLayoutManager = v6->_displayTextLayoutManager;
      v6->_displayTextLayoutManager = v14;

      v16 = v6->_displayTextLayoutManager;
      displayTextTextContainer = [(ICTK2InlineTextAttachmentViewProvider *)v6 displayTextTextContainer];
      [(NSLayoutManager *)v16 addTextContainer:displayTextTextContainer];
    }
  }

  return v6;
}

- (void)loadView
{
  objc_opt_class();
  textLayoutManager = [(NSTextAttachmentViewProvider *)self textLayoutManager];
  v16 = ICDynamicCast();

  inlineTextAttachment = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  if (inlineTextAttachment)
  {
    objc_opt_class();
    textContainer = [v16 textContainer];
    v6 = [inlineTextAttachment newlyCreatedViewForTextContainer:textContainer];
    v7 = ICDynamicCast();

    textContentStorage = [v16 textContentStorage];
    documentRange = [textContentStorage documentRange];
    location = [documentRange location];
    location2 = [(ICTK2TextAttachmentViewProvider *)self location];
    v12 = [textContentStorage offsetFromLocation:location toLocation:location2];

    textStorage = [textContentStorage textStorage];
    v14 = [textStorage attributesAtIndex:v12 effectiveRange:0];

    [v7 updateStyleWithAttributes:v14];
    highlightPatternRegexFinder = [(ICTK2TextAttachmentViewProvider *)self highlightPatternRegexFinder];
    [v7 setHighlightPatternRegexFinder:highlightPatternRegexFinder];

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
      displayTextLayoutManager = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
      [(NSTextStorage *)displayTextTextStorage addLayoutManager:displayTextLayoutManager];

      displayTextTextStorage = self->_displayTextTextStorage;
    }
  }

  return displayTextTextStorage;
}

- (void)updateDisplayTextTextStorage
{
  inlineTextAttachment = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  attachment = [inlineTextAttachment attachment];
  uiModel = [attachment uiModel];
  inlineAttachmentView = [(ICTK2InlineTextAttachmentViewProvider *)self inlineAttachmentView];
  surroundingAttributes = [inlineAttachmentView surroundingAttributes];
  v32 = [uiModel attributedStringWithSurroundingAttributes:surroundingAttributes formatter:0];

  displayTextTextStorage = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
  LOBYTE(attachment) = [displayTextTextStorage isEqual:v32];

  if ((attachment & 1) == 0)
  {
    displayTextTextStorage2 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
    displayTextTextStorage3 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
    ic_range = [displayTextTextStorage3 ic_range];
    [displayTextTextStorage2 replaceCharactersInRange:ic_range withAttributedString:{v12, v32}];
  }

  if ((ICInternalSettingsIsAsyncFindEnabled() & 1) != 0 || (-[ICTK2InlineTextAttachmentViewProvider displayTextTextContainer](self, "displayTextTextContainer"), v13 = objc_claimAutoreleasedReturnValue(), [v13 size], v15 = v14, v17 = v16, -[NSTextAttachmentViewProvider view](self, "view"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, v13, v15 == v20) && v17 == v22)
  {
    displayTextTextStorage4 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextStorage];
    tk2displayTextContentStorage = [(ICTK2InlineTextAttachmentViewProvider *)self tk2displayTextContentStorage];
    [tk2displayTextContentStorage setTextStorage:displayTextTextStorage4];

    tk2displayTextLayoutManager = [(ICTK2InlineTextAttachmentViewProvider *)self tk2displayTextLayoutManager];
    tk2displayTextLayoutManager2 = [(ICTK2InlineTextAttachmentViewProvider *)self tk2displayTextLayoutManager];
    documentRange = [tk2displayTextLayoutManager2 documentRange];
    [tk2displayTextLayoutManager ensureLayoutForRange:documentRange];
  }

  else
  {
    tk2displayTextLayoutManager = [(NSTextAttachmentViewProvider *)self view];
    [tk2displayTextLayoutManager bounds];
    v29 = v28;
    v31 = v30;
    tk2displayTextLayoutManager2 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
    [tk2displayTextLayoutManager2 setSize:{v29, v31}];
  }
}

- (id)viewForRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  inlineTextAttachment = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  attachment = [inlineTextAttachment attachment];
  [attachment displayTextRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v11 = v10;

  if (v11)
  {
    view = [(NSTextAttachmentViewProvider *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (id)rectsForRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  v29[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  inlineTextAttachment = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  attachment = [inlineTextAttachment attachment];
  v10 = [attachment displayTextRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v12 = v11;

  v27 = 0;
  v28 = 0;
  [(ICTK2InlineTextAttachmentViewProvider *)self updateDisplayTextTextStorage];
  displayTextLayoutManager = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  [displayTextLayoutManager characterRangeForGlyphRange:v10 actualGlyphRange:{v12, &v27}];

  displayTextLayoutManager2 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  displayTextTextContainer = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
  [displayTextLayoutManager2 boundingRectForGlyphRange:v27 inTextContainer:{v28, displayTextTextContainer}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [MEMORY[0x277CCAE60] valueWithRect:{v17, v19, v21, v23}];
  v29[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  return v25;
}

- (void)drawCharactersInRange:(_NSRange)range inFindableString:(id)string forContentView:(id)view
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  displayTextTextContainer = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
  [displayTextTextContainer size];
  v11 = v10 * -0.5;
  displayTextTextContainer2 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextTextContainer];
  [displayTextTextContainer2 lineFragmentPadding];
  v14 = v11 - v13;

  inlineTextAttachment = [(ICTK2InlineTextAttachmentViewProvider *)self inlineTextAttachment];
  attachment = [inlineTextAttachment attachment];
  v17 = [attachment displayTextRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v19 = v18;

  v22 = 0;
  v23 = 0;
  [(ICTK2InlineTextAttachmentViewProvider *)self updateDisplayTextTextStorage];
  displayTextLayoutManager = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  [displayTextLayoutManager characterRangeForGlyphRange:v17 actualGlyphRange:{v19, &v22}];

  displayTextLayoutManager2 = [(ICTK2InlineTextAttachmentViewProvider *)self displayTextLayoutManager];
  [displayTextLayoutManager2 drawGlyphsForGlyphRange:v22 atPoint:{v23, 0.0, v14}];
}

- (_NSRange)selectedRangeWithinRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  v6.location = [(ICTK2InlineTextAttachmentViewProvider *)self selectedSearchRange:range.location];
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
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  v4 = ICDynamicCast();

  return v4;
}

- (ICInlineAttachmentView)inlineAttachmentView
{
  objc_opt_class();
  view = [(NSTextAttachmentViewProvider *)self view];
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