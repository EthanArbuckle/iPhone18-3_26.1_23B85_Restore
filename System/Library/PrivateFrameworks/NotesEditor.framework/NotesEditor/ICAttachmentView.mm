@interface ICAttachmentView
- (BOOL)_accessibilityTextOperationAction:(id)action;
- (BOOL)accessibilityActivate;
- (BOOL)alertAboutUnsupportedAttachmentIfNecessary;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)icaxIsTextRangeSelected;
- (BOOL)insideSystemPaper;
- (BOOL)showRecoverNoteAlertIfNecessary;
- (BOOL)wantsContextMenuPreview;
- (ICAttachmentView)initWithAttachment:(id)attachment textContainer:(id)container actionWindow:(id)window;
- (ICAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
- (ICAttachmentViewDelegate)delegate;
- (ICBaseTextView)textView;
- (ICEditingTextView)editingTextView;
- (NSArray)supportedRotorTypes;
- (NSString)icaxAttachmentViewTypeDescription;
- (NSString)icaxHintString;
- (NSTextContainer)textContainer;
- (UIWindow)actionWindow;
- (_NSRange)textRangeInNote;
- (id)_accessibilityTextOperations;
- (id)_icaxParentTextView;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)makeAudioMenu;
- (id)makeMainMenu;
- (id)makePlaybackMenu;
- (id)makeRecordingMenu;
- (id)shareFeedbackMenu;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)dataOwnerForAttachment;
- (void)_copy;
- (void)appendRecording:(id)recording;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)copyWithCompletionBlock:(id)block;
- (void)createImage:(id)image;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)didMoveToWindow;
- (void)didTapAttachment:(id)attachment;
- (void)editAttachmentWithBlock:(id)block;
- (void)icaxSelectAttachmentTextRange:(BOOL)range;
- (void)notifyDidMoveToWindow;
- (void)openAttachment;
- (void)playFromBeginning:(id)beginning;
- (void)removeFromSuperview;
- (void)rename:(id)rename;
- (void)renameAttachmentToUpdatedTitle:(id)title;
- (void)reportAConcern:(id)concern withPositiveFeedback:(BOOL)feedback;
- (void)requestEditorFirstResponder;
- (void)respondToPanGesture:(id)gesture;
- (void)respondToTapGesture:(id)gesture;
- (void)saveToFiles:(id)files;
- (void)setupEventHandling;
- (void)share:(id)share;
- (void)shareWebLink:(id)link;
- (void)updateFirstResponder;
- (void)updatePreferredAttachmentViewSize:(signed __int16)size;
- (void)viewSummary:(id)summary;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation ICAttachmentView

- (void)setupEventHandling
{
  if ([(ICAttachmentView *)self shouldAddTapGesture])
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_respondToTapGesture_];
    [v3 setDelegate:self];
    [v3 setNumberOfTapsRequired:1];
    [(ICAttachmentView *)self addGestureRecognizer:v3];
  }

  if ([(ICAttachmentView *)self shouldAddMenuLongPressGesture])
  {
    contextInteraction = [(ICAttachmentView *)self contextInteraction];

    if (!contextInteraction)
    {
      v5 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
      [(ICAttachmentView *)self setContextInteraction:v5];

      contextInteraction2 = [(ICAttachmentView *)self contextInteraction];
      [(ICAttachmentView *)self addInteraction:contextInteraction2];

      v7 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_respondToLongPressGesture_];
      [(ICAttachmentView *)self addGestureRecognizer:v7];
    }
  }

  if ([(ICAttachmentView *)self shouldAddPanGesture])
  {
    v8 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_respondToPanGesture_];
    [v8 setMaximumNumberOfTouches:1];
    [v8 setDelegate:self];
    [(ICAttachmentView *)self addGestureRecognizer:v8];
    [(ICAttachmentView *)self setPanGestureRecognizer:v8];
  }

  v9 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
  [(ICAttachmentView *)self addInteraction:v9];
}

- (NSString)icaxHintString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap to expand" value:&stru_282757698 table:0];

  return v3;
}

- (BOOL)icaxIsTextRangeSelected
{
  textRangeInNote = [(ICAttachmentView *)self textRangeInNote];
  v5 = v4;
  _icaxParentTextView = [(ICAttachmentView *)self _icaxParentTextView];
  v9 = textRangeInNote == [_icaxParentTextView selectedRange] && v5 == v7;

  return v9;
}

- (NSArray)supportedRotorTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"ICAccessibilityRotorTypeAttachments";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (_NSRange)textRangeInNote
{
  attachment = [(ICAttachmentView *)self attachment];
  note = [attachment note];
  attachment2 = [(ICAttachmentView *)self attachment];
  v6 = [note rangeForAttachment:attachment2];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICAttachmentView;
  accessibilityContainer = [(ICAttachmentView *)&v7 accessibilityContainer];
  v3 = accessibilityContainer;
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      accessibilityContainer2 = [v4 accessibilityContainer];

      v4 = accessibilityContainer2;
      if (!accessibilityContainer2)
      {
        goto LABEL_8;
      }
    }

    v4 = v4;

    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v3;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityHint
{
  attachment = [(ICAttachmentView *)self attachment];
  note = [attachment note];
  if (note)
  {
    v5 = note;
    attachment2 = [(ICAttachmentView *)self attachment];
    note2 = [attachment2 note];
    isEditable = [note2 isEditable];

    if (isEditable)
    {
      icaxHintString = [(ICAttachmentView *)self icaxHintString];
      goto LABEL_6;
    }
  }

  else
  {
  }

  icaxHintString = 0;
LABEL_6:

  return icaxHintString;
}

- (id)accessibilityValue
{
  attachment = [(ICAttachmentView *)self attachment];
  title = [attachment title];

  return title;
}

- (BOOL)accessibilityActivate
{
  _icaxParentTextView = [(ICAttachmentView *)self _icaxParentTextView];
  attachment = [(ICAttachmentView *)self attachment];
  note = [attachment note];
  if (!note)
  {
    goto LABEL_4;
  }

  v6 = note;
  attachment2 = [(ICAttachmentView *)self attachment];
  note2 = [attachment2 note];
  if ([note2 isEditable])
  {

LABEL_4:
    goto LABEL_5;
  }

  attachment3 = [(ICAttachmentView *)self attachment];
  note3 = [attachment3 note];
  isDeletedOrInTrash = [note3 isDeletedOrInTrash];

  if (isDeletedOrInTrash)
  {
    editorController = [_icaxParentTextView editorController];
    [editorController showRecoverNoteAlert];
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if (([_icaxParentTextView isFirstResponder] & 1) == 0 && !-[ICAttachmentView accessibilityElementIsFocused](self, "accessibilityElementIsFocused"))
  {
    editorController = [(ICAttachmentView *)self attachment];
    [_icaxParentTextView icaxBeginEditingAtAttachment:editorController];
    goto LABEL_11;
  }

  [(ICAttachmentView *)self icaxActivate];
LABEL_12:

  return 1;
}

- (id)_accessibilityTextOperations
{
  array = [MEMORY[0x277CBEB18] array];
  v9.receiver = self;
  v9.super_class = ICAttachmentView;
  _accessibilityTextOperations = [(ICAttachmentView *)&v9 _accessibilityTextOperations];
  [array axSafelyAddObjectsFromArray:_accessibilityTextOperations];

  if ([(ICAttachmentView *)self canPerformAction:sel_share_ withSender:0])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];
    [array addObject:v6];
  }

  v7 = [array copy];

  return v7;
}

