@interface CKNavbarCanvasViewController
+ (void)updateFTControlsWithConversation:(id)conversation canvasViewController:(id)controller screenSharingCapabilities:(id)capabilities unifiedCallButton:(id)button;
- (BOOL)_canShowAvatarView;
- (BOOL)_shouldShowFacetimeButton;
- (BOOL)_shouldShowPersistentMenu;
- (BOOL)findMyNavBarEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hideChevron;
- (BOOL)shouldConfigureForJunkModal;
- (BOOL)shouldUseMinimumSafeAreas;
- (BOOL)splitViewControllerIsCollapsed;
- (BOOL)wantsVerifiedIconForTitle:(id)title;
- (CKCanvasBackButtonView)backButtonView;
- (CKDetailsContactsManager)contactsManager;
- (CKLabel)defaultLabel;
- (CKNavBarConversationIdentityView)conversationIdentityView;
- (CKNavBarUnifiedCallButton)unifiedCallButton;
- (CKNavbarCanvasViewController)initWithConversation:(id)conversation navigationController:(id)controller hideLocationIfUnavailable:(BOOL)unavailable;
- (CKNavbarCanvasViewControllerDelegate)delegate;
- (CNContactStore)suggestionsEnabledContactStore;
- (NSDirectionalEdgeInsets)systemMinimumLayoutMarginsForView:(id)view;
- (UIBarButtonItem)detailsBarButton;
- (UIButton)closeButton;
- (UIButton)doneButton;
- (UIButton)editCancelButtonView;
- (UINavigationController)proxyNavigationController;
- (_TtC7ChatKit29CKNavBarPersistentMenuManager)persistentMenuManager;
- (id)_KTTitleIconAttributedString;
- (id)_leftItemViewForTraitCollection:(id)collection;
- (id)_rightItemViewForTraitCollection:(id)collection;
- (id)_titleItemViewForTraitCollection:(id)collection;
- (id)_windowTraitCollection;
- (id)navBarTitleFromConversation:(id)conversation;
- (id)persistentMenuButton;
- (id)recipientContextMenu;
- (int64_t)_unreadCount;
- (void)_addUserDidTapNavigationBarRecognizer:(id)recognizer;
- (void)_buttonPressed:(id)pressed;
- (void)_chatUnreadCountDidChange:(id)change;
- (void)_configureForDefaultMode;
- (void)_configureForEditMode;
- (void)_contactPhotosEnabledChangedNotification:(id)notification;
- (void)_facetimeAudioButtonTapped:(id)tapped;
- (void)_facetimeVideoButtonTapped:(id)tapped;
- (void)_handleAddressBookChange:(id)change;
- (void)_handleAllowedByScreenTimeChatChanged:(id)changed;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification;
- (void)_handlePersistentMenuChangedNotification:(id)notification;
- (void)_handleServiceChangedNotification:(id)notification;
- (void)_infoButtonTapped:(id)tapped;
- (void)_initializeForTraitCollection:(id)collection;
- (void)_notifyDelegateForNavBarResize;
- (void)_refreshIDSStatusWithCompletion:(id)completion;
- (void)_updateFTControls;
- (void)_updateUnreadCountForBackbuttonView:(int64_t)view;
- (void)_userDidTapNavigationBar;
- (void)button:(id)button requestsJoinActiveCallWithVideoEnabled:(BOOL)enabled;
- (void)button:(id)button requestsStartFaceTimeWithScreenShareType:(unint64_t)type;
- (void)buttonRequestsOpenJoinedCall:(id)call;
- (void)buttonRequestsStartFaceTimeAudio:(id)audio;
- (void)buttonRequestsStartFaceTimeVideo:(id)video;
- (void)buttonRequestsStartTelephonyCall:(id)call;
- (void)buttonWidthDidChange:(id)change;
- (void)configureForEditing:(BOOL)editing;
- (void)conversationIdentityViewTapped:(id)tapped;
- (void)dealloc;
- (void)fmfSessionChatLocationReceived:(id)received;
- (void)fmfSessionChatLocationRefreshed:(id)refreshed;
- (void)fmfSessionRelationshipDidChange:(id)change;
- (void)handleCloseNavBarAnimationCompleteNotification:(id)notification;
- (void)loadView;
- (void)persistentMenuManager:(id)manager selectedChipAction:(id)action;
- (void)persistentMenuManager:(id)manager selectedSuggestedReply:(id)reply;
- (void)refreshAudioButtonTargetAction;
- (void)refreshFMFLocationIfNecessary;
- (void)registerNotifications;
- (void)setCanShowBackButtonView:(BOOL)view;
- (void)setDefaultLabelText;
- (void)setDetailsBarButton:(id)button;
- (void)setIndicatorType:(int64_t)type;
- (void)setIsInEditingMode:(BOOL)mode;
- (void)setLocationLabel:(id)label;
- (void)setLocationLabelHidden:(BOOL)hidden;
- (void)setLocationToDisplay:(id)display;
- (void)setNavBarContext:(int64_t)context;
- (void)setUnreadCountTitleColor;
- (void)showContactCardForEntity:(id)entity address:(id)address;
- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)available;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAvatarPickerDelegate;
- (void)updateContentsForConversation:(id)conversation;
- (void)updateDefaultLabelIfNecessary;
- (void)updateForRecoveredJunkConversation;
- (void)updateLeftItemView;
- (void)updateLocationLabel;
- (void)updateLocationLabelParentViewAssignment;
- (void)updateLocationToDisplayWithHandle:(id)handle;
- (void)updateRightItemView;
- (void)updateTitle:(id)title animated:(BOOL)animated;
- (void)updateTitleViewAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKNavbarCanvasViewController

- (CKNavbarCanvasViewController)initWithConversation:(id)conversation navigationController:(id)controller hideLocationIfUnavailable:(BOOL)unavailable
{
  v29 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = CKNavbarCanvasViewController;
  v10 = [(CKNavbarCanvasViewController *)&v22 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    [(CKNavbarCanvasViewController *)v10 setConversation:conversationCopy];
    [(CKNavbarCanvasViewController *)v11 setProxyNavigationController:controllerCopy];
    v12 = [(CKNavbarCanvasViewController *)v11 navBarTitleFromConversation:conversationCopy];
    [(CKNavbarCanvasViewController *)v11 setNavbarTitle:v12];

    [(CKNavbarCanvasViewController *)v11 registerNotifications];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        findMyNavBarEnabled = [(CKNavbarCanvasViewController *)v11 findMyNavBarEnabled];
        conversation = [(CKNavbarCanvasViewController *)v11 conversation];
        v16 = conversation;
        v17 = @"NO";
        *buf = 136315650;
        v24 = "[CKNavbarCanvasViewController initWithConversation:navigationController:hideLocationIfUnavailable:]";
        v25 = 2112;
        if (findMyNavBarEnabled)
        {
          v17 = @"YES";
        }

        v26 = v17;
        v27 = 2112;
        v28 = conversation;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s: Nav bar location refresh enablement: %@ for conversation: %@", buf, 0x20u);
      }
    }

    if ([(CKNavbarCanvasViewController *)v11 findMyNavBarEnabled])
    {
      [(CKNavbarCanvasViewController *)v11 refreshFMFLocationIfNecessary];
      if (unavailable)
      {
        locationToDisplay = [(CKNavbarCanvasViewController *)v11 locationToDisplay];
        [(CKNavbarCanvasViewController *)v11 setLocationLabelHidden:locationToDisplay == 0];
      }

      else
      {
        [(CKNavbarCanvasViewController *)v11 setLocationLabelHidden:0];
      }
    }

    objc_initWeak(buf, v11);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __100__CKNavbarCanvasViewController_initWithConversation_navigationController_hideLocationIfUnavailable___block_invoke;
    v20[3] = &unk_1E72EC460;
    objc_copyWeak(&v21, buf);
    [(CKNavbarCanvasViewController *)v11 _refreshIDSStatusWithCompletion:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  return v11;
}

void __100__CKNavbarCanvasViewController_initWithConversation_navigationController_hideLocationIfUnavailable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFTControls];
}

- (void)dealloc
{
  conversationIdentityView = self->_conversationIdentityView;
  self->_conversationIdentityView = 0;

  [(CKNavigationBarCanvasView *)self->_canvasView clearAllItemViews];
  v4.receiver = self;
  v4.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v4 dealloc];
}

- (void)registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  [defaultCenter addObserver:self selector:sel__handleConversationRecipientsDidChange_ name:@"CKConversationParticipantsDidChangeNotification" object:conversation];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69A56E8];
  conversation2 = [(CKNavbarCanvasViewController *)self conversation];
  chat = [conversation2 chat];
  [defaultCenter2 addObserver:self selector:sel__handleAllowedByScreenTimeChatChanged_ name:v6 object:chat];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__handleServiceChangedNotification_ name:*MEMORY[0x1E69A5908] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__handlePersistentMenuChangedNotification_ name:*MEMORY[0x1E69A6AC8] object:0];

  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel_fmfSessionRelationshipDidChange_ name:*MEMORY[0x1E69A5990] object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = *MEMORY[0x1E69A5980];
    conversation3 = [(CKNavbarCanvasViewController *)self conversation];
    chat2 = [conversation3 chat];
    [defaultCenter7 addObserver:self selector:sel_fmfSessionChatLocationRefreshed_ name:v14 object:chat2];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:self selector:sel_fmfSessionChatLocationReceived_ name:*MEMORY[0x1E69A5988] object:0];
  }
}

