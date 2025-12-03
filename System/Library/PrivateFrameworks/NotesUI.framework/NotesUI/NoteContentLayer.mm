@interface NoteContentLayer
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canInsertImagesInNoteHTMLEditorView:(id)view;
- (BOOL)canResignFirstResponder;
- (BOOL)contentContainsValuableContent;
- (BOOL)isEditable;
- (BOOL)isFirstResponder;
- (BOOL)isNoteHTMLEditorViewVisible:(id)visible;
- (BOOL)isNoteManagedForNoteHTMLEditorView:(id)view;
- (BOOL)noteHTMLEditorView:(id)view acceptContentsFromPasteboard:(id)pasteboard;
- (BOOL)noteHTMLEditorView:(id)view canAddAttachmentItemProviders:(id)providers;
- (BOOL)noteHTMLEditorViewShouldBeginEditing:(id)editing isUserInitiated:(BOOL)initiated;
- (BOOL)noteHTMLEditorViewShouldPaste:(id)paste;
- (BOOL)processMapAttachmentItemProvider:(id)provider;
- (BOOL)resignFirstResponder;
- (BOOL)shouldRenderAsAttachment:(id)attachment;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CGPoint)contentOffset;
- (CGRect)rectForDOMNode:(id)node;
- (ICTextBackgroundView)backgroundView;
- (NSString)title;
- (NoteContentLayer)initWithFrame:(CGRect)frame;
- (NoteContentLayer)initWithFrame:(CGRect)frame forPreview:(BOOL)preview;
- (NoteContentLayerAttachmentPresentationDelegate)attachmentPresentationDelegate;
- (NoteContentLayerDelegate)delegate;
- (NoteHTMLEditorView)noteHTMLEditorView;
- (UILabel)dateLabel;
- (id)contentAsPlainText:(BOOL)text;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyCommands;
- (id)noteHTMLEditorView:(id)view attachmentPresentationForContentID:(id)d;
- (id)noteHTMLEditorView:(id)view createAttachmentPresentationWithFileWrapper:(id)wrapper mimeType:(id)type;
- (id)noteHTMLEditorView:(id)view fileURLForAttachmentWithContentID:(id)d;
- (id)noteHTMLEditorView:(id)view updateAttachments:(id)attachments;
- (id)readerDelegateInNoteHTMLEditorView:(id)view;
- (id)viewPrintFormatter;
- (id)webArchive;
- (void)chosenUTI:(id *)i andChosenMIMEType:(id *)type forItemProvider:(id)provider;
- (void)copyNoteHTMLToPasteboard;
- (void)createLayout;
- (void)dealloc;
- (void)flashScrollIndicators;
- (void)getRectForSelectionWithCompletion:(id)completion;
- (void)insertImageInNoteHTMLEditorView:(id)view;
- (void)noteHTMLEditorView:(id)view didAddAttachmentForMimeType:(id)type filename:(id)filename data:(id)data;
- (void)noteHTMLEditorView:(id)view didInvokeFormattingCalloutOption:(int64_t)option;
- (void)noteHTMLEditorView:(id)view didInvokeStyleFormattingOption:(int64_t)option;
- (void)noteHTMLEditorView:(id)view openURL:(id)l;
- (void)noteHTMLEditorView:(id)view showShareSheetForAttachment:(id)attachment atPoint:(CGPoint)point;
- (void)noteHTMLEditorViewDidBeginEditing:(id)editing;
- (void)noteHTMLEditorViewDidChange:(id)change;
- (void)noteHTMLEditorViewDidEndEditing:(id)editing;
- (void)noteHTMLEditorViewNeedsContentReload:(id)reload;
- (void)noteHTMLEditorViewWillChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)processAttachmentItemProviders:(id)providers;
- (void)registerForTraitChanges;
- (void)replaceSelectionWithAttachmentPresentation:(id)presentation;
- (void)scrollSelectionToVisible:(BOOL)visible;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)setContent:(id)content isPlainText:(BOOL)text attachments:(id)attachments;
- (void)setContentOffset:(CGPoint)offset;
- (void)setEditable:(BOOL)editable;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)setSelectionToStart;
- (void)setTimestampDate:(id)date;
- (void)updateContentInsets;
- (void)updateObscuredInsets;
@end

