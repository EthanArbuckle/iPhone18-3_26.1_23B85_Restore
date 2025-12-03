@interface CKMacRecipientsController
- (BOOL)shouldShowVerifiedIconForRecipient:(id)recipient;
- (CGRect)detailsToolbarItemFrame;
- (CGRect)faceTimeJoinCallToolbarItemFrame;
- (CGRect)faceTimeStartOrLaunchCallToolbarItemFrame;
- (CGRect)innermostToolbarItemFrame;
- (CKConversation)conversation;
- (CKMacRecipientsController)initWithConversation:(id)conversation;
- (CKMacRecipientsControllerDelegate)delegate;
- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)rows;
- (double)preferredMacToolbarHeight;
- (id)composeRecipientView:(id)view contextMenuConfigurationForAtom:(id)atom;
- (id)handlesForScreenTimePolicyCheck;
- (id)recipients;
- (unint64_t)_atomPresentationOptionsForRecipient:(id)recipient;
- (void)_handleAddressBookChangedNotification:(id)notification;
- (void)_handleAddressBookPartialChangedNotification:(id)notification;
- (void)_handleConversationPreferredServiceDidChangeNotification:(id)notification;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification;
- (void)_notifyDelegatesToFieldHeightHasChanged;
- (void)_reloadCurrentRecipientData;
- (void)_showContactCardForEntity:(id)entity sourceView:(id)view;
- (void)_updateToFieldFrame;
- (void)addRecipients:(id)recipients;
- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshRecipients;
- (void)reset;
- (void)setConversation:(id)conversation;
- (void)updateScreenTimePolicy;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CKMacRecipientsController

