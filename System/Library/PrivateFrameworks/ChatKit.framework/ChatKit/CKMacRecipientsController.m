@interface CKMacRecipientsController
- (BOOL)shouldShowVerifiedIconForRecipient:(id)a3;
- (CGRect)detailsToolbarItemFrame;
- (CGRect)faceTimeJoinCallToolbarItemFrame;
- (CGRect)faceTimeStartOrLaunchCallToolbarItemFrame;
- (CGRect)innermostToolbarItemFrame;
- (CKConversation)conversation;
- (CKMacRecipientsController)initWithConversation:(id)a3;
- (CKMacRecipientsControllerDelegate)delegate;
- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)a3;
- (double)preferredMacToolbarHeight;
- (id)composeRecipientView:(id)a3 contextMenuConfigurationForAtom:(id)a4;
- (id)handlesForScreenTimePolicyCheck;
- (id)recipients;
- (unint64_t)_atomPresentationOptionsForRecipient:(id)a3;
- (void)_handleAddressBookChangedNotification:(id)a3;
- (void)_handleAddressBookPartialChangedNotification:(id)a3;
- (void)_handleConversationPreferredServiceDidChangeNotification:(id)a3;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3;
- (void)_notifyDelegatesToFieldHeightHasChanged;
- (void)_reloadCurrentRecipientData;
- (void)_showContactCardForEntity:(id)a3 sourceView:(id)a4;
- (void)_updateToFieldFrame;
- (void)addRecipients:(id)a3;
- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refreshRecipients;
- (void)reset;
- (void)setConversation:(id)a3;
- (void)updateScreenTimePolicy;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CKMacRecipientsController

