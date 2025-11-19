@interface CKNavbarCanvasViewController
+ (void)updateFTControlsWithConversation:(id)a3 canvasViewController:(id)a4 screenSharingCapabilities:(id)a5 unifiedCallButton:(id)a6;
- (BOOL)_canShowAvatarView;
- (BOOL)_shouldShowFacetimeButton;
- (BOOL)_shouldShowPersistentMenu;
- (BOOL)findMyNavBarEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hideChevron;
- (BOOL)shouldConfigureForJunkModal;
- (BOOL)shouldUseMinimumSafeAreas;
- (BOOL)splitViewControllerIsCollapsed;
- (BOOL)wantsVerifiedIconForTitle:(id)a3;
- (CKCanvasBackButtonView)backButtonView;
- (CKDetailsContactsManager)contactsManager;
- (CKLabel)defaultLabel;
- (CKNavBarConversationIdentityView)conversationIdentityView;
- (CKNavBarUnifiedCallButton)unifiedCallButton;
- (CKNavbarCanvasViewController)initWithConversation:(id)a3 navigationController:(id)a4 hideLocationIfUnavailable:(BOOL)a5;
- (CKNavbarCanvasViewControllerDelegate)delegate;
- (CNContactStore)suggestionsEnabledContactStore;
- (NSDirectionalEdgeInsets)systemMinimumLayoutMarginsForView:(id)a3;
- (UIBarButtonItem)detailsBarButton;
- (UIButton)closeButton;
- (UIButton)doneButton;
- (UIButton)editCancelButtonView;
- (UINavigationController)proxyNavigationController;
- (_TtC7ChatKit29CKNavBarPersistentMenuManager)persistentMenuManager;
- (id)_KTTitleIconAttributedString;
- (id)_leftItemViewForTraitCollection:(id)a3;
- (id)_rightItemViewForTraitCollection:(id)a3;
- (id)_titleItemViewForTraitCollection:(id)a3;
- (id)_windowTraitCollection;
- (id)navBarTitleFromConversation:(id)a3;
- (id)persistentMenuButton;
- (id)recipientContextMenu;
- (int64_t)_unreadCount;
- (void)_addUserDidTapNavigationBarRecognizer:(id)a3;
- (void)_buttonPressed:(id)a3;
- (void)_chatUnreadCountDidChange:(id)a3;
- (void)_configureForDefaultMode;
- (void)_configureForEditMode;
- (void)_contactPhotosEnabledChangedNotification:(id)a3;
- (void)_facetimeAudioButtonTapped:(id)a3;
- (void)_facetimeVideoButtonTapped:(id)a3;
- (void)_handleAddressBookChange:(id)a3;
- (void)_handleAllowedByScreenTimeChatChanged:(id)a3;
- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3;
- (void)_handlePersistentMenuChangedNotification:(id)a3;
- (void)_handleServiceChangedNotification:(id)a3;
- (void)_infoButtonTapped:(id)a3;
- (void)_initializeForTraitCollection:(id)a3;
- (void)_notifyDelegateForNavBarResize;
- (void)_refreshIDSStatusWithCompletion:(id)a3;
- (void)_updateFTControls;
- (void)_updateUnreadCountForBackbuttonView:(int64_t)a3;
- (void)_userDidTapNavigationBar;
- (void)button:(id)a3 requestsJoinActiveCallWithVideoEnabled:(BOOL)a4;
- (void)button:(id)a3 requestsStartFaceTimeWithScreenShareType:(unint64_t)a4;
- (void)buttonRequestsOpenJoinedCall:(id)a3;
- (void)buttonRequestsStartFaceTimeAudio:(id)a3;
- (void)buttonRequestsStartFaceTimeVideo:(id)a3;
- (void)buttonRequestsStartTelephonyCall:(id)a3;
- (void)buttonWidthDidChange:(id)a3;
- (void)configureForEditing:(BOOL)a3;
- (void)conversationIdentityViewTapped:(id)a3;
- (void)dealloc;
- (void)fmfSessionChatLocationReceived:(id)a3;
- (void)fmfSessionChatLocationRefreshed:(id)a3;
- (void)fmfSessionRelationshipDidChange:(id)a3;
- (void)handleCloseNavBarAnimationCompleteNotification:(id)a3;
- (void)loadView;
- (void)persistentMenuManager:(id)a3 selectedChipAction:(id)a4;
- (void)persistentMenuManager:(id)a3 selectedSuggestedReply:(id)a4;
- (void)refreshAudioButtonTargetAction;
- (void)refreshFMFLocationIfNecessary;
- (void)registerNotifications;
- (void)setCanShowBackButtonView:(BOOL)a3;
- (void)setDefaultLabelText;
- (void)setDetailsBarButton:(id)a3;
- (void)setIndicatorType:(int64_t)a3;
- (void)setIsInEditingMode:(BOOL)a3;
- (void)setLocationLabel:(id)a3;
- (void)setLocationLabelHidden:(BOOL)a3;
- (void)setLocationToDisplay:(id)a3;
- (void)setNavBarContext:(int64_t)a3;
- (void)setUnreadCountTitleColor;
- (void)showContactCardForEntity:(id)a3 address:(id)a4;
- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAvatarPickerDelegate;
- (void)updateContentsForConversation:(id)a3;
- (void)updateDefaultLabelIfNecessary;
- (void)updateForRecoveredJunkConversation;
- (void)updateLeftItemView;
- (void)updateLocationLabel;
- (void)updateLocationLabelParentViewAssignment;
- (void)updateLocationToDisplayWithHandle:(id)a3;
- (void)updateRightItemView;
- (void)updateTitle:(id)a3 animated:(BOOL)a4;
- (void)updateTitleViewAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKNavbarCanvasViewController

- (CKNavbarCanvasViewController)initWithConversation:(id)a3 navigationController:(id)a4 hideLocationIfUnavailable:(BOOL)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = CKNavbarCanvasViewController;
  v10 = [(CKNavbarCanvasViewController *)&v22 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    [(CKNavbarCanvasViewController *)v10 setConversation:v8];
    [(CKNavbarCanvasViewController *)v11 setProxyNavigationController:v9];
    v12 = [(CKNavbarCanvasViewController *)v11 navBarTitleFromConversation:v8];
    [(CKNavbarCanvasViewController *)v11 setNavbarTitle:v12];

    [(CKNavbarCanvasViewController *)v11 registerNotifications];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(CKNavbarCanvasViewController *)v11 findMyNavBarEnabled];
        v15 = [(CKNavbarCanvasViewController *)v11 conversation];
        v16 = v15;
        v17 = @"NO";
        *buf = 136315650;
        v24 = "[CKNavbarCanvasViewController initWithConversation:navigationController:hideLocationIfUnavailable:]";
        v25 = 2112;
        if (v14)
        {
          v17 = @"YES";
        }

        v26 = v17;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s: Nav bar location refresh enablement: %@ for conversation: %@", buf, 0x20u);
      }
    }

    if ([(CKNavbarCanvasViewController *)v11 findMyNavBarEnabled])
    {
      [(CKNavbarCanvasViewController *)v11 refreshFMFLocationIfNecessary];
      if (a5)
      {
        v18 = [(CKNavbarCanvasViewController *)v11 locationToDisplay];
        [(CKNavbarCanvasViewController *)v11 setLocationLabelHidden:v18 == 0];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(CKNavbarCanvasViewController *)self conversation];
  [v3 addObserver:self selector:sel__handleConversationRecipientsDidChange_ name:@"CKConversationParticipantsDidChangeNotification" object:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69A56E8];
  v7 = [(CKNavbarCanvasViewController *)self conversation];
  v8 = [v7 chat];
  [v5 addObserver:self selector:sel__handleAllowedByScreenTimeChatChanged_ name:v6 object:v8];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__handleKeyTransparencyStatusChangedNotification_ name:*MEMORY[0x1E69A5810] object:0];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel__handleServiceChangedNotification_ name:*MEMORY[0x1E69A5908] object:0];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__handlePersistentMenuChangedNotification_ name:*MEMORY[0x1E69A6AC8] object:0];

  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:self selector:sel_fmfSessionRelationshipDidChange_ name:*MEMORY[0x1E69A5990] object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = *MEMORY[0x1E69A5980];
    v15 = [(CKNavbarCanvasViewController *)self conversation];
    v16 = [v15 chat];
    [v13 addObserver:self selector:sel_fmfSessionChatLocationRefreshed_ name:v14 object:v16];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:self selector:sel_fmfSessionChatLocationReceived_ name:*MEMORY[0x1E69A5988] object:0];
  }
}

