@interface ICInlineAttachmentViewController
- (ICInlineAttachment)attachment;
- (ICInlineAttachmentViewController)initWithCoder:(id)coder;
- (ICInlineAttachmentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICInlineAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager;
- (ICInlineAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager initialCharacterIndex:(unint64_t)index;
- (ICInlineTextAttachment)textAttachment;
- (NSLayoutManager)displayTextLayoutManager;
- (NSLayoutManager)layoutManager;
- (NSTextContainer)displayTextTextContainer;
- (NSTextStorage)displayTextTextStorage;
- (_NSRange)attachmentRange;
- (_NSRange)selectedRangeWithinRange:(_NSRange)range inFindableString:(id)string;
- (_NSRange)selectedSearchRange;
- (id)inlineAttachmentView;
- (id)rectsForRange:(_NSRange)range inFindableString:(id)string;
- (id)viewForRange:(_NSRange)range inFindableString:(id)string;
- (void)drawCharactersInRange:(_NSRange)range inFindableString:(id)string forContentView:(id)view;
- (void)layoutWithStyleAttributesOfCharacterIndex:(unint64_t)index;
- (void)loadView;
- (void)redrawInlineAttachmentView:(id)view;
- (void)relayoutInlineAttachmentView:(id)view;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)updateDisplayTextTextStorage;
@end

@implementation ICInlineAttachmentViewController

- (ICInlineAttachmentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICInlineAttachmentViewController initWithNibName:bundle:]" simulateCrash:1 showAlert:0 format:@"ICInlineAttachmentViewController should never be initialized from nib."];

  return 0;
}

- (ICInlineAttachmentViewController)initWithCoder:(id)coder
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICInlineAttachmentViewController initWithCoder:]" simulateCrash:1 showAlert:0 format:@"ICInlineAttachmentViewController should never be archived."];

  return 0;
}

- (ICInlineAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager
{
  attachmentCopy = attachment;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = ICInlineAttachmentViewController;
  v10 = [(ICInlineAttachmentViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textAttachment, attachmentCopy);
    attachment = [attachmentCopy attachment];
    objc_storeWeak(&v11->_attachment, attachment);

    v11->_forManualRendering = rendering;
    objc_storeWeak(&v11->_layoutManager, managerCopy);
    v11->_initialCharIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (ICInlineAttachmentViewController)initWithTextAttachment:(id)attachment forManualRendering:(BOOL)rendering layoutManager:(id)manager initialCharacterIndex:(unint64_t)index
{
  result = [(ICInlineAttachmentViewController *)self initWithTextAttachment:attachment forManualRendering:rendering layoutManager:manager];
  if (result)
  {
    result->_initialCharIndex = index;
  }

  return result;
}

- (void)loadView
{
  layoutManager = [(ICInlineAttachmentViewController *)self layoutManager];
  textContainers = [layoutManager textContainers];
  lastObject = [textContainers lastObject];

  LOBYTE(textContainers) = [(ICInlineAttachmentViewController *)self forManualRendering];
  textAttachment = [(ICInlineAttachmentViewController *)self textAttachment];
  v6 = textAttachment;
  if (textContainers)
  {
    [textAttachment newlyCreatedViewForManualRenderingInTextContainer:lastObject];
  }

  else
  {
    [textAttachment newlyCreatedViewForTextContainer:lastObject];
  }
  v7 = ;
  [(ICInlineAttachmentViewController *)self setView:v7];

  [(ICInlineAttachmentViewController *)self layoutWithStyleAttributesOfCharacterIndex:[(ICInlineAttachmentViewController *)self initialCharIndex]];
  objc_opt_class();
  view = [(ICInlineAttachmentViewController *)self view];
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
    view = [(ICInlineAttachmentViewController *)self view];
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
    view = [(ICInlineAttachmentViewController *)self view];
    WeakRetained = ICDynamicCast();

    textAttachment = [WeakRetained textAttachment];
    objc_storeWeak(&self->_textAttachment, textAttachment);
  }

LABEL_5:
  v6 = objc_loadWeakRetained(&self->_textAttachment);

  return v6;
}

- (void)layoutWithStyleAttributesOfCharacterIndex:(unint64_t)index
{
  objc_opt_class();
  layoutManager = [(ICInlineAttachmentViewController *)self layoutManager];
  textStorage = [layoutManager textStorage];
  v7 = ICDynamicCast();

  if (index == 0x7FFFFFFFFFFFFFFFLL)
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
    v9 = [v7 attributesAtIndex:index effectiveRange:0];
  }

  objc_opt_class();
  view = [(ICInlineAttachmentViewController *)self view];
  v11 = ICDynamicCast();

  objc_opt_class();
  styler = [v7 styler];
  v13 = ICDynamicCast();

  authorHighlightsController = [v13 authorHighlightsController];
  v15 = [authorHighlightsController isPerformingHighlightUpdatesForTextStorage:v7];

  if (v15)
  {
    [v11 updateHighlightsWithAttributes:v9];
  }

  else
  {
    [v11 updateStyleWithAttributes:v9];
  }
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  finderCopy = finder;
  objc_opt_class();
  view = [(ICInlineAttachmentViewController *)self view];
  v6 = ICDynamicCast();

  [v6 setHighlightPatternRegexFinder:finderCopy];
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
    displayTextTextContainer = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
    [(NSLayoutManager *)v6 addTextContainer:displayTextTextContainer];

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
    displayTextLayoutManager = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
    [(NSTextStorage *)v6 addLayoutManager:displayTextLayoutManager];

    displayTextTextStorage = self->_displayTextTextStorage;
  }

  return displayTextTextStorage;
}

