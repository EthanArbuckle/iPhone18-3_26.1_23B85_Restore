@interface ICInlineAttachmentViewController
- (ICInlineAttachment)attachment;
- (ICInlineAttachmentViewController)initWithCoder:(id)a3;
- (ICInlineAttachmentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICInlineAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5;
- (ICInlineAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5 initialCharacterIndex:(unint64_t)a6;
- (ICInlineTextAttachment)textAttachment;
- (NSLayoutManager)displayTextLayoutManager;
- (NSLayoutManager)layoutManager;
- (NSTextContainer)displayTextTextContainer;
- (NSTextStorage)displayTextTextStorage;
- (_NSRange)attachmentRange;
- (_NSRange)selectedRangeWithinRange:(_NSRange)a3 inFindableString:(id)a4;
- (_NSRange)selectedSearchRange;
- (id)inlineAttachmentView;
- (id)rectsForRange:(_NSRange)a3 inFindableString:(id)a4;
- (id)viewForRange:(_NSRange)a3 inFindableString:(id)a4;
- (void)drawCharactersInRange:(_NSRange)a3 inFindableString:(id)a4 forContentView:(id)a5;
- (void)layoutWithStyleAttributesOfCharacterIndex:(unint64_t)a3;
- (void)loadView;
- (void)redrawInlineAttachmentView:(id)a3;
- (void)relayoutInlineAttachmentView:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)updateDisplayTextTextStorage;
@end

@implementation ICInlineAttachmentViewController

- (ICInlineAttachmentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICInlineAttachmentViewController initWithNibName:bundle:]" simulateCrash:1 showAlert:0 format:@"ICInlineAttachmentViewController should never be initialized from nib."];

  return 0;
}

- (ICInlineAttachmentViewController)initWithCoder:(id)a3
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICInlineAttachmentViewController initWithCoder:]" simulateCrash:1 showAlert:0 format:@"ICInlineAttachmentViewController should never be archived."];

  return 0;
}

- (ICInlineAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = ICInlineAttachmentViewController;
  v10 = [(ICInlineAttachmentViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textAttachment, v8);
    v12 = [v8 attachment];
    objc_storeWeak(&v11->_attachment, v12);

    v11->_forManualRendering = a4;
    objc_storeWeak(&v11->_layoutManager, v9);
    v11->_initialCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (ICInlineAttachmentViewController)initWithTextAttachment:(id)a3 forManualRendering:(BOOL)a4 layoutManager:(id)a5 initialCharacterIndex:(unint64_t)a6
{
  result = [(ICInlineAttachmentViewController *)self initWithTextAttachment:a3 forManualRendering:a4 layoutManager:a5];
  if (result)
  {
    result->_initialCharIndex = a6;
  }

  return result;
}

- (void)loadView
{
  v3 = [(ICInlineAttachmentViewController *)self layoutManager];
  v4 = [v3 textContainers];
  v13 = [v4 lastObject];

  LOBYTE(v4) = [(ICInlineAttachmentViewController *)self forManualRendering];
  v5 = [(ICInlineAttachmentViewController *)self textAttachment];
  v6 = v5;
  if (v4)
  {
    [v5 newlyCreatedViewForManualRenderingInTextContainer:v13];
  }

  else
  {
    [v5 newlyCreatedViewForTextContainer:v13];
  }
  v7 = ;
  [(ICInlineAttachmentViewController *)self setView:v7];

  [(ICInlineAttachmentViewController *)self layoutWithStyleAttributesOfCharacterIndex:[(ICInlineAttachmentViewController *)self initialCharIndex]];
  objc_opt_class();
  v8 = [(ICInlineAttachmentViewController *)self view];
  v9 = ICDynamicCast();

  [v9 setDelegate:self];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [v9 intrinsicContentSize];
    v11 = v10;
    [v9 intrinsicContentSize];
    [v9 setFrame:{0.0, 0.0, v11, v12}];
  }

  [v9 animateInsertionIfNecessary];
}

- (id)inlineAttachmentView
{
  if ([(ICInlineAttachmentViewController *)self isViewLoaded])
  {
    objc_opt_class();
    v3 = [(ICInlineAttachmentViewController *)self view];
    v4 = ICDynamicCast();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICInlineTextAttachment)textAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);
  if (!WeakRetained)
  {
    if (![(ICInlineAttachmentViewController *)self isViewLoaded])
    {
      goto LABEL_5;
    }

    objc_opt_class();
    v4 = [(ICInlineAttachmentViewController *)self view];
    WeakRetained = ICDynamicCast();

    v5 = [WeakRetained textAttachment];
    objc_storeWeak(&self->_textAttachment, v5);
  }

LABEL_5:
  v6 = objc_loadWeakRetained(&self->_textAttachment);

  return v6;
}

