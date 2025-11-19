@interface ICAttachmentView
- (BOOL)_accessibilityTextOperationAction:(id)a3;
- (BOOL)accessibilityActivate;
- (BOOL)alertAboutUnsupportedAttachmentIfNecessary;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)icaxIsTextRangeSelected;
- (BOOL)insideSystemPaper;
- (BOOL)showRecoverNoteAlertIfNecessary;
- (BOOL)wantsContextMenuPreview;
- (ICAttachmentView)initWithAttachment:(id)a3 textContainer:(id)a4 actionWindow:(id)a5;
- (ICAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6;
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
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)makeAudioMenu;
- (id)makeMainMenu;
- (id)makePlaybackMenu;
- (id)makeRecordingMenu;
- (id)shareFeedbackMenu;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)dataOwnerForAttachment;
- (void)_copy;
- (void)appendRecording:(id)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)copyWithCompletionBlock:(id)a3;
- (void)createImage:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)didMoveToWindow;
- (void)didTapAttachment:(id)a3;
- (void)editAttachmentWithBlock:(id)a3;
- (void)icaxSelectAttachmentTextRange:(BOOL)a3;
- (void)notifyDidMoveToWindow;
- (void)openAttachment;
- (void)playFromBeginning:(id)a3;
- (void)removeFromSuperview;
- (void)rename:(id)a3;
- (void)renameAttachmentToUpdatedTitle:(id)a3;
- (void)reportAConcern:(id)a3 withPositiveFeedback:(BOOL)a4;
- (void)requestEditorFirstResponder;
- (void)respondToPanGesture:(id)a3;
- (void)respondToTapGesture:(id)a3;
- (void)saveToFiles:(id)a3;
- (void)setupEventHandling;
- (void)share:(id)a3;
- (void)shareWebLink:(id)a3;
- (void)updateFirstResponder;
- (void)updatePreferredAttachmentViewSize:(signed __int16)a3;
- (void)viewSummary:(id)a3;
- (void)willMoveToSuperview:(id)a3;
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
    v4 = [(ICAttachmentView *)self contextInteraction];

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
      [(ICAttachmentView *)self setContextInteraction:v5];

      v6 = [(ICAttachmentView *)self contextInteraction];
      [(ICAttachmentView *)self addInteraction:v6];

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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap to expand" value:&stru_282757698 table:0];

  return v3;
}

- (BOOL)icaxIsTextRangeSelected
{
  v3 = [(ICAttachmentView *)self textRangeInNote];
  v5 = v4;
  v6 = [(ICAttachmentView *)self _icaxParentTextView];
  v9 = v3 == [v6 selectedRange] && v5 == v7;

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
  v3 = [(ICAttachmentView *)self attachment];
  v4 = [v3 note];
  v5 = [(ICAttachmentView *)self attachment];
  v6 = [v4 rangeForAttachment:v5];
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
  v2 = [(ICAttachmentView *)&v7 accessibilityContainer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      v5 = [v4 accessibilityContainer];

      v4 = v5;
      if (!v5)
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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(ICAttachmentView *)self attachment];
  v4 = [v3 note];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICAttachmentView *)self attachment];
    v7 = [v6 note];
    v8 = [v7 isEditable];

    if (v8)
    {
      v9 = [(ICAttachmentView *)self icaxHintString];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)accessibilityValue
{
  v2 = [(ICAttachmentView *)self attachment];
  v3 = [v2 title];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ICAttachmentView *)self _icaxParentTextView];
  v4 = [(ICAttachmentView *)self attachment];
  v5 = [v4 note];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(ICAttachmentView *)self attachment];
  v8 = [v7 note];
  if ([v8 isEditable])
  {

LABEL_4:
    goto LABEL_5;
  }

  v9 = [(ICAttachmentView *)self attachment];
  v10 = [v9 note];
  v11 = [v10 isDeletedOrInTrash];

  if (v11)
  {
    v12 = [v3 editorController];
    [v12 showRecoverNoteAlert];
LABEL_11:

    goto LABEL_12;
  }

LABEL_5:
  if (([v3 isFirstResponder] & 1) == 0 && !-[ICAttachmentView accessibilityElementIsFocused](self, "accessibilityElementIsFocused"))
  {
    v12 = [(ICAttachmentView *)self attachment];
    [v3 icaxBeginEditingAtAttachment:v12];
    goto LABEL_11;
  }

  [(ICAttachmentView *)self icaxActivate];
LABEL_12:

  return 1;
}

- (id)_accessibilityTextOperations
{
  v3 = [MEMORY[0x277CBEB18] array];
  v9.receiver = self;
  v9.super_class = ICAttachmentView;
  v4 = [(ICAttachmentView *)&v9 _accessibilityTextOperations];
  [v3 axSafelyAddObjectsFromArray:v4];

  if ([(ICAttachmentView *)self canPerformAction:sel_share_ withSender:0])
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)_accessibilityTextOperationAction:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"Share Attachment" value:&stru_282757698 table:0];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    [(ICAttachmentView *)self share:0];
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICAttachmentView;
    v8 = [(ICAttachmentView *)&v10 _accessibilityTextOperationAction:v4];
  }

  return v8;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v11.receiver = self;
  v11.super_class = ICAttachmentView;
  v4 = [(ICAttachmentView *)&v11 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  if (![(ICAttachmentView *)self icaxIsTextRangeSelected])
  {
    v5 = objc_alloc(MEMORY[0x277D75088]);
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 localizedStringForKey:@"Select" value:&stru_282757698 table:0];
    v8 = [v5 initWithName:v7 target:self selector:sel_icaxSelectAttachmentTextRangeAction];

    [v3 addObject:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)accessibilityCustomRotors
{
  v2 = [(ICAttachmentView *)self _icaxParentTextView];
  v3 = [v2 editorController];
  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v4 setNoteEditorViewController:v3];

  v5 = +[ICAccessibilityCustomRotorController sharedInstance];
  v6 = [v5 sharedTextViewRotors];

  return v6;
}