- (void)_refreshIDSStatusWithCompletion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self conversation];
  v6 = [v5 recipients];
  v7 = [v6 __im_canonicalIDSAddressesFromEntities];

  if ([v7 count])
  {
    v8 = dispatch_group_create();
    v9 = [(CKNavbarCanvasViewController *)self conversation];
    v10 = [CKFaceTimeUtilities isModernScreenSharingAvailable:v9];

    if (v10)
    {
      dispatch_group_enter(v8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __64__CKNavbarCanvasViewController__refreshIDSStatusWithCompletion___block_invoke;
      v14[3] = &unk_1E72EEB58;
      v14[4] = self;
      v15 = v8;
      [CKFaceTimeUtilities queryModernScreenSharingCapabilities:v7 completion:v14];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__CKNavbarCanvasViewController__refreshIDSStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E72EBDB8;
    v13 = v4;
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
      v19 = [v7 count];
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
    v3 = [MEMORY[0x1E69A5B70] sharedInstance];
    v4 = [(CKNavbarCanvasViewController *)self conversation];
    v5 = [v4 recipient];
    v6 = [v5 defaultIMHandle];
    v8 = [v3 findMyLocationForHandleOrSibling:v6];

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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isFindMyNavBarEnabled];

  v5 = [MEMORY[0x1E69A5B70] sharedInstance];
  v6 = [v5 disableLocationSharing];

  v7 = [(CKNavbarCanvasViewController *)self conversation];
  if (v7)
  {
    v8 = [(CKNavbarCanvasViewController *)self conversation];
    v9 = [v8 isGroupConversation] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v4 & v9 & (v6 ^ 1);
}

- (void)fmfSessionChatLocationRefreshed:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    v5 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 object];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(CKNavbarCanvasViewController *)self conversation];
    v8 = [v7 chat];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(CKNavbarCanvasViewController *)self conversation];
          v12 = [v11 recipient];
          v13 = [v12 defaultIMHandle];
          v17 = 136315394;
          v18 = "[CKNavbarCanvasViewController fmfSessionChatLocationRefreshed:]";
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%s handle: %@", &v17, 0x16u);
        }
      }

      v14 = [(CKNavbarCanvasViewController *)self conversation];
      v15 = [v14 recipient];
      v16 = [v15 defaultIMHandle];
      [(CKNavbarCanvasViewController *)self updateLocationToDisplayWithHandle:v16];
    }
  }
}

- (void)fmfSessionChatLocationReceived:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    v5 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 object];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(CKNavbarCanvasViewController *)self conversation];
    v8 = [v7 chat];
    v9 = [v8 recipient];
    v10 = [v6 identifier];
    v19 = v6;
    if ([v9 isEqual:v10])
    {
    }

    else
    {
      v11 = [(CKNavbarCanvasViewController *)self conversation];
      v12 = [v11 chat];
      v13 = [v12 allSiblingFindMyHandles];
      v14 = [v13 containsObject:v6];

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

    v16 = [(CKNavbarCanvasViewController *)self conversation];
    v17 = [v16 recipient];
    v18 = [v17 defaultIMHandle];
    [(CKNavbarCanvasViewController *)self updateLocationToDisplayWithHandle:v18];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)fmfSessionRelationshipDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    v5 = [v4 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 object];

      if (v6)
      {
        v7 = [(CKNavbarCanvasViewController *)self conversation];
        v8 = [v7 chat];
        v9 = [v8 allSiblingFindMyHandles];
        v10 = [v9 containsObject:v6];

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
              v15 = v6;
              _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s handle: %@", &v12, 0x16u);
            }
          }

          [(CKNavbarCanvasViewController *)self refreshFMFLocationIfNecessary];
        }
      }
    }

    else
    {

      v6 = 0;
    }
  }
}

- (void)updateLocationToDisplayWithHandle:(id)a3
{
  v16 = a3;
  v4 = [(CKNavbarCanvasViewController *)self findMyNavBarEnabled];
  if (v16)
  {
    if (v4)
    {
      v5 = [(CKNavbarCanvasViewController *)self conversation];
      v6 = [v5 chat];
      v7 = [v6 allSiblingFindMyHandles];
      v8 = [v16 findMyHandle];
      v9 = [v7 containsObject:v8];

      if (v9)
      {
        v10 = [MEMORY[0x1E69A5B70] sharedInstance];
        v11 = [(CKNavbarCanvasViewController *)self conversation];
        v12 = [v11 recipient];
        v13 = [v12 defaultIMHandle];
        v14 = [v10 findMyLocationForHandleOrSibling:v13];

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

- (void)setLocationLabelHidden:(BOOL)a3
{
  if (self->_locationLabelHidden != a3)
  {
    v4 = a3;
    self->_locationLabelHidden = a3;
    v6 = [(CKNavbarCanvasViewController *)self locationLabel];
    [v6 setHidden:v4];

    v7 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [v7 setSubtitleHidden:v4];

    [(CKNavbarCanvasViewController *)self _notifyDelegateForNavBarResize];
  }
}

- (void)setLocationToDisplay:(id)a3
{
  v5 = a3;
  if (-[CKNavbarCanvasViewController findMyNavBarEnabled](self, "findMyNavBarEnabled") && ([v5 isEqual:self->_locationToDisplay] & 1) == 0)
  {
    objc_storeStrong(&self->_locationToDisplay, a3);
    [(CKNavbarCanvasViewController *)self updateLocationLabel];
  }
}

- (void)updateLocationLabel
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    v3 = [(CKNavbarCanvasViewController *)self locationToDisplay];
    v4 = [v3 shortAddress];

    if (v4)
    {
      v5 = [(CKNavbarCanvasViewController *)self locationLabel];
      v6 = [v5 attributedText];
      v7 = [v6 string];
      v8 = [v7 isEqualToString:v4];

      if (v8)
      {
        v9 = [(CKNavbarCanvasViewController *)self locationLabel];
        v10 = [v9 attributedText];
        v11 = [v10 attributesAtIndex:0 effectiveRange:0];

        v12 = +[CKUIBehavior sharedBehaviors];
        v13 = [(CKNavbarCanvasViewController *)self traitCollection];
        v14 = [v13 preferredContentSizeCategory];
        v15 = [v12 navBarSubtitleAttributedStringAttributesForContentSizeCategory:v14];

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
          v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v15];
          v24 = [(CKNavbarCanvasViewController *)self locationLabel];
          [v24 setAttributedText:v23];

          v25 = [(CKNavbarCanvasViewController *)self locationLabel];
          [v25 sizeToFit];

          v26 = [(CKNavbarCanvasViewController *)self locationLabel];
          [v26 setNeedsLayout];
        }
      }

      else
      {
        v30 = objc_alloc(MEMORY[0x1E69DCC10]);
        v11 = [v30 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v31 = +[CKUIBehavior sharedBehaviors];
        v32 = [(CKNavbarCanvasViewController *)self traitCollection];
        v33 = [v32 preferredContentSizeCategory];
        v15 = [v31 navBarSubtitleAttributedStringAttributesForContentSizeCategory:v33];

        v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v15];
        [v11 setAttributedText:v34];

        v35 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        [v11 setTextColor:v35];

        [v11 setTextAlignment:1];
        [(CKNavbarCanvasViewController *)self setLocationLabel:v11];
      }

      v36 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
      v37 = [v36 subtitle];
      v38 = [v37 isEqualToString:v4];

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
        v39 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
        [v39 setSubtitle:v4];
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
          v42 = [(CKNavbarCanvasViewController *)self locationLabelHidden];
          v47 = 67109120;
          LODWORD(v48) = v42;
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

      v28 = [(CKNavbarCanvasViewController *)self locationLabel];
      if (!v28)
      {
        v43 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
        v44 = [v43 subtitle];
        v45 = [v44 isEqualToString:&stru_1F04268F8];

        [(CKNavbarCanvasViewController *)self setLocationLabel:0];
        v46 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
        [v46 setSubtitle:&stru_1F04268F8];

        [(CKNavbarCanvasViewController *)self updateLocationLabelParentViewAssignment];
        if (v45)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      [(CKNavbarCanvasViewController *)self setLocationLabel:0];
      v29 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
      [v29 setSubtitle:&stru_1F04268F8];
    }

    [(CKNavbarCanvasViewController *)self updateLocationLabelParentViewAssignment];
LABEL_31:
    [(CKNavbarCanvasViewController *)self _notifyDelegateForNavBarResize];
    goto LABEL_32;
  }
}

- (void)setLocationLabel:(id)a3
{
  v7 = a3;
  v5 = [(CKNavbarCanvasViewController *)self findMyNavBarEnabled];
  v6 = v7;
  if (v5 && self->_locationLabel != v7)
  {
    [(UILabel *)v7 sizeToFit];
    objc_storeStrong(&self->_locationLabel, a3);
    [(UILabel *)self->_locationLabel setHidden:[(CKNavbarCanvasViewController *)self locationLabelHidden]];
    v6 = v7;
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

  v4 = [(CKNavbarCanvasViewController *)self canvasView];
  [v4 setSubtitleView:locationLabel];
}

- (id)navBarTitleFromConversation:(id)a3
{
  v4 = a3;
  if (IMIsRunningInScreenshotTesting_IsolatedTranscriptUI())
  {
    v5 = 0;
  }

  else
  {
    if ([v4 hasDisplayName])
    {
      [v4 displayName];
    }

    else
    {
      [v4 displayNameForMediaObjects:0 subject:0 shouldListParticipants:{-[CKNavbarCanvasViewController _canShowAvatarView](self, "_canShowAvatarView")}];
    }
    v5 = ;
  }

  return v5;
}

- (void)startAudioCommunicationUsingPreferredRouteIfAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKNavbarCanvasViewController *)self conversation];
  v7 = [v5 recipient];

  if (v7)
  {
    v6 = [(CKNavbarCanvasViewController *)self contactsManager];
    [v6 startCommunicationForEntity:v7 action:2 address:0 usePreferredRouteIfAvailable:v3];
  }
}