- (void)_refreshIDSStatusWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  recipients = [conversation recipients];
  __im_canonicalIDSAddressesFromEntities = [recipients __im_canonicalIDSAddressesFromEntities];

  if ([__im_canonicalIDSAddressesFromEntities count])
  {
    v8 = dispatch_group_create();
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    v10 = [CKFaceTimeUtilities isModernScreenSharingAvailable:conversation2];

    if (v10)
    {
      dispatch_group_enter(v8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__CKNavbarCanvasViewController__refreshIDSStatusWithCompletion___block_invoke;
      v14[3] = &unk_1E72EEB58;
      v14[4] = self;
      v15 = v8;
      [CKFaceTimeUtilities queryModernScreenSharingCapabilities:__im_canonicalIDSAddressesFromEntities completion:v14];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CKNavbarCanvasViewController__refreshIDSStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E72EBDB8;
    v13 = completionCopy;
    dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[CKNavbarCanvasViewController _refreshIDSStatusWithCompletion:]";
      v18 = 2048;
      v19 = [__im_canonicalIDSAddressesFromEntities count];
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s early returning for addresses.count: %lu", buf, 0x16u);
    }
  }
}

void __64__CKNavbarCanvasViewController__refreshIDSStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setModernScreenSharingCapabilities:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)refreshFMFLocationIfNecessary
{
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    recipient = [conversation recipient];
    defaultIMHandle = [recipient defaultIMHandle];
    v8 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:defaultIMHandle];

    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }

    [(CKNavbarCanvasViewController *)self setLocationToDisplay:v7];
  }
}

- (BOOL)findMyNavBarEnabled
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isFindMyNavBarEnabled = [mEMORY[0x1E69A8070] isFindMyNavBarEnabled];

  mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
  disableLocationSharing = [mEMORY[0x1E69A5B70] disableLocationSharing];

  conversation = [(CKNavbarCanvasViewController *)self conversation];
  if (conversation)
  {
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    v9 = [conversation2 isGroupConversation] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return isFindMyNavBarEnabled & v9 & (disableLocationSharing ^ 1);
}

- (void)fmfSessionChatLocationRefreshed:(id)refreshed
{
  v21 = *MEMORY[0x1E69E9840];
  refreshedCopy = refreshed;
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    object = [refreshedCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [refreshedCopy object];
    }

    else
    {
      object2 = 0;
    }

    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    v9 = [object2 isEqual:chat];

    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          conversation2 = [(CKNavbarCanvasViewController *)self conversation];
          recipient = [conversation2 recipient];
          defaultIMHandle = [recipient defaultIMHandle];
          v17 = 136315394;
          v18 = "[CKNavbarCanvasViewController fmfSessionChatLocationRefreshed:]";
          v19 = 2112;
          v20 = defaultIMHandle;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s handle: %@", &v17, 0x16u);
        }
      }

      conversation3 = [(CKNavbarCanvasViewController *)self conversation];
      recipient2 = [conversation3 recipient];
      defaultIMHandle2 = [recipient2 defaultIMHandle];
      [(CKNavbarCanvasViewController *)self updateLocationToDisplayWithHandle:defaultIMHandle2];
    }
  }
}

- (void)fmfSessionChatLocationReceived:(id)received
{
  v24 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    object = [receivedCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [receivedCopy object];
    }

    else
    {
      object2 = 0;
    }

    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    recipient = [chat recipient];
    identifier = [object2 identifier];
    v19 = object2;
    if ([recipient isEqual:identifier])
    {
    }

    else
    {
      conversation2 = [(CKNavbarCanvasViewController *)self conversation];
      chat2 = [conversation2 chat];
      allSiblingFindMyHandles = [chat2 allSiblingFindMyHandles];
      v14 = [allSiblingFindMyHandles containsObject:object2];

      if ((v14 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v21 = "[CKNavbarCanvasViewController fmfSessionChatLocationReceived:]";
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "%s handle: %@", buf, 0x16u);
      }
    }

    conversation3 = [(CKNavbarCanvasViewController *)self conversation];
    recipient2 = [conversation3 recipient];
    defaultIMHandle = [recipient2 defaultIMHandle];
    [(CKNavbarCanvasViewController *)self updateLocationToDisplayWithHandle:defaultIMHandle];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)fmfSessionRelationshipDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    object = [changeCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [changeCopy object];

      if (object2)
      {
        conversation = [(CKNavbarCanvasViewController *)self conversation];
        chat = [conversation chat];
        allSiblingFindMyHandles = [chat allSiblingFindMyHandles];
        v10 = [allSiblingFindMyHandles containsObject:object2];

        if (v10)
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = 136315394;
              v13 = "[CKNavbarCanvasViewController fmfSessionRelationshipDidChange:]";
              v14 = 2112;
              v15 = object2;
              _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s handle: %@", &v12, 0x16u);
            }
          }

          [(CKNavbarCanvasViewController *)self refreshFMFLocationIfNecessary];
        }
      }
    }

    else
    {

      object2 = 0;
    }
  }
}

- (void)updateLocationToDisplayWithHandle:(id)handle
{
  handleCopy = handle;
  findMyNavBarEnabled = [(CKNavbarCanvasViewController *)self findMyNavBarEnabled];
  if (handleCopy)
  {
    if (findMyNavBarEnabled)
    {
      conversation = [(CKNavbarCanvasViewController *)self conversation];
      chat = [conversation chat];
      allSiblingFindMyHandles = [chat allSiblingFindMyHandles];
      findMyHandle = [handleCopy findMyHandle];
      v9 = [allSiblingFindMyHandles containsObject:findMyHandle];

      if (v9)
      {
        mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
        conversation2 = [(CKNavbarCanvasViewController *)self conversation];
        recipient = [conversation2 recipient];
        defaultIMHandle = [recipient defaultIMHandle];
        v14 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:defaultIMHandle];

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        [(CKNavbarCanvasViewController *)self setLocationToDisplay:v15];
      }
    }
  }
}

- (void)setLocationLabelHidden:(BOOL)hidden
{
  if (self->_locationLabelHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_locationLabelHidden = hidden;
    locationLabel = [(CKNavbarCanvasViewController *)self locationLabel];
    [locationLabel setHidden:hiddenCopy];

    conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [conversationIdentityView setSubtitleHidden:hiddenCopy];

    [(CKNavbarCanvasViewController *)self _notifyDelegateForNavBarResize];
  }
}

- (void)setLocationToDisplay:(id)display
{
  displayCopy = display;
  if (-[CKNavbarCanvasViewController findMyNavBarEnabled](self, "findMyNavBarEnabled") && ([displayCopy isEqual:self->_locationToDisplay] & 1) == 0)
  {
    objc_storeStrong(&self->_locationToDisplay, display);
    [(CKNavbarCanvasViewController *)self updateLocationLabel];
  }
}

- (void)updateLocationLabel
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    locationToDisplay = [(CKNavbarCanvasViewController *)self locationToDisplay];
    shortAddress = [locationToDisplay shortAddress];

    if (shortAddress)
    {
      locationLabel = [(CKNavbarCanvasViewController *)self locationLabel];
      attributedText = [locationLabel attributedText];
      string = [attributedText string];
      v8 = [string isEqualToString:shortAddress];

      if (v8)
      {
        locationLabel2 = [(CKNavbarCanvasViewController *)self locationLabel];
        attributedText2 = [locationLabel2 attributedText];
        v11 = [attributedText2 attributesAtIndex:0 effectiveRange:0];

        v12 = +[CKUIBehavior sharedBehaviors];
        traitCollection = [(CKNavbarCanvasViewController *)self traitCollection];
        preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
        v15 = [v12 navBarSubtitleAttributedStringAttributesForContentSizeCategory:preferredContentSizeCategory];

        v16 = *MEMORY[0x1E69DB648];
        v17 = [v11 objectForKey:*MEMORY[0x1E69DB648]];
        objc_opt_class();
        v18 = 0.0;
        if (objc_opt_isKindOfClass())
        {
          [v17 pointSize];
          v18 = v19;
        }

        v20 = [v15 objectForKey:v16];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v22 = 0.0;
        if (isKindOfClass)
        {
          [v20 pointSize];
        }

        if (v18 != v22)
        {
          v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:shortAddress attributes:v15];
          locationLabel3 = [(CKNavbarCanvasViewController *)self locationLabel];
          [locationLabel3 setAttributedText:v23];

          locationLabel4 = [(CKNavbarCanvasViewController *)self locationLabel];
          [locationLabel4 sizeToFit];

          locationLabel5 = [(CKNavbarCanvasViewController *)self locationLabel];
          [locationLabel5 setNeedsLayout];
        }
      }

      else
      {
        v30 = objc_alloc(MEMORY[0x1E69DCC10]);
        v11 = [v30 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v31 = +[CKUIBehavior sharedBehaviors];
        traitCollection2 = [(CKNavbarCanvasViewController *)self traitCollection];
        preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
        v15 = [v31 navBarSubtitleAttributedStringAttributesForContentSizeCategory:preferredContentSizeCategory2];

        v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:shortAddress attributes:v15];
        [v11 setAttributedText:v34];

        tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [v11 setTextColor:tertiaryLabelColor];

        [v11 setTextAlignment:1];
        [(CKNavbarCanvasViewController *)self setLocationLabel:v11];
      }

      conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
      subtitle = [conversationIdentityView subtitle];
      v38 = [subtitle isEqualToString:shortAddress];

      if (v38)
      {
        if (v8)
        {
          [(CKNavbarCanvasViewController *)self updateLocationLabelParentViewAssignment];
LABEL_32:

          return;
        }
      }

      else
      {
        conversationIdentityView2 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
        [conversationIdentityView2 setSubtitle:shortAddress];
      }

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v47 = 136315138;
          v48 = "[CKNavbarCanvasViewController updateLocationLabel]";
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "%s updated label with a new short address", &v47, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          locationLabelHidden = [(CKNavbarCanvasViewController *)self locationLabelHidden];
          v47 = 67109120;
          LODWORD(v48) = locationLabelHidden;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Location label is shown: %{BOOL}d", &v47, 8u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v47 = 136315138;
          v48 = "[CKNavbarCanvasViewController updateLocationLabel]";
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "%s current location is nil or does not have a short address to display.", &v47, 0xCu);
        }
      }

      locationLabel6 = [(CKNavbarCanvasViewController *)self locationLabel];
      if (!locationLabel6)
      {
        conversationIdentityView3 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
        subtitle2 = [conversationIdentityView3 subtitle];
        v45 = [subtitle2 isEqualToString:&stru_1F04268F8];

        [(CKNavbarCanvasViewController *)self setLocationLabel:0];
        conversationIdentityView4 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
        [conversationIdentityView4 setSubtitle:&stru_1F04268F8];

        [(CKNavbarCanvasViewController *)self updateLocationLabelParentViewAssignment];
        if (v45)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      [(CKNavbarCanvasViewController *)self setLocationLabel:0];
      conversationIdentityView5 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
      [conversationIdentityView5 setSubtitle:&stru_1F04268F8];
    }

    [(CKNavbarCanvasViewController *)self updateLocationLabelParentViewAssignment];