- (BOOL)_accessibilityTextOperationAction:(id)action
{
  actionCopy = action;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];
  v7 = [actionCopy isEqualToString:v6];

  if (v7)
  {
    [(ICAttachmentView *)self share:0];
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICAttachmentView;
    v8 = [(ICAttachmentView *)&v10 _accessibilityTextOperationAction:actionCopy];
  }

  return v8;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x277CBEB18] array];
  v11.receiver = self;
  v11.super_class = ICAttachmentView;
  accessibilityCustomActions = [(ICAttachmentView *)&v11 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  if (![(ICAttachmentView *)self icaxIsTextRangeSelected])
  {
    v5 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"Select" value:&stru_282757698 table:0];
    v8 = [v5 initWithName:v7 target:self selector:sel_icaxSelectAttachmentTextRangeAction];

    [array addObject:v8];
  }

  v9 = [array copy];

  return v9;
}

- (id)accessibilityCustomRotors
{
  _icaxParentTextView = [(ICAttachmentView *)self _icaxParentTextView];
  editorController = [_icaxParentTextView editorController];
  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v4 setNoteEditorViewController:editorController];

  v5 = +[ICAccessibilityCustomRotorController sharedInstance];
  sharedTextViewRotors = [v5 sharedTextViewRotors];

  return sharedTextViewRotors;
}

- (id)_icaxParentTextView
{
  superview = [(ICAttachmentView *)self superview];
  if (superview)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
      if (!v2Superview)
      {
        goto LABEL_7;
      }
    }

    objc_opt_class();
    v2Superview = ICDynamicCast();
  }

  else
  {
    v2Superview = 0;
  }

LABEL_7:

  return v2Superview;
}

- (id)accessibilityDragSourceDescriptors
{
  _icaxParentTextView = [(ICAttachmentView *)self _icaxParentTextView];
  accessibilityDragSourceDescriptors = [_icaxParentTextView accessibilityDragSourceDescriptors];

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  _icaxParentTextView = [(ICAttachmentView *)self _icaxParentTextView];
  accessibilityDropPointDescriptors = [_icaxParentTextView accessibilityDropPointDescriptors];

  return accessibilityDropPointDescriptors;
}

- (void)icaxSelectAttachmentTextRange:(BOOL)range
{
  rangeCopy = range;
  _icaxParentTextView = [(ICAttachmentView *)self _icaxParentTextView];
  editorController = [_icaxParentTextView editorController];
  textRangeInNote = [(ICAttachmentView *)self textRangeInNote];
  v8 = v7;
  _UIAccessibilityBlockPostingOfAllNotifications();
  if (editorController)
  {
    if (([editorController isEditing] & 1) == 0)
    {
      note = [editorController note];
      isEditable = [note isEditable];

      if (isEditable)
      {
        [editorController startEditing];
      }
    }
  }

  [_icaxParentTextView select:_icaxParentTextView];
  [_icaxParentTextView setSelectedRange:{textRangeInNote, v8}];
  [_icaxParentTextView scrollRangeToVisible:{textRangeInNote, v8}];
  _UIAccessibilityUnblockPostingOfAllNotifications();
  if (rangeCopy)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [mainBundle localizedStringForKey:@"Selected %@. Use the actions rotor to start dragging." value:&stru_282757698 table:0];

    v13 = MEMORY[0x277CCACA8];
    accessibilityLabel = [(ICAttachmentView *)self accessibilityLabel];
    v15 = [v13 localizedStringWithFormat:v12, accessibilityLabel];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v15);
  }
}

- (NSString)icaxAttachmentViewTypeDescription
{
  textAttachment = [(ICAttachmentView *)self textAttachment];
  supportsMultiplePresentationSizes = [textAttachment supportsMultiplePresentationSizes];

  if (supportsMultiplePresentationSizes && (-[ICAttachmentView attachment](self, "attachment"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 preferredViewSize], v5, v6 <= 2))
  {
    v7 = off_2781AF760[v6];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:v7 value:&stru_282757698 table:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)insideSystemPaper
{
  objc_opt_class();
  textContainer = [(ICAttachmentView *)self textContainer];
  v4 = ICDynamicCast();

  LOBYTE(textContainer) = [v4 insideSystemPaper];
  return textContainer;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAttachmentView;
  [(ICAttachmentView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = ICAttachmentView;
  [(ICAttachmentView *)&v4 didMoveToWindow];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_notifyDidMoveToWindow object:0];
  v5[0] = *MEMORY[0x277CBE738];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(ICAttachmentView *)self performSelector:sel_notifyDidMoveToWindow withObject:0 afterDelay:v3 inModes:0.0];
}

- (void)notifyDidMoveToWindow
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICAttachmentViewDidMoveToWindowNotification" object:self];
}

- (ICAttachmentView)initWithAttachment:(id)attachment textContainer:(id)container actionWindow:(id)window
{
  windowCopy = window;
  v10 = MEMORY[0x277D36950];
  containerCopy = container;
  v12 = [v10 textAttachmentWithAttachment:attachment];
  v13 = [(ICAttachmentView *)self initWithFrame:v12 textAttachment:containerCopy textContainer:0 forManualRendering:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  if (v13)
  {
    objc_storeStrong(&v13->_actionWindow, window);
  }

  return v13;
}

- (ICAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attachmentCopy = attachment;
  containerCopy = container;
  v20.receiver = self;
  v20.super_class = ICAttachmentView;
  height = [(ICAttachmentView *)&v20 initWithFrame:x, y, width, height];
  v16 = height;
  if (height)
  {
    objc_storeWeak(&height->_textContainer, containerCopy);
    v16->_finishedInit = 1;
    v16->_forManualRendering = rendering;
    attachment = [attachmentCopy attachment];
    -[ICAttachmentView sharedInit:](v16, "sharedInit:", [attachment preferredViewSize] == 1);

    [(ICAttachmentView *)v16 setupEventHandling];
    [(ICAttachmentView *)v16 setupConstraints];
    [(ICAttachmentView *)v16 setTextAttachment:attachmentCopy];
    attachment2 = [attachmentCopy attachment];
    [(ICAttachmentView *)v16 setAttachment:attachment2];

    if (objc_opt_respondsToSelector())
    {
      [(ICAttachmentView *)v16 app_updateViewAnnotation];
    }
  }

  return v16;
}

- (UIWindow)actionWindow
{
  actionWindow = self->_actionWindow;
  if (actionWindow)
  {
    window = actionWindow;
  }

  else
  {
    window = [(ICAttachmentView *)self window];
  }

  return window;
}

- (ICBaseTextView)textView
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    textContainer = [(ICAttachmentView *)self textContainer];
    superview = ICCheckedDynamicCast();
    [superview tk2TextView];
  }

  else
  {
    objc_opt_class();
    textContainer = [(ICAttachmentView *)self superview];
    superview = [textContainer superview];
    ICDynamicCast();
  }
  v5 = ;

  return v5;
}

- (ICEditingTextView)editingTextView
{
  objc_opt_class();
  textView = [(ICAttachmentView *)self textView];
  v4 = ICDynamicCast();

  return v4;
}

- (void)didTapAttachment:(id)attachment
{
  if ([(ICAttachmentView *)self alertAboutUnsupportedAttachmentIfNecessary])
  {
    return;
  }

  attachment = [(ICAttachmentView *)self attachment];
  if ([attachment hasVisualFallbackMedia])
  {

LABEL_4:
    attachment2 = [(ICAttachmentView *)self attachment];
    media = [attachment2 media];

    if ([media isPasswordProtected])
    {
      v6 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__ICAttachmentView_didTapAttachment___block_invoke;
      block[3] = &unk_2781ABCF8;
      block[4] = self;
      dispatch_async(v6, block);
    }

    else
    {
      [(ICAttachmentView *)self openAttachment];
    }

    return;
  }

  attachment3 = [(ICAttachmentView *)self attachment];
  attachmentModel = [attachment3 attachmentModel];
  if ([attachmentModel isReadyToPresent])
  {
    attachment4 = [(ICAttachmentView *)self attachment];
    isUnsupported = [attachment4 isUnsupported];

    if (isUnsupported)
    {
      return;
    }

    goto LABEL_4;
  }
}