- (id)_windowTraitCollection
{
  v2 = [MEMORY[0x1E69DD2E8] keyWindow];
  v3 = [v2 traitCollection];

  return v3;
}

- (void)setIsInEditingMode:(BOOL)a3
{
  if (self->_isInEditingMode != a3)
  {
    self->_isInEditingMode = a3;
    v4 = [(CKNavbarCanvasViewController *)self canvasView];
    [v4 setShouldAnimateAvatarLayoutChanges:1];

    isInEditingMode = self->_isInEditingMode;
    v6 = [(CKNavbarCanvasViewController *)self canvasView];
    [v6 setIsInEditingMode:isInEditingMode];
  }
}

- (BOOL)_canShowAvatarView
{
  if (IMIsRunningInScreenshotTesting_IsolatedTranscriptUI())
  {
    return 0;
  }

  v4 = [(CKNavbarCanvasViewController *)self delegate];
  v5 = [v4 shouldShowAvatarViewInNavBarCanvas];

  return v5;
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
  v14 = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v3 = [CKNavigationBarCanvasView alloc];
  v4 = [(CKNavigationBarCanvasView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKNavbarCanvasViewController *)self setCanvasView:v4];

  if ([(CKNavbarCanvasViewController *)self findMyNavBarEnabled])
  {
    [(CKNavbarCanvasViewController *)self updateLocationLabel];
  }

  v5 = [(CKNavbarCanvasViewController *)self canvasView];
  [v5 setDelegate:self];

  v6 = [(CKNavbarCanvasViewController *)self conversation];
  v7 = [v6 isGroupConversation];

  if (v7)
  {
    v8 = +[CKFaceTimeUtilities isGroupFaceTimeSupported];
    v9 = [(CKNavbarCanvasViewController *)self canvasView];
    [v9 setMultiwayAudioButtonHidden:!v8];
  }

  v10 = [(CKNavbarCanvasViewController *)self canvasView];
  [v10 setKeepTitleViewCentered:1];

  [(CKNavbarCanvasViewController *)self _initializeForTraitCollection:v14];
  v11 = [(CKNavbarCanvasViewController *)self navbarTitle];
  [(CKNavbarCanvasViewController *)self updateTitle:v11 animated:0];

  [(CKNavbarCanvasViewController *)self updateAvatarPickerDelegate];
  v12 = [(CKNavbarCanvasViewController *)self canvasView];
  [v12 setClipsToBounds:1];

  v13 = [(CKNavbarCanvasViewController *)self canvasView];
  [(CKNavbarCanvasViewController *)self setView:v13];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self canvasView];
  v6 = [v5 leftItemView];

  v7 = [(CKNavbarCanvasViewController *)self canvasView];
  v8 = [v7 buttonViewFaceTimeAudio];

  v9 = [(CKNavbarCanvasViewController *)self canvasView];
  v10 = [v9 buttonViewFaceTimeVideo];

  v11 = [(CKNavbarCanvasViewController *)self view];
  [v4 locationInView:v11];
  v13 = v12;
  v15 = v14;

  if (![(CKNavbarCanvasViewController *)self shouldShowAvatarView])
  {
    [v6 frame];
    v20.x = v13;
    v20.y = v15;
    if (!CGRectContainsPoint(v23, v20))
    {
      [v8 frame];
      v21.x = v13;
      v21.y = v15;
      if (!CGRectContainsPoint(v24, v21))
      {
        [v10 frame];
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

  v16 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
  v17 = [(CKNavbarCanvasViewController *)self canvasView];
  v18 = [v16 avatarWantsTapAtPoint:v17 fromView:{v13, v15}] ^ 1;

LABEL_7:
  return v18;
}

- (void)_updateFTControls
{
  v5 = [(CKNavbarCanvasViewController *)self conversation];
  v3 = [(CKNavbarCanvasViewController *)self modernScreenSharingCapabilities];
  v4 = [(CKNavbarCanvasViewController *)self unifiedCallButton];
  [CKNavbarCanvasViewController updateFTControlsWithConversation:v5 canvasViewController:self screenSharingCapabilities:v3 unifiedCallButton:v4];
}

+ (void)updateFTControlsWithConversation:(id)a3 canvasViewController:(id)a4 screenSharingCapabilities:(id)a5 unifiedCallButton:(id)a6
{
  v39 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v39 chat];
  v13 = [v12 conversation];

  if (!v13)
  {
    [v9 setIndicatorType:0];
    v15 = 0;
    v16 = 0;
    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = [v13 state] == 3 || objc_msgSend(v13, "state") == 2;
  v17 = [MEMORY[0x1E69A5B78] conversationIsVideoCall:v13];
  v18 = [MEMORY[0x1E69A5B78] conversationIsAVLessSharePlay:v13];
  v19 = [v13 state];
  if ([v13 isNearbySession])
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
    if (v19 == 4)
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

  v23 = [v13 state];
  if (((v23 - 2) < 2 || !v23) && CKIsRunningInMacCatalyst())
  {
LABEL_22:
    v24 = [v9 delegate];
    [v24 navbarCanvasViewController:v9 updatedJoinStateWithStyle:v15];
  }

LABEL_23:
  v25 = [v39 isGroupConversation];
  v26 = [v39 chat];
  v27 = [v26 supportsCapabilities:1024];

  v28 = [CKFaceTimeUtilities isFaceTimeAudioAvailable:v39]& v27;
  v29 = [CKFaceTimeUtilities isFaceTimeVideoAvailable:v39]& v27;
  v30 = [v39 recipient];
  v31 = [CKFaceTimeUtilities isModernScreenSharingAvailableForEntity:v30 capabilities:v10];

  if ((v25 & 1) == 0)
  {
    if (v28)
    {
      v32 = [v39 chat];
      v28 = [v32 isSMS] ^ 1;
    }

    if (v29)
    {
      v33 = [v39 chat];
      v29 = [v33 isSMS] ^ 1;
    }
  }

  v34 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v35 = [v34 isTranscriptSharingEnabled];

  if (v35)
  {
    v36 = [v39 chat];
    v37 = [v36 isStewieSharingChat];

    v28 = (v37 ^ 1) & v28;
    v29 = (v37 ^ 1) & v29;
  }

  [v11 updateWithStyle:v16 availabilityForVideo:v29 audio:v28 telephony:0 screenSharing:v31];
LABEL_31:
}

- (void)_userDidTapNavigationBar
{
  if (![(CKNavbarCanvasViewController *)self isInEditingMode])
  {
    if ((v3 = [(CKNavbarCanvasViewController *)self navBarContext], v3 <= 4) && ((1 << v3) & 0x1A) != 0 && !CKIsRunningInMessagesTranscriptExtension() || ![(CKNavbarCanvasViewController *)self shouldShowAvatarView])
    {
      v5 = [(CKNavbarCanvasViewController *)self delegate];
      v4 = [(CKNavbarCanvasViewController *)self canvasView];
      [v5 navbarCanvasViewController:self didTapView:v4];
    }
  }
}

- (void)handleCloseNavBarAnimationCompleteNotification:(id)a3
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = CKNavigationBarCanvasViewHeightAnimationCompletedNotification;
  v5 = [(CKNavbarCanvasViewController *)self canvasView];
  [v6 removeObserver:self name:v4 object:v5];
}

- (void)viewDidLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v30 viewDidLayoutSubviews];
  v3 = [(CKNavbarCanvasViewController *)self detailsButton];
  v4 = [(CKNavbarCanvasViewController *)self detailsButton];
  [v4 bounds];
  [v3 contentRectForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CKNavbarCanvasViewController *)self detailsButton];
  [v13 imageRectForContentRect:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(CKNavbarCanvasViewController *)self detailsButton];
  [v22 bounds];
  Width = CGRectGetWidth(v31);
  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  v24 = Width - CGRectGetWidth(v32);

  v25 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v26 = [(CKNavbarCanvasViewController *)self detailsButton];
  v27 = v26;
  if (v25)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v24;
  }

  if (v25)
  {
    v29 = v24;
  }

  else
  {
    v29 = 0.0;
  }

  [v26 setImageEdgeInsets:{0.0, v28, 0.0, v29}];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v16 viewDidLoad];
  [(CKNavbarCanvasViewController *)self _updateUnreadCountForBackbuttonView:[(CKNavbarCanvasViewController *)self _unreadCount]];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__chatUnreadCountDidChange_ name:*MEMORY[0x1E69A58D0] object:0];
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isUnreadCountRefactorEnabled];

  if (v5)
  {
    v6 = *MEMORY[0x1E69A7DD0];
  }

  else
  {
    v6 = *MEMORY[0x1E69A5920];
  }

  [v3 addObserver:self selector:sel__chatUnreadCountDidChange_ name:v6 object:0];
  [v3 addObserver:self selector:sel__contactPhotosEnabledChangedNotification_ name:CKConversationListContactPhotosEnabledNotification object:0];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_multiwayStateChanged_ name:*MEMORY[0x1E69A5840] object:0];

  [v3 addObserver:self selector:sel__handleAddressBookChange_ name:*MEMORY[0x1E69A6828] object:0];
  v8 = [(CKNavbarCanvasViewController *)self canvasView];
  v9 = [(CKNavbarCanvasViewController *)self conversation];
  v10 = [v9 chat];
  [v8 setIsBusinessChat:{objc_msgSend(v10, "isBusinessChat")}];

  v11 = [(CKNavbarCanvasViewController *)self conversation];
  v12 = [v11 chat];
  v13 = [v12 conversation];

  if (v13 && ![v13 state])
  {
    v14 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v15 = [v14 conversationManager];
    [v15 refreshActiveConversations];
  }

  [(CKNavbarCanvasViewController *)self _updateFTControls];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v4 viewWillAppear:a3];
  [(CKNavbarCanvasViewController *)self refreshAudioButtonTargetAction];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKNavbarCanvasViewController;
  [(CKNavbarCanvasViewController *)&v3 viewDidAppear:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v18.receiver = self;
  v18.super_class = CKNavbarCanvasViewController;
  v4 = a3;
  [(CKNavbarCanvasViewController *)&v18 traitCollectionDidChange:v4];
  v5 = [(CKNavbarCanvasViewController *)self traitCollection:v18.receiver];
  [(CKNavbarCanvasViewController *)self _initializeForTraitCollection:v5];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 noAvatarTitleFont];
  v8 = [(CKNavbarCanvasViewController *)self defaultLabel];
  [v8 setFont:v7];

  v9 = [v4 horizontalSizeClass];
  v10 = [v5 horizontalSizeClass];
  v11 = [v4 verticalSizeClass];
  v12 = [v5 verticalSizeClass];
  v13 = [v4 preferredContentSizeCategory];

  v14 = [v5 preferredContentSizeCategory];
  v15 = UIContentSizeCategoryCompareToCategory(v13, v14);

  if (v15 || v9 != v10 || v11 != v12)
  {
    [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:0];
    [(CKNavbarCanvasViewController *)self updateLocationLabel];
    v16 = [(CKNavbarCanvasViewController *)self canvasView];
    [v16 setNeedsLayout];

    v17 = [(CKNavbarCanvasViewController *)self canvasView];
    [v17 layoutIfNeeded];
  }
}