@implementation NoteContentLayer

- (NoteContentLayer)initWithFrame:(CGRect)frame forPreview:(BOOL)preview
{
  v11.receiver = self;
  v11.super_class = NoteContentLayer;
  v5 = [(NoteContentLayer *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_forPreview = preview;
    [(NoteContentLayer *)v5 setPreservesSuperviewLayoutMargins:1];
    [(NoteContentLayer *)v6 createLayout];
    noteHTMLEditorView = [(NoteContentLayer *)v6 noteHTMLEditorView];
    webView = [noteHTMLEditorView webView];
    scrollView = [webView scrollView];
    [scrollView ic_addObserver:v6 forKeyPath:@"contentSize" context:compoundliteral];

    [(NoteContentLayer *)v6 updateContentInsets];
  }

  return v6;
}

- (NoteContentLayer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  shouldMakeUIForDefaultPNG = [MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG];

  return [(NoteContentLayer *)self initWithFrame:shouldMakeUIForDefaultPNG forPreview:x, y, width, height];
}

- (void)dealloc
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView ic_removeObserver:self forKeyPath:@"contentSize" context:compoundliteral];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  webView2 = [(NoteHTMLEditorView *)self->_noteHTMLEditorView webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 setDelegate:0];

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
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  superview = [noteHTMLEditorView superview];

  if (!superview)
  {
    noteHTMLEditorView2 = [(NoteContentLayer *)self noteHTMLEditorView];
    [(NoteContentLayer *)self addSubview:noteHTMLEditorView2];

    noteHTMLEditorView3 = [(NoteContentLayer *)self noteHTMLEditorView];
    [noteHTMLEditorView3 ic_addConstraintsToFillSuperview];
  }

  isForPreview = [(NoteContentLayer *)self isForPreview];
  v8 = 0x1E69DC000;
  if (!isForPreview)
  {
    noteHTMLEditorView4 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView = [noteHTMLEditorView4 webView];
    scrollView = [webView scrollView];
    backgroundView = [(NoteContentLayer *)self backgroundView];
    [scrollView insertSubview:backgroundView atIndex:0];

    noteHTMLEditorView5 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView2 = [noteHTMLEditorView5 webView];
    scrollView2 = [webView2 scrollView];
    dateLabel = [(NoteContentLayer *)self dateLabel];
    [scrollView2 addSubview:dateLabel];

    backgroundView2 = [(NoteContentLayer *)self backgroundView];
    leadingAnchor = [backgroundView2 leadingAnchor];
    noteHTMLEditorView6 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView3 = [noteHTMLEditorView6 webView];
    scrollView3 = [webView3 scrollView];
    leadingAnchor2 = [scrollView3 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v62[0] = v48;
    backgroundView3 = [(NoteContentLayer *)self backgroundView];
    topAnchor = [backgroundView3 topAnchor];
    noteHTMLEditorView7 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView4 = [noteHTMLEditorView7 webView];
    scrollView4 = [webView4 scrollView];
    topAnchor2 = [scrollView4 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v62[1] = v41;
    backgroundView4 = [(NoteContentLayer *)self backgroundView];
    widthAnchor = [backgroundView4 widthAnchor];
    noteHTMLEditorView8 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView5 = [noteHTMLEditorView8 webView];
    scrollView5 = [webView5 scrollView];
    widthAnchor2 = [scrollView5 widthAnchor];
    v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v62[2] = v22;
    backgroundView5 = [(NoteContentLayer *)self backgroundView];
    heightAnchor = [backgroundView5 heightAnchor];
    [(NoteContentLayer *)self bounds];
    v26 = [heightAnchor constraintEqualToConstant:v25 + v25];
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

    dateLabel2 = [(NoteContentLayer *)self dateLabel];
    centerXAnchor = [dateLabel2 centerXAnchor];
    noteHTMLEditorView9 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView6 = [noteHTMLEditorView9 webView];
    scrollView6 = [webView6 scrollView];
    centerXAnchor2 = [scrollView6 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[0] = v30;
    dateLabel3 = [(NoteContentLayer *)self dateLabel];
    firstBaselineAnchor = [dateLabel3 firstBaselineAnchor];
    noteHTMLEditorView10 = [(NoteContentLayer *)self noteHTMLEditorView];
    webView7 = [noteHTMLEditorView10 webView];
    scrollView7 = [webView7 scrollView];
    topAnchor3 = [scrollView7 topAnchor];
    v37 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v29];
    v61[1] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    [(NoteContentLayer *)self addConstraints:v38];

    v8 = 0x1E69DC000uLL;
  }

  if ([*(v8 + 2360) ic_isVision])
  {
    ic_noteEditorBackgroundColor = [MEMORY[0x1E69DC888] ic_noteEditorBackgroundColor];
    [(NoteContentLayer *)self setBackgroundColor:ic_noteEditorBackgroundColor];
  }
}

- (void)updateContentInsets
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  dateLabel = [(NoteContentLayer *)self dateLabel];
  font = [dateLabel font];
  [font lineHeight];
  v15 = v14;

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v15 = v15 + 12.0;
  }

  noteHTMLEditorView2 = [(NoteContentLayer *)self noteHTMLEditorView];
  webView2 = [noteHTMLEditorView2 webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 setContentInset:{v15, v7, v9, v11}];
}