- (void)dealloc
{
  currentConversationContext = [(CKMacRecipientsController *)self currentConversationContext];

  if (currentConversationContext)
  {
    currentConversationContext2 = [(CKMacRecipientsController *)self currentConversationContext];
    [currentConversationContext2 removeObserver:self forKeyPath:@"allowedByScreenTime"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  toField = [(CKMacRecipientsController *)self toField];
  [toField setDelegate:0];

  self->_numberOfRowsInToField = 1;
  v7.receiver = self;
  v7.super_class = CKMacRecipientsController;
  [(CKMacRecipientsController *)&v7 dealloc];
}

- (CKMacRecipientsController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v10.receiver = self;
  v10.super_class = CKMacRecipientsController;
  v5 = [(CKMacRecipientsController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_conversation, conversationCopy);
    if (conversationCopy)
    {
      v7 = [[CKDetailsContactsManager alloc] initWithConversation:conversationCopy delegate:v6];
      contactsManager = v6->_contactsManager;
      v6->_contactsManager = v7;
    }

    v6->_allowedByScreenTime = 1;
    v6->_numberOfRowsInToField = 1;
  }

  return v6;
}

- (double)preferredMacToolbarHeight
{
  toField = [(CKMacRecipientsController *)self toField];
  numberOfRowsOfTextInField = [toField numberOfRowsOfTextInField];
  numberOfRowsInToField = [(CKMacRecipientsController *)self numberOfRowsInToField];

  if (numberOfRowsOfTextInField != numberOfRowsInToField)
  {
    toField2 = [(CKMacRecipientsController *)self toField];
    -[CKMacRecipientsController setNumberOfRowsInToField:](self, "setNumberOfRowsInToField:", [toField2 numberOfRowsOfTextInField]);
  }

  if ([(CKMacRecipientsController *)self numberOfRowsInToField]< 2 || [(CKMacRecipientsController *)self numberOfRowsInToField]> 3)
  {
    if ([(CKMacRecipientsController *)self numberOfRowsInToField]<= 3)
    {
      numberOfRowsInToField2 = 1;
    }

    else
    {
      numberOfRowsInToField2 = 3;
    }
  }

  else
  {
    numberOfRowsInToField2 = [(CKMacRecipientsController *)self numberOfRowsInToField];
  }

  [(CKMacRecipientsController *)self _fieldContainerHeightForNumberOfRows:numberOfRowsInToField2];
  return result;
}

- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)rows
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 macAppKitToolbarHeight];
  v6 = v5;
  if (rows >= 2)
  {
    v7 = (rows - 1);
    [MEMORY[0x1E6996398] defaultHeight];
    v9 = v8;
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 toFieldInterlineSpacing];
    v6 = v6 + v7 * (v9 + v11);
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:?];
  [(CKMacRecipientsController *)self setView:v5];

  view = [(CKMacRecipientsController *)self view];
  [view setAutoresizingMask:18];

  view2 = [(CKMacRecipientsController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view2 setBackgroundColor:clearColor];

  view3 = [(CKMacRecipientsController *)self view];
  [view3 setClipsToBounds:1];

  v10 = objc_alloc(MEMORY[0x1E69DCEF8]);
  view4 = [(CKMacRecipientsController *)self view];
  [view4 bounds];
  v12 = [v10 initWithFrame:?];
  [(CKMacRecipientsController *)self setToFieldScrollView:v12];

  toFieldScrollView = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView setAutoresizingMask:18];

  toFieldScrollView2 = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView2 setAlwaysBounceVertical:1];

  toFieldScrollView3 = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView3 setShowsHorizontalScrollIndicator:0];

  toFieldScrollView4 = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView4 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  toFieldScrollView5 = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView5 setContentInsetAdjustmentBehavior:2];

  toFieldScrollView6 = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView6 setScrollEnabled:0];

  toFieldScrollView7 = [(CKMacRecipientsController *)self toFieldScrollView];
  [toFieldScrollView7 setShowsVerticalScrollIndicator:0];

  view5 = [(CKMacRecipientsController *)self view];
  toFieldScrollView8 = [(CKMacRecipientsController *)self toFieldScrollView];
  [view5 addSubview:toFieldScrollView8];

  v22 = objc_alloc(MEMORY[0x1E6996428]);
  v23 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  toField = self->_toField;
  self->_toField = v23;

  toField = [(CKMacRecipientsController *)self toField];
  [toField setAutoresizingMask:18];

  if (loadView_onceToken_0 != -1)
  {
    [CKMacRecipientsController loadView];
  }

  toField2 = [(CKMacRecipientsController *)self toField];
  labelView = [toField2 labelView];
  [labelView setAttributedText:loadView_toText_0];

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(labelView) = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (labelView)
  {
    conversation = [(CKMacRecipientsController *)self conversation];
    chat = [conversation chat];
    isStewieSharingChat = [chat isStewieSharingChat];

    if (isStewieSharingChat)
    {
      toField3 = [(CKMacRecipientsController *)self toField];
      labelView2 = [toField3 labelView];
      [labelView2 setHidden:1];
    }
  }

  toField4 = [(CKMacRecipientsController *)self toField];
  addButton = [toField4 addButton];
  [addButton setHidden:1];

  toField5 = [(CKMacRecipientsController *)self toField];
  [toField5 setSeparatorHidden:1];

  toField6 = [(CKMacRecipientsController *)self toField];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [toField6 setBackgroundColor:clearColor2];

  toField7 = [(CKMacRecipientsController *)self toField];
  [toField7 setDelegate:self];

  toField8 = [(CKMacRecipientsController *)self toField];
  [toField8 setExpandRecipientsInNamedGroups:0];

  toField9 = [(CKMacRecipientsController *)self toField];
  [toField9 setShowsAddButtonWhenExpanded:0];

  toField10 = [(CKMacRecipientsController *)self toField];
  [toField10 setUsingActiveAppearance:1];

  toField11 = [(CKMacRecipientsController *)self toField];
  textView = [toField11 textView];
  [textView setEditable:0];

  toField12 = [(CKMacRecipientsController *)self toField];
  textView2 = [toField12 textView];
  [textView2 setSelectable:0];

  [(CKMacRecipientsController *)self _updateToFieldFrame];
  toFieldScrollView9 = [(CKMacRecipientsController *)self toFieldScrollView];
  toField13 = [(CKMacRecipientsController *)self toField];
  [toFieldScrollView9 addSubview:toField13];

  v49 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CKMacRecipientsController *)self detailsToolbarItemFrame];
  v50 = [v49 initWithFrame:?];
  [(CKMacRecipientsController *)self setDetailsPopoverPresentationSourceView:v50];

  detailsPopoverPresentationSourceView = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView setBackgroundColor:0];

  detailsPopoverPresentationSourceView2 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView2 setOpaque:0];

  detailsPopoverPresentationSourceView3 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView3 setUserInteractionEnabled:0];

  view6 = [(CKMacRecipientsController *)self view];
  detailsPopoverPresentationSourceView4 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [view6 addSubview:detailsPopoverPresentationSourceView4];

  [(CKMacRecipientsController *)self refreshRecipients];
  view7 = [(CKMacRecipientsController *)self view];
  [view7 setUserInteractionEnabled:1];
}