- (void)dealloc
{
  v3 = [(CKMacRecipientsController *)self currentConversationContext];

  if (v3)
  {
    v4 = [(CKMacRecipientsController *)self currentConversationContext];
    [v4 removeObserver:self forKeyPath:@"allowedByScreenTime"];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6 = [(CKMacRecipientsController *)self toField];
  [v6 setDelegate:0];

  self->_numberOfRowsInToField = 1;
  v7.receiver = self;
  v7.super_class = CKMacRecipientsController;
  [(CKMacRecipientsController *)&v7 dealloc];
}

- (CKMacRecipientsController)initWithConversation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKMacRecipientsController;
  v5 = [(CKMacRecipientsController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_conversation, v4);
    if (v4)
    {
      v7 = [[CKDetailsContactsManager alloc] initWithConversation:v4 delegate:v6];
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
  v3 = [(CKMacRecipientsController *)self toField];
  v4 = [v3 numberOfRowsOfTextInField];
  v5 = [(CKMacRecipientsController *)self numberOfRowsInToField];

  if (v4 != v5)
  {
    v6 = [(CKMacRecipientsController *)self toField];
    -[CKMacRecipientsController setNumberOfRowsInToField:](self, "setNumberOfRowsInToField:", [v6 numberOfRowsOfTextInField]);
  }

  if ([(CKMacRecipientsController *)self numberOfRowsInToField]< 2 || [(CKMacRecipientsController *)self numberOfRowsInToField]> 3)
  {
    if ([(CKMacRecipientsController *)self numberOfRowsInToField]<= 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = [(CKMacRecipientsController *)self numberOfRowsInToField];
  }

  [(CKMacRecipientsController *)self _fieldContainerHeightForNumberOfRows:v7];
  return result;
}

- (double)_fieldContainerHeightForNumberOfRows:(unint64_t)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 macAppKitToolbarHeight];
  v6 = v5;
  if (a3 >= 2)
  {
    v7 = (a3 - 1);
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
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(CKMacRecipientsController *)self setView:v5];

  v6 = [(CKMacRecipientsController *)self view];
  [v6 setAutoresizingMask:18];

  v7 = [(CKMacRecipientsController *)self view];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [(CKMacRecipientsController *)self view];
  [v9 setClipsToBounds:1];

  v10 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v11 = [(CKMacRecipientsController *)self view];
  [v11 bounds];
  v12 = [v10 initWithFrame:?];
  [(CKMacRecipientsController *)self setToFieldScrollView:v12];

  v13 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v13 setAutoresizingMask:18];

  v14 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v14 setAlwaysBounceVertical:1];

  v15 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v16 setAutomaticallyAdjustsScrollIndicatorInsets:0];

  v17 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v17 setContentInsetAdjustmentBehavior:2];

  v18 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v18 setScrollEnabled:0];

  v19 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v19 setShowsVerticalScrollIndicator:0];

  v20 = [(CKMacRecipientsController *)self view];
  v21 = [(CKMacRecipientsController *)self toFieldScrollView];
  [v20 addSubview:v21];

  v22 = objc_alloc(MEMORY[0x1E6996428]);
  v23 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  toField = self->_toField;
  self->_toField = v23;

  v25 = [(CKMacRecipientsController *)self toField];
  [v25 setAutoresizingMask:18];

  if (loadView_onceToken_0 != -1)
  {
    [CKMacRecipientsController loadView];
  }

  v26 = [(CKMacRecipientsController *)self toField];
  v27 = [v26 labelView];
  [v27 setAttributedText:loadView_toText_0];

  v28 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v27) = [v28 isTranscriptSharingEnabled];

  if (v27)
  {
    v29 = [(CKMacRecipientsController *)self conversation];
    v30 = [v29 chat];
    v31 = [v30 isStewieSharingChat];

    if (v31)
    {
      v32 = [(CKMacRecipientsController *)self toField];
      v33 = [v32 labelView];
      [v33 setHidden:1];
    }
  }

  v34 = [(CKMacRecipientsController *)self toField];
  v35 = [v34 addButton];
  [v35 setHidden:1];

  v36 = [(CKMacRecipientsController *)self toField];
  [v36 setSeparatorHidden:1];

  v37 = [(CKMacRecipientsController *)self toField];
  v38 = [MEMORY[0x1E69DC888] clearColor];
  [v37 setBackgroundColor:v38];

  v39 = [(CKMacRecipientsController *)self toField];
  [v39 setDelegate:self];

  v40 = [(CKMacRecipientsController *)self toField];
  [v40 setExpandRecipientsInNamedGroups:0];

  v41 = [(CKMacRecipientsController *)self toField];
  [v41 setShowsAddButtonWhenExpanded:0];

  v42 = [(CKMacRecipientsController *)self toField];
  [v42 setUsingActiveAppearance:1];

  v43 = [(CKMacRecipientsController *)self toField];
  v44 = [v43 textView];
  [v44 setEditable:0];

  v45 = [(CKMacRecipientsController *)self toField];
  v46 = [v45 textView];
  [v46 setSelectable:0];

  [(CKMacRecipientsController *)self _updateToFieldFrame];
  v47 = [(CKMacRecipientsController *)self toFieldScrollView];
  v48 = [(CKMacRecipientsController *)self toField];
  [v47 addSubview:v48];

  v49 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CKMacRecipientsController *)self detailsToolbarItemFrame];
  v50 = [v49 initWithFrame:?];
  [(CKMacRecipientsController *)self setDetailsPopoverPresentationSourceView:v50];

  v51 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [v51 setBackgroundColor:0];

  v52 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [v52 setOpaque:0];

  v53 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [v53 setUserInteractionEnabled:0];

  v54 = [(CKMacRecipientsController *)self view];
  v55 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [v54 addSubview:v55];

  [(CKMacRecipientsController *)self refreshRecipients];
  v56 = [(CKMacRecipientsController *)self view];
  [v56 setUserInteractionEnabled:1];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleConversationPreferredServiceDidChangeNotification_ name:@"CKConversationPreferredServiceChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handleAddressBookChangedNotification_ name:*MEMORY[0x1E69A6828] object:0];
  [v3 addObserver:self selector:sel__handleAddressBookPartialChangedNotification_ name:*MEMORY[0x1E69A6838] object:0];
  [v3 addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];
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
  v11 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
  [v11 frame];
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
    v17 = [(CKMacRecipientsController *)self detailsPopoverPresentationSourceView];
    [v17 setFrame:{v4, v6, v8, v10}];
  }

  if (CKIsRunningInMacCatalyst())
  {
    v18 = [(CKMacRecipientsController *)self toField];
    [v18 frame];
    v20 = v19;
    v21 = [(CKMacRecipientsController *)self toField];
    [v21 frame];
    v23 = v22 + 8.0;
    v24 = [(CKMacRecipientsController *)self toFieldScrollView];
    [v24 setContentSize:{v20, v23}];

    v25 = [(CKMacRecipientsController *)self _shouldEnableScrolling];
    v26 = [(CKMacRecipientsController *)self toFieldScrollView];
    [v26 setScrollEnabled:v25];

    v27 = [(CKMacRecipientsController *)self _shouldEnableScrolling];
    v28 = [(CKMacRecipientsController *)self toFieldScrollView];
    [v28 setShowsVerticalScrollIndicator:v27];
  }
}