- (void)_handleAddressBookChange:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self conversation];
  v5 = [(CKNavbarCanvasViewController *)self navBarTitleFromConversation:v4];
  [(CKNavbarCanvasViewController *)self updateTitle:v5 animated:1];

  [(CKNavbarCanvasViewController *)self refreshAudioButtonTargetAction];
}

- (void)_notifyDelegateForNavBarResize
{
  v3 = [(CKNavbarCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKNavbarCanvasViewController *)self delegate];
    [v5 navbarCanvasViewControllerCanvasHeightDidChange:self];
  }
}

- (void)updateAvatarPickerDelegate
{
  if ([(CKNavbarCanvasViewController *)self shouldShowAvatarView])
  {
    v3 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [v3 setDelegate:self];
  }
}

- (void)configureForEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    if (a3)
    {
      [(CKNavbarCanvasViewController *)self _configureForEditMode];
    }

    else
    {
      [(CKNavbarCanvasViewController *)self _configureForDefaultMode];
    }
  }
}

- (void)updateTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  navbarTitle = self->_navbarTitle;
  if (navbarTitle != v7)
  {
    v10 = v7;
    if (!v7 || (v9 = [(NSString *)navbarTitle isEqualToString:v7], v7 = v10, !v9))
    {
      objc_storeStrong(&self->_navbarTitle, a3);
      [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:v4];
      v7 = v10;
    }
  }
}

