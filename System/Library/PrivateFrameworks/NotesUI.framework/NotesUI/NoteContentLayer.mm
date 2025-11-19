@interface NoteContentLayer
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canInsertImagesInNoteHTMLEditorView:(id)a3;
- (BOOL)canResignFirstResponder;
- (BOOL)contentContainsValuableContent;
- (BOOL)isEditable;
- (BOOL)isFirstResponder;
- (BOOL)isNoteHTMLEditorViewVisible:(id)a3;
- (BOOL)isNoteManagedForNoteHTMLEditorView:(id)a3;
- (BOOL)noteHTMLEditorView:(id)a3 acceptContentsFromPasteboard:(id)a4;
- (BOOL)noteHTMLEditorView:(id)a3 canAddAttachmentItemProviders:(id)a4;
- (BOOL)noteHTMLEditorViewShouldBeginEditing:(id)a3 isUserInitiated:(BOOL)a4;
- (BOOL)noteHTMLEditorViewShouldPaste:(id)a3;
- (BOOL)processMapAttachmentItemProvider:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)shouldRenderAsAttachment:(id)a3;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGPoint)contentOffset;
- (CGRect)rectForDOMNode:(id)a3;
- (ICTextBackgroundView)backgroundView;
- (NSString)title;
- (NoteContentLayer)initWithFrame:(CGRect)a3;
- (NoteContentLayer)initWithFrame:(CGRect)a3 forPreview:(BOOL)a4;
- (NoteContentLayerAttachmentPresentationDelegate)attachmentPresentationDelegate;
- (NoteContentLayerDelegate)delegate;
- (NoteHTMLEditorView)noteHTMLEditorView;
- (UILabel)dateLabel;
- (id)contentAsPlainText:(BOOL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)noteHTMLEditorView:(id)a3 attachmentPresentationForContentID:(id)a4;
- (id)noteHTMLEditorView:(id)a3 createAttachmentPresentationWithFileWrapper:(id)a4 mimeType:(id)a5;
- (id)noteHTMLEditorView:(id)a3 fileURLForAttachmentWithContentID:(id)a4;
- (id)noteHTMLEditorView:(id)a3 updateAttachments:(id)a4;
- (id)readerDelegateInNoteHTMLEditorView:(id)a3;
- (id)viewPrintFormatter;
- (id)webArchive;
- (void)chosenUTI:(id *)a3 andChosenMIMEType:(id *)a4 forItemProvider:(id)a5;
- (void)copyNoteHTMLToPasteboard;
- (void)createLayout;
- (void)dealloc;
- (void)flashScrollIndicators;
- (void)getRectForSelectionWithCompletion:(id)a3;
- (void)insertImageInNoteHTMLEditorView:(id)a3;
- (void)noteHTMLEditorView:(id)a3 didAddAttachmentForMimeType:(id)a4 filename:(id)a5 data:(id)a6;
- (void)noteHTMLEditorView:(id)a3 didInvokeFormattingCalloutOption:(int64_t)a4;
- (void)noteHTMLEditorView:(id)a3 didInvokeStyleFormattingOption:(int64_t)a4;
- (void)noteHTMLEditorView:(id)a3 openURL:(id)a4;
- (void)noteHTMLEditorView:(id)a3 showShareSheetForAttachment:(id)a4 atPoint:(CGPoint)a5;
- (void)noteHTMLEditorViewDidBeginEditing:(id)a3;
- (void)noteHTMLEditorViewDidChange:(id)a3;
- (void)noteHTMLEditorViewDidEndEditing:(id)a3;
- (void)noteHTMLEditorViewNeedsContentReload:(id)a3;
- (void)noteHTMLEditorViewWillChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)processAttachmentItemProviders:(id)a3;
- (void)registerForTraitChanges;
- (void)replaceSelectionWithAttachmentPresentation:(id)a3;
- (void)scrollSelectionToVisible:(BOOL)a3;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)setContent:(id)a3 isPlainText:(BOOL)a4 attachments:(id)a5;
- (void)setContentOffset:(CGPoint)a3;
- (void)setEditable:(BOOL)a3;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3;
- (void)setSelectionToStart;
- (void)setTimestampDate:(id)a3;
- (void)updateContentInsets;
- (void)updateObscuredInsets;
@end

@implementation NoteContentLayer

- (NoteContentLayer)initWithFrame:(CGRect)a3 forPreview:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = NoteContentLayer;
  v5 = [(NoteContentLayer *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_forPreview = a4;
    [(NoteContentLayer *)v5 setPreservesSuperviewLayoutMargins:1];
    [(NoteContentLayer *)v6 createLayout];
    v7 = [(NoteContentLayer *)v6 noteHTMLEditorView];
    v8 = [v7 webView];
    v9 = [v8 scrollView];
    [v9 ic_addObserver:v6 forKeyPath:@"contentSize" context:compoundliteral];

    [(NoteContentLayer *)v6 updateContentInsets];
  }

  return v6;
}