LABEL_31:
    [(CKNavbarCanvasViewController *)self _notifyDelegateForNavBarResize];
    goto LABEL_32;
  }
}

- (void)setLocationLabel:(id)label
{
  labelCopy = label;
  findMyNavBarEnabled = [(CKNavbarCanvasViewController *)self findMyNavBarEnabled];
  v6 = labelCopy;
  if (findMyNavBarEnabled && self->_locationLabel != labelCopy)
  {
    [(UILabel *)labelCopy sizeToFit];
    objc_storeStrong(&self->_locationLabel, label);
    [(UILabel *)self->_locationLabel setHidden:[(CKNavbarCanvasViewController *)self locationLabelHidden]];
    v6 = labelCopy;
  }
}

- (void)updateLocationLabelParentViewAssignment
{
  if ([(CKNavbarCanvasViewController *)self _canShowAvatarView])
  {
    locationLabel = 0;
  }

  else
  {
    locationLabel = self->_locationLabel;
  }

  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setSubtitleView:locationLabel];
}

- (id)navBarTitleFromConversation:(id)conversation
{
  conversationCopy = conversation;
  if (IMIsRunningInScreenshotTesting_IsolatedTranscriptUI())
  {
    v5 = 0;
  }

  else
  {
    if ([conversationCopy hasDisplayName])
    {
      [conversationCopy displayName];
    }

    else
    {
      [conversationCopy displayNameForMediaObjects:0 subject:0 shouldListParticipants:{-[CKNavbarCanvasViewController _canShowAvatarView](self, "_canShowAvatarView")}];
    }
    v5 = ;
  }

  return v5;
}

- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)available
{
  availableCopy = available;
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  recipient = [conversation recipient];

  if (recipient)
  {
    contactsManager = [(CKNavbarCanvasViewController *)self contactsManager];
    [contactsManager startCommunicationForEntity:recipient action:2 address:0 usePreferredRouteIfAvailable:availableCopy];
  }
}

- (id)_windowTraitCollection
{
  keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
  traitCollection = [keyWindow traitCollection];

  return traitCollection;
}

- (void)setIsInEditingMode:(BOOL)mode
{
  if (self->_isInEditingMode != mode)
  {
    self->_isInEditingMode = mode;
    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView setShouldAnimateAvatarLayoutChanges:1];

    isInEditingMode = self->_isInEditingMode;
    canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView2 setIsInEditingMode:isInEditingMode];
  }
}

- (BOOL)_canShowAvatarView
{
  if (IMIsRunningInScreenshotTesting_IsolatedTranscriptUI())
  {
    return 0;
  }

  delegate = [(CKNavbarCanvasViewController *)self delegate];
  shouldShowAvatarViewInNavBarCanvas = [delegate shouldShowAvatarViewInNavBarCanvas];

  return shouldShowAvatarViewInNavBarCanvas;
}

- (CKDetailsContactsManager)contactsManager
{
  contactsManager = self->_contactsManager;
  if (!contactsManager)
  {
    v4 = [[CKDetailsContactsManager alloc] initWithConversation:self->_conversation delegate:self];
    v5 = self->_contactsManager;
    self->_contactsManager = v4;

    contactsManager = self->_contactsManager;
  }

  return contactsManager;
}

- (void)loadView
{
  _windowTraitCollection = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v3 = [CKNavigationBarCanvasView alloc];
  v4 = [(CKNavigationBarCanvasView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKNavbarCanvasViewController *)self setCanvasView:v4];

  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    [(CKNavbarCanvasViewController *)self updateLocationLabel];
  }

  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setDelegate:self];

  conversation = [(CKNavbarCanvasViewController *)self conversation];
  isGroupConversation = [conversation isGroupConversation];

  if (isGroupConversation)
  {
    v8 = +[CKFaceTimeUtilities isGroupFaceTimeSupported];
    canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView2 setMultiwayAudioButtonHidden:!v8];
  }

  canvasView3 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView3 setKeepTitleViewCentered:1];

  [(CKNavbarCanvasViewController *)self _initializeForTraitCollection:_windowTraitCollection];
  navbarTitle = [(CKNavbarCanvasViewController *)self navbarTitle];
  [(CKNavbarCanvasViewController *)self updateTitle:navbarTitle animated:0];

  [(CKNavbarCanvasViewController *)self updateAvatarPickerDelegate];
  canvasView4 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView4 setClipsToBounds:1];

  canvasView5 = [(CKNavbarCanvasViewController *)self canvasView];
  [(CKNavbarCanvasViewController *)self setView:canvasView5];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  leftItemView = [canvasView leftItemView];

  canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
  buttonViewFaceTimeAudio = [canvasView2 buttonViewFaceTimeAudio];

  canvasView3 = [(CKNavbarCanvasViewController *)self canvasView];
  buttonViewFaceTimeVideo = [canvasView3 buttonViewFaceTimeVideo];

  view = [(CKNavbarCanvasViewController *)self view];
  [beginCopy locationInView:view];
  v13 = v12;
  v15 = v14;

  if (![(CKNavbarCanvasViewController *)self shouldShowAvatarView])
  {
    [leftItemView frame];
    v20.x = v13;
    v20.y = v15;
    if (!CGRectContainsPoint(v23, v20))
    {
      [buttonViewFaceTimeAudio frame];
      v21.x = v13;
      v21.y = v15;
      if (!CGRectContainsPoint(v24, v21))
      {
        [buttonViewFaceTimeVideo frame];
        v22.x = v13;
        v22.y = v15;
        v18 = !CGRectContainsPoint(v25, v22);
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if ([(CKNavbarCanvasViewController *)self navBarContext]!= 1)
  {
LABEL_6:
    LOBYTE(v18) = 0;
    goto LABEL_7;
  }

  conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
  canvasView4 = [(CKNavbarCanvasViewController *)self canvasView];
  v18 = [conversationIdentityView avatarWantsTapAtPoint:canvasView4 fromView:{v13, v15}] ^ 1;

LABEL_7:
  return v18;
}

- (void)_updateFTControls
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  modernScreenSharingCapabilities = [(CKNavbarCanvasViewController *)self modernScreenSharingCapabilities];
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];
  [CKNavbarCanvasViewController updateFTControlsWithConversation:conversation canvasViewController:self screenSharingCapabilities:modernScreenSharingCapabilities unifiedCallButton:unifiedCallButton];
}

