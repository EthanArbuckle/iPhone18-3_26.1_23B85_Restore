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
- (id)contactResultForPhoneNumber:(id)number;
- (id)defaultCallProvider;
- (id)restrictedSubtitleForHandle:(id)handle;
- (id)tabBarIconName;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animateCallButton;
- (void)_callButtonPressed:(id)pressed;
- (void)_callButtonPressedActionWithCallProvider:(id)provider;
- (void)_callStatusChanged:(id)changed;
- (void)_clearDisplayIfNecessary;
- (void)_deleteButtonClicked:(id)clicked;
- (void)_deleteRepeat;
- (void)_dialVoicemail;
- (void)_dialWithRequest:(id)request;
- (void)_fadeSubviewsOf:(id)of excludingViews:(id)views toValue:(double)value;
- (void)_handleSIMInsertionOrRemoval;
- (void)_phonePad:(id)pad appendString:(id)string suppressClearingDialedNumber:(BOOL)number;
- (void)_resetButtonAnimation;
- (void)_startDeleteTimer;
- (void)_stopDeleteTimer;
- (void)_stopLookupTimer;
- (void)_updateCallButtonEnabledState:(id)state;
- (void)_updateCallButtonEnabledState:(id)state updateNameNow:(BOOL)now;
- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)name;
- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)string;
- (void)applicationDidResume;
- (void)dealloc;
- (void)dialerView:(id)view stringWasPasted:(id)pasted;
- (void)dialerViewTextDidChange:(id)change;
- (void)handleApplicationDidEnterBackgroundNotification:(id)notification;
- (void)handleApplicationWillEnterForegroundNotification:(id)notification;
- (void)handleKeyCommand:(id)command;
- (void)loadView;
- (void)performCharacterAddAction:(id)action;
- (void)performDeleteAction;
- (void)phonePad:(id)pad appendString:(id)string;
- (void)phonePad:(id)pad appendString:(id)string playDTMFTone:(BOOL)tone;
- (void)phonePad:(id)pad dialerCharacterButtonWasHeld:(int64_t)held;
- (void)phonePad:(id)pad replaceLastDigitWithString:(id)string;
- (void)phonePadDeleteLastDigit:(id)digit;
- (void)phonePadDidEndSounds:(id)sounds;
- (void)providersChangedForProviderManager:(id)manager;
- (void)reloadButtons;
- (void)restoreLastDialedNumber;
- (void)searchAndUpdateResultsFor:(id)for shouldRefreshResult:(BOOL)result showPastedString:(id)string;
- (void)searchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler;
- (void)setAudioServicesActivated:(BOOL)activated;
- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated;
- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)empty;
- (void)showOrHideDeleteButton;
- (void)showRestrictedAlertWithMessage:(id)message;
- (void)touchesBegan:(id)began withEvent:(id)event;
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
    dialerView = [(DialerController *)self dialerView];
    callButton = [dialerView callButton];

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [callButton setBackgroundColor:systemGreenColor];

    layer = [callButton layer];
    [layer removeAllAnimations];

    imageView = [callButton imageView];
    layer2 = [imageView layer];
    [layer2 removeAllAnimations];

    [callButton setUserInteractionEnabled:1];
    v19[0] = callButton;
    dialerView2 = [(DialerController *)self dialerView];
    deleteButton = [dialerView2 deleteButton];
    v19[1] = deleteButton;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v12 = [v11 mutableCopy];

    if ([(DialerController *)self appType]== 1 && [(DialerController *)self enableSmartDialer])
    {
      dialerView3 = [(DialerController *)self dialerView];
      addContactButton = [dialerView3 addContactButton];
      [v12 addObject:addContactButton];
    }

    superview = [callButton superview];
    [(DialerController *)self _fadeSubviewsOf:superview excludingViews:v12 toValue:1.0];

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
    view = [(DialerController *)self view];
    window = [view window];
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
    lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView setText:&stru_285532CB8 needsFormat:0];

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
  callProviderManager = [(DialerController *)self callProviderManager];
  telephonyProvider = [callProviderManager telephonyProvider];

  return telephonyProvider;
}