- (NoteContentLayer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG];

  return [(NoteContentLayer *)self initWithFrame:v8 forPreview:x, y, width, height];
}

- (void)dealloc
{
  v3 = [(NoteContentLayer *)self noteHTMLEditorView];
  v4 = [v3 webView];
  v5 = [v4 scrollView];
  [v5 ic_removeObserver:self forKeyPath:@"contentSize" context:compoundliteral];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self];

  v7 = [(NoteHTMLEditorView *)self->_noteHTMLEditorView webView];
  v8 = [v7 scrollView];
  [v8 setDelegate:0];

  [(NoteHTMLEditorView *)self->_noteHTMLEditorView setDelegate:0];
  [(NoteHTMLEditorView *)self->_noteHTMLEditorView setActionDelegate:0];
  [(NoteHTMLEditorView *)self->_noteHTMLEditorView setLayoutDelegate:0];
  v9.receiver = self;
  v9.super_class = NoteContentLayer;
  [(NoteContentLayer *)&v9 dealloc];
}

- (void)createLayout
{
  v62[4] = *MEMORY[0x1E69E9840];
  v3 = [(NoteContentLayer *)self noteHTMLEditorView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(NoteContentLayer *)self noteHTMLEditorView];
    [(NoteContentLayer *)self addSubview:v5];

    v6 = [(NoteContentLayer *)self noteHTMLEditorView];
    [v6 ic_addConstraintsToFillSuperview];
  }

  v7 = [(NoteContentLayer *)self isForPreview];
  v8 = 0x1E69DC000;
  if (!v7)
  {
    v9 = [(NoteContentLayer *)self noteHTMLEditorView];
    v10 = [v9 webView];
    v11 = [v10 scrollView];
    v12 = [(NoteContentLayer *)self backgroundView];
    [v11 insertSubview:v12 atIndex:0];

    v13 = [(NoteContentLayer *)self noteHTMLEditorView];
    v14 = [v13 webView];
    v15 = [v14 scrollView];
    v16 = [(NoteContentLayer *)self dateLabel];
    [v15 addSubview:v16];

    v59 = [(NoteContentLayer *)self backgroundView];
    v53 = [v59 leadingAnchor];
    v57 = [(NoteContentLayer *)self noteHTMLEditorView];
    v55 = [v57 webView];
    v51 = [v55 scrollView];
    v49 = [v51 leadingAnchor];
    v48 = [v53 constraintEqualToAnchor:v49];
    v62[0] = v48;
    v47 = [(NoteContentLayer *)self backgroundView];
    v44 = [v47 topAnchor];
    v46 = [(NoteContentLayer *)self noteHTMLEditorView];
    v45 = [v46 webView];
    v43 = [v45 scrollView];
    v42 = [v43 topAnchor];
    v41 = [v44 constraintEqualToAnchor:v42];
    v62[1] = v41;
    v40 = [(NoteContentLayer *)self backgroundView];
    v17 = [v40 widthAnchor];
    v18 = [(NoteContentLayer *)self noteHTMLEditorView];
    v19 = [v18 webView];
    v20 = [v19 scrollView];
    v21 = [v20 widthAnchor];
    v22 = [v17 constraintEqualToAnchor:v21];
    v62[2] = v22;
    v23 = [(NoteContentLayer *)self backgroundView];
    v24 = [v23 heightAnchor];
    [(NoteContentLayer *)self bounds];
    v26 = [v24 constraintEqualToConstant:v25 + v25];
    backgroundHeightConstraint = self->_backgroundHeightConstraint;
    self->_backgroundHeightConstraint = v26;

    v62[3] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
    [(NoteContentLayer *)self addConstraints:v28];

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      v29 = 12.0;
    }

    else
    {
      v29 = 0.0;
    }

    v60 = [(NoteContentLayer *)self dateLabel];
    v54 = [v60 centerXAnchor];
    v58 = [(NoteContentLayer *)self noteHTMLEditorView];
    v56 = [v58 webView];
    v52 = [v56 scrollView];
    v50 = [v52 centerXAnchor];
    v30 = [v54 constraintEqualToAnchor:v50];
    v61[0] = v30;
    v31 = [(NoteContentLayer *)self dateLabel];
    v32 = [v31 firstBaselineAnchor];
    v33 = [(NoteContentLayer *)self noteHTMLEditorView];
    v34 = [v33 webView];
    v35 = [v34 scrollView];
    v36 = [v35 topAnchor];
    v37 = [v32 constraintEqualToAnchor:v36 constant:v29];
    v61[1] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    [(NoteContentLayer *)self addConstraints:v38];

    v8 = 0x1E69DC000uLL;
  }

  if ([*(v8 + 2360) ic_isVision])
  {
    v39 = [MEMORY[0x1E69DC888] ic_noteEditorBackgroundColor];
    [(NoteContentLayer *)self setBackgroundColor:v39];
  }
}