void __37__ICAttachmentView_didTapAttachment___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICAttachmentView_didTapAttachment___block_invoke_2;
  block[3] = &unk_2781ABCF8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)alertAboutUnsupportedAttachmentIfNecessary
{
  attachment = [(ICAttachmentView *)self attachment];
  isUnsupported = [attachment isUnsupported];
  if (!isUnsupported)
  {
LABEL_10:

    return isUnsupported;
  }

  attachment2 = [(ICAttachmentView *)self attachment];
  if ([attachment2 isPasswordProtected])
  {

LABEL_6:
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      [mainBundle localizedStringForKey:@"iPadOS" value:&stru_282757698 table:0];
    }

    else
    {
      mainBundle = [MEMORY[0x277D75418] currentDevice];
      [mainBundle systemName];
    }
    attachment = ;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [mainBundle2 localizedStringForKey:@"Unsupported Attachment" value:&stru_282757698 table:0];

    v13 = MEMORY[0x277CCACA8];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle3 localizedStringForKey:@"Editing this attachment is not supported on this device. To edit it value:upgrade to the latest version of %@." table:{&stru_282757698, 0}];
    v16 = [v13 localizedStringWithFormat:v15, attachment];

    v17 = MEMORY[0x277D75110];
    window = [(ICAttachmentView *)self window];
    rootViewController = [window rootViewController];
    [v17 ic_showAlertWithTitle:v12 message:v16 viewController:rootViewController];

    goto LABEL_10;
  }

  attachment3 = [(ICAttachmentView *)self attachment];
  hasVisualFallbackMedia = [attachment3 hasVisualFallbackMedia];

  if ((hasVisualFallbackMedia & 1) == 0)
  {
    goto LABEL_6;
  }

  LOBYTE(isUnsupported) = 0;
  return isUnsupported;
}

- (void)openAttachment
{
  delegate = [(ICAttachmentView *)self delegate];

  if (delegate)
  {
    delegate2 = [(ICAttachmentView *)self delegate];
    attachment = [(ICAttachmentView *)self attachment];
    [delegate2 attachmentView:self shouldPresentAttachment:attachment];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, v5, OS_LOG_TYPE_INFO, "Trying to present attachment for attachment view without a delegate", buf, 2u);
    }
  }
}

- (void)updatePreferredAttachmentViewSize:(signed __int16)size
{
  sizeCopy = size;
  attachment = [(ICAttachmentView *)self attachment];
  [attachment setPreferredViewSize:sizeCopy];

  attachment2 = [(ICAttachmentView *)self attachment];
  managedObjectContext = [attachment2 managedObjectContext];
  [managedObjectContext ic_save];
}

- (BOOL)showRecoverNoteAlertIfNecessary
{
  attachment = [(ICAttachmentView *)self attachment];
  note = [attachment note];

  if (note && ([note isEditable] & 1) == 0 && objc_msgSend(note, "isDeletedOrInTrash"))
  {
    textView = [(ICAttachmentView *)self textView];
    editorContainer = [textView editorContainer];
    [editorContainer showRecoverNoteAlert];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)requestEditorFirstResponder
{
  if ([(ICAttachmentView *)self isFirstResponder])
  {

    [(ICAttachmentView *)self updateFirstResponder];
  }
}

- (void)updateFirstResponder
{
  textView = [(ICAttachmentView *)self textView];
  editorContainer = [textView editorContainer];
  canBecomeFirstResponder = [editorContainer canBecomeFirstResponder];

  if (canBecomeFirstResponder)
  {
    textView2 = [(ICAttachmentView *)self textView];
    editorContainer2 = [textView2 editorContainer];
    [editorContainer2 becomeFirstResponder];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v8.receiver = self;
  v8.super_class = ICAttachmentView;
  [(ICAttachmentView *)&v8 willMoveToSuperview:?];
  if (!superview)
  {
    textView = [(ICAttachmentView *)self textView];
    nextResponderOverride = [textView nextResponderOverride];

    if (nextResponderOverride == self)
    {
      textView2 = [(ICAttachmentView *)self textView];
      [textView2 setNextResponderOverride:0];
    }
  }
}

- (void)playFromBeginning:(id)beginning
{
  attachment = [(ICAttachmentView *)self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType == 4)
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    audioAttachmentEditorCoordinator = [editorController audioAttachmentEditorCoordinator];
    attachment2 = [(ICAttachmentView *)self attachment];
    [audioAttachmentEditorCoordinator playFromBeginning:attachment2];
  }
}

- (void)viewSummary:(id)summary
{
  attachment = [(ICAttachmentView *)self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType == 4)
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    audioAttachmentEditorCoordinator = [editorController audioAttachmentEditorCoordinator];
    attachment2 = [(ICAttachmentView *)self attachment];
    [audioAttachmentEditorCoordinator presentSummaryFor:attachment2];
  }
}

- (void)appendRecording:(id)recording
{
  attachment = [(ICAttachmentView *)self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType == 4)
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    audioAttachmentEditorCoordinator = [editorController audioAttachmentEditorCoordinator];
    attachment2 = [(ICAttachmentView *)self attachment];
    [audioAttachmentEditorCoordinator appendTo:attachment2];
  }
}

- (void)reportAConcern:(id)concern withPositiveFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  attachment = [(ICAttachmentView *)self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType == 4)
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    audioAttachmentEditorCoordinator = [editorController audioAttachmentEditorCoordinator];
    attachment2 = [(ICAttachmentView *)self attachment];
    [audioAttachmentEditorCoordinator presentReportAConcernFor:attachment2 withPositiveFeedback:feedbackCopy];
  }
}

- (void)rename:(id)rename
{
  renameCopy = rename;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D05D48]);
  attachment = [(ICAttachmentView *)self attachment];
  title = [attachment title];
  v8 = [v5 initWithExistingTitle:title];

  actionWindow = [(ICAttachmentView *)self actionWindow];
  rootViewController = [actionWindow rootViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__ICAttachmentView_rename___block_invoke;
  v11[3] = &unk_2781AF878;
  objc_copyWeak(&v12, &location);
  [v8 showFromViewController:rootViewController completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __27__ICAttachmentView_rename___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained renameAttachmentToUpdatedTitle:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateFirstResponder];
}

- (void)renameAttachmentToUpdatedTitle:(id)title
{
  if (title)
  {
    titleCopy = title;
    attachment = [(ICAttachmentView *)self attachment];
    title = [attachment title];

    v6 = [ICDocCamScannedDocumentEditor alloc];
    attachment2 = [(ICAttachmentView *)self attachment];
    v8 = [(ICDocCamScannedDocumentEditor *)v6 initWithGalleryAttachment:attachment2];

    [(ICDocCamScannedDocumentEditor *)v8 updateDocumentTitle:titleCopy isUserDefined:1];
    textView = [(ICAttachmentView *)self textView];
    undoManager = [textView undoManager];
    v11 = [undoManager prepareWithInvocationTarget:self];
    [v11 renameAttachmentToUpdatedTitle:title];

    textView2 = [(ICAttachmentView *)self textView];
    undoManager2 = [textView2 undoManager];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle localizedStringForKey:@"Undo Rename" value:&stru_282757698 table:0];
    [undoManager2 setActionName:v15];
  }
}

- (void)createImage:(id)image
{
  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    [editorController createImage:self];
  }
}