- (void)updateObscuredInsets
{
  [(NoteContentLayer *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  [webView _setObscuredInsets:{v4, v6, v8, v10}];
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
    webView = [(NoteHTMLEditorView *)self->_noteHTMLEditorView webView];
    scrollView = [webView scrollView];
    [scrollView setAlwaysBounceVertical:1];

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
    timestampDate = [(NoteContentLayer *)self timestampDate];
    userFriendlyStringWithTime = [timestampDate userFriendlyStringWithTime];
    [(UILabel *)self->_dateLabel setText:userFriendlyStringWithTime];

    ic_noteEditorSecondaryLabelColor = [MEMORY[0x1E69DC888] ic_noteEditorSecondaryLabelColor];
    [(UILabel *)self->_dateLabel setTextColor:ic_noteEditorSecondaryLabelColor];

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)self->_dateLabel setFont:v9];

    [(UILabel *)self->_dateLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_dateLabel _accessibilitySetIsSpeakThisElement:0];
    dateLabel = self->_dateLabel;
  }

  return dateLabel;
}

- (void)setTimestampDate:(id)date
{
  objc_storeStrong(&self->_timestampDate, date);
  timestampDate = [(NoteContentLayer *)self timestampDate];
  userFriendlyStringWithTime = [timestampDate userFriendlyStringWithTime];
  dateLabel = [(NoteContentLayer *)self dateLabel];
  [dateLabel setText:userFriendlyStringWithTime];
}

- (void)setContent:(id)content isPlainText:(BOOL)text attachments:(id)attachments
{
  textCopy = text;
  attachmentsCopy = attachments;
  contentCopy = content;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  v10 = noteHTMLEditorView;
  if (textCopy)
  {
    [noteHTMLEditorView setText:contentCopy];
  }

  else
  {
    [noteHTMLEditorView setHtmlString:contentCopy attachments:attachmentsCopy];
  }
}

- (BOOL)isEditable
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  isEditable = [noteHTMLEditorView isEditable];

  return isEditable;
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  [noteHTMLEditorView setEditable:editableCopy];
}