- (void)updateContentInsets
{
  v3 = [(NoteContentLayer *)self noteHTMLEditorView];
  v4 = [v3 webView];
  v5 = [v4 scrollView];
  [v5 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(NoteContentLayer *)self dateLabel];
  v13 = [v12 font];
  [v13 lineHeight];
  v15 = v14;

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v15 = v15 + 12.0;
  }

  v18 = [(NoteContentLayer *)self noteHTMLEditorView];
  v16 = [v18 webView];
  v17 = [v16 scrollView];
  [v17 setContentInset:{v15, v7, v9, v11}];
}

- (void)updateObscuredInsets
{
  [(NoteContentLayer *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = [(NoteContentLayer *)self noteHTMLEditorView];
  v11 = [v12 webView];
  [v11 _setObscuredInsets:{v4, v6, v8, v10}];
}

- (NoteHTMLEditorView)noteHTMLEditorView
{
  noteHTMLEditorView = self->_noteHTMLEditorView;
  if (!noteHTMLEditorView)
  {
    v4 = objc_alloc_init(NoteHTMLEditorView);
    v5 = self->_noteHTMLEditorView;
    self->_noteHTMLEditorView = v4;

    [(NoteHTMLEditorView *)self->_noteHTMLEditorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NoteHTMLEditorView *)self->_noteHTMLEditorView setEditable:0];
    [(NoteHTMLEditorView *)self->_noteHTMLEditorView setDelegate:self];
    [(NoteHTMLEditorView *)self->_noteHTMLEditorView setActionDelegate:self];
    [(NoteHTMLEditorView *)self->_noteHTMLEditorView setLayoutDelegate:self];
    v6 = [(NoteHTMLEditorView *)self->_noteHTMLEditorView webView];
    v7 = [v6 scrollView];
    [v7 setAlwaysBounceVertical:1];

    noteHTMLEditorView = self->_noteHTMLEditorView;
  }

  return noteHTMLEditorView;
}

- (ICTextBackgroundView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = objc_alloc_init(ICTextBackgroundView);
    v5 = self->_backgroundView;
    self->_backgroundView = v4;

    [(ICTextBackgroundView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICTextBackgroundView *)self->_backgroundView setBackgroundColor:0];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (UILabel)dateLabel
{
  dateLabel = self->_dateLabel;
  if (!dateLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_dateLabel;
    self->_dateLabel = v4;

    [(UILabel *)self->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(NoteContentLayer *)self timestampDate];
    v7 = [v6 userFriendlyStringWithTime];
    [(UILabel *)self->_dateLabel setText:v7];

    v8 = [MEMORY[0x1E69DC888] ic_noteEditorSecondaryLabelColor];
    [(UILabel *)self->_dateLabel setTextColor:v8];

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)self->_dateLabel setFont:v9];

    [(UILabel *)self->_dateLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_dateLabel _accessibilitySetIsSpeakThisElement:0];
    dateLabel = self->_dateLabel;
  }

  return dateLabel;
}

- (void)setTimestampDate:(id)a3
{
  objc_storeStrong(&self->_timestampDate, a3);
  v6 = [(NoteContentLayer *)self timestampDate];
  v4 = [v6 userFriendlyStringWithTime];
  v5 = [(NoteContentLayer *)self dateLabel];
  [v5 setText:v4];
}

- (void)setContent:(id)a3 isPlainText:(BOOL)a4 attachments:(id)a5
{
  v5 = a4;
  v11 = a5;
  v8 = a3;
  v9 = [(NoteContentLayer *)self noteHTMLEditorView];
  v10 = v9;
  if (v5)
  {
    [v9 setText:v8];
  }

  else
  {
    [v9 setHtmlString:v8 attachments:v11];
  }
}

- (BOOL)isEditable
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 isEditable];

  return v3;
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v4 = [(NoteContentLayer *)self noteHTMLEditorView];
  [v4 setEditable:v3];
}

- (id)contentAsPlainText:(BOOL)a3
{
  v3 = a3;
  if ([(NoteContentLayer *)self contentContainsValuableContent])
  {
    v5 = [(NoteContentLayer *)self noteHTMLEditorView];
    v6 = v5;
    if (v3)
    {
      [v5 text];
    }

    else
    {
      [v5 htmlString];
    }
    v7 = ;
  }

  else
  {
    v7 = &stru_1F4F94F00;
  }

  return v7;
}