- (void)updateDisplayTextTextStorage
{
  attachment = [(ICInlineAttachmentViewController *)self attachment];
  uiModel = [attachment uiModel];
  inlineAttachmentView = [(ICInlineAttachmentViewController *)self inlineAttachmentView];
  surroundingAttributes = [inlineAttachmentView surroundingAttributes];
  v28 = [uiModel attributedStringWithSurroundingAttributes:surroundingAttributes formatter:0];

  displayTextTextStorage = [(ICInlineAttachmentViewController *)self displayTextTextStorage];
  LOBYTE(uiModel) = [displayTextTextStorage isEqual:v28];

  if ((uiModel & 1) == 0)
  {
    displayTextTextStorage2 = [(ICInlineAttachmentViewController *)self displayTextTextStorage];
    displayTextTextStorage3 = [(ICInlineAttachmentViewController *)self displayTextTextStorage];
    ic_range = [displayTextTextStorage3 ic_range];
    [displayTextTextStorage2 replaceCharactersInRange:ic_range withAttributedString:{v11, v28}];
  }

  displayTextTextContainer = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [displayTextTextContainer size];
  v14 = v13;
  v16 = v15;
  view = [(ICInlineAttachmentViewController *)self view];
  [view bounds];
  v19 = v18;
  v21 = v20;

  if (v14 != v19 || v16 != v21)
  {
    view2 = [(ICInlineAttachmentViewController *)self view];
    [view2 bounds];
    v24 = v23;
    v26 = v25;
    displayTextTextContainer2 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
    [displayTextTextContainer2 setSize:{v24, v26}];
  }
}