- (void)updateTitleViewAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
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

  v8 = [(CKNavbarCanvasViewController *)self defaultLabel];

  if (v5 == v8)
  {
    [(CKNavbarCanvasViewController *)self setDefaultLabelText];
    v10 = [(CKNavbarCanvasViewController *)self defaultLabel];
    v11 = v10;
    if (v6)
    {
      v12 = 3;
    }

    else
    {
      v12 = v7;
    }

    [v10 setTitleIconImageType:v12];

    v13 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [v13 setShouldHaveRotatedTitleIconImage:0 animated:v3];

    v14 = [(CKNavbarCanvasViewController *)self canvasView];
    [v14 setNeedsLayout];

    v9 = [(CKNavbarCanvasViewController *)self canvasView];
    [v9 layoutIfNeeded];
  }

  else
  {
    v9 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [v9 setChevronHidden:{-[CKNavbarCanvasViewController hideChevron](self, "hideChevron")}];
  }
}

- (void)updateLeftItemView
{
  v5 = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v3 = [(CKNavbarCanvasViewController *)self _leftItemViewForTraitCollection:v5];
  v4 = [(CKNavbarCanvasViewController *)self canvasView];
  [v4 setLeftItemView:v3];
}

- (void)updateRightItemView
{
  v5 = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  v3 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:v5];
  v4 = [(CKNavbarCanvasViewController *)self canvasView];
  [v4 setRightItemView:v3];
}

- (void)updateForRecoveredJunkConversation
{
  [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:1];

  [(CKNavbarCanvasViewController *)self _configureForDefaultMode];
}

- (BOOL)wantsVerifiedIconForTitle:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self conversation];
  if ([v5 shouldShowVerifiedCheckmark])
  {
    v6 = [(CKNavbarCanvasViewController *)self conversation];
    v7 = [v6 recipient];
    v8 = [v7 name];
    v9 = [v4 isEqualToString:v8];
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

  v5 = [(CKNavbarCanvasViewController *)self conversation];
  v6 = [v5 chat];
  if ([v6 isStewieChat])
  {
    LOBYTE(v3) = 1;
    goto LABEL_7;
  }

  v7 = [(CKNavbarCanvasViewController *)self conversation];
  v8 = [v7 chat];
  v9 = [v8 isStewieSharingChat];

  if ((v9 & 1) == 0)
  {
    if (!IMIsOscarEnabled() || (+[CKConversationList sharedConversationList](CKConversationList, "sharedConversationList"), v10 = objc_claimAutoreleasedReturnValue(), -[CKNavbarCanvasViewController conversation](self, "conversation"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 primaryFilterModeForConversation:v11], v11, v10, v12 != 9))
    {
      v5 = [(CKNavbarCanvasViewController *)self delegate];
      if (!v5)
      {
        LOBYTE(v3) = 0;
        goto LABEL_8;
      }

      v6 = [(CKNavbarCanvasViewController *)self delegate];
      v3 = [v6 shouldShowChevronInNavbarCanvasViewController:self] ^ 1;
LABEL_7:

LABEL_8:
      return v3;
    }
  }

LABEL_3:
  LOBYTE(v3) = 1;
  return v3;
}

- (void)_initializeForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self _leftItemViewForTraitCollection:v4];
  v6 = [(CKNavbarCanvasViewController *)self canvasView];
  [v6 setLeftItemView:v5];

  v7 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:v4];
  v8 = [(CKNavbarCanvasViewController *)self canvasView];
  [v8 setRightItemView:v7];

  v9 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:v4];
  v10 = [(CKNavbarCanvasViewController *)self canvasView];
  [v10 setTitleView:v9];

  v11 = [v4 verticalSizeClass];
  if (v11 == 1)
  {
    v12 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [v12 removeFromSuperview];
  }
}

- (id)recipientContextMenu
{
  v3 = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [v3 recipient];

  if (v4)
  {
    v5 = [(CKNavbarCanvasViewController *)self conversation];
    v6 = [v5 recipient];

    v7 = [v6 defaultIMHandle];
    v8 = [v7 isContact];

    if (v8)
    {
      v9 = [(CKNavbarCanvasViewController *)self contactsManager];
      v10 = [v9 conversationContextMenuForEntity:v6 allowConversationRemoval:0];
    }

    else
    {
      v10 = [(CKNavbarCanvasViewController *)self contextMenuForUnknownRecipient:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setCanShowBackButtonView:(BOOL)a3
{
  if (self->_canShowBackButtonView != a3)
  {
    self->_canShowBackButtonView = a3;
    v5 = [(CKNavbarCanvasViewController *)self canvasView];
    v6 = [v5 leftItemView];
    v7 = [(CKNavbarCanvasViewController *)self backButtonView];

    if (a3)
    {
      if (v6 == v7)
      {
        return;
      }

      v9 = [(CKNavbarCanvasViewController *)self backButtonView];
      v8 = [(CKNavbarCanvasViewController *)self canvasView];
      [v8 setLeftItemView:v9];
    }

    else
    {
      if (v6 != v7)
      {
        return;
      }

      v9 = [(CKNavbarCanvasViewController *)self canvasView];
      [v9 setLeftItemView:0];
    }
  }
}

- (void)setIndicatorType:(int64_t)a3
{
  if (self->_indicatorType != a3)
  {
    self->_indicatorType = a3;
    if (![(CKNavbarCanvasViewController *)self _canShowAvatarView])
    {
      v5 = [(CKNavbarCanvasViewController *)self canvasView];
      [v5 setStatusIndicatorType:a3];
    }
  }
}

- (void)updateContentsForConversation:(id)a3
{
  v6 = a3;
  v4 = [(CKNavbarCanvasViewController *)self conversation];

  if (v4 != v6)
  {
    [(CKNavbarCanvasViewController *)self setConversation:v6];
    v5 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [v5 setConversation:v6];
  }
}

- (void)setNavBarContext:(int64_t)a3
{
  if (self->_navBarContext != a3)
  {
    self->_navBarContext = a3;
    [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:0];
    [(CKNavbarCanvasViewController *)self updateLeftItemView];

    [(CKNavbarCanvasViewController *)self updateRightItemView];
  }
}

- (id)_leftItemViewForTraitCollection:(id)a3
{
  if ([(CKNavbarCanvasViewController *)self canShowBackButtonView])
  {
    v4 = [(CKNavbarCanvasViewController *)self backButtonView];
  }

  else if ([(CKNavbarCanvasViewController *)self shouldShowDoneButton])
  {
    v4 = [(CKNavbarCanvasViewController *)self doneButton];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_rightItemViewForTraitCollection:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKNavbarCanvasViewController *)self editing])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(CKNavbarCanvasViewController *)self editCancelButtonView];
        v20 = 138412290;
        v21 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Right item view: User is editing, returning %@", &v20, 0xCu);
      }
    }

    v7 = [(CKNavbarCanvasViewController *)self editCancelButtonView];
  }

  else if (CKIsRunningInMessagesTranscriptExtension())
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(CKNavbarCanvasViewController *)self doneButton];
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Right item view: Running in transcript extension, returning %@", &v20, 0xCu);
      }
    }

    v7 = [(CKNavbarCanvasViewController *)self doneButton];
  }

  else if ([(CKNavbarCanvasViewController *)self _isConfiguredForInlineReply])
  {
    v7 = [(CKNavbarCanvasViewController *)self closeButton];
  }

  else if ([(CKNavbarCanvasViewController *)self _shouldShowPersistentMenu])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(CKNavbarCanvasViewController *)self persistentMenuButton];
        v20 = 138412290;
        v21 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Right item view: We want to show the persistent menu, returning %@", &v20, 0xCu);
      }
    }

    v7 = [(CKNavbarCanvasViewController *)self persistentMenuButton];
  }

  else
  {
    v12 = [(CKNavbarCanvasViewController *)self _shouldShowFacetimeButton];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [(CKNavbarCanvasViewController *)self unifiedCallButton];
          v20 = 138412290;
          v21 = v15;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Right item view: We want to show the facetime button, returning %@", &v20, 0xCu);
        }
      }

      v7 = [(CKNavbarCanvasViewController *)self unifiedCallButton];
    }

    else
    {
      if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [(CKNavbarCanvasViewController *)self detailsButton];
          v20 = 138412290;
          v21 = v17;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Right item view: By default, returning %@", &v20, 0xCu);
        }
      }

      v7 = [(CKNavbarCanvasViewController *)self detailsButton];
    }
  }

  v18 = v7;

  return v18;
}