- (void)reloadButtons
{
  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView reloadButtonImages];
}

- (void)loadView
{
  v40[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:?];

  if (![(DialerController *)self dialerType]|| [(DialerController *)self dialerType]== 1)
  {
    [v5 setAutoresizingMask:18];
  }

  dialerView = self->_dialerView;
  if (!dialerView)
  {
    v7 = [PHHandsetDialerView alloc];
    appType = [(DialerController *)self appType];
    enableSmartDialer = [(DialerController *)self enableSmartDialer];
    enableSmartDialerExpandedSearch = [(DialerController *)self enableSmartDialerExpandedSearch];
    enableDualSimMenu = [(DialerController *)self enableDualSimMenu];
    v12 = [(PHHandsetDialerView *)v7 initWithFrame:appType appType:enableSmartDialer enableSmartDialer:enableSmartDialerExpandedSearch enableSmartDialerExpandedSearch:enableDualSimMenu enableDualSimMenu:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v13 = self->_dialerView;
    self->_dialerView = v12;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:clearColor];

    [v5 setOpaque:0];
    dialerView = self->_dialerView;
  }

  [(PHAbstractDialerView *)dialerView setDelegate:self];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(DialerController *)self appType]== 1)
  {
    [(PHAbstractDialerView *)self->_dialerView setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(PHAbstractDialerView *)self->_dialerView backgroundColor];
    [v5 setBackgroundColor:backgroundColor];

    [v5 addSubview:self->_dialerView];
    v35 = MEMORY[0x277CCAAD0];
    topAnchor = [(PHAbstractDialerView *)self->_dialerView topAnchor];
    topAnchor2 = [v5 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v40[0] = v37;
    leadingAnchor = [(PHAbstractDialerView *)self->_dialerView leadingAnchor];
    leadingAnchor2 = [v5 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v40[1] = v33;
    trailingAnchor = [(PHAbstractDialerView *)self->_dialerView trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
    v40[2] = v20;
    bottomAnchor = [(PHAbstractDialerView *)self->_dialerView bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
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

  callButton = [(PHAbstractDialerView *)self->_dialerView callButton];
  [callButton addTarget:self action:sel__callButtonPressed_ forControlEvents:64];

  deleteButton = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [deleteButton addTarget:self action:sel__deleteButtonClicked_ forControlEvents:64];

  deleteButton2 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [deleteButton2 addTarget:self action:sel__deleteButtonDown_ forControlEvents:1];

  deleteButton3 = [(PHAbstractDialerView *)self->_dialerView deleteButton];
  [deleteButton3 addTarget:self action:sel__stopDeleteTimer forControlEvents:32];

  v29 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleSwipeGesture_];
  [v29 setDirection:3];
  [v29 setDelegate:self];
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView addGestureRecognizer:v29];

  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView setDelegate:self];

  [(DialerController *)self setView:v5];
  v32 = *MEMORY[0x277D85DE8];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = DialerController;
  eventCopy = event;
  [(DialerController *)&v11 touchesBegan:began withEvent:eventCopy];
  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView:v11.receiver];
  v8 = [eventCopy touchesForView:lcdView2];

  if (v8)
  {
  }

  else
  {
    lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView2 endEditing];
  }
}