- (_NSRange)attachmentRange
{
  inlineAttachmentView = [(ICInlineAttachmentViewController *)self inlineAttachmentView];
  textAttachment = [inlineAttachmentView textAttachment];
  attachment = [textAttachment attachment];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = &unk_21552D17E;
  v33 = xmmword_2154BBE70;
  if ([(ICInlineAttachmentViewController *)self initialCharIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    initialCharIndex = [(ICInlineAttachmentViewController *)self initialCharIndex];
    layoutManager = [(ICInlineAttachmentViewController *)self layoutManager];
    textStorage = [layoutManager textStorage];
    managedObjectContext = [attachment managedObjectContext];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__ICInlineAttachmentViewController_attachmentRange__block_invoke;
    v26[3] = &unk_2781AEA68;
    v27 = attachment;
    v28 = &v29;
    [textStorage ic_enumerateAbstractAttachmentsInContext:managedObjectContext range:initialCharIndex options:1 usingBlock:{0x100000, v26}];
  }

  if (v30[4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    layoutManager2 = [(ICInlineAttachmentViewController *)self layoutManager];
    textStorage2 = [layoutManager2 textStorage];
    v12 = [textStorage2 length];

    layoutManager3 = [(ICInlineAttachmentViewController *)self layoutManager];
    textStorage3 = [layoutManager3 textStorage];
    managedObjectContext2 = [attachment managedObjectContext];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __51__ICInlineAttachmentViewController_attachmentRange__block_invoke_2;
    v23 = &unk_2781AEA68;
    v24 = attachment;
    v25 = &v29;
    [textStorage3 ic_enumerateAbstractAttachmentsInContext:managedObjectContext2 range:0 options:v12 usingBlock:{0x100000, &v20}];
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

- (void)redrawInlineAttachmentView:(id)view
{
  viewCopy = view;
  inlineAttachmentView = [(ICInlineAttachmentViewController *)self inlineAttachmentView];

  if (inlineAttachmentView == viewCopy)
  {
    attachmentRange = [(ICInlineAttachmentViewController *)self attachmentRange];
    if (attachmentRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = attachmentRange;
      v9 = v7;
      layoutManager = [(ICInlineAttachmentViewController *)self layoutManager];
      [layoutManager invalidateDisplayForCharacterRange:{v8, v9}];
    }
  }
}

- (void)relayoutInlineAttachmentView:(id)view
{
  viewCopy = view;
  inlineAttachmentView = [(ICInlineAttachmentViewController *)self inlineAttachmentView];

  if (inlineAttachmentView == viewCopy)
  {
    attachmentRange = [(ICInlineAttachmentViewController *)self attachmentRange];
    if (attachmentRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = attachmentRange;
      v9 = v7;
      layoutManager = [(ICInlineAttachmentViewController *)self layoutManager];
      [layoutManager invalidateLayoutForCharacterRange:v8 actualCharacterRange:{v9, 0}];
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

- (id)viewForRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  attachment = [(ICInlineAttachmentViewController *)self attachment];
  [attachment displayTextRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v10 = v9;

  if (v10)
  {
    view = [(ICInlineAttachmentViewController *)self view];
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
  v28[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  attachment = [(ICInlineAttachmentViewController *)self attachment];
  v9 = [attachment displayTextRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v11 = v10;

  v26 = 0;
  v27 = 0;
  [(ICInlineAttachmentViewController *)self updateDisplayTextTextStorage];
  displayTextLayoutManager = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  [displayTextLayoutManager characterRangeForGlyphRange:v9 actualGlyphRange:{v11, &v26}];

  displayTextLayoutManager2 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  displayTextTextContainer = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [displayTextLayoutManager2 boundingRectForGlyphRange:v26 inTextContainer:{v27, displayTextTextContainer}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [MEMORY[0x277CCAE60] valueWithRect:{v16, v18, v20, v22}];
  v28[0] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

  return v24;
}

- (void)drawCharactersInRange:(_NSRange)range inFindableString:(id)string forContentView:(id)view
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  displayTextTextContainer = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [displayTextTextContainer size];
  v11 = v10 * -0.5;
  displayTextTextContainer2 = [(ICInlineAttachmentViewController *)self displayTextTextContainer];
  [displayTextTextContainer2 lineFragmentPadding];
  v14 = v11 - v13;

  attachment = [(ICInlineAttachmentViewController *)self attachment];
  v16 = [attachment displayTextRangeForSearchRange:location inSearchableString:{length, stringCopy}];
  v18 = v17;

  v21 = 0;
  v22 = 0;
  [(ICInlineAttachmentViewController *)self updateDisplayTextTextStorage];
  displayTextLayoutManager = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  [displayTextLayoutManager characterRangeForGlyphRange:v16 actualGlyphRange:{v18, &v21}];

  displayTextLayoutManager2 = [(ICInlineAttachmentViewController *)self displayTextLayoutManager];
  [displayTextLayoutManager2 drawGlyphsForGlyphRange:v21 atPoint:{v22, 0.0, v14}];
}

- (_NSRange)selectedRangeWithinRange:(_NSRange)range inFindableString:(id)string
{
  length = range.length;
  location = range.location;
  v6.location = [(ICInlineAttachmentViewController *)self selectedSearchRange:range.location];
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