- (NSString)title
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 title];

  return v3;
}

- (BOOL)contentContainsValuableContent
{
  v3 = [(NoteContentLayer *)self noteHTMLEditorView];
  v4 = [v3 title];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NoteContentLayer *)self noteHTMLEditorView];
    v5 = [v6 hasAttachments];
  }

  return v5;
}

- (void)flashScrollIndicators
{
  v4 = [(NoteContentLayer *)self noteHTMLEditorView];
  v2 = [v4 webView];
  v3 = [v2 scrollView];
  [v3 flashScrollIndicators];
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = [(NoteContentLayer *)self noteHTMLEditorView];
  v7 = [v9 webView];
  v8 = [v7 scrollView];
  [v8 setScrollIndicatorInsets:{top, left, bottom, right}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(NoteContentLayer *)self delegate];
  [v8 noteContentLayer:self willHitTestWithEvent:v7];

  v11.receiver = self;
  v11.super_class = NoteContentLayer;
  v9 = [(NoteContentLayer *)&v11 hitTest:v7 withEvent:x, y];

  return v9;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (CGPoint)contentOffset
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 webView];
  v4 = [v3 scrollView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(NoteContentLayer *)self noteHTMLEditorView];
  v7 = [v6 webView];
  v8 = [v7 scrollView];
  [v8 layoutIfNeeded];

  v11 = [(NoteContentLayer *)self noteHTMLEditorView];
  v9 = [v11 webView];
  v10 = [v9 scrollView];
  [v10 setContentOffset:{x, y}];
}

- (void)getRectForSelectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NoteContentLayer *)self noteHTMLEditorView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NoteContentLayer_getRectForSelectionWithCompletion___block_invoke;
  v7[3] = &unk_1E846ABC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getRectForSelectionWithCompletion:v7];
}

void __54__NoteContentLayer_getRectForSelectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  performBlockOnMainThread();
}

uint64_t __54__NoteContentLayer_getRectForSelectionWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 noteHTMLEditorView];
  [v2 convertRect:v3 fromView:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  result = *(a1 + 48);
  if (result)
  {
    v17 = *(result + 16);
    v12.n128_u64[0] = v5;
    v13.n128_u64[0] = v7;
    v14.n128_u64[0] = v9;
    v15.n128_u64[0] = v11;

    return v17(v12, v13, v14, v15);
  }

  return result;
}

- (CGRect)rectForDOMNode:(id)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)replaceSelectionWithAttachmentPresentation:(id)a3
{
  v4 = a3;
  v5 = [(NoteContentLayer *)self noteHTMLEditorView];
  [v5 replaceSelectionWithAttachmentPresentation:v4];
}

- (id)webArchive
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 webArchive];

  return v3;
}

- (void)copyNoteHTMLToPasteboard
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  [v2 copyNoteHTMLToPasteboard];
}

- (id)viewPrintFormatter
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  v3 = [v2 viewPrintFormatter];

  return v3;
}

- (void)setSelectionToStart
{
  v2 = [(NoteContentLayer *)self noteHTMLEditorView];
  [v2 setSelectionToStart];
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(NoteContentLayer *)self noteHTMLEditorView];
  v4 = [v6 webView];
  v5 = [v4 scrollView];
  [v5 scrollRectToVisible:v3 animated:{0.0, 0.0, 1.0, 1.0}];
}