- (BOOL)_disableAutomaticKeyboardUI
{
  if ([(DialerController *)self appType]== 1 && [(DialerController *)self enableSmartDialer])
  {
    presentedViewController = [(DialerController *)self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [(DialerController *)self presentedViewController];
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

- (void)_callStatusChanged:(id)changed
{
  changedCopy = changed;
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    object = [changedCopy object];
    if ([object status] == 3)
    {
      mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
      if ([mEMORY[0x277D6EDF8] currentCallCount] == 1 && objc_msgSend(object, "isEndpointOnCurrentDevice") && !objc_msgSend(object, "isEmergency"))
      {
        isSuspendedEventsOnly = [*MEMORY[0x277D76620] isSuspendedEventsOnly];

        if ((isSuspendedEventsOnly & 1) == 0)
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
  callProviderManager = [(DialerController *)self callProviderManager];
  [callProviderManager removeDelegate:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveEveryObserver();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(DialerController *)self _stopLookupTimer];
  [(DialerController *)self _stopDeleteTimer];
  [(PHAbstractDialerView *)self->_dialerView removeFromSuperview];
  [(PHAbstractDialerView *)self->_dialerView setDelegate:0];
  dialerView = self->_dialerView;
  self->_dialerView = 0;

  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView setDelegate:0];

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
  presentedViewController = [(DialerController *)self presentedViewController];
  v3 = presentedViewController == 0;

  return v3;
}

- (void)_stopLookupTimer
{
  [(NSTimer *)self->_lookupTimer invalidate];
  lookupTimer = self->_lookupTimer;
  self->_lookupTimer = 0;
}

- (id)contactResultForPhoneNumber:(id)number
{
  v4 = MEMORY[0x277D6EE58];
  numberCopy = number;
  v6 = [v4 alloc];
  v7 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:numberCopy];

  v8 = [v6 initWithHandle:v7];
  phoneNumberPrefixHint = [(DialerController *)self phoneNumberPrefixHint];
  [v8 setPhoneNumberPrefixHint:phoneNumberPrefixHint];

  contactsDataProvider = [(DialerController *)self contactsDataProvider];
  v11 = [contactsDataProvider executeFetchRequest:v8];

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
  firstObject = [v9 firstObject];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  remoteParticipantHandles = [firstObject remoteParticipantHandles];
  v12 = [remoteParticipantHandles countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(remoteParticipantHandles);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v17 type] == 2)
        {
          value = [v17 value];

          v14 = value;
        }
      }

      v13 = [remoteParticipantHandles countByEnumeratingWithState:&v21 objects:v25 count:16];
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
    mostRecentCallHandleValue = 0;
  }

  else
  {
    mostRecentCallHandleValue = [objc_opt_class() mostRecentCallHandleValue];
  }

  return mostRecentCallHandleValue;
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

- (void)setShouldHideDeleteButtonWhenEmpty:(BOOL)empty
{
  self->_shouldHideDeleteButtonWhenEmpty = empty;
  if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
  {

    [(DialerController *)self showOrHideDeleteButton];
  }
}

- (void)showOrHideDeleteButton
{
  dialerView = [(DialerController *)self dialerView];
  lcdView = [dialerView lcdView];
  text = [lcdView text];
  v6 = [text length] == 0;
  dialerView2 = [(DialerController *)self dialerView];
  deleteButton = [dialerView2 deleteButton];
  [deleteButton setHidden:v6];

  dialerView3 = [(DialerController *)self dialerView];
  deleteButton2 = [dialerView3 deleteButton];
  if ([deleteButton2 isHidden])
  {
    dialerType = [(DialerController *)self dialerType];

    if (dialerType != 1)
    {
      return;
    }

    dialerView3 = [MEMORY[0x277CCAB98] defaultCenter];
    deleteButton2 = [(DialerController *)self dialerView];
    v9DeleteButton = [deleteButton2 deleteButton];
    [dialerView3 postNotificationName:@"kPHCarPlayDeleteButtonHideNotification" object:v9DeleteButton];
  }
}

- (void)dialerViewTextDidChange:(id)change
{
  dialerView = self->_dialerView;
  if (dialerView == change)
  {
    lcdView = [(PHAbstractDialerView *)dialerView lcdView];
    text = [lcdView text];
    [(DialerController *)self _updateCallButtonEnabledState:text updateNameNow:1];

    if ([(DialerController *)self shouldHideDeleteButtonWhenEmpty])
    {

      [(DialerController *)self showOrHideDeleteButton];
    }
  }
}

- (void)dialerView:(id)view stringWasPasted:(id)pasted
{
  viewCopy = view;
  pastedCopy = pasted;
  if (pastedCopy && self->_dialerView == viewCopy)
  {
    encodedDialerString = [pastedCopy encodedDialerString];
    v8 = [pastedCopy isEqualToString:encodedDialerString];
    v9 = [(DialerController *)self contactResultForPhoneNumber:encodedDialerString];
    if ([(DialerController *)self appType]== 1 && [(DialerController *)self enableSmartDialer])
    {
      lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
      [lcdView setText:encodedDialerString needsFormat:1];

      [(DialerController *)self _updateCallButtonEnabledState:encodedDialerString];
      [(DialerController *)self updateIDSStatus];
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = pastedCopy;
      }

      [(DialerController *)self searchAndUpdateResultsFor:encodedDialerString shouldRefreshResult:0 showPastedString:v11];
      goto LABEL_19;
    }

    if ((v8 & 1) == 0)
    {
      contacts = [v9 contacts];
      v13 = [contacts count];

      if (!v13)
      {
        lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        v25 = MEMORY[0x277CCACA8];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"QUOTE_%@_QUOTE" value:&stru_285532CB8 table:@"Dialer"];
        pastedCopy = [v25 stringWithFormat:v27, pastedCopy];
        [lcdView2 setText:encodedDialerString needsFormat:1 name:pastedCopy label:0];

        [(DialerController *)self _updateCallButtonEnabledState:encodedDialerString];
        goto LABEL_19;
      }
    }

    contacts2 = [v9 contacts];
    if ([contacts2 count])
    {
      contacts3 = [v9 contacts];
      firstObject = [contacts3 firstObject];
      isSuggested = [firstObject isSuggested];

      if ((isSuggested & 1) == 0)
      {
        lcdView3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
        localizedName = [v9 localizedName];
        contactLabel = [v9 contactLabel];
        [lcdView3 setText:encodedDialerString needsFormat:1 name:localizedName label:contactLabel];

        goto LABEL_17;
      }
    }

    else
    {
    }

    lcdView3 = [(DialerController *)self pseudoNameStringForDestinationID:encodedDialerString];
    lcdView4 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView4 setText:encodedDialerString needsFormat:1 name:0 label:0];

    if (!lcdView3)
    {
LABEL_18:

      lcdView5 = [(PHAbstractDialerView *)self->_dialerView lcdView];
      text = [lcdView5 text];
      [(DialerController *)self _updateCallButtonEnabledState:text];

LABEL_19:
      goto LABEL_20;
    }

    localizedName = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [localizedName setName:lcdView3 numberLabel:0 suggestion:1];