- (id)_icaxParentTextView
{
  v2 = [(ICAttachmentView *)self superview];
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    objc_opt_class();
    v3 = ICDynamicCast();
  }

  else
  {
    v3 = 0;
  }

LABEL_7:

  return v3;
}

- (id)accessibilityDragSourceDescriptors
{
  v2 = [(ICAttachmentView *)self _icaxParentTextView];
  v3 = [v2 accessibilityDragSourceDescriptors];

  return v3;
}

- (id)accessibilityDropPointDescriptors
{
  v2 = [(ICAttachmentView *)self _icaxParentTextView];
  v3 = [v2 accessibilityDropPointDescriptors];

  return v3;
}

- (void)icaxSelectAttachmentTextRange:(BOOL)a3
{
  v3 = a3;
  v16 = [(ICAttachmentView *)self _icaxParentTextView];
  v5 = [v16 editorController];
  v6 = [(ICAttachmentView *)self textRangeInNote];
  v8 = v7;
  _UIAccessibilityBlockPostingOfAllNotifications();
  if (v5)
  {
    if (([v5 isEditing] & 1) == 0)
    {
      v9 = [v5 note];
      v10 = [v9 isEditable];

      if (v10)
      {
        [v5 startEditing];
      }
    }
  }

  [v16 select:v16];
  [v16 setSelectedRange:{v6, v8}];
  [v16 scrollRangeToVisible:{v6, v8}];
  _UIAccessibilityUnblockPostingOfAllNotifications();
  if (v3)
  {
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"Selected %@. Use the actions rotor to start dragging." value:&stru_282757698 table:0];

    v13 = MEMORY[0x277CCACA8];
    v14 = [(ICAttachmentView *)self accessibilityLabel];
    v15 = [v13 localizedStringWithFormat:v12, v14];

    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v15);
  }
}

- (NSString)icaxAttachmentViewTypeDescription
{
  v3 = [(ICAttachmentView *)self textAttachment];
  v4 = [v3 supportsMultiplePresentationSizes];

  if (v4 && (-[ICAttachmentView attachment](self, "attachment"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 preferredViewSize], v5, v6 <= 2))
  {
    v7 = off_2781AF760[v6];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:v7 value:&stru_282757698 table:0];
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
  v3 = [(ICAttachmentView *)self textContainer];
  v4 = ICDynamicCast();

  LOBYTE(v3) = [v4 insideSystemPaper];
  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"ICAttachmentViewDidMoveToWindowNotification" object:self];
}

- (ICAttachmentView)initWithAttachment:(id)a3 textContainer:(id)a4 actionWindow:(id)a5
{
  v9 = a5;
  v10 = MEMORY[0x277D36950];
  v11 = a4;
  v12 = [v10 textAttachmentWithAttachment:a3];
  v13 = [(ICAttachmentView *)self initWithFrame:v12 textAttachment:v11 textContainer:0 forManualRendering:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  if (v13)
  {
    objc_storeStrong(&v13->_actionWindow, a5);
  }

  return v13;
}

- (ICAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = ICAttachmentView;
  v15 = [(ICAttachmentView *)&v20 initWithFrame:x, y, width, height];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_textContainer, v14);
    v16->_finishedInit = 1;
    v16->_forManualRendering = a6;
    v17 = [v13 attachment];
    -[ICAttachmentView sharedInit:](v16, "sharedInit:", [v17 preferredViewSize] == 1);

    [(ICAttachmentView *)v16 setupEventHandling];
    [(ICAttachmentView *)v16 setupConstraints];
    [(ICAttachmentView *)v16 setTextAttachment:v13];
    v18 = [v13 attachment];
    [(ICAttachmentView *)v16 setAttachment:v18];

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
    v3 = actionWindow;
  }

  else
  {
    v3 = [(ICAttachmentView *)self window];
  }

  return v3;
}

- (ICBaseTextView)textView
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v3 = [(ICAttachmentView *)self textContainer];
    v4 = ICCheckedDynamicCast();
    [v4 tk2TextView];
  }

  else
  {
    objc_opt_class();
    v3 = [(ICAttachmentView *)self superview];
    v4 = [v3 superview];
    ICDynamicCast();
  }
  v5 = ;

  return v5;
}

- (ICEditingTextView)editingTextView
{
  objc_opt_class();
  v3 = [(ICAttachmentView *)self textView];
  v4 = ICDynamicCast();

  return v4;
}