void __37__CKMacRecipientsController_loadView__block_invoke()
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E69DB648];
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 navbarToLabelFont];
  v16[0] = v1;
  v15[1] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E69DC888] grayColor];
  v16[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = loadView_attributes_0;
  loadView_attributes_0 = v3;

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"TO" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v5 initWithString:v7 attributes:loadView_attributes_0];
  v9 = loadView_toText_0;
  loadView_toText_0 = v8;

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"No Recipients" value:&stru_1F04268F8 table:@"ChatKit"];
  v13 = [v10 initWithString:v12 attributes:loadView_attributes_0];
  v14 = loadView_placeHolderText_0;
  loadView_placeHolderText_0 = v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CKMacRecipientsController;
  [(CKMacRecipientsController *)&v5 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleConversationPreferredServiceDidChangeNotification_ name:@"CKConversationPreferredServiceChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleAddressBookChangedNotification_ name:*MEMORY[0x1E69A6828] object:0];
  [defaultCenter addObserver:self selector:sel__handleAddressBookPartialChangedNotification_ name:*MEMORY[0x1E69A6838] object:0];
  [defaultCenter addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];
  v4 = [[CKManualUpdater alloc] initWithTarget:self action:sel__reloadCurrentRecipientData];
  [(CKMacRecipientsController *)self setAddressBookNotificationUpdater:v4];
}