- (id)contentAsPlainText:(BOOL)text
{
  textCopy = text;
  if ([(NoteContentLayer *)self contentContainsValuableContent])
  {
    noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
    v6 = noteHTMLEditorView;
    if (textCopy)
    {
      [noteHTMLEditorView text];
    }

    else
    {
      [noteHTMLEditorView htmlString];
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
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  title = [noteHTMLEditorView title];

  return title;
}

- (BOOL)contentContainsValuableContent
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  title = [noteHTMLEditorView title];
  if ([title length])
  {
    hasAttachments = 1;
  }

  else
  {
    noteHTMLEditorView2 = [(NoteContentLayer *)self noteHTMLEditorView];
    hasAttachments = [noteHTMLEditorView2 hasAttachments];
  }

  return hasAttachments;
}

- (void)flashScrollIndicators
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView flashScrollIndicators];
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView setScrollIndicatorInsets:{top, left, bottom, right}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self willHitTestWithEvent:eventCopy];

  v11.receiver = self;
  v11.super_class = NoteContentLayer;
  v9 = [(NoteContentLayer *)&v11 hitTest:eventCopy withEvent:x, y];

  return v9;
}

- (BOOL)canBecomeFirstResponder
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  canBecomeFirstResponder = [noteHTMLEditorView canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  canResignFirstResponder = [noteHTMLEditorView canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  becomeFirstResponder = [noteHTMLEditorView becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  resignFirstResponder = [noteHTMLEditorView resignFirstResponder];

  return resignFirstResponder;
}

- (BOOL)isFirstResponder
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  isFirstResponder = [noteHTMLEditorView isFirstResponder];

  return isFirstResponder;
}

- (CGPoint)contentOffset
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView layoutIfNeeded];

  noteHTMLEditorView2 = [(NoteContentLayer *)self noteHTMLEditorView];
  webView2 = [noteHTMLEditorView2 webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 setContentOffset:{x, y}];
}

- (void)getRectForSelectionWithCompletion:(id)completion
{
  completionCopy = completion;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__NoteContentLayer_getRectForSelectionWithCompletion___block_invoke;
  v7[3] = &unk_1E846ABC0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [noteHTMLEditorView getRectForSelectionWithCompletion:v7];
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

- (CGRect)rectForDOMNode:(id)node
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

- (void)replaceSelectionWithAttachmentPresentation:(id)presentation
{
  presentationCopy = presentation;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  [noteHTMLEditorView replaceSelectionWithAttachmentPresentation:presentationCopy];
}

- (id)webArchive
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webArchive = [noteHTMLEditorView webArchive];

  return webArchive;
}

- (void)copyNoteHTMLToPasteboard
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  [noteHTMLEditorView copyNoteHTMLToPasteboard];
}

- (id)viewPrintFormatter
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  viewPrintFormatter = [noteHTMLEditorView viewPrintFormatter];

  return viewPrintFormatter;
}

- (void)setSelectionToStart
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  [noteHTMLEditorView setSelectionToStart];
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView scrollRectToVisible:animatedCopy animated:{0.0, 0.0, 1.0, 1.0}];
}