LABEL_17:

    goto LABEL_18;
  }

LABEL_20:
}

- (void)_updateCallButtonEnabledState:(id)state updateNameNow:(BOOL)now
{
  nowCopy = now;
  [(DialerController *)self _updateCallButtonEnabledState:state];

  [(DialerController *)self _updateLCDNameLabelWithAMatchingName:!nowCopy];
}

- (void)_updateLCDNameLabelWithAMatchingName:(BOOL)name
{
  if (name && (-[PHAbstractDialerView lcdView](self->_dialerView, "lcdView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 text], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
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

- (void)_updateLCDNameLabelWithOriginallyPastedString:(id)string
{
  stringCopy = string;
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView2 setName:stringCopy numberLabel:&stru_285532CB8 suggestion:0];
  }
}

- (void)_updateCallButtonEnabledState:(id)state
{
  stateCopy = state;
  if (self->_lookupTimer)
  {
    [(DialerController *)self _stopLookupTimer];
  }

  TUNetworkCountryCode();
  valid = PNIsValidPhoneNumberForCountry();
  callButton = [(PHAbstractDialerView *)self->_dialerView callButton];
  v7 = callButton;
  if (valid)
  {
    LODWORD(v6) = -1097229926;
  }

  else
  {
    [callButton charge];
    v9 = fabsf(v8);

    if (v9 < 2.2204e-16)
    {
      goto LABEL_8;
    }

    callButton = [(PHAbstractDialerView *)self->_dialerView callButton];
    v7 = callButton;
    v6 = 0.0;
  }

  [callButton setCharge:v6];

LABEL_8:
}

- (void)_fadeSubviewsOf:(id)of excludingViews:(id)views toValue:(double)value
{
  v24 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  viewsCopy = views;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  subviews = [ofCopy subviews];
  v11 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (([viewsCopy containsObject:v15] & 1) == 0)
        {
          [v15 setAlpha:value];
        }
      }

      v12 = [subviews countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  superview = [ofCopy superview];

  if (superview)
  {
    superview2 = [ofCopy superview];
    [(DialerController *)self _fadeSubviewsOf:superview2 excludingViews:viewsCopy toValue:value];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_animateCallButton
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([(DialerController *)self shouldAnimateCallButton])
  {
    dialerView = [(DialerController *)self dialerView];
    callButton = [dialerView callButton];

    [callButton setUserInteractionEnabled:0];
    [(DialerController *)self setBackgroundStyle:4 animated:1];
    v5 = MEMORY[0x277D75D18];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__DialerController__animateCallButton__block_invoke;
    v23[3] = &unk_278D74AE8;
    v23[4] = self;
    v6 = callButton;
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
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    cGColor = [systemGreenColor CGColor];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    cGColor2 = [systemRedColor CGColor];

    v25[0] = cGColor;
    v25[1] = cGColor2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [v9 setValues:v14];

    [v9 setKeyTimes:&unk_285537D58];
    [v9 setDuration:0.254999995];
    [v9 setFillMode:v8];
    [v9 setRemovedOnCompletion:0];
    imageView = [v6 imageView];
    [imageView setClipsToBounds:0];

    imageView2 = [v6 imageView];
    [imageView2 setContentMode:4];

    [MEMORY[0x277CD9FF0] begin];
    imageView3 = [v6 imageView];
    layer = [imageView3 layer];
    [layer addAnimation:v7 forKey:@"rollButtonAnimation"];

    layer2 = [v6 layer];
    [layer2 addAnimation:v9 forKey:@"buttonColorAnimation"];

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
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)searchAndUpdateResultsFor:(id)for shouldRefreshResult:(BOOL)result showPastedString:(id)string
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)searchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(DialerController *)a2 updateIDSStatus];
  }
}