- (void)viewWillLayoutSubviews
{
  [(CKMacRecipientsController *)self _updateToFieldFrame];
  [(CKMacRecipientsController *)self detailsToolbarItemFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  detailsPopoverPresentationSourceView = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [detailsPopoverPresentationSourceView frame];
  v31.origin.x = v12;
  v31.origin.y = v13;
  v31.size.width = v14;
  v31.size.height = v15;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v16 = CGRectEqualToRect(v30, v31);

  if (!v16)
  {
    detailsPopoverPresentationSourceView2 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
    [detailsPopoverPresentationSourceView2 setFrame:{v4, v6, v8, v10}];
  }

  if (CKIsRunningInMacCatalyst())
  {
    toField = [(CKMacRecipientsController *)self toField];
    [toField frame];
    v20 = v19;
    toField2 = [(CKMacRecipientsController *)self toField];
    [toField2 frame];
    v23 = v22 + 8.0;
    toFieldScrollView = [(CKMacRecipientsController *)self toFieldScrollView];
    [toFieldScrollView setContentSize:{v20, v23}];

    _shouldEnableScrolling = [(CKMacRecipientsController *)self _shouldEnableScrolling];
    toFieldScrollView2 = [(CKMacRecipientsController *)self toFieldScrollView];
    [toFieldScrollView2 setScrollEnabled:_shouldEnableScrolling];

    _shouldEnableScrolling2 = [(CKMacRecipientsController *)self _shouldEnableScrolling];
    toFieldScrollView3 = [(CKMacRecipientsController *)self toFieldScrollView];
    [toFieldScrollView3 setShowsVerticalScrollIndicator:_shouldEnableScrolling2];
  }
}

- (void)setConversation:(id)conversation
{
  obj = conversation;
  WeakRetained = objc_loadWeakRetained(&self->_conversation);

  v5 = obj;
  if (WeakRetained != obj)
  {
    [(CKMacRecipientsController *)self reset];
    objc_storeWeak(&self->_conversation, obj);
    if (obj)
    {
      v6 = [[CKDetailsContactsManager alloc] initWithConversation:obj delegate:self];
      contactsManager = self->_contactsManager;
      self->_contactsManager = v6;

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

      if (isKeyTransparencyEnabled)
      {
        chat = [obj chat];
        [chat fetchKTStatus];
      }
    }

    [(CKMacRecipientsController *)self refreshRecipients];
    v5 = obj;
  }
}

- (void)refreshRecipients
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  [(CKMacRecipientsController *)self reset];
  array = [MEMORY[0x1E695DF70] array];
  conversation = [(CKMacRecipientsController *)selfCopy conversation];

  if (conversation)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = selfCopy;
    conversation2 = [(CKMacRecipientsController *)selfCopy conversation];
    recipients = [conversation2 recipients];

    v7 = [recipients countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        v10 = 0;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(recipients);
          }

          defaultIMHandle = [*(*(&v27 + 1) + 8 * v10) defaultIMHandle];
          v12 = defaultIMHandle;
          if (defaultIMHandle)
          {
            normalizedID = [defaultIMHandle normalizedID];
            if (CKIsValidAddress(normalizedID))
            {
              v14 = +[CKRecipientGenerator sharedRecipientGenerator];
              v15 = [v14 recipientWithAddress:normalizedID];

              if (v15)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  conversation3 = [(CKMacRecipientsController *)v26 conversation];
                  [v15 setUseAbbreviatedDisplayName:{objc_msgSend(conversation3, "isGroupConversation")}];
                }

                [array addObject:v15];
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [recipients countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    selfCopy = v26;
  }

  if ([array count])
  {
    conversation4 = [(CKMacRecipientsController *)selfCopy conversation];
    if ([conversation4 isGroupConversation])
    {
      conversation5 = [(CKMacRecipientsController *)selfCopy conversation];
      hasDisplayName = [conversation5 hasDisplayName];

      if (!hasDisplayName)
      {
LABEL_23:
        [(CKMacRecipientsController *)selfCopy addRecipients:array];
        goto LABEL_24;
      }

      v20 = objc_alloc(MEMORY[0x1E6996418]);
      conversation6 = [(CKMacRecipientsController *)selfCopy conversation];
      displayName = [conversation6 displayName];
      conversation4 = [v20 initWithChildren:array displayString:displayName];

      v23 = MEMORY[0x1E695DF70];
      v31 = conversation4;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      v25 = [v23 arrayWithArray:v24];

      array = v25;
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (CGRect)detailsToolbarItemFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 macNSToolbarItemSize];
  v5 = v4;
  v7 = v6;

  view = [(CKMacRecipientsController *)self view];
  [view frame];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macAppKitToolbarHeight];
  v13 = v12;

  view2 = [(CKMacRecipientsController *)self view];
  LODWORD(v11) = [view2 _shouldReverseLayoutDirection];

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 macNSToolbarItemInterItemSpacing];
  v17 = v16;

  v18 = v10 - v17 - v5;
  if (v11)
  {
    v18 = v17;
  }

  v19 = v13 * 0.5 - v7 * 0.5;
  v20 = v5;
  v21 = v7;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)faceTimeStartOrLaunchCallToolbarItemFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 macNSToolbarItemSize];
  v5 = v4;
  v7 = v6;

  view = [(CKMacRecipientsController *)self view];
  [view frame];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macAppKitToolbarHeight];
  v13 = v12;

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 macNSToolbarItemInterItemSpacing];
  v16 = v15;

  v17 = v5 + v5 + v16 * 2.0;
  view2 = [(CKMacRecipientsController *)self view];
  LODWORD(v14) = [view2 _shouldReverseLayoutDirection];

  v19 = v10 - v17;
  if (v14)
  {
    v19 = v17;
  }

  v20 = v13 * 0.5 - v7 * 0.5;
  v21 = v5;
  v22 = v7;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)faceTimeJoinCallToolbarItemFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 macNSToolbarItemSize];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 macJoinFaceTimeNSToolbarItemSize];
  v8 = v7;
  v10 = v9;

  view = [(CKMacRecipientsController *)self view];
  [view frame];
  v13 = v12;

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 macAppKitToolbarHeight];
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 macNSToolbarItemInterItemSpacing];
  v19 = v18;

  v20 = v8 + v5 + v19 * 2.0;
  view2 = [(CKMacRecipientsController *)self view];
  LODWORD(v17) = [view2 _shouldReverseLayoutDirection];

  v22 = v13 - v20;
  if (v17)
  {
    v22 = v20;
  }

  v23 = v16 * 0.5 - v10 * 0.5;
  v24 = v8;
  v25 = v10;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)innermostToolbarItemFrame
{
  delegate = [(CKMacRecipientsController *)self delegate];
  innermostToolbarItemIdentifier = [delegate innermostToolbarItemIdentifier];
  v5 = innermostToolbarItemIdentifier;
  if (innermostToolbarItemIdentifier)
  {
    v6 = innermostToolbarItemIdentifier;
  }

  else
  {
    v6 = @"CKMacToolbarChatDetailsItemIdentifier";
  }

  v7 = v6;

  if (![(__CFString *)v7 isEqualToString:@"CKMacToolbarChatDetailsItemIdentifier"])
  {
    if (([(__CFString *)v7 isEqualToString:@"CKMacToolbarFacetimeStartCallItemIdentifier"]& 1) != 0 || [(__CFString *)v7 isEqualToString:@"CKMacToolbarFacetimeJoinedCallItemIdentifier"])
    {
      [(CKMacRecipientsController *)self faceTimeStartOrLaunchCallToolbarItemFrame];
      goto LABEL_9;
    }

    if ([(__CFString *)v7 isEqualToString:@"CKMacToolbarFacetimeJoinCallItemIdentifier"])
    {
      [(CKMacRecipientsController *)self faceTimeJoinCallToolbarItemFrame];
      goto LABEL_9;
    }
  }

  [(CKMacRecipientsController *)self detailsToolbarItemFrame];
LABEL_9:
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_updateToFieldFrame
{
  view = [(CKMacRecipientsController *)self view];
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

  [(CKMacRecipientsController *)self innermostToolbarItemFrame];
  v6 = v5;
  v44 = v7;
  v45 = v8;
  rect = v9;
  view2 = [(CKMacRecipientsController *)self view];
  [view2 frame];
  v43 = v11;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 toFieldScrollViewInsets];
  v14 = v13;
  v16 = v15;

  [(CKMacRecipientsController *)self _fieldContainerHeightForNumberOfRows:[(CKMacRecipientsController *)self numberOfRowsInToField]];
  v18 = v17;
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 toFieldXOffset];
  v21 = v20;

  labelView = [(CNComposeRecipientTextView *)self->_toField labelView];
  [labelView sizeToFit];

  toField = self->_toField;
  labelView2 = [(CNComposeRecipientTextView *)toField labelView];
  [labelView2 frame];
  [(CNComposeRecipientTextView *)toField convertRect:self->_toField toView:?];

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 toFieldPreferredHeight];

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 toFieldYOffset];
  traitCollection = [(CKMacRecipientsController *)self traitCollection];
  [traitCollection displayScale];
  UIRoundToScale();
  v29 = v28;

  if (_shouldReverseLayoutDirection)
  {
    v48.origin.x = v6;
    v48.origin.y = v44;
    v48.size.height = v45;
    v48.size.width = rect;
    MaxX = CGRectGetMaxX(v48);
    v6 = v43 - MaxX;
  }

  else
  {
    MaxX = v14 + v21;
    v16 = v14;
  }

  v31 = v6 - v21 - v16;
  view3 = [(CKMacRecipientsController *)self view];
  traitCollection2 = [view3 traitCollection];
  [traitCollection2 displayScale];
  v35 = round(MaxX * v34) / v34;
  v36 = round(v29 * v34) / v34;
  v37 = round(v31 * v34) / v34;
  v38 = round(v18 * v34) / v34;

  [(CNComposeRecipientTextView *)self->_toField frame];
  v50.origin.x = v39;
  v50.origin.y = v40;
  v50.size.width = v41;
  v50.size.height = v42;
  v49.origin.x = v35;
  v49.origin.y = v36;
  v49.size.width = v37;
  v49.size.height = v38;
  if (!CGRectEqualToRect(v49, v50))
  {
    [(CNComposeRecipientTextView *)self->_toField setFrame:v35, v36, v37, v38];
  }

  [(CKMacRecipientsController *)self _notifyDelegatesToFieldHeightHasChanged];
}