- (void)layoutWithStyleAttributesOfCharacterIndex:(unint64_t)a3
{
  objc_opt_class();
  v5 = [(ICInlineAttachmentViewController *)self layoutManager];
  v6 = [v5 textStorage];
  v7 = ICDynamicCast();

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ICInlineAttachmentViewController *)self layoutWithStyleAttributesOfCharacterIndex:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = [v7 attributesAtIndex:a3 effectiveRange:0];
  }

  objc_opt_class();
  v10 = [(ICInlineAttachmentViewController *)self view];
  v11 = ICDynamicCast();

  objc_opt_class();
  v12 = [v7 styler];
  v13 = ICDynamicCast();

  v14 = [v13 authorHighlightsController];
  v15 = [v14 isPerformingHighlightUpdatesForTextStorage:v7];

  if (v15)
  {
    [v11 updateHighlightsWithAttributes:v9];
  }

  else
  {
    [v11 updateStyleWithAttributes:v9];
  }
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICInlineAttachmentViewController *)self view];
  v6 = ICDynamicCast();

  [v6 setHighlightPatternRegexFinder:v4];
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

- (NSLayoutManager)displayTextLayoutManager
{
  displayTextLayoutManager = self->_displayTextLayoutManager;
  if (!displayTextLayoutManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74238]);
    v5 = self->_displayTextLayoutManager;
    self->_displayTextLayoutManager = v4;

    v6 = self->_displayTextLayoutManager;
    v7 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
    [(NSLayoutManager *)v6 addTextContainer:v7];

    displayTextLayoutManager = self->_displayTextLayoutManager;
  }

  return displayTextLayoutManager;
}

- (NSTextStorage)displayTextTextStorage
{
  displayTextTextStorage = self->_displayTextTextStorage;
  if (!displayTextTextStorage)
  {
    v4 = objc_alloc_init(MEMORY[0x277D742D8]);
    v5 = self->_displayTextTextStorage;
    self->_displayTextTextStorage = v4;

    v6 = self->_displayTextTextStorage;
    v7 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
    [(NSTextStorage *)v6 addLayoutManager:v7];

    displayTextTextStorage = self->_displayTextTextStorage;
  }

  return displayTextTextStorage;
}

- (void)updateDisplayTextTextStorage
{
  v3 = [(ICInlineAttachmentViewController *)self attachment];
  v4 = [v3 uiModel];
  v5 = [(ICInlineAttachmentViewController *)self inlineAttachmentView];
  v6 = [v5 surroundingAttributes];
  v28 = [v4 attributedStringWithSurroundingAttributes:v6 formatter:0];

  v7 = [(ICInlineAttachmentViewController *)self displayTextTextStorage];
  LOBYTE(v4) = [v7 isEqual:v28];

  if ((v4 & 1) == 0)
  {
    v8 = [(ICInlineAttachmentViewController *)self displayTextTextStorage];
    v9 = [(ICInlineAttachmentViewController *)self displayTextTextStorage];
    v10 = [v9 ic_range];
    [v8 replaceCharactersInRange:v10 withAttributedString:{v11, v28}];
  }

  v12 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [v12 size];
  v14 = v13;
  v16 = v15;
  v17 = [(ICInlineAttachmentViewController *)self view];
  [v17 bounds];
  v19 = v18;
  v21 = v20;

  if (v14 != v19 || v16 != v21)
  {
    v22 = [(ICInlineAttachmentViewController *)self view];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v27 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
    [v27 setSize:{v24, v26}];
  }
}