- (BOOL)_shouldShowFacetimeButton
{
  v2 = self;
  v3 = [(CKNavbarCanvasViewController *)self delegate];
  LOBYTE(v2) = [v3 shouldShowFacetimeButtonInNavbarCanvasViewController:v2];

  return v2;
}

- (BOOL)_shouldShowPersistentMenu
{
  v3 = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [v3 chat];
  v5 = [v4 persistentMenu];
  if (v5)
  {
    v6 = [(CKNavbarCanvasViewController *)self persistentMenuButton];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_titleItemViewForTraitCollection:(id)a3
{
  v4 = a3;
  if (-[CKNavbarCanvasViewController _canShowAvatarView](self, "_canShowAvatarView") && [v4 verticalSizeClass] != 1)
  {
    v5 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
  }

  else
  {
    v5 = [(CKNavbarCanvasViewController *)self defaultLabel];
  }

  v6 = v5;

  return v6;
}

- (CKNavBarConversationIdentityView)conversationIdentityView
{
  conversationIdentityView = self->_conversationIdentityView;
  if (!conversationIdentityView)
  {
    v4 = [CKNavBarConversationIdentityView alloc];
    v5 = [(CKNavbarCanvasViewController *)self conversation];
    v6 = [(CKNavBarConversationIdentityView *)v4 initWithConversation:v5];
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

    v6 = [(CKNavbarCanvasViewController *)self conversation];
    v7 = [v6 isBusinessConversation];

    [(CKLabel *)self->_defaultLabel setTextAlignment:([(CKNavbarCanvasViewController *)self _canShowAvatarView]| v7) & 1];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 noAvatarTitleFont];
    [(CKLabel *)self->_defaultLabel setFont:v9];

    [(CKNavbarCanvasViewController *)self setDefaultLabelText];
    if (v7)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      v12 = [(CKNavbarCanvasViewController *)self conversation];
      v13 = [v12 chat];
      v14 = [v11 secondaryBrandColorForBusinessChat:v13];
      [(CKLabel *)self->_defaultLabel setTextColor:v14];
    }

    v15 = [(CKNavbarCanvasViewController *)self conversation];
    v16 = [v15 hasVerifiedBusiness];

    v17 = [(CKNavbarCanvasViewController *)self hideChevron];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__CKNavbarCanvasViewController_defaultLabel__block_invoke;
    v20[3] = &unk_1E72EEB80;
    v21 = v16;
    v20[4] = self;
    v22 = !v17;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    v18 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [v18 setShouldHaveRotatedTitleIconImage:0 animated:0];

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
    v6 = [v5 businessVerifiedImageSmall];
    [v4 setImage:v6];

    v7 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v4];
    [v13 appendAttributedString:v7];
  }

  v8 = [(CKNavbarCanvasViewController *)self _KTTitleIconAttributedString];
  if (v8)
  {
    [v13 appendAttributedString:v8];
    v9 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [v9 setIsAccessibilityElement:1];

    v10 = [v13 string];
    v11 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [v11 setAccessibilityLabel:v10];
  }

  v12 = [(CKNavbarCanvasViewController *)self defaultLabel];
  [v12 setAttributedText:v13];
}

- (void)updateDefaultLabelIfNecessary
{
  v5 = [(CKNavbarCanvasViewController *)self _windowTraitCollection];
  if (!-[CKNavbarCanvasViewController _canShowAvatarView](self, "_canShowAvatarView") || [v5 verticalSizeClass] == 1)
  {
    [(CKNavbarCanvasViewController *)self setDefaultLabel:0];
    v3 = [(CKNavbarCanvasViewController *)self canvasView];
    v4 = [(CKNavbarCanvasViewController *)self defaultLabel];
    [v3 setTitleView:v4];

    [(CKNavbarCanvasViewController *)self updateTitleViewAnimated:0];
  }
}

- (void)_configureForEditMode
{
  if (!CKIsRunningInMacCatalyst())
  {
    v3 = [(CKNavbarCanvasViewController *)self canvasView];
    [v3 setLeftItemView:0];
  }

  v5 = [(CKNavbarCanvasViewController *)self editCancelButtonView];
  v4 = [(CKNavbarCanvasViewController *)self canvasView];
  [v4 setRightItemView:v5];
}

- (void)_configureForDefaultMode
{
  if ([(CKNavbarCanvasViewController *)self shouldShowDoneButton])
  {
    v3 = [(CKNavbarCanvasViewController *)self doneButton];
  }

  else
  {
    if (![(CKNavbarCanvasViewController *)self canShowBackButtonView])
    {
      goto LABEL_6;
    }

    v3 = [(CKNavbarCanvasViewController *)self backButtonView];
  }

  v4 = v3;
  v5 = [(CKNavbarCanvasViewController *)self canvasView];
  [v5 setLeftItemView:v4];

LABEL_6:
  v8 = [(CKNavbarCanvasViewController *)self traitCollection];
  v6 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:v8];
  v7 = [(CKNavbarCanvasViewController *)self canvasView];
  [v7 setRightItemView:v6];
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

    v9 = [(UIButton *)self->_editCancelButtonView titleLabel];
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [v9 setFont:v10];

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
    v3 = [(CKNavbarCanvasViewController *)self conversation];
    v4 = [v3 chat];
    v5 = [v4 isBusinessChat];

    if ((v5 & 1) == 0)
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
  v2 = [(CKNavbarCanvasViewController *)self persistentMenuManager];
  v3 = [v2 button];

  return v3;
}

- (_TtC7ChatKit29CKNavBarPersistentMenuManager)persistentMenuManager
{
  if (!self->_persistentMenuManager && !CKIsRunningInMacCatalyst())
  {
    v3 = [(CKNavbarCanvasViewController *)self conversation];
    v4 = [v3 chat];
    v5 = [v4 persistentMenu];

    if (v5)
    {
      v6 = [[_TtC7ChatKit29CKNavBarPersistentMenuManager alloc] initWithDelegate:self];
      persistentMenuManager = self->_persistentMenuManager;
      self->_persistentMenuManager = v6;

      v8 = self->_persistentMenuManager;
      v9 = [(CKNavbarCanvasViewController *)self conversation];
      v10 = [v9 chat];
      v11 = [v10 persistentMenu];
      [(CKNavBarPersistentMenuManager *)v8 setupWithPersistentMenu:v11];
    }
  }

  v12 = self->_persistentMenuManager;

  return v12;
}

- (void)_handlePersistentMenuChangedNotification:(id)a3
{
  v6 = [(CKNavbarCanvasViewController *)self traitCollection];
  v4 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:v6];
  v5 = [(CKNavbarCanvasViewController *)self canvasView];
  [v5 setRightItemView:v4];
}