- (void)_reloadCurrentRecipientData
{
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  recipients = [(CKMacRecipientsController *)self recipients];
  v4 = [recipients copy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v5 = *v34;
    v24 = *v34;
    v25 = selfCopy;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        toField = [(CKMacRecipientsController *)selfCopy toField];
        [toField removeRecipient:v7];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 children], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
        {
          array = [MEMORY[0x1E695DF70] array];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v27 = v7;
          children = [v7 children];
          v12 = [children countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            do
            {
              v15 = 0;
              do
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(children);
                }

                v16 = *(*(&v29 + 1) + 8 * v15);
                v17 = +[CKRecipientGenerator sharedRecipientGenerator];
                normalizedAddress = [v16 normalizedAddress];
                v19 = [v17 recipientWithAddress:normalizedAddress];

                if (v19)
                {
                  [array addObject:v19];
                }

                ++v15;
              }

              while (v13 != v15);
              v13 = [children countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v13);
          }

          v20 = objc_alloc(MEMORY[0x1E6996418]);
          displayString = [v27 displayString];
          v22 = [v20 initWithChildren:array displayString:displayString];
          v5 = v24;
          selfCopy = v25;
        }

        else
        {
          array = +[CKRecipientGenerator sharedRecipientGenerator];
          displayString = [v7 normalizedAddress];
          v22 = [array recipientWithAddress:displayString];
        }

        toField2 = [(CKMacRecipientsController *)selfCopy toField];
        [toField2 addRecipient:v22];

        ++v6;
      }

      while (v6 != v28);
      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  [(CKMacRecipientsController *)selfCopy _notifyDelegatesToFieldHeightHasChanged];
}