- (void)setConversation:(id)a3
{
  obj = a3;
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

      v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v9 = [v8 isKeyTransparencyEnabled];

      if (v9)
      {
        v10 = [obj chat];
        [v10 fetchKTStatus];
      }
    }

    [(CKMacRecipientsController *)self refreshRecipients];
    v5 = obj;
  }
}

- (void)refreshRecipients
{
  v2 = self;
  v33 = *MEMORY[0x1E69E9840];
  [(CKMacRecipientsController *)self reset];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CKMacRecipientsController *)v2 conversation];

  if (v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v2;
    v5 = [(CKMacRecipientsController *)v2 conversation];
    v6 = [v5 recipients];

    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v27 + 1) + 8 * v10) defaultIMHandle];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 normalizedID];
            if (CKIsValidAddress(v13))
            {
              v14 = +[CKRecipientGenerator sharedRecipientGenerator];
              v15 = [v14 recipientWithAddress:v13];

              if (v15)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = [(CKMacRecipientsController *)v26 conversation];
                  [v15 setUseAbbreviatedDisplayName:{objc_msgSend(v16, "isGroupConversation")}];
                }

                [v3 addObject:v15];
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    v2 = v26;
  }

  if ([v3 count])
  {
    v17 = [(CKMacRecipientsController *)v2 conversation];
    if ([v17 isGroupConversation])
    {
      v18 = [(CKMacRecipientsController *)v2 conversation];
      v19 = [v18 hasDisplayName];

      if (!v19)
      {
LABEL_23:
        [(CKMacRecipientsController *)v2 addRecipients:v3];
        goto LABEL_24;
      }

      v20 = objc_alloc(MEMORY[0x1E6996418]);
      v21 = [(CKMacRecipientsController *)v2 conversation];
      v22 = [v21 displayName];
      v17 = [v20 initWithChildren:v3 displayString:v22];

      v23 = MEMORY[0x1E695DF70];
      v31 = v17;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      v25 = [v23 arrayWithArray:v24];

      v3 = v25;
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

  v8 = [(CKMacRecipientsController *)self view];
  [v8 frame];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macAppKitToolbarHeight];
  v13 = v12;

  v14 = [(CKMacRecipientsController *)self view];
  LODWORD(v11) = [v14 _shouldReverseLayoutDirection];

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

  v8 = [(CKMacRecipientsController *)self view];
  [v8 frame];
  v10 = v9;

  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 macAppKitToolbarHeight];
  v13 = v12;

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 macNSToolbarItemInterItemSpacing];
  v16 = v15;

  v17 = v5 + v5 + v16 * 2.0;
  v18 = [(CKMacRecipientsController *)self view];
  LODWORD(v14) = [v18 _shouldReverseLayoutDirection];

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

  v11 = [(CKMacRecipientsController *)self view];
  [v11 frame];
  v13 = v12;

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 macAppKitToolbarHeight];
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 macNSToolbarItemInterItemSpacing];
  v19 = v18;

  v20 = v8 + v5 + v19 * 2.0;
  v21 = [(CKMacRecipientsController *)self view];
  LODWORD(v17) = [v21 _shouldReverseLayoutDirection];

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
  v3 = [(CKMacRecipientsController *)self delegate];
  v4 = [v3 innermostToolbarItemIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v3 = [(CKMacRecipientsController *)self view];
  v4 = [v3 _shouldReverseLayoutDirection];

  [(CKMacRecipientsController *)self innermostToolbarItemFrame];
  v6 = v5;
  v44 = v7;
  v45 = v8;
  rect = v9;
  v10 = [(CKMacRecipientsController *)self view];
  [v10 frame];
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

  v22 = [(CNComposeRecipientTextView *)self->_toField labelView];
  [v22 sizeToFit];

  toField = self->_toField;
  v24 = [(CNComposeRecipientTextView *)toField labelView];
  [v24 frame];
  [(CNComposeRecipientTextView *)toField convertRect:self->_toField toView:?];

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 toFieldPreferredHeight];

  v26 = +[CKUIBehavior sharedBehaviors];
  [v26 toFieldYOffset];
  v27 = [(CKMacRecipientsController *)self traitCollection];
  [v27 displayScale];
  UIRoundToScale();
  v29 = v28;

  if (v4)
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
  v32 = [(CKMacRecipientsController *)self view];
  v33 = [v32 traitCollection];
  [v33 displayScale];
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
  v2 = self;
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(CKMacRecipientsController *)self recipients];
  v4 = [v3 copy];

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
    v25 = v2;
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
        v8 = [(CKMacRecipientsController *)v2 toField];
        [v8 removeRecipient:v7];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 children], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
        {
          v10 = [MEMORY[0x1E695DF70] array];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v27 = v7;
          v11 = [v7 children];
          v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * v15);
                v17 = +[CKRecipientGenerator sharedRecipientGenerator];
                v18 = [v16 normalizedAddress];
                v19 = [v17 recipientWithAddress:v18];

                if (v19)
                {
                  [v10 addObject:v19];
                }

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v13);
          }

          v20 = objc_alloc(MEMORY[0x1E6996418]);
          v21 = [v27 displayString];
          v22 = [v20 initWithChildren:v10 displayString:v21];
          v5 = v24;
          v2 = v25;
        }

        else
        {
          v10 = +[CKRecipientGenerator sharedRecipientGenerator];
          v21 = [v7 normalizedAddress];
          v22 = [v10 recipientWithAddress:v21];
        }

        v23 = [(CKMacRecipientsController *)v2 toField];
        [v23 addRecipient:v22];

        ++v6;
      }

      while (v6 != v28);
      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  [(CKMacRecipientsController *)v2 _notifyDelegatesToFieldHeightHasChanged];
}