- (void)didTapAttachment:(id)a3
{
  if ([(ICAttachmentView *)self alertAboutUnsupportedAttachmentIfNecessary])
  {
    return;
  }

  v11 = [(ICAttachmentView *)self attachment];
  if ([v11 hasVisualFallbackMedia])
  {

LABEL_4:
    v4 = [(ICAttachmentView *)self attachment];
    v5 = [v4 media];

    if ([v5 isPasswordProtected])
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

  v7 = [(ICAttachmentView *)self attachment];
  v8 = [v7 attachmentModel];
  if ([v8 isReadyToPresent])
  {
    v9 = [(ICAttachmentView *)self attachment];
    v10 = [v9 isUnsupported];

    if (v10)
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
  v3 = [(ICAttachmentView *)self attachment];
  v4 = [v3 isUnsupported];
  if (!v4)
  {
LABEL_10:

    return v4;
  }

  v5 = [(ICAttachmentView *)self attachment];
  if ([v5 isPasswordProtected])
  {

LABEL_6:
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v10 = [MEMORY[0x277CCA8D8] mainBundle];
      [v10 localizedStringForKey:@"iPadOS" value:&stru_282757698 table:0];
    }

    else
    {
      v10 = [MEMORY[0x277D75418] currentDevice];
      [v10 systemName];
    }
    v3 = ;

    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"Unsupported Attachment" value:&stru_282757698 table:0];

    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Editing this attachment is not supported on this device. To edit it value:upgrade to the latest version of %@." table:{&stru_282757698, 0}];
    v16 = [v13 localizedStringWithFormat:v15, v3];

    v17 = MEMORY[0x277D75110];
    v18 = [(ICAttachmentView *)self window];
    v19 = [v18 rootViewController];
    [v17 ic_showAlertWithTitle:v12 message:v16 viewController:v19];

    goto LABEL_10;
  }

  v6 = [(ICAttachmentView *)self attachment];
  v7 = [v6 hasVisualFallbackMedia];

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (void)openAttachment
{
  v3 = [(ICAttachmentView *)self delegate];

  if (v3)
  {
    v6 = [(ICAttachmentView *)self delegate];
    v4 = [(ICAttachmentView *)self attachment];
    [v6 attachmentView:self shouldPresentAttachment:v4];
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

- (void)updatePreferredAttachmentViewSize:(signed __int16)a3
{
  v3 = a3;
  v5 = [(ICAttachmentView *)self attachment];
  [v5 setPreferredViewSize:v3];

  v7 = [(ICAttachmentView *)self attachment];
  v6 = [v7 managedObjectContext];
  [v6 ic_save];
}

- (BOOL)showRecoverNoteAlertIfNecessary
{
  v3 = [(ICAttachmentView *)self attachment];
  v4 = [v3 note];

  if (v4 && ([v4 isEditable] & 1) == 0 && objc_msgSend(v4, "isDeletedOrInTrash"))
  {
    v5 = [(ICAttachmentView *)self textView];
    v6 = [v5 editorContainer];
    [v6 showRecoverNoteAlert];

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
  v3 = [(ICAttachmentView *)self textView];
  v4 = [v3 editorContainer];
  v5 = [v4 canBecomeFirstResponder];

  if (v5)
  {
    v7 = [(ICAttachmentView *)self textView];
    v6 = [v7 editorContainer];
    [v6 becomeFirstResponder];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v8.receiver = self;
  v8.super_class = ICAttachmentView;
  [(ICAttachmentView *)&v8 willMoveToSuperview:?];
  if (!a3)
  {
    v5 = [(ICAttachmentView *)self textView];
    v6 = [v5 nextResponderOverride];

    if (v6 == self)
    {
      v7 = [(ICAttachmentView *)self textView];
      [v7 setNextResponderOverride:0];
    }
  }
}

- (void)playFromBeginning:(id)a3
{
  v4 = [(ICAttachmentView *)self attachment];
  v5 = [v4 attachmentType];

  if (v5 == 4)
  {
    v9 = [(ICAttachmentView *)self editingTextView];
    v6 = [v9 editorController];
    v7 = [v6 audioAttachmentEditorCoordinator];
    v8 = [(ICAttachmentView *)self attachment];
    [v7 playFromBeginning:v8];
  }
}

- (void)viewSummary:(id)a3
{
  v4 = [(ICAttachmentView *)self attachment];
  v5 = [v4 attachmentType];

  if (v5 == 4)
  {
    v9 = [(ICAttachmentView *)self editingTextView];
    v6 = [v9 editorController];
    v7 = [v6 audioAttachmentEditorCoordinator];
    v8 = [(ICAttachmentView *)self attachment];
    [v7 presentSummaryFor:v8];
  }
}

- (void)appendRecording:(id)a3
{
  v4 = [(ICAttachmentView *)self attachment];
  v5 = [v4 attachmentType];

  if (v5 == 4)
  {
    v9 = [(ICAttachmentView *)self editingTextView];
    v6 = [v9 editorController];
    v7 = [v6 audioAttachmentEditorCoordinator];
    v8 = [(ICAttachmentView *)self attachment];
    [v7 appendTo:v8];
  }
}

- (void)reportAConcern:(id)a3 withPositiveFeedback:(BOOL)a4
{
  v4 = a4;
  v6 = [(ICAttachmentView *)self attachment];
  v7 = [v6 attachmentType];

  if (v7 == 4)
  {
    v11 = [(ICAttachmentView *)self editingTextView];
    v8 = [v11 editorController];
    v9 = [v8 audioAttachmentEditorCoordinator];
    v10 = [(ICAttachmentView *)self attachment];
    [v9 presentReportAConcernFor:v10 withPositiveFeedback:v4];
  }
}

- (void)rename:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D05D48]);
  v6 = [(ICAttachmentView *)self attachment];
  v7 = [v6 title];
  v8 = [v5 initWithExistingTitle:v7];

  v9 = [(ICAttachmentView *)self actionWindow];
  v10 = [v9 rootViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__ICAttachmentView_rename___block_invoke;
  v11[3] = &unk_2781AF878;
  objc_copyWeak(&v12, &location);
  [v8 showFromViewController:v10 completion:v11];

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

- (void)renameAttachmentToUpdatedTitle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ICAttachmentView *)self attachment];
    v16 = [v5 title];

    v6 = [ICDocCamScannedDocumentEditor alloc];
    v7 = [(ICAttachmentView *)self attachment];
    v8 = [(ICDocCamScannedDocumentEditor *)v6 initWithGalleryAttachment:v7];

    [(ICDocCamScannedDocumentEditor *)v8 updateDocumentTitle:v4 isUserDefined:1];
    v9 = [(ICAttachmentView *)self textView];
    v10 = [v9 undoManager];
    v11 = [v10 prepareWithInvocationTarget:self];
    [v11 renameAttachmentToUpdatedTitle:v16];

    v12 = [(ICAttachmentView *)self textView];
    v13 = [v12 undoManager];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Undo Rename" value:&stru_282757698 table:0];
    [v13 setActionName:v15];
  }
}

- (void)createImage:(id)a3
{
  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    v5 = [(ICAttachmentView *)self editingTextView];
    v4 = [v5 editorController];
    [v4 createImage:self];
  }
}

- (void)saveToFiles:(id)a3
{
  v4 = [(ICAttachmentView *)self attachment];
  v5 = [v4 attachmentType];

  if (v5 == 4)
  {
    v9 = [(ICAttachmentView *)self editingTextView];
    v6 = [v9 editorController];
    v7 = [v6 audioAttachmentEditorCoordinator];
    v8 = [(ICAttachmentView *)self attachment];
    [v7 presentExportViewForAttachment:v8];
  }
}