- (void)saveToFiles:(id)files
{
  attachment = [(ICAttachmentView *)self attachment];
  attachmentType = [attachment attachmentType];

  if (attachmentType == 4)
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    audioAttachmentEditorCoordinator = [editorController audioAttachmentEditorCoordinator];
    attachment2 = [(ICAttachmentView *)self attachment];
    [audioAttachmentEditorCoordinator presentExportViewForAttachment:attachment2];
  }
}

- (void)share:(id)share
{
  shareCopy = share;
  attachment = [(ICAttachmentView *)self attachment];
  if ([attachment attachmentType] != 8)
  {
    goto LABEL_8;
  }

  attachment2 = [(ICAttachmentView *)self attachment];
  if ([attachment2 isiTunes])
  {
LABEL_7:

LABEL_8:
LABEL_9:
    delegate = [(ICAttachmentView *)self delegate];
    attachment3 = [(ICAttachmentView *)self attachment];
    [delegate attachmentView:self shouldShareAttachment:attachment3];

    goto LABEL_10;
  }

  attachment4 = [(ICAttachmentView *)self attachment];
  if ([attachment4 isAppStore])
  {
LABEL_6:

    goto LABEL_7;
  }

  attachment5 = [(ICAttachmentView *)self attachment];
  if ([attachment5 isMap])
  {

    goto LABEL_6;
  }

  attachment6 = [(ICAttachmentView *)self attachment];
  isNews = [attachment6 isNews];

  if (isNews)
  {
    goto LABEL_9;
  }

  [(ICAttachmentView *)self shareWebLink:shareCopy];
LABEL_10:
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  attachment = [(ICAttachmentView *)self attachment];
  isUnsupported = [attachment isUnsupported];

  if (isUnsupported)
  {
    if (sel_delete_ != action)
    {
LABEL_3:
      selfCopy = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (sel_cut_ == action || sel_copy_ == action || sel_delete_ == action)
  {
    goto LABEL_12;
  }

  if (sel_share_ == action || sel_rename_ == action)
  {
    if (![(ICAttachmentView *)self canPerformAction:action withSender:senderCopy])
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  textAttachment = [(ICAttachmentView *)self textAttachment];
  supportsMultiplePresentationSizes = [textAttachment supportsMultiplePresentationSizes];

  selfCopy = 0;
  if (supportsMultiplePresentationSizes)
  {
    if (sel_updatePreferredAttachmentViewSize_ == action)
    {
LABEL_12:
      selfCopy = self;
    }
  }

LABEL_13:

  return selfCopy;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  selfCopy = self;
  v7 = [(ICAttachmentView *)self attachment:action];
  isUnsupported = [v7 isUnsupported];
  if (isUnsupported)
  {
    attachment = [(ICAttachmentView *)selfCopy attachment];
    if (([attachment hasFallbackPDF] & 1) == 0)
    {

      goto LABEL_23;
    }
  }

  attachment2 = [(ICAttachmentView *)selfCopy attachment];
  needsInitialFetchFromCloud = [attachment2 needsInitialFetchFromCloud];

  if (!isUnsupported)
  {

    if (!needsInitialFetchFromCloud)
    {
      goto LABEL_7;
    }

LABEL_23:
    if (sel_delete_ != action)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    note = [attachment3 note];
    LOBYTE(selfCopy) = [note isEditable];
    goto LABEL_66;
  }

  if (needsInitialFetchFromCloud)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (sel_playFromBeginning_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    note = [(ICAttachmentView *)selfCopy attachment];
    mEMORY[0x277D366C0] = [MEMORY[0x277D366C0] sharedAudioController];
    currentAttachment = [mEMORY[0x277D366C0] currentAttachment];
    LOBYTE(selfCopy) = note == currentAttachment;
LABEL_29:

LABEL_65:
    goto LABEL_66;
  }

  if (sel_viewSummary_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    note = [(ICAttachmentView *)selfCopy attachment];
    mEMORY[0x277D366C0] = [note audioModel];
    audioDocument = [mEMORY[0x277D366C0] audioDocument];
    needsInitialFetchFromCloud = [audioDocument transcriptAsPlainText];
    if ([needsInitialFetchFromCloud length])
    {
      attachment4 = [(ICAttachmentView *)selfCopy attachment];
      currentAttachment2 = [MEMORY[0x277D366C8] currentAttachment];
      if (attachment4 == currentAttachment2 && ![MEMORY[0x277D366C8] isPaused])
      {
        LOBYTE(selfCopy) = 0;
      }

      else
      {
        mEMORY[0x277D36218] = [MEMORY[0x277D36218] sharedInstance];
        LOBYTE(selfCopy) = [mEMORY[0x277D36218] supportsPrivateCloudComputeSummary];
      }

      goto LABEL_63;
    }

    goto LABEL_45;
  }

  if (sel_reportAConcern_withPositiveFeedback_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    note = [MEMORY[0x277D36218] sharedInstance];
    if ([note supportsOnDeviceSummary])
    {
      mEMORY[0x277D366C0] = [(ICAttachmentView *)selfCopy attachment];
      audioDocument = [mEMORY[0x277D366C0] audioModel];
      needsInitialFetchFromCloud = [audioDocument audioDocument];
      LOBYTE(selfCopy) = [needsInitialFetchFromCloud hasToplineSummary] != 0;
      goto LABEL_63;
    }

    goto LABEL_49;
  }

  if (sel_appendRecording_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    note = [(ICAttachmentView *)selfCopy attachment];
    mEMORY[0x277D366C0] = [MEMORY[0x277D366C0] sharedAudioController];
    audioDocument = [mEMORY[0x277D366C0] currentAttachment];
    if (note != audioDocument || ([MEMORY[0x277D366C0] sharedAudioController], needsInitialFetchFromCloud = objc_claimAutoreleasedReturnValue(), (objc_msgSend(needsInitialFetchFromCloud, "isPlaying") & 1) == 0))
    {
      attachment5 = [(ICAttachmentView *)selfCopy attachment];
      audioModel = [attachment5 audioModel];
      audioDocument2 = [audioModel audioDocument];
      if ([audioDocument2 isCallRecording])
      {

        LOBYTE(selfCopy) = 0;
      }

      else
      {
        currentAttachment3 = [MEMORY[0x277D366C8] currentAttachment];
        LOBYTE(selfCopy) = currentAttachment3 == 0;
      }

      if (note != audioDocument)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

LABEL_45:
    LOBYTE(selfCopy) = 0;
    goto LABEL_63;
  }

  if (sel_cut_ == action || sel_delete_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    note = [attachment3 note];
    if ([note isEditable])
    {
      mEMORY[0x277D366C0] = [(ICAttachmentView *)selfCopy attachment];
      currentAttachment = [MEMORY[0x277D366C8] currentAttachment];
      LOBYTE(selfCopy) = mEMORY[0x277D366C0] != currentAttachment;
      goto LABEL_29;
    }

LABEL_49:
    LOBYTE(selfCopy) = 0;
LABEL_66:

LABEL_67:
    return selfCopy;
  }

  if (sel_copy_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

  if (sel_saveToFiles_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ICAttachmentView *)selfCopy ic_isInSecureWindow]& 1) != 0)
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 attachmentType] == 4)
    {
      note = [(ICAttachmentView *)selfCopy attachment];
      currentAttachment4 = [MEMORY[0x277D366C8] currentAttachment];
      LOBYTE(selfCopy) = note != currentAttachment4;

      goto LABEL_66;
    }

LABEL_78:
    LOBYTE(selfCopy) = 0;
    goto LABEL_67;
  }

  if (sel_share_ == action)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ICAttachmentView *)selfCopy ic_isInSecureWindow]& 1) != 0)
    {
      goto LABEL_24;
    }