- (id)recipients
{
  v2 = [(CKMacRecipientsController *)self toField];
  v3 = [v2 recipients];

  return v3;
}

- (void)addRecipients:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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
          v12 = [(CKMacRecipientsController *)self toField];
          [v12 addRecipient:v11];

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
  v3 = [(CKMacRecipientsController *)self toField];
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CKMacRecipientsController *)self toField];
    v7 = [MEMORY[0x1E695DEC8] array];
    [v6 setRecipients:v7];

    v8 = [(CKMacRecipientsController *)self toField];
    v9 = [MEMORY[0x1E695DEC8] array];
    [v8 setAddresses:v9];

    v10 = [(CKMacRecipientsController *)self toField];
    [v10 clearText];
  }
}

- (void)_notifyDelegatesToFieldHeightHasChanged
{
  v3 = [(CKMacRecipientsController *)self numberOfRowsInToField];
  v4 = [(CKMacRecipientsController *)self toField];
  v5 = [v4 numberOfRowsOfTextInField];

  if (v3 != v5)
  {
    v6 = [(CKMacRecipientsController *)self toField];
    -[CKMacRecipientsController setNumberOfRowsInToField:](self, "setNumberOfRowsInToField:", [v6 numberOfRowsOfTextInField]);

    v7 = [(CKMacRecipientsController *)self delegate];
    [v7 macRecipientsControllerDidUpdateToFieldSizing:self];
  }
}