- (void)_callButtonPressed:(id)pressed
{
  if ([MEMORY[0x277D6EDE8] supportsTelephonyCalls])
  {
    if ([MEMORY[0x277D6EDE8] isRelayCallingEnabled])
    {
      isThumperCallingEnabled = 1;
    }

    else
    {
      isThumperCallingEnabled = [MEMORY[0x277D6EDE8] isThumperCallingEnabled];
    }
  }

  else
  {
    isThumperCallingEnabled = 0;
  }

  featureFlags = [(DialerController *)self featureFlags];
  if (![featureFlags phoneLargeFormatUIEnabled])
  {
    goto LABEL_12;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1) | isThumperCallingEnabled & 1)
  {
    goto LABEL_12;
  }

  featureFlags2 = [(DialerController *)self featureFlags];
  if (([featureFlags2 uplevelFTAEnabled] & 1) == 0)
  {

LABEL_12:
    goto LABEL_13;
  }

  supportsDisplayingFaceTimeAudioCalls = [MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeAudioCalls];

  if (supportsDisplayingFaceTimeAudioCalls)
  {
    callProviderManager = [(DialerController *)self callProviderManager];
    faceTimeProvider = [callProviderManager faceTimeProvider];
    goto LABEL_14;
  }

LABEL_13:
  callProviderManager = [(DialerController *)self callProviderManager];
  faceTimeProvider = [callProviderManager telephonyProvider];
LABEL_14:
  v11 = faceTimeProvider;
  [(DialerController *)self _callButtonPressedActionWithCallProvider:faceTimeProvider];
}

- (void)_callButtonPressedActionWithCallProvider:(id)provider
{
  providerCopy = provider;
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if ([(DialerController *)self digitsEntered])
  {
    dialerView = [(DialerController *)self dialerView];
    lcdView = [dialerView lcdView];
    [lcdView endEditing];

    [(DialerController *)self setWantsCallButtonAnimation:1];
    [(DialerController *)self performCallActionForCallProvider:providerCopy];
  }

  else
  {
    [(DialerController *)self restoreLastDialedNumber];
  }

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  if (objc_opt_respondsToSelector())
  {
    [lcdView2 logWithCall];
  }
}