+ (void)updateFTControlsWithConversation:(id)conversation canvasViewController:(id)controller screenSharingCapabilities:(id)capabilities unifiedCallButton:(id)button
{
  conversationCopy = conversation;
  controllerCopy = controller;
  capabilitiesCopy = capabilities;
  buttonCopy = button;
  chat = [conversationCopy chat];
  conversation = [chat conversation];

  if (!conversation)
  {
    [controllerCopy setIndicatorType:0];
    v15 = 0;
    v16 = 0;
    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = [conversation state] == 3 || objc_msgSend(conversation, "state") == 2;
  v17 = [MEMORY[0x1E69A5B78] conversationIsVideoCall:conversation];
  v18 = [MEMORY[0x1E69A5B78] conversationIsAVLessSharePlay:conversation];
  state = [conversation state];
  if ([conversation isNearbySession])
  {
    v15 = 0;
    v16 = 0;
  }

  else if (v14)
  {
    v20 = 4;
    v21 = 2;
    if (v17)
    {
      v20 = 6;
    }

    else
    {
      v21 = 4;
    }

    v22 = (v18 & 1) == 0;
    if (v18)
    {
      v15 = 5;
    }

    else
    {
      v15 = v20;
    }

    if (v22)
    {
      v16 = v21;
    }

    else
    {
      v16 = 6;
    }
  }

  else
  {
    if (state == 4)
    {
      goto LABEL_31;
    }

    if (v18)
    {
      v16 = 5;
      v15 = 2;
    }

    else
    {
      v38 = v17 == 0;
      if (v17)
      {
        v16 = 1;
      }

      else
      {
        v16 = 3;
      }

      if (v38)
      {
        v15 = 1;
      }

      else
      {
        v15 = 3;
      }
    }
  }

  state2 = [conversation state];
  if (((state2 - 2) < 2 || !state2) && CKIsRunningInMacCatalyst())
  {
LABEL_22:
    delegate = [controllerCopy delegate];
    [delegate navbarCanvasViewController:controllerCopy updatedJoinStateWithStyle:v15];
  }

LABEL_23:
  isGroupConversation = [conversationCopy isGroupConversation];
  chat2 = [conversationCopy chat];
  v27 = [chat2 supportsCapabilities:1024];

  v28 = [CKFaceTimeUtilities isFaceTimeAudioAvailable:conversationCopy]& v27;
  v29 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:conversationCopy]& v27;
  recipient = [conversationCopy recipient];
  v31 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:recipient capabilities:capabilitiesCopy];

  if ((isGroupConversation & 1) == 0)
  {
    if (v28)
    {
      chat3 = [conversationCopy chat];
      v28 = [chat3 isSMS] ^ 1;
    }

    if (v29)
    {
      chat4 = [conversationCopy chat];
      v29 = [chat4 isSMS] ^ 1;
    }
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    chat5 = [conversationCopy chat];
    isStewieSharingChat = [chat5 isStewieSharingChat];

    v28 = (isStewieSharingChat ^ 1) & v28;
    v29 = (isStewieSharingChat ^ 1) & v29;
  }

  [buttonCopy updateWithStyle:v16 availabilityForVideo:v29 audio:v28 telephony:0 screenSharing:v31];
LABEL_31:
}

- (void)_userDidTapNavigationBar
{
  if (![(CKNavbarCanvasViewController *)self isInEditingMode])
  {
    if ((v3 = [(CKNavbarCanvasViewController *)self navBarContext], v3 <= 4) && ((1 << v3) & 0x1A) != 0 && !CKIsRunningInMessagesTranscriptExtension() || ![(CKNavbarCanvasViewController *)self shouldShowAvatarView])
    {
      delegate = [(CKNavbarCanvasViewController *)self delegate];
      canvasView = [(CKNavbarCanvasViewController *)self canvasView];
      [delegate navbarCanvasViewController:self didTapView:canvasView];
    }
  }
}

- (void)handleCloseNavBarAnimationCompleteNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = CKNavigationBarCanvasViewHeightAnimationCompletedNotification;
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [defaultCenter removeObserver:self name:v4 object:canvasView];
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v30 viewDidLayoutSubviews];
  detailsButton = [(CKNavbarCanvasViewController *)self detailsButton];
  detailsButton2 = [(CKNavbarCanvasViewController *)self detailsButton];
  [detailsButton2 bounds];
  [detailsButton contentRectForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  detailsButton3 = [(CKNavbarCanvasViewController *)self detailsButton];
  [detailsButton3 imageRectForContentRect:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  detailsButton4 = [(CKNavbarCanvasViewController *)self detailsButton];
  [detailsButton4 bounds];
  Width = CGRectGetWidth(v31);
  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  v24 = Width - CGRectGetWidth(v32);

  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  detailsButton5 = [(CKNavbarCanvasViewController *)self detailsButton];
  v27 = detailsButton5;
  if (userInterfaceLayoutDirection)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v24;
  }

  if (userInterfaceLayoutDirection)
  {
    v29 = v24;
  }

  else
  {
    v29 = 0.0;
  }

  [detailsButton5 setImageEdgeInsets:{0.0, v28, 0.0, v29}];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v16 viewDidLoad];
  [(CKNavbarCanvasViewController *)self _updateUnreadCountForBackbuttonView:[(CKNavbarCanvasViewController *)self _unreadCount]];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A58D0] object:0];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x1E69A8070] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    v6 = *MEMORY[0x1E69A7DD0];
  }

  else
  {
    v6 = *MEMORY[0x1E69A5920];
  }

  [defaultCenter addObserver:self selector:sel__chatUnreadCountDidChange_ name:v6 object:0];
  [defaultCenter addObserver:self selector:sel__contactPhotosEnabledChangedNotification_ name:CKConversationListContactPhotosEnabledNotification object:0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_multiwayStateChanged_ name:*MEMORY[0x1E69A5840] object:0];

  [defaultCenter addObserver:self selector:sel__handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  chat = [conversation chat];
  [canvasView setIsBusinessChat:{objc_msgSend(chat, "isBusinessChat")}];

  conversation2 = [(CKNavbarCanvasViewController *)self conversation];
  chat2 = [conversation2 chat];
  conversation3 = [chat2 conversation];

  if (conversation3 && ![conversation3 state])
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    conversationManager = [mEMORY[0x1E69A5AF8] conversationManager];
    [conversationManager refreshActiveConversations];
  }

  [(CKNavbarCanvasViewController *)self _updateFTControls];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v4 viewWillAppear:appear];
  [(CKNavbarCanvasViewController *)self refreshAudioButtonTargetAction];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v3 viewDidAppear:appear];
}

- (void)traitCollectionDidChange:(id)change
{
  v18.receiver = self;
  v18.super_class = CKNavbarCanvasViewController;
  changeCopy = change;
  [(CKNavbarCanvasViewController *)&v18 traitCollectionDidChange:changeCopy];
  v5 = [(CKNavbarCanvasViewController *)self traitCollection:v18.receiver];
  [(CKNavbarCanvasViewController *)self _initializeForTraitCollection:v5];
  v6 = +[CKUIBehavior sharedBehaviors];
  noAvatarTitleFont = [v6 noAvatarTitleFont];
  defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];
  [defaultLabel setFont:noAvatarTitleFont];

  horizontalSizeClass = [changeCopy horizontalSizeClass];
  horizontalSizeClass2 = [v5 horizontalSizeClass];
  verticalSizeClass = [changeCopy verticalSizeClass];
  verticalSizeClass2 = [v5 verticalSizeClass];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  preferredContentSizeCategory2 = [v5 preferredContentSizeCategory];
  v15 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v15 || horizontalSizeClass != horizontalSizeClass2 || verticalSizeClass != verticalSizeClass2)
  {
    [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:0];
    [(CKNavbarCanvasViewController *)self updateLocationLabel];
    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView setNeedsLayout];

    canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView2 layoutIfNeeded];
  }
}

- (void)_handleAddressBookChange:(id)change
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  v5 = [(CKNavbarCanvasViewController *)self navBarTitleFromConversation:conversation];
  [(CKNavbarCanvasViewController *)self updateTitle:v5 animated:1];

  [(CKNavbarCanvasViewController *)self refreshAudioButtonTargetAction];
}

- (void)_notifyDelegateForNavBarResize
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CKNavbarCanvasViewController *)self delegate];
    [delegate2 navbarCanvasViewControllerCanvasHeightDidChange:self];
  }
}

- (void)updateAvatarPickerDelegate
{
  if ([(CKNavbarCanvasViewController *)self shouldShowAvatarView])
  {
    conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [conversationIdentityView setDelegate:self];
  }
}

- (void)configureForEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    if (editing)
    {
      [(CKNavbarCanvasViewController *)self _configureForEditMode];
    }

    else
    {
      [(CKNavbarCanvasViewController *)self _configureForDefaultMode];
    }
  }
}

- (void)updateTitle:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  navbarTitle = self->_navbarTitle;
  if (navbarTitle != titleCopy)
  {
    v10 = titleCopy;
    if (!titleCopy || (v9 = [(NSString *)navbarTitle isEqualToString:titleCopy], titleCopy = v10, !v9))
    {
      objc_storeStrong(&self->_navbarTitle, title);
      [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:animatedCopy];
      titleCopy = v10;
    }
  }
}

- (void)updateTitleViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _windowTraitCollection = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v5 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:?];
  v6 = [(CKNavbarCanvasViewController *)self wantsVerifiedIconForTitle:self->_navbarTitle];
  if ([(CKNavbarCanvasViewController *)self _canShowAvatarView])
  {
    v7 = 0;
  }

  else if ([(CKNavbarCanvasViewController *)self hideChevron])
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];

  if (v5 == defaultLabel)
  {
    [(CKNavbarCanvasViewController *)self setDefaultLabelText];
    defaultLabel2 = [(CKNavbarCanvasViewController *)self defaultLabel];
    v11 = defaultLabel2;
    if (v6)
    {
      v12 = 3;
    }

    else
    {
      v12 = v7;
    }

    [defaultLabel2 setTitleIconImageType:v12];

    defaultLabel3 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [defaultLabel3 setShouldHaveRotatedTitleIconImage:0 animated:animatedCopy];

    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView setNeedsLayout];

    canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView2 layoutIfNeeded];
  }

  else
  {
    canvasView2 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [canvasView2 setChevronHidden:{-[CKNavbarCanvasViewController hideChevron](self, "hideChevron")}];
  }
}

