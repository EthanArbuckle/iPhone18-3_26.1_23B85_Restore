@interface DialerController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (id)callHistoryController;
+ (id)mostRecentCallHandleValue;
- (BOOL)_disableAutomaticKeyboardUI;
- (BOOL)deviceHasMultipleSIM;
- (BOOL)digitsEntered;
- (BOOL)enableDualSimMenu;
- (BOOL)requestAudioServicesActivate;
- (BOOL)shouldAnimateCallButton;
- (BOOL)shouldSnapshot;
- (BOOL)shouldSuppressShowingLastDialedNumber;
- (CNContactStore)contactStore;
- (DialerControllerInterfaceOrientationProvder)interfaceOrientationProvider;
- (NSString)lastDialedNumber;
- (NSString)phoneNumberPrefixHint;
- (TUCallProviderManager)callProviderManager;
- (TUContactsDataProvider)contactsDataProvider;
- (id)contactResultForPhoneNumber:(id)a3;
- (id)defaultCallProvider;
- (id)restrictedSubtitleForHandle:(id)a3;
- (id)tabBarIconName;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animateCallButton;
- (void)_callButtonPressed:(id)a3;
- (void)_callButtonPressedActionWithCallProvider:(id)a3;
- (void)_callStatusChanged:(id)a3;
- (void)_clearDisplayIfNecessary;
- (void)_deleteButtonClicked:(id)a3;
- (void)_deleteRepeat;
- (void)_dialVoicemail;
- (void)_dialWithRequest:(id)a3;
- (void)_fadeSubviewsOf:(id)a3 excludingViews:(id)a4 toValue:(double)a5;
- (void)_handleSIMInsertionOrRemoval;
- (void)_phonePad:(id)a3 appendString:(id)a4 suppressClearingDialedNumber:(BOOL)a5;
- (void)_resetButtonAnimation;
- (void)_startDeleteTimer;
- (void)_stopDeleteTimer;
- (void)_stopLookupTimer;
- (void)_updateCallButtonEnabledState:(id)a3;
- (void)_updateCallButtonEnabledState:(id)a3 updateNameNow:(BOOL)a4;
- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)a3;
- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)a3;
- (void)applicationDidResume;
- (void)dealloc;
- (void)dialerView:(id)a3 stringWasPasted:(id)a4;
- (void)dialerViewTextDidChange:(id)a3;
- (void)handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleKeyCommand:(id)a3;
- (void)loadView;
- (void)performCharacterAddAction:(id)a3;
- (void)performDeleteAction;
- (void)phonePad:(id)a3 appendString:(id)a4;
- (void)phonePad:(id)a3 appendString:(id)a4 playDTMFTone:(BOOL)a5;
- (void)phonePad:(id)a3 dialerCharacterButtonWasHeld:(int64_t)a4;
- (void)phonePad:(id)a3 replaceLastDigitWithString:(id)a4;
- (void)phonePadDeleteLastDigit:(id)a3;
- (void)phonePadDidEndSounds:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)reloadButtons;
- (void)restoreLastDialedNumber;
- (void)searchAndUpdateResultsFor:(id)a3 shouldRefreshResult:(BOOL)a4 showPastedString:(id)a5;
- (void)searchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5;
- (void)setAudioServicesActivated:(BOOL)a3;
- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)a3;
- (void)showOrHideDeleteButton;
- (void)showRestrictedAlertWithMessage:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)updateDialerViewDualSimMenu;
- (void)updateIDSStatus;
@end

@implementation DialerController

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = 1;
  v3 = 0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)applicationDidResume
{
  v5.receiver = self;
  v5.super_class = DialerController;
  [(DialerController *)&v5 applicationDidResume];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2429BC000, v3, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Calling _resetButtonAnimation in ", v4, 2u);
  }

  [(DialerController *)self _resetButtonAnimation];
}

- (void)_resetButtonAnimation
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    v3 = [(DialerController *)self dialerView];
    v4 = [v3 callButton];

    v5 = [MEMORY[0x277D75348] systemGreenColor];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];
    [v6 removeAllAnimations];

    v7 = [v4 imageView];
    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v4 setUserInteractionEnabled:1];
    v19[0] = v4;
    v9 = [(DialerController *)self dialerView];
    v10 = [v9 deleteButton];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v12 = [v11 mutableCopy];

    if ([(DialerController *)self appType]== 1 && [(DialerController *)self enableSmartDialer])
    {
      v13 = [(DialerController *)self dialerView];
      v14 = [v13 addContactButton];
      [v12 addObject:v14];
    }

    v15 = [v4 superview];
    [(DialerController *)self _fadeSubviewsOf:v15 excludingViews:v12 toValue:1.0];

    [(DialerController *)self setBackgroundStyle:0 animated:0];
    [(DialerController *)self setWantsCallButtonAnimation:0];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_2429BC000, v16, OS_LOG_TYPE_DEFAULT, "DialerAnimation: called", v18, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAnimateCallButton
{
  if ([(DialerController *)self wantsCallButtonAnimation]&& [(DialerController *)self isViewLoaded]&& ![(DialerController *)self dialerType])
  {
    v5 = [(DialerController *)self view];
    v6 = [v5 window];
    NSClassFromString(&cfstr_Uihostedwindow.isa);
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)_clearDisplayIfNecessary
{
  if ((*(self + 1016) & 1) != 0 || ([MEMORY[0x277D6EDF8] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "currentCallCount"), v3, v4))
  {
    v5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v5 setText:&stru_285532CB8 needsFormat:0];

    [(DialerController *)self _updateName];
  }
}