- (id)recipients
{
  toField = [(CKMacRecipientsController *)self toField];
  recipients = [toField recipients];

  return recipients;
}

- (void)addRecipients:(id)recipients
{
  v18 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v5 = recipientsCopy;
  if (recipientsCopy && [recipientsCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          toField = [(CKMacRecipientsController *)self toField];
          [toField addRecipient:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(CKMacRecipientsController *)self updateScreenTimePolicy];
  }

  [(CKMacRecipientsController *)self _notifyDelegatesToFieldHeightHasChanged];
}

- (void)reset
{
  toField = [(CKMacRecipientsController *)self toField];
  recipients = [toField recipients];
  v5 = [recipients count];

  if (v5)
  {
    toField2 = [(CKMacRecipientsController *)self toField];
    array = [MEMORY[0x1E695DEC8] array];
    [toField2 setRecipients:array];

    toField3 = [(CKMacRecipientsController *)self toField];
    array2 = [MEMORY[0x1E695DEC8] array];
    [toField3 setAddresses:array2];

    toField4 = [(CKMacRecipientsController *)self toField];
    [toField4 clearText];
  }
}

- (void)_notifyDelegatesToFieldHeightHasChanged
{
  numberOfRowsInToField = [(CKMacRecipientsController *)self numberOfRowsInToField];
  toField = [(CKMacRecipientsController *)self toField];
  numberOfRowsOfTextInField = [toField numberOfRowsOfTextInField];

  if (numberOfRowsInToField != numberOfRowsOfTextInField)
  {
    toField2 = [(CKMacRecipientsController *)self toField];
    -[CKMacRecipientsController setNumberOfRowsInToField:](self, "setNumberOfRowsInToField:", [toField2 numberOfRowsOfTextInField]);

    delegate = [(CKMacRecipientsController *)self delegate];
    [delegate macRecipientsControllerDidUpdateToFieldSizing:self];
  }
}

- (void)_handleAddressBookChangedNotification:(id)notification
{
  addressBookNotificationUpdater = [(CKMacRecipientsController *)self addressBookNotificationUpdater];
  [addressBookNotificationUpdater setNeedsUpdate];

  addressBookNotificationUpdater2 = [(CKMacRecipientsController *)self addressBookNotificationUpdater];
  [addressBookNotificationUpdater2 updateIfNeeded];
}

- (void)_handleAddressBookPartialChangedNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6868]];

  if ([v6 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    recipients = [(CKMacRecipientsController *)self recipients];
    v8 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(recipients);
          }

          normalizedAddress = [*(*(&v14 + 1) + 8 * i) normalizedAddress];
          v13 = [v6 isEqualToString:normalizedAddress];

          if (v13)
          {
            [(CKMacRecipientsController *)self _handleAddressBookChangedNotification:notificationCopy];
            goto LABEL_12;
          }
        }

        v9 = [recipients countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_handleConversationPreferredServiceDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  conversation = [(CKMacRecipientsController *)self conversation];
  object = [notificationCopy object];

  LODWORD(notificationCopy) = [conversation isEqual:object];
  if (notificationCopy)
  {
    toField = [(CKMacRecipientsController *)self toField];
    [toField invalidateAtomPresentationOptions];
  }
}