LABEL_51:
    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    note = [MEMORY[0x277D366C8] currentAttachment];
    LOBYTE(selfCopy) = attachment3 != note;
    goto LABEL_66;
  }

  if (sel_rename_ == action)
  {
    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 supportsRenaming] && (-[ICAttachmentView ic_isInSecureWindow](selfCopy, "ic_isInSecureWindow") & 1) == 0)
    {
      note = [(ICAttachmentView *)selfCopy attachment];
      if ([note attachmentType] == 11)
      {
        LOBYTE(selfCopy) = 1;
        goto LABEL_66;
      }

      mEMORY[0x277D366C0] = [(ICAttachmentView *)selfCopy attachment];
      LOBYTE(selfCopy) = [mEMORY[0x277D366C0] attachmentType] == 4;
      goto LABEL_65;
    }

    goto LABEL_78;
  }

  if (sel_createImage_ == action)
  {
    if (!ICInternalSettingsShouldShowImageGenerationUI())
    {
      goto LABEL_24;
    }

    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    if ([attachment3 attachmentType] == 3)
    {
      note = [(ICAttachmentView *)selfCopy attachment];
      mEMORY[0x277D366C0] = [note note];
      if ([mEMORY[0x277D366C0] isEditable])
      {
        LODWORD(selfCopy) = [(ICAttachmentView *)selfCopy ic_isInSecureWindow]^ 1;
        goto LABEL_65;
      }

      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (sel_updatePreferredAttachmentViewSize_ == action)
  {
    attachment3 = [(ICAttachmentView *)selfCopy attachment];
    note = [attachment3 note];
    if ([note isEditable])
    {
      mEMORY[0x277D366C0] = [(ICAttachmentView *)selfCopy textAttachment];
      if ([mEMORY[0x277D366C0] supportsMultiplePresentationSizes])
      {
        audioDocument = [(ICAttachmentView *)selfCopy textView];
        needsInitialFetchFromCloud = [audioDocument editorContainer];
        LODWORD(selfCopy) = [needsInitialFetchFromCloud isEditingOnSystemPaper] ^ 1;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

LABEL_79:
      LOBYTE(selfCopy) = 0;
      goto LABEL_65;
    }

    goto LABEL_49;
  }

LABEL_24:
  LOBYTE(selfCopy) = 0;
  return selfCopy;
}

- (void)editAttachmentWithBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  textView = [(ICAttachmentView *)self textView];
  v5 = ICDynamicCast();

  if (v5)
  {
    undoManager = [v5 undoManager];
    attachment = [(ICAttachmentView *)self attachment];
    note = [attachment note];
    attachment2 = [(ICAttachmentView *)self attachment];
    v10 = [note rangeForAttachment:attachment2];
    v12 = v11;

    [undoManager beginUndoGrouping];
    editorController = [v5 editorController];
    v14 = [MEMORY[0x277CCAE60] valueWithRange:{v10, v12}];
    [undoManager registerUndoWithTarget:editorController selector:sel_updateSelectionOnUndo_ object:v14];

    selectedRange = [v5 selectedRange];
    v17 = v16;
    [v5 setSelectedRange:{v10, v12}];
    blockCopy[2](blockCopy, v5);
    [v5 setSelectedRange:{selectedRange, v17}];
    [undoManager endUndoGrouping];
  }
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__ICAttachmentView_cut___block_invoke;
  v6[3] = &unk_2781AF8A0;
  v6[4] = self;
  v7 = cutCopy;
  v5 = cutCopy;
  [(ICAttachmentView *)self editAttachmentWithBlock:v6];
}

void __24__ICAttachmentView_cut___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __24__ICAttachmentView_cut___block_invoke_2;
  v2[3] = &unk_2781AD1E8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 copyWithCompletionBlock:v2];
}

uint64_t __24__ICAttachmentView_cut___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) delete:*(result + 40)];
  }

  return result;
}

- (void)copyWithCompletionBlock:(id)block
{
  v15[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = MEMORY[0x277D36788];
  attachment = [(ICAttachmentView *)self attachment];
  v15[0] = attachment;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  actionWindow = [(ICAttachmentView *)self actionWindow];
  actionWindow2 = [(ICAttachmentView *)self actionWindow];
  rootViewController = [actionWindow2 rootViewController];
  ic_topViewController = [rootViewController ic_topViewController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__ICAttachmentView_copyWithCompletionBlock___block_invoke;
  v13[3] = &unk_2781AF8C8;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [v5 generatePDFsIfNecessaryForGalleryAttachments:v7 displayWindow:actionWindow presentingViewController:ic_topViewController completionHandler:v13];
}

uint64_t __44__ICAttachmentView_copyWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _copy];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (int64_t)dataOwnerForAttachment
{
  attachment = [(ICAttachmentView *)self attachment];
  note = [attachment note];
  folder = [note folder];
  account = [folder account];
  isManaged = [account isManaged];

  if (isManaged)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_copy
{
  v3 = MEMORY[0x277D75810];
  dataOwnerForAttachment = [(ICAttachmentView *)self dataOwnerForAttachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ICAttachmentView__copy__block_invoke;
  v5[3] = &unk_2781ABCF8;
  v5[4] = self;
  [v3 _performAsDataOwner:dataOwnerForAttachment block:v5];
}

void __25__ICAttachmentView__copy__block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) attachment];
  v4 = [v3 attachmentType];

  v5 = [*(a1 + 32) attachment];
  v6 = v5;
  if (v4 != 3)
  {
    v10 = [v5 URL];

    if (!v10)
    {
      goto LABEL_8;
    }

    v7 = [*(a1 + 32) attachment];
    v8 = [(UIImage *)v7 URL];
    v9 = MEMORY[0x277CE1E90];
    goto LABEL_6;
  }

  v7 = [v5 image];

  if (v7)
  {
    v8 = UIImagePNGRepresentation(v7);
    v9 = MEMORY[0x277CE1E10];
LABEL_6:
    v11 = [*v9 identifier];
    [v2 setObject:v8 forKeyedSubscript:v11];
  }

LABEL_8:
  v12 = [*(a1 + 32) attachment];
  v13 = [v12 attachmentType];

  if (v13 == 11)
  {
    v14 = MEMORY[0x277D36788];
    v15 = [*(a1 + 32) attachment];
    v16 = [v14 pdfURLForAttachment:v15];

    v17 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v16];
    v18 = [*MEMORY[0x277CE1E08] identifier];
    [v2 ic_setNonNilObject:v17 forKey:v18];
  }

  v19 = [*(a1 + 32) attachment];
  v20 = [v19 pasteboardData];

  v21 = [v20 persistenceData];
  [v2 ic_setNonNilObject:v21 forKey:*MEMORY[0x277D35D08]];

  if (v2)
  {
    v22 = [MEMORY[0x277D75810] generalPasteboard];
    v24[0] = v2;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v22 setItems:v23];
  }
}

- (void)delete:(id)delete
{
  objc_opt_class();
  textView = [(ICAttachmentView *)self textView];
  v21 = ICDynamicCast();

  v5 = v21;
  if (v21)
  {
    isFirstResponder = [(ICAttachmentView *)self isFirstResponder];
    undoManager = [v21 undoManager];
    attachment = [(ICAttachmentView *)self attachment];
    note = [attachment note];
    attachment2 = [(ICAttachmentView *)self attachment];
    v11 = [note rangeForAttachment:attachment2];
    v13 = v12;

    [undoManager beginUndoGrouping];
    editorController = [v21 editorController];
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v13}];
    [undoManager registerUndoWithTarget:editorController selector:sel_updateSelectionOnUndo_ object:v15];

    selectedRange = [v21 selectedRange];
    v18 = v17;
    [v21 setSelectedRange:{v11, v13}];
    textStorage = [v21 textStorage];
    [textStorage deleteCharactersInRange:{v11, v13}];

    [v21 setSelectedRange:{selectedRange, v18}];
    [undoManager endUndoGrouping];
    delegate = [v21 delegate];
    [delegate textViewDidChange:v21];

    if (isFirstResponder)
    {
      [v21 becomeFirstResponder];
    }

    v5 = v21;
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6 = [(ICAttachmentView *)self textView:interaction];
  findInteraction = [v6 findInteraction];
  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];

  if (isFindNavigatorVisible)
  {
    textView = [(ICAttachmentView *)self textView];
    findInteraction2 = [textView findInteraction];
    [findInteraction2 dismissFindNavigator];
  }
}