- (void)scrollSelectionToVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(NoteContentLayer *)self noteHTMLEditorView];
  [v4 scrollSelectionToVisible:v3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(NoteContentLayer *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/iOS/EmbeddedMobileNotes/NoteContentLayer.m"]& 1) != 0)
  {
    v13 = [(NoteContentLayer *)self ic_shouldIgnoreObserveValue:v12 ofObject:v11 forKeyPath:v10];

    if (a6 == compoundliteral && (v13 & 1) == 0)
    {
      v14 = [(NoteContentLayer *)self noteHTMLEditorView];
      v15 = [v14 webView];
      v16 = [v15 scrollView];
      v17 = v16;
      if (v16 == v11)
      {
        v18 = [v10 isEqualToString:@"contentSize"];

        if (v18)
        {
          v19 = [(NoteContentLayer *)self noteHTMLEditorView];
          v20 = [v19 webView];
          v21 = [v20 scrollView];
          [v21 contentSize];
          v23 = v22;

          v24 = [(NoteContentLayer *)self noteHTMLEditorView];
          v25 = [v24 webView];
          v26 = [v25 scrollView];
          [v26 bounds];
          v28 = v27;

          if (v23 < v28)
          {
            v23 = v28;
          }

          [(NoteContentLayer *)self bounds];
          v30 = v23 + v29;
          v31 = [(NoteContentLayer *)self backgroundHeightConstraint];
          [v31 setConstant:v30];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = NoteContentLayer;
    [(NoteContentLayer *)&v32 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)registerForTraitChanges
{
  v4 = [MEMORY[0x1E69DD1B8] ic_traitsAffectingSize];
  v3 = [(NoteContentLayer *)self registerForTraitChanges:v4 withAction:sel_updateContentInsets];
}

- (id)keyCommands
{
  v3 = [(NoteContentLayer *)self noteHTMLEditorView];
  v4 = [v3 isEditing];

  if (v4)
  {
    if (keyCommands_predicate != -1)
    {
      [NoteContentLayer keyCommands];
    }

    v5 = keyCommands_keyCommands;
    v9.receiver = self;
    v9.super_class = NoteContentLayer;
    v6 = [(NoteContentLayer *)&v9 keyCommands];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __31__NoteContentLayer_keyCommands__block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DCBA0];
  v1 = __ICLocalizedFrameworkString_impl(@"Bold", @"Bold", 0, 1);
  v2 = [v0 ic_keyCommandWithInput:@"b" modifierFlags:0x100000 action:sel_toggleBoldface_ discoverabilityTitle:v1];
  v3 = MEMORY[0x1E69DCBA0];
  v4 = __ICLocalizedFrameworkString_impl(@"Italics", @"Italics", 0, 1);
  v5 = [v3 ic_keyCommandWithInput:@"i" modifierFlags:0x100000 action:sel_toggleItalics_ discoverabilityTitle:{v4, v2}];
  v11[1] = v5;
  v6 = MEMORY[0x1E69DCBA0];
  v7 = __ICLocalizedFrameworkString_impl(@"Underline", @"Underline", 0, 1);
  v8 = [v6 ic_keyCommandWithInput:@"u" modifierFlags:0x100000 action:sel_toggleUnderline_ discoverabilityTitle:v7];
  v11[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v10 = keyCommands_keyCommands;
  keyCommands_keyCommands = v9;
}

- (BOOL)noteHTMLEditorView:(id)a3 canAddAttachmentItemProviders:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v6)
  {
LABEL_15:
    v19 = 0;
    goto LABEL_35;
  }

  v7 = v6;
  v8 = *v42;
  v9 = *MEMORY[0x1E6982E18];
  v34 = *MEMORY[0x1E6983020];
  v32 = *MEMORY[0x1E6982F98];
  v10 = 0x1E6982000uLL;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v42 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v12 = *(*(&v41 + 1) + 8 * v11);
    v40 = 0;
    [(NoteContentLayer *)self chosenUTI:&v40 andChosenMIMEType:0 forItemProvider:v12, v32];
    v13 = v40;
    if (!v13)
    {
      [(NoteContentLayer *)self shouldRenderAsAttachment:v12];
      goto LABEL_19;
    }

    v14 = [*(v10 + 3136) typeWithIdentifier:v13];
    if (([v14 conformsToType:v9] & 1) != 0 || -[NoteContentLayer shouldRenderAsAttachment:](self, "shouldRenderAsAttachment:", v12))
    {

      goto LABEL_19;
    }

    v15 = [*(v10 + 3136) typeWithIdentifier:v13];
    if ([v15 conformsToType:v34])
    {

      goto LABEL_13;
    }

    v16 = v10;
    v17 = v5;
    v18 = [*(v16 + 3136) typeWithIdentifier:v13];
    if (([v18 conformsToType:v32] & 1) == 0)
    {
      break;
    }

    v33 = [(NoteContentLayer *)self allowsAttachments];

    v5 = v17;
    v10 = 0x1E6982000;
    if (!v33)
    {
      goto LABEL_19;
    }

LABEL_13:

    if (v7 == ++v11)
    {
      v7 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  v5 = v17;
  v10 = 0x1E6982000uLL;
LABEL_19:

  if ([(NoteContentLayer *)self allowsAttachments])
  {
    v19 = 1;
    goto LABEL_36;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v5;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = v10;
    v24 = *v37;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        v35 = 0;
        [(NoteContentLayer *)self chosenUTI:&v35 andChosenMIMEType:0 forItemProvider:v26];
        v27 = v35;
        if (!v27)
        {
          goto LABEL_33;
        }

        v28 = [*(v23 + 3136) typeWithIdentifier:v27];
        if (([v28 conformsToType:v34] & 1) == 0)
        {

LABEL_33:
          v30 = [(NoteContentLayer *)self delegate];
          [v30 showAttachmentsUnsupportedAlertForNoteContentLayer:self];

          goto LABEL_34;
        }

        v29 = [(NoteContentLayer *)self shouldRenderAsAttachment:v26];

        if (v29)
        {
          goto LABEL_33;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
      v19 = 1;
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_34:
    v19 = 1;
  }

LABEL_35:

LABEL_36:
  return v19;
}

- (id)noteHTMLEditorView:(id)a3 createAttachmentPresentationWithFileWrapper:(id)a4 mimeType:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NoteContentLayer *)self delegate];
  v10 = [v8 regularFileContents];
  v11 = [v8 preferredFilename];

  v12 = [v9 noteContentLayer:self createAttachmentPresentationWithData:v10 mimeType:v7 filename:v11];

  return v12;
}

- (void)noteHTMLEditorView:(id)a3 didAddAttachmentForMimeType:(id)a4 filename:(id)a5 data:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(NoteContentLayer *)self delegate];
  [v12 noteContentLayer:self didAddAttachmentForMimeType:v11 filename:v10 data:v9];
}

- (BOOL)noteHTMLEditorViewShouldBeginEditing:(id)a3 isUserInitiated:(BOOL)a4
{
  v4 = a4;
  [(NoteContentLayer *)self setNeedsLayout];
  v6 = [(NoteContentLayer *)self delegate];
  if (v6)
  {
    v7 = [(NoteContentLayer *)self delegate];
    v8 = [v7 noteContentLayerShouldBeginEditing:self isUserInitiated:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)noteHTMLEditorViewDidChange:(id)a3
{
  v4 = [(NoteContentLayer *)self delegate];
  [v4 noteContentLayerContentDidChange:self updatedTitle:1 fromDrop:0];
}

- (void)noteHTMLEditorViewWillChange:(id)a3
{
  v4 = [(NoteContentLayer *)self delegate];
  [v4 noteContentLayerContentWillChange:self];
}

- (void)noteHTMLEditorViewDidBeginEditing:(id)a3
{
  v4 = [(NoteContentLayer *)self delegate];
  [v4 noteContentLayer:self setEditing:1 animated:1];
}

- (void)noteHTMLEditorViewDidEndEditing:(id)a3
{
  v4 = [(NoteContentLayer *)self delegate];
  [v4 noteContentLayer:self setEditing:0 animated:1];

  [(NoteContentLayer *)self setNeedsLayout];
}

- (void)noteHTMLEditorView:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [(NoteContentLayer *)self delegate];
  [v6 noteContentLayer:self openURL:v5];
}

- (id)noteHTMLEditorView:(id)a3 fileURLForAttachmentWithContentID:(id)a4
{
  v5 = a4;
  v6 = [(NoteContentLayer *)self attachmentPresentationDelegate];
  v7 = [v6 noteContentLayer:self fileURLForAttachmentWithContentID:v5];

  return v7;
}

- (id)noteHTMLEditorView:(id)a3 attachmentPresentationForContentID:(id)a4
{
  v5 = a4;
  v6 = [(NoteContentLayer *)self attachmentPresentationDelegate];
  v7 = [v6 noteContentLayer:self attachmentPresentationForContentID:v5];

  return v7;
}

- (BOOL)isNoteManagedForNoteHTMLEditorView:(id)a3
{
  v3 = self;
  v4 = [(NoteContentLayer *)self delegate];
  LOBYTE(v3) = [v4 isNoteManagedForNoteContentLayer:v3];

  return v3;
}

- (void)noteHTMLEditorView:(id)a3 didInvokeFormattingCalloutOption:(int64_t)a4
{
  v6 = [(NoteContentLayer *)self delegate];
  [v6 noteContentLayer:self didInvokeFormattingCalloutOption:a4];
}

- (void)noteHTMLEditorView:(id)a3 didInvokeStyleFormattingOption:(int64_t)a4
{
  v6 = [(NoteContentLayer *)self delegate];
  [v6 noteContentLayer:self didInvokeStyleFormattingOption:a4];
}

- (id)noteHTMLEditorView:(id)a3 updateAttachments:(id)a4
{
  v5 = a4;
  v6 = [(NoteContentLayer *)self delegate];
  v7 = [v6 noteContentLayer:self updateAttachments:v5];

  return v7;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  [(NoteContentLayer *)self setUpdatedTitleRange:location <= *MEMORY[0x1E69B7120]];
  if (-[NoteContentLayer tracksMaximumContentLength](self, "tracksMaximumContentLength") && [v8 length] > length)
  {
    v9 = [v8 substringFromIndex:length];
    v10 = [(NoteContentLayer *)self delegate];
    v11 = [v10 noteContentLayer:self acceptStringIncreasingContentLength:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)canInsertImagesInNoteHTMLEditorView:(id)a3
{
  v3 = self;
  v4 = [(NoteContentLayer *)self delegate];
  LOBYTE(v3) = [v4 canInsertImagesInNoteContentLayer:v3];

  return v3;
}

- (void)insertImageInNoteHTMLEditorView:(id)a3
{
  v4 = [(NoteContentLayer *)self delegate];
  [v4 insertImageInNoteContentLayer:self];
}

- (void)noteHTMLEditorViewNeedsContentReload:(id)a3
{
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  dateLabel = self->_dateLabel;
  self->_dateLabel = 0;

  [(NoteContentLayer *)self createLayout];
  v6 = [(NoteContentLayer *)self noteHTMLEditorView];
  [v6 setNeedsDisplay];

  [(NoteContentLayer *)self setNeedsLayout];
  v7 = [(NoteContentLayer *)self delegate];
  [v7 noteContentLayerNeedsContentReload:self];
}

- (BOOL)noteHTMLEditorView:(id)a3 acceptContentsFromPasteboard:(id)a4
{
  v5 = a4;
  v6 = [(NoteContentLayer *)self delegate];
  LOBYTE(self) = [v6 noteContentLayer:self acceptContentsFromPasteboard:v5];

  return self;
}

- (id)readerDelegateInNoteHTMLEditorView:(id)a3
{
  v4 = [(NoteContentLayer *)self delegate];
  v5 = [v4 readerDelegateForNoteContentLayer:self];

  return v5;
}

- (BOOL)shouldRenderAsAttachment:(id)a3
{
  v3 = *MEMORY[0x1E6983020];
  v4 = a3;
  v5 = [v3 identifier];
  v6 = [v4 hasItemConformingToTypeIdentifier:v5];

  v7 = [v4 preferredPresentationStyle];
  return v7 == 2 || (v6 & 1) == 0;
}

- (void)noteHTMLEditorView:(id)a3 showShareSheetForAttachment:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v9 = [(NoteContentLayer *)self delegate];
  [v9 noteContentLayer:self showShareSheetForAttachment:v8 atPoint:{x, y}];
}

- (BOOL)noteHTMLEditorViewShouldPaste:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = [v4 itemProviders];

  v6 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([(NoteContentLayer *)self shouldRenderAsAttachment:v12, v17])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    if ([(NoteContentLayer *)self allowsAttachments])
    {
      [(NoteContentLayer *)self processAttachmentItemProviders:v6];
      v13 = [v6 count];
      v14 = v13 != [v7 count];
    }

    else
    {
      v15 = [(NoteContentLayer *)self delegate];
      [v15 showAttachmentsUnsupportedAlertForNoteContentLayer:self];

      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)isNoteHTMLEditorViewVisible:(id)a3
{
  v3 = self;
  v4 = [(NoteContentLayer *)self delegate];
  LOBYTE(v3) = [v4 isNoteContentLayerVisible:v3];

  return v3;
}

- (void)chosenUTI:(id *)a3 andChosenMIMEType:(id *)a4 forItemProvider:(id)a5
{
  v29 = a3;
  v30 = a4;
  v38[2] = *MEMORY[0x1E69E9840];
  v5 = a5;
  v6 = [*MEMORY[0x1E6982F98] identifier];
  v38[0] = v6;
  v7 = [*MEMORY[0x1E6982E18] identifier];
  v38[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

  v9 = MEMORY[0x1E695DF70];
  v10 = [v5 registeredTypeIdentifiers];
  v11 = [v9 arrayWithArray:v10];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __64__NoteContentLayer_chosenUTI_andChosenMIMEType_forItemProvider___block_invoke;
  v35[3] = &unk_1E846ABE8;
  v12 = v8;
  v36 = v12;
  [v11 sortUsingComparator:v35];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v31 + 1) + 8 * v17);
      v19 = [MEMORY[0x1E6982C40] typeWithIdentifier:{v18, v29, v30, v31}];
      v20 = [v19 preferredMIMEType];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v23 = v18;

    v22 = v29;
    v21 = v30;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:

    v20 = 0;
    v22 = v29;
    v21 = v30;
  }

  v24 = [v13 firstObject];
  v25 = [v12 containsObject:v24];

  if (v25)
  {
    v23 = [v13 firstObject];
LABEL_13:
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v28 = [v5 registeredTypeIdentifiers];
    v23 = [v28 firstObject];

    if (v22)
    {
LABEL_14:
      v26 = v23;
      *v22 = v23;
    }
  }

  if (v21)
  {
    v27 = v20;
    *v21 = v20;
  }
}

uint64_t __64__NoteContentLayer_chosenUTI_andChosenMIMEType_forItemProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (void)processAttachmentItemProviders:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = *v27;
    v7 = *MEMORY[0x1E69B7968];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 registeredTypeIdentifiers];
        v11 = [v10 containsObject:v7];

        if (!v11 || ![(NoteContentLayer *)self processMapAttachmentItemProvider:v9])
        {
          v24 = 0;
          v25 = 0;
          [(NoteContentLayer *)self chosenUTI:&v25 andChosenMIMEType:&v24 forItemProvider:v9];
          v12 = v25;
          v13 = v24;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __51__NoteContentLayer_processAttachmentItemProviders___block_invoke;
          v18[3] = &unk_1E846AC38;
          objc_copyWeak(&v23, &location);
          v14 = v12;
          v19 = v14;
          v20 = self;
          v21 = v9;
          v15 = v13;
          v22 = v15;
          v16 = [v9 loadDataRepresentationForTypeIdentifier:v14 completionHandler:v18];

          objc_destroyWeak(&v23);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  objc_destroyWeak(&location);
}

void __51__NoteContentLayer_processAttachmentItemProviders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v8 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __51__NoteContentLayer_processAttachmentItemProviders___block_invoke_cold_1(a1, v6, v8);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__NoteContentLayer_processAttachmentItemProviders___block_invoke_67;
    v9[3] = &unk_1E846AC10;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v5;
    v13 = WeakRetained;
    v14 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], v9);

    v8 = v10;
  }
}