- (TUCallProviderManager)callProviderManager
{
  callProviderManager = self->_callProviderManager;
  if (!callProviderManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D6EE28]);
    v5 = self->_callProviderManager;
    self->_callProviderManager = v4;

    callProviderManager = self->_callProviderManager;
  }

  return callProviderManager;
}

- (id)defaultCallProvider
{
  v2 = [(DialerController *)self callProviderManager];
  v3 = [v2 telephonyProvider];

  return v3;
}

- (void)reloadButtons
{
  v2 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v2 reloadButtonImages];
}

- (void)loadView
{
  v40[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  if (![(DialerController *)self dialerType]|| [(DialerController *)self dialerType]== 1)
  {
    [v5 setAutoresizingMask:18];
  }

  dialerView = self->_dialerView;
  if (!dialerView)
  {
    v7 = [PHHandsetDialerView alloc];
    v8 = [(DialerController *)self appType];
    v9 = [(DialerController *)self enableSmartDialer];
    v10 = [(DialerController *)self enableSmartDialerExpandedSearch];
    v11 = [(DialerController *)self enableDualSimMenu];
    v12 = [(PHHandsetDialerView *)v7 initWithFrame:v8 appType:v9 enableSmartDialer:v10 enableSmartDialerExpandedSearch:v11 enableDualSimMenu:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v13 = self->_dialerView;
    self->_dialerView = v12;

    v14 = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:v14];

    [v5 setOpaque:0];
    dialerView = self->_dialerView;
  }

  [(PHAbstractDialerView *)dialerView setDelegate:self];
  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(DialerController *)self appType]== 1)
  {
    [(PHAbstractDialerView *)self->_dialerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(PHAbstractDialerView *)self->_dialerView backgroundColor];
    [v5 setBackgroundColor:v17];

    [v5 addSubview:self->_dialerView];
    v35 = MEMORY[0x277CCAAD0];
    v39 = [(PHAbstractDialerView *)self->_dialerView topAnchor];
    v38 = [v5 topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:0.0];
    v40[0] = v37;
    v36 = [(PHAbstractDialerView *)self->_dialerView leadingAnchor];
    v34 = [v5 leadingAnchor];
    v33 = [v36 constraintEqualToAnchor:v34 constant:0.0];
    v40[1] = v33;
    v18 = [(PHAbstractDialerView *)self->_dialerView trailingAnchor];
    v19 = [v5 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-0.0];
    v40[2] = v20;
    v21 = [(PHAbstractDialerView *)self->_dialerView bottomAnchor];
    v22 = [v5 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-0.0];
    v40[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v35 activateConstraints:v24];
  }

  else
  {
    [(PHAbstractDialerView *)self->_dialerView setAutoresizingMask:18];
    [(PHAbstractDialerView *)self->_dialerView bounds];
    [v5 setFrame:?];
    [v5 addSubview:self->_dialerView];
  }

  v25 = [(PHAbstractDialerView *)self->_dialerView callButton];
  [v25 addTarget:self action:sel__callButtonPressed_ forControlEvents:64];

  v26 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [v26 addTarget:self action:sel__deleteButtonClicked_ forControlEvents:64];

  v27 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [v27 addTarget:self action:sel__deleteButtonDown_ forControlEvents:1];

  v28 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [v28 addTarget:self action:sel__stopDeleteTimer forControlEvents:32];

  v29 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleSwipeGesture_];
  [v29 setDirection:3];
  [v29 setDelegate:self];
  v30 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v30 addGestureRecognizer:v29];

  v31 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v31 setDelegate:self];

  [(DialerController *)self setView:v5];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = DialerController;
  v6 = a4;
  [(DialerController *)&v11 touchesBegan:a3 withEvent:v6];
  v7 = [(PHAbstractDialerView *)self->_dialerView lcdView:v11.receiver];
  v8 = [v6 touchesForView:v7];

  if (v8)
  {
  }

  else
  {
    v9 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v7 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v7 endEditing];
  }
}