- (_NSRange)attachmentRange
{
  v3 = [(ICInlineAttachmentViewController *)self inlineAttachmentView];
  v4 = [v3 textAttachment];
  v5 = [v4 attachment];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = &unk_21552D17E;
  v33 = xmmword_2154BBE70;
  if ([(ICInlineAttachmentViewController *)self initialCharIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(ICInlineAttachmentViewController *)self initialCharIndex];
    v7 = [(ICInlineAttachmentViewController *)self layoutManager];
    v8 = [v7 textStorage];
    v9 = [v5 managedObjectContext];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__ICInlineAttachmentViewController_attachmentRange__block_invoke;
    v26[3] = &unk_2781AEA68;
    v27 = v5;
    v28 = &v29;
    [v8 ic_enumerateAbstractAttachmentsInContext:v9 range:v6 options:1 usingBlock:{0x100000, v26}];
  }

  if (v30[4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(ICInlineAttachmentViewController *)self layoutManager];
    v11 = [v10 textStorage];
    v12 = [v11 length];

    v13 = [(ICInlineAttachmentViewController *)self layoutManager];
    v14 = [v13 textStorage];
    v15 = [v5 managedObjectContext];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __51__ICInlineAttachmentViewController_attachmentRange__block_invoke_2;
    v23 = &unk_2781AEA68;
    v24 = v5;
    v25 = &v29;
    [v14 ic_enumerateAbstractAttachmentsInContext:v15 range:0 options:v12 usingBlock:{0x100000, &v20}];
  }

  if ([(ICInlineAttachmentViewController *)self initialCharIndex:v20]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICInlineAttachmentViewController *)self setInitialCharIndex:v30[4]];
  }

  v16 = v30[4];
  v17 = v30[5];
  _Block_object_dispose(&v29, 8);

  v18 = v16;
  v19 = v17;
  result.length = v19;
  result.location = v18;
  return result;
}

uint64_t __51__ICInlineAttachmentViewController_attachmentRange__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v5 = *(*(result + 40) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

uint64_t __51__ICInlineAttachmentViewController_attachmentRange__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v5 = *(*(result + 40) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

- (void)redrawInlineAttachmentView:(id)a3
{
  v4 = a3;
  v5 = [(ICInlineAttachmentViewController *)self inlineAttachmentView];

  if (v5 == v4)
  {
    v6 = [(ICInlineAttachmentViewController *)self attachmentRange];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v6;
      v9 = v7;
      v10 = [(ICInlineAttachmentViewController *)self layoutManager];
      [v10 invalidateDisplayForCharacterRange:{v8, v9}];
    }
  }
}

- (void)relayoutInlineAttachmentView:(id)a3
{
  v4 = a3;
  v5 = [(ICInlineAttachmentViewController *)self inlineAttachmentView];

  if (v5 == v4)
  {
    v6 = [(ICInlineAttachmentViewController *)self attachmentRange];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v6;
      v9 = v7;
      v10 = [(ICInlineAttachmentViewController *)self layoutManager];
      [v10 invalidateLayoutForCharacterRange:v8 actualCharacterRange:{v9, 0}];
    }
  }
}

- (ICInlineAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (NSLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
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

- (id)viewForRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICInlineAttachmentViewController *)self attachment];
  [v8 displayTextRangeForSearchRange:location inSearchableString:{length, v7}];
  v10 = v9;

  if (v10)
  {
    v11 = [(ICInlineAttachmentViewController *)self view];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)rectsForRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(ICInlineAttachmentViewController *)self attachment];
  v9 = [v8 displayTextRangeForSearchRange:location inSearchableString:{length, v7}];
  v11 = v10;

  v26 = 0;
  v27 = 0;
  [(ICInlineAttachmentViewController *)self updateDisplayTextTextStorage];
  v12 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  [v12 characterRangeForGlyphRange:v9 actualGlyphRange:{v11, &v26}];

  v13 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  v14 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [v13 boundingRectForGlyphRange:v26 inTextContainer:{v27, v14}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [MEMORY[0x277CCAE60] valueWithRect:{v16, v18, v20, v22}];
  v28[0] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

  return v24;
}

- (void)drawCharactersInRange:(_NSRange)a3 inFindableString:(id)a4 forContentView:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [v9 size];
  v11 = v10 * -0.5;
  v12 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [v12 lineFragmentPadding];
  v14 = v11 - v13;

  v15 = [(ICInlineAttachmentViewController *)self attachment];
  v16 = [v15 displayTextRangeForSearchRange:location inSearchableString:{length, v8}];
  v18 = v17;

  v21 = 0;
  v22 = 0;
  [(ICInlineAttachmentViewController *)self updateDisplayTextTextStorage];
  v19 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  [v19 characterRangeForGlyphRange:v16 actualGlyphRange:{v18, &v21}];

  v20 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  [v20 drawGlyphsForGlyphRange:v21 atPoint:{v22, 0.0, v14}];
}

- (_NSRange)selectedRangeWithinRange:(_NSRange)a3 inFindableString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6.location = [(ICInlineAttachmentViewController *)self selectedSearchRange:a3.location];
  v7.location = location;
  v7.length = length;

  v10 = NSIntersectionRange(v6, v7);
  v9 = v10.length;
  v8 = v10.location;
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)layoutWithStyleAttributesOfCharacterIndex:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 textAttachment];
  v4 = [v3 attachmentIdentifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "View of Token Attachment %@ character index is NSNotFound", &v5, 0xCu);
}

@end