void __51__NoteContentLayer_processAttachmentItemProviders___block_invoke_67(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    if ([v2 isEqual:*MEMORY[0x1E6982E18]])
    {
      v3 = [*(a1 + 40) shouldRenderAsAttachment:*(a1 + 48)];

      if ((v3 & 1) == 0)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:*(a1 + 56) encoding:4];
        v4 = [*(a1 + 40) noteHTMLEditorView];
        [v4 insertHTMLString:v8];
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (![*(a1 + 40) allowsAttachments])
  {
    return;
  }

  v5 = [*(a1 + 48) suggestedName];
  v8 = v5;
  if (*(a1 + 32) && !v5)
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    v7 = [v6 preferredFilenameExtension];

    v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"untitled.%@", v7];
  }

  v4 = [*(a1 + 64) delegate];
  [v4 noteContentLayer:*(a1 + 40) didAddAttachmentForMimeType:*(a1 + 72) filename:v8 data:*(a1 + 56)];
LABEL_11:
}

- (BOOL)processMapAttachmentItemProvider:(id)a3
{
  v4 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__24;
  v35 = __Block_byref_object_dispose__24;
  v36 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = objc_opt_class();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53__NoteContentLayer_processMapAttachmentItemProvider___block_invoke;
  v28[3] = &unk_1E846AC60;
  v30 = &v31;
  v7 = v5;
  v29 = v7;
  v8 = [v4 loadObjectOfClass:v6 completionHandler:v28];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__24;
  v26 = __Block_byref_object_dispose__24;
  v27 = 0;
  dispatch_group_enter(v7);
  v9 = objc_opt_class();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__NoteContentLayer_processMapAttachmentItemProvider___block_invoke_2;
  v19[3] = &unk_1E846AC60;
  v21 = &v22;
  v10 = v7;
  v20 = v10;
  v11 = [v4 loadObjectOfClass:v9 completionHandler:v19];
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [v23[5] absoluteString];
  v13 = v12;
  if (!v12 || ![v12 length])
  {
    v16 = 0;
    goto LABEL_9;
  }

  v14 = v32;
  v15 = v32[5];
  if (!v15)
  {
    goto LABEL_6;
  }

  if (![v15 length])
  {
    v14 = v32;
LABEL_6:
    objc_storeStrong(v14 + 5, v13);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NoteContentLayer_processMapAttachmentItemProvider___block_invoke_3;
  block[3] = &unk_1E846AC88;
  block[4] = self;
  block[5] = &v22;
  block[6] = &v31;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v16 = 1;
LABEL_9:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

void __53__NoteContentLayer_processMapAttachmentItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __53__NoteContentLayer_processMapAttachmentItemProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __53__NoteContentLayer_processMapAttachmentItemProvider___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) noteHTMLEditorView];
  [v2 insertLinkWithURL:*(*(*(a1 + 40) + 8) + 40) title:*(*(*(a1 + 48) + 8) + 40)];
}

- (NoteContentLayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NoteContentLayerAttachmentPresentationDelegate)attachmentPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentPresentationDelegate);

  return WeakRetained;
}

void __51__NoteContentLayer_processAttachmentItemProviders___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "Error loading data for pasted attachment (%@) : uti %@", &v4, 0x16u);
}

@end