- (BOOL)_disableAutomaticKeyboardUI
{
  if ([(DialerController *)self appType]== 1 && [(DialerController *)self enableSmartDialer])
  {
    v3 = [(DialerController *)self presentedViewController];
    if (v3)
    {
      v4 = [(DialerController *)self presentedViewController];
      objc_opt_class();
      v5 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

- (void)_callStatusChanged:(id)a3
{
  v4 = a3;
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    v5 = [v4 object];
    if ([v5 status] == 3)
    {
      v6 = [MEMORY[0x277D6EDF8] sharedInstance];
      if ([v6 currentCallCount] == 1 && objc_msgSend(v5, "isEndpointOnCurrentDevice") && !objc_msgSend(v5, "isEmergency"))
      {
        v7 = [*MEMORY[0x277D76620] isSuspendedEventsOnly];

        if ((v7 & 1) == 0)
        {
          v8 = PHDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_2429BC000, v8, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Calling _animateCallButton in ", v9, 2u);
          }

          [(DialerController *)self _animateCallButton];
        }
      }

      else
      {
      }
    }
  }
}

- (void)dealloc
{
  v3 = [(DialerController *)self callProviderManager];
  [v3 removeDelegate:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveEveryObserver();
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  [(DialerController *)self _stopLookupTimer];
  [(DialerController *)self _stopDeleteTimer];
  [(PHAbstractDialerView *)self->_dialerView removeFromSuperview];
  [(PHAbstractDialerView *)self->_dialerView setDelegate:0];
  dialerView = self->_dialerView;
  self->_dialerView = 0;

  v7 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v7 setDelegate:0];

  v8.receiver = self;
  v8.super_class = DialerController;
  [(DialerController *)&v8 dealloc];
}

- (id)tabBarIconName
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"KEYPAD" value:&stru_285532CB8 table:@"Dialer"];

  return v3;
}

- (BOOL)shouldSnapshot
{
  v2 = [(DialerController *)self presentedViewController];
  v3 = v2 == 0;

  return v3;
}

- (void)_stopLookupTimer
{
  [(NSTimer *)self->_lookupTimer invalidate];
  lookupTimer = self->_lookupTimer;
  self->_lookupTimer = 0;
}

- (id)contactResultForPhoneNumber:(id)a3
{
  v4 = MEMORY[0x277D6EE58];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:v5];

  v8 = [v6 initWithHandle:v7];
  v9 = [(DialerController *)self phoneNumberPrefixHint];
  [v8 setPhoneNumberPrefixHint:v9];

  v10 = [(DialerController *)self contactsDataProvider];
  v11 = [v10 executeFetchRequest:v8];

  return v11;
}

+ (id)callHistoryController
{
  if (callHistoryController_onceToken != -1)
  {
    +[DialerController callHistoryController];
  }

  v3 = callHistoryController_sCallHistoryController;

  return v3;
}

uint64_t __41__DialerController_callHistoryController__block_invoke()
{
  callHistoryController_sCallHistoryController = [MEMORY[0x277D6EE10] sharedControllerWithCoalescingStrategy:1 options:4];

  return MEMORY[0x2821F96F8]();
}

+ (id)mostRecentCallHandleValue
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = +[DialerController callHistoryController];
  v3 = MEMORY[0x277CCAC30];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC8]];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7D80]];
  v26[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7D90]];
  v26[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v8 = [v3 predicateWithFormat:@"callType == %@ AND callStatus IN %@", v4, v7];
  v9 = [v2 recentCallsWithPredicate:v8];
  v10 = [v9 firstObject];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 remoteParticipantHandles];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v17 type] == 2)
        {
          v18 = [v17 value];

          v14 = v18;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSString)lastDialedNumber
{
  if ([(DialerController *)self shouldSuppressShowingLastDialedNumber])
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_opt_class() mostRecentCallHandleValue];
  }

  return v2;
}

- (BOOL)shouldSuppressShowingLastDialedNumber
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_loadedShouldSuppressShowingLastDialedNumberCache)
  {
    self->_loadedShouldSuppressShowingLastDialedNumberCache = 1;
    v3 = *MEMORY[0x277D6EF90];
    v4 = PHPreferencesGetValueInDomain();
    self->_shouldSuppressShowingLastDialedNumberCache = [v4 BOOLValue];

    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shouldSuppressShowingLastDialedNumberCache = self->_shouldSuppressShowingLastDialedNumberCache;
      v9[0] = 67109120;
      v9[1] = shouldSuppressShowingLastDialedNumberCache;
      _os_log_impl(&dword_2429BC000, v5, OS_LOG_TYPE_DEFAULT, "Loaded shouldSuppressShowingLastDialedNumber from defaults as %d", v9, 8u);
    }
  }

  result = self->_shouldSuppressShowingLastDialedNumberCache;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)a3
{
  self->_shouldHideDeleteButtonWhenEmpty = a3;
  if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
  {

    [(DialerController *)self showOrHideDeleteButton];
  }
}