- (void)updateLeftItemView
{
  _windowTraitCollection = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v3 = [(CKNavbarCanvasViewController *)self _leftItemViewForTraitCollection:_windowTraitCollection];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setLeftItemView:v3];
}

- (void)updateRightItemView
{
  _windowTraitCollection = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v3 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:_windowTraitCollection];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setRightItemView:v3];
}

- (void)updateForRecoveredJunkConversation
{
  [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:1];

  [(CKNavbarCanvasViewController *)self _configureForDefaultMode];
}

- (BOOL)wantsVerifiedIconForTitle:(id)title
{
  titleCopy = title;
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  if ([conversation shouldShowVerifiedCheckmark])
  {
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    recipient = [conversation2 recipient];
    name = [recipient name];
    v9 = [titleCopy isEqualToString:name];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hideChevron
{
  if ([(CKNavbarCanvasViewController *)self navBarContext]== 2 || (IMIsRunningInScreenshotTesting_IsolatedTranscriptUI() & 1) != 0)
  {
    goto LABEL_3;
  }

  conversation = [(CKNavbarCanvasViewController *)self conversation];
  chat = [conversation chat];
  if ([chat isStewieChat])
  {
    LOBYTE(v3) = 1;
    goto LABEL_7;
  }

  conversation2 = [(CKNavbarCanvasViewController *)self conversation];
  chat2 = [conversation2 chat];
  isStewieSharingChat = [chat2 isStewieSharingChat];

  if ((isStewieSharingChat & 1) == 0)
  {
    if (!IMIsOscarEnabled() || (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v10 = objc_claimAutoreleasedReturnValue(), -[CKNavbarCanvasViewController conversation](self, "conversation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 primaryFilterModeForConversation:v11], v11, v10, v12 != 9))
    {
      conversation = [(CKNavbarCanvasViewController *)self delegate];
      if (!conversation)
      {
        LOBYTE(v3) = 0;
        goto LABEL_8;
      }

      chat = [(CKNavbarCanvasViewController *)self delegate];
      v3 = [chat shouldShowChevronInNavbarCanvasViewController:self] ^ 1;
LABEL_7:

LABEL_8:
      return v3;
    }
  }

LABEL_3:
  LOBYTE(v3) = 1;
  return v3;
}

- (void)_initializeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(CKNavbarCanvasViewController *)self _leftItemViewForTraitCollection:collectionCopy];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setLeftItemView:v5];

  v7 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:collectionCopy];
  canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView2 setRightItemView:v7];

  v9 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:collectionCopy];
  canvasView3 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView3 setTitleView:v9];

  verticalSizeClass = [collectionCopy verticalSizeClass];
  if (verticalSizeClass == 1)
  {
    conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [conversationIdentityView removeFromSuperview];
  }
}

- (id)recipientContextMenu
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  recipient = [conversation recipient];

  if (recipient)
  {
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    recipient2 = [conversation2 recipient];

    defaultIMHandle = [recipient2 defaultIMHandle];
    isContact = [defaultIMHandle isContact];

    if (isContact)
    {
      contactsManager = [(CKNavbarCanvasViewController *)self contactsManager];
      v10 = [contactsManager conversationContextMenuForEntity:recipient2 allowConversationRemoval:0];
    }

    else
    {
      v10 = [(CKNavbarCanvasViewController *)self contextMenuForUnknownRecipient:recipient2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setCanShowBackButtonView:(BOOL)view
{
  if (self->_canShowBackButtonView != view)
  {
    self->_canShowBackButtonView = view;
    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    leftItemView = [canvasView leftItemView];
    backButtonView = [(CKNavbarCanvasViewController *)self backButtonView];

    if (view)
    {
      if (leftItemView == backButtonView)
      {
        return;
      }

      backButtonView2 = [(CKNavbarCanvasViewController *)self backButtonView];
      canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
      [canvasView2 setLeftItemView:backButtonView2];
    }

    else
    {
      if (leftItemView != backButtonView)
      {
        return;
      }

      backButtonView2 = [(CKNavbarCanvasViewController *)self canvasView];
      [backButtonView2 setLeftItemView:0];
    }
  }
}

- (void)setIndicatorType:(int64_t)type
{
  if (self->_indicatorType != type)
  {
    self->_indicatorType = type;
    if (![(CKNavbarCanvasViewController *)self _canShowAvatarView])
    {
      canvasView = [(CKNavbarCanvasViewController *)self canvasView];
      [canvasView setStatusIndicatorType:type];
    }
  }
}

- (void)updateContentsForConversation:(id)conversation
{
  conversationCopy = conversation;
  conversation = [(CKNavbarCanvasViewController *)self conversation];

  if (conversation != conversationCopy)
  {
    [(CKNavbarCanvasViewController *)self setConversation:conversationCopy];
    conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [conversationIdentityView setConversation:conversationCopy];
  }
}

- (void)setNavBarContext:(int64_t)context
{
  if (self->_navBarContext != context)
  {
    self->_navBarContext = context;
    [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:0];
    [(CKNavbarCanvasViewController *)self updateLeftItemView];

    [(CKNavbarCanvasViewController *)self updateRightItemView];
  }
}

- (id)_leftItemViewForTraitCollection:(id)collection
{
  if ([(CKNavbarCanvasViewController *)self canShowBackButtonView])
  {
    backButtonView = [(CKNavbarCanvasViewController *)self backButtonView];
  }

  else if ([(CKNavbarCanvasViewController *)self shouldShowDoneButton])
  {
    backButtonView = [(CKNavbarCanvasViewController *)self doneButton];
  }

  else
  {
    backButtonView = 0;
  }

  return backButtonView;
}

- (id)_rightItemViewForTraitCollection:(id)collection
{
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([(CKNavbarCanvasViewController *)self editing])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        editCancelButtonView = [(CKNavbarCanvasViewController *)self editCancelButtonView];
        v20 = 138412290;
        v21 = editCancelButtonView;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Right item view: User is editing, returning %@", &v20, 0xCu);
      }
    }

    editCancelButtonView2 = [(CKNavbarCanvasViewController *)self editCancelButtonView];
  }

  else if (CKIsRunningInMessagesTranscriptExtension())
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        doneButton = [(CKNavbarCanvasViewController *)self doneButton];
        v20 = 138412290;
        v21 = doneButton;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Right item view: Running in transcript extension, returning %@", &v20, 0xCu);
      }
    }

    editCancelButtonView2 = [(CKNavbarCanvasViewController *)self doneButton];
  }

  else if ([(CKNavbarCanvasViewController *)self _isConfiguredForInlineReply])
  {
    editCancelButtonView2 = [(CKNavbarCanvasViewController *)self closeButton];
  }

  else if ([(CKNavbarCanvasViewController *)self _shouldShowPersistentMenu])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        persistentMenuButton = [(CKNavbarCanvasViewController *)self persistentMenuButton];
        v20 = 138412290;
        v21 = persistentMenuButton;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Right item view: We want to show the persistent menu, returning %@", &v20, 0xCu);
      }
    }

    editCancelButtonView2 = [(CKNavbarCanvasViewController *)self persistentMenuButton];
  }

  else
  {
    _shouldShowFacetimeButton = [(CKNavbarCanvasViewController *)self _shouldShowFacetimeButton];
    v13 = IMOSLoggingEnabled();
    if (_shouldShowFacetimeButton)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];
          v20 = 138412290;
          v21 = unifiedCallButton;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Right item view: We want to show the facetime button, returning %@", &v20, 0xCu);
        }
      }

      editCancelButtonView2 = [(CKNavbarCanvasViewController *)self unifiedCallButton];
    }

    else
    {
      if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          detailsButton = [(CKNavbarCanvasViewController *)self detailsButton];
          v20 = 138412290;
          v21 = detailsButton;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Right item view: By default, returning %@", &v20, 0xCu);
        }
      }

      editCancelButtonView2 = [(CKNavbarCanvasViewController *)self detailsButton];
    }
  }

  v18 = editCancelButtonView2;

  return v18;
}

- (BOOL)_shouldShowFacetimeButton
{
  selfCopy = self;
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate shouldShowFacetimeButtonInNavbarCanvasViewController:selfCopy];

  return selfCopy;
}

- (BOOL)_shouldShowPersistentMenu
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  chat = [conversation chat];
  persistentMenu = [chat persistentMenu];
  if (persistentMenu)
  {
    persistentMenuButton = [(CKNavbarCanvasViewController *)self persistentMenuButton];
    v7 = persistentMenuButton != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_titleItemViewForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (-[CKNavbarCanvasViewController _canShowAvatarView](self, "_canShowAvatarView") && [collectionCopy verticalSizeClass] != 1)
  {
    conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];
  }

  else
  {
    conversationIdentityView = [(CKNavbarCanvasViewController *)self defaultLabel];
  }

  v6 = conversationIdentityView;

  return v6;
}