- (void)_handleAddressBookChangedNotification:(id)a3
{
  v4 = [(CKMacRecipientsController *)self addressBookNotificationUpdater];
  [v4 setNeedsUpdate];

  v5 = [(CKMacRecipientsController *)self addressBookNotificationUpdater];
  [v5 updateIfNeeded];
}

- (void)_handleAddressBookPartialChangedNotification:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6868]];

  if ([v6 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(CKMacRecipientsController *)self recipients];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) normalizedAddress];
          v13 = [v6 isEqualToString:v12];

          if (v13)
          {
            [(CKMacRecipientsController *)self _handleAddressBookChangedNotification:v4];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_handleConversationPreferredServiceDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(CKMacRecipientsController *)self conversation];
  v6 = [v4 object];

  LODWORD(v4) = [v5 isEqual:v6];
  if (v4)
  {
    v7 = [(CKMacRecipientsController *)self toField];
    [v7 invalidateAtomPresentationOptions];
  }
}

- (unint64_t)_atomPresentationOptionsForRecipient:(id)a3
{
  v4 = a3;
  v5 = [v4 address];

  if (v5)
  {
    if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
    {
      v6 = [(CKMacRecipientsController *)self currentConversationContext];

      if (v6)
      {
        v7 = [(CKMacRecipientsController *)self currentConversationContext];
        v8 = [v7 allowedByContactsHandle];
        v9 = [v4 normalizedAddress];
        v10 = [v8 objectForKey:v9];

        if (v10 && ![v10 BOOLValue])
        {

          v21 = 0x2000;
          goto LABEL_18;
        }
      }
    }

    v11 = [(CKMacRecipientsController *)self conversation];

    if (v11)
    {
      v12 = [(CKMacRecipientsController *)self conversation];
      v13 = [v12 sendingService];
      v14 = [MEMORY[0x1E69A5C90] iMessageService];

      if (v13 == v14)
      {
        v21 = 0;
        goto LABEL_18;
      }

      v15 = [(CKMacRecipientsController *)self conversation];
      v16 = [v15 sendingService];
      if (v16)
      {
        v17 = v16;
        v18 = [(CKMacRecipientsController *)self conversation];
        v19 = [v18 sendingService];
        v20 = [MEMORY[0x1E69A5C90] facetimeService];

        if (v19 != v20)
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

- (BOOL)shouldShowVerifiedIconForRecipient:(id)a3
{
  v4 = a3;
  v5 = [(CKMacRecipientsController *)self conversation];
  v6 = [v5 chat];
  v7 = [CKContactKeyVerificationRecipientsHelper shouldShowVerifiedIconForRecipient:v4 inChat:v6];

  return v7;
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isKeyTransparencyEnabled];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x1E69A5800]];

    v9 = [(CKMacRecipientsController *)self recipients];
    v10 = [(CKMacRecipientsController *)self conversation];
    v11 = [CKContactKeyVerificationRecipientsHelper recipientsToUpdateForUpdatedCKVHandles:v8 recipients:v9 inConversation:v10];

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
          v18 = [(CKMacRecipientsController *)self toField];
          [v18 invalidateAtomPresentationOptionsForRecipient:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (id)composeRecipientView:(id)a3 contextMenuConfigurationForAtom:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CKMacRecipientsController *)self toField];

  if (v8 != v6)
  {
    goto LABEL_2;
  }

  v11 = [v7 recipient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v7;
    v14 = [v7 recipient];
    v15 = [v14 children];

    v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v41 + 1) + 8 * i) normalizedAddress];
          v21 = [CKEntity entityForAddress:v20];
          [v13 addObject:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v17);
    }

    v22 = [(CKMacRecipientsController *)self conversation];
    v23 = [v22 recipients];
    v24 = [v23 isEqualToArray:v13];

    if (v24)
    {
      v25 = [(CKMacRecipientsController *)self conversation];
      v26 = [(CKMacRecipientsController *)self contactsManager];
      v9 = [CKContextMenuGenerator menuForNamedGroupConversation:v25 andContactsManager:v26];
    }

    else
    {
      v9 = 0;
    }

    v7 = v38;
  }

  else
  {
    v27 = [(CKMacRecipientsController *)self contactsManager];
    v28 = [v27 conformsToProtocol:&unk_1F06794C0];

    if (!v28 || ([v7 recipient], (v29 = objc_claimAutoreleasedReturnValue()) == 0) || (v30 = v29, objc_msgSend(v7, "recipient"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "normalizedAddress"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v30, !v32))
    {
LABEL_2:
      v9 = 0;
      goto LABEL_3;
    }

    v33 = [v7 recipient];
    v34 = [v33 normalizedAddress];
    v13 = [CKEntity entityForAddress:v34];

    v35 = [(CKMacRecipientsController *)self contactsManager];
    v9 = [v35 contextMenuForEntity:v13 atom:v7];
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

- (void)composeRecipientView:(id)a3 disambiguateRecipientForAtom:(id)a4
{
  v17 = a4;
  if (CKIsRunningInMacCatalyst())
  {
    v5 = [v17 recipient];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [v17 recipient];
      v8 = [v7 normalizedAddress];
      v9 = [CKEntity entityForAddress:v8];

      v10 = [(CKMacRecipientsController *)self conversation];
      LODWORD(v8) = [v10 isGroupConversation];

      if (v8)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v9 defaultIMHandle];
        v13 = [v12 ID];
        v14 = [v11 stringWithFormat:@"messages://open?addresses=%@", v13];

        v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
        v16 = [MEMORY[0x1E69DC668] sharedApplication];
        [v16 openURL:v15 options:MEMORY[0x1E695E0F8] completionHandler:0];
      }

      else
      {
        [(CKMacRecipientsController *)self _showContactCardForEntity:v9 sourceView:v17];
      }
    }
  }
}