- (void)showOrHideDeleteButton
{
  v3 = [(DialerController *)self dialerView];
  v4 = [v3 lcdView];
  v5 = [v4 text];
  v6 = [v5 length] == 0;
  v7 = [(DialerController *)self dialerView];
  v8 = [v7 deleteButton];
  [v8 setHidden:v6];

  v12 = [(DialerController *)self dialerView];
  v9 = [v12 deleteButton];
  if ([v9 isHidden])
  {
    v10 = [(DialerController *)self dialerType];

    if (v10 != 1)
    {
      return;
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [(DialerController *)self dialerView];
    v11 = [v9 deleteButton];
    [v12 postNotificationName:@"kPHCarPlayDeleteButtonHideNotification" object:v11];
  }
}

- (void)dialerViewTextDidChange:(id)a3
{
  dialerView = self->_dialerView;
  if (dialerView == a3)
  {
    v5 = [(PHAbstractDialerView *)dialerView lcdView];
    v6 = [v5 text];
    [(DialerController *)self _updateCallButtonEnabledState:v6 updateNameNow:1];

    if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
    {

      [(DialerController *)self showOrHideDeleteButton];
    }
  }
}

- (void)dialerView:(id)a3 stringWasPasted:(id)a4
{
  v29 = a3;
  v6 = a4;
  if (v6 && self->_dialerView == v29)
  {
    v7 = [v6 encodedDialerString];
    v8 = [v6 isEqualToString:v7];
    v9 = [(DialerController *)self contactResultForPhoneNumber:v7];
    if ([(DialerController *)self appType]== 1 && [(DialerController *)self enableSmartDialer])
    {
      v10 = [(PHAbstractDialerView *)self->_dialerView lcdView];
      [v10 setText:v7 needsFormat:1];

      [(DialerController *)self _updateCallButtonEnabledState:v7];
      [(DialerController *)self updateIDSStatus];
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6;
      }

      [(DialerController *)self searchAndUpdateResultsFor:v7 shouldRefreshResult:0 showPastedString:v11];
      goto LABEL_19;
    }

    if ((v8 & 1) == 0)
    {
      v12 = [v9 contacts];
      v13 = [v12 count];

      if (!v13)
      {
        v24 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        v25 = MEMORY[0x277CCACA8];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"QUOTE_%@_QUOTE" value:&stru_285532CB8 table:@"Dialer"];
        v28 = [v25 stringWithFormat:v27, v6];
        [v24 setText:v7 needsFormat:1 name:v28 label:0];

        [(DialerController *)self _updateCallButtonEnabledState:v7];
        goto LABEL_19;
      }
    }

    v14 = [v9 contacts];
    if ([v14 count])
    {
      v15 = [v9 contacts];
      v16 = [v15 firstObject];
      v17 = [v16 isSuggested];

      if ((v17 & 1) == 0)
      {
        v18 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        v19 = [v9 localizedName];
        v20 = [v9 contactLabel];
        [v18 setText:v7 needsFormat:1 name:v19 label:v20];

        goto LABEL_17;
      }
    }

    else
    {
    }

    v18 = [(DialerController *)self pseudoNameStringForDestinationID:v7];
    v21 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v21 setText:v7 needsFormat:1 name:0 label:0];

    if (!v18)
    {
LABEL_18:

      v22 = [(PHAbstractDialerView *)self->_dialerView lcdView];
      v23 = [v22 text];
      [(DialerController *)self _updateCallButtonEnabledState:v23];

LABEL_19:
      goto LABEL_20;
    }

    v19 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v19 setName:v18 numberLabel:0 suggestion:1];
LABEL_17:

    goto LABEL_18;
  }

LABEL_20:
}

- (void)_updateCallButtonEnabledState:(id)a3 updateNameNow:(BOOL)a4
{
  v4 = a4;
  [(DialerController *)self _updateCallButtonEnabledState:a3];

  [(DialerController *)self _updateLCDNameLabelWithAMatchingName:!v4];
}

- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)a3
{
  if (a3 && (-[PHAbstractDialerView lcdView](self->_dialerView, "lcdView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 text], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateName selector:0 userInfo:0 repeats:0.2];
    lookupTimer = self->_lookupTimer;
    self->_lookupTimer = v6;

    MEMORY[0x2821F96F8]();
  }

  else
  {

    [(DialerController *)self _updateName];
  }
}

- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)a3
{
  v7 = a3;
  v4 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v6 setName:v7 numberLabel:&stru_285532CB8 suggestion:0];
  }
}

- (void)_updateCallButtonEnabledState:(id)a3
{
  v10 = a3;
  if (self->_lookupTimer)
  {
    [(DialerController *)self _stopLookupTimer];
  }

  TUNetworkCountryCode();
  valid = PNIsValidPhoneNumberForCountry();
  v5 = [(PHAbstractDialerView *)self->_dialerView callButton];
  v7 = v5;
  if (valid)
  {
    LODWORD(v6) = -1097229926;
  }

  else
  {
    [v5 charge];
    v9 = fabsf(v8);

    if (v9 < 2.2204e-16)
    {
      goto LABEL_8;
    }

    v5 = [(PHAbstractDialerView *)self->_dialerView callButton];
    v7 = v5;
    v6 = 0.0;
  }

  [v5 setCharge:v6];

LABEL_8:
}