- (CKNavBarConversationIdentityView)conversationIdentityView
{
  conversationIdentityView = self->_conversationIdentityView;
  if (!conversationIdentityView)
  {
    v4 = [CKNavBarConversationIdentityView alloc];
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    v6 = [(CKNavBarConversationIdentityView *)v4 initWithConversation:conversation];
    v7 = self->_conversationIdentityView;
    self->_conversationIdentityView = v6;

    [(CKNavbarCanvasViewController *)self _addUserDidTapNavigationBarRecognizer:self->_conversationIdentityView];
    conversationIdentityView = self->_conversationIdentityView;
  }

  return conversationIdentityView;
}

- (CKLabel)defaultLabel
{
  defaultLabel = self->_defaultLabel;
  if (!defaultLabel)
  {
    v4 = objc_alloc_init(CKLabel);
    v5 = self->_defaultLabel;
    self->_defaultLabel = v4;

    conversation = [(CKNavbarCanvasViewController *)self conversation];
    isBusinessConversation = [conversation isBusinessConversation];

    [(CKLabel *)self->_defaultLabel setTextAlignment:([(CKNavbarCanvasViewController *)self _canShowAvatarView]| isBusinessConversation) & 1];
    v8 = +[CKUIBehavior sharedBehaviors];
    noAvatarTitleFont = [v8 noAvatarTitleFont];
    [(CKLabel *)self->_defaultLabel setFont:noAvatarTitleFont];

    [(CKNavbarCanvasViewController *)self setDefaultLabelText];
    if (isBusinessConversation)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      theme = [v10 theme];
      conversation2 = [(CKNavbarCanvasViewController *)self conversation];
      chat = [conversation2 chat];
      v14 = [theme secondaryBrandColorForBusinessChat:chat];
      [(CKLabel *)self->_defaultLabel setTextColor:v14];
    }

    conversation3 = [(CKNavbarCanvasViewController *)self conversation];
    hasVerifiedBusiness = [conversation3 hasVerifiedBusiness];

    hideChevron = [(CKNavbarCanvasViewController *)self hideChevron];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__CKNavbarCanvasViewController_defaultLabel__block_invoke;
    v20[3] = &unk_1E72EEB80;
    v21 = hasVerifiedBusiness;
    v20[4] = self;
    v22 = !hideChevron;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];
    [defaultLabel setShouldHaveRotatedTitleIconImage:0 animated:0];

    [(CKNavbarCanvasViewController *)self _addUserDidTapNavigationBarRecognizer:self->_defaultLabel];
    defaultLabel = self->_defaultLabel;
  }

  return defaultLabel;
}

void __44__CKNavbarCanvasViewController_defaultLabel__block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) defaultLabel];
    v11 = v2;
    v3 = 3;
  }

  else
  {
    v4 = *(a1 + 41);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      v2 = [v5 defaultLabel];
      v11 = v2;
      v3 = 2;
    }

    else
    {
      v6 = [v5 conversation];
      v7 = [v6 isStewieConversation];

      v11 = [*(a1 + 32) defaultLabel];
      if (v7)
      {
        v8 = +[CKUIBehavior sharedBehaviors];
        v9 = [v8 theme];
        v10 = [v9 conversationListEmergencyColor];
        [v11 setTextColor:v10];

        goto LABEL_9;
      }

      v2 = v11;
      v3 = 0;
    }
  }

  [v2 setTitleIconImageType:v3];
LABEL_9:
}

- (void)setDefaultLabelText
{
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F04268F8];
  if (self->_navbarTitle)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_navbarTitle];
    [v13 appendAttributedString:v3];
  }

  if (![(CKNavbarCanvasViewController *)self shouldShowAvatarView]&& [(CKNavbarCanvasViewController *)self wantsVerifiedIconForTitle:self->_navbarTitle])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v5 = +[CKUIBehavior sharedBehaviors];
    businessVerifiedImageSmall = [v5 businessVerifiedImageSmall];
    [v4 setImage:businessVerifiedImageSmall];

    v7 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v4];
    [v13 appendAttributedString:v7];
  }

  _KTTitleIconAttributedString = [(CKNavbarCanvasViewController *)self _KTTitleIconAttributedString];
  if (_KTTitleIconAttributedString)
  {
    [v13 appendAttributedString:_KTTitleIconAttributedString];
    defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];
    [defaultLabel setIsAccessibilityElement:1];

    string = [v13 string];
    defaultLabel2 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [defaultLabel2 setAccessibilityLabel:string];
  }

  defaultLabel3 = [(CKNavbarCanvasViewController *)self defaultLabel];
  [defaultLabel3 setAttributedText:v13];
}

- (void)updateDefaultLabelIfNecessary
{
  _windowTraitCollection = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  if (!-[CKNavbarCanvasViewController _canShowAvatarView](self, "_canShowAvatarView") || [_windowTraitCollection verticalSizeClass] == 1)
  {
    [(CKNavbarCanvasViewController *)self setDefaultLabel:0];
    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];
    [canvasView setTitleView:defaultLabel];

    [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:0];
  }
}

- (void)_configureForEditMode
{
  if (!CKIsRunningInMacCatalyst())
  {
    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView setLeftItemView:0];
  }

  editCancelButtonView = [(CKNavbarCanvasViewController *)self editCancelButtonView];
  canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView2 setRightItemView:editCancelButtonView];
}

- (void)_configureForDefaultMode
{
  if ([(CKNavbarCanvasViewController *)self shouldShowDoneButton])
  {
    doneButton = [(CKNavbarCanvasViewController *)self doneButton];
  }

  else
  {
    if (![(CKNavbarCanvasViewController *)self canShowBackButtonView])
    {
      goto LABEL_6;
    }

    doneButton = [(CKNavbarCanvasViewController *)self backButtonView];
  }

  v4 = doneButton;
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setLeftItemView:v4];

LABEL_6:
  traitCollection = [(CKNavbarCanvasViewController *)self traitCollection];
  v6 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:traitCollection];
  canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView2 setRightItemView:v6];
}

- (UIButton)editCancelButtonView
{
  editCancelButtonView = self->_editCancelButtonView;
  if (!editCancelButtonView)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v5 = self->_editCancelButtonView;
    self->_editCancelButtonView = v4;

    v6 = self->_editCancelButtonView;
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    titleLabel = [(UIButton *)self->_editCancelButtonView titleLabel];
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [titleLabel setFont:v10];

    [(UIButton *)self->_editCancelButtonView addTarget:self action:sel__buttonPressed_ forEvents:64];
    editCancelButtonView = self->_editCancelButtonView;
  }

  return editCancelButtonView;
}

- (CKCanvasBackButtonView)backButtonView
{
  backButtonView = self->_backButtonView;
  if (!backButtonView)
  {
    v4 = [CKCanvasBackButtonView alloc];
    v5 = [(CKCanvasBackButtonView *)v4 initWithFrame:1 showPaddingTitleView:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_backButtonView;
    self->_backButtonView = v5;

    [(CKCanvasBackButtonView *)self->_backButtonView addTarget:self action:sel__buttonPressed_ forEvents:64];
    backButtonView = self->_backButtonView;
  }

  return backButtonView;
}

- (CKNavBarUnifiedCallButton)unifiedCallButton
{
  if (!self->_unifiedCallButton && !CKIsRunningInMacCatalyst())
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    isBusinessChat = [chat isBusinessChat];

    if ((isBusinessChat & 1) == 0)
    {
      v6 = [CKNavBarUnifiedCallButton buttonWithType:1];
      unifiedCallButton = self->_unifiedCallButton;
      self->_unifiedCallButton = v6;

      [(CKNavBarUnifiedCallButton *)self->_unifiedCallButton setDelegate:self];
    }
  }

  v8 = self->_unifiedCallButton;

  return v8;
}

- (id)persistentMenuButton
{
  persistentMenuManager = [(CKNavbarCanvasViewController *)self persistentMenuManager];
  button = [persistentMenuManager button];

  return button;
}

- (_TtC7ChatKit29CKNavBarPersistentMenuManager)persistentMenuManager
{
  if (!self->_persistentMenuManager && !CKIsRunningInMacCatalyst())
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    persistentMenu = [chat persistentMenu];

    if (persistentMenu)
    {
      v6 = [[_TtC7ChatKit29CKNavBarPersistentMenuManager alloc] initWithDelegate:self];
      persistentMenuManager = self->_persistentMenuManager;
      self->_persistentMenuManager = v6;

      v8 = self->_persistentMenuManager;
      conversation2 = [(CKNavbarCanvasViewController *)self conversation];
      chat2 = [conversation2 chat];
      persistentMenu2 = [chat2 persistentMenu];
      [(CKNavBarPersistentMenuManager *)v8 setupWithPersistentMenu:persistentMenu2];
    }
  }

  v12 = self->_persistentMenuManager;

  return v12;
}

- (void)_handlePersistentMenuChangedNotification:(id)notification
{
  traitCollection = [(CKNavbarCanvasViewController *)self traitCollection];
  v4 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:traitCollection];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setRightItemView:v4];
}