- (id)makePlaybackMenu
{
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_playFromBeginning_ withSender:self])
  {
    v4 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Play from Beginning" value:&stru_282757698 table:0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __36__ICAttachmentView_makePlaybackMenu__block_invoke;
    v13 = &unk_2781ADD08;
    objc_copyWeak(&v14, &location);
    v7 = [v4 ic_actionWithTitle:v6 imageName:@"arrow.trianglehead.counterclockwise" handler:&v10];

    [array addObject:{v7, v10, v11, v12, v13}];
    objc_destroyWeak(&v14);
  }

  v8 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:array];

  objc_destroyWeak(&location);

  return v8;
}

void __36__ICAttachmentView_makePlaybackMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained playFromBeginning:WeakRetained];
}

- (id)makeAudioMenu
{
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_rename_ withSender:self])
  {
    attachment = [(ICAttachmentView *)self attachment];
    attachmentType = [attachment attachmentType];

    if (attachmentType == 4)
    {
      v6 = MEMORY[0x277D750C8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [mainBundle localizedStringForKey:@"Rename" value:&stru_282757698 table:0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __33__ICAttachmentView_makeAudioMenu__block_invoke;
      v19[3] = &unk_2781ADD08;
      objc_copyWeak(&v20, &location);
      v9 = [v6 ic_actionWithTitle:v8 imageName:@"pencil" handler:v19];

      [array addObject:v9];
      objc_destroyWeak(&v20);
    }
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_viewSummary_ withSender:self])
  {
    v10 = MEMORY[0x277D750C8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [mainBundle2 localizedStringForKey:@"View Summary" value:&stru_282757698 table:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __33__ICAttachmentView_makeAudioMenu__block_invoke_2;
    v17[3] = &unk_2781ADD08;
    objc_copyWeak(&v18, &location);
    v13 = [v10 ic_actionWithTitle:v12 imageName:@"text.line.3.summary" handler:v17];

    v14 = [MEMORY[0x277D755B8] _systemImageNamed:@"text.line.3.summary"];
    [v13 setImage:v14];

    [array addObject:v13];
    objc_destroyWeak(&v18);
  }

  v15 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:array];

  objc_destroyWeak(&location);

  return v15;
}

void __33__ICAttachmentView_makeAudioMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rename:WeakRetained];
}

void __33__ICAttachmentView_makeAudioMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained viewSummary:WeakRetained];
}

- (id)makeRecordingMenu
{
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_appendRecording_ withSender:self])
  {
    v4 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Add to Recording" value:&stru_282757698 table:0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __37__ICAttachmentView_makeRecordingMenu__block_invoke;
    v13 = &unk_2781ADD08;
    objc_copyWeak(&v14, &location);
    v7 = [v4 ic_actionWithTitle:v6 imageName:@"record.circle" handler:&v10];

    [array addObject:{v7, v10, v11, v12, v13}];
    objc_destroyWeak(&v14);
  }

  v8 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:array];

  objc_destroyWeak(&location);

  return v8;
}

void __37__ICAttachmentView_makeRecordingMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained appendRecording:WeakRetained];
}

- (id)shareFeedbackMenu
{
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_reportAConcern_withPositiveFeedback_ withSender:self]&& (ICInternalSettingsIsFCSReportAConcernEnabled() & 1) == 0)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"Looks Good" value:&stru_282757698 table:0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__ICAttachmentView_shareFeedbackMenu__block_invoke;
    v24[3] = &unk_2781ADD08;
    objc_copyWeak(&v25, &location);
    v9 = [v6 ic_actionWithTitle:v8 imageName:@"hand.thumbsup" handler:v24];

    v10 = MEMORY[0x277D750C8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [mainBundle2 localizedStringForKey:@"Something Isn’t Right" value:&stru_282757698 table:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __37__ICAttachmentView_shareFeedbackMenu__block_invoke_2;
    v22[3] = &unk_2781ADD08;
    objc_copyWeak(&v23, &location);
    v13 = [v10 ic_actionWithTitle:v12 imageName:@"hand.thumbsdown" handler:v22];

    [array2 addObject:v9];
    [array2 addObject:v13];
    v14 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:array2];
    [array addObject:v14];
    v15 = MEMORY[0x277D75710];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"Share Feedback" value:&stru_282757698 table:0];
    v18 = [MEMORY[0x277D755B8] imageNamed:@"exclamationmark.bubble"];
    v4 = [v15 menuWithTitle:v17 image:v18 identifier:0 options:0 children:array];

    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [mainBundle4 localizedStringForKey:@"Audio Preview" value:&stru_282757698 table:0];
    [v4 setSubtitle:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
  }

  else
  {
    v4 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:array];
  }

  objc_destroyWeak(&location);

  return v4;
}

void __37__ICAttachmentView_shareFeedbackMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportAConcern:WeakRetained withPositiveFeedback:1];
}

void __37__ICAttachmentView_shareFeedbackMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportAConcern:WeakRetained withPositiveFeedback:0];
}