- (void)_fadeSubviewsOf:(id)a3 excludingViews:(id)a4 toValue:(double)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 subviews];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (([v9 containsObject:v15] & 1) == 0)
        {
          [v15 setAlpha:a5];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [v8 superview];

  if (v16)
  {
    v17 = [v8 superview];
    [(DialerController *)self _fadeSubviewsOf:v17 excludingViews:v9 toValue:a5];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_animateCallButton
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    v3 = [(DialerController *)self dialerView];
    v4 = [v3 callButton];

    [v4 setUserInteractionEnabled:0];
    [(DialerController *)self setBackgroundStyle:4 animated:1];
    v5 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__DialerController__animateCallButton__block_invoke;
    v23[3] = &unk_278D74AE8;
    v23[4] = self;
    v6 = v4;
    v24 = v6;
    [v5 animateWithDuration:v23 animations:0.50999999];
    if (objc_opt_respondsToSelector())
    {
      [v6 performSelector:sel__animationWillBegin];
    }

    v7 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.rotation.z"];
    [v7 setMass:2.0];
    [v7 setStiffness:300.0];
    [v7 setDamping:50.0];
    [v7 setDuration:0.50999999];
    [v7 setToValue:&unk_285537D88];
    v8 = *MEMORY[0x277CDA238];
    [v7 setFillMode:*MEMORY[0x277CDA238]];
    [v7 setRemovedOnCompletion:0];
    v9 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"backgroundColor"];
    v10 = [MEMORY[0x277D75348] systemGreenColor];
    v11 = [v10 CGColor];

    v12 = [MEMORY[0x277D75348] systemRedColor];
    v13 = [v12 CGColor];

    v25[0] = v11;
    v25[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v9 setValues:v14];

    [v9 setKeyTimes:&unk_285537D58];
    [v9 setDuration:0.254999995];
    [v9 setFillMode:v8];
    [v9 setRemovedOnCompletion:0];
    v15 = [v6 imageView];
    [v15 setClipsToBounds:0];

    v16 = [v6 imageView];
    [v16 setContentMode:4];

    [MEMORY[0x277CD9FF0] begin];
    v17 = [v6 imageView];
    v18 = [v17 layer];
    [v18 addAnimation:v7 forKey:@"rollButtonAnimation"];

    v19 = [v6 layer];
    [v19 addAnimation:v9 forKey:@"buttonColorAnimation"];

    [MEMORY[0x277CD9FF0] commit];
    v20 = PHDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_2429BC000, v20, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Called ", v22, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __38__DialerController__animateCallButton__block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) superview];
  v4 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v5 = [v4 dialerView];
  v6 = [v5 deleteButton];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v2 _fadeSubviewsOf:v3 excludingViews:v7 toValue:0.0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateIDSStatus
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)searchAndUpdateResultsFor:(id)a3 shouldRefreshResult:(BOOL)a4 showPastedString:(id)a5
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)searchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)_callButtonPressed:(id)a3
{
  if ([MEMORY[0x277D6EDE8] supportsTelephonyCalls])
  {
    if ([MEMORY[0x277D6EDE8] isRelayCallingEnabled])
    {
      v4 = 1;
    }

    else
    {
      v4 = [MEMORY[0x277D6EDE8] isThumperCallingEnabled];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [(DialerController *)self featureFlags];
  if (![v5 phoneLargeFormatUIEnabled])
  {
    goto LABEL_12;
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1) | v4 & 1)
  {
    goto LABEL_12;
  }

  v8 = [(DialerController *)self featureFlags];
  if (([v8 uplevelFTAEnabled] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  v9 = [MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeAudioCalls];

  if (v9)
  {
    v12 = [(DialerController *)self callProviderManager];
    v10 = [v12 faceTimeProvider];
    goto LABEL_14;
  }

LABEL_13:
  v12 = [(DialerController *)self callProviderManager];
  v10 = [v12 telephonyProvider];
LABEL_14:
  v11 = v10;
  [(DialerController *)self _callButtonPressedActionWithCallProvider:v10];
}

- (void)_callButtonPressedActionWithCallProvider:(id)a3
{
  v7 = a3;
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if ([(DialerController *)self digitsEntered])
  {
    v4 = [(DialerController *)self dialerView];
    v5 = [v4 lcdView];
    [v5 endEditing];

    [(DialerController *)self setWantsCallButtonAnimation:1];
    [(DialerController *)self performCallActionForCallProvider:v7];
  }

  else
  {
    [(DialerController *)self restoreLastDialedNumber];
  }

  v6 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  if (objc_opt_respondsToSelector())
  {
    [v6 logWithCall];
  }
}

- (void)showRestrictedAlertWithMessage:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = TUBundle();
  v7 = [v6 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_285532CB8 table:@"TelephonyUtilities"];
  v12 = [v4 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = TUBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_285532CB8 table:@"TelephonyUtilities"];
  v11 = [v8 actionWithTitle:v10 style:1 handler:0];
  [v12 addAction:v11];

  [(DialerController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)restrictedSubtitleForHandle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D6EE58]);
  v6 = [MEMORY[0x277D6EEE8] handleWithDestinationID:v4];
  v7 = [v5 initWithHandle:v6];

  v8 = [(DialerController *)self contactsDataProvider];
  v9 = [v8 executeFetchRequest:v7];

  v10 = [v9 localizedName];
  if ([v10 length])
  {
    v11 = [v9 localizedName];
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  if (![v12 length])
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"UNKNOWN" value:&stru_285532CB8 table:@"Dialer"];

    v12 = v14;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = TUBundle();
  v17 = [v16 localizedStringForKey:@"DOWNTIME_CALLER_ALTERNATE_%@" value:&stru_285532CB8 table:@"TelephonyUtilities"];
  v18 = [v15 stringWithFormat:v17, v12];

  return v18;
}

- (void)phonePad:(id)a3 dialerCharacterButtonWasHeld:(int64_t)a4
{
  if (!a4)
  {
    v5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    v6 = [v5 text];
    v7 = [v6 length];

    if (v7 == 1)
    {

      [(DialerController *)self _dialVoicemail];
    }
  }
}

- (void)performCharacterAddAction:(id)a3
{
  v4 = a3;
  v6 = [(DialerController *)self dialerView];
  v5 = [v6 phonePadView];
  [(DialerController *)self phonePad:v5 appendString:v4 playDTMFTone:0];
}

- (void)phonePad:(id)a3 appendString:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  [(DialerController *)self phonePad:v7 appendString:v6 playDTMFTone:[(DialerController *)self dialerType]== 2];
}