- (void)showRestrictedAlertWithMessage:(id)message
{
  v4 = MEMORY[0x277D75110];
  messageCopy = message;
  v6 = TUBundle();
  v7 = [v6 localizedStringForKey:@"RESTRICTED_CONTENT" value:&stru_285532CB8 table:@"TelephonyUtilities"];
  v12 = [v4 alertControllerWithTitle:v7 message:messageCopy preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = TUBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_285532CB8 table:@"TelephonyUtilities"];
  v11 = [v8 actionWithTitle:v10 style:1 handler:0];
  [v12 addAction:v11];

  [(DialerController *)self presentViewController:v12 animated:1 completion:0];
}

- (id)restrictedSubtitleForHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_alloc(MEMORY[0x277D6EE58]);
  v6 = [MEMORY[0x277D6EEE8] handleWithDestinationID:handleCopy];
  v7 = [v5 initWithHandle:v6];

  contactsDataProvider = [(DialerController *)self contactsDataProvider];
  v9 = [contactsDataProvider executeFetchRequest:v7];

  localizedName = [v9 localizedName];
  if ([localizedName length])
  {
    localizedName2 = [v9 localizedName];
  }

  else
  {
    localizedName2 = handleCopy;
  }

  v12 = localizedName2;

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

- (void)phonePad:(id)pad dialerCharacterButtonWasHeld:(int64_t)held
{
  if (!held)
  {
    lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
    text = [lcdView text];
    v7 = [text length];

    if (v7 == 1)
    {

      [(DialerController *)self _dialVoicemail];
    }
  }
}

- (void)performCharacterAddAction:(id)action
{
  actionCopy = action;
  dialerView = [(DialerController *)self dialerView];
  phonePadView = [dialerView phonePadView];
  [(DialerController *)self phonePad:phonePadView appendString:actionCopy playDTMFTone:0];
}

- (void)phonePad:(id)pad appendString:(id)string
{
  stringCopy = string;
  padCopy = pad;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  [(DialerController *)self phonePad:padCopy appendString:stringCopy playDTMFTone:[(DialerController *)self dialerType]== 2];
}

- (void)phonePad:(id)pad appendString:(id)string playDTMFTone:(BOOL)tone
{
  toneCopy = tone;
  v13 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  [(DialerController *)self _phonePad:pad appendString:stringCopy suppressClearingDialedNumber:0];
  [(DialerController *)self setBackgroundStyle:4 animated:1];
  if (toneCopy)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = stringCopy;
      _os_log_impl(&dword_2429BC000, v9, OS_LOG_TYPE_DEFAULT, "Will play DTMF tone due to string being appended (%@)", &v11, 0xCu);
    }

    +[DialerController playDTMFToneForKey:](DialerController, "playDTMFToneForKey:", [stringCopy characterAtIndex:0]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_phonePad:(id)pad appendString:(id)string suppressClearingDialedNumber:(BOOL)number
{
  stringCopy = string;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView text];

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView2 insertStringAtCurrentPosition:stringCopy];

  lcdView3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text2 = [lcdView3 text];

  if ([text2 length] == 1 && objc_msgSend(text2, "characterAtIndex:", 0) == 44)
  {
    v12 = @"*";
LABEL_7:

    text2 = v12;
    goto LABEL_8;
  }

  if ([text2 length] == 1 && objc_msgSend(text2, "characterAtIndex:", 0) == 59)
  {
    v12 = @"#";
    goto LABEL_7;
  }

LABEL_8:
  -[DialerController _updateCallButtonEnabledState:updateNameNow:](self, "_updateCallButtonEnabledState:updateNameNow:", text2, [text length] == 0);
  *(self + 1016) &= ~1u;
  if (!number)
  {
    [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
  }
}