- (id)makeMainMenu
{
  v78[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_copy_ withSender:self])
  {
    v3 = MEMORY[0x277D750C8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [mainBundle localizedStringForKey:@"Copy" value:&stru_282757698 table:0];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __32__ICAttachmentView_makeMainMenu__block_invoke;
    v75[3] = &unk_2781ADD08;
    objc_copyWeak(&v76, &location);
    v6 = [v3 ic_actionWithTitle:v5 imageName:@"doc.on.doc" handler:v75];

    [array addObject:v6];
    objc_destroyWeak(&v76);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_saveToFiles_ withSender:self])
  {
    attachment = [(ICAttachmentView *)self attachment];
    if ([attachment isAudio])
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      [mainBundle2 localizedStringForKey:@"Save Audio to Files" value:&stru_282757698 table:0];
    }

    else
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      [mainBundle2 localizedStringForKey:@"Save to Files" value:&stru_282757698 table:0];
    }
    v9 = ;

    v10 = MEMORY[0x277D750C8];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_2;
    v73[3] = &unk_2781ADD08;
    objc_copyWeak(&v74, &location);
    v11 = [v10 ic_actionWithTitle:v9 imageName:@"folder" handler:v73];
    [array addObject:v11];

    objc_destroyWeak(&v74);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_share_ withSender:self])
  {
    attachment2 = [(ICAttachmentView *)self attachment];
    if ([attachment2 isAudio])
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      [mainBundle3 localizedStringForKey:@"Share Audio" value:&stru_282757698 table:0];
    }

    else
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      [mainBundle3 localizedStringForKey:@"Share" value:&stru_282757698 table:0];
    }
    v14 = ;

    v15 = MEMORY[0x277D750C8];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_3;
    v71[3] = &unk_2781ADD08;
    objc_copyWeak(&v72, &location);
    v16 = [v15 ic_actionWithTitle:v14 imageName:@"square.and.arrow.up" handler:v71];
    [array addObject:v16];

    objc_destroyWeak(&v72);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_rename_ withSender:self])
  {
    attachment3 = [(ICAttachmentView *)self attachment];
    v18 = [attachment3 attachmentType] == 11;

    if (v18)
    {
      v19 = MEMORY[0x277D750C8];
      mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [mainBundle4 localizedStringForKey:@"Rename" value:&stru_282757698 table:0];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_4;
      v69[3] = &unk_2781ADD08;
      objc_copyWeak(&v70, &location);
      v22 = [v19 ic_actionWithTitle:v21 imageName:@"pencil" handler:v69];

      [array addObject:v22];
      objc_destroyWeak(&v70);
    }
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_updatePreferredAttachmentViewSize_ withSender:self])
  {
    editingTextView = [(ICAttachmentView *)self editingTextView];
    editorController = [editingTextView editorController];
    attachmentInsertionController = [editorController attachmentInsertionController];

    v25 = [objc_alloc(MEMORY[0x277D36808]) initWithInsertionController:attachmentInsertionController];
    attachment4 = [(ICAttachmentView *)self attachment];
    v55 = [v25 canConvertAttachmentToLink:attachment4];

    v54 = objc_alloc(MEMORY[0x277D366B8]);
    mainBundle5 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [mainBundle5 localizedStringForKey:@"View As" value:&stru_282757698 table:0];
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.3.group"];
    attachment5 = [(ICAttachmentView *)self attachment];
    preferredViewSize = [attachment5 preferredViewSize];
    textAttachment = [(ICAttachmentView *)self textAttachment];
    supportedPresentationSizes = [textAttachment supportedPresentationSizes];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_5;
    v67[3] = &unk_2781AF8F0;
    objc_copyWeak(&v68, &location);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_6;
    v64[3] = &unk_2781AC760;
    objc_copyWeak(&v66, &location);
    v34 = v25;
    v65 = v34;
    v35 = [v54 initWithTitle:v28 image:v29 preferredViewSize:preferredViewSize supportedSizes:supportedPresentationSizes supportsPlainLink:v55 isOverrideVariant:0 selectedSizeHandler:v67 plainLinkHandler:v64];

    createMenu = [v35 createMenu];
    [array addObject:createMenu];

    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_createImage_ withSender:self])
  {
    v37 = MEMORY[0x277D750C8];
    mainBundle6 = [MEMORY[0x277CCA8D8] mainBundle];
    v39 = [mainBundle6 localizedStringForKey:@"Add to Playground" value:&stru_282757698 table:0];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_7;
    v62[3] = &unk_2781ADD08;
    objc_copyWeak(&v63, &location);
    v40 = [v37 ic_actionWithTitle:v39 imageName:@"apple.image.playground" handler:v62];

    v41 = MEMORY[0x277D75710];
    v78[0] = v40;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
    v43 = [v41 menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v42];

    [array addObject:v43];
    objc_destroyWeak(&v63);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_reportAConcern_withPositiveFeedback_ withSender:self]&& ICInternalSettingsIsFCSReportAConcernEnabled())
  {
    v44 = MEMORY[0x277D750C8];
    mainBundle7 = [MEMORY[0x277CCA8D8] mainBundle];
    v46 = [mainBundle7 localizedStringForKey:@"Report a Concern" value:&stru_282757698 table:0];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_8;
    v60[3] = &unk_2781ADD08;
    objc_copyWeak(&v61, &location);
    v47 = [v44 ic_actionWithTitle:v46 imageName:@"exclamationmark.bubble" handler:v60];

    [array addObject:v47];
    objc_destroyWeak(&v61);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_delete_ withSender:self])
  {
    v48 = MEMORY[0x277D750C8];
    mainBundle8 = [MEMORY[0x277CCA8D8] mainBundle];
    v50 = [mainBundle8 localizedStringForKey:@"Delete" value:&stru_282757698 table:0];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_9;
    v58[3] = &unk_2781ADD08;
    objc_copyWeak(&v59, &location);
    v51 = [v48 ic_actionWithTitle:v50 imageName:@"trash" attributes:2 handler:v58];

    [array addObject:v51];
    objc_destroyWeak(&v59);
  }

  v52 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:array];

  objc_destroyWeak(&location);

  return v52;
}

void __32__ICAttachmentView_makeMainMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained copy:WeakRetained];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained saveToFiles:WeakRetained];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained share:WeakRetained];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rename:WeakRetained];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePreferredAttachmentViewSize:a2];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained attachment];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [WeakRetained attachment];
    [v3 convertAttachmentToLink:v4];
  }
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createImage:WeakRetained];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportAConcern:WeakRetained withPositiveFeedback:0];
}

void __32__ICAttachmentView_makeMainMenu__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained delete:WeakRetained];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v31[1] = *MEMORY[0x277D85DE8];
  if ([(ICAttachmentView *)self shouldAddMenuLongPressGesture:interaction])
  {
    attachment = [(ICAttachmentView *)self attachment];
    if ([attachment attachmentType] == 11)
    {
      objc_opt_class();
      attachmentModel = [attachment attachmentModel];
      v7 = ICDynamicCast();

      if (v7)
      {
        firstSubAttachment = [v7 firstSubAttachment];

        attachment = firstSubAttachment;
      }
    }

    contextMenuPreviewController = 0;
    if ([(ICAttachmentView *)self wantsContextMenuPreview])
    {
      if (attachment)
      {
        contextMenuPreviewController = [(ICAttachmentView *)self contextMenuPreviewController];
        if (!contextMenuPreviewController)
        {
          IsExtension = _UIApplicationIsExtension();
          if (IsExtension)
          {
            ic_viewControllerManager = 0;
          }

          else
          {
            ic_viewControllerManager = [(ICAttachmentView *)self ic_viewControllerManager];
          }

          v31[0] = attachment;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
          contextMenuPreviewController = [ICAttachmentPresenter previewViewControllerWithViewControllerManager:ic_viewControllerManager attachments:v13 startingAtIndex:0 delegate:0 editable:0 isFromAttachmentBrowser:0];

          if ((IsExtension & 1) == 0)
          {
          }
        }
      }
    }

    v14 = MEMORY[0x277D75710];
    makePlaybackMenu = [(ICAttachmentView *)self makePlaybackMenu];
    v30[0] = makePlaybackMenu;
    makeAudioMenu = [(ICAttachmentView *)self makeAudioMenu];
    v30[1] = makeAudioMenu;
    makeRecordingMenu = [(ICAttachmentView *)self makeRecordingMenu];
    v30[2] = makeRecordingMenu;
    makeMainMenu = [(ICAttachmentView *)self makeMainMenu];
    v30[3] = makeMainMenu;
    shareFeedbackMenu = [(ICAttachmentView *)self shareFeedbackMenu];
    v30[4] = shareFeedbackMenu;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
    v21 = [v14 menuWithTitle:&stru_282757698 image:0 identifier:0 options:0 children:v20];

    v22 = MEMORY[0x277D753B0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__ICAttachmentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v28[3] = &unk_2781AD4C8;
    v29 = contextMenuPreviewController;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__ICAttachmentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v26[3] = &unk_2781AD4F0;
    v27 = v21;
    v23 = v21;
    v24 = contextMenuPreviewController;
    v12 = [v22 configurationWithIdentifier:0 previewProvider:v28 actionProvider:v26];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  if (-[ICAttachmentView wantsContextMenuPreview](self, "wantsContextMenuPreview", interaction, configuration, identifier) || (-[ICAttachmentView attachment](self, "attachment"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 preferredViewSize], v6, v7))
  {
    v8 = objc_alloc_init(MEMORY[0x277D758D8]);
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    traitCollection = [(ICAttachmentView *)self traitCollection];
    v11 = [systemBackgroundColor resolvedColorWithTraitCollection:traitCollection];
    [v8 setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v8];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v15 = objc_alloc_init(MEMORY[0x277D758D8]);
    v16 = objc_alloc(MEMORY[0x277D758E0]);
    [(ICAttachmentView *)self center];
    v17 = [v16 initWithContainer:self center:?];
    v12 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v8 parameters:v15 target:v17];
  }

  return v12;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__ICAttachmentView_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v5[3] = &unk_2781ABCF8;
  v5[4] = self;
  [animator addCompletion:{v5, configuration}];
}