- (void)phonePad:(id)a3 appendString:(id)a4 playDTMFTone:(BOOL)a5
{
  v5 = a5;
  v13 = *MEMORY[0x277D85DE8];
  v8 = a4;
  [(DialerController *)self _phonePad:a3 appendString:v8 suppressClearingDialedNumber:0];
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if (v5)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2429BC000, v9, OS_LOG_TYPE_DEFAULT, "Will play DTMF tone due to string being appended (%@)", &v11, 0xCu);
    }

    +[DialerController playDTMFToneForKey:](DialerController, "playDTMFToneForKey:", [v8 characterAtIndex:0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_phonePad:(id)a3 appendString:(id)a4 suppressClearingDialedNumber:(BOOL)a5
{
  v7 = a4;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  v8 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v13 = [v8 text];

  v9 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v9 insertStringAtCurrentPosition:v7];

  v10 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v11 = [v10 text];

  if ([v11 length] == 1 && objc_msgSend(v11, "characterAtIndex:", 0) == 44)
  {
    v12 = @"*";
LABEL_7:

    v11 = v12;
    goto LABEL_8;
  }

  if ([v11 length] == 1 && objc_msgSend(v11, "characterAtIndex:", 0) == 59)
  {
    v12 = @"#";
    goto LABEL_7;
  }

LABEL_8:
  -[DialerController _updateCallButtonEnabledState:updateNameNow:](self, "_updateCallButtonEnabledState:updateNameNow:", v11, [v13 length] == 0);
  *(self + 1016) &= ~1u;
  if (!a5)
  {
    [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
  }
}

- (void)phonePad:(id)a3 replaceLastDigitWithString:(id)a4
{
  v5 = a4;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  v6 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v6 insertStringAtCurrentPosition:v5 deletingPreviousCharacter:1];

  v7 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v10 = [v7 text];

  if ([v10 length] == 1 && objc_msgSend(v10, "characterAtIndex:", 0) == 44)
  {
    v8 = @"*";
LABEL_7:
    v9 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [v9 setText:v8 needsFormat:1];

    [(DialerController *)self _updateCallButtonEnabledState:v8 updateNameNow:0];
    goto LABEL_8;
  }

  if ([v10 length] == 1 && objc_msgSend(v10, "characterAtIndex:", 0) == 59)
  {
    v8 = @"#";
    goto LABEL_7;
  }

LABEL_8:
}

- (void)phonePadDeleteLastDigit:(id)a3
{
  v4 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [v4 deleteCharacter];

  v5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v6 = [v5 text];
  [(DialerController *)self _updateCallButtonEnabledState:v6 updateNameNow:0];

  *(self + 1016) &= ~1u;

  [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
}

- (NSString)phoneNumberPrefixHint
{
  v3 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v3 isGreenTea] && objc_msgSend(v3, "deviceType") == 4)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2429BC000, v4, OS_LOG_TYPE_DEFAULT, "Skipping phone number lookup on GreenTea iPad, returning nil for prefix hint.", v11, 2u);
    }

    v5 = 0;
  }

  else
  {
    phoneNumberPrefixHint = self->_phoneNumberPrefixHint;
    if (!phoneNumberPrefixHint)
    {
      v7 = CTSettingCopyMyPhoneNumber();
      v8 = UIPhonePrefixFromNumber();
      v9 = self->_phoneNumberPrefixHint;
      self->_phoneNumberPrefixHint = v8;

      phoneNumberPrefixHint = self->_phoneNumberPrefixHint;
    }

    v5 = phoneNumberPrefixHint;
  }

  return v5;
}