- (void)scrollSelectionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  [noteHTMLEditorView scrollSelectionToVisible:visibleCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([(NoteContentLayer *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/iOS/EmbeddedMobileNotes/NoteContentLayer.m"]& 1) != 0)
  {
    v13 = [(NoteContentLayer *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == compoundliteral && (v13 & 1) == 0)
    {
      noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
      webView = [noteHTMLEditorView webView];
      scrollView = [webView scrollView];
      v17 = scrollView;
      if (scrollView == objectCopy)
      {
        v18 = [pathCopy isEqualToString:@"contentSize"];

        if (v18)
        {
          noteHTMLEditorView2 = [(NoteContentLayer *)self noteHTMLEditorView];
          webView2 = [noteHTMLEditorView2 webView];
          scrollView2 = [webView2 scrollView];
          [scrollView2 contentSize];
          v23 = v22;

          noteHTMLEditorView3 = [(NoteContentLayer *)self noteHTMLEditorView];
          webView3 = [noteHTMLEditorView3 webView];
          scrollView3 = [webView3 scrollView];
          [scrollView3 bounds];
          v28 = v27;

          if (v23 < v28)
          {
            v23 = v28;
          }

          [(NoteContentLayer *)self bounds];
          v30 = v23 + v29;
          backgroundHeightConstraint = [(NoteContentLayer *)self backgroundHeightConstraint];
          [backgroundHeightConstraint setConstant:v30];
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
    [(NoteContentLayer *)&v32 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)registerForTraitChanges
{
  ic_traitsAffectingSize = [MEMORY[0x1E69DD1B8] ic_traitsAffectingSize];
  v3 = [(NoteContentLayer *)self registerForTraitChanges:ic_traitsAffectingSize withAction:sel_updateContentInsets];
}

- (id)keyCommands
{
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  isEditing = [noteHTMLEditorView isEditing];

  if (isEditing)
  {
    if (keyCommands_predicate != -1)
    {
      [NoteContentLayer keyCommands];
    }

    v5 = keyCommands_keyCommands;
    v9.receiver = self;
    v9.super_class = NoteContentLayer;
    keyCommands = [(NoteContentLayer *)&v9 keyCommands];
    v7 = [v5 arrayByAddingObjectsFromArray:keyCommands];
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

- (BOOL)noteHTMLEditorView:(id)view canAddAttachmentItemProviders:(id)providers
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  providersCopy = providers;
  v6 = [providersCopy countByEnumeratingWithState:&v41 objects:v46 count:16];
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
      objc_enumerationMutation(providersCopy);
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
    v17 = providersCopy;
    v18 = [*(v16 + 3136) typeWithIdentifier:v13];
    if (([v18 conformsToType:v32] & 1) == 0)
    {
      break;
    }

    allowsAttachments = [(NoteContentLayer *)self allowsAttachments];

    providersCopy = v17;
    v10 = 0x1E6982000;
    if (!allowsAttachments)
    {
      goto LABEL_19;
    }

LABEL_13:

    if (v7 == ++v11)
    {
      v7 = [providersCopy countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

  providersCopy = v17;
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
  v20 = providersCopy;
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
          delegate = [(NoteContentLayer *)self delegate];
          [delegate showAttachmentsUnsupportedAlertForNoteContentLayer:self];

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

- (id)noteHTMLEditorView:(id)view createAttachmentPresentationWithFileWrapper:(id)wrapper mimeType:(id)type
{
  typeCopy = type;
  wrapperCopy = wrapper;
  delegate = [(NoteContentLayer *)self delegate];
  regularFileContents = [wrapperCopy regularFileContents];
  preferredFilename = [wrapperCopy preferredFilename];

  v12 = [delegate noteContentLayer:self createAttachmentPresentationWithData:regularFileContents mimeType:typeCopy filename:preferredFilename];

  return v12;
}

- (void)noteHTMLEditorView:(id)view didAddAttachmentForMimeType:(id)type filename:(id)filename data:(id)data
{
  dataCopy = data;
  filenameCopy = filename;
  typeCopy = type;
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self didAddAttachmentForMimeType:typeCopy filename:filenameCopy data:dataCopy];
}

- (BOOL)noteHTMLEditorViewShouldBeginEditing:(id)editing isUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  [(NoteContentLayer *)self setNeedsLayout];
  delegate = [(NoteContentLayer *)self delegate];
  if (delegate)
  {
    delegate2 = [(NoteContentLayer *)self delegate];
    v8 = [delegate2 noteContentLayerShouldBeginEditing:self isUserInitiated:initiatedCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)noteHTMLEditorViewDidChange:(id)change
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayerContentDidChange:self updatedTitle:1 fromDrop:0];
}

- (void)noteHTMLEditorViewWillChange:(id)change
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayerContentWillChange:self];
}

- (void)noteHTMLEditorViewDidBeginEditing:(id)editing
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self setEditing:1 animated:1];
}

- (void)noteHTMLEditorViewDidEndEditing:(id)editing
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self setEditing:0 animated:1];

  [(NoteContentLayer *)self setNeedsLayout];
}

- (void)noteHTMLEditorView:(id)view openURL:(id)l
{
  lCopy = l;
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self openURL:lCopy];
}

- (id)noteHTMLEditorView:(id)view fileURLForAttachmentWithContentID:(id)d
{
  dCopy = d;
  attachmentPresentationDelegate = [(NoteContentLayer *)self attachmentPresentationDelegate];
  v7 = [attachmentPresentationDelegate noteContentLayer:self fileURLForAttachmentWithContentID:dCopy];

  return v7;
}

- (id)noteHTMLEditorView:(id)view attachmentPresentationForContentID:(id)d
{
  dCopy = d;
  attachmentPresentationDelegate = [(NoteContentLayer *)self attachmentPresentationDelegate];
  v7 = [attachmentPresentationDelegate noteContentLayer:self attachmentPresentationForContentID:dCopy];

  return v7;
}

- (BOOL)isNoteManagedForNoteHTMLEditorView:(id)view
{
  selfCopy = self;
  delegate = [(NoteContentLayer *)self delegate];
  LOBYTE(selfCopy) = [delegate isNoteManagedForNoteContentLayer:selfCopy];

  return selfCopy;
}

- (void)noteHTMLEditorView:(id)view didInvokeFormattingCalloutOption:(int64_t)option
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self didInvokeFormattingCalloutOption:option];
}

- (void)noteHTMLEditorView:(id)view didInvokeStyleFormattingOption:(int64_t)option
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self didInvokeStyleFormattingOption:option];
}