- (BOOL)wantsContextMenuPreview
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    ic_viewControllerManager = [(ICAttachmentView *)self ic_viewControllerManager];
    noteContainerViewMode = [ic_viewControllerManager noteContainerViewMode];
    if (noteContainerViewMode || (-[ICAttachmentView ic_viewControllerManager](self, "ic_viewControllerManager"), v2 = objc_claimAutoreleasedReturnValue(), [v2 isMainSplitViewDisplayModeSecondaryOnly]))
    {
      ic_viewControllerManager2 = [(ICAttachmentView *)self ic_viewControllerManager];
      v7 = [ic_viewControllerManager2 noteContainerViewMode] == 1;

      if (noteContainerViewMode)
      {
LABEL_13:

        return v7;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_13;
  }

  if ([MEMORY[0x277D75418] ic_isiPad])
  {
    ic_viewControllerManager = [(ICAttachmentView *)self window];
    [ic_viewControllerManager bounds];
    v7 = v9 >= 800.0 && v8 >= 300.0;
    goto LABEL_13;
  }

  return 1;
}

- (void)removeFromSuperview
{
  textView = [(ICAttachmentView *)self textView];
  shouldAvoidBecomingFirstResponder = [textView shouldAvoidBecomingFirstResponder];
  [textView setShouldAvoidBecomingFirstResponder:1];
  v5.receiver = self;
  v5.super_class = ICAttachmentView;
  [(ICAttachmentView *)&v5 removeFromSuperview];
  [textView setShouldAvoidBecomingFirstResponder:shouldAvoidBecomingFirstResponder];
}

- (void)respondToTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if (-[ICAttachmentView isUserInteractionEnabled](self, "isUserInteractionEnabled") && [gestureCopy state] == 3)
  {
    attachment = [(ICAttachmentView *)self attachment];
    note = [attachment note];

    attachment2 = [(ICAttachmentView *)self attachment];
    v7 = [note rangeForAttachment:attachment2];
    v9 = v8;

    textView = [(ICAttachmentView *)self textView];
    v18.location = [textView selectedRange];
    location = v18.location;
    length = v18.length;
    v19.location = v7;
    v19.length = v9;
    if (NSIntersectionRange(v18, v19).length)
    {
      [textView setSelectedRange:{location + length, 0}];
    }

    else
    {
      mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
      isMenuVisible = [mEMORY[0x277D75718] isMenuVisible];

      if (isMenuVisible)
      {
        mEMORY[0x277D75718]2 = [MEMORY[0x277D75718] sharedMenuController];
        [mEMORY[0x277D75718]2 setMenuVisible:0 animated:1];

        [(ICAttachmentView *)self requestEditorFirstResponder];
      }

      else if (![(ICAttachmentView *)self showRecoverNoteAlertIfNecessary])
      {
        [(ICAttachmentView *)self didTapAttachment:self];
      }
    }
  }
}

- (void)respondToPanGesture:(id)gesture
{
  delegate = [(ICAttachmentView *)self delegate];

  if (delegate)
  {
    delegate2 = [(ICAttachmentView *)self delegate];
    attachment = [(ICAttachmentView *)self attachment];
    [delegate2 attachmentView:self shouldPresentAttachment:attachment];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2151A1000, v6, OS_LOG_TYPE_INFO, "respondToPanGesture: attachment view has no delegate", buf, 2u);
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;
  [(ICAttachmentView *)self bounds];
  if (v14 > 32.0)
  {
    *&v12 = CGRectInset(*&v12, 8.0, 0.0);
  }

  v22.x = v9;
  v22.y = v11;
  if (CGRectContainsPoint(*&v12, v22))
  {
    panGestureRecognizer = [(ICAttachmentView *)self panGestureRecognizer];
    v17 = [recognizerCopy isEqual:panGestureRecognizer];

    if (v17)
    {
      delegate = [(ICAttachmentView *)self delegate];
      attachment = [(ICAttachmentView *)self attachment];
      v20 = [delegate attachmentView:self shouldRespondToPanGestureTouch:touchCopy forAttachment:attachment];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)shareWebLink:(id)link
{
  linkCopy = link;
  attachment = [(ICAttachmentView *)self attachment];
  v6 = [attachment URL];
  if ([v6 ic_isWebURL])
  {
    attachment2 = [(ICAttachmentView *)self attachment];
    urlString = [attachment2 urlString];
  }

  else
  {
    urlString = 0;
  }

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:urlString preferredStyle:0];
  v10 = MEMORY[0x277D750F8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"Open" value:&stru_282757698 table:0];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __33__ICAttachmentView_shareWebLink___block_invoke;
  v47[3] = &unk_2781AD070;
  v47[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v47];
  [v9 addAction:v13];

  attachment3 = [(ICAttachmentView *)self attachment];
  v15 = [attachment3 URL];
  LODWORD(v12) = [v15 ic_isWebURL];

  if (v12)
  {
    v16 = MEMORY[0x277D750F8];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle2 localizedStringForKey:@"Add to Reading List" value:&stru_282757698 table:0];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __33__ICAttachmentView_shareWebLink___block_invoke_2;
    v46[3] = &unk_2781AD070;
    v46[4] = self;
    v19 = [v16 actionWithTitle:v18 style:0 handler:v46];
    [v9 addAction:v19];
  }

  v20 = MEMORY[0x277D750F8];
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [mainBundle3 localizedStringForKey:@"Copy" value:&stru_282757698 table:0];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __33__ICAttachmentView_shareWebLink___block_invoke_226;
  v44[3] = &unk_2781AF918;
  v44[4] = self;
  v45 = linkCopy;
  v23 = linkCopy;
  v24 = [v20 actionWithTitle:v22 style:0 handler:v44];
  [v9 addAction:v24];

  v25 = MEMORY[0x277D750F8];
  mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [mainBundle4 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
  v28 = [v25 actionWithTitle:v27 style:1 handler:0];
  [v9 addAction:v28];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v29 = -2;
  }

  else
  {
    v29 = 7;
  }

  [v9 setModalPresentationStyle:v29];
  actionWindow = [(ICAttachmentView *)self actionWindow];
  rootViewController = [actionWindow rootViewController];
  ic_topViewController = [rootViewController ic_topViewController];
  [ic_topViewController presentViewController:v9 animated:1 completion:0];

  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:self];

  [(ICAttachmentView *)self bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  popoverPresentationController2 = [v9 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v35, v37, v39, v41}];

  popoverPresentationController3 = [v9 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:15];
}

void __33__ICAttachmentView_shareWebLink___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 attachment];
  [v4 attachmentView:v2 shouldPresentAttachment:v3];
}

void __33__ICAttachmentView_shareWebLink___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CDB710] defaultReadingList];
  v3 = MEMORY[0x277CBEBC0];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 attachment];
  v7 = [v6 urlString];
  v8 = [v3 URLWithString:v7];
  v9 = [*v4 attachment];
  v10 = [v9 title];
  v14 = 0;
  v11 = [v2 addReadingListItemWithURL:v8 title:v10 previewText:0 error:&v14];
  v12 = v14;

  if ((v11 & 1) == 0)
  {
    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __33__ICAttachmentView_shareWebLink___block_invoke_2_cold_1(v4, v12, v13);
    }
  }
}

- (NSTextContainer)textContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainer);

  return WeakRetained;
}

- (ICAttachmentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __33__ICAttachmentView_shareWebLink___block_invoke_2_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 attachment];
  v6 = [v5 urlString];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2151A1000, a3, OS_LOG_TYPE_ERROR, "Unable to add %@ to reading list, error %@", &v7, 0x16u);
}

@end