- (void)handleKeyCommand:(id)a3
{
  v4 = a3;
  v5 = [(DialerController *)self dialerView];
  v6 = [v5 phonePadView];

  v7 = [(DialerController *)self keyCommandHandler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__DialerController_handleKeyCommand___block_invoke;
  v11[3] = &unk_278D74B10;
  v11[4] = self;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__DialerController_handleKeyCommand___block_invoke_2;
  v9[3] = &unk_278D74B38;
  v9[4] = self;
  v10 = v12;
  v8 = v12;
  [v7 handleKeyCommand:v4 receivedCharacterBlock:v11 receivedSpecialCharacterBlock:v9];
}

void __37__DialerController_handleKeyCommand___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) soundPlayer];
  [v4 attemptToPlayKey:a2];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", a2];
  [v6 phonePad:v5 appendString:v7];
}

uint64_t __37__DialerController_handleKeyCommand___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) _callButtonPressed:0];
  }

  if (!a2)
  {
    return [*(result + 32) phonePadDeleteLastDigit:*(result + 40)];
  }

  return result;
}

- (void)phonePadDidEndSounds:(id)a3
{
  v4 = a3;
  if (self->_dialerType == 2 && self->_dtmfPlaying)
  {
    v5 = v4;
    CTDTMFPlayStop();
    v4 = v5;
    self->_dtmfPlaying = 0;
  }
}

- (void)_dialVoicemail
{
  v3 = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [v3 cancelTouchTracking];

  v4 = [(DialerController *)self callProviderManager];
  v5 = [v4 voicemailProvider];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v5];
    [v6 setDialType:2];
    v7 = [(DialerController *)self selectedSenderIdentity];
    v8 = [v7 accountUUID];
    [v6 setLocalSenderIdentityAccountUUID:v8];

    [v6 setOriginatingUIType:41];
    [(DialerController *)self _dialWithRequest:v6];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DialerController *)v9 _dialVoicemail];
    }
  }
}

- (void)_dialWithRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_2429BC000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  *(self + 1016) |= 1u;
  [(DialerController *)self dismissModalViewControllerAnimated:1];
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v4 URL];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__DialerController__dialWithRequest___block_invoke;
  v10[3] = &unk_278D74A08;
  v11 = v4;
  v12 = self;
  v8 = v4;
  [v6 openURL:v7 withCompletionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __37__DialerController__dialWithRequest___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __37__DialerController__dialWithRequest___block_invoke_cold_1(v2);
    }

    return [*(v2 + 40) setWantsCallButtonAnimation:0];
  }

  return result;
}

- (void)_deleteRepeat
{
  [(DialerController *)self phonePadDeleteLastDigit:0];
  v3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v4 = [v3 text];
  v5 = [v4 length];

  if (!v5)
  {
    [(DialerController *)self _stopDeleteTimer];
  }

  *(self + 1016) |= 2u;
}

- (void)_startDeleteTimer
{
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__deleteRepeat selector:0 userInfo:1 repeats:0.04];
  deleteTimer = self->_deleteTimer;
  self->_deleteTimer = v3;

  [(DialerController *)self _deleteRepeat];
}

- (void)_stopDeleteTimer
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__startDeleteTimer object:0];
  [(NSTimer *)self->_deleteTimer invalidate];
  deleteTimer = self->_deleteTimer;
  self->_deleteTimer = 0;
}

- (void)_deleteButtonClicked:(id)a3
{
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  if ((*(self + 1016) & 2) != 0)
  {

    [(DialerController *)self _stopDeleteTimer];
  }

  else
  {

    [(DialerController *)self performDeleteAction];
  }
}

- (BOOL)digitsEntered
{
  v2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)restoreLastDialedNumber
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  if ([v3 currentCallCount])
  {

LABEL_3:
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277D6EDF8] sharedInstance];
      v6 = [v5 currentCallCount] != 0;
      v7 = [(DialerController *)self lastDialedNumber];
      v13 = 67109376;
      v14[0] = v6;
      LOWORD(v14[1]) = 1024;
      *(&v14[1] + 2) = v7 == 0;
      _os_log_impl(&dword_2429BC000, v4, OS_LOG_TYPE_DEFAULT, "Not updating visible number to saved redialed number because we are in call (%d) or we don't have a redialed number saved (%d)", &v13, 0xEu);
    }

    goto LABEL_10;
  }

  v8 = [(DialerController *)self lastDialedNumber];

  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(DialerController *)self lastDialedNumber];
    v13 = 138412290;
    *v14 = v10;
    _os_log_impl(&dword_2429BC000, v9, OS_LOG_TYPE_DEFAULT, "Updating visible number to saved redialed number: %@", &v13, 0xCu);
  }

  v11 = [(DialerController *)self lastDialedNumber];
  [(DialerController *)self _phonePad:0 appendString:v11 suppressClearingDialedNumber:1];

  [(DialerController *)self _updateName];
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:1];
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)performDeleteAction
{
  [(DialerController *)self _stopDeleteTimer];

  [(DialerController *)self phonePadDeleteLastDigit:0];
}