- (void)share:(id)a3
{
  v12 = a3;
  v4 = [(ICAttachmentView *)self attachment];
  if ([v4 attachmentType] != 8)
  {
    goto LABEL_8;
  }

  v5 = [(ICAttachmentView *)self attachment];
  if ([v5 isiTunes])
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v8 = [(ICAttachmentView *)self delegate];
    v9 = [(ICAttachmentView *)self attachment];
    [v8 attachmentView:self shouldShareAttachment:v9];

    goto LABEL_10;
  }

  v6 = [(ICAttachmentView *)self attachment];
  if ([v6 isAppStore])
  {
LABEL_6:

    goto LABEL_7;
  }

  v7 = [(ICAttachmentView *)self attachment];
  if ([v7 isMap])
  {

    goto LABEL_6;
  }

  v10 = [(ICAttachmentView *)self attachment];
  v11 = [v10 isNews];

  if (v11)
  {
    goto LABEL_9;
  }

  [(ICAttachmentView *)self shareWebLink:v12];
LABEL_10:
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ICAttachmentView *)self attachment];
  v8 = [v7 isUnsupported];

  if (v8)
  {
    if (sel_delete_ != a3)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (sel_cut_ == a3 || sel_copy_ == a3 || sel_delete_ == a3)
  {
    goto LABEL_12;
  }

  if (sel_share_ == a3 || sel_rename_ == a3)
  {
    if (![(ICAttachmentView *)self canPerformAction:a3 withSender:v6])
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v14 = [(ICAttachmentView *)self textAttachment];
  v15 = [v14 supportsMultiplePresentationSizes];

  v9 = 0;
  if (v15)
  {
    if (sel_updatePreferredAttachmentViewSize_ == a3)
    {
LABEL_12:
      v9 = self;
    }
  }

LABEL_13:

  return v9;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = self;
  v7 = [(ICAttachmentView *)self attachment:a3];
  v8 = [v7 isUnsupported];
  if (v8)
  {
    v4 = [(ICAttachmentView *)v6 attachment];
    if (([v4 hasFallbackPDF] & 1) == 0)
    {

      goto LABEL_23;
    }
  }

  v9 = [(ICAttachmentView *)v6 attachment];
  v10 = [v9 needsInitialFetchFromCloud];

  if (!v8)
  {

    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_23:
    if (sel_delete_ != a3)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    v12 = [v11 note];
    LOBYTE(v6) = [v12 isEditable];
    goto LABEL_66;
  }

  if (v10)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (sel_playFromBeginning_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    v12 = [(ICAttachmentView *)v6 attachment];
    v13 = [MEMORY[0x277D366C0] sharedAudioController];
    v15 = [v13 currentAttachment];
    LOBYTE(v6) = v12 == v15;
LABEL_29:

LABEL_65:
    goto LABEL_66;
  }

  if (sel_viewSummary_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    v12 = [(ICAttachmentView *)v6 attachment];
    v13 = [v12 audioModel];
    v14 = [v13 audioDocument];
    v10 = [v14 transcriptAsPlainText];
    if ([v10 length])
    {
      v16 = [(ICAttachmentView *)v6 attachment];
      v17 = [MEMORY[0x277D366C8] currentAttachment];
      if (v16 == v17 && ![MEMORY[0x277D366C8] isPaused])
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v18 = [MEMORY[0x277D36218] sharedInstance];
        LOBYTE(v6) = [v18 supportsPrivateCloudComputeSummary];
      }

      goto LABEL_63;
    }

    goto LABEL_45;
  }

  if (sel_reportAConcern_withPositiveFeedback_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    v12 = [MEMORY[0x277D36218] sharedInstance];
    if ([v12 supportsOnDeviceSummary])
    {
      v13 = [(ICAttachmentView *)v6 attachment];
      v14 = [v13 audioModel];
      v10 = [v14 audioDocument];
      LOBYTE(v6) = [v10 hasToplineSummary] != 0;
      goto LABEL_63;
    }

    goto LABEL_49;
  }

  if (sel_appendRecording_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 attachmentType] != 4)
    {
      goto LABEL_78;
    }

    v12 = [(ICAttachmentView *)v6 attachment];
    v13 = [MEMORY[0x277D366C0] sharedAudioController];
    v14 = [v13 currentAttachment];
    if (v12 != v14 || ([MEMORY[0x277D366C0] sharedAudioController], v10 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v10, "isPlaying") & 1) == 0))
    {
      v19 = [(ICAttachmentView *)v6 attachment];
      v20 = [v19 audioModel];
      v21 = [v20 audioDocument];
      if ([v21 isCallRecording])
      {

        LOBYTE(v6) = 0;
      }

      else
      {
        v23 = [MEMORY[0x277D366C8] currentAttachment];
        LOBYTE(v6) = v23 == 0;
      }

      if (v12 != v14)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

LABEL_45:
    LOBYTE(v6) = 0;
    goto LABEL_63;
  }

  if (sel_cut_ == a3 || sel_delete_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    v12 = [v11 note];
    if ([v12 isEditable])
    {
      v13 = [(ICAttachmentView *)v6 attachment];
      v15 = [MEMORY[0x277D366C8] currentAttachment];
      LOBYTE(v6) = v13 != v15;
      goto LABEL_29;
    }

LABEL_49:
    LOBYTE(v6) = 0;
LABEL_66:

LABEL_67:
    return v6;
  }

  if (sel_copy_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

  if (sel_saveToFiles_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ICAttachmentView *)v6 ic_isInSecureWindow]& 1) != 0)
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 attachmentType] == 4)
    {
      v12 = [(ICAttachmentView *)v6 attachment];
      v22 = [MEMORY[0x277D366C8] currentAttachment];
      LOBYTE(v6) = v12 != v22;

      goto LABEL_66;
    }