- (UIBarButtonItem)detailsBarButton
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 useMacToolbar];

  if (v4)
  {
    detailsBarButton = self->_detailsBarButton;
    if (!detailsBarButton)
    {
      v6 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = +[CKUIBehavior sharedBehaviors];
      v8 = [v7 macToolbarDetailsImage];
      v9 = [v6 initWithImage:v8 style:0 target:self action:sel__buttonPressed_];
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

- (void)setDetailsBarButton:(id)a3
{
  v9 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 useMacToolbar])
  {
    detailsBarButton = self->_detailsBarButton;

    v7 = v9;
    if (detailsBarButton == v9)
    {
      goto LABEL_8;
    }

    v8 = self->_detailsBarButton;
    if (v8)
    {
      [(UIBarButtonItem *)v8 setTarget:0];
      [(UIBarButtonItem *)self->_detailsBarButton setAction:0];
    }

    objc_storeStrong(&self->_detailsBarButton, a3);
    [(UIBarButtonItem *)self->_detailsBarButton setTarget:self];
    [(UIBarButtonItem *)self->_detailsBarButton setAction:sel__buttonPressed_];
  }

  else
  {
  }

  v7 = v9;
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

- (void)_addUserDidTapNavigationBarRecognizer:(id)a3
{
  v5 = a3;
  if (!CKIsRunningInMacCatalyst())
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__userDidTapNavigationBar];
    [v4 setDelegate:self];
    [v5 setUserInteractionEnabled:1];
    [v5 addGestureRecognizer:v4];
  }
}

- (void)conversationIdentityViewTapped:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self conversationIdentityView];

  if (v5 == v4)
  {
    v7 = [(CKNavbarCanvasViewController *)self delegate];
    v6 = [(CKNavbarCanvasViewController *)self conversationIdentityView];
    [v7 navbarCanvasViewController:self didTapView:v6];
  }
}

- (void)buttonRequestsStartFaceTimeVideo:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (v5 == v4)
  {
    if (IMDeviceIsGreenTea() && (-[CKNavbarCanvasViewController conversation](self, "conversation"), v6 = objc_claimAutoreleasedReturnValue(), [v6 chat], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isGroupChat"), v7, v6, (v8 & 1) == 0))
    {
      v10 = [(CKNavbarCanvasViewController *)self conversation];
      v9 = [v10 chat];
      [v9 initiateTUDialRequestWithVideoEnabled:1];
    }

    else
    {
      v10 = [(CKNavbarCanvasViewController *)self conversation];
      v9 = [v10 chat];
      [v9 initiateTUConversationWithVideoEnabled:1];
    }
  }
}

- (void)buttonRequestsStartFaceTimeAudio:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (v5 == v4)
  {
    v7 = [(CKNavbarCanvasViewController *)self conversation];
    v6 = [v7 chat];
    [v6 initiateTUConversationWithVideoEnabled:0];
  }
}

- (void)buttonRequestsStartTelephonyCall:(id)a3
{
  v4 = a3;
  v11 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  v5 = v11;
  if (v11 == v4)
  {
    v6 = [(CKNavbarCanvasViewController *)self conversation];
    v7 = [v6 recipient];

    if (!v7)
    {
      return;
    }

    v8 = [(CKNavbarCanvasViewController *)self conversation];
    v12 = [v8 recipient];

    v9 = [(CKNavbarCanvasViewController *)self contactsManager];
    v10 = [v12 rawAddress];
    [v9 startCommunicationForEntity:v12 action:3 address:v10];

    v5 = v12;
  }
}

- (void)button:(id)a3 requestsJoinActiveCallWithVideoEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (v7 == v6)
  {
    v8 = [(CKNavbarCanvasViewController *)self conversation];
    v9 = [v8 chat];
    v10 = [v9 conversation];

    if (v10)
    {
      v14 = [(CKNavbarCanvasViewController *)self conversation];
      v11 = [v14 chat];
      [v11 joinExistingTUConversation];
    }

    else
    {
      IsGreenTea = IMDeviceIsGreenTea();
      v14 = [(CKNavbarCanvasViewController *)self conversation];
      v13 = [v14 chat];
      v11 = v13;
      if (IsGreenTea)
      {
        [v13 initiateTUDialRequestWithVideoEnabled:v4];
      }

      else
      {
        [v13 initiateTUConversationWithVideoEnabled:v4];
      }
    }
  }
}

- (void)button:(id)a3 requestsStartFaceTimeWithScreenShareType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (v7 == v6)
  {
    v9 = [(CKNavbarCanvasViewController *)self conversation];
    v8 = [v9 chat];
    [v8 initiateTUConversationWithScreenShareType:a4];
  }
}

- (void)buttonRequestsOpenJoinedCall:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (v5 == v4)
  {
    v6 = [(CKNavbarCanvasViewController *)self conversation];
    v7 = [v6 chat];
    v10 = [v7 conversation];

    if (v10 && [v10 state])
    {
      v8 = [MEMORY[0x1E695DFF8] faceTimeShowInCallUIURL];
      TUOpenURL();
    }

    else
    {
      v8 = [(CKNavbarCanvasViewController *)self conversation];
      v9 = [v8 chat];
      [v9 joinExistingTUConversation];
    }
  }
}

- (void)buttonWidthDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self unifiedCallButton];

  if (v5 == v4)
  {
    v6 = [(CKNavbarCanvasViewController *)self canvasView];
    [v6 setNeedsLayout];
  }
}

- (void)showContactCardForEntity:(id)a3 address:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v28[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

  v10 = MEMORY[0x1E69A7FD0];
  v11 = [v6 defaultIMHandle];
  v12 = [v11 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v13 = [v10 isCNContactAKnownContact:v12];

  if (v13)
  {
    v14 = [(CKNavbarCanvasViewController *)self suggestionsEnabledContactStore];
    v15 = [v6 cnContactWithKeys:MEMORY[0x1E695E0F0]];
    v16 = [v15 identifier];
    v17 = [v14 unifiedContactWithIdentifier:v16 keysToFetch:v9 error:0];

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = [v6 cnContactWithKeys:v9];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v18 = [v6 defaultIMHandle];
  v7 = [v18 ID];

LABEL_6:
  v19 = [v7 _appearsToBePhoneNumber];
  v20 = MEMORY[0x1E695C330];
  if (!v19)
  {
    v20 = MEMORY[0x1E695C208];
  }

  v21 = *v20;
  if (v13)
  {
    v22 = [MEMORY[0x1E695D148] viewControllerForContact:v17];
    v23 = [v22 contentViewController];
    [v23 setShouldShowLinkedContacts:1];
  }

  else
  {
    v22 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v17];
  }

  v24 = [v17 identifierForKey:v21 withDestination:v7];
  [v22 highlightPropertyWithKey:v21 identifier:v24];

  v25 = [(CKNavbarCanvasViewController *)self suggestionsEnabledContactStore];
  [v22 setContactStore:v25];

  v26 = [v22 contentViewController];
  [v26 setAllowsContactBlocking:1];

  if (objc_opt_respondsToSelector())
  {
    [v22 setEdgesForExtendedLayout:0];
  }

  v27 = [(CKNavbarCanvasViewController *)self proxyNavigationController];
  [v27 pushViewController:v22 animated:1];
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
  v3 = [(CKNavbarCanvasViewController *)self delegate];
  if (v3)
  {
    v4 = [(CKNavbarCanvasViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CKNavbarCanvasViewController *)self delegate];
      v3 = [v6 unreadCountForCurrentFilterModeForNavbarCanvasViewController:self];
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = [(CKNavbarCanvasViewController *)self conversation];
  v8 = v3 - [v7 unreadCount];

  return v8;
}

- (void)_updateUnreadCountForBackbuttonView:(int64_t)a3
{
  [(CKNavbarCanvasViewController *)self setUnreadCountTitleColor];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = v5;
  if (a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 __ck_localizedString];
  }

  v7 = [(CKNavbarCanvasViewController *)self backButtonView];
  [v7 setBackButtonTitle:v6];

  v8 = [(CKNavbarCanvasViewController *)self view];
  [v8 setNeedsLayout];
}

- (void)_chatUnreadCountDidChange:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self _unreadCount];

  [(CKNavbarCanvasViewController *)self _updateUnreadCountForBackbuttonView:v4];
}