- (void)_handleSIMInsertionOrRemoval
{
  [(DialerController *)self setPhoneNumberPrefixHint:0];

  [(DialerController *)self setContactsDataProvider:0];
}

- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    if (a4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __48__DialerController_setBackgroundStyle_animated___block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = a3;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.5];
    }

    else
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      [v5 _setBackgroundStyle:a3];
    }
  }
}

void __48__DialerController_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 _setBackgroundStyle:*(a1 + 32)];
}

- (void)handleApplicationDidEnterBackgroundNotification:(id)a3
{
  [(DialerController *)self deactivateAudioServices];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2429BC000, v3, OS_LOG_TYPE_DEFAULT, "Application entered the background. Keypad button tones are disabled.", v4, 2u);
  }
}

- (void)handleApplicationWillEnterForegroundNotification:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(DialerController *)self requestAudioServicesActivate];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2429BC000, v4, OS_LOG_TYPE_DEFAULT, "Application is entering the foreground. Keypad button tones are enabled: %@.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestAudioServicesActivate
{
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  if ([v3 currentCallCount])
  {
    v4 = self->_dialerType == 2;
  }

  else
  {
    v4 = 1;
  }

  [(DialerController *)self setAudioServicesActivated:v4];
  return v4;
}

- (void)setAudioServicesActivated:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__DialerController_setAudioServicesActivated___block_invoke;
  v3[3] = &unk_278D74A98;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __46__DialerController_setAudioServicesActivated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 992) phonePadView];
  [v2 setPlaysSounds:*(a1 + 40)];
}

- (CNContactStore)contactStore
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277D6EF80]];

  if (v5)
  {
    v6 = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [v6 displayedCallFromCalls:0];

    v8 = [MEMORY[0x277CBDAC0] tu_contactStoreConfigurationForCall:v7];
    [v8 setIncludeDonatedContacts:1];
    [v8 setIncludeSuggestedContacts:1];
    v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v8];
  }

  else
  {
    contactStore = self->_contactStore;
    if (!contactStore)
    {
      v11 = [MEMORY[0x277CBDAB8] suggestedContactStore];
      v12 = self->_contactStore;
      self->_contactStore = v11;

      contactStore = self->_contactStore;
    }

    v9 = contactStore;
  }

  return v9;
}

- (TUContactsDataProvider)contactsDataProvider
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277D6EF80]];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D6EE50]);
    v7 = [(DialerController *)self contactStore];
    v8 = [v6 initWithContactsDataSource:v7];
  }

  else
  {
    contactsDataProvider = self->_contactsDataProvider;
    if (!contactsDataProvider)
    {
      v10 = objc_alloc(MEMORY[0x277D6EE50]);
      v11 = [(DialerController *)self contactStore];
      v12 = [v10 initWithContactsDataSource:v11];
      v13 = self->_contactsDataProvider;
      self->_contactsDataProvider = v12;

      contactsDataProvider = self->_contactsDataProvider;
    }

    v8 = contactsDataProvider;
  }

  return v8;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(DialerController *)self interfaceOrientationProvider];

  if (v3)
  {
    v4 = [(DialerController *)self interfaceOrientationProvider];
    v5 = [v4 dialerSupportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DialerController;
    return [(DialerController *)&v7 supportedInterfaceOrientations];
  }
}

- (BOOL)deviceHasMultipleSIM
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 providerManager];

  v4 = [v3 telephonyProvider];
  v5 = [v4 prioritizedSenderIdentities];
  v6 = [v5 count] > 1;

  return v6;
}

- (BOOL)enableDualSimMenu
{
  v3 = PHDeviceSupportsDualSim();
  if (v3)
  {

    LOBYTE(v3) = [(DialerController *)self deviceHasMultipleSIM];
  }

  return v3;
}

- (void)updateDialerViewDualSimMenu
{
  v3 = [(DialerController *)self dialerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(DialerController *)self dialerView];
    [v5 setEnableDualSimMenu:{-[DialerController enableDualSimMenu](self, "enableDualSimMenu")}];
  }
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2429BC000, v4, OS_LOG_TYPE_DEFAULT, "providersChangedForProviderManager called", v5, 2u);
  }

  [(DialerController *)self updateDialerViewDualSimMenu];
}

- (DialerControllerInterfaceOrientationProvder)interfaceOrientationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceOrientationProvider);

  return WeakRetained;
}

void __37__DialerController__dialWithRequest___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) URL];
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end