- (void)_showContactCardForEntity:(id)a3 sourceView:(id)a4
{
  v4 = [a3 rawAddress];
  v13 = IMStripFormattingFromAddress();

  v5 = [MEMORY[0x1E69A5A80] sharedInstance];
  v6 = [v5 __ck_bestAccountForAddress:v13];
  v7 = [v6 imHandleWithID:v13 alreadyCanonical:0];

  v8 = [v7 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (CKIsRunningInMacCatalyst() && [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v8])
  {
    v9 = [MEMORY[0x1E696AD60] stringWithString:@"addressbook://"];
    v10 = [v8 identifier];
    [v9 appendString:v10];

    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    [v11 openURL:v12 options:MEMORY[0x1E695E0F8] completionHandler:0];
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
    v4 = [(CKMacRecipientsController *)self toField];
    v5 = [v4 recipients];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) normalizedAddress];
          if (v10)
          {
            [v3 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(CKMacRecipientsController *)self currentConversationContext];

  if (v3)
  {
    v4 = [(CKMacRecipientsController *)self currentConversationContext];
    [v4 removeObserver:self forKeyPath:@"allowedByScreenTime"];

    [(CKMacRecipientsController *)self setCurrentConversationContext:0];
  }

  if ([MEMORY[0x1E69A5B68] isContactLimitsFeatureEnabled])
  {
    v5 = [(CKMacRecipientsController *)self handlesForScreenTimePolicyCheck];
    v6 = [MEMORY[0x1E69A5B68] sharedInstance];
    v11 = 0;
    v7 = [v6 allowedToShowConversationWithHandleIDs:v5 sync:1 context:&v11];
    v8 = v11;

    [(CKMacRecipientsController *)self setCurrentConversationContext:v8];
    if (v7 != [(CKMacRecipientsController *)self allowedByScreenTime])
    {
      v9 = [(CKMacRecipientsController *)self toField];
      [v9 invalidateAtomPresentationOptions];
    }

    [(CKMacRecipientsController *)self setAllowedByScreenTime:v7];
    v10 = [(CKMacRecipientsController *)self currentConversationContext];
    [v10 addObserver:self forKeyPath:@"allowedByScreenTime" options:1 context:ctxAllowedByScreenTime_0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (ctxAllowedByScreenTime_0 == a6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__CKMacRecipientsController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E72EB8D0;
    v14 = v10;
    v15 = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKMacRecipientsController;
    [(CKMacRecipientsController *)&v12 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
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