- (id)noteHTMLEditorView:(id)view updateAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  delegate = [(NoteContentLayer *)self delegate];
  v7 = [delegate noteContentLayer:self updateAttachments:attachmentsCopy];

  return v7;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  [(NoteContentLayer *)self setUpdatedTitleRange:location <= *MEMORY[0x1E69B7120]];
  if (-[NoteContentLayer tracksMaximumContentLength](self, "tracksMaximumContentLength") && [textCopy length] > length)
  {
    v9 = [textCopy substringFromIndex:length];
    delegate = [(NoteContentLayer *)self delegate];
    v11 = [delegate noteContentLayer:self acceptStringIncreasingContentLength:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)canInsertImagesInNoteHTMLEditorView:(id)view
{
  selfCopy = self;
  delegate = [(NoteContentLayer *)self delegate];
  LOBYTE(selfCopy) = [delegate canInsertImagesInNoteContentLayer:selfCopy];

  return selfCopy;
}

- (void)insertImageInNoteHTMLEditorView:(id)view
{
  delegate = [(NoteContentLayer *)self delegate];
  [delegate insertImageInNoteContentLayer:self];
}

- (void)noteHTMLEditorViewNeedsContentReload:(id)reload
{
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  dateLabel = self->_dateLabel;
  self->_dateLabel = 0;

  [(NoteContentLayer *)self createLayout];
  noteHTMLEditorView = [(NoteContentLayer *)self noteHTMLEditorView];
  [noteHTMLEditorView setNeedsDisplay];

  [(NoteContentLayer *)self setNeedsLayout];
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayerNeedsContentReload:self];
}

- (BOOL)noteHTMLEditorView:(id)view acceptContentsFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  delegate = [(NoteContentLayer *)self delegate];
  LOBYTE(self) = [delegate noteContentLayer:self acceptContentsFromPasteboard:pasteboardCopy];

  return self;
}

- (id)readerDelegateInNoteHTMLEditorView:(id)view
{
  delegate = [(NoteContentLayer *)self delegate];
  v5 = [delegate readerDelegateForNoteContentLayer:self];

  return v5;
}