- (UIBarButtonItem)detailsBarButton
{
  v3 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v3 useMacToolbar];

  if (useMacToolbar)
  {
    detailsBarButton = self->_detailsBarButton;
    if (!detailsBarButton)
    {
      v6 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = +[CKUIBehavior sharedBehaviors];
      macToolbarDetailsImage = [v7 macToolbarDetailsImage];
      v9 = [v6 initWithImage:macToolbarDetailsImage style:0 target:self action:sel__buttonPressed_];
      v10 = self->_detailsBarButton;
      self->_detailsBarButton = v9;

      detailsBarButton = self->_detailsBarButton;
    }

    v11 = detailsBarButton;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setDetailsBarButton:(id)button
{
  buttonCopy = button;
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 useMacToolbar])
  {
    detailsBarButton = self->_detailsBarButton;

    v7 = buttonCopy;
    if (detailsBarButton == buttonCopy)
    {
      goto LABEL_8;
    }

    v8 = self->_detailsBarButton;
    if (v8)
    {
      [(UIBarButtonItem *)v8 setTarget:0];
      [(UIBarButtonItem *)self->_detailsBarButton setAction:0];
    }

    objc_storeStrong(&self->_detailsBarButton, button);
    [(UIBarButtonItem *)self->_detailsBarButton setTarget:self];
    [(UIBarButtonItem *)self->_detailsBarButton setAction:sel__buttonPressed_];
  }

  else
  {
  }

  v7 = buttonCopy;
LABEL_8:
}

- (UIButton)doneButton
{
  doneButton = self->_doneButton;
  if (!doneButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:102];
    v5 = self->_doneButton;
    self->_doneButton = v4;

    v6 = self->_doneButton;
    v7 = CKFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"DONE" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    [(UIButton *)self->_doneButton addTarget:self action:sel__buttonPressed_ forControlEvents:64];
    doneButton = self->_doneButton;
  }

  return doneButton;
}

- (UIButton)closeButton
{
  closeButton = self->_closeButton;
  if (!closeButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:7];
    v5 = self->_closeButton;
    self->_closeButton = v4;

    [(UIButton *)self->_closeButton setAccessibilityIdentifier:@"closeInlineReply"];
    [(UIButton *)self->_closeButton addTarget:self action:sel__buttonPressed_ forControlEvents:64];
    closeButton = self->_closeButton;
  }

  return closeButton;
}

- (void)_addUserDidTapNavigationBarRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (!CKIsRunningInMacCatalyst())
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__userDidTapNavigationBar];
    [v4 setDelegate:self];
    [recognizerCopy setUserInteractionEnabled:1];
    [recognizerCopy addGestureRecognizer:v4];
  }
}

- (void)conversationIdentityViewTapped:(id)tapped
{
  tappedCopy = tapped;
  conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];

  if (conversationIdentityView == tappedCopy)
  {
    delegate = [(CKNavbarCanvasViewController *)self delegate];
    conversationIdentityView2 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [delegate navbarCanvasViewController:self didTapView:conversationIdentityView2];
  }
}

- (void)buttonRequestsStartFaceTimeVideo:(id)video
{
  videoCopy = video;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (unifiedCallButton == videoCopy)
  {
    if (IMDeviceIsGreenTea() && (-[CKNavbarCanvasViewController conversation](self, "conversation"), v6 = objc_claimAutoreleasedReturnValue(), [v6 chat], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isGroupChat"), v7, v6, (v8 & 1) == 0))
    {
      conversation = [(CKNavbarCanvasViewController *)self conversation];
      chat = [conversation chat];
      [chat initiateTUDialRequestWithVideoEnabled:1];
    }

    else
    {
      conversation = [(CKNavbarCanvasViewController *)self conversation];
      chat = [conversation chat];
      [chat initiateTUConversationWithVideoEnabled:1];
    }
  }
}

- (void)buttonRequestsStartFaceTimeAudio:(id)audio
{
  audioCopy = audio;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (unifiedCallButton == audioCopy)
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    [chat initiateTUConversationWithVideoEnabled:0];
  }
}

- (void)buttonRequestsStartTelephonyCall:(id)call
{
  callCopy = call;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  v5 = unifiedCallButton;
  if (unifiedCallButton == callCopy)
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    recipient = [conversation recipient];

    if (!recipient)
    {
      return;
    }

    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    recipient2 = [conversation2 recipient];

    contactsManager = [(CKNavbarCanvasViewController *)self contactsManager];
    rawAddress = [recipient2 rawAddress];
    [contactsManager startCommunicationForEntity:recipient2 action:3 address:rawAddress];

    v5 = recipient2;
  }
}

- (void)button:(id)button requestsJoinActiveCallWithVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  buttonCopy = button;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (unifiedCallButton == buttonCopy)
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    conversation2 = [chat conversation];

    if (conversation2)
    {
      conversation3 = [(CKNavbarCanvasViewController *)self conversation];
      chat2 = [conversation3 chat];
      [chat2 joinExistingTUConversation];
    }

    else
    {
      IsGreenTea = IMDeviceIsGreenTea();
      conversation3 = [(CKNavbarCanvasViewController *)self conversation];
      chat3 = [conversation3 chat];
      chat2 = chat3;
      if (IsGreenTea)
      {
        [chat3 initiateTUDialRequestWithVideoEnabled:enabledCopy];
      }

      else
      {
        [chat3 initiateTUConversationWithVideoEnabled:enabledCopy];
      }
    }
  }
}

- (void)button:(id)button requestsStartFaceTimeWithScreenShareType:(unint64_t)type
{
  buttonCopy = button;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (unifiedCallButton == buttonCopy)
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    [chat initiateTUConversationWithScreenShareType:type];
  }
}

- (void)buttonRequestsOpenJoinedCall:(id)call
{
  callCopy = call;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (unifiedCallButton == callCopy)
  {
    conversation = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation chat];
    conversation2 = [chat conversation];

    if (conversation2 && [conversation2 state])
    {
      faceTimeShowInCallUIURL = [MEMORY[0x1E695DFF8] faceTimeShowInCallUIURL];
      TUOpenURL();
    }

    else
    {
      faceTimeShowInCallUIURL = [(CKNavbarCanvasViewController *)self conversation];
      chat2 = [faceTimeShowInCallUIURL chat];
      [chat2 joinExistingTUConversation];
    }
  }
}

- (void)buttonWidthDidChange:(id)change
{
  changeCopy = change;
  unifiedCallButton = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (unifiedCallButton == changeCopy)
  {
    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    [canvasView setNeedsLayout];
  }
}

- (void)showContactCardForEntity:(id)entity address:(id)address
{
  v28[1] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  addressCopy = address;
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v28[0] = descriptorForRequiredKeys;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

  v10 = MEMORY[0x1E69A7FD0];
  defaultIMHandle = [entityCopy defaultIMHandle];
  v12 = [defaultIMHandle cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v13 = [v10 isCNContactAKnownContact:v12];

  if (v13)
  {
    suggestionsEnabledContactStore = [(CKNavbarCanvasViewController *)self suggestionsEnabledContactStore];
    v15 = [entityCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
    identifier = [v15 identifier];
    v17 = [suggestionsEnabledContactStore unifiedContactWithIdentifier:identifier keysToFetch:v9 error:0];

    if (addressCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = [entityCopy cnContactWithKeys:v9];
    if (addressCopy)
    {
      goto LABEL_6;
    }
  }

  defaultIMHandle2 = [entityCopy defaultIMHandle];
  addressCopy = [defaultIMHandle2 ID];

LABEL_6:
  _appearsToBePhoneNumber = [addressCopy _appearsToBePhoneNumber];
  v20 = MEMORY[0x1E695C330];
  if (!_appearsToBePhoneNumber)
  {
    v20 = MEMORY[0x1E695C208];
  }

  v21 = *v20;
  if (v13)
  {
    v22 = [MEMORY[0x1E695D148] viewControllerForContact:v17];
    contentViewController = [v22 contentViewController];
    [contentViewController setShouldShowLinkedContacts:1];
  }

  else
  {
    v22 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v17];
  }

  v24 = [v17 identifierForKey:v21 withDestination:addressCopy];
  [v22 highlightPropertyWithKey:v21 identifier:v24];

  suggestionsEnabledContactStore2 = [(CKNavbarCanvasViewController *)self suggestionsEnabledContactStore];
  [v22 setContactStore:suggestionsEnabledContactStore2];

  contentViewController2 = [v22 contentViewController];
  [contentViewController2 setAllowsContactBlocking:1];

  if (objc_opt_respondsToSelector())
  {
    [v22 setEdgesForExtendedLayout:0];
  }

  proxyNavigationController = [(CKNavbarCanvasViewController *)self proxyNavigationController];
  [proxyNavigationController pushViewController:v22 animated:1];
}

- (CNContactStore)suggestionsEnabledContactStore
{
  suggestionsEnabledContactStore = self->_suggestionsEnabledContactStore;
  if (!suggestionsEnabledContactStore)
  {
    v4 = MEMORY[0x1E695CE18];
    if ([MEMORY[0x1E695CD58] suggestionsEnabled])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    v6 = [v4 storeWithOptions:v5];
    v7 = self->_suggestionsEnabledContactStore;
    self->_suggestionsEnabledContactStore = v6;

    suggestionsEnabledContactStore = self->_suggestionsEnabledContactStore;
  }

  return suggestionsEnabledContactStore;
}

- (int64_t)_unreadCount
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  if (delegate)
  {
    delegate2 = [(CKNavbarCanvasViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate3 = [(CKNavbarCanvasViewController *)self delegate];
      delegate = [delegate3 unreadCountForCurrentFilterModeForNavbarCanvasViewController:self];
    }

    else
    {
      delegate = 0;
    }
  }

  conversation = [(CKNavbarCanvasViewController *)self conversation];
  v8 = delegate - [conversation unreadCount];

  return v8;
}

- (void)_updateUnreadCountForBackbuttonView:(int64_t)view
{
  [(CKNavbarCanvasViewController *)self setUnreadCountTitleColor];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:view];
  v9 = v5;
  if (view < 1)
  {
    __ck_localizedString = 0;
  }

  else
  {
    __ck_localizedString = [v5 __ck_localizedString];
  }

  backButtonView = [(CKNavbarCanvasViewController *)self backButtonView];
  [backButtonView setBackButtonTitle:__ck_localizedString];

  view = [(CKNavbarCanvasViewController *)self view];
  [view setNeedsLayout];
}

- (void)_chatUnreadCountDidChange:(id)change
{
  _unreadCount = [(CKNavbarCanvasViewController *)self _unreadCount];

  [(CKNavbarCanvasViewController *)self _updateUnreadCountForBackbuttonView:_unreadCount];
}

- (void)setUnreadCountTitleColor
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  isBusinessConversation = [conversation isBusinessConversation];

  backButtonView = [(CKNavbarCanvasViewController *)self backButtonView];
  if (isBusinessConversation)
  {
    whiteColor = +[CKUIBehavior sharedBehaviors];
    theme = [whiteColor theme];
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation2 chat];
    v9 = [theme primaryBrandColorForBusinessChat:chat];
    [backButtonView setTitleLabelColor:v9];
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [backButtonView setTitleLabelColor:whiteColor];
  }
}