LABEL_78:
    LOBYTE(v6) = 0;
    goto LABEL_67;
  }

  if (sel_share_ == a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ICAttachmentView *)v6 ic_isInSecureWindow]& 1) != 0)
    {
      goto LABEL_24;
    }

LABEL_51:
    v11 = [(ICAttachmentView *)v6 attachment];
    v12 = [MEMORY[0x277D366C8] currentAttachment];
    LOBYTE(v6) = v11 != v12;
    goto LABEL_66;
  }

  if (sel_rename_ == a3)
  {
    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 supportsRenaming] && (-[ICAttachmentView ic_isInSecureWindow](v6, "ic_isInSecureWindow") & 1) == 0)
    {
      v12 = [(ICAttachmentView *)v6 attachment];
      if ([v12 attachmentType] == 11)
      {
        LOBYTE(v6) = 1;
        goto LABEL_66;
      }

      v13 = [(ICAttachmentView *)v6 attachment];
      LOBYTE(v6) = [v13 attachmentType] == 4;
      goto LABEL_65;
    }

    goto LABEL_78;
  }

  if (sel_createImage_ == a3)
  {
    if (!ICInternalSettingsShouldShowImageGenerationUI())
    {
      goto LABEL_24;
    }

    v11 = [(ICAttachmentView *)v6 attachment];
    if ([v11 attachmentType] == 3)
    {
      v12 = [(ICAttachmentView *)v6 attachment];
      v13 = [v12 note];
      if ([v13 isEditable])
      {
        LODWORD(v6) = [(ICAttachmentView *)v6 ic_isInSecureWindow]^ 1;
        goto LABEL_65;
      }

      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (sel_updatePreferredAttachmentViewSize_ == a3)
  {
    v11 = [(ICAttachmentView *)v6 attachment];
    v12 = [v11 note];
    if ([v12 isEditable])
    {
      v13 = [(ICAttachmentView *)v6 textAttachment];
      if ([v13 supportsMultiplePresentationSizes])
      {
        v14 = [(ICAttachmentView *)v6 textView];
        v10 = [v14 editorContainer];
        LODWORD(v6) = [v10 isEditingOnSystemPaper] ^ 1;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

LABEL_79:
      LOBYTE(v6) = 0;
      goto LABEL_65;
    }

    goto LABEL_49;
  }

LABEL_24:
  LOBYTE(v6) = 0;
  return v6;
}

- (void)editAttachmentWithBlock:(id)a3
{
  v18 = a3;
  objc_opt_class();
  v4 = [(ICAttachmentView *)self textView];
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [v5 undoManager];
    v7 = [(ICAttachmentView *)self attachment];
    v8 = [v7 note];
    v9 = [(ICAttachmentView *)self attachment];
    v10 = [v8 rangeForAttachment:v9];
    v12 = v11;

    [v6 beginUndoGrouping];
    v13 = [v5 editorController];
    v14 = [MEMORY[0x277CCAE60] valueWithRange:{v10, v12}];
    [v6 registerUndoWithTarget:v13 selector:sel_updateSelectionOnUndo_ object:v14];

    v15 = [v5 selectedRange];
    v17 = v16;
    [v5 setSelectedRange:{v10, v12}];
    v18[2](v18, v5);
    [v5 setSelectedRange:{v15, v17}];
    [v6 endUndoGrouping];
  }
}

- (void)cut:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__ICAttachmentView_cut___block_invoke;
  v6[3] = &unk_2781AF8A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)copyWithCompletionBlock:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D36788];
  v6 = [(ICAttachmentView *)self attachment];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [(ICAttachmentView *)self actionWindow];
  v9 = [(ICAttachmentView *)self actionWindow];
  v10 = [v9 rootViewController];
  v11 = [v10 ic_topViewController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__ICAttachmentView_copyWithCompletionBlock___block_invoke;
  v13[3] = &unk_2781AF8C8;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v5 generatePDFsIfNecessaryForGalleryAttachments:v7 displayWindow:v8 presentingViewController:v11 completionHandler:v13];
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
  v2 = [(ICAttachmentView *)self attachment];
  v3 = [v2 note];
  v4 = [v3 folder];
  v5 = [v4 account];
  v6 = [v5 isManaged];

  if (v6)
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
  v4 = [(ICAttachmentView *)self dataOwnerForAttachment];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ICAttachmentView__copy__block_invoke;
  v5[3] = &unk_2781ABCF8;
  v5[4] = self;
  [v3 _performAsDataOwner:v4 block:v5];
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

- (void)delete:(id)a3
{
  objc_opt_class();
  v4 = [(ICAttachmentView *)self textView];
  v21 = ICDynamicCast();

  v5 = v21;
  if (v21)
  {
    v6 = [(ICAttachmentView *)self isFirstResponder];
    v7 = [v21 undoManager];
    v8 = [(ICAttachmentView *)self attachment];
    v9 = [v8 note];
    v10 = [(ICAttachmentView *)self attachment];
    v11 = [v9 rangeForAttachment:v10];
    v13 = v12;

    [v7 beginUndoGrouping];
    v14 = [v21 editorController];
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v13}];
    [v7 registerUndoWithTarget:v14 selector:sel_updateSelectionOnUndo_ object:v15];

    v16 = [v21 selectedRange];
    v18 = v17;
    [v21 setSelectedRange:{v11, v13}];
    v19 = [v21 textStorage];
    [v19 deleteCharactersInRange:{v11, v13}];

    [v21 setSelectedRange:{v16, v18}];
    [v7 endUndoGrouping];
    v20 = [v21 delegate];
    [v20 textViewDidChange:v21];

    if (v6)
    {
      [v21 becomeFirstResponder];
    }

    v5 = v21;
  }
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = [(ICAttachmentView *)self textView:a3];
  v7 = [v6 findInteraction];
  v8 = [v7 isFindNavigatorVisible];

  if (v8)
  {
    v10 = [(ICAttachmentView *)self textView];
    v9 = [v10 findInteraction];
    [v9 dismissFindNavigator];
  }
}