- (unint64_t)_atomPresentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  address = [recipientCopy address];

  if (address)
  {
    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      currentConversationContext = [(CKMacRecipientsController *)self currentConversationContext];

      if (currentConversationContext)
      {
        currentConversationContext2 = [(CKMacRecipientsController *)self currentConversationContext];
        allowedByContactsHandle = [currentConversationContext2 allowedByContactsHandle];
        normalizedAddress = [recipientCopy normalizedAddress];
        v10 = [allowedByContactsHandle objectForKey:normalizedAddress];

        if (v10 && ![v10 BOOLValue])
        {

          v21 = 0x2000;
          goto LABEL_18;
        }
      }
    }

    conversation = [(CKMacRecipientsController *)self conversation];

    if (conversation)
    {
      conversation2 = [(CKMacRecipientsController *)self conversation];
      sendingService = [conversation2 sendingService];
      iMessageService = [MEMORY[0x1E69A5C90] iMessageService];

      if (sendingService == iMessageService)
      {
        v21 = 0;
        goto LABEL_18;
      }

      conversation3 = [(CKMacRecipientsController *)self conversation];
      sendingService2 = [conversation3 sendingService];
      if (sendingService2)
      {
        v17 = sendingService2;
        conversation4 = [(CKMacRecipientsController *)self conversation];
        sendingService3 = [conversation4 sendingService];
        facetimeService = [MEMORY[0x1E69A5C90] facetimeService];

        if (sendingService3 != facetimeService)
        {
          v21 = 2;
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v21 = 1;
    goto LABEL_18;
  }

  v22 = IMLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Recipient address is nil. Set atom state to pending...", v24, 2u);
  }

  v21 = 4;
LABEL_18:

  return v21;
}

- (BOOL)shouldShowVerifiedIconForRecipient:(id)recipient
{
  recipientCopy = recipient;
  conversation = [(CKMacRecipientsController *)self conversation];
  chat = [conversation chat];
  v7 = [CKContactKeyVerificationRecipientsHelper shouldShowVerifiedIconForRecipient:recipientCopy inChat:chat];

  return v7;
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification
{
  v24 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isKeyTransparencyEnabled = [mEMORY[0x1E69A8070] isKeyTransparencyEnabled];

  if (isKeyTransparencyEnabled)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKey:*MEMORY[0x1E69A5800]];

    recipients = [(CKMacRecipientsController *)self recipients];
    conversation = [(CKMacRecipientsController *)self conversation];
    v11 = [CKContactKeyVerificationRecipientsHelper recipientsToUpdateForUpdatedCKVHandles:v8 recipients:recipients inConversation:conversation];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          toField = [(CKMacRecipientsController *)self toField];
          [toField invalidateAtomPresentationOptionsForRecipient:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (id)composeRecipientView:(id)view contextMenuConfigurationForAtom:(id)atom
{
  v46 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  atomCopy = atom;
  toField = [(CKMacRecipientsController *)self toField];

  if (toField != viewCopy)
  {
    goto LABEL_2;
  }

  recipient = [atomCopy recipient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = atomCopy;
    recipient2 = [atomCopy recipient];
    children = [recipient2 children];

    v16 = [children countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(children);
          }

          normalizedAddress = [*(*(&v41 + 1) + 8 * i) normalizedAddress];
          v21 = [CKEntity entityForAddress:normalizedAddress];
          [array addObject:v21];
        }

        v17 = [children countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v17);
    }

    conversation = [(CKMacRecipientsController *)self conversation];
    recipients = [conversation recipients];
    v24 = [recipients isEqualToArray:array];

    if (v24)
    {
      conversation2 = [(CKMacRecipientsController *)self conversation];
      contactsManager = [(CKMacRecipientsController *)self contactsManager];
      v9 = [CKContextMenuGenerator menuForNamedGroupConversation:conversation2 andContactsManager:contactsManager];
    }

    else
    {
      v9 = 0;
    }

    atomCopy = v38;
  }

  else
  {
    contactsManager2 = [(CKMacRecipientsController *)self contactsManager];
    v28 = [contactsManager2 conformsToProtocol:&unk_1F06794C0];

    if (!v28 || ([atomCopy recipient], (v29 = objc_claimAutoreleasedReturnValue()) == 0) || (v30 = v29, objc_msgSend(atomCopy, "recipient"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "normalizedAddress"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v30, !v32))
    {
LABEL_2:
      v9 = 0;
      goto LABEL_3;
    }

    recipient3 = [atomCopy recipient];
    normalizedAddress2 = [recipient3 normalizedAddress];
    array = [CKEntity entityForAddress:normalizedAddress2];

    contactsManager3 = [(CKMacRecipientsController *)self contactsManager];
    v9 = [contactsManager3 contextMenuForEntity:array atom:atomCopy];
  }

  if (v9)
  {
    v36 = MEMORY[0x1E69DC8D8];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __82__CKMacRecipientsController_composeRecipientView_contextMenuConfigurationForAtom___block_invoke;
    v39[3] = &unk_1E72EC178;
    v40 = v9;
    v37 = v9;
    v9 = [v36 configurationWithIdentifier:0 previewProvider:0 actionProvider:v39];
  }

LABEL_3:

  return v9;
}

- (void)composeRecipientView:(id)view disambiguateRecipientForAtom:(id)atom
{
  atomCopy = atom;
  if (CKIsRunningInMacCatalyst())
  {
    recipient = [atomCopy recipient];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      recipient2 = [atomCopy recipient];
      normalizedAddress = [recipient2 normalizedAddress];
      v9 = [CKEntity entityForAddress:normalizedAddress];

      conversation = [(CKMacRecipientsController *)self conversation];
      LODWORD(normalizedAddress) = [conversation isGroupConversation];

      if (normalizedAddress)
      {
        v11 = MEMORY[0x1E696AEC0];
        defaultIMHandle = [v9 defaultIMHandle];
        v13 = [defaultIMHandle ID];
        v14 = [v11 stringWithFormat:@"messages://open?addresses=%@", v13];

        v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        [mEMORY[0x1E69DC668] openURL:v15 options:MEMORY[0x1E695E0F8] completionHandler:0];
      }

      else
      {
        [(CKMacRecipientsController *)self _showContactCardForEntity:v9 sourceView:atomCopy];
      }
    }
  }
}