- (void)setUnreadCountTitleColor
{
  v3 = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [v3 isBusinessConversation];

  v10 = [(CKNavbarCanvasViewController *)self backButtonView];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [(CKNavbarCanvasViewController *)self conversation];
    v8 = [v7 chat];
    v9 = [v6 primaryBrandColorForBusinessChat:v8];
    [v10 setTitleLabelColor:v9];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setTitleLabelColor:v5];
  }
}

- (void)_contactPhotosEnabledChangedNotification:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self traitCollection];
  v5 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:v4];
  v6 = [(CKNavbarCanvasViewController *)self canvasView];
  [v6 setTitleView:v5];

  v7 = [(CKNavbarCanvasViewController *)self canvasView];
  v8 = [v7 titleView];
  v9 = [(CKNavbarCanvasViewController *)self conversationIdentityView];

  if (v8 == v9)
  {
    v10 = [(CKNavbarCanvasViewController *)self canvasView];
    v11 = [v10 titleView];
    v12 = [(CKNavbarCanvasViewController *)self defaultLabel];

    if (v11 != v12)
    {
      [(CKNavbarCanvasViewController *)self setDefaultLabel:0];
    }
  }

  else
  {
    [(CKNavbarCanvasViewController *)self setConversationIdentityView:0];
  }

  v13 = [(CKNavbarCanvasViewController *)self navbarTitle];
  [(CKNavbarCanvasViewController *)self updateTitle:v13 animated:0];

  v14 = [(CKNavbarCanvasViewController *)self canvasView];
  [v14 setNeedsLayout];
}

- (void)refreshAudioButtonTargetAction
{
  v3 = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(CKNavbarCanvasViewController *)self conversation];
    v7 = [v6 recipient];

    v8 = [(CKNavbarCanvasViewController *)self contactsManager];
    v9 = [v8 shouldAlwaysShowCallMenuForEntity:v7];

    v10 = [(CKNavbarCanvasViewController *)self canvasView];
    v11 = [v10 buttonViewFaceTimeAudio];
    [v11 setContextMenuIsPrimary:v9];

    if (v9)
    {
      v15 = [(CKNavbarCanvasViewController *)self canvasView];
      v12 = [v15 buttonViewFaceTimeAudio];
      [v12 removeTarget:0 action:0 forControlEvents:64];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = [(CKNavbarCanvasViewController *)self canvasView];
    v14 = [v13 buttonViewFaceTimeAudio];
    [v14 setContextMenuIsPrimary:0];
  }

  v15 = [(CKNavbarCanvasViewController *)self canvasView];
  v12 = [v15 buttonViewFaceTimeAudio];
  [v12 addTarget:self action:sel__facetimeAudioButtonTapped_ forControlEvents:64];
LABEL_6:
}

- (void)_facetimeAudioButtonTapped:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self delegate];
  [v4 navbarCanvasViewControllerFaceTimeAudioButtonTapped:self];
}

- (void)_facetimeVideoButtonTapped:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self delegate];
  [v4 navbarCanvasViewControllerFaceTimeVideoButtonTapped:self];
}

- (void)_infoButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self delegate];
  [v5 navbarCanvasViewController:self infoButtonTapped:v4];
}

- (void)_buttonPressed:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKNavbarCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKNavbarCanvasViewController *)self delegate];
    [v7 navbarCanvasViewController:self didTapView:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(CKNavbarCanvasViewController *)self delegate];
      v10 = [(CKNavbarCanvasViewController *)self delegate];
      v11 = objc_opt_respondsToSelector();
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Delegate (%@), respondsToSelector (%@)", &v13, 0x16u);
    }
  }
}

- (BOOL)shouldConfigureForJunkModal
{
  v2 = self;
  v3 = [(CKNavbarCanvasViewController *)self delegate];
  LOBYTE(v2) = [v3 shouldConfigureForJunkModalInNavbarCanvasViewController:v2];

  return v2;
}

- (BOOL)splitViewControllerIsCollapsed
{
  v2 = [(CKNavbarCanvasViewController *)self delegate];
  v3 = [v2 splitViewController];
  v4 = [v3 isCollapsed];

  return v4;
}

- (BOOL)shouldUseMinimumSafeAreas
{
  v2 = [(CKNavbarCanvasViewController *)self delegate];
  v3 = [v2 shouldUseMinimumSafeAreas];

  return v3;
}

- (NSDirectionalEdgeInsets)systemMinimumLayoutMarginsForView:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self delegate];
  [v4 systemMinimumLayoutMarginsForViewController:self];
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

- (void)_handleAllowedByScreenTimeChatChanged:(id)a3
{
  v5 = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [(CKNavbarCanvasViewController *)self navBarTitleFromConversation:v5];
  [(CKNavbarCanvasViewController *)self updateTitle:v4 animated:1];
}

- (void)persistentMenuManager:(id)a3 selectedChipAction:(id)a4
{
  v8 = a4;
  v5 = [(CKNavbarCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKNavbarCanvasViewController *)self delegate];
    [v7 navbarCanvasViewController:self selectedChipAction:v8];
  }
}

- (void)_handleServiceChangedNotification:(id)a3
{
  v6 = [(CKNavbarCanvasViewController *)self traitCollection];
  v4 = [(CKNavbarCanvasViewController *)self _rightItemViewForTraitCollection:v6];
  v5 = [(CKNavbarCanvasViewController *)self canvasView];
  [v5 setRightItemView:v4];
}

- (void)persistentMenuManager:(id)a3 selectedSuggestedReply:(id)a4
{
  v8 = a4;
  v5 = [(CKNavbarCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKNavbarCanvasViewController *)self delegate];
    [v7 navbarCanvasViewController:self selectedSuggestedReply:v8];
  }
}

- (void)_handleKeyTransparencyStatusChangedNotification:(id)a3
{
  v4 = [(CKNavbarCanvasViewController *)self traitCollection];
  v8 = [(CKNavbarCanvasViewController *)self _titleItemViewForTraitCollection:v4];

  v5 = [(CKNavbarCanvasViewController *)self defaultLabel];

  v6 = v8;
  if (v8 == v5)
  {
    [(CKNavbarCanvasViewController *)self setDefaultLabel:0];
    v7 = [(CKNavbarCanvasViewController *)self traitCollection];
    [(CKNavbarCanvasViewController *)self _initializeForTraitCollection:v7];

    v6 = v8;
  }
}

- (id)_KTTitleIconAttributedString
{
  v3 = [(CKNavbarCanvasViewController *)self conversation];
  v4 = [v3 sendingService];
  v5 = [v4 supportsCapability:*MEMORY[0x1E69A79A0]];

  if (v5)
  {
    v6 = [(CKNavbarCanvasViewController *)self conversation];
    v7 = [v6 chat];
    v31 = 0;
    v8 = [v7 keyTransparencyStatusForAffectedHandles:&v31];

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
      v13 = [(CKNavbarCanvasViewController *)self defaultLabel];
      [v13 setAccessibilityIdentifier:v12];
    }

    v14 = [MEMORY[0x1E69DC888] systemGrayColor];
    v15 = [v10 imageWithTintColor:v14];

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 noAvatarTitleFont];
    [v17 pointSize];
    v19 = v18;

    [v15 size];
    v21 = v20;
    [v15 size];
    v23 = v19 * (v21 / v22);
    v24 = +[CKUIBehavior sharedBehaviors];
    v25 = [v24 noAvatarTitleFont];
    [v25 capHeight];
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