- (void)phonePad:(id)pad replaceLastDigitWithString:(id)string
{
  stringCopy = string;
  [(DialerController *)self setDialLastDialedNumberByDoubleTap:0];
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView insertStringAtCurrentPosition:stringCopy deletingPreviousCharacter:1];

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView2 text];

  if ([text length] == 1 && objc_msgSend(text, "characterAtIndex:", 0) == 44)
  {
    v8 = @"*";
LABEL_7:
    lcdView3 = [(PHAbstractDialerView *)self->_dialerView lcdView];
    [lcdView3 setText:v8 needsFormat:1];

    [(DialerController *)self _updateCallButtonEnabledState:v8 updateNameNow:0];
    goto LABEL_8;
  }

  if ([text length] == 1 && objc_msgSend(text, "characterAtIndex:", 0) == 59)
  {
    v8 = @"#";
    goto LABEL_7;
  }

LABEL_8:
}

- (void)phonePadDeleteLastDigit:(id)digit
{
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  [lcdView deleteCharacter];

  lcdView2 = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView2 text];
  [(DialerController *)self _updateCallButtonEnabledState:text updateNameNow:0];

  *(self + 1016) &= ~1u;

  [(DialerController *)self setShouldSuppressShowingLastDialedNumber:1];
}

- (NSString)phoneNumberPrefixHint
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  if ([mEMORY[0x277D07DB0] isGreenTea] && objc_msgSend(mEMORY[0x277D07DB0], "deviceType") == 4)
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

- (void)handleKeyCommand:(id)command
{
  commandCopy = command;
  dialerView = [(DialerController *)self dialerView];
  phonePadView = [dialerView phonePadView];

  keyCommandHandler = [(DialerController *)self keyCommandHandler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__DialerController_handleKeyCommand___block_invoke;
  v11[3] = &unk_278D74B10;
  v11[4] = self;
  v12 = phonePadView;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__DialerController_handleKeyCommand___block_invoke_2;
  v9[3] = &unk_278D74B38;
  v9[4] = self;
  v10 = v12;
  v8 = v12;
  [keyCommandHandler handleKeyCommand:commandCopy receivedCharacterBlock:v11 receivedSpecialCharacterBlock:v9];
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

- (void)phonePadDidEndSounds:(id)sounds
{
  soundsCopy = sounds;
  if (self->_dialerType == 2 && self->_dtmfPlaying)
  {
    v5 = soundsCopy;
    CTDTMFPlayStop();
    soundsCopy = v5;
    self->_dtmfPlaying = 0;
  }
}

- (void)_dialVoicemail
{
  phonePadView = [(PHAbstractDialerView *)self->_dialerView phonePadView];
  [phonePadView cancelTouchTracking];

  callProviderManager = [(DialerController *)self callProviderManager];
  voicemailProvider = [callProviderManager voicemailProvider];

  if (voicemailProvider)
  {
    v6 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:voicemailProvider];
    [v6 setDialType:2];
    selectedSenderIdentity = [(DialerController *)self selectedSenderIdentity];
    accountUUID = [selectedSenderIdentity accountUUID];
    [v6 setLocalSenderIdentityAccountUUID:accountUUID];

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

- (void)_dialWithRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = requestCopy;
    _os_log_impl(&dword_2429BC000, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  *(self + 1016) |= 1u;
  [(DialerController *)self dismissModalViewControllerAnimated:1];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v7 = [requestCopy URL];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__DialerController__dialWithRequest___block_invoke;
  v10[3] = &unk_278D74A08;
  v11 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  [mEMORY[0x277D75128] openURL:v7 withCompletionHandler:v10];

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
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView text];
  v5 = [text length];

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

- (void)_deleteButtonClicked:(id)clicked
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
  lcdView = [(PHAbstractDialerView *)self->_dialerView lcdView];
  text = [lcdView text];
  v4 = [text length] != 0;

  return v4;
}

- (void)restoreLastDialedNumber
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  if ([mEMORY[0x277D6EDF8] currentCallCount])
  {

LABEL_3:
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
      v6 = [mEMORY[0x277D6EDF8]2 currentCallCount] != 0;
      lastDialedNumber = [(DialerController *)self lastDialedNumber];
      v13 = 67109376;
      v14[0] = v6;
      LOWORD(v14[1]) = 1024;
      *(&v14[1] + 2) = lastDialedNumber == 0;
      _os_log_impl(&dword_2429BC000, v4, OS_LOG_TYPE_DEFAULT, "Not updating visible number to saved redialed number because we are in call (%d) or we don't have a redialed number saved (%d)", &v13, 0xEu);
    }

    goto LABEL_10;
  }

  lastDialedNumber2 = [(DialerController *)self lastDialedNumber];

  if (!lastDialedNumber2)
  {
    goto LABEL_3;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    lastDialedNumber3 = [(DialerController *)self lastDialedNumber];
    v13 = 138412290;
    *v14 = lastDialedNumber3;
    _os_log_impl(&dword_2429BC000, v9, OS_LOG_TYPE_DEFAULT, "Updating visible number to saved redialed number: %@", &v13, 0xCu);
  }

  lastDialedNumber4 = [(DialerController *)self lastDialedNumber];
  [(DialerController *)self _phonePad:0 appendString:lastDialedNumber4 suppressClearingDialedNumber:1];

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

- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    if (animated)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __48__DialerController_setBackgroundStyle_animated___block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = style;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.5];
    }

    else
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] _setBackgroundStyle:style];
    }
  }
}