- (void)_showContactCardForEntity:(id)entity sourceView:(id)view
{
  rawAddress = [entity rawAddress];
  v13 = IMStripFormattingFromAddress();

  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  v6 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddress:v13];
  v7 = [v6 imHandleWithID:v13 alreadyCanonical:0];

  v8 = [v7 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (CKIsRunningInMacCatalyst() && [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v8])
  {
    v9 = [MEMORY[0x1E696AD60] stringWithString:@"addressbook://"];
    identifier = [v8 identifier];
    [v9 appendString:identifier];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    [mEMORY[0x1E69DC668] openURL:v12 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }
}

- (id)handlesForScreenTimePolicyCheck
{
  v18 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v3 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    toField = [(CKMacRecipientsController *)self toField];
    recipients = [toField recipients];

    v6 = [recipients countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(recipients);
          }

          normalizedAddress = [*(*(&v13 + 1) + 8 * i) normalizedAddress];
          if (normalizedAddress)
          {
            [v3 addObject:normalizedAddress];
          }
        }

        v7 = [recipients countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v3 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateScreenTimePolicy
{
  currentConversationContext = [(CKMacRecipientsController *)self currentConversationContext];

  if (currentConversationContext)
  {
    currentConversationContext2 = [(CKMacRecipientsController *)self currentConversationContext];
    [currentConversationContext2 removeObserver:self forKeyPath:@"allowedByScreenTime"];

    [(CKMacRecipientsController *)self setCurrentConversationContext:0];
  }

  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    handlesForScreenTimePolicyCheck = [(CKMacRecipientsController *)self handlesForScreenTimePolicyCheck];
    mEMORY[0x1E69A5B68] = [MEMORY[0x1E69A5B68] sharedInstance];
    v11 = 0;
    v7 = [mEMORY[0x1E69A5B68] allowedToShowConversationWithHandleIDs:handlesForScreenTimePolicyCheck sync:1 context:&v11];
    v8 = v11;

    [(CKMacRecipientsController *)self setCurrentConversationContext:v8];
    if (v7 != [(CKMacRecipientsController *)self allowedByScreenTime])
    {
      toField = [(CKMacRecipientsController *)self toField];
      [toField invalidateAtomPresentationOptions];
    }

    [(CKMacRecipientsController *)self setAllowedByScreenTime:v7];
    currentConversationContext3 = [(CKMacRecipientsController *)self currentConversationContext];
    [currentConversationContext3 addObserver:self forKeyPath:@"allowedByScreenTime" options:1 context:ctxAllowedByScreenTime_0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v11 = objectCopy;
  if (ctxAllowedByScreenTime_0 == context)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__CKMacRecipientsController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E72EB8D0;
    v14 = objectCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKMacRecipientsController;
    [(CKMacRecipientsController *)&v12 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

void __76__CKMacRecipientsController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) setAllowedByScreenTime:{objc_msgSend(v2, "allowedByScreenTime")}];
  v3 = [*(a1 + 40) toField];

  [v3 invalidateAtomPresentationOptions];
}

- (CKConversation)conversation
{
  WeakRetained = objc_loadWeakRetained(&self->_conversation);

  return WeakRetained;
}

- (CKMacRecipientsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end