- (id)makePlaybackMenu
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_playFromBeginning_ withSender:self])
  {
    v4 = MEMORY[0x277D750C8];
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Play from Beginning" value:&stru_282757698 table:0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __36__ICAttachmentView_makePlaybackMenu__block_invoke;
    v13 = &unk_2781ADD08;
    objc_copyWeak(&v14, &location);
    v7 = [v4 ic_actionWithTitle:v6 imageName:@"arrow.trianglehead.counterclockwise" handler:&v10];

    [v3 addObject:{v7, v10, v11, v12, v13}];
    objc_destroyWeak(&v14);
  }

  v8 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v3];

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
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_rename_ withSender:self])
  {
    v4 = [(ICAttachmentView *)self attachment];
    v5 = [v4 attachmentType];

    if (v5 == 4)
    {
      v6 = MEMORY[0x277D750C8];
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v7 localizedStringForKey:@"Rename" value:&stru_282757698 table:0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __33__ICAttachmentView_makeAudioMenu__block_invoke;
      v19[3] = &unk_2781ADD08;
      objc_copyWeak(&v20, &location);
      v9 = [v6 ic_actionWithTitle:v8 imageName:@"pencil" handler:v19];

      [v3 addObject:v9];
      objc_destroyWeak(&v20);
    }
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_viewSummary_ withSender:self])
  {
    v10 = MEMORY[0x277D750C8];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"View Summary" value:&stru_282757698 table:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __33__ICAttachmentView_makeAudioMenu__block_invoke_2;
    v17[3] = &unk_2781ADD08;
    objc_copyWeak(&v18, &location);
    v13 = [v10 ic_actionWithTitle:v12 imageName:@"text.line.3.summary" handler:v17];

    v14 = [MEMORY[0x277D755B8] _systemImageNamed:@"text.line.3.summary"];
    [v13 setImage:v14];

    [v3 addObject:v13];
    objc_destroyWeak(&v18);
  }

  v15 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v3];

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
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_appendRecording_ withSender:self])
  {
    v4 = MEMORY[0x277D750C8];
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Add to Recording" value:&stru_282757698 table:0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __37__ICAttachmentView_makeRecordingMenu__block_invoke;
    v13 = &unk_2781ADD08;
    objc_copyWeak(&v14, &location);
    v7 = [v4 ic_actionWithTitle:v6 imageName:@"record.circle" handler:&v10];

    [v3 addObject:{v7, v10, v11, v12, v13}];
    objc_destroyWeak(&v14);
  }

  v8 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v3];

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
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_reportAConcern_withPositiveFeedback_ withSender:self]&& (ICInternalSettingsIsFCSReportAConcernEnabled() & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277D750C8];
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 localizedStringForKey:@"Looks Good" value:&stru_282757698 table:0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__ICAttachmentView_shareFeedbackMenu__block_invoke;
    v24[3] = &unk_2781ADD08;
    objc_copyWeak(&v25, &location);
    v9 = [v6 ic_actionWithTitle:v8 imageName:@"hand.thumbsup" handler:v24];

    v10 = MEMORY[0x277D750C8];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"Something Isn’t Right" value:&stru_282757698 table:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __37__ICAttachmentView_shareFeedbackMenu__block_invoke_2;
    v22[3] = &unk_2781ADD08;
    objc_copyWeak(&v23, &location);
    v13 = [v10 ic_actionWithTitle:v12 imageName:@"hand.thumbsdown" handler:v22];

    [v5 addObject:v9];
    [v5 addObject:v13];
    v14 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v5];
    [v3 addObject:v14];
    v15 = MEMORY[0x277D75710];
    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"Share Feedback" value:&stru_282757698 table:0];
    v18 = [MEMORY[0x277D755B8] imageNamed:@"exclamationmark.bubble"];
    v4 = [v15 menuWithTitle:v17 image:v18 identifier:0 options:0 children:v3];

    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:@"Audio Preview" value:&stru_282757698 table:0];
    [v4 setSubtitle:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
  }

  else
  {
    v4 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v3];
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
  v57 = [MEMORY[0x277CBEB18] array];
  if ([(ICAttachmentView *)self canPerformAction:sel_copy_ withSender:self])
  {
    v3 = MEMORY[0x277D750C8];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"Copy" value:&stru_282757698 table:0];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __32__ICAttachmentView_makeMainMenu__block_invoke;
    v75[3] = &unk_2781ADD08;
    objc_copyWeak(&v76, &location);
    v6 = [v3 ic_actionWithTitle:v5 imageName:@"doc.on.doc" handler:v75];

    [v57 addObject:v6];
    objc_destroyWeak(&v76);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_saveToFiles_ withSender:self])
  {
    v7 = [(ICAttachmentView *)self attachment];
    if ([v7 isAudio])
    {
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      [v8 localizedStringForKey:@"Save Audio to Files" value:&stru_282757698 table:0];
    }

    else
    {
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      [v8 localizedStringForKey:@"Save to Files" value:&stru_282757698 table:0];
    }
    v9 = ;

    v10 = MEMORY[0x277D750C8];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_2;
    v73[3] = &unk_2781ADD08;
    objc_copyWeak(&v74, &location);
    v11 = [v10 ic_actionWithTitle:v9 imageName:@"folder" handler:v73];
    [v57 addObject:v11];

    objc_destroyWeak(&v74);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_share_ withSender:self])
  {
    v12 = [(ICAttachmentView *)self attachment];
    if ([v12 isAudio])
    {
      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      [v13 localizedStringForKey:@"Share Audio" value:&stru_282757698 table:0];
    }

    else
    {
      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      [v13 localizedStringForKey:@"Share" value:&stru_282757698 table:0];
    }
    v14 = ;

    v15 = MEMORY[0x277D750C8];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_3;
    v71[3] = &unk_2781ADD08;
    objc_copyWeak(&v72, &location);
    v16 = [v15 ic_actionWithTitle:v14 imageName:@"square.and.arrow.up" handler:v71];
    [v57 addObject:v16];

    objc_destroyWeak(&v72);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_rename_ withSender:self])
  {
    v17 = [(ICAttachmentView *)self attachment];
    v18 = [v17 attachmentType] == 11;

    if (v18)
    {
      v19 = MEMORY[0x277D750C8];
      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [v20 localizedStringForKey:@"Rename" value:&stru_282757698 table:0];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_4;
      v69[3] = &unk_2781ADD08;
      objc_copyWeak(&v70, &location);
      v22 = [v19 ic_actionWithTitle:v21 imageName:@"pencil" handler:v69];

      [v57 addObject:v22];
      objc_destroyWeak(&v70);
    }
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_updatePreferredAttachmentViewSize_ withSender:self])
  {
    v23 = [(ICAttachmentView *)self editingTextView];
    v24 = [v23 editorController];
    v56 = [v24 attachmentInsertionController];

    v25 = [objc_alloc(MEMORY[0x277D36808]) initWithInsertionController:v56];
    v26 = [(ICAttachmentView *)self attachment];
    v55 = [v25 canConvertAttachmentToLink:v26];

    v54 = objc_alloc(MEMORY[0x277D366B8]);
    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [v27 localizedStringForKey:@"View As" value:&stru_282757698 table:0];
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.3.group"];
    v30 = [(ICAttachmentView *)self attachment];
    v31 = [v30 preferredViewSize];
    v32 = [(ICAttachmentView *)self textAttachment];
    v33 = [v32 supportedPresentationSizes];
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
    v35 = [v54 initWithTitle:v28 image:v29 preferredViewSize:v31 supportedSizes:v33 supportsPlainLink:v55 isOverrideVariant:0 selectedSizeHandler:v67 plainLinkHandler:v64];

    v36 = [v35 createMenu];
    [v57 addObject:v36];

    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_createImage_ withSender:self])
  {
    v37 = MEMORY[0x277D750C8];
    v38 = [MEMORY[0x277CCA8D8] mainBundle];
    v39 = [v38 localizedStringForKey:@"Add to Playground" value:&stru_282757698 table:0];
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

    [v57 addObject:v43];
    objc_destroyWeak(&v63);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_reportAConcern_withPositiveFeedback_ withSender:self]&& ICInternalSettingsIsFCSReportAConcernEnabled())
  {
    v44 = MEMORY[0x277D750C8];
    v45 = [MEMORY[0x277CCA8D8] mainBundle];
    v46 = [v45 localizedStringForKey:@"Report a Concern" value:&stru_282757698 table:0];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_8;
    v60[3] = &unk_2781ADD08;
    objc_copyWeak(&v61, &location);
    v47 = [v44 ic_actionWithTitle:v46 imageName:@"exclamationmark.bubble" handler:v60];

    [v57 addObject:v47];
    objc_destroyWeak(&v61);
  }

  if ([(ICAttachmentView *)self canPerformAction:sel_delete_ withSender:self])
  {
    v48 = MEMORY[0x277D750C8];
    v49 = [MEMORY[0x277CCA8D8] mainBundle];
    v50 = [v49 localizedStringForKey:@"Delete" value:&stru_282757698 table:0];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __32__ICAttachmentView_makeMainMenu__block_invoke_9;
    v58[3] = &unk_2781ADD08;
    objc_copyWeak(&v59, &location);
    v51 = [v48 ic_actionWithTitle:v50 imageName:@"trash" attributes:2 handler:v58];

    [v57 addObject:v51];
    objc_destroyWeak(&v59);
  }

  v52 = [MEMORY[0x277D75710] menuWithTitle:&stru_282757698 image:0 identifier:0 options:1 children:v57];

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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  if ([(ICAttachmentView *)self shouldAddMenuLongPressGesture:a3])
  {
    v5 = [(ICAttachmentView *)self attachment];
    if ([v5 attachmentType] == 11)
    {
      objc_opt_class();
      v6 = [v5 attachmentModel];
      v7 = ICDynamicCast();

      if (v7)
      {
        v8 = [v7 firstSubAttachment];

        v5 = v8;
      }
    }

    v9 = 0;
    if ([(ICAttachmentView *)self wantsContextMenuPreview])
    {
      if (v5)
      {
        v9 = [(ICAttachmentView *)self contextMenuPreviewController];
        if (!v9)
        {
          IsExtension = _UIApplicationIsExtension();
          if (IsExtension)
          {
            v11 = 0;
          }

          else
          {
            v11 = [(ICAttachmentView *)self ic_viewControllerManager];
          }

          v31[0] = v5;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
          v9 = [ICAttachmentPresenter previewViewControllerWithViewControllerManager:v11 attachments:v13 startingAtIndex:0 delegate:0 editable:0 isFromAttachmentBrowser:0];

          if ((IsExtension & 1) == 0)
          {
          }
        }
      }
    }

    v14 = MEMORY[0x277D75710];
    v15 = [(ICAttachmentView *)self makePlaybackMenu];
    v30[0] = v15;
    v16 = [(ICAttachmentView *)self makeAudioMenu];
    v30[1] = v16;
    v17 = [(ICAttachmentView *)self makeRecordingMenu];
    v30[2] = v17;
    v18 = [(ICAttachmentView *)self makeMainMenu];
    v30[3] = v18;
    v19 = [(ICAttachmentView *)self shareFeedbackMenu];
    v30[4] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
    v21 = [v14 menuWithTitle:&stru_282757698 image:0 identifier:0 options:0 children:v20];

    v22 = MEMORY[0x277D753B0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__ICAttachmentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v28[3] = &unk_2781AD4C8;
    v29 = v9;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__ICAttachmentView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v26[3] = &unk_2781AD4F0;
    v27 = v21;
    v23 = v21;
    v24 = v9;
    v12 = [v22 configurationWithIdentifier:0 previewProvider:v28 actionProvider:v26];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  if (-[ICAttachmentView wantsContextMenuPreview](self, "wantsContextMenuPreview", a3, a4, a5) || (-[ICAttachmentView attachment](self, "attachment"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 preferredViewSize], v6, v7))
  {
    v8 = objc_alloc_init(MEMORY[0x277D758D8]);
    v9 = [MEMORY[0x277D75348] systemBackgroundColor];
    v10 = [(ICAttachmentView *)self traitCollection];
    v11 = [v9 resolvedColorWithTraitCollection:v10];
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

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__ICAttachmentView_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
  v5[3] = &unk_2781ABCF8;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (BOOL)wantsContextMenuPreview
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v4 = [(ICAttachmentView *)self ic_viewControllerManager];
    v5 = [v4 noteContainerViewMode];
    if (v5 || (-[ICAttachmentView ic_viewControllerManager](self, "ic_viewControllerManager"), v2 = objc_claimAutoreleasedReturnValue(), [v2 isMainSplitViewDisplayModeSecondaryOnly]))
    {
      v6 = [(ICAttachmentView *)self ic_viewControllerManager];
      v7 = [v6 noteContainerViewMode] == 1;

      if (v5)
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
    v4 = [(ICAttachmentView *)self window];
    [v4 bounds];
    v7 = v9 >= 800.0 && v8 >= 300.0;
    goto LABEL_13;
  }

  return 1;
}

- (void)removeFromSuperview
{
  v3 = [(ICAttachmentView *)self textView];
  v4 = [v3 shouldAvoidBecomingFirstResponder];
  [v3 setShouldAvoidBecomingFirstResponder:1];
  v5.receiver = self;
  v5.super_class = ICAttachmentView;
  [(ICAttachmentView *)&v5 removeFromSuperview];
  [v3 setShouldAvoidBecomingFirstResponder:v4];
}

- (void)respondToTapGesture:(id)a3
{
  v16 = a3;
  if (-[ICAttachmentView isUserInteractionEnabled](self, "isUserInteractionEnabled") && [v16 state] == 3)
  {
    v4 = [(ICAttachmentView *)self attachment];
    v5 = [v4 note];

    v6 = [(ICAttachmentView *)self attachment];
    v7 = [v5 rangeForAttachment:v6];
    v9 = v8;

    v10 = [(ICAttachmentView *)self textView];
    v18.location = [v10 selectedRange];
    location = v18.location;
    length = v18.length;
    v19.location = v7;
    v19.length = v9;
    if (NSIntersectionRange(v18, v19).length)
    {
      [v10 setSelectedRange:{location + length, 0}];
    }

    else
    {
      v13 = [MEMORY[0x277D75718] sharedMenuController];
      v14 = [v13 isMenuVisible];

      if (v14)
      {
        v15 = [MEMORY[0x277D75718] sharedMenuController];
        [v15 setMenuVisible:0 animated:1];

        [(ICAttachmentView *)self requestEditorFirstResponder];
      }

      else if (![(ICAttachmentView *)self showRecoverNoteAlertIfNecessary])
      {
        [(ICAttachmentView *)self didTapAttachment:self];
      }
    }
  }
}

- (void)respondToPanGesture:(id)a3
{
  v4 = [(ICAttachmentView *)self delegate];

  if (v4)
  {
    v7 = [(ICAttachmentView *)self delegate];
    v5 = [(ICAttachmentView *)self attachment];
    [v7 attachmentView:self shouldPresentAttachment:v5];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 locationInView:self];
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
    v16 = [(ICAttachmentView *)self panGestureRecognizer];
    v17 = [v6 isEqual:v16];

    if (v17)
    {
      v18 = [(ICAttachmentView *)self delegate];
      v19 = [(ICAttachmentView *)self attachment];
      v20 = [v18 attachmentView:self shouldRespondToPanGestureTouch:v7 forAttachment:v19];
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

- (void)shareWebLink:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentView *)self attachment];
  v6 = [v5 URL];
  if ([v6 ic_isWebURL])
  {
    v7 = [(ICAttachmentView *)self attachment];
    v8 = [v7 urlString];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v8 preferredStyle:0];
  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"Open" value:&stru_282757698 table:0];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __33__ICAttachmentView_shareWebLink___block_invoke;
  v47[3] = &unk_2781AD070;
  v47[4] = self;
  v13 = [v10 actionWithTitle:v12 style:0 handler:v47];
  [v9 addAction:v13];

  v14 = [(ICAttachmentView *)self attachment];
  v15 = [v14 URL];
  LODWORD(v12) = [v15 ic_isWebURL];

  if (v12)
  {
    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v17 localizedStringForKey:@"Add to Reading List" value:&stru_282757698 table:0];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __33__ICAttachmentView_shareWebLink___block_invoke_2;
    v46[3] = &unk_2781AD070;
    v46[4] = self;
    v19 = [v16 actionWithTitle:v18 style:0 handler:v46];
    [v9 addAction:v19];
  }

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] mainBundle];
  v22 = [v21 localizedStringForKey:@"Copy" value:&stru_282757698 table:0];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __33__ICAttachmentView_shareWebLink___block_invoke_226;
  v44[3] = &unk_2781AF918;
  v44[4] = self;
  v45 = v4;
  v23 = v4;
  v24 = [v20 actionWithTitle:v22 style:0 handler:v44];
  [v9 addAction:v24];

  v25 = MEMORY[0x277D750F8];
  v26 = [MEMORY[0x277CCA8D8] mainBundle];
  v27 = [v26 localizedStringForKey:@"Cancel" value:&stru_282757698 table:0];
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
  v30 = [(ICAttachmentView *)self actionWindow];
  v31 = [v30 rootViewController];
  v32 = [v31 ic_topViewController];
  [v32 presentViewController:v9 animated:1 completion:0];

  v33 = [v9 popoverPresentationController];
  [v33 setSourceView:self];

  [(ICAttachmentView *)self bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [v9 popoverPresentationController];
  [v42 setSourceRect:{v35, v37, v39, v41}];

  v43 = [v9 popoverPresentationController];
  [v43 setPermittedArrowDirections:15];
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