- (BOOL)shouldRenderAsAttachment:(id)attachment
{
  v3 = *MEMORY[0x1E6983020];
  attachmentCopy = attachment;
  identifier = [v3 identifier];
  v6 = [attachmentCopy hasItemConformingToTypeIdentifier:identifier];

  preferredPresentationStyle = [attachmentCopy preferredPresentationStyle];
  return preferredPresentationStyle == 2 || (v6 & 1) == 0;
}

- (void)noteHTMLEditorView:(id)view showShareSheetForAttachment:(id)attachment atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  attachmentCopy = attachment;
  delegate = [(NoteContentLayer *)self delegate];
  [delegate noteContentLayer:self showShareSheetForAttachment:attachmentCopy atPoint:{x, y}];
}

- (BOOL)noteHTMLEditorViewShouldPaste:(id)paste
{
  v22 = *MEMORY[0x1E69E9840];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  itemProviders = [generalPasteboard itemProviders];

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = itemProviders;
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
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    if ([(NoteContentLayer *)self allowsAttachments])
    {
      [(NoteContentLayer *)self processAttachmentItemProviders:array];
      v13 = [array count];
      v14 = v13 != [v7 count];
    }

    else
    {
      delegate = [(NoteContentLayer *)self delegate];
      [delegate showAttachmentsUnsupportedAlertForNoteContentLayer:self];

      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)isNoteHTMLEditorViewVisible:(id)visible
{
  selfCopy = self;
  delegate = [(NoteContentLayer *)self delegate];
  LOBYTE(selfCopy) = [delegate isNoteContentLayerVisible:selfCopy];

  return selfCopy;
}

- (void)chosenUTI:(id *)i andChosenMIMEType:(id *)type forItemProvider:(id)provider
{
  iCopy = i;
  typeCopy = type;
  v38[2] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  identifier = [*MEMORY[0x1E6982F98] identifier];
  v38[0] = identifier;
  identifier2 = [*MEMORY[0x1E6982E18] identifier];
  v38[1] = identifier2;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

  v9 = MEMORY[0x1E695DF70];
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v11 = [v9 arrayWithArray:registeredTypeIdentifiers];

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
      v19 = [MEMORY[0x1E6982C40] typeWithIdentifier:{v18, iCopy, typeCopy, v31}];
      preferredMIMEType = [v19 preferredMIMEType];

      if (preferredMIMEType)
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

    firstObject2 = v18;

    v22 = iCopy;
    v21 = typeCopy;
    if (firstObject2)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:

    preferredMIMEType = 0;
    v22 = iCopy;
    v21 = typeCopy;
  }

  firstObject = [v13 firstObject];
  v25 = [v12 containsObject:firstObject];

  if (v25)
  {
    firstObject2 = [v13 firstObject];
LABEL_13:
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    registeredTypeIdentifiers2 = [providerCopy registeredTypeIdentifiers];
    firstObject2 = [registeredTypeIdentifiers2 firstObject];

    if (v22)
    {
LABEL_14:
      v26 = firstObject2;
      *v22 = firstObject2;
    }
  }

  if (v21)
  {
    v27 = preferredMIMEType;
    *v21 = preferredMIMEType;
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

- (void)processAttachmentItemProviders:(id)providers
{
  v32 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  objc_initWeak(&location, self);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = providersCopy;
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
        registeredTypeIdentifiers = [v9 registeredTypeIdentifiers];
        v11 = [registeredTypeIdentifiers containsObject:v7];

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
          selfCopy = self;
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

- (BOOL)processMapAttachmentItemProvider:(id)provider
{
  providerCopy = provider;
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
  v8 = [providerCopy loadObjectOfClass:v6 completionHandler:v28];
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
  v11 = [providerCopy loadObjectOfClass:v9 completionHandler:v19];
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  absoluteString = [v23[5] absoluteString];
  v13 = absoluteString;
  if (!absoluteString || ![absoluteString length])
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