- (void)_contactPhotosEnabledChangedNotification:(id)notification
{
  traitCollection = [(CKNavbarCanvasViewController *)self traitCollection];
  v5 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:traitCollection];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setTitleView:v5];

  canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
  titleView = [canvasView2 titleView];
  conversationIdentityView = [(CKNavbarCanvasViewController *)self conversationIdentityView];

  if (titleView == conversationIdentityView)
  {
    canvasView3 = [(CKNavbarCanvasViewController *)self canvasView];
    titleView2 = [canvasView3 titleView];
    defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];

    if (titleView2 != defaultLabel)
    {
      [(CKNavbarCanvasViewController *)self setDefaultLabel:0];
    }
  }

  else
  {
    [(CKNavbarCanvasViewController *)self setConversationIdentityView:0];
  }

  navbarTitle = [(CKNavbarCanvasViewController *)self navbarTitle];
  [(CKNavbarCanvasViewController *)self updateTitle:navbarTitle animated:0];

  canvasView4 = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView4 setNeedsLayout];
}

- (void)refreshAudioButtonTargetAction
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  recipients = [conversation recipients];
  v5 = [recipients count];

  if (v5 == 1)
  {
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    recipient = [conversation2 recipient];

    contactsManager = [(CKNavbarCanvasViewController *)self contactsManager];
    v9 = [contactsManager shouldAlwaysShowCallMenuForEntity:recipient];

    canvasView = [(CKNavbarCanvasViewController *)self canvasView];
    buttonViewFaceTimeAudio = [canvasView buttonViewFaceTimeAudio];
    [buttonViewFaceTimeAudio setContextMenuIsPrimary:v9];

    if (v9)
    {
      canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
      buttonViewFaceTimeAudio2 = [canvasView2 buttonViewFaceTimeAudio];
      [buttonViewFaceTimeAudio2 removeTarget:0 action:0 forControlEvents:64];
      goto LABEL_6;
    }
  }

  else
  {
    canvasView3 = [(CKNavbarCanvasViewController *)self canvasView];
    buttonViewFaceTimeAudio3 = [canvasView3 buttonViewFaceTimeAudio];
    [buttonViewFaceTimeAudio3 setContextMenuIsPrimary:0];
  }

  canvasView2 = [(CKNavbarCanvasViewController *)self canvasView];
  buttonViewFaceTimeAudio2 = [canvasView2 buttonViewFaceTimeAudio];
  [buttonViewFaceTimeAudio2 addTarget:self action:sel__facetimeAudioButtonTapped_ forControlEvents:64];
LABEL_6:
}

- (void)_facetimeAudioButtonTapped:(id)tapped
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  [delegate navbarCanvasViewControllerFaceTimeAudioButtonTapped:self];
}

- (void)_facetimeVideoButtonTapped:(id)tapped
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  [delegate navbarCanvasViewControllerFaceTimeVideoButtonTapped:self];
}

- (void)_infoButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  [delegate navbarCanvasViewController:self infoButtonTapped:tappedCopy];
}

- (void)_buttonPressed:(id)pressed
{
  v17 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKNavbarCanvasViewController *)self delegate];
    [delegate2 navbarCanvasViewController:self didTapView:pressedCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      delegate3 = [(CKNavbarCanvasViewController *)self delegate];
      delegate4 = [(CKNavbarCanvasViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      v13 = 138412546;
      v14 = delegate3;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Delegate (%@), respondsToSelector (%@)", &v13, 0x16u);
    }
  }
}

- (BOOL)shouldConfigureForJunkModal
{
  selfCopy = self;
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate shouldConfigureForJunkModalInNavbarCanvasViewController:selfCopy];

  return selfCopy;
}

- (BOOL)splitViewControllerIsCollapsed
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  splitViewController = [delegate splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  return isCollapsed;
}

- (BOOL)shouldUseMinimumSafeAreas
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  shouldUseMinimumSafeAreas = [delegate shouldUseMinimumSafeAreas];

  return shouldUseMinimumSafeAreas;
}

- (NSDirectionalEdgeInsets)systemMinimumLayoutMarginsForView:(id)view
{
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  [delegate systemMinimumLayoutMarginsForViewController:self];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.trailing = v16;
  result.bottom = v15;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (void)_handleAllowedByScreenTimeChatChanged:(id)changed
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [(CKNavbarCanvasViewController *)self navBarTitleFromConversation:conversation];
  [(CKNavbarCanvasViewController *)self updateTitle:v4 animated:1];
}

- (void)persistentMenuManager:(id)manager selectedChipAction:(id)action
{
  actionCopy = action;
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKNavbarCanvasViewController *)self delegate];
    [delegate2 navbarCanvasViewController:self selectedChipAction:actionCopy];
  }
}

- (void)_handleServiceChangedNotification:(id)notification
{
  traitCollection = [(CKNavbarCanvasViewController *)self traitCollection];
  v4 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:traitCollection];
  canvasView = [(CKNavbarCanvasViewController *)self canvasView];
  [canvasView setRightItemView:v4];
}

- (void)persistentMenuManager:(id)manager selectedSuggestedReply:(id)reply
{
  replyCopy = reply;
  delegate = [(CKNavbarCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKNavbarCanvasViewController *)self delegate];
    [delegate2 navbarCanvasViewController:self selectedSuggestedReply:replyCopy];
  }
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)notification
{
  traitCollection = [(CKNavbarCanvasViewController *)self traitCollection];
  v8 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:traitCollection];

  defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];

  v6 = v8;
  if (v8 == defaultLabel)
  {
    [(CKNavbarCanvasViewController *)self setDefaultLabel:0];
    traitCollection2 = [(CKNavbarCanvasViewController *)self traitCollection];
    [(CKNavbarCanvasViewController *)self _initializeForTraitCollection:traitCollection2];

    v6 = v8;
  }
}

- (id)_KTTitleIconAttributedString
{
  conversation = [(CKNavbarCanvasViewController *)self conversation];
  sendingService = [conversation sendingService];
  v5 = [sendingService supportsCapability:*MEMORY[0x1E69A79A0]];

  if (v5)
  {
    conversation2 = [(CKNavbarCanvasViewController *)self conversation];
    chat = [conversation2 chat];
    v31 = 0;
    v8 = [chat keyTransparencyStatusForAffectedHandles:&v31];

    v9 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v9 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    v10 = 0;
    if (v8 <= 0x13)
    {
      if (((1 << v8) & 0xBF48F) != 0)
      {
LABEL_12:

        goto LABEL_14;
      }

      if (((1 << v8) & 0xA60) != 0)
      {
        v11 = @"exclamationmark.triangle.fill";
      }

      else
      {
        v11 = @"checkmark.circle.fill";
      }

      if (((1 << v8) & 0xA60) != 0)
      {
        v12 = @"WarningHeader";
      }

      else
      {
        v12 = @"VerifiedHeader";
      }

      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
      defaultLabel = [(CKNavbarCanvasViewController *)self defaultLabel];
      [defaultLabel setAccessibilityIdentifier:v12];
    }

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v15 = [v10 imageWithTintColor:systemGrayColor];

    v16 = +[CKUIBehavior sharedBehaviors];
    noAvatarTitleFont = [v16 noAvatarTitleFont];
    [noAvatarTitleFont pointSize];
    v19 = v18;

    [v15 size];
    v21 = v20;
    [v15 size];
    v23 = v19 * (v21 / v22);
    v24 = +[CKUIBehavior sharedBehaviors];
    noAvatarTitleFont2 = [v24 noAvatarTitleFont];
    [noAvatarTitleFont2 capHeight];
    v27 = (v26 - v19) * 0.5;

    [v9 setBounds:{0.0, v27, v23, v19}];
    [v9 setImage:v15];
    v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@" "];
    v29 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
    [v28 appendAttributedString:v29];

    v10 = [v28 copy];
    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (CKNavbarCanvasViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationController)proxyNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyNavigationController);

  return WeakRetained;
}

@end