void __48__DialerController_setBackgroundStyle_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 _setBackgroundStyle:*(a1 + 32)];
}

- (void)handleApplicationDidEnterBackgroundNotification:(id)notification
{
  [(DialerController *)self deactivateAudioServices];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2429BC000, v3, OS_LOG_TYPE_DEFAULT, "Application entered the background. Keypad button tones are disabled.", v4, 2u);
  }
}

- (void)handleApplicationWillEnterForegroundNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  requestAudioServicesActivate = [(DialerController *)self requestAudioServicesActivate];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (requestAudioServicesActivate)
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
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  if ([mEMORY[0x277D6EDF8] currentCallCount])
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

- (void)setAudioServicesActivated:(BOOL)activated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__DialerController_setAudioServicesActivated___block_invoke;
  v3[3] = &unk_278D74A98;
  v3[4] = self;
  activatedCopy = activated;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __46__DialerController_setAudioServicesActivated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 992) phonePadView];
  [v2 setPlaysSounds:*(a1 + 40)];
}

- (CNContactStore)contactStore
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:*MEMORY[0x277D6EF80]];

  if (v5)
  {
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [mEMORY[0x277D6EDF8] displayedCallFromCalls:0];

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
      suggestedContactStore = [MEMORY[0x277CBDAB8] suggestedContactStore];
      v12 = self->_contactStore;
      self->_contactStore = suggestedContactStore;

      contactStore = self->_contactStore;
    }

    v9 = contactStore;
  }

  return v9;
}

- (TUContactsDataProvider)contactsDataProvider
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:*MEMORY[0x277D6EF80]];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D6EE50]);
    contactStore = [(DialerController *)self contactStore];
    v8 = [v6 initWithContactsDataSource:contactStore];
  }

  else
  {
    contactsDataProvider = self->_contactsDataProvider;
    if (!contactsDataProvider)
    {
      v10 = objc_alloc(MEMORY[0x277D6EE50]);
      contactStore2 = [(DialerController *)self contactStore];
      v12 = [v10 initWithContactsDataSource:contactStore2];
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
  interfaceOrientationProvider = [(DialerController *)self interfaceOrientationProvider];

  if (interfaceOrientationProvider)
  {
    interfaceOrientationProvider2 = [(DialerController *)self interfaceOrientationProvider];
    dialerSupportedInterfaceOrientations = [interfaceOrientationProvider2 dialerSupportedInterfaceOrientations];

    return dialerSupportedInterfaceOrientations;
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
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  providerManager = [mEMORY[0x277D6EDF8] providerManager];

  telephonyProvider = [providerManager telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  v6 = [prioritizedSenderIdentities count] > 1;

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
  dialerView = [(DialerController *)self dialerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dialerView2 = [(DialerController *)self dialerView];
    [dialerView2 setEnableDualSimMenu:{-[DialerController enableDualSimMenu](self, "enableDualSimMenu")}];
  }
}

- (void)providersChangedForProviderManager:(id)manager
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