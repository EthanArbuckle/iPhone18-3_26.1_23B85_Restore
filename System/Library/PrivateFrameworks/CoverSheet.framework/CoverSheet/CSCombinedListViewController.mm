@interface CSCombinedListViewController
- (BOOL)_allowNotificationsRevealPolicy;
- (BOOL)_allowsDateViewOrProudLockScroll;
- (BOOL)_exclusivelyHasMediaSupplementaryItems;
- (BOOL)_hasExperiencedSignificantScrollingOnScrollView:(id)view;
- (BOOL)_isClockSnoozeAlarmNotificationRequest:(id)request;
- (BOOL)_shouldFilterNotificationRequest:(id)request;
- (BOOL)_shouldHideProudLockForScroll;
- (BOOL)_shouldPadBottomSpacing;
- (BOOL)_shouldPadBottomSpacingIsDragging:(BOOL)dragging;
- (BOOL)_shouldPreventNotificationHistoryRevealForActiveDNDState;
- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier;
- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)animated;
- (BOOL)handleEvent:(id)event;
- (BOOL)isNotificationContentExtensionVisible:(id)visible;
- (BOOL)isNotificationListSignificantlyScrolled;
- (BOOL)isPresentingNotificationInLongLook;
- (BOOL)isShowingMediaControls;
- (BOOL)isTouchLocationInRestrictedRect:(CGPoint)rect;
- (BOOL)notificationStructuredListViewController:(id)controller shouldAllowInteractionsForNotificationRequest:(id)request;
- (BOOL)notificationStructuredListViewControllerShouldAllowLongPressGesture:(id)gesture;
- (BOOL)notificationStructuredListViewControllerShouldHintForDefaultAction:(id)action;
- (BOOL)wouldHandleButtonEvent:(id)event;
- (CGPoint)_determineMaxContentOffsetForContentInset:(UIEdgeInsets)inset;
- (CGRect)_suggestedListViewFrame;
- (CGSize)_adjunctListViewSize;
- (CGSize)_adjunctListViewSizeIncludingSpacing;
- (CGSize)effectiveContentSizeForScrollView:(id)view;
- (CGSize)sizeToMimicForAdjunctListViewController:(id)controller;
- (CGSize)sizeToMimicForItemContentHost;
- (CSActivityItemObserving)activityItemObserver;
- (CSApplicationInforming)applicationInformer;
- (CSCombinedListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CSCombinedListViewController)initWithNibName:(id)name bundle:(id)bundle dndBedtimeController:(id)controller;
- (CSCombinedListViewControllerAudioCategoriesObserver)audioCategoriesObserver;
- (CSCombinedListViewControllerDelegate)delegate;
- (CSCombinedListViewControllerNotificationObserver)notificationObserver;
- (CSCoverSheetGestureHandling)coverSheetGestureHandling;
- (CSCoverSheetViewPresenting)coverSheetViewPresenting;
- (CSDeviceOrientationProviding)deviceOrientationProvider;
- (CSHomeAffordanceControlling)homeAffordanceController;
- (CSNotificationDispatcher)dispatcher;
- (CSNotificationPresenting)notificationPresenter;
- (CSPageViewControllerProtocol)page;
- (CSPlatterHomeGestureManaging)platterHomeGestureManager;
- (CSProximitySensorProviding)proximitySensorProvider;
- (CSRemoteContentInlineProviding)remoteContentInlineProvider;
- (CSScrollablePageViewControllerProtocol)scrollablePage;
- (CSUnlockRequesting)unlockRequester;
- (SBFAuthenticationStatusProvider)authenticationStatusProvider;
- (UIEdgeInsets)_edgeInsetsForUnsupportedQuickActionsForOrientation:(int64_t)orientation;
- (UIEdgeInsets)_listViewAdjustedContentInsets;
- (UIEdgeInsets)_listViewDefaultContentInsets;
- (UIEdgeInsets)insetMarginsToMimicForAdjunctListViewController:(id)controller;
- (UIEdgeInsets)notificationStructuredListViewControllerRequestsEdgeInsetsForFooterView:(id)view forOrientation:(int64_t)orientation;
- (UIEdgeInsets)notificationStructuredListViewControllerRequestsEdgeInsetsForNotificationListView:(id)view forOrientation:(int64_t)orientation;
- (double)_minInsetsToPushDateOffScreen;
- (double)_minListHeightForPadding;
- (double)_sanitizedContentOffset:(double)offset forContentInset:(UIEdgeInsets)inset;
- (double)_statusBarHeight;
- (double)distanceFromBarToContent;
- (double)effectiveListMaxY;
- (id)_identifierForNotificationRequest:(id)request;
- (id)_modeIdentifierForDNDState:(id)state;
- (id)_threadIdentifierForNotificationRequest:(id)request;
- (id)_updateProximitySensorAssertion:(id)assertion wantsAssertion:(BOOL)wantsAssertion forReason:(id)reason;
- (id)acquireOverrideNotificationListDisplayStyleAssertionWithStyle:(int64_t)style hideNotificationCount:(BOOL)count reason:(id)reason;
- (id)hideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:(id)controller;
- (id)legibilitySettingsForNotificationStructuredListViewController:(id)controller;
- (id)metadataForTriggeredInteraction:(id)interaction;
- (id)notificationStructuredListViewController:(id)controller containerViewProviderForExpandedContentForViewController:(id)viewController;
- (id)notificationStructuredListViewController:(id)controller keyboardAssertionForGestureWindow:(id)window;
- (id)notificationStructuredListViewController:(id)controller notificationRequestForUUID:(id)d;
- (id)notificationStructuredListViewController:(id)controller requestsSectionSettingsForSectionIdentifier:(id)identifier;
- (id)notificationStructuredListViewControllerRequestsDiagnosticsDictionary:(id)dictionary;
- (id)notificationStructuredListViewControllerRequestsSystemSettings:(id)settings;
- (id)notificationUsageTrackingStateForNotificationStructuredListViewController:(id)controller;
- (id)presentationRegions;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationStructuredListViewController:(id)controller;
- (id)unhideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:(id)controller;
- (int64_t)_uiBacklightLuminanceForBLSBacklightState:(int64_t)state;
- (void)_addStateCaptureHandlers;
- (void)_didUpdateSetHasUserInteraction;
- (void)_dismissDNDBedtimeGreetingViewAnimated:(BOOL)animated;
- (void)_evaluateShouldShowGreeting:(id)greeting animated:(BOOL)animated;
- (void)_hideNotificationsDefaultDidChange;
- (void)_homeButtonPressDetected;
- (void)_layoutListView;
- (void)_liftToWakeGestureDetected;
- (void)_lockButtonPressDetected;
- (void)_noteListContentsPotentiallyChanged;
- (void)_noteListContentsPotentiallyChangedAfterTransitionFrom:(BOOL)from to:(BOOL)to;
- (void)_noteVisibleBreakthroughContentPotentiallyChanged;
- (void)_performSelfCorrectingListViewAction:(id)action;
- (void)_publishVisibleNotificationCountOnContentChange;
- (void)_removeAllUserInteractionReasons;
- (void)_requestAuthenticationWithCompletion:(id)completion;
- (void)_resetReducedIdleTimeFlagsIfNeeded;
- (void)_screenTimeExpirationApplicationsDidChange:(id)change;
- (void)_setDisableBackgroundAnimation:(BOOL)animation forReason:(id)reason;
- (void)_setDisableScrolling:(BOOL)scrolling;
- (void)_setDismissGestureDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setFooterCallToActionLabelHidden:(BOOL)hidden forReason:(id)reason;
- (void)_setHasUserInteraction:(BOOL)interaction forReason:(id)reason;
- (void)_setInlineContentHidden:(BOOL)hidden;
- (void)_setListHasContent:(BOOL)content;
- (void)_setNotificationListHidden:(BOOL)hidden forReason:(id)reason;
- (void)_setQuickActionsHidden:(BOOL)hidden forReason:(id)reason;
- (void)_setScreenOn:(BOOL)on;
- (void)_startScreenOnTimer;
- (void)_tearDownContainerViewForExpandedNotificationContent;
- (void)_testingClearAllNotificationRequests;
- (void)_toggleGestureStudyInteractionIfNecessary;
- (void)_triggerSignificantUserInteractionIfNeeded;
- (void)_updateActiveDNDState:(id)state;
- (void)_updateAudioCategoriesDisablingVolumeHUD;
- (void)_updateCaptureOnlyMaterialView;
- (void)_updateDeviceWakeProximitySensorAssertion;
- (void)_updateFaceDetectMonitoring;
- (void)_updateListItemAppearanceState;
- (void)_updateListViewContentInset;
- (void)_updateMediaOnlyFlagInSupplementaryContainers;
- (void)_updateNotificationDimmingLayerLocalizedDimMode;
- (void)_updateNotificationListOffsetForExternalUpdate;
- (void)_updateNotificationLongPressProximitySensorAssertion;
- (void)_updatePresentationForReason:(id)reason;
- (void)_updateProudLockForHidden:(BOOL)hidden scrollOffset:(double)offset;
- (void)_updateQuickActionsVisibilityForScrollView:(id)view;
- (void)_updateRaiseGestureDetectionForNotificationRequest:(id)request;
- (void)_updateStructuredListOverrideUserInterfaceStyle;
- (void)_updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance:(int64_t)luminance;
- (void)activeActivityDidChangeForManager:(id)manager;
- (void)addVisibleBreakthroughContentObserver:(id)observer;
- (void)adjunctListViewController:(id)controller didAddSectionWithIdentifier:(id)identifier;
- (void)adjunctListViewController:(id)controller didAddViewController:(id)viewController withIdentifier:(id)identifier;
- (void)adjunctListViewController:(id)controller didUpdateWithSize:(CGSize)size;
- (void)adjunctListViewController:(id)controller updatedNowPlayingVisbility:(BOOL)visbility;
- (void)adjunctListViewController:(id)controller willRemoveViewWithIdentifier:(id)identifier;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator;
- (void)coverSheetViewController:(id)controller didChangeHasContentAbove:(BOOL)above;
- (void)coverSheetViewController:(id)controller didObscureWallpaper:(BOOL)wallpaper;
- (void)coverSheetViewController:(id)controller didWakeForSource:(int)source;
- (void)coverSheetViewControllerWillPresentPosterSwitcher:(id)switcher;
- (void)dealloc;
- (void)didReceiveRaiseGesture;
- (void)focusActivityViewChangedToVisible:(BOOL)visible;
- (void)homeGestureParticipantOwningHomeGestureDidChange:(id)change ownsHomeGesture:(BOOL)gesture;
- (void)itemManager:(id)manager cancelTouchesForInteractionWithItem:(id)item;
- (void)itemManager:(id)manager insertItem:(id)item;
- (void)itemManager:(id)manager insertSection:(id)section;
- (void)itemManager:(id)manager removeItem:(id)item;
- (void)itemManager:(id)manager requestsAuthenticationAndPerformBlock:(id)block;
- (void)itemManager:(id)manager requestsModalPresentationOfViewController:(id)controller forItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)itemManager:(id)manager setNowPlayingItem:(id)item;
- (void)itemManager:(id)manager significantUserInteractionBeganWithItem:(id)item;
- (void)itemManager:(id)manager significantUserInteractionEndedWithItem:(id)item;
- (void)itemManager:(id)manager updateItem:(id)item;
- (void)itemManagerDidAddNewSceneHostEnvironment;
- (void)notificationStructuredListViewController:(id)controller didBeginUserInteractionWithViewController:(id)viewController;
- (void)notificationStructuredListViewController:(id)controller didEndUserInteractionWithViewController:(id)viewController;
- (void)notificationStructuredListViewController:(id)controller didUpdateNotificationsVisibilityInViewport:(BOOL)viewport;
- (void)notificationStructuredListViewController:(id)controller isNotificationsHistoryRevealed:(BOOL)revealed;
- (void)notificationStructuredListViewController:(id)controller isPresentingLongLookForViewController:(id)viewController;
- (void)notificationStructuredListViewController:(id)controller requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion;
- (void)notificationStructuredListViewController:(id)controller requestsAuthenticationAndPerformBlock:(id)block;
- (void)notificationStructuredListViewController:(id)controller requestsClearingFromIncomingSectionNotificationRequests:(id)requests;
- (void)notificationStructuredListViewController:(id)controller requestsClearingNotificationRequests:(id)requests;
- (void)notificationStructuredListViewController:(id)controller requestsClearingNotificationRequestsInSections:(id)sections;
- (void)notificationStructuredListViewController:(id)controller requestsExecuteAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion;
- (void)notificationStructuredListViewController:(id)controller requestsPresentingDigestOnboardingSuggestionViewController:(id)viewController;
- (void)notificationStructuredListViewController:(id)controller requestsPresentingFocusActivityPickerFromView:(id)view;
- (void)notificationStructuredListViewController:(id)controller setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier;
- (void)notificationStructuredListViewController:(id)controller setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)notificationStructuredListViewController:(id)controller setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier;
- (void)notificationStructuredListViewController:(id)controller setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)notificationStructuredListViewController:(id)controller setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier;
- (void)notificationStructuredListViewController:(id)controller setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationStructuredListViewController:(id)controller setNotificationSystemSettings:(id)settings;
- (void)notificationStructuredListViewController:(id)controller setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)notificationStructuredListViewController:(id)controller setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times;
- (void)notificationStructuredListViewController:(id)controller shouldFinishLongLookTransitionForNotificationRequest:(id)request trigger:(int64_t)trigger withCompletionBlock:(id)block;
- (void)notificationStructuredListViewControllerDidBeginUserInteraction:(id)interaction;
- (void)notificationStructuredListViewControllerDidEndUserInteraction:(id)interaction;
- (void)notificationStructuredListViewControllerDidSignificantUserInteraction:(id)interaction;
- (void)notificationStructuredListViewControllerDidUpdateVisibleContentExtent:(id)extent;
- (void)notificationStructuredListViewControllerWillExpandNotificationListCount:(id)count;
- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion;
- (void)postNotificationRequest:(id)request;
- (void)proximitySensorProvider:(id)provider objectWithinProximityDidChange:(BOOL)change;
- (void)rebuildEverythingForReason:(id)reason;
- (void)resetContentOffset;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setApplicationInformer:(id)informer;
- (void)setProximitySensorProvider:(id)provider;
- (void)setRemoteContentInlineProvider:(id)provider;
- (void)setUserPresenceMonitor:(id)monitor;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
- (void)structuredListContentChanged:(BOOL)changed;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAppearanceForHidden:(BOOL)hidden offset:(double)offset;
- (void)updateAppearanceForStatusBarBackgroundHidden:(BOOL)hidden;
- (void)updateForLegibilitySettings:(id)settings;
- (void)updateNotificationRequest:(id)request;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)withdrawNotificationRequest:(id)request;
@end

@implementation CSCombinedListViewController

- (void)_homeButtonPressDetected
{
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Home button pressed", v4, 2u);
  }

  self->_homeButtonPressDetected = 1;
}

- (BOOL)isPresentingNotificationInLongLook
{
  hasVisibleContent = [(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent];
  if (hasVisibleContent)
  {
    structuredListViewController = self->_structuredListViewController;

    LOBYTE(hasVisibleContent) = [(NCNotificationStructuredListViewController *)structuredListViewController isPresentingNotificationInLongLook];
  }

  return hasVisibleContent;
}

- (void)_updateFaceDetectMonitoring
{
  v29 = *MEMORY[0x277D85DE8];
  userPresenceDetectedSinceWake = [(CSUserPresenceMonitor *)self->_userPresenceMonitor userPresenceDetectedSinceWake];
  bs_isAppearingOrAppeared = [(CSCombinedListViewController *)self bs_isAppearingOrAppeared];
  v5 = bs_isAppearingOrAppeared;
  v6 = !self->_screenOn || bs_isAppearingOrAppeared == 0;
  v7 = !v6 && self->_listPresentingContent && !self->_coverSheetWasDismissed && !self->_coverSheetResignedActive && !userPresenceDetectedSinceWake;
  v8 = MEMORY[0x277D77DB0];
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    screenOn = self->_screenOn;
    listPresentingContent = self->_listPresentingContent;
    coverSheetWasDismissed = self->_coverSheetWasDismissed;
    coverSheetResignedActive = self->_coverSheetResignedActive;
    v16[0] = 67110656;
    v16[1] = screenOn;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = listPresentingContent;
    v21 = 1024;
    v22 = coverSheetWasDismissed;
    v23 = 1024;
    v24 = coverSheetResignedActive;
    v25 = 1024;
    v26 = userPresenceDetectedSinceWake;
    v27 = 1024;
    v28 = v7;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Wants face detect monitoring [ screen: %{BOOL}d view: %{BOOL}d notifications: %{BOOL}d pull-down: %{BOOL}d resigned-active: %{BOOL}d user-presence-detetected-since-wake: %{BOOL}d ]: %{BOOL}d", v16, 0x2Cu);
  }

  if (v7)
  {
    v14 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Monitoring face detection", v16, 2u);
    }

    [(CSUserPresenceMonitor *)self->_userPresenceMonitor enableDetectionForReason:@"CSCombinedListViewController" monitorType:0];
  }

  else if (self->_userPresenceMonitor)
  {
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Stopped monitoring face detection", v16, 2u);
    }

    [(CSUserPresenceMonitor *)self->_userPresenceMonitor disableDetectionForReason:@"CSCombinedListViewController" monitorType:0];
  }
}

- (void)_updateNotificationLongPressProximitySensorAssertion
{
  v27 = *MEMORY[0x277D85DE8];
  bs_isAppearingOrAppeared = [(CSCombinedListViewController *)self bs_isAppearingOrAppeared];
  v4 = bs_isAppearingOrAppeared;
  v5 = self->_hasProximitySensor && (self->_screenOn & bs_isAppearingOrAppeared & 1) != 0 && self->_listPresentingContent && !self->_coverSheetWasDismissed;
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    hasProximitySensor = self->_hasProximitySensor;
    screenOn = self->_screenOn;
    listPresentingContent = self->_listPresentingContent;
    coverSheetWasDismissed = self->_coverSheetWasDismissed;
    v13 = 138413826;
    v14 = @"NotificationLongPress";
    v15 = 1024;
    v16 = hasProximitySensor;
    v17 = 1024;
    v18 = screenOn;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = listPresentingContent;
    v23 = 1024;
    v24 = coverSheetWasDismissed;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Wants proximity sensor assertion for %@ [ proximity-sensor: %{BOOL}d screen: %{BOOL}d view: %{BOOL}d notifications: %{BOOL}d pull-down: %{BOOL}d ]: %{BOOL}d", &v13, 0x30u);
  }

  v11 = [(CSCombinedListViewController *)self _updateProximitySensorAssertion:self->_notificationLongPressProximitySensorAssertion wantsAssertion:v5 forReason:@"NotificationLongPress"];
  notificationLongPressProximitySensorAssertion = self->_notificationLongPressProximitySensorAssertion;
  self->_notificationLongPressProximitySensorAssertion = v11;
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier allValues];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        supplementaryViewControllers = [v7 supplementaryViewControllers];
        v9 = [supplementaryViewControllers countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(supplementaryViewControllers);
              }

              v13 = *(*(&v18 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                sceneHostEnvironmentEntriesForBacklightSession = [v13 sceneHostEnvironmentEntriesForBacklightSession];
                if (sceneHostEnvironmentEntriesForBacklightSession)
                {
                  [v3 unionSet:sceneHostEnvironmentEntriesForBacklightSession];
                }
              }
            }

            v10 = [supplementaryViewControllers countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_updateListItemAppearanceState
{
  v15 = *MEMORY[0x277D85DE8];
  bs_isAppearingOrAppeared = [(CSCombinedListViewController *)self bs_isAppearingOrAppeared];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allItems = [(CSListItemManager *)self->_supplementaryItemManager allItems];
  v5 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allItems);
        }

        contentHost = [*(*(&v10 + 1) + 8 * v8) contentHost];
        if (objc_opt_respondsToSelector())
        {
          [contentHost setListAppeared:bs_isAppearingOrAppeared];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_publishVisibleNotificationCountOnContentChange
{
  notificationObserver = [(CSCombinedListViewController *)self notificationObserver];
  if (notificationObserver)
  {
    v4 = notificationObserver;
    [notificationObserver combinedListViewController:self didUpdateVisibleNotificationCount:{-[CSCombinedListViewController visibleNotificationCount](self, "visibleNotificationCount")}];
    notificationObserver = v4;
  }
}

- (CSCombinedListViewControllerNotificationObserver)notificationObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationObserver);

  return WeakRetained;
}

- (UIEdgeInsets)_listViewDefaultContentInsets
{
  layoutStrategy = self->_layoutStrategy;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  [(CSLayoutStrategy *)layoutStrategy suggestedContentInsetsForListForPage:WeakRetained];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (double)_minInsetsToPushDateOffScreen
{
  view = [(CSCombinedListViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v11);

  [(CSCombinedListViewController *)self clippingOffset];
  v6 = v5;
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [notificationListScrollView contentSize];
  v9 = v8;

  return Height + v6 - v9 - self->_cachedAdjunctHeight;
}

- (double)_statusBarHeight
{
  v2 = MEMORY[0x277D75A78];
  interfaceOrientation = [(CSCombinedListViewController *)self interfaceOrientation];

  [v2 heightForStyle:1 orientation:interfaceOrientation];
  return result;
}

- (BOOL)_shouldPadBottomSpacing
{
  selfCopy = self;
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  LOBYTE(selfCopy) = -[CSCombinedListViewController _shouldPadBottomSpacingIsDragging:](selfCopy, "_shouldPadBottomSpacingIsDragging:", [notificationListScrollView isDragging]);

  return selfCopy;
}

- (double)_minListHeightForPadding
{
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [notificationListScrollView bounds];
  Height = CGRectGetHeight(v9);
  [(CSCombinedListViewController *)self _listViewDefaultContentInsets];
  v7 = Height - (v5 + v6);

  return v7;
}

- (BOOL)_allowsDateViewOrProudLockScroll
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) < 2;
}

- (UIEdgeInsets)_listViewAdjustedContentInsets
{
  [(CSCombinedListViewController *)self _listViewDefaultContentInsets];
  v5 = 0.0;
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v5;
  return result;
}

- (BOOL)_shouldHideProudLockForScroll
{
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [notificationListScrollView contentOffset];
  view = [(CSCombinedListViewController *)self view];
  [view bounds];
  CGRectGetHeight(v7);

  [(CSCombinedListViewController *)self clippingOffset];

  return BSFloatGreaterThanOrEqualToFloat();
}

- (double)distanceFromBarToContent
{
  v3 = SBFEffectiveHomeButtonType();
  if (__sb__runningInSpringBoard())
  {
    if ((!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1) && v3 == 2)
    {
LABEL_5:
      [(CSCombinedListViewController *)self topContentInset];
      goto LABEL_11;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3 == 2;
    }

    if (v6)
    {
      goto LABEL_5;
    }
  }

  persistentLayout = [(CSLayoutStrategy *)self->_layoutStrategy persistentLayout];
  [persistentLayout timeLabelBaselineY];
  [MEMORY[0x277D65EB0] timeFontMetrics];

LABEL_11:
  [(CSCombinedListViewController *)self _statusBarHeight];
  SBFMainScreenScale();

  BSFloatRoundForScale();
  return result;
}

- (BOOL)_allowNotificationsRevealPolicy
{
  activeBehavior = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v3 = [activeBehavior areRestrictedCapabilities:0x10000];

  return v3 ^ 1;
}

- (BOOL)_shouldPreventNotificationHistoryRevealForActiveDNDState
{
  activeDNDState = self->_activeDNDState;
  if (activeDNDState)
  {
    LOBYTE(activeDNDState) = [activeDNDState sb_isDrivingModeActive];
  }

  return activeDNDState;
}

- (id)presentationRegions
{
  v32 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = CSCombinedListViewController;
  presentationRegions = [(CSCoverSheetViewControllerBase *)&v25 presentationRegions];
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController visibleContentExtent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  scrollView = [(NCNotificationStructuredListViewController *)self->_structuredListViewController scrollView];
  v13 = [CSRegion regionForCoordinateSpace:scrollView withExtent:v5, v7, v9, v11];
  v14 = [v13 role:2];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__CSCombinedListViewController_presentationRegions__block_invoke;
  v23[3] = &unk_27838D170;
  v15 = scrollView;
  v24 = v15;
  v16 = [presentationRegions bs_filter:v23];
  v17 = [v16 mutableCopy];

  v18 = SBLogDashBoard();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    v22 = NSStringFromCGRect(v34);
    *buf = 138412802;
    v27 = v21;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v22;
    _os_log_debug_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEBUG, "Confining extent of %@'s scrollView region with identity %@ to its visibleContentExtent: %@", buf, 0x20u);
  }

  [v17 addObject:v14];

  return v17;
}

uint64_t __51__CSCombinedListViewController_presentationRegions__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identity];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)_updateStructuredListOverrideUserInterfaceStyle
{
  traitCollection = [(CSCombinedListViewController *)self traitCollection];
  -[CSCombinedListViewController _updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance:](self, "_updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance:", [traitCollection _backlightLuminance]);
}

- (void)_startScreenOnTimer
{
  self->_screenOnTime = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (void)_updateDeviceWakeProximitySensorAssertion
{
  v26 = *MEMORY[0x277D85DE8];
  bs_isAppearingOrAppeared = [(CSCombinedListViewController *)self bs_isAppearingOrAppeared];
  v4 = bs_isAppearingOrAppeared;
  v5 = self->_hasProximitySensor && (self->_screenOn & bs_isAppearingOrAppeared & 1) != 0 && self->_proximitySensorCoveredSinceWake;
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    hasProximitySensor = self->_hasProximitySensor;
    screenOn = self->_screenOn;
    proximitySensorCoveredSinceWake = self->_proximitySensorCoveredSinceWake;
    v14 = 138413570;
    v15 = @"NotificationDeviceWake";
    v16 = 1024;
    v17 = hasProximitySensor;
    v18 = 1024;
    v19 = screenOn;
    v20 = 1024;
    v21 = v4;
    v22 = 1024;
    v23 = proximitySensorCoveredSinceWake;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Wants proximity sensor assertion for %@ [ proximity-sensor: %{BOOL}d screen: %{BOOL}d view: %{BOOL}d covered-since-wake: %{BOOL}d ]: %{BOOL}d", &v14, 0x2Au);
  }

  date = [MEMORY[0x277CBEAA8] date];
  deviceWakeProximitySensorAssertionCaptureTime = self->_deviceWakeProximitySensorAssertionCaptureTime;
  self->_deviceWakeProximitySensorAssertionCaptureTime = date;

  v12 = [(CSCombinedListViewController *)self _updateProximitySensorAssertion:self->_deviceWakeProximitySensorAssertion wantsAssertion:v5 forReason:@"NotificationDeviceWake"];
  deviceWakeProximitySensorAssertion = self->_deviceWakeProximitySensorAssertion;
  self->_deviceWakeProximitySensorAssertion = v12;
}

- (void)_liftToWakeGestureDetected
{
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Lift detected", v4, 2u);
  }

  self->_liftDetected = 1;
}

- (CSNotificationDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

- (CSCombinedListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  v8 = [CSDNDBedtimeController alloc];
  v9 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.springboard.dashboard.bedtime"];
  v10 = [(CSDNDBedtimeController *)v8 initWithStateService:v9 initialObserver:self];

  v11 = [(CSCombinedListViewController *)self initWithNibName:nameCopy bundle:bundleCopy dndBedtimeController:v10];
  return v11;
}

- (CSCombinedListViewController)initWithNibName:(id)name bundle:(id)bundle dndBedtimeController:(id)controller
{
  nameCopy = name;
  bundleCopy = bundle;
  controllerCopy = controller;
  v80.receiver = self;
  v80.super_class = CSCombinedListViewController;
  v11 = [(CSCoverSheetViewControllerBase *)&v80 initWithNibName:nameCopy bundle:bundleCopy];
  if (v11)
  {
    v12 = +[CSLockScreenDomain rootSettings];
    lockScreenSettings = v11->_lockScreenSettings;
    v11->_lockScreenSettings = v12;

    [(PTSettings *)v11->_lockScreenSettings addKeyObserver:v11];
    dashBoardNotificationScrollSettings = [(CSLockScreenSettings *)v11->_lockScreenSettings dashBoardNotificationScrollSettings];
    [dashBoardNotificationScrollSettings addKeyObserver:v11];

    v15 = +[CSComponent dateView];
    appearanceIdentifier = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v17 = [v15 identifier:appearanceIdentifier];
    dateViewComponent = v11->_dateViewComponent;
    v11->_dateViewComponent = v17;

    v19 = objc_opt_new();
    appearanceIdentifier2 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v21 = [v19 identifier:appearanceIdentifier2];
    complicationContainerComponent = v11->_complicationContainerComponent;
    v11->_complicationContainerComponent = v21;

    v23 = objc_opt_new();
    appearanceIdentifier3 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v25 = [v23 identifier:appearanceIdentifier3];
    remoteInlineContentComponent = v11->_remoteInlineContentComponent;
    v11->_remoteInlineContentComponent = v25;

    v27 = objc_opt_new();
    appearanceIdentifier4 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v29 = [v27 identifier:appearanceIdentifier4];
    statusBarBackgroundComponent = v11->_statusBarBackgroundComponent;
    v11->_statusBarBackgroundComponent = v29;

    [(CSStatusBarBackgroundComponent *)v11->_statusBarBackgroundComponent setShowBackgroundWhileTransitioning:1];
    [(CSComponent *)v11->_statusBarBackgroundComponent setHidden:1];
    v31 = objc_opt_new();
    appearanceIdentifier5 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v33 = [v31 identifier:appearanceIdentifier5];
    statusBarComponent = v11->_statusBarComponent;
    v11->_statusBarComponent = v33;

    v35 = +[CSComponent proudLock];
    appearanceIdentifier6 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v37 = [v35 identifier:appearanceIdentifier6];
    proudLockComponent = v11->_proudLockComponent;
    v11->_proudLockComponent = v37;

    v39 = objc_opt_new();
    appearanceIdentifier7 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v41 = [v39 identifier:appearanceIdentifier7];
    wallpaperFloatingLayerComponent = v11->_wallpaperFloatingLayerComponent;
    v11->_wallpaperFloatingLayerComponent = v41;

    v43 = objc_opt_new();
    appearanceIdentifier8 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v45 = [v43 identifier:appearanceIdentifier8];
    v46 = [v45 suppressVisibleChanges:1];
    quickActionsComponent = v11->_quickActionsComponent;
    v11->_quickActionsComponent = v46;

    v48 = objc_alloc_init(MEMORY[0x277D78090]);
    structuredListViewController = v11->_structuredListViewController;
    v11->_structuredListViewController = v48;

    [(NCNotificationStructuredListViewController *)v11->_structuredListViewController setDelegate:v11];
    [(NCNotificationStructuredListViewController *)v11->_structuredListViewController setDeviceAuthenticated:0];
    [(NCNotificationStructuredListViewController *)v11->_structuredListViewController addContentObserver:v11];
    v50 = objc_alloc_init(CSNotificationAdjunctListViewController);
    adjunctListViewController = v11->_adjunctListViewController;
    v11->_adjunctListViewController = v50;

    [(CSNotificationAdjunctListViewController *)v11->_adjunctListViewController setDelegate:v11];
    v52 = [CSListItemManager itemManagerWithItemContainer:v11];
    supplementaryItemManager = v11->_supplementaryItemManager;
    v11->_supplementaryItemManager = v52;

    [(CSCoverSheetViewControllerBase *)v11->_adjunctListViewController setPresenter:v11];
    objc_storeStrong(&v11->_dndBedtimeController, controller);
    if (controllerCopy)
    {
      v11->_allowsDNDStateService = 1;
    }

    v54 = +[CSComponent notificationDimmingLayer];
    appearanceIdentifier9 = [(CSCoverSheetViewControllerBase *)v11 appearanceIdentifier];
    v56 = [v54 identifier:appearanceIdentifier9];
    notificationDimmingLayerComponent = v11->_notificationDimmingLayerComponent;
    v11->_notificationDimmingLayerComponent = v56;

    [(CSCombinedListViewController *)v11 setDefinesPresentationContext:1];
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v11->_biometricResource;
    v11->_biometricResource = mEMORY[0x277D67C98];

    mEMORY[0x277CF06F8] = [MEMORY[0x277CF06F8] sharedInstance];
    sensorCharacteristics = [mEMORY[0x277CF06F8] sensorCharacteristics];
    v11->_hasProximitySensor = [sensorCharacteristics hasDiscreteProximitySensor];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    breakthroughContentObservers = v11->_breakthroughContentObservers;
    v11->_breakthroughContentObservers = weakObjectsHashTable;

    mEMORY[0x277D0A9E8] = [MEMORY[0x277D0A9E8] sharedActivityManager];
    focusActivityManager = v11->_focusActivityManager;
    v11->_focusActivityManager = mEMORY[0x277D0A9E8];

    [(FCActivityManager *)v11->_focusActivityManager addObserver:v11];
    [(CSCombinedListViewController *)v11 _addStateCaptureHandlers];
    v66 = objc_alloc_init(MEMORY[0x277D65FF0]);
    lockScreenDefaults = v11->_lockScreenDefaults;
    v11->_lockScreenDefaults = v66;

    objc_initWeak(&location, v11);
    v68 = v11->_lockScreenDefaults;
    v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hideNotifications"];
    v70 = MEMORY[0x277D85CD0];
    v71 = MEMORY[0x277D85CD0];
    v74 = MEMORY[0x277D85DD0];
    v75 = 3221225472;
    v76 = __76__CSCombinedListViewController_initWithNibName_bundle_dndBedtimeController___block_invoke;
    v77 = &unk_27838B748;
    objc_copyWeak(&v78, &location);
    v72 = [(SBLockScreenDefaults *)v68 observeDefault:v69 onQueue:v70 withBlock:&v74];

    [(CSCombinedListViewController *)v11 _hideNotificationsDefaultDidChange:v74];
    objc_destroyWeak(&v78);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __76__CSCombinedListViewController_initWithNibName_bundle_dndBedtimeController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideNotificationsDefaultDidChange];
}

- (void)dealloc
{
  [(PTSettings *)self->_lockScreenSettings removeKeyObserver:self];
  dashBoardNotificationScrollSettings = [(CSLockScreenSettings *)self->_lockScreenSettings dashBoardNotificationScrollSettings];
  [dashBoardNotificationScrollSettings removeKeyObserver:self];

  [(BSAbsoluteMachTimer *)self->_significantUserInteractionTimer invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D67A78] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D67A80] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D67A88] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D764C8] object:0];
  dndStateService = [(CSCombinedListViewController *)self dndStateService];
  [dndStateService removeStateUpdateListener:self];

  [(FCActivityManager *)self->_focusActivityManager removeObserver:self];
  v6.receiver = self;
  v6.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v6 dealloc];
}

- (void)_hideNotificationsDefaultDidChange
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_21EB05000, a2, OS_LOG_TYPE_DEBUG, "CSCombinedListViewController hideNotifications: %{BOOL}u", v2, 8u);
}

- (void)_addStateCaptureHandlers
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v4, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

__CFString *__56__CSCombinedListViewController__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _disableScrolling])
  {
    v2 = @"Scrolling Disabled";
  }

  else
  {
    v2 = &stru_28302FDA0;
  }

  v3 = v2;

  return v2;
}

- (BOOL)isShowingMediaControls
{
  if ([(CSNotificationAdjunctListViewController *)self->_adjunctListViewController isShowingMediaControls])
  {
    return 1;
  }

  nowPlayingItem = [(CSListItemManager *)self->_supplementaryItemManager nowPlayingItem];
  v3 = nowPlayingItem != 0;

  return v3;
}

- (void)resetContentOffset
{
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [notificationListScrollView _scrollToTopIfPossible:0];
}

- (void)setApplicationInformer:(id)informer
{
  obj = informer;
  WeakRetained = objc_loadWeakRetained(&self->_applicationInformer);
  if (WeakRetained != obj)
  {
    [WeakRetained removeApplicationInformationObserver:self];
    objc_storeWeak(&self->_applicationInformer, obj);
    [obj addApplicationInformationObserver:self];
  }
}

- (BOOL)isTouchLocationInRestrictedRect:(CGPoint)rect
{
  y = rect.y;
  x = rect.x;
  v42 = *MEMORY[0x277D85DE8];
  nowPlayingItem = [(CSListItemManager *)self->_supplementaryItemManager nowPlayingItem];
  contentHost = [nowPlayingItem contentHost];

  v8 = objc_opt_self();
  v9 = contentHost;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 activityHostTouchRestrictedRects];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v40 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v37 + 1) + 8 * i) CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        view = [(CSCombinedListViewController *)self view];
        view2 = [v9 view];
        [view convertRect:view2 fromView:{v18, v20, v22, v24}];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v44.origin.x = v28;
        v44.origin.y = v30;
        v44.size.width = v32;
        v44.size.height = v34;
        v43.x = x;
        v43.y = y;
        if (CGRectContainsPoint(v44, v43))
        {
          v35 = 1;
          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v35 = 0;
LABEL_16:

  return v35;
}

- (void)setProximitySensorProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_proximitySensorProvider, providerCopy);
  [providerCopy addProximitySensorProviderObserver:self];
}

- (void)setRemoteContentInlineProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_remoteContentInlineProvider, providerCopy);
  [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController setRemoteContentInlineProvider:providerCopy];
}

- (id)acquireOverrideNotificationListDisplayStyleAssertionWithStyle:(int64_t)style hideNotificationCount:(BOOL)count reason:(id)reason
{
  countCopy = count;
  reasonCopy = reason;
  overrideNotificationListDisplayStyleAssertions = self->_overrideNotificationListDisplayStyleAssertions;
  if (!overrideNotificationListDisplayStyleAssertions)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    v11 = self->_overrideNotificationListDisplayStyleAssertions;
    self->_overrideNotificationListDisplayStyleAssertions = strongToWeakObjectsMapTable;

    overrideNotificationListDisplayStyleAssertions = self->_overrideNotificationListDisplayStyleAssertions;
  }

  v12 = [(NSMapTable *)overrideNotificationListDisplayStyleAssertions objectForKey:reasonCopy];
  v13 = v12;
  if (v12)
  {
    [v12 cancel];
  }

  v14 = [CSOverrideNotificationListDisplayStyleAssertion alloc];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __123__CSCombinedListViewController_acquireOverrideNotificationListDisplayStyleAssertionWithStyle_hideNotificationCount_reason___block_invoke;
  v21 = &unk_27838B838;
  selfCopy = self;
  v23 = reasonCopy;
  v15 = reasonCopy;
  v16 = [(CSOverrideNotificationListDisplayStyleAssertion *)v14 initWithNotificationListDisplayStyle:style hideNotificationCount:countCopy reason:v15 invalidationHandler:&v18];

  [(NSMapTable *)self->_overrideNotificationListDisplayStyleAssertions setObject:v16 forKey:v15, v18, v19, v20, v21, selfCopy];
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController setOverrideNotificationListDisplayStyleSetting:style forReason:v15 hideNotificationCount:countCopy];

  return v16;
}

- (void)addVisibleBreakthroughContentObserver:(id)observer
{
  observerCopy = observer;
  if (![(NSHashTable *)self->_breakthroughContentObservers count])
  {
    self->_hadBreakthroughContent = [(CSCombinedListViewController *)self hasVisibleBreakthroughContent];
  }

  [(NSHashTable *)self->_breakthroughContentObservers addObject:observerCopy];
}

- (void)setUserPresenceMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (self->_userPresenceMonitor != monitorCopy)
  {
    v6 = monitorCopy;
    objc_storeStrong(&self->_userPresenceMonitor, monitor);
    [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
    monitorCopy = v6;
  }
}

- (double)effectiveListMaxY
{
  interfaceOrientation = [(CSCombinedListViewController *)self interfaceOrientation];
  if ((interfaceOrientation - 1) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = interfaceOrientation;
  }

  [(CSCombinedListViewController *)self notificationStructuredListViewControllerRequestsEdgeInsetsForFooterView:self->_structuredListViewController forOrientation:v4];
  v6 = v5;
  view = [(CSCombinedListViewController *)self view];
  [view frame];
  v8 = CGRectGetMaxY(v10) - v6;

  return v8;
}

- (void)viewDidLoad
{
  view = [(CSCombinedListViewController *)self view];
  notificationListViewController = [(CSCombinedListViewController *)self notificationListViewController];
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__CSCombinedListViewController_viewDidLoad__block_invoke;
  v18[3] = &unk_27838D0F8;
  v18[4] = self;
  v6 = view;
  v19 = v6;
  v7 = notificationListViewController;
  v20 = v7;
  [(CSCombinedListViewController *)self bs_addChildViewController:v7 animated:0 transitionBlock:v18];
  [notificationListScrollView setClipsToBounds:0];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(CSCombinedListViewController *)self _statusBarHeight];
    [notificationListScrollView setScrollIndicatorInsets:?];
    goto LABEL_10;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {

    goto LABEL_10;
  }

  v9 = SBFEffectiveHomeButtonType();

  if (v9 == 2)
  {
    goto LABEL_9;
  }

LABEL_10:
  [(CSCoverSheetViewControllerBase *)self registerView:notificationListScrollView forRole:2 options:1];
  [(CSCombinedListViewController *)self _updatePresentationForReason:@"viewDidLoad"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateCaptureOnlyMaterialView name:*MEMORY[0x277D764C8] object:0];
  [defaultCenter addObserver:self selector:sel__liftToWakeGestureDetected name:*MEMORY[0x277D67A78] object:0];
  [defaultCenter addObserver:self selector:sel__lockButtonPressDetected name:*MEMORY[0x277D67A80] object:0];
  [defaultCenter addObserver:self selector:sel__homeButtonPressDetected name:*MEMORY[0x277D67A88] object:0];
  structuredListViewController = self->_structuredListViewController;
  WeakRetained = objc_loadWeakRetained(&self->_authenticationStatusProvider);
  -[NCNotificationStructuredListViewController setDeviceAuthenticated:](structuredListViewController, "setDeviceAuthenticated:", [WeakRetained isAuthenticated]);

  if (self->_allowsDNDStateService)
  {
    v13 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.springboard.SBDashBoardCombinedListViewController"];
    dndStateService = self->_dndStateService;
    self->_dndStateService = v13;

    [(DNDStateService *)self->_dndStateService addStateUpdateListener:self withCompletionHandler:0];
    v15 = self->_dndStateService;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__CSCombinedListViewController_viewDidLoad__block_invoke_2;
    v17[3] = &unk_27838D120;
    v17[4] = self;
    [(DNDStateService *)v15 queryCurrentStateWithCompletionHandler:v17];
  }

  v16.receiver = self;
  v16.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v16 viewDidLoad];
}

void __43__CSCombinedListViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 _layoutListView];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) view];
  [v4 addSubview:v5];

  [*(a1 + 32) _updateCaptureOnlyMaterialView];
  v6[2]();
}

void __43__CSCombinedListViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CSCombinedListViewController_viewDidLoad__block_invoke_3;
  v5[3] = &unk_27838B838;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewWillLayoutSubviews];
  [(CSCombinedListViewController *)self _layoutListView];
  view = [(CSCombinedListViewController *)self view];
  view2 = [(NCNotificationStructuredListViewController *)self->_structuredListViewController view];
  [view sendSubviewToBack:view2];

  view3 = [(CSCombinedListViewController *)self view];
  view4 = [(UIViewController *)self->_captureOnlyMaterialViewController view];
  [view3 sendSubviewToBack:view4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v8 viewWillAppear:appear];
  [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
  [(CSCombinedListViewController *)self _updateNotificationLongPressProximitySensorAssertion];
  activeRaiseToListenNotificationRequest = [(CSCombinedListViewController *)self activeRaiseToListenNotificationRequest];
  [(CSCombinedListViewController *)self _updateRaiseGestureDetectionForNotificationRequest:activeRaiseToListenNotificationRequest];

  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [(CSCombinedListViewController *)self _updateQuickActionsVisibilityForScrollView:notificationListScrollView];
  adjunctListViewController = self->_adjunctListViewController;
  [(CSCombinedListViewController *)self topContentInset];
  [(CSNotificationAdjunctListViewController *)adjunctListViewController setProminentElementHeightToMimic:v7 + -8.666666];
  [(CSCombinedListViewController *)self _updateListItemAppearanceState];
  [(CSCombinedListViewController *)self _updatePresentationForReason:@"viewWillAppear"];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidAppear:appear];
  view = [(CSCombinedListViewController *)self view];
  window = [view window];
  sb_coronaAnimationController = [window sb_coronaAnimationController];

  [sb_coronaAnimationController addParticipant:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v12.receiver = self;
  v12.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v12 viewWillDisappear:?];
  if (!self->_listSuppressLongLookDismissal)
  {
    [(NCNotificationStructuredListViewController *)self->_structuredListViewController dismissModalFullScreenAnimated:disappearCopy];
  }

  [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
  [(CSCombinedListViewController *)self _updateNotificationLongPressProximitySensorAssertion];
  activeRaiseToListenNotificationRequest = [(CSCombinedListViewController *)self activeRaiseToListenNotificationRequest];
  [(CSCombinedListViewController *)self _updateRaiseGestureDetectionForNotificationRequest:activeRaiseToListenNotificationRequest];

  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    [CSCombinedListViewController viewWillDisappear:v6];
  }

  mEMORY[0x277D65EE8] = [MEMORY[0x277D65EE8] sharedInstance];
  [mEMORY[0x277D65EE8] removeGestureObserver:self];

  [(BSAbsoluteMachTimer *)self->_significantUserInteractionTimer invalidate];
  significantUserInteractionTimer = self->_significantUserInteractionTimer;
  self->_significantUserInteractionTimer = 0;

  view = [(CSCombinedListViewController *)self view];
  window = [view window];
  sb_coronaAnimationController = [window sb_coronaAnimationController];

  [sb_coronaAnimationController removeParticipant:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSCombinedListViewController *)self _updateListItemAppearanceState];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = CSCombinedListViewController;
  coordinatorCopy = coordinator;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__CSCombinedListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27838C938;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__CSCombinedListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_27838C938;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CSCombinedListViewController;
  [(CSCombinedListViewController *)&v4 traitCollectionDidChange:change];
  [(CSCombinedListViewController *)self _updateStructuredListOverrideUserInterfaceStyle];
}

- (void)aggregateAppearance:(id)appearance
{
  v38[5] = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  v36.receiver = self;
  v36.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v36 aggregateAppearance:appearanceCopy];
  v5 = MEMORY[0x277CBEB98];
  dateViewComponent = self->_dateViewComponent;
  v38[0] = self->_statusBarBackgroundComponent;
  v38[1] = dateViewComponent;
  statusBarComponent = self->_statusBarComponent;
  v38[2] = self->_complicationContainerComponent;
  v38[3] = statusBarComponent;
  v38[4] = self->_proudLockComponent;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
  v9 = [v5 setWithArray:v8];

  if ([(CSComponent *)self->_remoteInlineContentComponent isHidden])
  {
    v10 = [v9 setByAddingObject:self->_remoteInlineContentComponent];

    v9 = v10;
  }

  if ([(CSComponent *)self->_quickActionsComponent isHidden])
  {
    v11 = [v9 setByAddingObject:self->_quickActionsComponent];

    v9 = v11;
  }

  if (self->_homeAffordanceComponent)
  {
    v12 = [v9 setByAddingObject:?];
  }

  else
  {
    if (![(NCNotificationStructuredListViewController *)self->_structuredListViewController isOverlayFooterContentVisible])
    {
      goto LABEL_10;
    }

    v13 = objc_opt_new();
    appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
    v15 = [v13 identifier:appearanceIdentifier];
    v16 = [v15 suppressTeachableMomentsAnimation:1];
    v12 = [v9 setByAddingObject:v16];

    v9 = v13;
  }

  v9 = v12;
LABEL_10:
  if (self->_footerCallToActionLabelComponent)
  {
    v17 = [v9 setByAddingObject:?];

    v9 = v17;
  }

  if (self->_notificationDimmingLayerComponent)
  {
    v18 = [v9 setByAddingObject:?];

    v9 = v18;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v32 + 1) + 8 * i) setPriority:{10, v32}];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v21);
  }

  if ([self->_activeDNDState sb_isDimmingModeActive])
  {
    v24 = objc_opt_new();
    v25 = [v24 priority:10];
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:7];
    v27 = [v25 style:v26];
    [appearanceCopy addComponent:v27];

    v28 = CSGetLegibilitySettingsForBackgroundStyle(7);
    [appearanceCopy setLegibilitySettings:v28];
  }

  if ([(CSWallpaperFloatingLayerComponent *)self->_wallpaperFloatingLayerComponent shouldRenderInline])
  {
    v29 = [v19 setByAddingObject:self->_wallpaperFloatingLayerComponent];

    v19 = v29;
  }

  components = [appearanceCopy components];
  v31 = [components setByAddingObjectsFromSet:v19];
  [appearanceCopy setComponents:v31];
}

- (void)aggregateBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v15.receiver = self;
  v15.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v15 aggregateBehavior:behaviorCopy];
  idleTimerSettings = [(CSLockScreenSettings *)self->_lockScreenSettings idleTimerSettings];
  increaseNotificationScrollLogging = [idleTimerSettings increaseNotificationScrollLogging];

  if ([(CSCombinedListViewController *)self _hasUserInteraction])
  {
    if (increaseNotificationScrollLogging)
    {
      v7 = SBLogIdleTimer();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[CSCombinedList][AggBehavior] has user interaction - automatic", v14, 2u);
      }
    }

    [behaviorCopy setIdleTimerDuration:14];
    [behaviorCopy setIdleTimerMode:1];
    [behaviorCopy addRestrictedCapabilities:256];
    if (!increaseNotificationScrollLogging)
    {
      goto LABEL_34;
    }

LABEL_30:
    if ([(NSMutableSet *)self->_quickActionsHiddenReasons containsObject:@"CSQuickActionsScrolledSignificantlyReason"])
    {
      v13 = SBLogIdleTimer();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[CSCombinedList][AggBehavior] has scrolled significantly - noop", v14, 2u);
      }
    }

    goto LABEL_34;
  }

  if (self->_reduceIdleTimerDurationDueToNotificationWake && ![(CSUserPresenceMonitor *)self->_userPresenceMonitor userPresenceDetectedSinceWake])
  {
    if (increaseNotificationScrollLogging)
    {
      v12 = SBLogIdleTimer();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[CSCombinedList][AggBehavior] woke up for notification", v14, 2u);
      }
    }

    v9 = behaviorCopy;
    v10 = 5;
LABEL_29:
    [v9 setIdleTimerDuration:v10];
    if (!increaseNotificationScrollLogging)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (self->_reduceIdleTimerDurationDueToEmptyLiftToWake)
  {
    if (increaseNotificationScrollLogging)
    {
      v8 = SBLogIdleTimer();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[CSCombinedList][AggBehavior] woke up for raise to wake with no content", v14, 2u);
      }
    }

    v9 = behaviorCopy;
    v10 = 2;
    goto LABEL_29;
  }

  if ([(CSCombinedListViewController *)self hasContent])
  {
    if (increaseNotificationScrollLogging)
    {
      v11 = SBLogIdleTimer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[CSCombinedList][AggBehavior] has content", v14, 2u);
      }
    }

    [behaviorCopy setIdleTimerDuration:4];
    [behaviorCopy removeRestrictedCapabilities:256];
  }

  if (increaseNotificationScrollLogging)
  {
    goto LABEL_30;
  }

LABEL_34:
  if ([(CSCombinedListViewController *)self _disableScrolling])
  {
    [behaviorCopy setScrollingStrategy:3];
  }

  if (self->_dismissGestureDisabled)
  {
    [behaviorCopy addRestrictedCapabilities:4096];
  }

  else
  {
    [behaviorCopy removeRestrictedCapabilities:4096];
  }
}

- (void)rebuildEverythingForReason:(id)reason
{
  reasonCopy = reason;
  [(CSCombinedListViewController *)self _updatePresentationForReason:@"rebuildEverythingForReason"];
  v5.receiver = self;
  v5.super_class = CSCombinedListViewController;
  [(CSCoverSheetViewControllerBase *)&v5 rebuildEverythingForReason:reasonCopy];
}

- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (CGSize)effectiveContentSizeForScrollView:(id)view
{
  viewCopy = view;
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  v6 = notificationListScrollView;
  if (notificationListScrollView == viewCopy)
  {
    [notificationListScrollView contentSize];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CSCombinedListViewController;
    [(CSCoverSheetViewControllerBase *)&v13 effectiveContentSizeForScrollView:viewCopy];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)postNotificationRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = un_logDigest;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ posting notification %{public}@ to %{public}@", buf, 0x20u);
  }

  if (self->_dndBedtimeGreetingViewController)
  {
    [(CSCombinedListViewController *)self _dismissDNDBedtimeGreetingViewAnimated:1];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__CSCombinedListViewController_postNotificationRequest___block_invoke;
  v14[3] = &unk_27838B838;
  v14[4] = self;
  v15 = requestCopy;
  v13 = requestCopy;
  [(CSCombinedListViewController *)self _performSelfCorrectingListViewAction:v14];
}

uint64_t __56__CSCombinedListViewController_postNotificationRequest___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) insertNotificationRequest:*(a1 + 40)];
  [*(a1 + 32) _updateNotificationListOffsetForExternalUpdate];
  v2 = *(a1 + 32);

  return [v2 _publishVisibleNotificationCountOnContentChange];
}

- (void)updateNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ updating notification %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__CSCombinedListViewController_updateNotificationRequest___block_invoke;
  v12[3] = &unk_27838B838;
  v12[4] = self;
  v13 = requestCopy;
  v11 = requestCopy;
  [(CSCombinedListViewController *)self _performSelfCorrectingListViewAction:v12];
}

uint64_t __58__CSCombinedListViewController_updateNotificationRequest___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) modifyNotificationRequest:*(a1 + 40)];
  [*(a1 + 32) _updateNotificationListOffsetForExternalUpdate];
  v2 = *(a1 + 32);

  return [v2 _publishVisibleNotificationCountOnContentChange];
}

- (void)withdrawNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ withdrawing notification %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CSCombinedListViewController_withdrawNotificationRequest___block_invoke;
  v12[3] = &unk_27838B838;
  v12[4] = self;
  v13 = requestCopy;
  v11 = requestCopy;
  [(CSCombinedListViewController *)self _performSelfCorrectingListViewAction:v12];
}

uint64_t __60__CSCombinedListViewController_withdrawNotificationRequest___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) removeNotificationRequest:*(a1 + 40)];
  [*(a1 + 32) _updateNotificationListOffsetForExternalUpdate];
  v2 = *(a1 + 32);

  return [v2 _publishVisibleNotificationCountOnContentChange];
}

- (void)_updateNotificationListOffsetForExternalUpdate
{
  if (![(CSCombinedListViewController *)self _shouldPadBottomSpacing])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __78__CSCombinedListViewController__updateNotificationListOffsetForExternalUpdate__block_invoke;
    v3[3] = &unk_27838B770;
    v3[4] = self;
    [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2 animations:v3 completion:0];
  }
}

void __78__CSCombinedListViewController__updateNotificationListOffsetForExternalUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) notificationListScrollView];
  [v1 _scrollToTopIfPossible:0];
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v17 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sectionSettingsCopy = sectionSettings;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    sectionIdentifier = [settingsCopy sectionIdentifier];
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = sectionIdentifier;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ updating notification section settings for section %@", &v13, 0x16u);
  }

  [(NCNotificationStructuredListViewController *)self->_structuredListViewController updateNotificationSectionSettings:settingsCopy previousSectionSettings:sectionSettingsCopy];
}

- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings
{
  v14 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  systemSettingsCopy = systemSettings;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ updating notification system settings", &v12, 0xCu);
  }

  [(NCNotificationStructuredListViewController *)self->_structuredListViewController updateNotificationSystemSettings:settingsCopy previousSystemSettings:systemSettingsCopy];
}

- (CGSize)sizeToMimicForAdjunctListViewController:(id)controller
{
  view = [(NCNotificationStructuredListViewController *)self->_structuredListViewController view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)insetMarginsToMimicForAdjunctListViewController:(id)controller
{
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController insetMargins];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)adjunctListViewController:(id)controller didUpdateWithSize:(CGSize)size
{
  if (self->_adjunctListViewController == controller)
  {
    [(CSCombinedListViewController *)self _setListHasContent:[(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent:size.width]];
    [(CSCombinedListViewController *)self _adjunctListViewSizeIncludingSpacing];
    v6 = v5;
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      self->_cachedAdjunctHeight = v6;
      [(CSCombinedListViewController *)self _updateListViewContentInset];

      [(CSCombinedListViewController *)self _updatePresentationForReason:@"didUpdateWithSize"];
    }
  }
}

- (void)adjunctListViewController:(id)controller didAddSectionWithIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if (self->_adjunctListViewController == controllerCopy)
  {
    if (!self->_supplementaryItemContainersByIdentifier)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
      self->_supplementaryItemContainersByIdentifier = v7;
    }

    if (!self->_adjunctViewControllersByIdentifier)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      adjunctViewControllersByIdentifier = self->_adjunctViewControllersByIdentifier;
      self->_adjunctViewControllersByIdentifier = v9;
    }

    v11 = [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier objectForKeyedSubscript:identifierCopy];

    if (!v11)
    {
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"CoverSheet supplementary items - %@", identifierCopy];
      v13 = [(NCNotificationStructuredListViewController *)self->_structuredListViewController insertSupplementaryViewsContainerAtListPosition:1 identifier:identifierCopy withDescription:identifierCopy];
      [v13 setSupplementaryContainerDelegate:controllerCopy];
      v14 = [(CSNotificationAdjunctListViewController *)controllerCopy itemsGroupSortComparatorForListSectionIdentifier:identifierCopy];
      [v13 setGroupSortComparator:v14];

      v15 = [(CSNotificationAdjunctListViewController *)controllerCopy itemsViewControllerSortComparatorForListSectionIdentifier:identifierCopy];
      [v13 setViewControllerSortComparator:v15];

      [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier setObject:v13 forKey:identifierCopy];
    }
  }
}

- (void)adjunctListViewController:(id)controller didAddViewController:(id)viewController withIdentifier:(id)identifier
{
  viewControllerCopy = viewController;
  identifierCopy = identifier;
  if (self->_adjunctListViewController == controller)
  {
    v9 = [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier objectForKey:@"AdjunctTopSticky"];
    [(NSMutableDictionary *)self->_adjunctViewControllersByIdentifier setObject:viewControllerCopy forKey:identifierCopy];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = identifierCopy;
    if ([v11 isEqualToString:@"com.apple.SpringBoard.prominentUI"])
    {
      v12 = @"PROMINENT_NOTIFICATION_GROUP_NAME";
    }

    else
    {
      v12 = @"SLEEP_NOTIFICATION_GROUP_NAME";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_28302FDA0 table:@"CoverSheet"];
    v14 = objc_alloc_init(MEMORY[0x277D78068]);
    [v14 setGroupName:v13];
    [v14 setGroupingIdentifier:v11];

    [v14 setMaterialRecipe:0];
    [v14 setPreventsUserDismissal:1];
    [v9 insertSupplementaryViewController:viewControllerCopy withConfiguration:v14];
  }
}

- (void)adjunctListViewController:(id)controller willRemoveViewWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (self->_adjunctListViewController == controller)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = identifierCopy;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Removing adjunct with identifier: %{public}@ from notification list", &v10, 0xCu);
    }

    v8 = [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier objectForKey:@"AdjunctTopSticky"];
    v9 = [(NSMutableDictionary *)self->_adjunctViewControllersByIdentifier objectForKeyedSubscript:identifierCopy];
    if (v9)
    {
      [v8 removeSupplementaryViewController:v9];
    }
  }
}

- (void)focusActivityViewChangedToVisible:(BOOL)visible
{
  [(CSCombinedListViewController *)self setShowingFocusActivityView:visible];

  [(CSCombinedListViewController *)self layoutListView];
}

- (void)adjunctListViewController:(id)controller updatedNowPlayingVisbility:(BOOL)visbility
{
  visbilityCopy = visbility;
  delegate = [(CSCombinedListViewController *)self delegate];
  [delegate combinedListViewController:self isShowingMediaControls:visbilityCopy];
}

- (void)itemManager:(id)manager insertSection:(id)section
{
  managerCopy = manager;
  identifier = [section identifier];
  supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
  if (!supplementaryItemContainersByIdentifier)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_supplementaryItemContainersByIdentifier;
    self->_supplementaryItemContainersByIdentifier = v8;

    supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
  }

  v10 = [(NSMutableDictionary *)supplementaryItemContainersByIdentifier objectForKey:identifier];

  if (!v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"CoverSheet supplementary items - %@", identifier];
    v12 = [(NCNotificationStructuredListViewController *)self->_structuredListViewController insertSupplementaryViewsContainerAtListPosition:0 identifier:identifier withDescription:v11];
    [v12 setSupplementaryContainerDelegate:managerCopy];
    v13 = [managerCopy itemsGroupSortComparatorForListSectionIdentifier:identifier];
    [v12 setGroupSortComparator:v13];

    v14 = [managerCopy itemsViewControllerSortComparatorForListSectionIdentifier:identifier];
    [v12 setViewControllerSortComparator:v14];

    [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier setObject:v12 forKey:identifier];
  }
}

- (void)itemManager:(id)manager insertItem:(id)item
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (self->_supplementaryItemManager == manager)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = itemCopy;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Inserting supplementary item: %{public}@ into notification list", &v22, 0xCu);
    }

    supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
    sectionIdentifier = [itemCopy sectionIdentifier];
    v10 = [(NSMutableDictionary *)supplementaryItemContainersByIdentifier objectForKey:sectionIdentifier];

    contentHost = [itemCopy contentHost];
    if (objc_opt_respondsToSelector())
    {
      [contentHost setScreenOn:self->_screenOn];
    }

    configuration = [itemCopy configuration];
    [v10 insertSupplementaryViewController:contentHost withConfiguration:configuration];

    [(CSCombinedListViewController *)self _noteListContentsPotentiallyChanged];
    bs_isAppearingOrAppeared = [(CSCombinedListViewController *)self bs_isAppearingOrAppeared];
    if (objc_opt_respondsToSelector())
    {
      [contentHost setListAppeared:bs_isAppearingOrAppeared];
    }

    v14 = objc_opt_self();
    v15 = contentHost;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    [v17 setDelegate:self];
    if (bs_isAppearingOrAppeared && [(CSCombinedListViewController *)self _isScreenOn])
    {
      [v17 setPresentationMode:1];
    }

    [(CSCombinedListViewController *)self _updateMediaOnlyFlagInSupplementaryContainers];
    v18 = SBLogDashBoard();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sectionIdentifier2 = [itemCopy sectionIdentifier];
      supplementaryViewControllers = [v10 supplementaryViewControllers];
      v21 = [supplementaryViewControllers debugDescription];
      v22 = 138412546;
      v23 = sectionIdentifier2;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "All supplementary items after insertion for section identifier [%@]: %@", &v22, 0x16u);
    }
  }
}

- (void)itemManager:(id)manager updateItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (self->_supplementaryItemManager == manager)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = itemCopy;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Updating supplementary item: %@ in notification list", &v14, 0xCu);
    }

    supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
    sectionIdentifier = [itemCopy sectionIdentifier];
    v10 = [(NSMutableDictionary *)supplementaryItemContainersByIdentifier objectForKey:sectionIdentifier];

    contentHost = [itemCopy contentHost];
    configuration = [itemCopy configuration];
    [v10 updateSupplementaryViewController:contentHost withConfiguration:configuration];

    contentHost2 = [itemCopy contentHost];
    [v10 updatePositionIfNeededForSupplementaryViewController:contentHost2];

    [(CSCombinedListViewController *)self _noteListContentsPotentiallyChanged];
  }
}

- (void)itemManager:(id)manager removeItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (self->_supplementaryItemManager == manager)
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = itemCopy;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Removing supplementary item from: %{public}@ into notification list", &v16, 0xCu);
    }

    supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
    sectionIdentifier = [itemCopy sectionIdentifier];
    v10 = [(NSMutableDictionary *)supplementaryItemContainersByIdentifier objectForKey:sectionIdentifier];

    contentHost = [itemCopy contentHost];
    [v10 removeSupplementaryViewController:contentHost];

    [(CSCombinedListViewController *)self _updateMediaOnlyFlagInSupplementaryContainers];
    v12 = SBLogDashBoard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sectionIdentifier2 = [itemCopy sectionIdentifier];
      supplementaryViewControllers = [v10 supplementaryViewControllers];
      v15 = [supplementaryViewControllers debugDescription];
      v16 = 138412546;
      v17 = sectionIdentifier2;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "All supplementary items after removal for section identifier [%@]: %@", &v16, 0x16u);
    }

    [(CSCombinedListViewController *)self _noteListContentsPotentiallyChanged];
  }
}

- (void)itemManager:(id)manager requestsModalPresentationOfViewController:(id)controller forItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  supplementaryItemContainersByIdentifier = self->_supplementaryItemContainersByIdentifier;
  completionCopy = completion;
  itemCopy = item;
  controllerCopy = controller;
  sectionIdentifier = [itemCopy sectionIdentifier];
  v16 = [(NSMutableDictionary *)supplementaryItemContainersByIdentifier objectForKey:sectionIdentifier];

  contentHost = [itemCopy contentHost];

  [v16 presentViewControllerModally:controllerCopy fromSupplementaryViewController:contentHost animated:animatedCopy completion:completionCopy];
}

- (CGSize)sizeToMimicForItemContentHost
{
  view = [(NCNotificationStructuredListViewController *)self->_structuredListViewController view];
  [view bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)itemManager:(id)manager setNowPlayingItem:(id)item
{
  v5 = item != 0;
  delegate = [(CSCombinedListViewController *)self delegate];
  [delegate combinedListViewController:self isShowingMediaControls:v5];
}

- (void)itemManager:(id)manager requestsAuthenticationAndPerformBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__CSCombinedListViewController_itemManager_requestsAuthenticationAndPerformBlock___block_invoke;
  v7[3] = &unk_27838BAC0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(CSCombinedListViewController *)self _requestAuthenticationWithCompletion:v7];
}

uint64_t __82__CSCombinedListViewController_itemManager_requestsAuthenticationAndPerformBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)itemManager:(id)manager cancelTouchesForInteractionWithItem:(id)item
{
  v9 = [(CSCombinedListViewController *)self coverSheetGestureHandling:manager];
  if (v9)
  {
    [v9 contentRequestCancellingGesture];
  }

  scrollView = [(NCNotificationStructuredListViewController *)self->_structuredListViewController scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];
  [panGestureRecognizer setEnabled:0];

  scrollView2 = [(NCNotificationStructuredListViewController *)self->_structuredListViewController scrollView];
  panGestureRecognizer2 = [scrollView2 panGestureRecognizer];
  [panGestureRecognizer2 setEnabled:1];
}

- (void)itemManager:(id)manager significantUserInteractionBeganWithItem:(id)item
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(CSCombinedListViewController *)self _triggerSignificantUserInteractionIfNeeded];
}

- (void)itemManager:(id)manager significantUserInteractionEndedWithItem:(id)item
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheetActivities();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(CSCombinedListViewController *)self _triggerSignificantUserInteractionIfNeeded];
}

- (void)itemManagerDidAddNewSceneHostEnvironment
{
  activityItemObserver = [(CSCombinedListViewController *)self activityItemObserver];
  if (activityItemObserver)
  {
    v3 = activityItemObserver;
    activityItemObserver = objc_opt_respondsToSelector();
    if (activityItemObserver)
    {
      activityItemObserver = [v3 didAddNewActivityItemSceneHostEnvironment];
    }
  }

  MEMORY[0x2821F9730](activityItemObserver);
}

- (BOOL)isNotificationContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  if ([(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent])
  {
    v5 = [(NCNotificationStructuredListViewController *)self->_structuredListViewController isContentExtensionVisible:visibleCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)animated
{
  animatedCopy = animated;
  hasVisibleContent = [(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent];
  if (hasVisibleContent)
  {
    structuredListViewController = self->_structuredListViewController;

    LOBYTE(hasVisibleContent) = [(NCNotificationStructuredListViewController *)structuredListViewController dismissModalFullScreenAnimated:animatedCopy];
  }

  return hasVisibleContent;
}

- (void)notificationStructuredListViewController:(id)controller requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  self->_listSuppressLongLookDismissal = 1;
  parametersCopy = parameters;
  requestCopy = request;
  actionCopy = action;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __155__CSCombinedListViewController_notificationStructuredListViewController_requestPermissionToExecuteAction_forNotificationRequest_withParameters_completion___block_invoke;
  v17[3] = &unk_27838C010;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  [dispatcher destination:self requestPermissionToExecuteAction:actionCopy forNotificationRequest:requestCopy withParameters:parametersCopy completion:v17];
}

- (void)notificationStructuredListViewController:(id)controller requestsExecuteAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion
{
  authenticationCopy = authentication;
  completionCopy = completion;
  self->_listSuppressLongLookDismissal = 1;
  parametersCopy = parameters;
  requestCopy = request;
  actionCopy = action;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __166__CSCombinedListViewController_notificationStructuredListViewController_requestsExecuteAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke;
  v19[3] = &unk_27838C010;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [dispatcher destination:self performAction:actionCopy forNotificationRequest:requestCopy requestAuthentication:authenticationCopy withParameters:parametersCopy completion:v19];
}

uint64_t __166__CSCombinedListViewController_notificationStructuredListViewController_requestsExecuteAction_forNotificationRequest_requestAuthentication_withParameters_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1136) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)notificationStructuredListViewController:(id)controller containerViewProviderForExpandedContentForViewController:(id)viewController
{
  v45 = *MEMORY[0x277D85DE8];
  viewControllerCopy = viewController;
  isViewLoaded = [(CSCombinedListViewController *)self isViewLoaded];
  v7 = 0;
  if (viewControllerCopy && isViewLoaded)
  {
    v8 = MEMORY[0x277D77DB0];
    v9 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = viewControllerCopy;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Notification structured list view controller requesting container view for view controller: %{public}@", buf, 0xCu);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = self->_notificationContainerViewAssertions;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        requester = [v15 requester];

        if (requester == viewControllerCopy)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v7 = v15;

      if (v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_13:
    }

    if (!self->_containerViewForExpandedNotificationContent)
    {
      view = [(CSCombinedListViewController *)self view];
      superview = [view superview];
      [view frame];
      [superview convertRect:0 toView:?];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v20, v22, v24, v26}];
      containerViewForExpandedNotificationContent = self->_containerViewForExpandedNotificationContent;
      self->_containerViewForExpandedNotificationContent = v27;

      [(UIView *)self->_containerViewForExpandedNotificationContent setAutoresizingMask:18];
      window = [view window];
      [window addSubview:self->_containerViewForExpandedNotificationContent];

      v30 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_containerViewForExpandedNotificationContent;
        *buf = 138543362;
        v44 = v31;
        _os_log_impl(&dword_21EB05000, v30, OS_LOG_TYPE_DEFAULT, "Instantiated new container view for expanded notification content: %{public}@", buf, 0xCu);
      }
    }

    if (!self->_notificationContainerViewAssertions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      notificationContainerViewAssertions = self->_notificationContainerViewAssertions;
      self->_notificationContainerViewAssertions = weakObjectsHashTable;
    }

    v34 = objc_alloc(MEMORY[0x277D679B0]);
    v35 = self->_containerViewForExpandedNotificationContent;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __130__CSCombinedListViewController_notificationStructuredListViewController_containerViewProviderForExpandedContentForViewController___block_invoke;
    v37[3] = &unk_27838D148;
    v37[4] = self;
    v7 = [v34 initWithRequester:viewControllerCopy containerView:v35 reason:@"Container view requested for notification view controller" invalidationBlock:v37];
    [(NSHashTable *)self->_notificationContainerViewAssertions addObject:v7];
  }

LABEL_22:

  return v7;
}

uint64_t __130__CSCombinedListViewController_notificationStructuredListViewController_containerViewProviderForExpandedContentForViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 1088) removeObject:a2];
  result = [*(*(a1 + 32) + 1088) count];
  if (!result)
  {
    v4 = *(a1 + 32);

    return [v4 _tearDownContainerViewForExpandedNotificationContent];
  }

  return result;
}

- (void)notificationStructuredListViewController:(id)controller shouldFinishLongLookTransitionForNotificationRequest:(id)request trigger:(int64_t)trigger withCompletionBlock:(id)block
{
  v74 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_authenticationStatusProvider);
  standardDefaults = [MEMORY[0x277D66000] standardDefaults];
  alwaysAllowLongLookGesture = [standardDefaults alwaysAllowLongLookGesture];

  activeBehavior = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v12 = [activeBehavior areRestrictedCapabilities:0x20000];

  hasAuthenticatedAtLeastOnceSinceBoot = [WeakRetained hasAuthenticatedAtLeastOnceSinceBoot];
  hasBiometricAuthenticationCapabilityEnabled = [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled];
  isDetectionEnabled = [(CSUserPresenceMonitor *)self->_userPresenceMonitor isDetectionEnabled];
  defaultAction = [requestCopy defaultAction];

  v51 = requestCopy;
  options = [requestCopy options];
  contentPreviewSetting = [options contentPreviewSetting];

  v45 = contentPreviewSetting;
  v18 = contentPreviewSetting == 0;
  if (contentPreviewSetting)
  {
    v19 = hasBiometricAuthenticationCapabilityEnabled;
  }

  else
  {
    v19 = 0;
  }

  v49 = WeakRetained;
  isAuthenticated = [WeakRetained isAuthenticated];
  userPresenceDetectedSinceWake = [(CSUserPresenceMonitor *)self->_userPresenceMonitor userPresenceDetectedSinceWake];
  v21 = self->_hasProximitySensor && !self->_proximitySensorCoveredSinceWake;
  coverSheetWasDismissed = self->_coverSheetWasDismissed;
  historyWasRevealed = self->_historyWasRevealed;
  if (v12 & 1 | ((hasAuthenticatedAtLeastOnceSinceBoot & 1) == 0))
  {
    v23 = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v26 = (trigger & 0xFFFFFFFFFFFFFFFELL) == 2 || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    v27 = v26;
    v23 = v27 | coverSheetWasDismissed | userPresenceDetectedSinceWake | v19 | isAuthenticated | v21;
  }

  v28 = MEMORY[0x277D77DB0];
  v29 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v26 = defaultAction == 0;
    v30 = isAuthenticated;
    v31 = v18;
    v32 = !v26;
    log = v29;
    v33 = MEMORY[0x223D68CF0](trigger);
    notificationIdentifier = [v51 notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138546178;
    v53 = v33;
    v54 = 2114;
    *v55 = un_logDigest;
    *&v55[8] = 1024;
    *v56 = coverSheetWasDismissed;
    *&v56[4] = 1024;
    v57 = historyWasRevealed;
    v58 = 1024;
    v59 = isDetectionEnabled;
    v60 = 1024;
    v61 = userPresenceDetectedSinceWake;
    v62 = 1024;
    v63 = v32;
    v18 = v31;
    isAuthenticated = v30;
    v64 = 1024;
    v65 = v18;
    v66 = 1024;
    v67 = v30;
    v68 = 1024;
    v69 = v21;
    v70 = 1024;
    v71 = alwaysAllowLongLookGesture;
    v72 = 1024;
    v73 = v23 & 1;
    _os_log_impl(&dword_21EB05000, log, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Should finish long look transition via %{public}@ for notification %{public}@: [ pulled-down: %{BOOL}d revealed-history: %{BOOL}d face-detecting: %{BOOL}d face-detected: %{BOOL}d default-action: %{BOOL}d content-preview-always: %{BOO}d authenticated: %{BOOL}d proximity-uncovered-after-wake: %{BOOL}d override: %{BOOL}d ]: %{BOOL}d", buf, 0x52u);

    v28 = MEMORY[0x277D77DB0];
  }

  if (v23)
  {
    if (v45)
    {
      v36 = isAuthenticated;
    }

    else
    {
      v36 = 1;
    }

    v37 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      notificationIdentifier2 = [v51 notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      *buf = 138544130;
      v53 = un_logDigest2;
      v54 = 1024;
      *v55 = isAuthenticated;
      *&v55[4] = 1024;
      *&v55[6] = v18;
      *v56 = 1024;
      *&v56[2] = v36 ^ 1;
      _os_log_impl(&dword_21EB05000, v38, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Should request authentication for notification %{public}@: [ authenticated: %{BOOL}d content-preview-always: %{BOOL}d]: %{BOOL}d", buf, 0x1Eu);
    }

    if (v36)
    {
      v41 = blockCopy;
      (*(blockCopy + 2))(blockCopy, 1);
    }

    else
    {
      self->_confirmedNotInPocket = 1;
      v41 = blockCopy;
      [(CSCombinedListViewController *)self _requestAuthenticationWithCompletion:blockCopy];
    }
  }

  else
  {
    v41 = blockCopy;
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

- (void)_resetReducedIdleTimeFlagsIfNeeded
{
  if (self->_reduceIdleTimerDurationDueToNotificationWake)
  {
    self->_reduceIdleTimerDurationDueToNotificationWake = 0;
    p_reduceIdleTimerDurationDueToEmptyLiftToWake = &self->_reduceIdleTimerDurationDueToEmptyLiftToWake;
    if (!self->_reduceIdleTimerDurationDueToEmptyLiftToWake)
    {
LABEL_3:
      [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
      return;
    }

LABEL_5:
    *p_reduceIdleTimerDurationDueToEmptyLiftToWake = 0;
    goto LABEL_3;
  }

  p_reduceIdleTimerDurationDueToEmptyLiftToWake = &self->_reduceIdleTimerDurationDueToEmptyLiftToWake;
  if (self->_reduceIdleTimerDurationDueToEmptyLiftToWake)
  {
    goto LABEL_5;
  }
}

- (void)notificationStructuredListViewControllerDidSignificantUserInteraction:(id)interaction
{
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CSCombinedListViewController notificationStructuredListViewControllerDidSignificantUserInteraction:];
  }

  [(CSCombinedListViewController *)self _triggerSignificantUserInteractionIfNeeded];
  self->_interactingWithNotificationList = 1;
  [(CSCombinedListViewController *)self _resetReducedIdleTimeFlagsIfNeeded];
}

- (void)notificationStructuredListViewControllerDidBeginUserInteraction:(id)interaction
{
  [(CSCombinedListViewController *)self _setHasUserInteraction:1 forReason:@"NotificationInteraction"];

  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)notificationStructuredListViewControllerDidEndUserInteraction:(id)interaction
{
  [(CSCombinedListViewController *)self _setHasUserInteraction:0 forReason:@"NotificationInteraction"];

  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)notificationStructuredListViewControllerDidUpdateVisibleContentExtent:(id)extent
{
  v15 = *MEMORY[0x277D85DE8];
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  if ([notificationListScrollView isDragging] & 1) != 0 || (objc_msgSend(notificationListScrollView, "isDecelerating"))
  {
    isScrollAnimating = 1;
  }

  else
  {
    isScrollAnimating = [notificationListScrollView isScrollAnimating];
  }

  _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
  listBeingLaidOut = self->_listBeingLaidOut;
  v8 = SBLogDashBoard();
  v9 = v8;
  if ((_isInAnimationBlock & 1) != 0 || (isScrollAnimating & 1) != 0 || listBeingLaidOut)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67240704;
      v10[1] = _isInAnimationBlock;
      v11 = 1026;
      v12 = isScrollAnimating;
      v13 = 1026;
      v14 = listBeingLaidOut;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Early exiting notificationStructuredListViewControllerDidUpdateVisibleContentExtent. isInAnimationBlock: %{public}d. isScrolling: %{public}d. _listBeingLaidOut: %{public}d", v10, 0x14u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CSCombinedListViewController notificationStructuredListViewControllerDidUpdateVisibleContentExtent:v9];
    }

    [(CSCombinedListViewController *)self _updatePresentationForReason:@"didUpdateVisibleContentExtent"];
  }
}

- (void)notificationStructuredListViewController:(id)controller didBeginUserInteractionWithViewController:(id)viewController
{
  [(CSStatusBarComponent *)self->_statusBarComponent setFakeStatusBar:1, viewController];
  [(CSStatusBarComponent *)self->_statusBarComponent setFakeStatusBarLevel:&unk_28307A5B0];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];

  [(CSCombinedListViewController *)self _setHasUserInteraction:1 forReason:@"NotificationInteraction"];
}

- (void)notificationStructuredListViewController:(id)controller didEndUserInteractionWithViewController:(id)viewController
{
  [(CSStatusBarComponent *)self->_statusBarComponent setFakeStatusBar:0, viewController];
  [(CSStatusBarComponent *)self->_statusBarComponent setFakeStatusBarLevel:0];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];

  [(CSCombinedListViewController *)self _setHasUserInteraction:0 forReason:@"NotificationInteraction"];
}

- (void)notificationStructuredListViewControllerWillExpandNotificationListCount:(id)count
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained combinedListViewControllerWillExpandNotificationListCount:self];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_scrollablePage);
  [WeakRetained scrollViewWillBeginDragging:draggingCopy];

  self->_shouldPadBottomSpacingWhileDragging = [(CSCombinedListViewController *)self _shouldPadBottomSpacingIsDragging:0];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_scrollablePage);
  [WeakRetained scrollViewWillEndDragging:draggingCopy withVelocity:{x, y}];

  if (!self->_listBeingLaidOut)
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CSCombinedListViewController notificationStructuredListViewControllerDidSignificantUserInteraction:];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_scrollablePage);
  [WeakRetained scrollViewDidScroll:scrollCopy];

  if (self->_listBeingLaidOut)
  {
    goto LABEL_18;
  }

  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CSCombinedListViewController notificationStructuredListViewControllerDidSignificantUserInteraction:];
  }

  notificationDimmingLayerComponent = self->_notificationDimmingLayerComponent;
  scrollView = [(NCNotificationStructuredListViewController *)self->_structuredListViewController scrollView];
  [scrollView contentOffset];
  [(CSComponent *)notificationDimmingLayerComponent setOffset:?];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__CSCombinedListViewController_scrollViewDidScroll___block_invoke;
  v17[3] = &unk_27838B770;
  v17[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v17];
  v9 = [(NSMutableSet *)self->_quickActionsHiddenReasons containsObject:@"CSQuickActionsScrolledSignificantlyReason"];
  v10 = [(CSCombinedListViewController *)self _hasExperiencedSignificantScrollingOnScrollView:scrollCopy];
  idleTimerSettings = [(CSLockScreenSettings *)self->_lockScreenSettings idleTimerSettings];
  increaseNotificationScrollLogging = [idleTimerSettings increaseNotificationScrollLogging];

  if (increaseNotificationScrollLogging)
  {
    if (!(v9 & 1 | !v10))
    {
      v13 = SBLogIdleTimer();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v14 = "Switching to scrolling significantly";
        goto LABEL_11;
      }

LABEL_12:

      goto LABEL_13;
    }

    if (!v10 && (v9 & 1) != 0)
    {
      v13 = SBLogIdleTimer();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v14 = "No longer scrolling significantly";
LABEL_11:
        _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, v14, &v16, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  v15 = v10 && [(CSCombinedListViewController *)self _notificationListExpandsVisibleRegionOnSignificantScroll];
  [(CSCombinedListViewController *)self _updateHidingQuickActionsForSignificantScrolling:v15, v16];
  if (([(CSCombinedListViewController *)self interfaceOrientation]- 1) < 2 && v10)
  {
    [(CSCombinedListViewController *)self _dismissDNDBedtimeGreetingViewAnimated:1];
  }

LABEL_18:
}

- (void)_updateQuickActionsVisibilityForScrollView:(id)view
{
  if ([(CSCombinedListViewController *)self _hasExperiencedSignificantScrollingOnScrollView:view])
  {
    _notificationListExpandsVisibleRegionOnSignificantScroll = [(CSCombinedListViewController *)self _notificationListExpandsVisibleRegionOnSignificantScroll];
  }

  else
  {
    _notificationListExpandsVisibleRegionOnSignificantScroll = 0;
  }

  [(CSCombinedListViewController *)self _updateHidingQuickActionsForSignificantScrolling:_notificationListExpandsVisibleRegionOnSignificantScroll];
}

- (BOOL)_hasExperiencedSignificantScrollingOnScrollView:(id)view
{
  viewCopy = view;
  [viewCopy contentOffset];
  [viewCopy contentInset];

  return BSFloatGreaterThanFloat();
}

- (BOOL)isNotificationListSignificantlyScrolled
{
  selfCopy = self;
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  LOBYTE(selfCopy) = [(CSCombinedListViewController *)selfCopy _hasExperiencedSignificantScrollingOnScrollView:notificationListScrollView];

  return selfCopy;
}

- (void)notificationStructuredListViewController:(id)controller isPresentingLongLookForViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v6 = viewControllerCopy != 0;
  [(CSCombinedListViewController *)self _setDisableScrolling:v6];
  [(CSCombinedListViewController *)self _setDisableBackgroundAnimation:v6 forReason:@"Long Look"];
  [(CSCombinedListViewController *)self _setDismissGestureDisabled:v6 forReason:@"Long Look"];
  [(CSCombinedListViewController *)self _setHasUserInteraction:v6 forReason:@"NotificationLongLook"];
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);
  v8 = objc_loadWeakRetained(&self->_platterHomeGestureManager);
  if (viewControllerCopy)
  {
    mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
    [mEMORY[0x277D65DD0] emitEvent:41];

    if (SBFEffectiveHomeButtonType() == 2)
    {
      v10 = [v8 homeGestureContextForViewController:viewControllerCopy];
      if (v10)
      {
        [viewControllerCopy setHomeGestureContext:v10];
        objc_storeStrong(&self->_activePlatterHomeAffordanceOwningNotificationViewController, viewController);
      }

      else
      {
        [WeakRetained registerHomeGestureParticipant:self withIdentifier:0];
      }
    }
  }

  else if (SBFEffectiveHomeButtonType() == 2)
  {
    if (self->_activePlatterHomeAffordanceOwningNotificationViewController)
    {
      [v8 unregisterHomeGestureContextForViewController:?];
      activePlatterHomeAffordanceOwningNotificationViewController = self->_activePlatterHomeAffordanceOwningNotificationViewController;
      self->_activePlatterHomeAffordanceOwningNotificationViewController = 0;
    }

    else
    {
      [WeakRetained unregisterHomeGestureParticipant:self withIdentifier:0];
    }
  }
}

- (id)notificationStructuredListViewController:(id)controller requestsSectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v7 = [dispatcher destination:self settingsForSectionIdentifier:identifierCopy];

  return v7;
}

- (id)notificationStructuredListViewControllerRequestsSystemSettings:(id)settings
{
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v5 = [dispatcher notificationSystemSettingsForDestination:self];

  return v5;
}

- (void)notificationStructuredListViewController:(id)controller requestsClearingNotificationRequestsInSections:(id)sections
{
  sectionsCopy = sections;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self clearNotificationRequestsInSections:sectionsCopy];

  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  [mEMORY[0x277D65DD0] emitEvent:40];
}

- (void)notificationStructuredListViewController:(id)controller requestsClearingNotificationRequests:(id)requests
{
  requestsCopy = requests;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self clearNotificationRequests:requestsCopy];
}

- (void)notificationStructuredListViewController:(id)controller requestsAuthenticationAndPerformBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __111__CSCombinedListViewController_notificationStructuredListViewController_requestsAuthenticationAndPerformBlock___block_invoke;
  v7[3] = &unk_27838BAC0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(CSCombinedListViewController *)self _requestAuthenticationWithCompletion:v7];
}

uint64_t __111__CSCombinedListViewController_notificationStructuredListViewController_requestsAuthenticationAndPerformBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)notificationStructuredListViewController:(id)controller shouldAllowInteractionsForNotificationRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled:controller];
  hasPearlSupport = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  v7 = _AXSAttentionAwarenessFeaturesEnabled();
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = hasPearlSupport & v5;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  v12 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"off";
    if (v5)
    {
      v13 = @"on";
    }

    v14 = @"noPearl";
    hasProximitySensor = self->_hasProximitySensor;
    if (hasPearlSupport)
    {
      v14 = @"hasPearl";
    }

    v16 = @"attentionAware";
    v22 = 138413314;
    v23 = v13;
    v17 = @"forceTouch";
    if (!v7)
    {
      v16 = @"noAttention";
    }

    if (forceTouchCapability != 2)
    {
      v17 = @"noForce";
    }

    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v17;
    if (hasProximitySensor)
    {
      v18 = @"hasProx";
    }

    else
    {
      v18 = @"noProx";
    }

    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "shouldAllowInteractions biometric %@ - %@ - %@ - %@ - %@", &v22, 0x34u);
  }

  if (__sb__runningInSpringBoard())
  {
    v19 = 1;
    if (!((SBFEffectiveDeviceClass() == 2) | v8 & 1) && forceTouchCapability != 2)
    {
      return self->_hasProximitySensor;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v19 = 1;
    if (!(([currentDevice userInterfaceIdiom] == 1) | v8 & 1) && forceTouchCapability != 2)
    {
      v19 = self->_hasProximitySensor;
    }
  }

  return v19;
}

- (BOOL)notificationStructuredListViewControllerShouldAllowLongPressGesture:(id)gesture
{
  hasBiometricAuthenticationCapabilityEnabled = [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled];
  v5 = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport]& hasBiometricAuthenticationCapabilityEnabled;
  if (_AXSAttentionAwarenessFeaturesEnabled())
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (__sb__runningInSpringBoard())
  {
    return (SBFEffectiveDeviceClass() == 2) | v6 & 1 || self->_hasProximitySensor;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if (([currentDevice userInterfaceIdiom] == 1) | v6 & 1)
    {
      hasProximitySensor = 1;
    }

    else
    {
      hasProximitySensor = self->_hasProximitySensor;
    }
  }

  return hasProximitySensor;
}

- (id)legibilitySettingsForNotificationStructuredListViewController:(id)controller
{
  activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  legibilitySettings = [activeAppearance legibilitySettings];

  return legibilitySettings;
}

- (BOOL)notificationStructuredListViewControllerShouldHintForDefaultAction:(id)action
{
  v16 = *MEMORY[0x277D85DE8];
  hasBiometricAuthenticationCapabilityEnabled = [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled];
  standardDefaults = [MEMORY[0x277D66000] standardDefaults];
  alwaysAllowDefaultAction = [standardDefaults alwaysAllowDefaultAction];

  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"notCape";
    if (hasBiometricAuthenticationCapabilityEnabled)
    {
      v7 = @"capable";
    }

    v8 = @"allowsDefault";
    if (!alwaysAllowDefaultAction)
    {
      v8 = @"doesn'tForceDefault";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "shouldHintForDefault hinting %@ - %@", &v12, 0x16u);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1) & ((hasBiometricAuthenticationCapabilityEnabled | alwaysAllowDefaultAction) ^ 1);
}

- (void)notificationStructuredListViewController:(id)controller isNotificationsHistoryRevealed:(BOOL)revealed
{
  revealedCopy = revealed;
  controllerCopy = controller;
  if (self->_historyWasRevealed != revealedCopy)
  {
    v8 = controllerCopy;
    self->_historyWasRevealed = revealedCopy;
    if (revealedCopy)
    {
      mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
      [mEMORY[0x277D65DD0] emitEvent:39];
    }

    [(CSCombinedListViewController *)self _updateNotificationDimmingLayerLocalizedDimMode];
    controllerCopy = v8;
  }
}

- (void)notificationStructuredListViewController:(id)controller requestsClearingFromIncomingSectionNotificationRequests:(id)requests
{
  requestsCopy = requests;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v6 = [MEMORY[0x277CBEB98] setWithArray:requestsCopy];

  [dispatcher destination:self clearNotificationRequestsFromIncomingSection:v6];
}

- (void)notificationStructuredListViewController:(id)controller setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setAllowsNotifications:notificationsCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setDeliverQuietly:quietlyCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  threadIdentifierCopy = threadIdentifier;
  identifierCopy = identifier;
  dateCopy = date;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  messagesCopy = messages;
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setAllowsDirectMessages:messagesCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
}

- (void)notificationStructuredListViewController:(id)controller setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times
{
  enabledCopy = enabled;
  timesCopy = times;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setSystemScheduledDeliveryEnabled:enabledCopy scheduledDeliveryTimes:timesCopy];
}

- (void)notificationStructuredListViewController:(id)controller setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  [dispatcher destination:self setNotificationSystemSettings:settingsCopy];
}

- (id)notificationStructuredListViewController:(id)controller notificationRequestForUUID:(id)d
{
  dCopy = d;
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v7 = [dispatcher destination:self notificationRequestForUUID:dCopy];

  return v7;
}

- (id)notificationUsageTrackingStateForNotificationStructuredListViewController:(id)controller
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77FD8];
  v6 = *MEMORY[0x277D78018];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)notificationStructuredListViewController:(id)controller keyboardAssertionForGestureWindow:(id)window
{
  windowCopy = window;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);
    v7 = [WeakRetained keyboardAssertionForGestureWindow:windowCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);
  hideHomeAffordanceAnimationSettings = [WeakRetained hideHomeAffordanceAnimationSettings];

  return hideHomeAffordanceAnimationSettings;
}

- (id)unhideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);
  unhideHomeAffordanceAnimationSettings = [WeakRetained unhideHomeAffordanceAnimationSettings];

  return unhideHomeAffordanceAnimationSettings;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationStructuredListViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);
  settleHomeAffordanceAnimationBehaviorDescription = [WeakRetained settleHomeAffordanceAnimationBehaviorDescription];

  return settleHomeAffordanceAnimationBehaviorDescription;
}

- (void)notificationStructuredListViewController:(id)controller requestsPresentingDigestOnboardingSuggestionViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (self->_digestOnboardingSuggestionViewController != viewControllerCopy)
  {
    objc_storeStrong(&self->_digestOnboardingSuggestionViewController, viewController);
    [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController setDigestOnboardingSuggestionViewController:viewControllerCopy];
    if (self->_digestOnboardingSuggestionViewController)
    {
      v7 = [MEMORY[0x277D66B18] acquireContentProviderAssertionForType:1 slot:*MEMORY[0x277D67020] identifier:*MEMORY[0x277D66D20] errorHandler:0];
      digestOnboardingSuggestionViewControllerAssertion = self->_digestOnboardingSuggestionViewControllerAssertion;
      self->_digestOnboardingSuggestionViewControllerAssertion = v7;
    }

    else
    {
      [(SBSLockScreenContentAssertion *)self->_digestOnboardingSuggestionViewControllerAssertion invalidate];
      digestOnboardingSuggestionViewControllerAssertion = self->_digestOnboardingSuggestionViewControllerAssertion;
      self->_digestOnboardingSuggestionViewControllerAssertion = 0;
    }
  }
}

- (UIEdgeInsets)notificationStructuredListViewControllerRequestsEdgeInsetsForFooterView:(id)view forOrientation:(int64_t)orientation
{
  viewCopy = view;
  if (!+[CSQuickActionsViewController deviceSupportsButtons])
  {
    [(CSCombinedListViewController *)self _edgeInsetsForUnsupportedQuickActionsForOrientation:orientation];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    goto LABEL_539;
  }

  v7 = __sb__runningInSpringBoard();
  v297 = viewCopy;
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_12;
    }
  }

  v9 = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v8 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v38 == *(MEMORY[0x277D66E30] + 288) && v37 == *(MEMORY[0x277D66E30] + 296))
    {
      *&v296[44] = currentDevice29 ^ 1;
      v298 = v9;
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      memset(v295, 0, sizeof(v295));
      memset(v296, 0, 44);
      v34 = &qword_21EC96100;
      goto LABEL_69;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  v19 = __sb__runningInSpringBoard();
  v298 = v9;
  *&v296[44] = v8;
  if (v19)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[36] = 0;
      goto LABEL_21;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      *&v296[36] = 0x100000000;
      goto LABEL_21;
    }
  }

  *&v296[40] = v19 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    *&v296[36] = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v40 >= *(MEMORY[0x277D66E30] + 440))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      memset(v295, 0, sizeof(v295));
      memset(v296, 0, 36);
      v34 = &qword_21EC96128;
      goto LABEL_69;
    }
  }

  else
  {
    *&v296[36] = 0;
  }

LABEL_21:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[28] = 0;
      goto LABEL_30;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      *&v296[28] = 0;
      *&v296[32] = 1;
      goto LABEL_30;
    }
  }

  *&v296[32] = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
    }

    *&v296[28] = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v41 >= *(MEMORY[0x277D66E30] + 376))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      memset(v295, 0, sizeof(v295));
      memset(v296, 0, 28);
      v34 = &qword_21EC96118;
      goto LABEL_69;
    }
  }

  else
  {
    *&v296[28] = 0;
  }

LABEL_30:
  v21 = __sb__runningInSpringBoard();
  if (v21)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[20] = 0;
      goto LABEL_39;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      *&v296[20] = 0;
      *&v296[24] = 1;
      goto LABEL_39;
    }
  }

  *&v296[24] = v21 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  *&v296[20] = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v23 >= *(MEMORY[0x277D66E30] + 280))
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, sizeof(v295));
    memset(v296, 0, 20);
    v34 = &qword_21EC96120;
    goto LABEL_69;
  }

LABEL_39:
  v24 = __sb__runningInSpringBoard();
  if (v24)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[12] = 0;
      goto LABEL_49;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      *&v296[12] = 0;
      *&v296[16] = 1;
      goto LABEL_49;
    }
  }

  *&v296[16] = v24 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
  }

  *&v296[12] = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v35 >= *(MEMORY[0x277D66E30] + 264))
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, sizeof(v295));
    *v296 = 0;
    *&v296[8] = 0;
    v34 = &qword_21EC96110;
    goto LABEL_69;
  }

LABEL_49:
  v36 = __sb__runningInSpringBoard();
  if (v36)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[4] = 0;
      goto LABEL_572;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *&v296[4] = 0;
      *&v296[8] = 1;
      goto LABEL_572;
    }
  }

  *&v296[8] = v36 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
  }

  *&v296[4] = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v94 >= *(MEMORY[0x277D66E30] + 248))
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, sizeof(v295));
    *v296 = 0;
    v34 = &qword_21EC96108;
    goto LABEL_69;
  }

LABEL_572:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_574;
    }

LABEL_580:
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, sizeof(v295));
    v34 = &qword_21EC960F8;
    *v296 = currentDevice29 ^ 1;
    goto LABEL_69;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice7 userInterfaceIdiom] == 1)
  {
    goto LABEL_580;
  }

LABEL_574:
  *v296 = currentDevice29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_578:
    v295[8] = 0;
    goto LABEL_642;
  }

  v95 = __sb__runningInSpringBoard();
  if (v95)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_578;
    }
  }

  else
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice8 userInterfaceIdiom])
    {
      v295[8] = 0x100000000;
      goto LABEL_642;
    }
  }

  HIDWORD(v295[8]) = v95 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    LODWORD(v295[8]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v104 >= *(MEMORY[0x277D66E30] + 200))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      memset(v295, 0, 64);
      v34 = &qword_21EC960D8;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v295[8]) = 0;
  }

LABEL_642:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v295[7] = 0;
      goto LABEL_652;
    }
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
      v295[7] = 0x100000000;
      goto LABEL_652;
    }
  }

  HIDWORD(v295[7]) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
    }

    LODWORD(v295[7]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v100 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_656;
    }
  }

  else
  {
    LODWORD(v295[7]) = 0;
  }

LABEL_652:
  if (_SBF_Private_IsD94Like())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, 56);
    v34 = &qword_21EC960E0;
    goto LABEL_69;
  }

LABEL_656:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_660:
    v295[6] = 0;
    goto LABEL_744;
  }

  v101 = __sb__runningInSpringBoard();
  if (v101)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_660;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      v295[6] = 0x100000000;
      goto LABEL_744;
    }
  }

  HIDWORD(v295[6]) = v101 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    LODWORD(v295[6]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v118 >= *(MEMORY[0x277D66E30] + 136))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      memset(v295, 0, 48);
      v34 = &qword_21EC960E8;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v295[6]) = 0;
  }

LABEL_744:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v295[5] = 0;
      goto LABEL_754;
    }
  }

  else
  {
    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice11 userInterfaceIdiom])
    {
      v295[5] = 0x100000000;
      goto LABEL_754;
    }
  }

  HIDWORD(v295[5]) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    LODWORD(v295[5]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v111 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_758;
    }
  }

  else
  {
    LODWORD(v295[5]) = 0;
  }

LABEL_754:
  if (_SBF_Private_IsD64Like())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, 40);
    v34 = &qword_21EC960F0;
    goto LABEL_69;
  }

LABEL_758:
  v112 = __sb__runningInSpringBoard();
  if (v112)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v295[4] = 0;
      goto LABEL_768;
    }
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice12 userInterfaceIdiom])
    {
      v295[4] = 0x100000000;
      goto LABEL_768;
    }
  }

  HIDWORD(v295[4]) = v112 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    LODWORD(v295[4]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v115 >= *(MEMORY[0x277D66E30] + 136))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      memset(v295, 0, 32);
      v34 = &qword_21EC960C8;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v295[4]) = 0;
  }

LABEL_768:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v295[3] = 0;
      goto LABEL_790;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      v295[3] = 0x100000000;
      goto LABEL_790;
    }
  }

  HIDWORD(v295[3]) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen12 _referenceBounds];
    }

    LODWORD(v295[3]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v123 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_828;
    }
  }

  else
  {
    LODWORD(v295[3]) = 0;
  }

LABEL_790:
  if (_SBF_Private_IsD54())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    memset(v295, 0, 24);
    v34 = &qword_21EC960D0;
    goto LABEL_69;
  }

LABEL_828:
  v124 = __sb__runningInSpringBoard();
  if (v124)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v295[2] = 0;
      goto LABEL_858;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      v295[2] = 0x100000000;
      goto LABEL_858;
    }
  }

  HIDWORD(v295[2]) = v124 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v125 = __sb__runningInSpringBoard();
    if (v125)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    currentDevice29 = v125 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v295[2]) = currentDevice29;
    if (v128 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      v295[0] = 0;
      v295[1] = 0;
      v34 = &qword_21EC96088;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v295[2]) = 0;
  }

LABEL_858:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v295[1] = 0;
      goto LABEL_882;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      v295[1] = 0x100000000;
      goto LABEL_882;
    }
  }

  HIDWORD(v295[1]) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    LODWORD(v295[1]) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v133 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_917;
    }
  }

  else
  {
    LODWORD(v295[1]) = 0;
  }

LABEL_882:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v292 = 0;
    v295[0] = 0;
    v34 = &qword_21EC96090;
    goto LABEL_69;
  }

LABEL_917:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_921:
    v295[0] = 0;
    goto LABEL_978;
  }

  v134 = __sb__runningInSpringBoard();
  if (v134)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_921;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      v295[0] = 0x100000000;
      goto LABEL_978;
    }
  }

  HIDWORD(v295[0]) = v134 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v141 = __sb__runningInSpringBoard();
    if (v141)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen15 _referenceBounds];
    }

    currentDevice29 = v141 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v295[0]) = currentDevice29;
    if (v146 >= *(MEMORY[0x277D66E30] + 184))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v289 = 0;
      v292 = 0;
      v34 = &qword_21EC96078;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v295[0]) = 0;
  }

LABEL_978:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v292 = 0;
      goto LABEL_988;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      v292 = 0x100000000;
      goto LABEL_988;
    }
  }

  HIDWORD(v292) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    LODWORD(v292) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v142 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_992;
    }
  }

  else
  {
    LODWORD(v292) = 0;
  }

LABEL_988:
  if (_SBF_Private_IsD93Like())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v286 = 0;
    v289 = 0;
    v34 = &qword_21EC96080;
    goto LABEL_69;
  }

LABEL_992:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_996:
    v289 = 0;
    goto LABEL_1062;
  }

  v143 = __sb__runningInSpringBoard();
  if (v143)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_996;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      v289 = 0x100000000;
      goto LABEL_1062;
    }
  }

  HIDWORD(v289) = v143 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v151 = __sb__runningInSpringBoard();
    if (v151)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    currentDevice29 = v151 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v289) = currentDevice29;
    if (v156 >= *(MEMORY[0x277D66E30] + 104))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v283 = 0;
      v286 = 0;
      v34 = &qword_21EC960A8;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v289) = 0;
  }

LABEL_1062:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v286 = 0;
      goto LABEL_1072;
    }
  }

  else
  {
    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice19 userInterfaceIdiom])
    {
      v286 = 0x100000000;
      goto LABEL_1072;
    }
  }

  HIDWORD(v286) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    LODWORD(v286) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v152 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1076;
    }
  }

  else
  {
    LODWORD(v286) = 0;
  }

LABEL_1072:
  if (_SBF_Private_IsD63Like())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v280 = 0;
    v283 = 0;
    v34 = &qword_21EC960B0;
    goto LABEL_69;
  }

LABEL_1076:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1080:
    v283 = 0;
    goto LABEL_1164;
  }

  v153 = __sb__runningInSpringBoard();
  if (v153)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1080;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      v283 = 0x100000000;
      goto LABEL_1164;
    }
  }

  HIDWORD(v283) = v153 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    LODWORD(v283) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v169 >= *(MEMORY[0x277D66E30] + 216))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v277 = 0;
      v280 = 0;
      v34 = &qword_21EC960B8;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v283) = 0;
  }

LABEL_1164:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v280 = 0;
      goto LABEL_1174;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      v280 = 0x100000000;
      goto LABEL_1174;
    }
  }

  HIDWORD(v280) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    LODWORD(v280) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v161 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1178;
    }
  }

  else
  {
    LODWORD(v280) = 0;
  }

LABEL_1174:
  if (_SBF_Private_IsD23Like())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v274 = 0;
    v277 = 0;
    v34 = &qword_21EC960C0;
    goto LABEL_69;
  }

LABEL_1178:
  v162 = __sb__runningInSpringBoard();
  if (v162)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v277 = 0;
      goto LABEL_1188;
    }
  }

  else
  {
    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice22 userInterfaceIdiom])
    {
      v277 = 0x100000000;
      goto LABEL_1188;
    }
  }

  HIDWORD(v277) = v162 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v163 = __sb__runningInSpringBoard();
    if (v163)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen21 _referenceBounds];
    }

    currentDevice29 = v163 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v277) = currentDevice29;
    if (v166 >= *(MEMORY[0x277D66E30] + 120))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v271 = 0;
      v274 = 0;
      v34 = &qword_21EC96098;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v277) = 0;
  }

LABEL_1188:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v274 = 0;
      goto LABEL_1210;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      v274 = 0x100000000;
      goto LABEL_1210;
    }
  }

  HIDWORD(v274) = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    LODWORD(v274) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v174 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1248;
    }
  }

  else
  {
    LODWORD(v274) = 0;
  }

LABEL_1210:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v268 = 0;
    v271 = 0;
    v34 = &qword_21EC960A0;
    goto LABEL_69;
  }

LABEL_1248:
  v175 = __sb__runningInSpringBoard();
  if (v175)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v271 = 0;
      goto LABEL_1278;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      v271 = 0x100000000;
      goto LABEL_1278;
    }
  }

  HIDWORD(v271) = v175 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen23 _referenceBounds];
    }

    LODWORD(v271) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v178 >= *(MEMORY[0x277D66E30] + 104))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v268 = 0;
      v34 = &qword_21EC96068;
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v271) = 0;
  }

LABEL_1278:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v33 = 0;
      v268 = 0;
      goto LABEL_1300;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      v33 = 0;
      v268 = 1;
      goto LABEL_1300;
    }
  }

  v268 = currentDevice29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    v33 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v181 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1337;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_1300:
  if (_SBF_Private_IsD53())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = &qword_21EC96070;
    goto LABEL_69;
  }

LABEL_1337:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = &qword_21EC96048;
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = &qword_21EC96050;
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = &qword_21EC96038;
    goto LABEL_69;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    currentDevice31 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = &qword_21EC96040;
    goto LABEL_69;
  }

  v184 = __sb__runningInSpringBoard();
  if (v184)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_1389;
    }
  }

  else
  {
    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice26 userInterfaceIdiom])
    {
      v31 = 0;
      v32 = 1;
      goto LABEL_1389;
    }
  }

  v32 = v184 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen25 _referenceBounds];
    }

    v31 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v194 >= *(MEMORY[0x277D66E30] + 88))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v34 = &qword_21EC96058;
      goto LABEL_69;
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_1389:
  v187 = __sb__runningInSpringBoard();
  if (v187)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v29 = 0;
      v30 = 0;
      goto LABEL_1419;
    }
  }

  else
  {
    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice27 userInterfaceIdiom])
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_1419;
    }
  }

  v30 = v187 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen26 _referenceBounds];
    }

    v29 = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v197 >= *(MEMORY[0x277D66E30] + 72))
    {
      currentDevice31 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v34 = &qword_21EC96060;
      goto LABEL_69;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_1419:
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v27 = 0;
      v28 = 0;
      goto LABEL_1451;
    }
  }

  else
  {
    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice28 userInterfaceIdiom])
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_1451;
    }
  }

  v28 = currentDevice29 ^ 1;
  currentDevice29 = __sb__runningInSpringBoard();
  if (currentDevice29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen27 _referenceBounds];
  }

  v27 = currentDevice29 ^ 1;
  BSSizeRoundForScale();
  if (v190 >= *(MEMORY[0x277D66E30] + 56))
  {
    currentDevice31 = 0;
    v26 = 0;
    v34 = &qword_21EC96030;
    goto LABEL_69;
  }

LABEL_1451:
  v191 = __sb__runningInSpringBoard();
  if (v191)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      currentDevice31 = 0;
      v26 = 0;
      goto LABEL_1492;
    }
  }

  else
  {
    currentDevice29 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice29 userInterfaceIdiom])
    {
      currentDevice31 = 0;
      v26 = 1;
      goto LABEL_1492;
    }
  }

  v26 = v191 ^ 1;
  v202 = __sb__runningInSpringBoard();
  if (v202)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen28 _referenceBounds];
  }

  currentDevice31 = v202 ^ 1u;
  BSSizeRoundForScale();
  if (v203 >= *(MEMORY[0x277D66E30] + 40))
  {
    v34 = &qword_21EC96028;
    goto LABEL_1494;
  }

LABEL_1492:
  v34 = &CSQuickActionButtonDiameter;
LABEL_1494:
  v22 = mainScreen28;
LABEL_69:
  v42 = *v34;
  if (currentDevice31)
  {

    if (!v26)
    {
      goto LABEL_71;
    }
  }

  else if (!v26)
  {
LABEL_71:
    if (v27)
    {
      goto LABEL_72;
    }

    goto LABEL_178;
  }

  if (v27)
  {
LABEL_72:

    if (!v28)
    {
      goto LABEL_73;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v28)
  {
LABEL_73:
    if (v29)
    {
      goto LABEL_74;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (v29)
  {
LABEL_74:

    if (!v30)
    {
      goto LABEL_75;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (!v30)
  {
LABEL_75:
    if (v31)
    {
      goto LABEL_76;
    }

    goto LABEL_182;
  }

LABEL_181:

  if (v31)
  {
LABEL_76:

    if (!v32)
    {
      goto LABEL_77;
    }

    goto LABEL_183;
  }

LABEL_182:
  if (!v32)
  {
LABEL_77:
    if (!v33)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_183:

  if (v33)
  {
LABEL_78:
  }

LABEL_79:
  if (v268)
  {
  }

  mainScreen30 = 0x277D75000uLL;
  currentDevice30 = *&v296[44];
  if (v271)
  {
  }

  if (HIDWORD(v271))
  {
  }

  if (v274)
  {
  }

  if (HIDWORD(v274))
  {
  }

  if (v277)
  {
  }

  if (HIDWORD(v277))
  {
  }

  if (v280)
  {
  }

  if (HIDWORD(v280))
  {
  }

  if (v283)
  {
  }

  if (HIDWORD(v283))
  {
  }

  if (v286)
  {
  }

  if (HIDWORD(v286))
  {
  }

  if (v289)
  {
  }

  if (HIDWORD(v289))
  {
  }

  if (v292)
  {
  }

  if (HIDWORD(v292))
  {
  }

  if (LODWORD(v295[0]))
  {
  }

  if (HIDWORD(v295[0]))
  {
  }

  if (LODWORD(v295[1]))
  {
  }

  if (HIDWORD(v295[1]))
  {
  }

  if (LODWORD(v295[2]))
  {
  }

  if (HIDWORD(v295[2]))
  {
  }

  if (LODWORD(v295[3]))
  {
  }

  if (HIDWORD(v295[3]))
  {
  }

  if (LODWORD(v295[4]))
  {
  }

  if (HIDWORD(v295[4]))
  {
  }

  if (LODWORD(v295[5]))
  {
  }

  if (HIDWORD(v295[5]))
  {
  }

  if (LODWORD(v295[6]))
  {
  }

  if (HIDWORD(v295[6]))
  {
  }

  if (LODWORD(v295[7]))
  {
  }

  if (HIDWORD(v295[7]))
  {
  }

  if (LODWORD(v295[8]))
  {
  }

  if (HIDWORD(v295[8]))
  {
  }

  if (*v296)
  {
  }

  if (*&v296[4])
  {
  }

  if (*&v296[8])
  {
  }

  if (*&v296[12])
  {
  }

  if (*&v296[16])
  {
  }

  if (*&v296[20])
  {
  }

  if (*&v296[24])
  {
  }

  if (*&v296[28])
  {
  }

  if (*&v296[32])
  {
  }

  if (*&v296[36])
  {
  }

  if (*&v296[40])
  {

    if (!*&v296[44])
    {
      goto LABEL_171;
    }
  }

  else if (!*&v296[44])
  {
LABEL_171:
    if (!v298)
    {
      goto LABEL_173;
    }

    goto LABEL_172;
  }

  if (v298)
  {
LABEL_172:
  }

LABEL_173:
  v45 = __sb__runningInSpringBoard();
  mainScreen31 = &CSQuickActionButtonInsetY;
  if (v45)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[40] = 0;
      goto LABEL_194;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *&v296[40] = 0x100000000;
      goto LABEL_194;
    }
  }

  *&v296[44] = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice5 _referenceBounds];
    }

    *&v296[40] = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v62 == *(MEMORY[0x277D66E30] + 288) && v61 == *(MEMORY[0x277D66E30] + 296))
    {
      memset(v296, 0, 40);
      memset(v295, 0, sizeof(v295));
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96320;
      goto LABEL_248;
    }
  }

  else
  {
    *&v296[40] = 0;
  }

LABEL_194:
  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[32] = 0;
      goto LABEL_203;
    }
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen4 userInterfaceIdiom] != 1)
    {
      *&v296[32] = 0x100000000;
      goto LABEL_203;
    }
  }

  *&v296[36] = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice8 _referenceBounds];
    }

    *&v296[32] = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 440))
    {
      memset(v296, 0, 32);
      memset(v295, 0, sizeof(v295));
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96348;
      goto LABEL_248;
    }
  }

  else
  {
    *&v296[32] = 0;
  }

LABEL_203:
  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[24] = 0;
      goto LABEL_212;
    }
  }

  else
  {
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] != 1)
    {
      *&v296[24] = 0x100000000;
      goto LABEL_212;
    }
  }

  *&v296[28] = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice11 _referenceBounds];
    }

    *&v296[24] = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v64 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v296, 0, 24);
      memset(v295, 0, sizeof(v295));
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96338;
      goto LABEL_248;
    }
  }

  else
  {
    *&v296[24] = 0;
  }

LABEL_212:
  v50 = __sb__runningInSpringBoard();
  if (v50)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[16] = 0;
      goto LABEL_221;
    }
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen5 userInterfaceIdiom] != 1)
    {
      *&v296[16] = 0x100000000;
      goto LABEL_221;
    }
  }

  *&v296[20] = v50 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 _referenceBounds];
  }

  *&v296[16] = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v51 >= *(MEMORY[0x277D66E30] + 280))
  {
    *v296 = 0;
    *&v296[8] = 0;
    memset(v295, 0, sizeof(v295));
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96340;
    goto LABEL_248;
  }

LABEL_221:
  v52 = __sb__runningInSpringBoard();
  if (v52)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[8] = 0;
      goto LABEL_231;
    }
  }

  else
  {
    mainScreen = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen userInterfaceIdiom] != 1)
    {
      *&v296[8] = 0x100000000;
      goto LABEL_231;
    }
  }

  *&v296[12] = v52 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice9 _referenceBounds];
  }

  *&v296[8] = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v59 >= *(MEMORY[0x277D66E30] + 264))
  {
    *v296 = 0;
    memset(v295, 0, sizeof(v295));
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96330;
    goto LABEL_248;
  }

LABEL_231:
  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *v296 = 0;
      goto LABEL_546;
    }
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen2 userInterfaceIdiom] != 1)
    {
      *v296 = 0x100000000;
      goto LABEL_546;
    }
  }

  *&v296[4] = v60 ^ 1;
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice12 _referenceBounds];
  }

  *v296 = mainScreen29 ^ 1;
  BSSizeRoundForScale();
  if (v90 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v295, 0, sizeof(v295));
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96328;
    goto LABEL_248;
  }

LABEL_546:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_548;
    }

LABEL_554:
    memset(v295, 0, 68);
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96318;
    HIDWORD(v295[8]) = mainScreen29 ^ 1;
    goto LABEL_248;
  }

  mainScreen6 = [MEMORY[0x277D75418] currentDevice];
  if ([mainScreen6 userInterfaceIdiom] == 1)
  {
    goto LABEL_554;
  }

LABEL_548:
  HIDWORD(v295[8]) = mainScreen29 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_552:
    *(&v295[7] + 4) = 0;
    goto LABEL_592;
  }

  v91 = __sb__runningInSpringBoard();
  if (v91)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_552;
    }
  }

  else
  {
    mainScreen8 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen8 userInterfaceIdiom])
    {
      HIDWORD(v295[7]) = 0;
      LODWORD(v295[8]) = 1;
      goto LABEL_592;
    }
  }

  LODWORD(v295[8]) = v91 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v295[7]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v102 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v295, 0, 60);
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC962F8;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v295[7]) = 0;
  }

LABEL_592:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[6] + 4) = 0;
      goto LABEL_602;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v295[6]) = 0;
      LODWORD(v295[7]) = 1;
      goto LABEL_602;
    }
  }

  LODWORD(v295[7]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    HIDWORD(v295[6]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v96 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_606;
    }
  }

  else
  {
    HIDWORD(v295[6]) = 0;
  }

LABEL_602:
  if (_SBF_Private_IsD94Like())
  {
    memset(v295, 0, 52);
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96300;
    goto LABEL_248;
  }

LABEL_606:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_610:
    *(&v295[5] + 4) = 0;
    goto LABEL_676;
  }

  v97 = __sb__runningInSpringBoard();
  if (v97)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_610;
    }
  }

  else
  {
    mainScreen7 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen7 userInterfaceIdiom])
    {
      HIDWORD(v295[5]) = 0;
      LODWORD(v295[6]) = 1;
      goto LABEL_676;
    }
  }

  LODWORD(v295[6]) = v97 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v105 = __sb__runningInSpringBoard();
    if (v105)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    mainScreen29 = v105 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v295[5]) = mainScreen29;
    if (v116 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v295, 0, 44);
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96308;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v295[5]) = 0;
  }

LABEL_676:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[4] + 4) = 0;
      goto LABEL_686;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v295[4]) = 0;
      LODWORD(v295[5]) = 1;
      goto LABEL_686;
    }
  }

  LODWORD(v295[5]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    HIDWORD(v295[4]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v106 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_690;
    }
  }

  else
  {
    HIDWORD(v295[4]) = 0;
  }

LABEL_686:
  if (_SBF_Private_IsD64Like())
  {
    memset(v295, 0, 36);
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96310;
    goto LABEL_248;
  }

LABEL_690:
  v107 = __sb__runningInSpringBoard();
  if (v107)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[3] + 4) = 0;
      goto LABEL_700;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v295[3]) = 0;
      LODWORD(v295[4]) = 1;
      goto LABEL_700;
    }
  }

  LODWORD(v295[4]) = v107 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice19 _referenceBounds];
    }

    HIDWORD(v295[3]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v113 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v295, 0, 28);
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC962E8;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v295[3]) = 0;
  }

LABEL_700:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[2] + 4) = 0;
      goto LABEL_778;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v295[2]) = 0;
      LODWORD(v295[3]) = 1;
      goto LABEL_778;
    }
  }

  LODWORD(v295[3]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    HIDWORD(v295[2]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v119 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_812;
    }
  }

  else
  {
    HIDWORD(v295[2]) = 0;
  }

LABEL_778:
  if (_SBF_Private_IsD54())
  {
    memset(v295, 0, 20);
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC962F0;
    goto LABEL_248;
  }

LABEL_812:
  v120 = __sb__runningInSpringBoard();
  if (v120)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[1] + 4) = 0;
      goto LABEL_838;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v295[1]) = 0;
      LODWORD(v295[2]) = 1;
      goto LABEL_838;
    }
  }

  LODWORD(v295[2]) = v120 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v295[1]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v126 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      *(v295 + 4) = 0;
      LODWORD(v295[0]) = 0;
      v293 = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC962A8;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v295[1]) = 0;
  }

LABEL_838:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v295 + 4) = 0;
      goto LABEL_868;
    }
  }

  else
  {
    mainScreen12 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen12 userInterfaceIdiom])
    {
      HIDWORD(v295[0]) = 0;
      LODWORD(v295[1]) = 1;
      goto LABEL_868;
    }
  }

  LODWORD(v295[1]) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice22 _referenceBounds];
    }

    HIDWORD(v295[0]) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v129 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_899;
    }
  }

  else
  {
    HIDWORD(v295[0]) = 0;
  }

LABEL_868:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v295[0]) = 0;
    v293 = 0;
    v287 = 0;
    v290 = 0;
    v281 = 0;
    v284 = 0;
    v275 = 0;
    v278 = 0;
    v272 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC962B0;
    goto LABEL_248;
  }

LABEL_899:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_903:
    LODWORD(v295[0]) = 0;
    HIDWORD(v293) = 0;
    goto LABEL_928;
  }

  v130 = __sb__runningInSpringBoard();
  if (v130)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_903;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v293) = 0;
      LODWORD(v295[0]) = 1;
      goto LABEL_928;
    }
  }

  LODWORD(v295[0]) = v130 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v135 = __sb__runningInSpringBoard();
    if (v135)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    mainScreen29 = v135 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v293) = mainScreen29;
    if (v144 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(v293) = 0;
      v287 = 0;
      v290 = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96298;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v293) = 0;
  }

LABEL_928:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v293) = 0;
      HIDWORD(v290) = 0;
      goto LABEL_938;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      HIDWORD(v290) = 0;
      LODWORD(v293) = 1;
      goto LABEL_938;
    }
  }

  LODWORD(v293) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    HIDWORD(v290) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v136 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_942;
    }
  }

  else
  {
    HIDWORD(v290) = 0;
  }

LABEL_938:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(v290) = 0;
    v284 = 0;
    v287 = 0;
    v278 = 0;
    v281 = 0;
    v272 = 0;
    v275 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC962A0;
    goto LABEL_248;
  }

LABEL_942:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_946:
    LODWORD(v290) = 0;
    HIDWORD(v287) = 0;
    goto LABEL_1012;
  }

  v137 = __sb__runningInSpringBoard();
  if (v137)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_946;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v287) = 0;
      LODWORD(v290) = 1;
      goto LABEL_1012;
    }
  }

  LODWORD(v290) = v137 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v287) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v154 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v287) = 0;
      v281 = 0;
      v284 = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC962C8;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v287) = 0;
  }

LABEL_1012:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v287) = 0;
      HIDWORD(v284) = 0;
      goto LABEL_1022;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v284) = 0;
      LODWORD(v287) = 1;
      goto LABEL_1022;
    }
  }

  LODWORD(v287) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v284) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v147 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1026;
    }
  }

  else
  {
    HIDWORD(v284) = 0;
  }

LABEL_1022:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v284) = 0;
    v278 = 0;
    v281 = 0;
    v272 = 0;
    v275 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC962D0;
    goto LABEL_248;
  }

LABEL_1026:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1030:
    LODWORD(v284) = 0;
    HIDWORD(v281) = 0;
    goto LABEL_1096;
  }

  v148 = __sb__runningInSpringBoard();
  if (v148)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1030;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v281) = 0;
      LODWORD(v284) = 1;
      goto LABEL_1096;
    }
  }

  LODWORD(v284) = v148 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice26 _referenceBounds];
    }

    HIDWORD(v281) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v167 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v281) = 0;
      v275 = 0;
      v278 = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC962D8;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v281) = 0;
  }

LABEL_1096:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v281) = 0;
      HIDWORD(v278) = 0;
      goto LABEL_1106;
    }
  }

  else
  {
    mainScreen15 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen15 userInterfaceIdiom])
    {
      HIDWORD(v278) = 0;
      LODWORD(v281) = 1;
      goto LABEL_1106;
    }
  }

  LODWORD(v281) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v278) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v157 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1110;
    }
  }

  else
  {
    HIDWORD(v278) = 0;
  }

LABEL_1106:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v278) = 0;
    v272 = 0;
    v275 = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC962E0;
    goto LABEL_248;
  }

LABEL_1110:
  v158 = __sb__runningInSpringBoard();
  if (v158)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v278) = 0;
      HIDWORD(v275) = 0;
      goto LABEL_1120;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v275) = 0;
      LODWORD(v278) = 1;
      goto LABEL_1120;
    }
  }

  LODWORD(v278) = v158 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    HIDWORD(v275) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v164 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v275) = 0;
      v272 = 0;
      v269 = 0;
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC962B8;
      goto LABEL_248;
    }
  }

  else
  {
    HIDWORD(v275) = 0;
  }

LABEL_1120:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v275) = 0;
      HIDWORD(v272) = 0;
      goto LABEL_1198;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v272) = 0;
      LODWORD(v275) = 1;
      goto LABEL_1198;
    }
  }

  LODWORD(v275) = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice27 _referenceBounds];
    }

    HIDWORD(v272) = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v170 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1232;
    }
  }

  else
  {
    HIDWORD(v272) = 0;
  }

LABEL_1198:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v272) = 0;
    v269 = 0;
    v266 = 0;
    v263 = 0;
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC962C0;
    goto LABEL_248;
  }

LABEL_1232:
  v171 = __sb__runningInSpringBoard();
  if (v171)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v272) = 0;
      v269 = 0;
      goto LABEL_1258;
    }
  }

  else
  {
    mainScreen21 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen21 userInterfaceIdiom])
    {
      v269 = 0;
      LODWORD(v272) = 1;
      goto LABEL_1258;
    }
  }

  LODWORD(v272) = v171 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice28 _referenceBounds];
    }

    v269 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 104))
    {
      v266 = 0;
      v263 = 0;
      v260 = 0;
      v257 = 0;
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96288;
      goto LABEL_248;
    }
  }

  else
  {
    v269 = 0;
  }

LABEL_1258:
  mainScreen29 = __sb__runningInSpringBoard();
  if (mainScreen29)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v266 = 0;
      v263 = 0;
      goto LABEL_1288;
    }
  }

  else
  {
    mainScreen23 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen23 userInterfaceIdiom])
    {
      v263 = 0;
      v266 = 1;
      goto LABEL_1288;
    }
  }

  v266 = mainScreen29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen29 = __sb__runningInSpringBoard();
    if (mainScreen29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
    }

    v263 = mainScreen29 ^ 1;
    BSSizeRoundForScale();
    if (v179 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1313;
    }
  }

  else
  {
    v263 = 0;
  }

LABEL_1288:
  if (_SBF_Private_IsD53())
  {
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96290;
    goto LABEL_248;
  }

LABEL_1313:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96268;
    goto LABEL_248;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96270;
    goto LABEL_248;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96258;
    goto LABEL_248;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v260 = 0;
    v257 = 0;
    v298 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96260;
    goto LABEL_248;
  }

  v182 = __sb__runningInSpringBoard();
  if (v182)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v260 = 0;
      v257 = 0;
      goto LABEL_1369;
    }
  }

  else
  {
    mainScreen25 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen25 userInterfaceIdiom])
    {
      v257 = 0;
      v260 = 1;
      goto LABEL_1369;
    }
  }

  v260 = v182 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen30 = __sb__runningInSpringBoard();
    if (mainScreen30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen28 _referenceBounds];
    }

    v257 = mainScreen30 ^ 1;
    BSSizeRoundForScale();
    if (v192 >= *(MEMORY[0x277D66E30] + 88))
    {
      v298 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96278;
      goto LABEL_248;
    }
  }

  else
  {
    v257 = 0;
  }

LABEL_1369:
  v185 = __sb__runningInSpringBoard();
  if (v185)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v298 = 0;
      v53 = 0;
      goto LABEL_1399;
    }
  }

  else
  {
    mainScreen26 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen26 userInterfaceIdiom])
    {
      v53 = 0;
      v298 = 1;
      goto LABEL_1399;
    }
  }

  v298 = v185 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen30 = __sb__runningInSpringBoard();
    if (mainScreen30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen29 _referenceBounds];
    }

    v53 = mainScreen30 ^ 1;
    BSSizeRoundForScale();
    if (v195 >= *(MEMORY[0x277D66E30] + 72))
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = &qword_21EC96280;
      goto LABEL_248;
    }
  }

  else
  {
    v53 = 0;
  }

LABEL_1399:
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v54 = 0;
      v55 = 0;
      goto LABEL_1429;
    }
  }

  else
  {
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom])
    {
      v55 = 0;
      v54 = 1;
      goto LABEL_1429;
    }
  }

  v54 = mainScreen30 ^ 1;
  mainScreen31 = __sb__runningInSpringBoard();
  if (mainScreen31)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen30 _referenceBounds];
  }

  v55 = mainScreen31 ^ 1;
  BSSizeRoundForScale();
  if (v188 >= *(MEMORY[0x277D66E30] + 56))
  {
    v56 = 0;
    v57 = 0;
    v58 = &qword_21EC96250;
    goto LABEL_248;
  }

LABEL_1429:
  mainScreen31 = __sb__runningInSpringBoard();
  if (mainScreen31)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v56 = 0;
      v57 = 0;
LABEL_1480:
      v58 = &CSQuickActionButtonInsetY;
      goto LABEL_248;
    }
  }

  else
  {
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom])
    {
      v57 = 0;
      v56 = 1;
      goto LABEL_1480;
    }
  }

  v56 = mainScreen31 ^ 1;
  v198 = __sb__runningInSpringBoard();
  if (v198)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen31 _referenceBounds];
  }

  v57 = v198 ^ 1;
  BSSizeRoundForScale();
  if (v199 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_1480;
  }

  v58 = &qword_21EC96248;
LABEL_248:
  v15 = *v58;
  if (v57)
  {
  }

  if (v56)
  {
  }

  if (v55)
  {

    if (!v54)
    {
      goto LABEL_254;
    }
  }

  else if (!v54)
  {
LABEL_254:
    if (!v53)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

  if (v53)
  {
LABEL_255:
  }

LABEL_256:
  if (v298)
  {
  }

  if (v257)
  {
  }

  if (v260)
  {
  }

  if (v263)
  {
  }

  if (v266)
  {
  }

  if (v269)
  {
  }

  if (v272)
  {
  }

  if (HIDWORD(v272))
  {
  }

  if (v275)
  {
  }

  if (HIDWORD(v275))
  {
  }

  if (v278)
  {
  }

  if (HIDWORD(v278))
  {
  }

  if (v281)
  {
  }

  if (HIDWORD(v281))
  {
  }

  if (v284)
  {
  }

  if (HIDWORD(v284))
  {
  }

  if (v287)
  {
  }

  if (HIDWORD(v287))
  {
  }

  if (v290)
  {
  }

  if (HIDWORD(v290))
  {
  }

  if (v293)
  {
  }

  if (HIDWORD(v293))
  {
  }

  if (LODWORD(v295[0]))
  {
  }

  if (HIDWORD(v295[0]))
  {
  }

  if (LODWORD(v295[1]))
  {
  }

  if (HIDWORD(v295[1]))
  {
  }

  if (LODWORD(v295[2]))
  {
  }

  if (HIDWORD(v295[2]))
  {
  }

  if (LODWORD(v295[3]))
  {
  }

  if (HIDWORD(v295[3]))
  {
  }

  if (LODWORD(v295[4]))
  {
  }

  if (HIDWORD(v295[4]))
  {
  }

  if (LODWORD(v295[5]))
  {
  }

  if (HIDWORD(v295[5]))
  {
  }

  if (LODWORD(v295[6]))
  {
  }

  if (HIDWORD(v295[6]))
  {
  }

  if (LODWORD(v295[7]))
  {
  }

  if (HIDWORD(v295[7]))
  {
  }

  if (LODWORD(v295[8]))
  {
  }

  if (HIDWORD(v295[8]))
  {
  }

  if (*v296)
  {
  }

  if (*&v296[4])
  {
  }

  if (*&v296[8])
  {
  }

  if (*&v296[12])
  {
  }

  if (*&v296[16])
  {
  }

  if (*&v296[20])
  {
  }

  if (*&v296[24])
  {
  }

  if (*&v296[28])
  {
  }

  if (*&v296[32])
  {
  }

  if (*&v296[36])
  {
  }

  if (*&v296[40])
  {
  }

  if (*&v296[44])
  {
  }

  v65 = __sb__runningInSpringBoard();
  mainScreen33 = &CSQuickActionButtonInsetX;
  if (v65)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[40] = 0;
      goto LABEL_372;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {
      *&v296[40] = 0x100000000;
      goto LABEL_372;
    }
  }

  *&v296[44] = v65 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice5 _referenceBounds];
    }

    *&v296[40] = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v82 == *(MEMORY[0x277D66E30] + 288) && v81 == *(MEMORY[0x277D66E30] + 296))
    {
      memset(v296, 0, 40);
      memset(v295, 0, sizeof(v295));
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96210;
      goto LABEL_426;
    }
  }

  else
  {
    *&v296[40] = 0;
  }

LABEL_372:
  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[32] = 0;
      goto LABEL_381;
    }
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen4 userInterfaceIdiom] != 1)
    {
      *&v296[32] = 0x100000000;
      goto LABEL_381;
    }
  }

  *&v296[36] = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice8 _referenceBounds];
    }

    *&v296[32] = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v83 >= *(MEMORY[0x277D66E30] + 440))
    {
      memset(v296, 0, 32);
      memset(v295, 0, sizeof(v295));
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96238;
      goto LABEL_426;
    }
  }

  else
  {
    *&v296[32] = 0;
  }

LABEL_381:
  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[24] = 0;
      goto LABEL_390;
    }
  }

  else
  {
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice7 userInterfaceIdiom] != 1)
    {
      *&v296[24] = 0x100000000;
      goto LABEL_390;
    }
  }

  *&v296[28] = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice11 _referenceBounds];
    }

    *&v296[24] = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v84 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v296, 0, 24);
      memset(v295, 0, sizeof(v295));
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96228;
      goto LABEL_426;
    }
  }

  else
  {
    *&v296[24] = 0;
  }

LABEL_390:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[16] = 0;
      goto LABEL_399;
    }
  }

  else
  {
    mainScreen5 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen5 userInterfaceIdiom] != 1)
    {
      *&v296[16] = 0x100000000;
      goto LABEL_399;
    }
  }

  *&v296[20] = v70 ^ 1;
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 _referenceBounds];
  }

  *&v296[16] = mainScreen32 ^ 1;
  BSSizeRoundForScale();
  if (v71 >= *(MEMORY[0x277D66E30] + 280))
  {
    *v296 = 0;
    *&v296[8] = 0;
    memset(v295, 0, sizeof(v295));
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96230;
    goto LABEL_426;
  }

LABEL_399:
  v72 = __sb__runningInSpringBoard();
  if (v72)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v296[8] = 0;
      goto LABEL_409;
    }
  }

  else
  {
    mainScreen = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen userInterfaceIdiom] != 1)
    {
      *&v296[8] = 0x100000000;
      goto LABEL_409;
    }
  }

  *&v296[12] = v72 ^ 1;
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice9 _referenceBounds];
  }

  *&v296[8] = mainScreen32 ^ 1;
  BSSizeRoundForScale();
  if (v79 >= *(MEMORY[0x277D66E30] + 264))
  {
    *v296 = 0;
    memset(v295, 0, sizeof(v295));
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96220;
    goto LABEL_426;
  }

LABEL_409:
  v80 = __sb__runningInSpringBoard();
  if (v80)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *v296 = 0;
      goto LABEL_558;
    }
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen2 userInterfaceIdiom] != 1)
    {
      *v296 = 0x100000000;
      goto LABEL_558;
    }
  }

  *&v296[4] = v80 ^ 1;
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice12 = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice12 _referenceBounds];
  }

  *v296 = mainScreen32 ^ 1;
  BSSizeRoundForScale();
  if (v92 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v295, 0, sizeof(v295));
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96218;
    goto LABEL_426;
  }

LABEL_558:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_560;
    }

LABEL_566:
    memset(v295, 0, 68);
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96208;
    HIDWORD(v295[8]) = mainScreen32 ^ 1;
    goto LABEL_426;
  }

  mainScreen6 = [MEMORY[0x277D75418] currentDevice];
  if ([mainScreen6 userInterfaceIdiom] == 1)
  {
    goto LABEL_566;
  }

LABEL_560:
  HIDWORD(v295[8]) = mainScreen32 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_564:
    *(&v295[7] + 4) = 0;
    goto LABEL_617;
  }

  v93 = __sb__runningInSpringBoard();
  if (v93)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_564;
    }
  }

  else
  {
    mainScreen8 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen8 userInterfaceIdiom])
    {
      HIDWORD(v295[7]) = 0;
      LODWORD(v295[8]) = 1;
      goto LABEL_617;
    }
  }

  LODWORD(v295[8]) = v93 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen11 _referenceBounds];
    }

    HIDWORD(v295[7]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v103 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v295, 0, 60);
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC961E8;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v295[7]) = 0;
  }

LABEL_617:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[6] + 4) = 0;
      goto LABEL_627;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice10 userInterfaceIdiom])
    {
      HIDWORD(v295[6]) = 0;
      LODWORD(v295[7]) = 1;
      goto LABEL_627;
    }
  }

  LODWORD(v295[7]) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    HIDWORD(v295[6]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v98 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_631;
    }
  }

  else
  {
    HIDWORD(v295[6]) = 0;
  }

LABEL_627:
  if (_SBF_Private_IsD94Like())
  {
    memset(v295, 0, 52);
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC961F0;
    goto LABEL_426;
  }

LABEL_631:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_635:
    *(&v295[5] + 4) = 0;
    goto LABEL_710;
  }

  v99 = __sb__runningInSpringBoard();
  if (v99)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_635;
    }
  }

  else
  {
    mainScreen7 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen7 userInterfaceIdiom])
    {
      HIDWORD(v295[5]) = 0;
      LODWORD(v295[6]) = 1;
      goto LABEL_710;
    }
  }

  LODWORD(v295[6]) = v99 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v108 = __sb__runningInSpringBoard();
    if (v108)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen13 _referenceBounds];
    }

    mainScreen32 = v108 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v295[5]) = mainScreen32;
    if (v117 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v295, 0, 44);
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC961F8;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v295[5]) = 0;
  }

LABEL_710:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[4] + 4) = 0;
      goto LABEL_720;
    }
  }

  else
  {
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice13 userInterfaceIdiom])
    {
      HIDWORD(v295[4]) = 0;
      LODWORD(v295[5]) = 1;
      goto LABEL_720;
    }
  }

  LODWORD(v295[5]) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    HIDWORD(v295[4]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v109 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_724;
    }
  }

  else
  {
    HIDWORD(v295[4]) = 0;
  }

LABEL_720:
  if (_SBF_Private_IsD64Like())
  {
    memset(v295, 0, 36);
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96200;
    goto LABEL_426;
  }

LABEL_724:
  v110 = __sb__runningInSpringBoard();
  if (v110)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[3] + 4) = 0;
      goto LABEL_734;
    }
  }

  else
  {
    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice14 userInterfaceIdiom])
    {
      HIDWORD(v295[3]) = 0;
      LODWORD(v295[4]) = 1;
      goto LABEL_734;
    }
  }

  LODWORD(v295[4]) = v110 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice19 _referenceBounds];
    }

    HIDWORD(v295[3]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v114 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v295, 0, 28);
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC961D8;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v295[3]) = 0;
  }

LABEL_734:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[2] + 4) = 0;
      goto LABEL_784;
    }
  }

  else
  {
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice15 userInterfaceIdiom])
    {
      HIDWORD(v295[2]) = 0;
      LODWORD(v295[3]) = 1;
      goto LABEL_784;
    }
  }

  LODWORD(v295[3]) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen14 _referenceBounds];
    }

    HIDWORD(v295[2]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v121 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_820;
    }
  }

  else
  {
    HIDWORD(v295[2]) = 0;
  }

LABEL_784:
  if (_SBF_Private_IsD54())
  {
    memset(v295, 0, 20);
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC961E0;
    goto LABEL_426;
  }

LABEL_820:
  v122 = __sb__runningInSpringBoard();
  if (v122)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v295[1] + 4) = 0;
      goto LABEL_848;
    }
  }

  else
  {
    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice17 userInterfaceIdiom])
    {
      HIDWORD(v295[1]) = 0;
      LODWORD(v295[2]) = 1;
      goto LABEL_848;
    }
  }

  LODWORD(v295[2]) = v122 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen16 _referenceBounds];
    }

    HIDWORD(v295[1]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v127 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      *(v295 + 4) = 0;
      LODWORD(v295[0]) = 0;
      v294 = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96198;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v295[1]) = 0;
  }

LABEL_848:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v295 + 4) = 0;
      goto LABEL_875;
    }
  }

  else
  {
    mainScreen12 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen12 userInterfaceIdiom])
    {
      HIDWORD(v295[0]) = 0;
      LODWORD(v295[1]) = 1;
      goto LABEL_875;
    }
  }

  LODWORD(v295[1]) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice22 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice22 _referenceBounds];
    }

    HIDWORD(v295[0]) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v131 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_908;
    }
  }

  else
  {
    HIDWORD(v295[0]) = 0;
  }

LABEL_875:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    LODWORD(v295[0]) = 0;
    v294 = 0;
    v288 = 0;
    v291 = 0;
    v282 = 0;
    v285 = 0;
    v276 = 0;
    v279 = 0;
    v273 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC961A0;
    goto LABEL_426;
  }

LABEL_908:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_912:
    LODWORD(v295[0]) = 0;
    HIDWORD(v294) = 0;
    goto LABEL_953;
  }

  v132 = __sb__runningInSpringBoard();
  if (v132)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_912;
    }
  }

  else
  {
    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice18 userInterfaceIdiom])
    {
      HIDWORD(v294) = 0;
      LODWORD(v295[0]) = 1;
      goto LABEL_953;
    }
  }

  LODWORD(v295[0]) = v132 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v138 = __sb__runningInSpringBoard();
    if (v138)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen17 _referenceBounds];
    }

    mainScreen32 = v138 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v294) = mainScreen32;
    if (v145 >= *(MEMORY[0x277D66E30] + 184))
    {
      LODWORD(v294) = 0;
      v288 = 0;
      v291 = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96188;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v294) = 0;
  }

LABEL_953:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v294) = 0;
      HIDWORD(v291) = 0;
      goto LABEL_963;
    }
  }

  else
  {
    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice16 userInterfaceIdiom])
    {
      HIDWORD(v291) = 0;
      LODWORD(v294) = 1;
      goto LABEL_963;
    }
  }

  LODWORD(v294) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen18 _referenceBounds];
    }

    HIDWORD(v291) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v139 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_967;
    }
  }

  else
  {
    HIDWORD(v291) = 0;
  }

LABEL_963:
  if (_SBF_Private_IsD93Like())
  {
    LODWORD(v291) = 0;
    v285 = 0;
    v288 = 0;
    v279 = 0;
    v282 = 0;
    v273 = 0;
    v276 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96190;
    goto LABEL_426;
  }

LABEL_967:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_971:
    LODWORD(v291) = 0;
    HIDWORD(v288) = 0;
    goto LABEL_1037;
  }

  v140 = __sb__runningInSpringBoard();
  if (v140)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_971;
    }
  }

  else
  {
    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice20 userInterfaceIdiom])
    {
      HIDWORD(v288) = 0;
      LODWORD(v291) = 1;
      goto LABEL_1037;
    }
  }

  LODWORD(v291) = v140 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen19 _referenceBounds];
    }

    HIDWORD(v288) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v155 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v288) = 0;
      v282 = 0;
      v285 = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC961B8;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v288) = 0;
  }

LABEL_1037:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v288) = 0;
      HIDWORD(v285) = 0;
      goto LABEL_1047;
    }
  }

  else
  {
    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice21 userInterfaceIdiom])
    {
      HIDWORD(v285) = 0;
      LODWORD(v288) = 1;
      goto LABEL_1047;
    }
  }

  LODWORD(v288) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen20 _referenceBounds];
    }

    HIDWORD(v285) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v149 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1051;
    }
  }

  else
  {
    HIDWORD(v285) = 0;
  }

LABEL_1047:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v285) = 0;
    v279 = 0;
    v282 = 0;
    v273 = 0;
    v276 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC961C0;
    goto LABEL_426;
  }

LABEL_1051:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1055:
    LODWORD(v285) = 0;
    HIDWORD(v282) = 0;
    goto LABEL_1130;
  }

  v150 = __sb__runningInSpringBoard();
  if (v150)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1055;
    }
  }

  else
  {
    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice24 userInterfaceIdiom])
    {
      HIDWORD(v282) = 0;
      LODWORD(v285) = 1;
      goto LABEL_1130;
    }
  }

  LODWORD(v285) = v150 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice26 _referenceBounds];
    }

    HIDWORD(v282) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v168 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v282) = 0;
      v276 = 0;
      v279 = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC961C8;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v282) = 0;
  }

LABEL_1130:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v282) = 0;
      HIDWORD(v279) = 0;
      goto LABEL_1140;
    }
  }

  else
  {
    mainScreen15 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen15 userInterfaceIdiom])
    {
      HIDWORD(v279) = 0;
      LODWORD(v282) = 1;
      goto LABEL_1140;
    }
  }

  LODWORD(v282) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen22 _referenceBounds];
    }

    HIDWORD(v279) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v159 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1144;
    }
  }

  else
  {
    HIDWORD(v279) = 0;
  }

LABEL_1140:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v279) = 0;
    v273 = 0;
    v276 = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC961D0;
    goto LABEL_426;
  }

LABEL_1144:
  v160 = __sb__runningInSpringBoard();
  if (v160)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v279) = 0;
      HIDWORD(v276) = 0;
      goto LABEL_1154;
    }
  }

  else
  {
    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice23 userInterfaceIdiom])
    {
      HIDWORD(v276) = 0;
      LODWORD(v279) = 1;
      goto LABEL_1154;
    }
  }

  LODWORD(v279) = v160 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen24 _referenceBounds];
    }

    HIDWORD(v276) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v165 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v276) = 0;
      v273 = 0;
      v270 = 0;
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC961A8;
      goto LABEL_426;
    }
  }

  else
  {
    HIDWORD(v276) = 0;
  }

LABEL_1154:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v276) = 0;
      HIDWORD(v273) = 0;
      goto LABEL_1204;
    }
  }

  else
  {
    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice25 userInterfaceIdiom])
    {
      HIDWORD(v273) = 0;
      LODWORD(v276) = 1;
      goto LABEL_1204;
    }
  }

  LODWORD(v276) = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice27 _referenceBounds];
    }

    HIDWORD(v273) = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v172 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1240;
    }
  }

  else
  {
    HIDWORD(v273) = 0;
  }

LABEL_1204:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v273) = 0;
    v270 = 0;
    v267 = 0;
    v264 = 0;
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC961B0;
    goto LABEL_426;
  }

LABEL_1240:
  v173 = __sb__runningInSpringBoard();
  if (v173)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v273) = 0;
      v270 = 0;
      goto LABEL_1268;
    }
  }

  else
  {
    mainScreen21 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen21 userInterfaceIdiom])
    {
      v270 = 0;
      LODWORD(v273) = 1;
      goto LABEL_1268;
    }
  }

  LODWORD(v273) = v173 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice28 _referenceBounds];
    }

    v270 = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v177 >= *(MEMORY[0x277D66E30] + 104))
    {
      v267 = 0;
      v264 = 0;
      v261 = 0;
      v258 = 0;
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96178;
      goto LABEL_426;
    }
  }

  else
  {
    v270 = 0;
  }

LABEL_1268:
  mainScreen32 = __sb__runningInSpringBoard();
  if (mainScreen32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v267 = 0;
      v264 = 0;
      goto LABEL_1294;
    }
  }

  else
  {
    mainScreen23 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen23 userInterfaceIdiom])
    {
      v264 = 0;
      v267 = 1;
      goto LABEL_1294;
    }
  }

  v267 = mainScreen32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen32 = __sb__runningInSpringBoard();
    if (mainScreen32)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen27 _referenceBounds];
    }

    v264 = mainScreen32 ^ 1;
    BSSizeRoundForScale();
    if (v180 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1325;
    }
  }

  else
  {
    v264 = 0;
  }

LABEL_1294:
  if (_SBF_Private_IsD53())
  {
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96180;
    goto LABEL_426;
  }

LABEL_1325:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96158;
    goto LABEL_426;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96160;
    goto LABEL_426;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96148;
    goto LABEL_426;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v261 = 0;
    v258 = 0;
    v298 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96150;
    goto LABEL_426;
  }

  v183 = __sb__runningInSpringBoard();
  if (v183)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v261 = 0;
      v258 = 0;
      goto LABEL_1379;
    }
  }

  else
  {
    mainScreen25 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen25 userInterfaceIdiom])
    {
      v258 = 0;
      v261 = 1;
      goto LABEL_1379;
    }
  }

  v261 = v183 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen30 = __sb__runningInSpringBoard();
    if (mainScreen30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen28 _referenceBounds];
    }

    v258 = mainScreen30 ^ 1;
    BSSizeRoundForScale();
    if (v193 >= *(MEMORY[0x277D66E30] + 88))
    {
      v298 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96168;
      goto LABEL_426;
    }
  }

  else
  {
    v258 = 0;
  }

LABEL_1379:
  v186 = __sb__runningInSpringBoard();
  if (v186)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v298 = 0;
      v73 = 0;
      goto LABEL_1409;
    }
  }

  else
  {
    mainScreen26 = [MEMORY[0x277D75418] currentDevice];
    if ([mainScreen26 userInterfaceIdiom])
    {
      v73 = 0;
      v298 = 1;
      goto LABEL_1409;
    }
  }

  v298 = v186 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen30 = __sb__runningInSpringBoard();
    if (mainScreen30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen32 _referenceBounds];
    }

    v73 = mainScreen30 ^ 1;
    BSSizeRoundForScale();
    if (v196 >= *(MEMORY[0x277D66E30] + 72))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = &qword_21EC96170;
      goto LABEL_426;
    }
  }

  else
  {
    v73 = 0;
  }

LABEL_1409:
  mainScreen30 = __sb__runningInSpringBoard();
  if (mainScreen30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v74 = 0;
      v75 = 0;
      goto LABEL_1440;
    }
  }

  else
  {
    currentDevice30 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice30 userInterfaceIdiom])
    {
      v75 = 0;
      v74 = 1;
      goto LABEL_1440;
    }
  }

  v74 = mainScreen30 ^ 1;
  mainScreen33 = __sb__runningInSpringBoard();
  if (mainScreen33)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen30 _referenceBounds];
  }

  v75 = mainScreen33 ^ 1;
  BSSizeRoundForScale();
  if (v189 >= *(MEMORY[0x277D66E30] + 56))
  {
    v76 = 0;
    v77 = 0;
    v78 = &qword_21EC96140;
    goto LABEL_426;
  }

LABEL_1440:
  mainScreen33 = __sb__runningInSpringBoard();
  if (mainScreen33)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v76 = 0;
      v77 = 0;
LABEL_1486:
      v78 = &CSQuickActionButtonInsetX;
      goto LABEL_426;
    }
  }

  else
  {
    currentDevice31 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice31 userInterfaceIdiom])
    {
      v77 = 0;
      v76 = 1;
      goto LABEL_1486;
    }
  }

  v76 = mainScreen33 ^ 1;
  v200 = __sb__runningInSpringBoard();
  if (v200)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen33 _referenceBounds];
  }

  v77 = v200 ^ 1;
  BSSizeRoundForScale();
  if (v201 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_1486;
  }

  v78 = &qword_21EC96138;
LABEL_426:
  v85 = *v78;
  if (v77)
  {
  }

  if (v76)
  {
  }

  viewCopy = v297;
  if (v75)
  {

    if (!v74)
    {
      goto LABEL_432;
    }

LABEL_541:

    if (!v73)
    {
      goto LABEL_434;
    }

    goto LABEL_433;
  }

  if (v74)
  {
    goto LABEL_541;
  }

LABEL_432:
  if (v73)
  {
LABEL_433:
  }

LABEL_434:
  if (v298)
  {
  }

  if (v258)
  {
  }

  if (v261)
  {
  }

  if (v264)
  {
  }

  if (v267)
  {
  }

  if (v270)
  {
  }

  if (v273)
  {
  }

  if (HIDWORD(v273))
  {
  }

  if (v276)
  {
  }

  if (HIDWORD(v276))
  {
  }

  if (v279)
  {
  }

  if (HIDWORD(v279))
  {
  }

  if (v282)
  {
  }

  if (HIDWORD(v282))
  {
  }

  if (v285)
  {
  }

  if (HIDWORD(v285))
  {
  }

  if (v288)
  {
  }

  if (HIDWORD(v288))
  {
  }

  if (v291)
  {
  }

  if (HIDWORD(v291))
  {
  }

  if (v294)
  {
  }

  if (HIDWORD(v294))
  {
  }

  if (LODWORD(v295[0]))
  {
  }

  if (HIDWORD(v295[0]))
  {
  }

  if (LODWORD(v295[1]))
  {
  }

  if (HIDWORD(v295[1]))
  {
  }

  if (LODWORD(v295[2]))
  {
  }

  if (HIDWORD(v295[2]))
  {
  }

  if (LODWORD(v295[3]))
  {
  }

  if (HIDWORD(v295[3]))
  {
  }

  if (LODWORD(v295[4]))
  {
  }

  if (HIDWORD(v295[4]))
  {
  }

  if (LODWORD(v295[5]))
  {
  }

  if (HIDWORD(v295[5]))
  {
  }

  if (LODWORD(v295[6]))
  {
  }

  if (HIDWORD(v295[6]))
  {
  }

  if (LODWORD(v295[7]))
  {
  }

  if (HIDWORD(v295[7]))
  {
  }

  if (LODWORD(v295[8]))
  {
  }

  if (HIDWORD(v295[8]))
  {
  }

  if (*v296)
  {
  }

  if (*&v296[4])
  {
  }

  if (*&v296[8])
  {
  }

  if (*&v296[12])
  {
  }

  if (*&v296[16])
  {
  }

  if (*&v296[20])
  {
  }

  if (*&v296[24])
  {
  }

  if (*&v296[28])
  {
  }

  if (*&v296[32])
  {
  }

  if (*&v296[36])
  {
  }

  if (*&v296[40])
  {
  }

  v11 = v42 + v15;
  v13 = v42 + v85;
  if (*&v296[44])
  {
  }

  v17 = v13;
LABEL_539:

  v86 = v11;
  v87 = v13;
  v88 = v15;
  v89 = v17;
  result.right = v89;
  result.bottom = v88;
  result.left = v87;
  result.top = v86;
  return result;
}

- (UIEdgeInsets)notificationStructuredListViewControllerRequestsEdgeInsetsForNotificationListView:(id)view forOrientation:(int64_t)orientation
{
  viewCopy = view;
  v9 = +[CSQuickActionsViewController deviceSupportsButtons];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained complicationsUsingBottomPositionForCombinedListViewController:self])
  {
    [WeakRetained bottomComplicationsInsetForCombinedListViewController:self];
    v12 = v11;
    if (!v9)
    {
      [(CSCombinedListViewController *)self _listViewDefaultContentInsets];
      v17 = v16;
LABEL_898:
      v21 = v12;
      v23 = v17;
      goto LABEL_899;
    }

    v13 = __sb__runningInSpringBoard();
    v460 = WeakRetained;
    v461 = viewCopy;
    if (v13)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v459 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        v459 = 0x100000000;
        goto LABEL_22;
      }
    }

    HIDWORD(v459) = v13 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice29 = __sb__runningInSpringBoard();
      if (currentDevice29)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(v459) = currentDevice29 ^ 1;
      BSSizeRoundForScale();
      if (v59 == *(MEMORY[0x277D66E30] + 288) && v58 == *(MEMORY[0x277D66E30] + 296))
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v408 = 0;
        v413 = 0;
        v418 = 0;
        v423 = 0;
        v428 = 0;
        v433 = 0;
        v438 = 0;
        v443 = 0;
        v448 = 0;
        memset(v453, 0, sizeof(v453));
        v454 = 0;
        v455 = 0;
        v456 = 0;
        v457 = 0;
        v458 = 0;
        v46 = &qword_21EC96100;
        goto LABEL_129;
      }
    }

    else
    {
      LODWORD(v459) = 0;
    }

LABEL_22:
    v26 = __sb__runningInSpringBoard();
    if (v26)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v458 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        v458 = 0x100000000;
        goto LABEL_40;
      }
    }

    HIDWORD(v458) = v26 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice29 = __sb__runningInSpringBoard();
      if (currentDevice29)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(v458) = currentDevice29 ^ 1;
      BSSizeRoundForScale();
      if (v62 >= *(MEMORY[0x277D66E30] + 440))
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v408 = 0;
        v413 = 0;
        v418 = 0;
        v423 = 0;
        v428 = 0;
        v433 = 0;
        v438 = 0;
        v443 = 0;
        v448 = 0;
        memset(v453, 0, sizeof(v453));
        v454 = 0;
        v455 = 0;
        v456 = 0;
        v457 = 0;
        v46 = &qword_21EC96128;
        goto LABEL_129;
      }
    }

    else
    {
      LODWORD(v458) = 0;
    }

LABEL_40:
    v28 = __sb__runningInSpringBoard();
    if (v28)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v457 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v457 = 0x100000000;
        goto LABEL_58;
      }
    }

    HIDWORD(v457) = v28 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice29 = __sb__runningInSpringBoard();
      if (currentDevice29)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      LODWORD(v457) = currentDevice29 ^ 1;
      BSSizeRoundForScale();
      if (v64 >= *(MEMORY[0x277D66E30] + 376))
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v408 = 0;
        v413 = 0;
        v418 = 0;
        v423 = 0;
        v428 = 0;
        v433 = 0;
        v438 = 0;
        v443 = 0;
        v448 = 0;
        memset(v453, 0, sizeof(v453));
        v454 = 0;
        v455 = 0;
        v456 = 0;
        v46 = &qword_21EC96118;
        goto LABEL_129;
      }
    }

    else
    {
      LODWORD(v457) = 0;
    }

LABEL_58:
    v30 = __sb__runningInSpringBoard();
    if (v30)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v456 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        v456 = 0x100000000;
        goto LABEL_75;
      }
    }

    HIDWORD(v456) = v30 ^ 1;
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v456) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 280))
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v408 = 0;
      v413 = 0;
      v418 = 0;
      v423 = 0;
      v428 = 0;
      v433 = 0;
      v438 = 0;
      v443 = 0;
      v448 = 0;
      memset(v453, 0, sizeof(v453));
      v454 = 0;
      v455 = 0;
      v46 = &qword_21EC96120;
      goto LABEL_129;
    }

LABEL_75:
    v34 = __sb__runningInSpringBoard();
    if (v34)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v455 = 0;
        goto LABEL_95;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v455 = 0x100000000;
        goto LABEL_95;
      }
    }

    HIDWORD(v455) = v34 ^ 1;
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v455) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 264))
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v408 = 0;
      v413 = 0;
      v418 = 0;
      v423 = 0;
      v428 = 0;
      v433 = 0;
      v438 = 0;
      v443 = 0;
      v448 = 0;
      memset(v453, 0, sizeof(v453));
      v454 = 0;
      v46 = &qword_21EC96110;
      goto LABEL_129;
    }

LABEL_95:
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v454 = 0;
        goto LABEL_903;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v454 = 0x100000000;
        goto LABEL_903;
      }
    }

    HIDWORD(v454) = v55 ^ 1;
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v454) = currentDevice29 ^ 1;
    BSSizeRoundForScale();
    if (v141 >= *(MEMORY[0x277D66E30] + 248))
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v408 = 0;
      v413 = 0;
      v418 = 0;
      v423 = 0;
      v428 = 0;
      v433 = 0;
      v438 = 0;
      v443 = 0;
      v448 = 0;
      memset(v453, 0, sizeof(v453));
      v46 = &qword_21EC96108;
      goto LABEL_129;
    }

LABEL_903:
    currentDevice29 = __sb__runningInSpringBoard();
    if (currentDevice29)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_905;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
LABEL_905:
        HIDWORD(v453[8]) = currentDevice29 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_909:
          *(&v453[7] + 4) = 0;
          goto LABEL_979;
        }

        v142 = __sb__runningInSpringBoard();
        if (v142)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_909;
          }
        }

        else
        {
          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            HIDWORD(v453[7]) = 0;
            LODWORD(v453[8]) = 1;
            goto LABEL_979;
          }
        }

        LODWORD(v453[8]) = v142 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v151 = __sb__runningInSpringBoard();
          if (v151)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          currentDevice29 = v151 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v453[7]) = currentDevice29;
          if (v166 >= *(MEMORY[0x277D66E30] + 200))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            v428 = 0;
            v433 = 0;
            v438 = 0;
            v443 = 0;
            v448 = 0;
            memset(v453, 0, 60);
            v46 = &qword_21EC960D8;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v453[7]) = 0;
        }

LABEL_979:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[6] + 4) = 0;
            goto LABEL_989;
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice9 userInterfaceIdiom])
          {
            HIDWORD(v453[6]) = 0;
            LODWORD(v453[7]) = 1;
            goto LABEL_989;
          }
        }

        LODWORD(v453[7]) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          HIDWORD(v453[6]) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v152 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_993;
          }
        }

        else
        {
          HIDWORD(v453[6]) = 0;
        }

LABEL_989:
        if (_SBF_Private_IsD94Like())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          v423 = 0;
          v428 = 0;
          v433 = 0;
          v438 = 0;
          v443 = 0;
          v448 = 0;
          memset(v453, 0, 52);
          v46 = &qword_21EC960E0;
          goto LABEL_129;
        }

LABEL_993:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_997:
          *(&v453[5] + 4) = 0;
          goto LABEL_1119;
        }

        v153 = __sb__runningInSpringBoard();
        if (v153)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_997;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            HIDWORD(v453[5]) = 0;
            LODWORD(v453[6]) = 1;
            goto LABEL_1119;
          }
        }

        LODWORD(v453[6]) = v153 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          HIDWORD(v453[5]) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v191 >= *(MEMORY[0x277D66E30] + 136))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            v428 = 0;
            v433 = 0;
            v438 = 0;
            v443 = 0;
            v448 = 0;
            memset(v453, 0, 44);
            v46 = &qword_21EC960E8;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v453[5]) = 0;
        }

LABEL_1119:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[4] + 4) = 0;
            goto LABEL_1129;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            HIDWORD(v453[4]) = 0;
            LODWORD(v453[5]) = 1;
            goto LABEL_1129;
          }
        }

        LODWORD(v453[5]) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          HIDWORD(v453[4]) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v171 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1133;
          }
        }

        else
        {
          HIDWORD(v453[4]) = 0;
        }

LABEL_1129:
        if (_SBF_Private_IsD64Like())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          v423 = 0;
          v428 = 0;
          v433 = 0;
          v438 = 0;
          v443 = 0;
          v448 = 0;
          memset(v453, 0, 36);
          v46 = &qword_21EC960F0;
          goto LABEL_129;
        }

LABEL_1133:
        v172 = __sb__runningInSpringBoard();
        if (v172)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[3] + 4) = 0;
            goto LABEL_1143;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            HIDWORD(v453[3]) = 0;
            LODWORD(v453[4]) = 1;
            goto LABEL_1143;
          }
        }

        LODWORD(v453[4]) = v172 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v173 = __sb__runningInSpringBoard();
          if (v173)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          currentDevice29 = v173 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v453[3]) = currentDevice29;
          if (v186 >= *(MEMORY[0x277D66E30] + 136))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            v428 = 0;
            v433 = 0;
            v438 = 0;
            v443 = 0;
            v448 = 0;
            memset(v453, 0, 28);
            v46 = &qword_21EC960C8;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v453[3]) = 0;
        }

LABEL_1143:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[2] + 4) = 0;
            goto LABEL_1289;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            HIDWORD(v453[2]) = 0;
            LODWORD(v453[3]) = 1;
            goto LABEL_1289;
          }
        }

        LODWORD(v453[3]) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v453[2]) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v196 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1347;
          }
        }

        else
        {
          HIDWORD(v453[2]) = 0;
        }

LABEL_1289:
        if (_SBF_Private_IsD54())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          v423 = 0;
          v428 = 0;
          v433 = 0;
          v438 = 0;
          v443 = 0;
          v448 = 0;
          memset(v453, 0, 20);
          v46 = &qword_21EC960D0;
          goto LABEL_129;
        }

LABEL_1347:
        v197 = __sb__runningInSpringBoard();
        if (v197)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[1] + 4) = 0;
            goto LABEL_1389;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            HIDWORD(v453[1]) = 0;
            LODWORD(v453[2]) = 1;
            goto LABEL_1389;
          }
        }

        LODWORD(v453[2]) = v197 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v206 = __sb__runningInSpringBoard();
          if (v206)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          currentDevice29 = v206 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v453[1]) = currentDevice29;
          if (v211 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            v428 = 0;
            v433 = 0;
            v438 = 0;
            v443 = 0;
            v448 = 0;
            v453[0] = 0;
            LODWORD(v453[1]) = 0;
            v46 = &qword_21EC96088;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v453[1]) = 0;
        }

LABEL_1389:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v453 + 4) = 0;
            goto LABEL_1439;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            HIDWORD(v453[0]) = 0;
            LODWORD(v453[1]) = 1;
            goto LABEL_1439;
          }
        }

        LODWORD(v453[1]) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v453[0]) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v216 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1492;
          }
        }

        else
        {
          HIDWORD(v453[0]) = 0;
        }

LABEL_1439:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          v423 = 0;
          v428 = 0;
          v433 = 0;
          v438 = 0;
          v443 = 0;
          v448 = 0;
          LODWORD(v453[0]) = 0;
          v46 = &qword_21EC96090;
          goto LABEL_129;
        }

LABEL_1492:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1496:
          HIDWORD(v448) = 0;
          LODWORD(v453[0]) = 0;
          goto LABEL_1539;
        }

        v217 = __sb__runningInSpringBoard();
        if (v217)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1496;
          }
        }

        else
        {
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            HIDWORD(v448) = 0;
            LODWORD(v453[0]) = 1;
            goto LABEL_1539;
          }
        }

        LODWORD(v453[0]) = v217 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v226 = __sb__runningInSpringBoard();
          if (v226)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          currentDevice29 = v226 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v448) = currentDevice29;
          if (v241 >= *(MEMORY[0x277D66E30] + 184))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            v428 = 0;
            v433 = 0;
            v438 = 0;
            v443 = 0;
            LODWORD(v448) = 0;
            v46 = &qword_21EC96078;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v448) = 0;
        }

LABEL_1539:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v443) = 0;
            LODWORD(v448) = 0;
            goto LABEL_1549;
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            HIDWORD(v443) = 0;
            LODWORD(v448) = 1;
            goto LABEL_1549;
          }
        }

        LODWORD(v448) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          HIDWORD(v443) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v227 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1553;
          }
        }

        else
        {
          HIDWORD(v443) = 0;
        }

LABEL_1549:
        if (_SBF_Private_IsD93Like())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          v423 = 0;
          v428 = 0;
          v433 = 0;
          v438 = 0;
          LODWORD(v443) = 0;
          v46 = &qword_21EC96080;
          goto LABEL_129;
        }

LABEL_1553:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1557:
          HIDWORD(v438) = 0;
          LODWORD(v443) = 0;
          goto LABEL_1679;
        }

        v228 = __sb__runningInSpringBoard();
        if (v228)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1557;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            HIDWORD(v438) = 0;
            LODWORD(v443) = 1;
            goto LABEL_1679;
          }
        }

        LODWORD(v443) = v228 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v246 = __sb__runningInSpringBoard();
          if (v246)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          currentDevice29 = v246 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v438) = currentDevice29;
          if (v261 >= *(MEMORY[0x277D66E30] + 104))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            v428 = 0;
            v433 = 0;
            LODWORD(v438) = 0;
            v46 = &qword_21EC960A8;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v438) = 0;
        }

LABEL_1679:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v433) = 0;
            LODWORD(v438) = 0;
            goto LABEL_1689;
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            HIDWORD(v433) = 0;
            LODWORD(v438) = 1;
            goto LABEL_1689;
          }
        }

        LODWORD(v438) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          HIDWORD(v433) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v247 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1693;
          }
        }

        else
        {
          HIDWORD(v433) = 0;
        }

LABEL_1689:
        if (_SBF_Private_IsD63Like())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          v423 = 0;
          v428 = 0;
          LODWORD(v433) = 0;
          v46 = &qword_21EC960B0;
          goto LABEL_129;
        }

LABEL_1693:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1697:
          HIDWORD(v428) = 0;
          LODWORD(v433) = 0;
          goto LABEL_1819;
        }

        v248 = __sb__runningInSpringBoard();
        if (v248)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1697;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v428) = 0;
            LODWORD(v433) = 1;
            goto LABEL_1819;
          }
        }

        LODWORD(v433) = v248 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v428) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v281 >= *(MEMORY[0x277D66E30] + 216))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            v418 = 0;
            v423 = 0;
            LODWORD(v428) = 0;
            v46 = &qword_21EC960B8;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v428) = 0;
        }

LABEL_1819:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v423) = 0;
            LODWORD(v428) = 0;
            goto LABEL_1829;
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v423) = 0;
            LODWORD(v428) = 1;
            goto LABEL_1829;
          }
        }

        LODWORD(v428) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v423) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v266 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1833;
          }
        }

        else
        {
          HIDWORD(v423) = 0;
        }

LABEL_1829:
        if (_SBF_Private_IsD23Like())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          v413 = 0;
          v418 = 0;
          LODWORD(v423) = 0;
          v46 = &qword_21EC960C0;
          goto LABEL_129;
        }

LABEL_1833:
        v267 = __sb__runningInSpringBoard();
        if (v267)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v418) = 0;
            LODWORD(v423) = 0;
            goto LABEL_1843;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v418) = 0;
            LODWORD(v423) = 1;
            goto LABEL_1843;
          }
        }

        LODWORD(v423) = v267 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          HIDWORD(v418) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v276 >= *(MEMORY[0x277D66E30] + 120))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v408 = 0;
            v413 = 0;
            LODWORD(v418) = 0;
            v46 = &qword_21EC96098;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v418) = 0;
        }

LABEL_1843:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v413) = 0;
            LODWORD(v418) = 0;
            goto LABEL_1989;
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v413) = 0;
            LODWORD(v418) = 1;
            goto LABEL_1989;
          }
        }

        LODWORD(v418) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v413) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v286 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_2047;
          }
        }

        else
        {
          HIDWORD(v413) = 0;
        }

LABEL_1989:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v408 = 0;
          LODWORD(v413) = 0;
          v46 = &qword_21EC960A0;
          goto LABEL_129;
        }

LABEL_2047:
        v287 = __sb__runningInSpringBoard();
        if (v287)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v408) = 0;
            LODWORD(v413) = 0;
            goto LABEL_2089;
          }
        }

        else
        {
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            HIDWORD(v408) = 0;
            LODWORD(v413) = 1;
            goto LABEL_2089;
          }
        }

        LODWORD(v413) = v287 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v408) = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v296 >= *(MEMORY[0x277D66E30] + 104))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            LODWORD(v408) = 0;
            v46 = &qword_21EC96068;
            goto LABEL_129;
          }
        }

        else
        {
          HIDWORD(v408) = 0;
        }

LABEL_2089:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v45 = 0;
            LODWORD(v408) = 0;
            goto LABEL_2139;
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            v45 = 0;
            LODWORD(v408) = 1;
            goto LABEL_2139;
          }
        }

        LODWORD(v408) = currentDevice29 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          v45 = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v301 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_2182;
          }
        }

        else
        {
          v45 = 0;
        }

LABEL_2139:
        if (_SBF_Private_IsD53())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v46 = &qword_21EC96070;
          goto LABEL_129;
        }

LABEL_2182:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v46 = &qword_21EC96048;
          goto LABEL_129;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v46 = &qword_21EC96050;
          goto LABEL_129;
        }

        if (_SBF_Private_IsD52OrSimilarDevice())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v46 = &qword_21EC96038;
          goto LABEL_129;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v46 = &qword_21EC96040;
          goto LABEL_129;
        }

        v306 = __sb__runningInSpringBoard();
        if (v306)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v43 = 0;
            v44 = 0;
            goto LABEL_2274;
          }
        }

        else
        {
          currentDevice26 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice26 userInterfaceIdiom])
          {
            v43 = 0;
            v44 = 1;
            goto LABEL_2274;
          }
        }

        v44 = v306 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v43 = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v323 >= *(MEMORY[0x277D66E30] + 88))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v46 = &qword_21EC96058;
            goto LABEL_129;
          }
        }

        else
        {
          v43 = 0;
        }

LABEL_2274:
        v311 = __sb__runningInSpringBoard();
        if (v311)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v41 = 0;
            v42 = 0;
            goto LABEL_2324;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            v41 = 0;
            v42 = 1;
            goto LABEL_2324;
          }
        }

        v42 = v311 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice29 = __sb__runningInSpringBoard();
          if (currentDevice29)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          v41 = currentDevice29 ^ 1;
          BSSizeRoundForScale();
          if (v328 >= *(MEMORY[0x277D66E30] + 72))
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v46 = &qword_21EC96060;
            goto LABEL_129;
          }
        }

        else
        {
          v41 = 0;
        }

LABEL_2324:
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v39 = 0;
            v40 = 0;
            goto LABEL_2374;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v39 = 0;
            v40 = 1;
            goto LABEL_2374;
          }
        }

        v40 = currentDevice29 ^ 1;
        currentDevice29 = __sb__runningInSpringBoard();
        if (currentDevice29)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen27 _referenceBounds];
        }

        v39 = currentDevice29 ^ 1;
        BSSizeRoundForScale();
        if (v317 >= *(MEMORY[0x277D66E30] + 56))
        {
          v37 = 0;
          v38 = 0;
          v46 = &qword_21EC96030;
          goto LABEL_129;
        }

LABEL_2374:
        v318 = __sb__runningInSpringBoard();
        if (v318)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v37 = 0;
            v38 = 0;
            goto LABEL_2459;
          }
        }

        else
        {
          currentDevice29 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice29 userInterfaceIdiom])
          {
            v37 = 0;
            v38 = 1;
            goto LABEL_2459;
          }
        }

        v38 = v318 ^ 1;
        v333 = __sb__runningInSpringBoard();
        if (v333)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen28 _referenceBounds];
        }

        v37 = v333 ^ 1;
        BSSizeRoundForScale();
        if (v334 >= *(MEMORY[0x277D66E30] + 40))
        {
          v46 = &qword_21EC96028;
          goto LABEL_2461;
        }

LABEL_2459:
        v46 = &CSQuickActionButtonDiameter;
LABEL_2461:
        v32 = mainScreen28;
LABEL_129:
        v65 = *v46;
        if (v37)
        {

          if (!v38)
          {
            goto LABEL_131;
          }
        }

        else if (!v38)
        {
LABEL_131:
          if (!v39)
          {
            goto LABEL_133;
          }

          goto LABEL_132;
        }

        if (!v39)
        {
LABEL_133:
          if (v40)
          {

            if (!v41)
            {
              goto LABEL_135;
            }
          }

          else if (!v41)
          {
LABEL_135:
            if (v42)
            {
              goto LABEL_136;
            }

            goto LABEL_145;
          }

          if (v42)
          {
LABEL_136:

            if (!v43)
            {
              goto LABEL_137;
            }

            goto LABEL_146;
          }

LABEL_145:
          if (!v43)
          {
LABEL_137:
            if (v44)
            {
              goto LABEL_138;
            }

            goto LABEL_147;
          }

LABEL_146:

          if (v44)
          {
LABEL_138:

            if (!v45)
            {
LABEL_149:
              if (v408)
              {
              }

              if (HIDWORD(v408))
              {
              }

              if (v413)
              {
              }

              if (HIDWORD(v413))
              {
              }

              if (v418)
              {
              }

              if (HIDWORD(v418))
              {
              }

              if (v423)
              {
              }

              if (HIDWORD(v423))
              {
              }

              if (v428)
              {
              }

              if (HIDWORD(v428))
              {
              }

              if (v433)
              {
              }

              if (HIDWORD(v433))
              {
              }

              if (v438)
              {
              }

              if (HIDWORD(v438))
              {
              }

              if (v443)
              {
              }

              if (HIDWORD(v443))
              {
              }

              if (v448)
              {
              }

              if (HIDWORD(v448))
              {
              }

              if (LODWORD(v453[0]))
              {
              }

              if (HIDWORD(v453[0]))
              {
              }

              if (LODWORD(v453[1]))
              {
              }

              if (HIDWORD(v453[1]))
              {
              }

              if (LODWORD(v453[2]))
              {
              }

              if (HIDWORD(v453[2]))
              {
              }

              if (LODWORD(v453[3]))
              {
              }

              if (HIDWORD(v453[3]))
              {
              }

              if (LODWORD(v453[4]))
              {
              }

              if (HIDWORD(v453[4]))
              {
              }

              if (LODWORD(v453[5]))
              {
              }

              if (HIDWORD(v453[5]))
              {
              }

              if (LODWORD(v453[6]))
              {
              }

              if (HIDWORD(v453[6]))
              {
              }

              if (LODWORD(v453[7]))
              {
              }

              if (HIDWORD(v453[7]))
              {
              }

              if (LODWORD(v453[8]))
              {
              }

              if (HIDWORD(v453[8]))
              {
              }

              if (v454)
              {
              }

              if (HIDWORD(v454))
              {
              }

              if (v455)
              {
              }

              if (HIDWORD(v455))
              {
              }

              if (v456)
              {
              }

              if (HIDWORD(v456))
              {
              }

              if (v457)
              {
              }

              if (HIDWORD(v457))
              {
              }

              if (v458)
              {
              }

              if (HIDWORD(v458))
              {
              }

              if (v459)
              {
              }

              if (HIDWORD(v459))
              {
              }

              v66 = __sb__runningInSpringBoard();
              if (v66)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  v459 = 0;
                  goto LABEL_254;
                }
              }

              else
              {
                currentDevice = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice userInterfaceIdiom] != 1)
                {
                  v459 = 0x100000000;
                  goto LABEL_254;
                }
              }

              HIDWORD(v459) = v66 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                mainScreen29 = __sb__runningInSpringBoard();
                if (mainScreen29)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen _referenceBounds];
                }

                LODWORD(v459) = mainScreen29 ^ 1;
                BSSizeRoundForScale();
                if (v86 == *(MEMORY[0x277D66E30] + 288) && v85 == *(MEMORY[0x277D66E30] + 296))
                {
                  v425 = 0;
                  v430 = 0;
                  v435 = 0;
                  v440 = 0;
                  v415 = 0;
                  v420 = 0;
                  v410 = 0;
                  v73 = 0;
                  v445 = 0;
                  v74 = 0;
                  v75 = 0;
                  v76 = 0;
                  v77 = 0;
                  v450 = 0;
                  v78 = 0;
                  v79 = 0;
                  v80 = 0;
                  v81 = 0;
                  memset(v453, 0, sizeof(v453));
                  v454 = 0;
                  v455 = 0;
                  v456 = 0;
                  v457 = 0;
                  v458 = 0;
                  v82 = &qword_21EC96210;
                  goto LABEL_486;
                }
              }

              else
              {
                LODWORD(v459) = 0;
              }

LABEL_254:
              v68 = __sb__runningInSpringBoard();
              if (v68)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  v458 = 0;
                  goto LABEL_263;
                }
              }

              else
              {
                currentDevice2 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice2 userInterfaceIdiom] != 1)
                {
                  v458 = 0x100000000;
                  goto LABEL_263;
                }
              }

              HIDWORD(v458) = v68 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                mainScreen29 = __sb__runningInSpringBoard();
                if (mainScreen29)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen2 _referenceBounds];
                }

                LODWORD(v458) = mainScreen29 ^ 1;
                BSSizeRoundForScale();
                if (v87 >= *(MEMORY[0x277D66E30] + 440))
                {
                  v425 = 0;
                  v430 = 0;
                  v435 = 0;
                  v440 = 0;
                  v415 = 0;
                  v420 = 0;
                  v410 = 0;
                  v73 = 0;
                  v445 = 0;
                  v74 = 0;
                  v75 = 0;
                  v76 = 0;
                  v77 = 0;
                  v450 = 0;
                  v78 = 0;
                  v79 = 0;
                  v80 = 0;
                  v81 = 0;
                  memset(v453, 0, sizeof(v453));
                  v454 = 0;
                  v455 = 0;
                  v456 = 0;
                  v457 = 0;
                  v82 = &qword_21EC96238;
                  goto LABEL_486;
                }
              }

              else
              {
                LODWORD(v458) = 0;
              }

LABEL_263:
              v69 = __sb__runningInSpringBoard();
              if (v69)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  v457 = 0;
                  goto LABEL_272;
                }
              }

              else
              {
                currentDevice3 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice3 userInterfaceIdiom] != 1)
                {
                  v457 = 0x100000000;
                  goto LABEL_272;
                }
              }

              HIDWORD(v457) = v69 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                mainScreen29 = __sb__runningInSpringBoard();
                if (mainScreen29)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen3 _referenceBounds];
                }

                LODWORD(v457) = mainScreen29 ^ 1;
                BSSizeRoundForScale();
                if (v110 >= *(MEMORY[0x277D66E30] + 376))
                {
                  v425 = 0;
                  v430 = 0;
                  v435 = 0;
                  v440 = 0;
                  v415 = 0;
                  v420 = 0;
                  v410 = 0;
                  v73 = 0;
                  v445 = 0;
                  v74 = 0;
                  v75 = 0;
                  v76 = 0;
                  v77 = 0;
                  v450 = 0;
                  v78 = 0;
                  v79 = 0;
                  v80 = 0;
                  v81 = 0;
                  memset(v453, 0, sizeof(v453));
                  v454 = 0;
                  v455 = 0;
                  v456 = 0;
                  v82 = &qword_21EC96228;
                  goto LABEL_486;
                }
              }

              else
              {
                LODWORD(v457) = 0;
              }

LABEL_272:
              v70 = __sb__runningInSpringBoard();
              if (v70)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  v456 = 0;
                  goto LABEL_281;
                }
              }

              else
              {
                currentDevice4 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice4 userInterfaceIdiom] != 1)
                {
                  v456 = 0x100000000;
                  goto LABEL_281;
                }
              }

              HIDWORD(v456) = v70 ^ 1;
              mainScreen29 = __sb__runningInSpringBoard();
              if (mainScreen29)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen4 _referenceBounds];
              }

              LODWORD(v456) = mainScreen29 ^ 1;
              BSSizeRoundForScale();
              if (v71 >= *(MEMORY[0x277D66E30] + 280))
              {
                v425 = 0;
                v430 = 0;
                v435 = 0;
                v440 = 0;
                v415 = 0;
                v420 = 0;
                v410 = 0;
                v73 = 0;
                v445 = 0;
                v74 = 0;
                v75 = 0;
                v76 = 0;
                v77 = 0;
                v450 = 0;
                v78 = 0;
                v79 = 0;
                v80 = 0;
                v81 = 0;
                memset(v453, 0, sizeof(v453));
                v454 = 0;
                v455 = 0;
                v82 = &qword_21EC96230;
                goto LABEL_486;
              }

LABEL_281:
              v72 = __sb__runningInSpringBoard();
              if (v72)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  v455 = 0;
                  goto LABEL_291;
                }
              }

              else
              {
                currentDevice5 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice5 userInterfaceIdiom] != 1)
                {
                  v455 = 0x100000000;
                  goto LABEL_291;
                }
              }

              HIDWORD(v455) = v72 ^ 1;
              mainScreen29 = __sb__runningInSpringBoard();
              if (mainScreen29)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen5 _referenceBounds];
              }

              LODWORD(v455) = mainScreen29 ^ 1;
              BSSizeRoundForScale();
              if (v83 >= *(MEMORY[0x277D66E30] + 264))
              {
                v425 = 0;
                v430 = 0;
                v435 = 0;
                v440 = 0;
                v415 = 0;
                v420 = 0;
                v410 = 0;
                v73 = 0;
                v445 = 0;
                v74 = 0;
                v75 = 0;
                v76 = 0;
                v77 = 0;
                v450 = 0;
                v78 = 0;
                v79 = 0;
                v80 = 0;
                v81 = 0;
                memset(v453, 0, sizeof(v453));
                v454 = 0;
                v82 = &qword_21EC96220;
                goto LABEL_486;
              }

LABEL_291:
              v84 = __sb__runningInSpringBoard();
              if (v84)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  v454 = 0;
                  goto LABEL_927;
                }
              }

              else
              {
                currentDevice6 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice6 userInterfaceIdiom] != 1)
                {
                  v454 = 0x100000000;
                  goto LABEL_927;
                }
              }

              HIDWORD(v454) = v84 ^ 1;
              mainScreen29 = __sb__runningInSpringBoard();
              if (mainScreen29)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen6 _referenceBounds];
              }

              LODWORD(v454) = mainScreen29 ^ 1;
              BSSizeRoundForScale();
              if (v145 >= *(MEMORY[0x277D66E30] + 248))
              {
                v425 = 0;
                v430 = 0;
                v435 = 0;
                v440 = 0;
                v415 = 0;
                v420 = 0;
                v410 = 0;
                v73 = 0;
                v445 = 0;
                v74 = 0;
                v75 = 0;
                v76 = 0;
                v77 = 0;
                v450 = 0;
                v78 = 0;
                v79 = 0;
                v80 = 0;
                v81 = 0;
                memset(v453, 0, sizeof(v453));
                v82 = &qword_21EC96218;
                goto LABEL_486;
              }

LABEL_927:
              mainScreen29 = __sb__runningInSpringBoard();
              if (mainScreen29)
              {
                if (SBFEffectiveDeviceClass() != 2)
                {
                  goto LABEL_929;
                }
              }

              else
              {
                currentDevice7 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice7 userInterfaceIdiom] != 1)
                {
LABEL_929:
                  HIDWORD(v453[8]) = mainScreen29 ^ 1;
                  if (!_SBF_Private_IsD94Like())
                  {
LABEL_933:
                    *(&v453[7] + 4) = 0;
                    goto LABEL_1029;
                  }

                  v146 = __sb__runningInSpringBoard();
                  if (v146)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      goto LABEL_933;
                    }
                  }

                  else
                  {
                    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice8 userInterfaceIdiom])
                    {
                      HIDWORD(v453[7]) = 0;
                      LODWORD(v453[8]) = 1;
                      goto LABEL_1029;
                    }
                  }

                  LODWORD(v453[8]) = v146 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    v157 = __sb__runningInSpringBoard();
                    if (v157)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen7 _referenceBounds];
                    }

                    mainScreen29 = v157 ^ 1u;
                    BSSizeRoundForScale();
                    HIDWORD(v453[7]) = mainScreen29;
                    if (v168 >= *(MEMORY[0x277D66E30] + 200))
                    {
                      v425 = 0;
                      v430 = 0;
                      v435 = 0;
                      v440 = 0;
                      v415 = 0;
                      v420 = 0;
                      v410 = 0;
                      v73 = 0;
                      v445 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v450 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      memset(v453, 0, 60);
                      v82 = &qword_21EC961E8;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[7]) = 0;
                  }

LABEL_1029:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      *(&v453[6] + 4) = 0;
                      goto LABEL_1039;
                    }
                  }

                  else
                  {
                    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice9 userInterfaceIdiom])
                    {
                      HIDWORD(v453[6]) = 0;
                      LODWORD(v453[7]) = 1;
                      goto LABEL_1039;
                    }
                  }

                  LODWORD(v453[7]) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen8 _referenceBounds];
                    }

                    HIDWORD(v453[6]) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v158 >= *(MEMORY[0x277D66E30] + 200))
                    {
                      goto LABEL_1043;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[6]) = 0;
                  }

LABEL_1039:
                  if (_SBF_Private_IsD94Like())
                  {
                    v425 = 0;
                    v430 = 0;
                    v435 = 0;
                    v440 = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    v445 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v450 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    memset(v453, 0, 52);
                    v82 = &qword_21EC961F0;
                    goto LABEL_486;
                  }

LABEL_1043:
                  if (!_SBF_Private_IsD64Like())
                  {
LABEL_1047:
                    *(&v453[5] + 4) = 0;
                    goto LABEL_1187;
                  }

                  v159 = __sb__runningInSpringBoard();
                  if (v159)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      goto LABEL_1047;
                    }
                  }

                  else
                  {
                    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice10 userInterfaceIdiom])
                    {
                      HIDWORD(v453[5]) = 0;
                      LODWORD(v453[6]) = 1;
                      goto LABEL_1187;
                    }
                  }

                  LODWORD(v453[6]) = v159 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen9 _referenceBounds];
                    }

                    HIDWORD(v453[5]) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v193 >= *(MEMORY[0x277D66E30] + 136))
                    {
                      v425 = 0;
                      v430 = 0;
                      v435 = 0;
                      v440 = 0;
                      v415 = 0;
                      v420 = 0;
                      v410 = 0;
                      v73 = 0;
                      v445 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v450 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      memset(v453, 0, 44);
                      v82 = &qword_21EC961F8;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[5]) = 0;
                  }

LABEL_1187:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      *(&v453[4] + 4) = 0;
                      goto LABEL_1197;
                    }
                  }

                  else
                  {
                    currentDevice11 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice11 userInterfaceIdiom])
                    {
                      HIDWORD(v453[4]) = 0;
                      LODWORD(v453[5]) = 1;
                      goto LABEL_1197;
                    }
                  }

                  LODWORD(v453[5]) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen10 _referenceBounds];
                    }

                    HIDWORD(v453[4]) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v177 >= *(MEMORY[0x277D66E30] + 136))
                    {
                      goto LABEL_1201;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[4]) = 0;
                  }

LABEL_1197:
                  if (_SBF_Private_IsD64Like())
                  {
                    v425 = 0;
                    v430 = 0;
                    v435 = 0;
                    v440 = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    v445 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v450 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    memset(v453, 0, 36);
                    v82 = &qword_21EC96200;
                    goto LABEL_486;
                  }

LABEL_1201:
                  v178 = __sb__runningInSpringBoard();
                  if (v178)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      *(&v453[3] + 4) = 0;
                      goto LABEL_1211;
                    }
                  }

                  else
                  {
                    currentDevice12 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice12 userInterfaceIdiom])
                    {
                      HIDWORD(v453[3]) = 0;
                      LODWORD(v453[4]) = 1;
                      goto LABEL_1211;
                    }
                  }

                  LODWORD(v453[4]) = v178 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    v179 = __sb__runningInSpringBoard();
                    if (v179)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen11 _referenceBounds];
                    }

                    mainScreen29 = v179 ^ 1u;
                    BSSizeRoundForScale();
                    HIDWORD(v453[3]) = mainScreen29;
                    if (v188 >= *(MEMORY[0x277D66E30] + 136))
                    {
                      v425 = 0;
                      v430 = 0;
                      v435 = 0;
                      v440 = 0;
                      v415 = 0;
                      v420 = 0;
                      v410 = 0;
                      v73 = 0;
                      v445 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v450 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      memset(v453, 0, 28);
                      v82 = &qword_21EC961D8;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[3]) = 0;
                  }

LABEL_1211:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      *(&v453[2] + 4) = 0;
                      goto LABEL_1301;
                    }
                  }

                  else
                  {
                    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice13 userInterfaceIdiom])
                    {
                      HIDWORD(v453[2]) = 0;
                      LODWORD(v453[3]) = 1;
                      goto LABEL_1301;
                    }
                  }

                  LODWORD(v453[3]) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen12 _referenceBounds];
                    }

                    HIDWORD(v453[2]) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v200 >= *(MEMORY[0x277D66E30] + 136))
                    {
                      goto LABEL_1363;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[2]) = 0;
                  }

LABEL_1301:
                  if (_SBF_Private_IsD54())
                  {
                    v425 = 0;
                    v430 = 0;
                    v435 = 0;
                    v440 = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    v445 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v450 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    memset(v453, 0, 20);
                    v82 = &qword_21EC961E0;
                    goto LABEL_486;
                  }

LABEL_1363:
                  v201 = __sb__runningInSpringBoard();
                  if (v201)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      *(&v453[1] + 4) = 0;
                      goto LABEL_1409;
                    }
                  }

                  else
                  {
                    currentDevice14 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice14 userInterfaceIdiom])
                    {
                      HIDWORD(v453[1]) = 0;
                      LODWORD(v453[2]) = 1;
                      goto LABEL_1409;
                    }
                  }

                  LODWORD(v453[2]) = v201 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    v208 = __sb__runningInSpringBoard();
                    if (v208)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen13 _referenceBounds];
                    }

                    mainScreen29 = v208 ^ 1u;
                    BSSizeRoundForScale();
                    HIDWORD(v453[1]) = mainScreen29;
                    if (v213 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
                    {
                      v425 = 0;
                      v430 = 0;
                      v435 = 0;
                      v440 = 0;
                      v415 = 0;
                      v420 = 0;
                      v410 = 0;
                      v73 = 0;
                      v445 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v450 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v453[0] = 0;
                      LODWORD(v453[1]) = 0;
                      v82 = &qword_21EC96198;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[1]) = 0;
                  }

LABEL_1409:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      *(v453 + 4) = 0;
                      goto LABEL_1453;
                    }
                  }

                  else
                  {
                    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice15 userInterfaceIdiom])
                    {
                      HIDWORD(v453[0]) = 0;
                      LODWORD(v453[1]) = 1;
                      goto LABEL_1453;
                    }
                  }

                  LODWORD(v453[1]) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen14 _referenceBounds];
                    }

                    HIDWORD(v453[0]) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v220 >= *(MEMORY[0x277D66E30] + 120))
                    {
                      goto LABEL_1510;
                    }
                  }

                  else
                  {
                    HIDWORD(v453[0]) = 0;
                  }

LABEL_1453:
                  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
                  {
                    v425 = 0;
                    v430 = 0;
                    v435 = 0;
                    v440 = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    v445 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v450 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    LODWORD(v453[0]) = 0;
                    v82 = &qword_21EC961A0;
                    goto LABEL_486;
                  }

LABEL_1510:
                  if (!_SBF_Private_IsD93Like())
                  {
LABEL_1514:
                    HIDWORD(v450) = 0;
                    LODWORD(v453[0]) = 0;
                    goto LABEL_1589;
                  }

                  v221 = __sb__runningInSpringBoard();
                  if (v221)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      goto LABEL_1514;
                    }
                  }

                  else
                  {
                    currentDevice16 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice16 userInterfaceIdiom])
                    {
                      HIDWORD(v450) = 0;
                      LODWORD(v453[0]) = 1;
                      goto LABEL_1589;
                    }
                  }

                  LODWORD(v453[0]) = v221 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    v232 = __sb__runningInSpringBoard();
                    if (v232)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen15 _referenceBounds];
                    }

                    mainScreen29 = v232 ^ 1u;
                    BSSizeRoundForScale();
                    HIDWORD(v450) = mainScreen29;
                    if (v243 >= *(MEMORY[0x277D66E30] + 184))
                    {
                      v425 = 0;
                      v430 = 0;
                      v435 = 0;
                      v440 = 0;
                      v415 = 0;
                      v420 = 0;
                      v410 = 0;
                      v73 = 0;
                      v445 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      LODWORD(v450) = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC96188;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v450) = 0;
                  }

LABEL_1589:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v450) = 0;
                      HIDWORD(v445) = 0;
                      goto LABEL_1599;
                    }
                  }

                  else
                  {
                    currentDevice17 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice17 userInterfaceIdiom])
                    {
                      LODWORD(v450) = 0;
                      HIDWORD(v445) = 1;
                      goto LABEL_1599;
                    }
                  }

                  HIDWORD(v445) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen16 _referenceBounds];
                    }

                    LODWORD(v450) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v233 >= *(MEMORY[0x277D66E30] + 184))
                    {
                      goto LABEL_1603;
                    }
                  }

                  else
                  {
                    LODWORD(v450) = 0;
                  }

LABEL_1599:
                  if (_SBF_Private_IsD93Like())
                  {
                    v425 = 0;
                    v430 = 0;
                    v435 = 0;
                    v440 = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    LODWORD(v445) = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96190;
                    goto LABEL_486;
                  }

LABEL_1603:
                  if (!_SBF_Private_IsD63Like())
                  {
LABEL_1607:
                    LODWORD(v445) = 0;
                    HIDWORD(v440) = 0;
                    goto LABEL_1729;
                  }

                  v234 = __sb__runningInSpringBoard();
                  if (v234)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      goto LABEL_1607;
                    }
                  }

                  else
                  {
                    currentDevice18 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice18 userInterfaceIdiom])
                    {
                      LODWORD(v445) = 0;
                      HIDWORD(v440) = 1;
                      goto LABEL_1729;
                    }
                  }

                  HIDWORD(v440) = v234 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    v252 = __sb__runningInSpringBoard();
                    if (v252)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen17 _referenceBounds];
                    }

                    mainScreen29 = v252 ^ 1u;
                    BSSizeRoundForScale();
                    LODWORD(v445) = mainScreen29;
                    if (v263 >= *(MEMORY[0x277D66E30] + 104))
                    {
                      v425 = 0;
                      v430 = 0;
                      v435 = 0;
                      v415 = 0;
                      v420 = 0;
                      LODWORD(v440) = 0;
                      v410 = 0;
                      v73 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC961B8;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    LODWORD(v445) = 0;
                  }

LABEL_1729:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v440) = 0;
                      HIDWORD(v435) = 0;
                      goto LABEL_1739;
                    }
                  }

                  else
                  {
                    currentDevice19 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice19 userInterfaceIdiom])
                    {
                      LODWORD(v440) = 0;
                      HIDWORD(v435) = 1;
                      goto LABEL_1739;
                    }
                  }

                  HIDWORD(v435) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen18 _referenceBounds];
                    }

                    LODWORD(v440) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v253 >= *(MEMORY[0x277D66E30] + 104))
                    {
                      goto LABEL_1743;
                    }
                  }

                  else
                  {
                    LODWORD(v440) = 0;
                  }

LABEL_1739:
                  if (_SBF_Private_IsD63Like())
                  {
                    v425 = 0;
                    v430 = 0;
                    LODWORD(v435) = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC961C0;
                    goto LABEL_486;
                  }

LABEL_1743:
                  if (!_SBF_Private_IsD23Like())
                  {
LABEL_1747:
                    LODWORD(v435) = 0;
                    HIDWORD(v430) = 0;
                    goto LABEL_1887;
                  }

                  v254 = __sb__runningInSpringBoard();
                  if (v254)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      goto LABEL_1747;
                    }
                  }

                  else
                  {
                    currentDevice20 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice20 userInterfaceIdiom])
                    {
                      LODWORD(v435) = 0;
                      HIDWORD(v430) = 1;
                      goto LABEL_1887;
                    }
                  }

                  HIDWORD(v430) = v254 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen19 _referenceBounds];
                    }

                    LODWORD(v435) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v283 >= *(MEMORY[0x277D66E30] + 216))
                    {
                      LODWORD(v430) = 0;
                      v420 = 0;
                      v425 = 0;
                      v410 = 0;
                      v415 = 0;
                      v73 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC961C8;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    LODWORD(v435) = 0;
                  }

LABEL_1887:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v430) = 0;
                      HIDWORD(v425) = 0;
                      goto LABEL_1897;
                    }
                  }

                  else
                  {
                    currentDevice21 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice21 userInterfaceIdiom])
                    {
                      HIDWORD(v425) = 0;
                      LODWORD(v430) = 1;
                      goto LABEL_1897;
                    }
                  }

                  LODWORD(v430) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen20 _referenceBounds];
                    }

                    HIDWORD(v425) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v270 >= *(MEMORY[0x277D66E30] + 216))
                    {
                      goto LABEL_1901;
                    }
                  }

                  else
                  {
                    HIDWORD(v425) = 0;
                  }

LABEL_1897:
                  if (_SBF_Private_IsD23Like())
                  {
                    LODWORD(v425) = 0;
                    v415 = 0;
                    v420 = 0;
                    v410 = 0;
                    v73 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC961D0;
                    goto LABEL_486;
                  }

LABEL_1901:
                  v271 = __sb__runningInSpringBoard();
                  if (v271)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v425) = 0;
                      HIDWORD(v420) = 0;
                      goto LABEL_1911;
                    }
                  }

                  else
                  {
                    currentDevice22 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice22 userInterfaceIdiom])
                    {
                      HIDWORD(v420) = 0;
                      LODWORD(v425) = 1;
                      goto LABEL_1911;
                    }
                  }

                  LODWORD(v425) = v271 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen21 _referenceBounds];
                    }

                    HIDWORD(v420) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v278 >= *(MEMORY[0x277D66E30] + 120))
                    {
                      LODWORD(v420) = 0;
                      v410 = 0;
                      v415 = 0;
                      v73 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC961A8;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v420) = 0;
                  }

LABEL_1911:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v420) = 0;
                      HIDWORD(v415) = 0;
                      goto LABEL_2001;
                    }
                  }

                  else
                  {
                    currentDevice23 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice23 userInterfaceIdiom])
                    {
                      HIDWORD(v415) = 0;
                      LODWORD(v420) = 1;
                      goto LABEL_2001;
                    }
                  }

                  LODWORD(v420) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen22 _referenceBounds];
                    }

                    HIDWORD(v415) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v290 >= *(MEMORY[0x277D66E30] + 120))
                    {
                      goto LABEL_2063;
                    }
                  }

                  else
                  {
                    HIDWORD(v415) = 0;
                  }

LABEL_2001:
                  if (_SBF_Private_IsD33OrSimilarDevice())
                  {
                    LODWORD(v415) = 0;
                    v410 = 0;
                    v73 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC961B0;
                    goto LABEL_486;
                  }

LABEL_2063:
                  v291 = __sb__runningInSpringBoard();
                  if (v291)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v415) = 0;
                      HIDWORD(v410) = 0;
                      goto LABEL_2109;
                    }
                  }

                  else
                  {
                    currentDevice24 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice24 userInterfaceIdiom])
                    {
                      HIDWORD(v410) = 0;
                      LODWORD(v415) = 1;
                      goto LABEL_2109;
                    }
                  }

                  LODWORD(v415) = v291 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen23 _referenceBounds];
                    }

                    HIDWORD(v410) = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v298 >= *(MEMORY[0x277D66E30] + 104))
                    {
                      LODWORD(v410) = 0;
                      v73 = 0;
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v77 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC96178;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    HIDWORD(v410) = 0;
                  }

LABEL_2109:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      LODWORD(v410) = 0;
                      v73 = 0;
                      goto LABEL_2151;
                    }
                  }

                  else
                  {
                    currentDevice25 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice25 userInterfaceIdiom])
                    {
                      v73 = 0;
                      LODWORD(v410) = 1;
                      goto LABEL_2151;
                    }
                  }

                  LODWORD(v410) = mainScreen29 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen24 _referenceBounds];
                    }

                    v73 = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v303 >= *(MEMORY[0x277D66E30] + 104))
                    {
                      goto LABEL_2206;
                    }
                  }

                  else
                  {
                    v73 = 0;
                  }

LABEL_2151:
                  if (_SBF_Private_IsD53())
                  {
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96180;
                    goto LABEL_486;
                  }

LABEL_2206:
                  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
                  {
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96158;
                    goto LABEL_486;
                  }

                  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                  {
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96160;
                    goto LABEL_486;
                  }

                  if (_SBF_Private_IsD52OrSimilarDevice())
                  {
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96148;
                    goto LABEL_486;
                  }

                  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                  {
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96150;
                    goto LABEL_486;
                  }

                  v308 = __sb__runningInSpringBoard();
                  if (v308)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      v74 = 0;
                      v75 = 0;
                      goto LABEL_2294;
                    }
                  }

                  else
                  {
                    currentDevice26 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice26 userInterfaceIdiom])
                    {
                      v75 = 0;
                      v74 = 1;
                      goto LABEL_2294;
                    }
                  }

                  v74 = v308 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen26 _referenceBounds];
                    }

                    v75 = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v325 >= *(MEMORY[0x277D66E30] + 88))
                    {
                      v76 = 0;
                      v77 = 0;
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC96168;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    v75 = 0;
                  }

LABEL_2294:
                  v312 = __sb__runningInSpringBoard();
                  if (v312)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      v76 = 0;
                      v77 = 0;
                      goto LABEL_2344;
                    }
                  }

                  else
                  {
                    currentDevice27 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice27 userInterfaceIdiom])
                    {
                      v77 = 0;
                      v76 = 1;
                      goto LABEL_2344;
                    }
                  }

                  v76 = v312 ^ 1;
                  if (SBFEffectiveHomeButtonType() == 2)
                  {
                    mainScreen29 = __sb__runningInSpringBoard();
                    if (mainScreen29)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen28 _referenceBounds];
                    }

                    v77 = mainScreen29 ^ 1;
                    BSSizeRoundForScale();
                    if (v330 >= *(MEMORY[0x277D66E30] + 72))
                    {
                      v78 = 0;
                      v79 = 0;
                      v80 = 0;
                      v81 = 0;
                      v82 = &qword_21EC96170;
                      goto LABEL_486;
                    }
                  }

                  else
                  {
                    v77 = 0;
                  }

LABEL_2344:
                  v314 = __sb__runningInSpringBoard();
                  if (v314)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      v78 = 0;
                      v79 = 0;
                      goto LABEL_2396;
                    }
                  }

                  else
                  {
                    currentDevice28 = [MEMORY[0x277D75418] currentDevice];
                    if ([currentDevice28 userInterfaceIdiom])
                    {
                      v79 = 0;
                      v78 = 1;
                      goto LABEL_2396;
                    }
                  }

                  v78 = v314 ^ 1;
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen25 _referenceBounds];
                  }

                  v79 = mainScreen29 ^ 1;
                  BSSizeRoundForScale();
                  if (v320 >= *(MEMORY[0x277D66E30] + 56))
                  {
                    v80 = 0;
                    v81 = 0;
                    v82 = &qword_21EC96140;
                    goto LABEL_486;
                  }

LABEL_2396:
                  mainScreen29 = __sb__runningInSpringBoard();
                  if (mainScreen29)
                  {
                    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                    {
                      v80 = 0;
                      v81 = 0;
                      goto LABEL_2472;
                    }
                  }

                  else
                  {
                    mainScreen27 = [MEMORY[0x277D75418] currentDevice];
                    if ([mainScreen27 userInterfaceIdiom])
                    {
                      v81 = 0;
                      v80 = 1;
                      goto LABEL_2472;
                    }
                  }

                  v80 = mainScreen29 ^ 1;
                  v337 = __sb__runningInSpringBoard();
                  if (v337)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen29 _referenceBounds];
                  }

                  v81 = v337 ^ 1;
                  BSSizeRoundForScale();
                  if (v338 >= *(MEMORY[0x277D66E30] + 40))
                  {
                    v82 = &qword_21EC96138;
LABEL_486:
                    v111 = *v82;
                    if (v81)
                    {
                    }

                    if (v80)
                    {
                    }

                    if (v79)
                    {

                      if (!v78)
                      {
                        goto LABEL_492;
                      }
                    }

                    else if (!v78)
                    {
LABEL_492:
                      if (!v77)
                      {
LABEL_494:
                        viewCopy = v461;
                        if (v76)
                        {
                        }

                        if (v75)
                        {
                        }

                        WeakRetained = v460;
                        if (v74)
                        {
                        }

                        if (v73)
                        {
                        }

                        if (v410)
                        {
                        }

                        if (HIDWORD(v410))
                        {
                        }

                        if (v415)
                        {
                        }

                        if (HIDWORD(v415))
                        {
                        }

                        if (v420)
                        {
                        }

                        if (HIDWORD(v420))
                        {
                        }

                        if (v425)
                        {
                        }

                        if (HIDWORD(v425))
                        {
                        }

                        if (v430)
                        {
                        }

                        if (v435)
                        {
                        }

                        if (HIDWORD(v430))
                        {
                        }

                        if (v440)
                        {
                        }

                        if (HIDWORD(v435))
                        {
                        }

                        if (v445)
                        {
                        }

                        if (HIDWORD(v440))
                        {
                        }

                        if (v450)
                        {
                        }

                        if (HIDWORD(v445))
                        {
                        }

                        if (HIDWORD(v450))
                        {
                        }

                        if (LODWORD(v453[0]))
                        {
                        }

                        if (HIDWORD(v453[0]))
                        {
                        }

                        if (LODWORD(v453[1]))
                        {
                        }

                        if (HIDWORD(v453[1]))
                        {
                        }

                        if (LODWORD(v453[2]))
                        {
                        }

                        if (HIDWORD(v453[2]))
                        {
                        }

                        if (LODWORD(v453[3]))
                        {
                        }

                        if (HIDWORD(v453[3]))
                        {
                        }

                        if (LODWORD(v453[4]))
                        {
                        }

                        if (HIDWORD(v453[4]))
                        {
                        }

                        if (LODWORD(v453[5]))
                        {
                        }

                        if (HIDWORD(v453[5]))
                        {
                        }

                        if (LODWORD(v453[6]))
                        {
                        }

                        if (HIDWORD(v453[6]))
                        {
                        }

                        if (LODWORD(v453[7]))
                        {
                        }

                        if (HIDWORD(v453[7]))
                        {
                        }

                        if (LODWORD(v453[8]))
                        {
                        }

                        if (HIDWORD(v453[8]))
                        {
                        }

                        if (v454)
                        {
                        }

                        if (HIDWORD(v454))
                        {
                        }

                        if (v455)
                        {
                        }

                        if (HIDWORD(v455))
                        {
                        }

                        if (v456)
                        {
                        }

                        if (HIDWORD(v456))
                        {
                        }

                        if (v457)
                        {
                        }

                        if (HIDWORD(v457))
                        {
                        }

                        if (v458)
                        {
                        }

                        if (HIDWORD(v458))
                        {
                        }

                        if (v459)
                        {
                        }

                        v17 = v65 + v111;
                        if (!HIDWORD(v459))
                        {
                          goto LABEL_898;
                        }

                        v112 = currentDevice;
                        goto LABEL_897;
                      }

LABEL_493:

                      goto LABEL_494;
                    }

                    if (!v77)
                    {
                      goto LABEL_494;
                    }

                    goto LABEL_493;
                  }

LABEL_2472:
                  v82 = &CSQuickActionButtonInsetX;
                  goto LABEL_486;
                }
              }

              v425 = 0;
              v430 = 0;
              v435 = 0;
              v440 = 0;
              v415 = 0;
              v420 = 0;
              v410 = 0;
              v73 = 0;
              v445 = 0;
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v450 = 0;
              v78 = 0;
              v79 = 0;
              v80 = 0;
              v81 = 0;
              memset(v453, 0, 68);
              v82 = &qword_21EC96208;
              HIDWORD(v453[8]) = mainScreen29 ^ 1;
              goto LABEL_486;
            }

LABEL_148:

            goto LABEL_149;
          }

LABEL_147:
          if (!v45)
          {
            goto LABEL_149;
          }

          goto LABEL_148;
        }

LABEL_132:

        goto LABEL_133;
      }
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v408 = 0;
    v413 = 0;
    v418 = 0;
    v423 = 0;
    v428 = 0;
    v433 = 0;
    v438 = 0;
    v443 = 0;
    v448 = 0;
    memset(v453, 0, 68);
    v46 = &qword_21EC960F8;
    HIDWORD(v453[8]) = currentDevice29 ^ 1;
    goto LABEL_129;
  }

  if (v9)
  {
    v14 = __sb__runningInSpringBoard();
    mainScreen31 = &CSQuickActionButtonDiameter;
    v460 = WeakRetained;
    v461 = viewCopy;
    if (v14)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v459 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        v459 = 0x100000000;
        goto LABEL_31;
      }
    }

    HIDWORD(v459) = v14 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice30 = __sb__runningInSpringBoard();
      if (currentDevice30)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice3 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice3 _referenceBounds];
      }

      LODWORD(v459) = currentDevice30 ^ 1;
      BSSizeRoundForScale();
      if (v61 == *(MEMORY[0x277D66E30] + 288) && v60 == *(MEMORY[0x277D66E30] + 296))
      {
        v457 = 0;
        v458 = 0;
        v455 = 0;
        v456 = 0;
        v454 = 0;
        memset(v453, 0, sizeof(v453));
        v449 = 0;
        v439 = 0;
        v444 = 0;
        v429 = 0;
        v434 = 0;
        v419 = 0;
        v424 = 0;
        v409 = 0;
        v414 = 0;
        v405 = 0;
        v401 = 0;
        v397 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = &qword_21EC96100;
        goto LABEL_308;
      }
    }

    else
    {
      LODWORD(v459) = 0;
    }

LABEL_31:
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v458 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v458 = 0x100000000;
        goto LABEL_49;
      }
    }

    HIDWORD(v458) = v27 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice30 = __sb__runningInSpringBoard();
      if (currentDevice30)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice9 _referenceBounds];
      }

      LODWORD(v458) = currentDevice30 ^ 1;
      BSSizeRoundForScale();
      if (v63 >= *(MEMORY[0x277D66E30] + 440))
      {
        v456 = 0;
        v457 = 0;
        v454 = 0;
        v455 = 0;
        memset(v453, 0, sizeof(v453));
        v449 = 0;
        v439 = 0;
        v444 = 0;
        v429 = 0;
        v434 = 0;
        v419 = 0;
        v424 = 0;
        v409 = 0;
        v414 = 0;
        v405 = 0;
        v401 = 0;
        v397 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = &qword_21EC96128;
        goto LABEL_308;
      }
    }

    else
    {
      LODWORD(v458) = 0;
    }

LABEL_49:
    v29 = __sb__runningInSpringBoard();
    if (v29)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v457 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v457 = 0x100000000;
        goto LABEL_66;
      }
    }

    HIDWORD(v457) = v29 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice30 = __sb__runningInSpringBoard();
      if (currentDevice30)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
        [currentDevice8 _referenceBounds];
      }

      LODWORD(v457) = currentDevice30 ^ 1;
      BSSizeRoundForScale();
      if (v88 >= *(MEMORY[0x277D66E30] + 376))
      {
        v455 = 0;
        v456 = 0;
        v454 = 0;
        memset(v453, 0, sizeof(v453));
        v449 = 0;
        v439 = 0;
        v444 = 0;
        v429 = 0;
        v434 = 0;
        v419 = 0;
        v424 = 0;
        v409 = 0;
        v414 = 0;
        v405 = 0;
        v401 = 0;
        v397 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = &qword_21EC96118;
        goto LABEL_308;
      }
    }

    else
    {
      LODWORD(v457) = 0;
    }

LABEL_66:
    v31 = __sb__runningInSpringBoard();
    if (v31)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v456 = 0;
        goto LABEL_84;
      }
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen4 userInterfaceIdiom] != 1)
      {
        v456 = 0x100000000;
        goto LABEL_84;
      }
    }

    HIDWORD(v456) = v31 ^ 1;
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    LODWORD(v456) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v35 >= *(MEMORY[0x277D66E30] + 280))
    {
      v454 = 0;
      v455 = 0;
      memset(v453, 0, sizeof(v453));
      v449 = 0;
      v439 = 0;
      v444 = 0;
      v429 = 0;
      v434 = 0;
      v419 = 0;
      v424 = 0;
      v409 = 0;
      v414 = 0;
      v405 = 0;
      v401 = 0;
      v397 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = &qword_21EC96120;
      goto LABEL_308;
    }

LABEL_84:
    v36 = __sb__runningInSpringBoard();
    if (v36)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v455 = 0;
        goto LABEL_104;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
        v455 = 0x100000000;
        goto LABEL_104;
      }
    }

    HIDWORD(v455) = v36 ^ 1;
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v455) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 264))
    {
      v454 = 0;
      memset(v453, 0, sizeof(v453));
      v449 = 0;
      v439 = 0;
      v444 = 0;
      v429 = 0;
      v434 = 0;
      v419 = 0;
      v424 = 0;
      v409 = 0;
      v414 = 0;
      v405 = 0;
      v401 = 0;
      v397 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = &qword_21EC96110;
      goto LABEL_308;
    }

LABEL_104:
    v57 = __sb__runningInSpringBoard();
    if (v57)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v454 = 0;
        goto LABEL_915;
      }
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen5 userInterfaceIdiom] != 1)
      {
        v454 = 0x100000000;
        goto LABEL_915;
      }
    }

    HIDWORD(v454) = v57 ^ 1;
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
      [currentDevice11 _referenceBounds];
    }

    LODWORD(v454) = currentDevice30 ^ 1;
    BSSizeRoundForScale();
    if (v143 >= *(MEMORY[0x277D66E30] + 248))
    {
      memset(v453, 0, sizeof(v453));
      v449 = 0;
      v439 = 0;
      v444 = 0;
      v429 = 0;
      v434 = 0;
      v419 = 0;
      v424 = 0;
      v409 = 0;
      v414 = 0;
      v405 = 0;
      v401 = 0;
      v397 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = &qword_21EC96108;
      goto LABEL_308;
    }

LABEL_915:
    currentDevice30 = __sb__runningInSpringBoard();
    if (currentDevice30)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_917;
      }
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D75418] currentDevice];
      if ([mainScreen3 userInterfaceIdiom] != 1)
      {
LABEL_917:
        HIDWORD(v453[8]) = currentDevice30 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_921:
          *(&v453[7] + 4) = 0;
          goto LABEL_1004;
        }

        v144 = __sb__runningInSpringBoard();
        if (v144)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_921;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            HIDWORD(v453[7]) = 0;
            LODWORD(v453[8]) = 1;
            goto LABEL_1004;
          }
        }

        LODWORD(v453[8]) = v144 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v154 = __sb__runningInSpringBoard();
          if (v154)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice17 _referenceBounds];
          }

          currentDevice30 = v154 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v453[7]) = currentDevice30;
          if (v167 >= *(MEMORY[0x277D66E30] + 200))
          {
            memset(v453, 0, 60);
            v449 = 0;
            v439 = 0;
            v444 = 0;
            v429 = 0;
            v434 = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC960D8;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v453[7]) = 0;
        }

LABEL_1004:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[6] + 4) = 0;
            goto LABEL_1014;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            HIDWORD(v453[6]) = 0;
            LODWORD(v453[7]) = 1;
            goto LABEL_1014;
          }
        }

        LODWORD(v453[7]) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          HIDWORD(v453[6]) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v155 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_1018;
          }
        }

        else
        {
          HIDWORD(v453[6]) = 0;
        }

LABEL_1014:
        if (_SBF_Private_IsD94Like())
        {
          memset(v453, 0, 52);
          v449 = 0;
          v439 = 0;
          v444 = 0;
          v429 = 0;
          v434 = 0;
          v419 = 0;
          v424 = 0;
          v409 = 0;
          v414 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC960E0;
          goto LABEL_308;
        }

LABEL_1018:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_1022:
          *(&v453[5] + 4) = 0;
          goto LABEL_1153;
        }

        v156 = __sb__runningInSpringBoard();
        if (v156)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1022;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            HIDWORD(v453[5]) = 0;
            LODWORD(v453[6]) = 1;
            goto LABEL_1153;
          }
        }

        LODWORD(v453[6]) = v156 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice19 _referenceBounds];
          }

          HIDWORD(v453[5]) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v192 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v453, 0, 44);
            v449 = 0;
            v439 = 0;
            v444 = 0;
            v429 = 0;
            v434 = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC960E8;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v453[5]) = 0;
        }

LABEL_1153:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[4] + 4) = 0;
            goto LABEL_1163;
          }
        }

        else
        {
          mainScreen8 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen8 userInterfaceIdiom])
          {
            HIDWORD(v453[4]) = 0;
            LODWORD(v453[5]) = 1;
            goto LABEL_1163;
          }
        }

        LODWORD(v453[5]) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          HIDWORD(v453[4]) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v174 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1167;
          }
        }

        else
        {
          HIDWORD(v453[4]) = 0;
        }

LABEL_1163:
        if (_SBF_Private_IsD64Like())
        {
          memset(v453, 0, 36);
          v449 = 0;
          v439 = 0;
          v444 = 0;
          v429 = 0;
          v434 = 0;
          v419 = 0;
          v424 = 0;
          v409 = 0;
          v414 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC960F0;
          goto LABEL_308;
        }

LABEL_1167:
        v175 = __sb__runningInSpringBoard();
        if (v175)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[3] + 4) = 0;
            goto LABEL_1177;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            HIDWORD(v453[3]) = 0;
            LODWORD(v453[4]) = 1;
            goto LABEL_1177;
          }
        }

        LODWORD(v453[4]) = v175 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v176 = __sb__runningInSpringBoard();
          if (v176)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice16 _referenceBounds];
          }

          currentDevice30 = v176 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v453[3]) = currentDevice30;
          if (v187 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v453, 0, 28);
            v449 = 0;
            v439 = 0;
            v444 = 0;
            v429 = 0;
            v434 = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC960C8;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v453[3]) = 0;
        }

LABEL_1177:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[2] + 4) = 0;
            goto LABEL_1295;
          }
        }

        else
        {
          mainScreen10 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen10 userInterfaceIdiom])
          {
            HIDWORD(v453[2]) = 0;
            LODWORD(v453[3]) = 1;
            goto LABEL_1295;
          }
        }

        LODWORD(v453[3]) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          HIDWORD(v453[2]) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v198 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1355;
          }
        }

        else
        {
          HIDWORD(v453[2]) = 0;
        }

LABEL_1295:
        if (_SBF_Private_IsD54())
        {
          memset(v453, 0, 20);
          v449 = 0;
          v439 = 0;
          v444 = 0;
          v429 = 0;
          v434 = 0;
          v419 = 0;
          v424 = 0;
          v409 = 0;
          v414 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC960D0;
          goto LABEL_308;
        }

LABEL_1355:
        v199 = __sb__runningInSpringBoard();
        if (v199)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v453[1] + 4) = 0;
            goto LABEL_1399;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            HIDWORD(v453[1]) = 0;
            LODWORD(v453[2]) = 1;
            goto LABEL_1399;
          }
        }

        LODWORD(v453[2]) = v199 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v207 = __sb__runningInSpringBoard();
          if (v207)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice21 _referenceBounds];
          }

          currentDevice30 = v207 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v453[1]) = currentDevice30;
          if (v212 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            *(v453 + 4) = 0;
            LODWORD(v453[0]) = 0;
            v449 = 0;
            v439 = 0;
            v444 = 0;
            v429 = 0;
            v434 = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC96088;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v453[1]) = 0;
        }

LABEL_1399:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v453 + 4) = 0;
            goto LABEL_1446;
          }
        }

        else
        {
          mainScreen9 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen9 userInterfaceIdiom])
          {
            HIDWORD(v453[0]) = 0;
            LODWORD(v453[1]) = 1;
            goto LABEL_1446;
          }
        }

        LODWORD(v453[1]) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          HIDWORD(v453[0]) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v218 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1501;
          }
        }

        else
        {
          HIDWORD(v453[0]) = 0;
        }

LABEL_1446:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          LODWORD(v453[0]) = 0;
          v449 = 0;
          v439 = 0;
          v444 = 0;
          v429 = 0;
          v434 = 0;
          v419 = 0;
          v424 = 0;
          v409 = 0;
          v414 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96090;
          goto LABEL_308;
        }

LABEL_1501:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1505:
          LODWORD(v453[0]) = 0;
          HIDWORD(v449) = 0;
          goto LABEL_1564;
        }

        v219 = __sb__runningInSpringBoard();
        if (v219)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1505;
          }
        }

        else
        {
          mainScreen14 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen14 userInterfaceIdiom])
          {
            HIDWORD(v449) = 0;
            LODWORD(v453[0]) = 1;
            goto LABEL_1564;
          }
        }

        LODWORD(v453[0]) = v219 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v229 = __sb__runningInSpringBoard();
          if (v229)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice24 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice24 _referenceBounds];
          }

          currentDevice30 = v229 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v449) = currentDevice30;
          if (v242 >= *(MEMORY[0x277D66E30] + 184))
          {
            LODWORD(v449) = 0;
            v439 = 0;
            v444 = 0;
            v429 = 0;
            v434 = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC96078;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v449) = 0;
        }

LABEL_1564:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v449) = 0;
            HIDWORD(v444) = 0;
            goto LABEL_1574;
          }
        }

        else
        {
          mainScreen12 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen12 userInterfaceIdiom])
          {
            HIDWORD(v444) = 0;
            LODWORD(v449) = 1;
            goto LABEL_1574;
          }
        }

        LODWORD(v449) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          HIDWORD(v444) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v230 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1578;
          }
        }

        else
        {
          HIDWORD(v444) = 0;
        }

LABEL_1574:
        if (_SBF_Private_IsD93Like())
        {
          LODWORD(v444) = 0;
          v434 = 0;
          v439 = 0;
          v424 = 0;
          v429 = 0;
          v414 = 0;
          v419 = 0;
          v409 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96080;
          goto LABEL_308;
        }

LABEL_1578:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1582:
          LODWORD(v444) = 0;
          HIDWORD(v439) = 0;
          goto LABEL_1704;
        }

        v231 = __sb__runningInSpringBoard();
        if (v231)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1582;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v439) = 0;
            LODWORD(v444) = 1;
            goto LABEL_1704;
          }
        }

        LODWORD(v444) = v231 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v249 = __sb__runningInSpringBoard();
          if (v249)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          currentDevice30 = v249 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v439) = currentDevice30;
          if (v262 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v439) = 0;
            v429 = 0;
            v434 = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC960A8;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v439) = 0;
        }

LABEL_1704:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v439) = 0;
            HIDWORD(v434) = 0;
            goto LABEL_1714;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            HIDWORD(v434) = 0;
            LODWORD(v439) = 1;
            goto LABEL_1714;
          }
        }

        LODWORD(v439) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          HIDWORD(v434) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v250 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1718;
          }
        }

        else
        {
          HIDWORD(v434) = 0;
        }

LABEL_1714:
        if (_SBF_Private_IsD63Like())
        {
          LODWORD(v434) = 0;
          v424 = 0;
          v429 = 0;
          v414 = 0;
          v419 = 0;
          v409 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC960B0;
          goto LABEL_308;
        }

LABEL_1718:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1722:
          LODWORD(v434) = 0;
          HIDWORD(v429) = 0;
          goto LABEL_1853;
        }

        v251 = __sb__runningInSpringBoard();
        if (v251)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1722;
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v429) = 0;
            LODWORD(v434) = 1;
            goto LABEL_1853;
          }
        }

        LODWORD(v434) = v251 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          HIDWORD(v429) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v282 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v429) = 0;
            v419 = 0;
            v424 = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC960B8;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v429) = 0;
        }

LABEL_1853:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v429) = 0;
            HIDWORD(v424) = 0;
            goto LABEL_1863;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v424) = 0;
            LODWORD(v429) = 1;
            goto LABEL_1863;
          }
        }

        LODWORD(v429) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v424) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v268 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1867;
          }
        }

        else
        {
          HIDWORD(v424) = 0;
        }

LABEL_1863:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v424) = 0;
          v414 = 0;
          v419 = 0;
          v409 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC960C0;
          goto LABEL_308;
        }

LABEL_1867:
        v269 = __sb__runningInSpringBoard();
        if (v269)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v424) = 0;
            HIDWORD(v419) = 0;
            goto LABEL_1877;
          }
        }

        else
        {
          mainScreen18 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen18 userInterfaceIdiom])
          {
            HIDWORD(v419) = 0;
            LODWORD(v424) = 1;
            goto LABEL_1877;
          }
        }

        LODWORD(v424) = v269 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          HIDWORD(v419) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v277 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v419) = 0;
            v409 = 0;
            v414 = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC96098;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v419) = 0;
        }

LABEL_1877:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v419) = 0;
            HIDWORD(v414) = 0;
            goto LABEL_1995;
          }
        }

        else
        {
          mainScreen20 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen20 userInterfaceIdiom])
          {
            HIDWORD(v414) = 0;
            LODWORD(v419) = 1;
            goto LABEL_1995;
          }
        }

        LODWORD(v419) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice26 _referenceBounds];
          }

          HIDWORD(v414) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v288 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_2055;
          }
        }

        else
        {
          HIDWORD(v414) = 0;
        }

LABEL_1995:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v414) = 0;
          v409 = 0;
          v405 = 0;
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC960A0;
          goto LABEL_308;
        }

LABEL_2055:
        v289 = __sb__runningInSpringBoard();
        if (v289)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v414) = 0;
            HIDWORD(v409) = 0;
            goto LABEL_2099;
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            HIDWORD(v409) = 0;
            LODWORD(v414) = 1;
            goto LABEL_2099;
          }
        }

        LODWORD(v414) = v289 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice27 _referenceBounds];
          }

          HIDWORD(v409) = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v297 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v409) = 0;
            v405 = 0;
            v401 = 0;
            v397 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC96068;
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v409) = 0;
        }

LABEL_2099:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v409) = 0;
            v405 = 0;
            goto LABEL_2145;
          }
        }

        else
        {
          mainScreen22 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen22 userInterfaceIdiom])
          {
            v405 = 0;
            LODWORD(v409) = 1;
            goto LABEL_2145;
          }
        }

        LODWORD(v409) = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
            [currentDevice28 _referenceBounds];
          }

          v405 = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v302 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_2194;
          }
        }

        else
        {
          v405 = 0;
        }

LABEL_2145:
        if (_SBF_Private_IsD53())
        {
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96070;
          goto LABEL_308;
        }

LABEL_2194:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
        {
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96048;
          goto LABEL_308;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96050;
          goto LABEL_308;
        }

        if (_SBF_Private_IsD52OrSimilarDevice())
        {
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96038;
          goto LABEL_308;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          v401 = 0;
          v397 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96040;
          goto LABEL_308;
        }

        v307 = __sb__runningInSpringBoard();
        if (v307)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v401 = 0;
            v397 = 0;
            goto LABEL_2284;
          }
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen27 userInterfaceIdiom])
          {
            v397 = 0;
            v401 = 1;
            goto LABEL_2284;
          }
        }

        v401 = v307 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          v397 = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v324 >= *(MEMORY[0x277D66E30] + 88))
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC96058;
            goto LABEL_308;
          }
        }

        else
        {
          v397 = 0;
        }

LABEL_2284:
        currentDevice30 = __sb__runningInSpringBoard();
        if (currentDevice30)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v47 = 0;
            v48 = 0;
            goto LABEL_2334;
          }
        }

        else
        {
          mainScreen25 = [MEMORY[0x277D75418] currentDevice];
          if ([mainScreen25 userInterfaceIdiom])
          {
            v48 = 0;
            v47 = 1;
            goto LABEL_2334;
          }
        }

        v47 = currentDevice30 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice30 = __sb__runningInSpringBoard();
          if (currentDevice30)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen28 _referenceBounds];
          }

          v48 = currentDevice30 ^ 1;
          BSSizeRoundForScale();
          if (v329 >= *(MEMORY[0x277D66E30] + 72))
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v53 = &qword_21EC96060;
            goto LABEL_308;
          }
        }

        else
        {
          v48 = 0;
        }

LABEL_2334:
        v313 = __sb__runningInSpringBoard();
        if (v313)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v49 = 0;
            v50 = 0;
            goto LABEL_2385;
          }
        }

        else
        {
          currentDevice30 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice30 userInterfaceIdiom])
          {
            v50 = 0;
            v49 = 1;
            goto LABEL_2385;
          }
        }

        v49 = v313 ^ 1;
        mainScreen31 = __sb__runningInSpringBoard();
        if (mainScreen31)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen30 _referenceBounds];
        }

        v50 = mainScreen31 ^ 1;
        BSSizeRoundForScale();
        if (v319 >= *(MEMORY[0x277D66E30] + 56))
        {
          v51 = 0;
          v52 = 0;
          v53 = &qword_21EC96030;
          goto LABEL_308;
        }

LABEL_2385:
        mainScreen31 = __sb__runningInSpringBoard();
        if (mainScreen31)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v51 = 0;
            v52 = 0;
            goto LABEL_2466;
          }
        }

        else
        {
          currentDevice31 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice31 userInterfaceIdiom])
          {
            v52 = 0;
            v51 = 1;
            goto LABEL_2466;
          }
        }

        v51 = mainScreen31 ^ 1;
        v335 = __sb__runningInSpringBoard();
        if (v335)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen31 _referenceBounds];
        }

        v52 = v335 ^ 1;
        BSSizeRoundForScale();
        if (v336 >= *(MEMORY[0x277D66E30] + 40))
        {
          v53 = &qword_21EC96028;
LABEL_308:
          v89 = *v53;
          if (v52)
          {

            if (!v51)
            {
              goto LABEL_310;
            }
          }

          else if (!v51)
          {
LABEL_310:
            if (v50)
            {
              goto LABEL_311;
            }

            goto LABEL_423;
          }

          if (v50)
          {
LABEL_311:

            if (!v49)
            {
              goto LABEL_312;
            }

            goto LABEL_424;
          }

LABEL_423:
          if (!v49)
          {
LABEL_312:
            if (!v48)
            {
              goto LABEL_314;
            }

            goto LABEL_313;
          }

LABEL_424:

          if (!v48)
          {
LABEL_314:
            if (v47)
            {
            }

            if (v397)
            {
            }

            if (v401)
            {
            }

            if (v405)
            {
            }

            if (v409)
            {
            }

            if (HIDWORD(v409))
            {
            }

            if (v414)
            {
            }

            if (HIDWORD(v414))
            {
            }

            if (v419)
            {
            }

            if (HIDWORD(v419))
            {
            }

            if (v424)
            {
            }

            if (HIDWORD(v424))
            {
            }

            if (v429)
            {
            }

            if (HIDWORD(v429))
            {
            }

            if (v434)
            {
            }

            if (HIDWORD(v434))
            {
            }

            if (v439)
            {
            }

            if (HIDWORD(v439))
            {
            }

            if (v444)
            {
            }

            if (HIDWORD(v444))
            {
            }

            if (v449)
            {
            }

            if (HIDWORD(v449))
            {
            }

            if (LODWORD(v453[0]))
            {
            }

            if (HIDWORD(v453[0]))
            {
            }

            if (LODWORD(v453[1]))
            {
            }

            if (HIDWORD(v453[1]))
            {
            }

            if (LODWORD(v453[2]))
            {
            }

            if (HIDWORD(v453[2]))
            {
            }

            if (LODWORD(v453[3]))
            {
            }

            if (HIDWORD(v453[3]))
            {
            }

            if (LODWORD(v453[4]))
            {
            }

            if (HIDWORD(v453[4]))
            {
            }

            if (LODWORD(v453[5]))
            {
            }

            if (HIDWORD(v453[5]))
            {
            }

            if (LODWORD(v453[6]))
            {
            }

            if (HIDWORD(v453[6]))
            {
            }

            if (LODWORD(v453[7]))
            {
            }

            if (HIDWORD(v453[7]))
            {
            }

            if (LODWORD(v453[8]))
            {
            }

            if (HIDWORD(v453[8]))
            {
            }

            if (v454)
            {
            }

            if (HIDWORD(v454))
            {
            }

            if (v455)
            {
            }

            if (HIDWORD(v455))
            {
            }

            if (v456)
            {
            }

            if (HIDWORD(v456))
            {
            }

            if (v457)
            {
            }

            if (HIDWORD(v457))
            {
            }

            if (v458)
            {
            }

            if (HIDWORD(v458))
            {
            }

            if (v459)
            {
            }

            if (HIDWORD(v459))
            {
            }

            v90 = __sb__runningInSpringBoard();
            mainScreen32 = &CSQuickActionButtonInsetY;
            if (v90)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v459 = 0;
                goto LABEL_432;
              }
            }

            else
            {
              currentDevice4 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice4 userInterfaceIdiom] != 1)
              {
                v459 = 0x100000000;
                goto LABEL_432;
              }
            }

            HIDWORD(v459) = v90 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice3 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice3 _referenceBounds];
              }

              LODWORD(v459) = currentDevice32 ^ 1;
              BSSizeRoundForScale();
              if (v108 == *(MEMORY[0x277D66E30] + 288) && v107 == *(MEMORY[0x277D66E30] + 296))
              {
                v457 = 0;
                v458 = 0;
                v455 = 0;
                v456 = 0;
                v454 = 0;
                memset(v453, 0, sizeof(v453));
                v451 = 0;
                v441 = 0;
                v446 = 0;
                v431 = 0;
                v436 = 0;
                v421 = 0;
                v426 = 0;
                v411 = 0;
                v416 = 0;
                v406 = 0;
                v402 = 0;
                v398 = 0;
                v98 = 0;
                v99 = 0;
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = &qword_21EC96320;
                goto LABEL_604;
              }
            }

            else
            {
              LODWORD(v459) = 0;
            }

LABEL_432:
            v93 = __sb__runningInSpringBoard();
            if (v93)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v458 = 0;
                goto LABEL_441;
              }
            }

            else
            {
              currentDevice5 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice5 userInterfaceIdiom] != 1)
              {
                v458 = 0x100000000;
                goto LABEL_441;
              }
            }

            HIDWORD(v458) = v93 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice9 _referenceBounds];
              }

              LODWORD(v458) = currentDevice32 ^ 1;
              BSSizeRoundForScale();
              if (v109 >= *(MEMORY[0x277D66E30] + 440))
              {
                v456 = 0;
                v457 = 0;
                v454 = 0;
                v455 = 0;
                memset(v453, 0, sizeof(v453));
                v451 = 0;
                v441 = 0;
                v446 = 0;
                v431 = 0;
                v436 = 0;
                v421 = 0;
                v426 = 0;
                v411 = 0;
                v416 = 0;
                v406 = 0;
                v402 = 0;
                v398 = 0;
                v98 = 0;
                v99 = 0;
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = &qword_21EC96348;
                goto LABEL_604;
              }
            }

            else
            {
              LODWORD(v458) = 0;
            }

LABEL_441:
            v94 = __sb__runningInSpringBoard();
            if (v94)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v457 = 0;
                goto LABEL_450;
              }
            }

            else
            {
              currentDevice6 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice6 userInterfaceIdiom] != 1)
              {
                v457 = 0x100000000;
                goto LABEL_450;
              }
            }

            HIDWORD(v457) = v94 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              currentDevice32 = __sb__runningInSpringBoard();
              if (currentDevice32)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
                [currentDevice8 _referenceBounds];
              }

              LODWORD(v457) = currentDevice32 ^ 1;
              BSSizeRoundForScale();
              if (v113 >= *(MEMORY[0x277D66E30] + 376))
              {
                v455 = 0;
                v456 = 0;
                v454 = 0;
                memset(v453, 0, sizeof(v453));
                v451 = 0;
                v441 = 0;
                v446 = 0;
                v431 = 0;
                v436 = 0;
                v421 = 0;
                v426 = 0;
                v411 = 0;
                v416 = 0;
                v406 = 0;
                v402 = 0;
                v398 = 0;
                v98 = 0;
                v99 = 0;
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = &qword_21EC96338;
                goto LABEL_604;
              }
            }

            else
            {
              LODWORD(v457) = 0;
            }

LABEL_450:
            v95 = __sb__runningInSpringBoard();
            if (v95)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v456 = 0;
                goto LABEL_459;
              }
            }

            else
            {
              mainScreen4 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen4 userInterfaceIdiom] != 1)
              {
                v456 = 0x100000000;
                goto LABEL_459;
              }
            }

            HIDWORD(v456) = v95 ^ 1;
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen2 _referenceBounds];
            }

            LODWORD(v456) = currentDevice32 ^ 1;
            BSSizeRoundForScale();
            if (v96 >= *(MEMORY[0x277D66E30] + 280))
            {
              v454 = 0;
              v455 = 0;
              memset(v453, 0, sizeof(v453));
              v451 = 0;
              v441 = 0;
              v446 = 0;
              v431 = 0;
              v436 = 0;
              v421 = 0;
              v426 = 0;
              v411 = 0;
              v416 = 0;
              v406 = 0;
              v402 = 0;
              v398 = 0;
              v98 = 0;
              v99 = 0;
              v100 = 0;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v104 = &qword_21EC96340;
              goto LABEL_604;
            }

LABEL_459:
            v97 = __sb__runningInSpringBoard();
            if (v97)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v455 = 0;
                goto LABEL_469;
              }
            }

            else
            {
              currentDevice7 = [MEMORY[0x277D75418] currentDevice];
              if ([currentDevice7 userInterfaceIdiom] != 1)
              {
                v455 = 0x100000000;
                goto LABEL_469;
              }
            }

            HIDWORD(v455) = v97 ^ 1;
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen6 _referenceBounds];
            }

            LODWORD(v455) = currentDevice32 ^ 1;
            BSSizeRoundForScale();
            if (v105 >= *(MEMORY[0x277D66E30] + 264))
            {
              v454 = 0;
              memset(v453, 0, sizeof(v453));
              v451 = 0;
              v441 = 0;
              v446 = 0;
              v431 = 0;
              v436 = 0;
              v421 = 0;
              v426 = 0;
              v411 = 0;
              v416 = 0;
              v406 = 0;
              v402 = 0;
              v398 = 0;
              v98 = 0;
              v99 = 0;
              v100 = 0;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v104 = &qword_21EC96330;
              goto LABEL_604;
            }

LABEL_469:
            v106 = __sb__runningInSpringBoard();
            if (v106)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                v454 = 0;
                goto LABEL_939;
              }
            }

            else
            {
              mainScreen5 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen5 userInterfaceIdiom] != 1)
              {
                v454 = 0x100000000;
                goto LABEL_939;
              }
            }

            HIDWORD(v454) = v106 ^ 1;
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
              [currentDevice11 _referenceBounds];
            }

            LODWORD(v454) = currentDevice32 ^ 1;
            BSSizeRoundForScale();
            if (v147 >= *(MEMORY[0x277D66E30] + 248))
            {
              memset(v453, 0, sizeof(v453));
              v451 = 0;
              v441 = 0;
              v446 = 0;
              v431 = 0;
              v436 = 0;
              v421 = 0;
              v426 = 0;
              v411 = 0;
              v416 = 0;
              v406 = 0;
              v402 = 0;
              v398 = 0;
              v98 = 0;
              v99 = 0;
              v100 = 0;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v104 = &qword_21EC96328;
              goto LABEL_604;
            }

LABEL_939:
            currentDevice32 = __sb__runningInSpringBoard();
            if (currentDevice32)
            {
              if (SBFEffectiveDeviceClass() != 2)
              {
                goto LABEL_941;
              }
            }

            else
            {
              mainScreen3 = [MEMORY[0x277D75418] currentDevice];
              if ([mainScreen3 userInterfaceIdiom] != 1)
              {
LABEL_941:
                HIDWORD(v453[8]) = currentDevice32 ^ 1;
                if (!_SBF_Private_IsD94Like())
                {
LABEL_945:
                  *(&v453[7] + 4) = 0;
                  goto LABEL_1054;
                }

                v148 = __sb__runningInSpringBoard();
                if (v148)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    goto LABEL_945;
                  }
                }

                else
                {
                  currentDevice10 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice10 userInterfaceIdiom])
                  {
                    HIDWORD(v453[7]) = 0;
                    LODWORD(v453[8]) = 1;
                    goto LABEL_1054;
                  }
                }

                LODWORD(v453[8]) = v148 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v160 = __sb__runningInSpringBoard();
                  if (v160)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice17 _referenceBounds];
                  }

                  currentDevice32 = v160 ^ 1u;
                  BSSizeRoundForScale();
                  HIDWORD(v453[7]) = currentDevice32;
                  if (v169 >= *(MEMORY[0x277D66E30] + 200))
                  {
                    memset(v453, 0, 60);
                    v451 = 0;
                    v441 = 0;
                    v446 = 0;
                    v431 = 0;
                    v436 = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC962F8;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v453[7]) = 0;
                }

LABEL_1054:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    *(&v453[6] + 4) = 0;
                    goto LABEL_1064;
                  }
                }

                else
                {
                  currentDevice12 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice12 userInterfaceIdiom])
                  {
                    HIDWORD(v453[6]) = 0;
                    LODWORD(v453[7]) = 1;
                    goto LABEL_1064;
                  }
                }

                LODWORD(v453[7]) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen7 _referenceBounds];
                  }

                  HIDWORD(v453[6]) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v161 >= *(MEMORY[0x277D66E30] + 200))
                  {
                    goto LABEL_1068;
                  }
                }

                else
                {
                  HIDWORD(v453[6]) = 0;
                }

LABEL_1064:
                if (_SBF_Private_IsD94Like())
                {
                  memset(v453, 0, 52);
                  v451 = 0;
                  v441 = 0;
                  v446 = 0;
                  v431 = 0;
                  v436 = 0;
                  v421 = 0;
                  v426 = 0;
                  v411 = 0;
                  v416 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96300;
                  goto LABEL_604;
                }

LABEL_1068:
                if (!_SBF_Private_IsD64Like())
                {
LABEL_1072:
                  *(&v453[5] + 4) = 0;
                  goto LABEL_1221;
                }

                v162 = __sb__runningInSpringBoard();
                if (v162)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    goto LABEL_1072;
                  }
                }

                else
                {
                  currentDevice14 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice14 userInterfaceIdiom])
                  {
                    HIDWORD(v453[5]) = 0;
                    LODWORD(v453[6]) = 1;
                    goto LABEL_1221;
                  }
                }

                LODWORD(v453[6]) = v162 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice19 _referenceBounds];
                  }

                  HIDWORD(v453[5]) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v194 >= *(MEMORY[0x277D66E30] + 136))
                  {
                    memset(v453, 0, 44);
                    v451 = 0;
                    v441 = 0;
                    v446 = 0;
                    v431 = 0;
                    v436 = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC96308;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v453[5]) = 0;
                }

LABEL_1221:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    *(&v453[4] + 4) = 0;
                    goto LABEL_1231;
                  }
                }

                else
                {
                  mainScreen8 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen8 userInterfaceIdiom])
                  {
                    HIDWORD(v453[4]) = 0;
                    LODWORD(v453[5]) = 1;
                    goto LABEL_1231;
                  }
                }

                LODWORD(v453[5]) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen11 _referenceBounds];
                  }

                  HIDWORD(v453[4]) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v180 >= *(MEMORY[0x277D66E30] + 136))
                  {
                    goto LABEL_1235;
                  }
                }

                else
                {
                  HIDWORD(v453[4]) = 0;
                }

LABEL_1231:
                if (_SBF_Private_IsD64Like())
                {
                  memset(v453, 0, 36);
                  v451 = 0;
                  v441 = 0;
                  v446 = 0;
                  v431 = 0;
                  v436 = 0;
                  v421 = 0;
                  v426 = 0;
                  v411 = 0;
                  v416 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96310;
                  goto LABEL_604;
                }

LABEL_1235:
                v181 = __sb__runningInSpringBoard();
                if (v181)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    *(&v453[3] + 4) = 0;
                    goto LABEL_1245;
                  }
                }

                else
                {
                  currentDevice13 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice13 userInterfaceIdiom])
                  {
                    HIDWORD(v453[3]) = 0;
                    LODWORD(v453[4]) = 1;
                    goto LABEL_1245;
                  }
                }

                LODWORD(v453[4]) = v181 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v182 = __sb__runningInSpringBoard();
                  if (v182)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice16 _referenceBounds];
                  }

                  currentDevice32 = v182 ^ 1u;
                  BSSizeRoundForScale();
                  HIDWORD(v453[3]) = currentDevice32;
                  if (v189 >= *(MEMORY[0x277D66E30] + 136))
                  {
                    memset(v453, 0, 28);
                    v451 = 0;
                    v441 = 0;
                    v446 = 0;
                    v431 = 0;
                    v436 = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC962E8;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v453[3]) = 0;
                }

LABEL_1245:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    *(&v453[2] + 4) = 0;
                    goto LABEL_1307;
                  }
                }

                else
                {
                  mainScreen10 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen10 userInterfaceIdiom])
                  {
                    HIDWORD(v453[2]) = 0;
                    LODWORD(v453[3]) = 1;
                    goto LABEL_1307;
                  }
                }

                LODWORD(v453[3]) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen13 _referenceBounds];
                  }

                  HIDWORD(v453[2]) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v202 >= *(MEMORY[0x277D66E30] + 136))
                  {
                    goto LABEL_1371;
                  }
                }

                else
                {
                  HIDWORD(v453[2]) = 0;
                }

LABEL_1307:
                if (_SBF_Private_IsD54())
                {
                  memset(v453, 0, 20);
                  v451 = 0;
                  v441 = 0;
                  v446 = 0;
                  v431 = 0;
                  v436 = 0;
                  v421 = 0;
                  v426 = 0;
                  v411 = 0;
                  v416 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC962F0;
                  goto LABEL_604;
                }

LABEL_1371:
                v203 = __sb__runningInSpringBoard();
                if (v203)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    *(&v453[1] + 4) = 0;
                    goto LABEL_1419;
                  }
                }

                else
                {
                  currentDevice15 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice15 userInterfaceIdiom])
                  {
                    HIDWORD(v453[1]) = 0;
                    LODWORD(v453[2]) = 1;
                    goto LABEL_1419;
                  }
                }

                LODWORD(v453[2]) = v203 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v209 = __sb__runningInSpringBoard();
                  if (v209)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice21 _referenceBounds];
                  }

                  currentDevice32 = v209 ^ 1u;
                  BSSizeRoundForScale();
                  HIDWORD(v453[1]) = currentDevice32;
                  if (v214 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
                  {
                    *(v453 + 4) = 0;
                    LODWORD(v453[0]) = 0;
                    v451 = 0;
                    v441 = 0;
                    v446 = 0;
                    v431 = 0;
                    v436 = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC962A8;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v453[1]) = 0;
                }

LABEL_1419:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    *(v453 + 4) = 0;
                    goto LABEL_1460;
                  }
                }

                else
                {
                  mainScreen9 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen9 userInterfaceIdiom])
                  {
                    HIDWORD(v453[0]) = 0;
                    LODWORD(v453[1]) = 1;
                    goto LABEL_1460;
                  }
                }

                LODWORD(v453[1]) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen16 _referenceBounds];
                  }

                  HIDWORD(v453[0]) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v222 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    goto LABEL_1519;
                  }
                }

                else
                {
                  HIDWORD(v453[0]) = 0;
                }

LABEL_1460:
                if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
                {
                  LODWORD(v453[0]) = 0;
                  v451 = 0;
                  v441 = 0;
                  v446 = 0;
                  v431 = 0;
                  v436 = 0;
                  v421 = 0;
                  v426 = 0;
                  v411 = 0;
                  v416 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC962B0;
                  goto LABEL_604;
                }

LABEL_1519:
                if (!_SBF_Private_IsD93Like())
                {
LABEL_1523:
                  LODWORD(v453[0]) = 0;
                  HIDWORD(v451) = 0;
                  goto LABEL_1614;
                }

                v223 = __sb__runningInSpringBoard();
                if (v223)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    goto LABEL_1523;
                  }
                }

                else
                {
                  mainScreen14 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen14 userInterfaceIdiom])
                  {
                    HIDWORD(v451) = 0;
                    LODWORD(v453[0]) = 1;
                    goto LABEL_1614;
                  }
                }

                LODWORD(v453[0]) = v223 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v235 = __sb__runningInSpringBoard();
                  if (v235)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice24 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice24 _referenceBounds];
                  }

                  currentDevice32 = v235 ^ 1u;
                  BSSizeRoundForScale();
                  HIDWORD(v451) = currentDevice32;
                  if (v244 >= *(MEMORY[0x277D66E30] + 184))
                  {
                    LODWORD(v451) = 0;
                    v441 = 0;
                    v446 = 0;
                    v431 = 0;
                    v436 = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC96298;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v451) = 0;
                }

LABEL_1614:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v451) = 0;
                    HIDWORD(v446) = 0;
                    goto LABEL_1624;
                  }
                }

                else
                {
                  mainScreen12 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen12 userInterfaceIdiom])
                  {
                    HIDWORD(v446) = 0;
                    LODWORD(v451) = 1;
                    goto LABEL_1624;
                  }
                }

                LODWORD(v451) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen15 _referenceBounds];
                  }

                  HIDWORD(v446) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v236 >= *(MEMORY[0x277D66E30] + 184))
                  {
                    goto LABEL_1628;
                  }
                }

                else
                {
                  HIDWORD(v446) = 0;
                }

LABEL_1624:
                if (_SBF_Private_IsD93Like())
                {
                  LODWORD(v446) = 0;
                  v436 = 0;
                  v441 = 0;
                  v426 = 0;
                  v431 = 0;
                  v416 = 0;
                  v421 = 0;
                  v411 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC962A0;
                  goto LABEL_604;
                }

LABEL_1628:
                if (!_SBF_Private_IsD63Like())
                {
LABEL_1632:
                  LODWORD(v446) = 0;
                  HIDWORD(v441) = 0;
                  goto LABEL_1754;
                }

                v237 = __sb__runningInSpringBoard();
                if (v237)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    goto LABEL_1632;
                  }
                }

                else
                {
                  currentDevice22 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice22 userInterfaceIdiom])
                  {
                    HIDWORD(v441) = 0;
                    LODWORD(v446) = 1;
                    goto LABEL_1754;
                  }
                }

                LODWORD(v446) = v237 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  v255 = __sb__runningInSpringBoard();
                  if (v255)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen21 _referenceBounds];
                  }

                  currentDevice32 = v255 ^ 1u;
                  BSSizeRoundForScale();
                  HIDWORD(v441) = currentDevice32;
                  if (v264 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    LODWORD(v441) = 0;
                    v431 = 0;
                    v436 = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC962C8;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v441) = 0;
                }

LABEL_1754:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v441) = 0;
                    HIDWORD(v436) = 0;
                    goto LABEL_1764;
                  }
                }

                else
                {
                  currentDevice18 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice18 userInterfaceIdiom])
                  {
                    HIDWORD(v436) = 0;
                    LODWORD(v441) = 1;
                    goto LABEL_1764;
                  }
                }

                LODWORD(v441) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen17 _referenceBounds];
                  }

                  HIDWORD(v436) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v256 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    goto LABEL_1768;
                  }
                }

                else
                {
                  HIDWORD(v436) = 0;
                }

LABEL_1764:
                if (_SBF_Private_IsD63Like())
                {
                  LODWORD(v436) = 0;
                  v426 = 0;
                  v431 = 0;
                  v416 = 0;
                  v421 = 0;
                  v411 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC962D0;
                  goto LABEL_604;
                }

LABEL_1768:
                if (!_SBF_Private_IsD23Like())
                {
LABEL_1772:
                  LODWORD(v436) = 0;
                  HIDWORD(v431) = 0;
                  goto LABEL_1921;
                }

                v257 = __sb__runningInSpringBoard();
                if (v257)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    goto LABEL_1772;
                  }
                }

                else
                {
                  currentDevice23 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice23 userInterfaceIdiom])
                  {
                    HIDWORD(v431) = 0;
                    LODWORD(v436) = 1;
                    goto LABEL_1921;
                  }
                }

                LODWORD(v436) = v257 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen24 _referenceBounds];
                  }

                  HIDWORD(v431) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v284 >= *(MEMORY[0x277D66E30] + 216))
                  {
                    LODWORD(v431) = 0;
                    v421 = 0;
                    v426 = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC962D8;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v431) = 0;
                }

LABEL_1921:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v431) = 0;
                    HIDWORD(v426) = 0;
                    goto LABEL_1931;
                  }
                }

                else
                {
                  currentDevice20 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice20 userInterfaceIdiom])
                  {
                    HIDWORD(v426) = 0;
                    LODWORD(v431) = 1;
                    goto LABEL_1931;
                  }
                }

                LODWORD(v431) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen19 _referenceBounds];
                  }

                  HIDWORD(v426) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v272 >= *(MEMORY[0x277D66E30] + 216))
                  {
                    goto LABEL_1935;
                  }
                }

                else
                {
                  HIDWORD(v426) = 0;
                }

LABEL_1931:
                if (_SBF_Private_IsD23Like())
                {
                  LODWORD(v426) = 0;
                  v416 = 0;
                  v421 = 0;
                  v411 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC962E0;
                  goto LABEL_604;
                }

LABEL_1935:
                v273 = __sb__runningInSpringBoard();
                if (v273)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v426) = 0;
                    HIDWORD(v421) = 0;
                    goto LABEL_1945;
                  }
                }

                else
                {
                  mainScreen18 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen18 userInterfaceIdiom])
                  {
                    HIDWORD(v421) = 0;
                    LODWORD(v426) = 1;
                    goto LABEL_1945;
                  }
                }

                LODWORD(v426) = v273 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen23 _referenceBounds];
                  }

                  HIDWORD(v421) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v279 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    LODWORD(v421) = 0;
                    v411 = 0;
                    v416 = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC962B8;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v421) = 0;
                }

LABEL_1945:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v421) = 0;
                    HIDWORD(v416) = 0;
                    goto LABEL_2007;
                  }
                }

                else
                {
                  mainScreen20 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen20 userInterfaceIdiom])
                  {
                    HIDWORD(v416) = 0;
                    LODWORD(v421) = 1;
                    goto LABEL_2007;
                  }
                }

                LODWORD(v421) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice26 _referenceBounds];
                  }

                  HIDWORD(v416) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v292 >= *(MEMORY[0x277D66E30] + 120))
                  {
                    goto LABEL_2071;
                  }
                }

                else
                {
                  HIDWORD(v416) = 0;
                }

LABEL_2007:
                if (_SBF_Private_IsD33OrSimilarDevice())
                {
                  LODWORD(v416) = 0;
                  v411 = 0;
                  v406 = 0;
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC962C0;
                  goto LABEL_604;
                }

LABEL_2071:
                v293 = __sb__runningInSpringBoard();
                if (v293)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v416) = 0;
                    HIDWORD(v411) = 0;
                    goto LABEL_2119;
                  }
                }

                else
                {
                  currentDevice25 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice25 userInterfaceIdiom])
                  {
                    HIDWORD(v411) = 0;
                    LODWORD(v416) = 1;
                    goto LABEL_2119;
                  }
                }

                LODWORD(v416) = v293 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice27 _referenceBounds];
                  }

                  HIDWORD(v411) = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v299 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    LODWORD(v411) = 0;
                    v406 = 0;
                    v402 = 0;
                    v398 = 0;
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC96288;
                    goto LABEL_604;
                  }
                }

                else
                {
                  HIDWORD(v411) = 0;
                }

LABEL_2119:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    LODWORD(v411) = 0;
                    v406 = 0;
                    goto LABEL_2157;
                  }
                }

                else
                {
                  mainScreen22 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen22 userInterfaceIdiom])
                  {
                    v406 = 0;
                    LODWORD(v411) = 1;
                    goto LABEL_2157;
                  }
                }

                LODWORD(v411) = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
                    [currentDevice28 _referenceBounds];
                  }

                  v406 = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v304 >= *(MEMORY[0x277D66E30] + 104))
                  {
                    goto LABEL_2218;
                  }
                }

                else
                {
                  v406 = 0;
                }

LABEL_2157:
                if (_SBF_Private_IsD53())
                {
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96290;
                  goto LABEL_604;
                }

LABEL_2218:
                if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
                {
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96268;
                  goto LABEL_604;
                }

                if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                {
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96270;
                  goto LABEL_604;
                }

                if (_SBF_Private_IsD52OrSimilarDevice())
                {
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96258;
                  goto LABEL_604;
                }

                if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                {
                  v402 = 0;
                  v398 = 0;
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96260;
                  goto LABEL_604;
                }

                v309 = __sb__runningInSpringBoard();
                if (v309)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    v402 = 0;
                    v398 = 0;
                    goto LABEL_2304;
                  }
                }

                else
                {
                  mainScreen27 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen27 userInterfaceIdiom])
                  {
                    v398 = 0;
                    v402 = 1;
                    goto LABEL_2304;
                  }
                }

                v402 = v309 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen26 _referenceBounds];
                  }

                  v398 = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v326 >= *(MEMORY[0x277D66E30] + 88))
                  {
                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC96278;
                    goto LABEL_604;
                  }
                }

                else
                {
                  v398 = 0;
                }

LABEL_2304:
                currentDevice32 = __sb__runningInSpringBoard();
                if (currentDevice32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    v98 = 0;
                    v99 = 0;
                    goto LABEL_2354;
                  }
                }

                else
                {
                  mainScreen25 = [MEMORY[0x277D75418] currentDevice];
                  if ([mainScreen25 userInterfaceIdiom])
                  {
                    v99 = 0;
                    v98 = 1;
                    goto LABEL_2354;
                  }
                }

                v98 = currentDevice32 ^ 1;
                if (SBFEffectiveHomeButtonType() == 2)
                {
                  currentDevice32 = __sb__runningInSpringBoard();
                  if (currentDevice32)
                  {
                    __sb__mainScreenReferenceBounds();
                  }

                  else
                  {
                    mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen28 _referenceBounds];
                  }

                  v99 = currentDevice32 ^ 1;
                  BSSizeRoundForScale();
                  if (v331 >= *(MEMORY[0x277D66E30] + 72))
                  {
                    v100 = 0;
                    v101 = 0;
                    v102 = 0;
                    v103 = 0;
                    v104 = &qword_21EC96280;
                    goto LABEL_604;
                  }
                }

                else
                {
                  v99 = 0;
                }

LABEL_2354:
                v315 = __sb__runningInSpringBoard();
                if (v315)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    v100 = 0;
                    v101 = 0;
                    goto LABEL_2407;
                  }
                }

                else
                {
                  currentDevice32 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice32 userInterfaceIdiom])
                  {
                    v101 = 0;
                    v100 = 1;
                    goto LABEL_2407;
                  }
                }

                v100 = v315 ^ 1;
                mainScreen32 = __sb__runningInSpringBoard();
                if (mainScreen32)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen30 _referenceBounds];
                }

                v101 = mainScreen32 ^ 1;
                BSSizeRoundForScale();
                if (v321 >= *(MEMORY[0x277D66E30] + 56))
                {
                  v102 = 0;
                  v103 = 0;
                  v104 = &qword_21EC96250;
                  goto LABEL_604;
                }

LABEL_2407:
                mainScreen32 = __sb__runningInSpringBoard();
                if (mainScreen32)
                {
                  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                  {
                    v102 = 0;
                    v103 = 0;
                    goto LABEL_2478;
                  }
                }

                else
                {
                  currentDevice31 = [MEMORY[0x277D75418] currentDevice];
                  if ([currentDevice31 userInterfaceIdiom])
                  {
                    v103 = 0;
                    v102 = 1;
                    goto LABEL_2478;
                  }
                }

                v102 = mainScreen32 ^ 1;
                v339 = __sb__runningInSpringBoard();
                if (v339)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen32 _referenceBounds];
                }

                v103 = v339 ^ 1;
                BSSizeRoundForScale();
                if (v340 >= *(MEMORY[0x277D66E30] + 40))
                {
                  v104 = &qword_21EC96248;
LABEL_604:
                  v114 = *v104;
                  if (v103)
                  {

                    if (!v102)
                    {
                      goto LABEL_606;
                    }
                  }

                  else if (!v102)
                  {
LABEL_606:
                    if (v101)
                    {
                      goto LABEL_607;
                    }

                    goto LABEL_719;
                  }

                  if (v101)
                  {
LABEL_607:

                    if (!v100)
                    {
                      goto LABEL_608;
                    }

                    goto LABEL_720;
                  }

LABEL_719:
                  if (!v100)
                  {
LABEL_608:
                    if (!v99)
                    {
                      goto LABEL_610;
                    }

                    goto LABEL_609;
                  }

LABEL_720:

                  if (!v99)
                  {
LABEL_610:
                    if (v98)
                    {
                    }

                    if (v398)
                    {
                    }

                    if (v402)
                    {
                    }

                    if (v406)
                    {
                    }

                    if (v411)
                    {
                    }

                    if (HIDWORD(v411))
                    {
                    }

                    if (v416)
                    {
                    }

                    if (HIDWORD(v416))
                    {
                    }

                    if (v421)
                    {
                    }

                    if (HIDWORD(v421))
                    {
                    }

                    if (v426)
                    {
                    }

                    if (HIDWORD(v426))
                    {
                    }

                    if (v431)
                    {
                    }

                    if (HIDWORD(v431))
                    {
                    }

                    if (v436)
                    {
                    }

                    if (HIDWORD(v436))
                    {
                    }

                    if (v441)
                    {
                    }

                    if (HIDWORD(v441))
                    {
                    }

                    if (v446)
                    {
                    }

                    if (HIDWORD(v446))
                    {
                    }

                    if (v451)
                    {
                    }

                    if (HIDWORD(v451))
                    {
                    }

                    if (LODWORD(v453[0]))
                    {
                    }

                    if (HIDWORD(v453[0]))
                    {
                    }

                    if (LODWORD(v453[1]))
                    {
                    }

                    if (HIDWORD(v453[1]))
                    {
                    }

                    if (LODWORD(v453[2]))
                    {
                    }

                    if (HIDWORD(v453[2]))
                    {
                    }

                    if (LODWORD(v453[3]))
                    {
                    }

                    if (HIDWORD(v453[3]))
                    {
                    }

                    if (LODWORD(v453[4]))
                    {
                    }

                    if (HIDWORD(v453[4]))
                    {
                    }

                    if (LODWORD(v453[5]))
                    {
                    }

                    if (HIDWORD(v453[5]))
                    {
                    }

                    if (LODWORD(v453[6]))
                    {
                    }

                    if (HIDWORD(v453[6]))
                    {
                    }

                    if (LODWORD(v453[7]))
                    {
                    }

                    if (HIDWORD(v453[7]))
                    {
                    }

                    if (LODWORD(v453[8]))
                    {
                    }

                    if (HIDWORD(v453[8]))
                    {
                    }

                    if (v454)
                    {
                    }

                    if (HIDWORD(v454))
                    {
                    }

                    if (v455)
                    {
                    }

                    if (HIDWORD(v455))
                    {
                    }

                    if (v456)
                    {
                    }

                    if (HIDWORD(v456))
                    {
                    }

                    if (v457)
                    {
                    }

                    if (HIDWORD(v457))
                    {
                    }

                    if (v458)
                    {
                    }

                    if (HIDWORD(v458))
                    {
                    }

                    if (v459)
                    {
                    }

                    if (HIDWORD(v459))
                    {
                    }

                    v115 = __sb__runningInSpringBoard();
                    mainScreen33 = &CSQuickActionButtonInsetX;
                    if (v115)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v459 = 0;
                        goto LABEL_728;
                      }
                    }

                    else
                    {
                      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice4 userInterfaceIdiom] != 1)
                      {
                        v459 = 0x100000000;
                        goto LABEL_728;
                      }
                    }

                    HIDWORD(v459) = v115 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      currentDevice33 = __sb__runningInSpringBoard();
                      if (currentDevice33)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        currentDevice3 = [MEMORY[0x277D759A0] mainScreen];
                        [currentDevice3 _referenceBounds];
                      }

                      LODWORD(v459) = currentDevice33 ^ 1;
                      BSSizeRoundForScale();
                      if (v133 == *(MEMORY[0x277D66E30] + 288) && v132 == *(MEMORY[0x277D66E30] + 296))
                      {
                        v457 = 0;
                        v458 = 0;
                        v455 = 0;
                        v456 = 0;
                        v454 = 0;
                        memset(v453, 0, sizeof(v453));
                        v452 = 0;
                        v442 = 0;
                        v447 = 0;
                        v432 = 0;
                        v437 = 0;
                        v422 = 0;
                        v427 = 0;
                        v412 = 0;
                        v417 = 0;
                        v407 = 0;
                        v403 = 0;
                        v399 = 0;
                        v123 = 0;
                        v124 = 0;
                        v125 = 0;
                        v126 = 0;
                        v127 = 0;
                        v128 = 0;
                        v129 = &qword_21EC96210;
                        goto LABEL_782;
                      }
                    }

                    else
                    {
                      LODWORD(v459) = 0;
                    }

LABEL_728:
                    v118 = __sb__runningInSpringBoard();
                    if (v118)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v458 = 0;
                        goto LABEL_737;
                      }
                    }

                    else
                    {
                      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice5 userInterfaceIdiom] != 1)
                      {
                        v458 = 0x100000000;
                        goto LABEL_737;
                      }
                    }

                    HIDWORD(v458) = v118 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      currentDevice33 = __sb__runningInSpringBoard();
                      if (currentDevice33)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        currentDevice9 = [MEMORY[0x277D759A0] mainScreen];
                        [currentDevice9 _referenceBounds];
                      }

                      LODWORD(v458) = currentDevice33 ^ 1;
                      BSSizeRoundForScale();
                      if (v134 >= *(MEMORY[0x277D66E30] + 440))
                      {
                        v456 = 0;
                        v457 = 0;
                        v454 = 0;
                        v455 = 0;
                        memset(v453, 0, sizeof(v453));
                        v452 = 0;
                        v442 = 0;
                        v447 = 0;
                        v432 = 0;
                        v437 = 0;
                        v422 = 0;
                        v427 = 0;
                        v412 = 0;
                        v417 = 0;
                        v407 = 0;
                        v403 = 0;
                        v399 = 0;
                        v123 = 0;
                        v124 = 0;
                        v125 = 0;
                        v126 = 0;
                        v127 = 0;
                        v128 = 0;
                        v129 = &qword_21EC96238;
                        goto LABEL_782;
                      }
                    }

                    else
                    {
                      LODWORD(v458) = 0;
                    }

LABEL_737:
                    v119 = __sb__runningInSpringBoard();
                    if (v119)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v457 = 0;
                        goto LABEL_746;
                      }
                    }

                    else
                    {
                      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice6 userInterfaceIdiom] != 1)
                      {
                        v457 = 0x100000000;
                        goto LABEL_746;
                      }
                    }

                    HIDWORD(v457) = v119 ^ 1;
                    if (SBFEffectiveHomeButtonType() == 2)
                    {
                      currentDevice33 = __sb__runningInSpringBoard();
                      if (currentDevice33)
                      {
                        __sb__mainScreenReferenceBounds();
                      }

                      else
                      {
                        currentDevice8 = [MEMORY[0x277D759A0] mainScreen];
                        [currentDevice8 _referenceBounds];
                      }

                      LODWORD(v457) = currentDevice33 ^ 1;
                      BSSizeRoundForScale();
                      if (v135 >= *(MEMORY[0x277D66E30] + 376))
                      {
                        v455 = 0;
                        v456 = 0;
                        v454 = 0;
                        memset(v453, 0, sizeof(v453));
                        v452 = 0;
                        v442 = 0;
                        v447 = 0;
                        v432 = 0;
                        v437 = 0;
                        v422 = 0;
                        v427 = 0;
                        v412 = 0;
                        v417 = 0;
                        v407 = 0;
                        v403 = 0;
                        v399 = 0;
                        v123 = 0;
                        v124 = 0;
                        v125 = 0;
                        v126 = 0;
                        v127 = 0;
                        v128 = 0;
                        v129 = &qword_21EC96228;
                        goto LABEL_782;
                      }
                    }

                    else
                    {
                      LODWORD(v457) = 0;
                    }

LABEL_746:
                    v120 = __sb__runningInSpringBoard();
                    if (v120)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v456 = 0;
                        goto LABEL_755;
                      }
                    }

                    else
                    {
                      mainScreen4 = [MEMORY[0x277D75418] currentDevice];
                      if ([mainScreen4 userInterfaceIdiom] != 1)
                      {
                        v456 = 0x100000000;
                        goto LABEL_755;
                      }
                    }

                    HIDWORD(v456) = v120 ^ 1;
                    currentDevice33 = __sb__runningInSpringBoard();
                    if (currentDevice33)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen2 _referenceBounds];
                    }

                    LODWORD(v456) = currentDevice33 ^ 1;
                    BSSizeRoundForScale();
                    if (v121 >= *(MEMORY[0x277D66E30] + 280))
                    {
                      v454 = 0;
                      v455 = 0;
                      memset(v453, 0, sizeof(v453));
                      v452 = 0;
                      v442 = 0;
                      v447 = 0;
                      v432 = 0;
                      v437 = 0;
                      v422 = 0;
                      v427 = 0;
                      v412 = 0;
                      v417 = 0;
                      v407 = 0;
                      v403 = 0;
                      v399 = 0;
                      v123 = 0;
                      v124 = 0;
                      v125 = 0;
                      v126 = 0;
                      v127 = 0;
                      v128 = 0;
                      v129 = &qword_21EC96230;
                      goto LABEL_782;
                    }

LABEL_755:
                    v122 = __sb__runningInSpringBoard();
                    if (v122)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v455 = 0;
                        goto LABEL_765;
                      }
                    }

                    else
                    {
                      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
                      if ([currentDevice7 userInterfaceIdiom] != 1)
                      {
                        v455 = 0x100000000;
                        goto LABEL_765;
                      }
                    }

                    HIDWORD(v455) = v122 ^ 1;
                    currentDevice33 = __sb__runningInSpringBoard();
                    if (currentDevice33)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
                      [mainScreen6 _referenceBounds];
                    }

                    LODWORD(v455) = currentDevice33 ^ 1;
                    BSSizeRoundForScale();
                    if (v130 >= *(MEMORY[0x277D66E30] + 264))
                    {
                      v454 = 0;
                      memset(v453, 0, sizeof(v453));
                      v452 = 0;
                      v442 = 0;
                      v447 = 0;
                      v432 = 0;
                      v437 = 0;
                      v422 = 0;
                      v427 = 0;
                      v412 = 0;
                      v417 = 0;
                      v407 = 0;
                      v403 = 0;
                      v399 = 0;
                      v123 = 0;
                      v124 = 0;
                      v125 = 0;
                      v126 = 0;
                      v127 = 0;
                      v128 = 0;
                      v129 = &qword_21EC96220;
                      goto LABEL_782;
                    }

LABEL_765:
                    v131 = __sb__runningInSpringBoard();
                    if (v131)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        v454 = 0;
                        goto LABEL_951;
                      }
                    }

                    else
                    {
                      mainScreen5 = [MEMORY[0x277D75418] currentDevice];
                      if ([mainScreen5 userInterfaceIdiom] != 1)
                      {
                        v454 = 0x100000000;
                        goto LABEL_951;
                      }
                    }

                    HIDWORD(v454) = v131 ^ 1;
                    currentDevice33 = __sb__runningInSpringBoard();
                    if (currentDevice33)
                    {
                      __sb__mainScreenReferenceBounds();
                    }

                    else
                    {
                      currentDevice11 = [MEMORY[0x277D759A0] mainScreen];
                      [currentDevice11 _referenceBounds];
                    }

                    LODWORD(v454) = currentDevice33 ^ 1;
                    BSSizeRoundForScale();
                    if (v149 >= *(MEMORY[0x277D66E30] + 248))
                    {
                      memset(v453, 0, sizeof(v453));
                      v452 = 0;
                      v442 = 0;
                      v447 = 0;
                      v432 = 0;
                      v437 = 0;
                      v422 = 0;
                      v427 = 0;
                      v412 = 0;
                      v417 = 0;
                      v407 = 0;
                      v403 = 0;
                      v399 = 0;
                      v123 = 0;
                      v124 = 0;
                      v125 = 0;
                      v126 = 0;
                      v127 = 0;
                      v128 = 0;
                      v129 = &qword_21EC96218;
                      goto LABEL_782;
                    }

LABEL_951:
                    currentDevice33 = __sb__runningInSpringBoard();
                    if (currentDevice33)
                    {
                      if (SBFEffectiveDeviceClass() != 2)
                      {
                        goto LABEL_953;
                      }
                    }

                    else
                    {
                      mainScreen3 = [MEMORY[0x277D75418] currentDevice];
                      if ([mainScreen3 userInterfaceIdiom] != 1)
                      {
LABEL_953:
                        HIDWORD(v453[8]) = currentDevice33 ^ 1;
                        if (!_SBF_Private_IsD94Like())
                        {
LABEL_957:
                          *(&v453[7] + 4) = 0;
                          goto LABEL_1079;
                        }

                        v150 = __sb__runningInSpringBoard();
                        if (v150)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_957;
                          }
                        }

                        else
                        {
                          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice10 userInterfaceIdiom])
                          {
                            HIDWORD(v453[7]) = 0;
                            LODWORD(v453[8]) = 1;
                            goto LABEL_1079;
                          }
                        }

                        LODWORD(v453[8]) = v150 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v163 = __sb__runningInSpringBoard();
                          if (v163)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice17 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice17 _referenceBounds];
                          }

                          currentDevice33 = v163 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v453[7]) = currentDevice33;
                          if (v170 >= *(MEMORY[0x277D66E30] + 200))
                          {
                            memset(v453, 0, 60);
                            v452 = 0;
                            v442 = 0;
                            v447 = 0;
                            v432 = 0;
                            v437 = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC961E8;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[7]) = 0;
                        }

LABEL_1079:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            *(&v453[6] + 4) = 0;
                            goto LABEL_1089;
                          }
                        }

                        else
                        {
                          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice12 userInterfaceIdiom])
                          {
                            HIDWORD(v453[6]) = 0;
                            LODWORD(v453[7]) = 1;
                            goto LABEL_1089;
                          }
                        }

                        LODWORD(v453[7]) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen7 _referenceBounds];
                          }

                          HIDWORD(v453[6]) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v164 >= *(MEMORY[0x277D66E30] + 200))
                          {
                            goto LABEL_1093;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[6]) = 0;
                        }

LABEL_1089:
                        if (_SBF_Private_IsD94Like())
                        {
                          memset(v453, 0, 52);
                          v452 = 0;
                          v442 = 0;
                          v447 = 0;
                          v432 = 0;
                          v437 = 0;
                          v422 = 0;
                          v427 = 0;
                          v412 = 0;
                          v417 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC961F0;
                          goto LABEL_782;
                        }

LABEL_1093:
                        if (!_SBF_Private_IsD64Like())
                        {
LABEL_1097:
                          *(&v453[5] + 4) = 0;
                          goto LABEL_1255;
                        }

                        v165 = __sb__runningInSpringBoard();
                        if (v165)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_1097;
                          }
                        }

                        else
                        {
                          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice14 userInterfaceIdiom])
                          {
                            HIDWORD(v453[5]) = 0;
                            LODWORD(v453[6]) = 1;
                            goto LABEL_1255;
                          }
                        }

                        LODWORD(v453[6]) = v165 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice19 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice19 _referenceBounds];
                          }

                          HIDWORD(v453[5]) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v195 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            memset(v453, 0, 44);
                            v452 = 0;
                            v442 = 0;
                            v447 = 0;
                            v432 = 0;
                            v437 = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC961F8;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[5]) = 0;
                        }

LABEL_1255:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            *(&v453[4] + 4) = 0;
                            goto LABEL_1265;
                          }
                        }

                        else
                        {
                          mainScreen8 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen8 userInterfaceIdiom])
                          {
                            HIDWORD(v453[4]) = 0;
                            LODWORD(v453[5]) = 1;
                            goto LABEL_1265;
                          }
                        }

                        LODWORD(v453[5]) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen11 _referenceBounds];
                          }

                          HIDWORD(v453[4]) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v183 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            goto LABEL_1269;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[4]) = 0;
                        }

LABEL_1265:
                        if (_SBF_Private_IsD64Like())
                        {
                          memset(v453, 0, 36);
                          v452 = 0;
                          v442 = 0;
                          v447 = 0;
                          v432 = 0;
                          v437 = 0;
                          v422 = 0;
                          v427 = 0;
                          v412 = 0;
                          v417 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96200;
                          goto LABEL_782;
                        }

LABEL_1269:
                        v184 = __sb__runningInSpringBoard();
                        if (v184)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            *(&v453[3] + 4) = 0;
                            goto LABEL_1279;
                          }
                        }

                        else
                        {
                          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice13 userInterfaceIdiom])
                          {
                            HIDWORD(v453[3]) = 0;
                            LODWORD(v453[4]) = 1;
                            goto LABEL_1279;
                          }
                        }

                        LODWORD(v453[4]) = v184 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v185 = __sb__runningInSpringBoard();
                          if (v185)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice16 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice16 _referenceBounds];
                          }

                          currentDevice33 = v185 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v453[3]) = currentDevice33;
                          if (v190 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            memset(v453, 0, 28);
                            v452 = 0;
                            v442 = 0;
                            v447 = 0;
                            v432 = 0;
                            v437 = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC961D8;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[3]) = 0;
                        }

LABEL_1279:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            *(&v453[2] + 4) = 0;
                            goto LABEL_1313;
                          }
                        }

                        else
                        {
                          mainScreen10 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen10 userInterfaceIdiom])
                          {
                            HIDWORD(v453[2]) = 0;
                            LODWORD(v453[3]) = 1;
                            goto LABEL_1313;
                          }
                        }

                        LODWORD(v453[3]) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen13 _referenceBounds];
                          }

                          HIDWORD(v453[2]) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v204 >= *(MEMORY[0x277D66E30] + 136))
                          {
                            goto LABEL_1379;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[2]) = 0;
                        }

LABEL_1313:
                        if (_SBF_Private_IsD54())
                        {
                          memset(v453, 0, 20);
                          v452 = 0;
                          v442 = 0;
                          v447 = 0;
                          v432 = 0;
                          v437 = 0;
                          v422 = 0;
                          v427 = 0;
                          v412 = 0;
                          v417 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC961E0;
                          goto LABEL_782;
                        }

LABEL_1379:
                        v205 = __sb__runningInSpringBoard();
                        if (v205)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            *(&v453[1] + 4) = 0;
                            goto LABEL_1429;
                          }
                        }

                        else
                        {
                          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice15 userInterfaceIdiom])
                          {
                            HIDWORD(v453[1]) = 0;
                            LODWORD(v453[2]) = 1;
                            goto LABEL_1429;
                          }
                        }

                        LODWORD(v453[2]) = v205 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v210 = __sb__runningInSpringBoard();
                          if (v210)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice21 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice21 _referenceBounds];
                          }

                          currentDevice33 = v210 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v453[1]) = currentDevice33;
                          if (v215 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
                          {
                            *(v453 + 4) = 0;
                            LODWORD(v453[0]) = 0;
                            v452 = 0;
                            v442 = 0;
                            v447 = 0;
                            v432 = 0;
                            v437 = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC96198;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[1]) = 0;
                        }

LABEL_1429:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            *(v453 + 4) = 0;
                            goto LABEL_1467;
                          }
                        }

                        else
                        {
                          mainScreen9 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen9 userInterfaceIdiom])
                          {
                            HIDWORD(v453[0]) = 0;
                            LODWORD(v453[1]) = 1;
                            goto LABEL_1467;
                          }
                        }

                        LODWORD(v453[1]) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen16 _referenceBounds];
                          }

                          HIDWORD(v453[0]) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v224 >= *(MEMORY[0x277D66E30] + 120))
                          {
                            goto LABEL_1528;
                          }
                        }

                        else
                        {
                          HIDWORD(v453[0]) = 0;
                        }

LABEL_1467:
                        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
                        {
                          LODWORD(v453[0]) = 0;
                          v452 = 0;
                          v442 = 0;
                          v447 = 0;
                          v432 = 0;
                          v437 = 0;
                          v422 = 0;
                          v427 = 0;
                          v412 = 0;
                          v417 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC961A0;
                          goto LABEL_782;
                        }

LABEL_1528:
                        if (!_SBF_Private_IsD93Like())
                        {
LABEL_1532:
                          LODWORD(v453[0]) = 0;
                          HIDWORD(v452) = 0;
                          goto LABEL_1639;
                        }

                        v225 = __sb__runningInSpringBoard();
                        if (v225)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_1532;
                          }
                        }

                        else
                        {
                          mainScreen14 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen14 userInterfaceIdiom])
                          {
                            HIDWORD(v452) = 0;
                            LODWORD(v453[0]) = 1;
                            goto LABEL_1639;
                          }
                        }

                        LODWORD(v453[0]) = v225 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v238 = __sb__runningInSpringBoard();
                          if (v238)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice24 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice24 _referenceBounds];
                          }

                          currentDevice33 = v238 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v452) = currentDevice33;
                          if (v245 >= *(MEMORY[0x277D66E30] + 184))
                          {
                            LODWORD(v452) = 0;
                            v442 = 0;
                            v447 = 0;
                            v432 = 0;
                            v437 = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC96188;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v452) = 0;
                        }

LABEL_1639:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v452) = 0;
                            HIDWORD(v447) = 0;
                            goto LABEL_1649;
                          }
                        }

                        else
                        {
                          mainScreen12 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen12 userInterfaceIdiom])
                          {
                            HIDWORD(v447) = 0;
                            LODWORD(v452) = 1;
                            goto LABEL_1649;
                          }
                        }

                        LODWORD(v452) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen15 _referenceBounds];
                          }

                          HIDWORD(v447) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v239 >= *(MEMORY[0x277D66E30] + 184))
                          {
                            goto LABEL_1653;
                          }
                        }

                        else
                        {
                          HIDWORD(v447) = 0;
                        }

LABEL_1649:
                        if (_SBF_Private_IsD93Like())
                        {
                          LODWORD(v447) = 0;
                          v437 = 0;
                          v442 = 0;
                          v427 = 0;
                          v432 = 0;
                          v417 = 0;
                          v422 = 0;
                          v412 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96190;
                          goto LABEL_782;
                        }

LABEL_1653:
                        if (!_SBF_Private_IsD63Like())
                        {
LABEL_1657:
                          LODWORD(v447) = 0;
                          HIDWORD(v442) = 0;
                          goto LABEL_1779;
                        }

                        v240 = __sb__runningInSpringBoard();
                        if (v240)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_1657;
                          }
                        }

                        else
                        {
                          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice22 userInterfaceIdiom])
                          {
                            HIDWORD(v442) = 0;
                            LODWORD(v447) = 1;
                            goto LABEL_1779;
                          }
                        }

                        LODWORD(v447) = v240 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          v258 = __sb__runningInSpringBoard();
                          if (v258)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen21 _referenceBounds];
                          }

                          currentDevice33 = v258 ^ 1u;
                          BSSizeRoundForScale();
                          HIDWORD(v442) = currentDevice33;
                          if (v265 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            LODWORD(v442) = 0;
                            v432 = 0;
                            v437 = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC961B8;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v442) = 0;
                        }

LABEL_1779:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v442) = 0;
                            HIDWORD(v437) = 0;
                            goto LABEL_1789;
                          }
                        }

                        else
                        {
                          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice18 userInterfaceIdiom])
                          {
                            HIDWORD(v437) = 0;
                            LODWORD(v442) = 1;
                            goto LABEL_1789;
                          }
                        }

                        LODWORD(v442) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen17 _referenceBounds];
                          }

                          HIDWORD(v437) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v259 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            goto LABEL_1793;
                          }
                        }

                        else
                        {
                          HIDWORD(v437) = 0;
                        }

LABEL_1789:
                        if (_SBF_Private_IsD63Like())
                        {
                          LODWORD(v437) = 0;
                          v427 = 0;
                          v432 = 0;
                          v417 = 0;
                          v422 = 0;
                          v412 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC961C0;
                          goto LABEL_782;
                        }

LABEL_1793:
                        if (!_SBF_Private_IsD23Like())
                        {
LABEL_1797:
                          LODWORD(v437) = 0;
                          HIDWORD(v432) = 0;
                          goto LABEL_1955;
                        }

                        v260 = __sb__runningInSpringBoard();
                        if (v260)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            goto LABEL_1797;
                          }
                        }

                        else
                        {
                          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice23 userInterfaceIdiom])
                          {
                            HIDWORD(v432) = 0;
                            LODWORD(v437) = 1;
                            goto LABEL_1955;
                          }
                        }

                        LODWORD(v437) = v260 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen24 _referenceBounds];
                          }

                          HIDWORD(v432) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v285 >= *(MEMORY[0x277D66E30] + 216))
                          {
                            LODWORD(v432) = 0;
                            v422 = 0;
                            v427 = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC961C8;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v432) = 0;
                        }

LABEL_1955:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v432) = 0;
                            HIDWORD(v427) = 0;
                            goto LABEL_1965;
                          }
                        }

                        else
                        {
                          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice20 userInterfaceIdiom])
                          {
                            HIDWORD(v427) = 0;
                            LODWORD(v432) = 1;
                            goto LABEL_1965;
                          }
                        }

                        LODWORD(v432) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen19 _referenceBounds];
                          }

                          HIDWORD(v427) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v274 >= *(MEMORY[0x277D66E30] + 216))
                          {
                            goto LABEL_1969;
                          }
                        }

                        else
                        {
                          HIDWORD(v427) = 0;
                        }

LABEL_1965:
                        if (_SBF_Private_IsD23Like())
                        {
                          LODWORD(v427) = 0;
                          v417 = 0;
                          v422 = 0;
                          v412 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC961D0;
                          goto LABEL_782;
                        }

LABEL_1969:
                        v275 = __sb__runningInSpringBoard();
                        if (v275)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v427) = 0;
                            HIDWORD(v422) = 0;
                            goto LABEL_1979;
                          }
                        }

                        else
                        {
                          mainScreen18 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen18 userInterfaceIdiom])
                          {
                            HIDWORD(v422) = 0;
                            LODWORD(v427) = 1;
                            goto LABEL_1979;
                          }
                        }

                        LODWORD(v427) = v275 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen23 _referenceBounds];
                          }

                          HIDWORD(v422) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v280 >= *(MEMORY[0x277D66E30] + 120))
                          {
                            LODWORD(v422) = 0;
                            v412 = 0;
                            v417 = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC961A8;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v422) = 0;
                        }

LABEL_1979:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v422) = 0;
                            HIDWORD(v417) = 0;
                            goto LABEL_2013;
                          }
                        }

                        else
                        {
                          mainScreen20 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen20 userInterfaceIdiom])
                          {
                            HIDWORD(v417) = 0;
                            LODWORD(v422) = 1;
                            goto LABEL_2013;
                          }
                        }

                        LODWORD(v422) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice26 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice26 _referenceBounds];
                          }

                          HIDWORD(v417) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v294 >= *(MEMORY[0x277D66E30] + 120))
                          {
                            goto LABEL_2079;
                          }
                        }

                        else
                        {
                          HIDWORD(v417) = 0;
                        }

LABEL_2013:
                        if (_SBF_Private_IsD33OrSimilarDevice())
                        {
                          LODWORD(v417) = 0;
                          v412 = 0;
                          v407 = 0;
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC961B0;
                          goto LABEL_782;
                        }

LABEL_2079:
                        v295 = __sb__runningInSpringBoard();
                        if (v295)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v417) = 0;
                            HIDWORD(v412) = 0;
                            goto LABEL_2129;
                          }
                        }

                        else
                        {
                          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice25 userInterfaceIdiom])
                          {
                            HIDWORD(v412) = 0;
                            LODWORD(v417) = 1;
                            goto LABEL_2129;
                          }
                        }

                        LODWORD(v417) = v295 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice27 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice27 _referenceBounds];
                          }

                          HIDWORD(v412) = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v300 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            LODWORD(v412) = 0;
                            v407 = 0;
                            v403 = 0;
                            v399 = 0;
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC96178;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          HIDWORD(v412) = 0;
                        }

LABEL_2129:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            LODWORD(v412) = 0;
                            v407 = 0;
                            goto LABEL_2163;
                          }
                        }

                        else
                        {
                          mainScreen22 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen22 userInterfaceIdiom])
                          {
                            v407 = 0;
                            LODWORD(v412) = 1;
                            goto LABEL_2163;
                          }
                        }

                        LODWORD(v412) = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            currentDevice28 = [MEMORY[0x277D759A0] mainScreen];
                            [currentDevice28 _referenceBounds];
                          }

                          v407 = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v305 >= *(MEMORY[0x277D66E30] + 104))
                          {
                            goto LABEL_2230;
                          }
                        }

                        else
                        {
                          v407 = 0;
                        }

LABEL_2163:
                        if (_SBF_Private_IsD53())
                        {
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96180;
                          goto LABEL_782;
                        }

LABEL_2230:
                        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
                        {
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96158;
                          goto LABEL_782;
                        }

                        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
                        {
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96160;
                          goto LABEL_782;
                        }

                        if (_SBF_Private_IsD52OrSimilarDevice())
                        {
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96148;
                          goto LABEL_782;
                        }

                        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
                        {
                          v403 = 0;
                          v399 = 0;
                          v123 = 0;
                          v124 = 0;
                          v125 = 0;
                          v126 = 0;
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96150;
                          goto LABEL_782;
                        }

                        v310 = __sb__runningInSpringBoard();
                        if (v310)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v403 = 0;
                            v399 = 0;
                            goto LABEL_2314;
                          }
                        }

                        else
                        {
                          mainScreen27 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen27 userInterfaceIdiom])
                          {
                            v399 = 0;
                            v403 = 1;
                            goto LABEL_2314;
                          }
                        }

                        v403 = v310 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen26 _referenceBounds];
                          }

                          v399 = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v327 >= *(MEMORY[0x277D66E30] + 88))
                          {
                            v123 = 0;
                            v124 = 0;
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC96168;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          v399 = 0;
                        }

LABEL_2314:
                        currentDevice33 = __sb__runningInSpringBoard();
                        if (currentDevice33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v123 = 0;
                            v124 = 0;
                            goto LABEL_2364;
                          }
                        }

                        else
                        {
                          mainScreen25 = [MEMORY[0x277D75418] currentDevice];
                          if ([mainScreen25 userInterfaceIdiom])
                          {
                            v124 = 0;
                            v123 = 1;
                            goto LABEL_2364;
                          }
                        }

                        v123 = currentDevice33 ^ 1;
                        if (SBFEffectiveHomeButtonType() == 2)
                        {
                          currentDevice33 = __sb__runningInSpringBoard();
                          if (currentDevice33)
                          {
                            __sb__mainScreenReferenceBounds();
                          }

                          else
                          {
                            mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
                            [mainScreen28 _referenceBounds];
                          }

                          v124 = currentDevice33 ^ 1;
                          BSSizeRoundForScale();
                          if (v332 >= *(MEMORY[0x277D66E30] + 72))
                          {
                            v125 = 0;
                            v126 = 0;
                            v127 = 0;
                            v128 = 0;
                            v129 = &qword_21EC96170;
                            goto LABEL_782;
                          }
                        }

                        else
                        {
                          v124 = 0;
                        }

LABEL_2364:
                        v316 = __sb__runningInSpringBoard();
                        if (v316)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v125 = 0;
                            v126 = 0;
                            goto LABEL_2418;
                          }
                        }

                        else
                        {
                          currentDevice33 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice33 userInterfaceIdiom])
                          {
                            v126 = 0;
                            v125 = 1;
                            goto LABEL_2418;
                          }
                        }

                        v125 = v316 ^ 1;
                        mainScreen33 = __sb__runningInSpringBoard();
                        if (mainScreen33)
                        {
                          __sb__mainScreenReferenceBounds();
                        }

                        else
                        {
                          mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
                          [mainScreen30 _referenceBounds];
                        }

                        v126 = mainScreen33 ^ 1;
                        BSSizeRoundForScale();
                        if (v322 >= *(MEMORY[0x277D66E30] + 56))
                        {
                          v127 = 0;
                          v128 = 0;
                          v129 = &qword_21EC96140;
                          goto LABEL_782;
                        }

LABEL_2418:
                        mainScreen33 = __sb__runningInSpringBoard();
                        if (mainScreen33)
                        {
                          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                          {
                            v127 = 0;
                            v128 = 0;
                            goto LABEL_2484;
                          }
                        }

                        else
                        {
                          currentDevice31 = [MEMORY[0x277D75418] currentDevice];
                          if ([currentDevice31 userInterfaceIdiom])
                          {
                            v128 = 0;
                            v127 = 1;
                            goto LABEL_2484;
                          }
                        }

                        v127 = mainScreen33 ^ 1;
                        v341 = __sb__runningInSpringBoard();
                        if (v341)
                        {
                          __sb__mainScreenReferenceBounds();
                        }

                        else
                        {
                          mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
                          [mainScreen33 _referenceBounds];
                        }

                        v128 = v341 ^ 1;
                        BSSizeRoundForScale();
                        if (v342 >= *(MEMORY[0x277D66E30] + 40))
                        {
                          v129 = &qword_21EC96138;
LABEL_782:
                          v136 = *v129;
                          if (v128)
                          {

                            if (!v127)
                            {
                              goto LABEL_784;
                            }
                          }

                          else if (!v127)
                          {
LABEL_784:
                            if (v126)
                            {
                              goto LABEL_785;
                            }

                            goto LABEL_789;
                          }

                          if (v126)
                          {
LABEL_785:

                            if (!v125)
                            {
                              goto LABEL_791;
                            }

                            goto LABEL_790;
                          }

LABEL_789:
                          if (!v125)
                          {
LABEL_791:
                            WeakRetained = v460;
                            if (v124)
                            {
                            }

                            if (v123)
                            {
                            }

                            if (v399)
                            {
                            }

                            viewCopy = v461;
                            if (v403)
                            {
                            }

                            if (v407)
                            {
                            }

                            if (v412)
                            {
                            }

                            if (HIDWORD(v412))
                            {
                            }

                            if (v417)
                            {
                            }

                            if (HIDWORD(v417))
                            {
                            }

                            if (v422)
                            {
                            }

                            if (HIDWORD(v422))
                            {
                            }

                            if (v427)
                            {
                            }

                            if (HIDWORD(v427))
                            {
                            }

                            if (v432)
                            {
                            }

                            if (HIDWORD(v432))
                            {
                            }

                            if (v437)
                            {
                            }

                            if (HIDWORD(v437))
                            {
                            }

                            if (v442)
                            {
                            }

                            if (HIDWORD(v442))
                            {
                            }

                            if (v447)
                            {
                            }

                            if (HIDWORD(v447))
                            {
                            }

                            if (v452)
                            {
                            }

                            if (HIDWORD(v452))
                            {
                            }

                            if (LODWORD(v453[0]))
                            {
                            }

                            if (HIDWORD(v453[0]))
                            {
                            }

                            if (LODWORD(v453[1]))
                            {
                            }

                            if (HIDWORD(v453[1]))
                            {
                            }

                            if (LODWORD(v453[2]))
                            {
                            }

                            if (HIDWORD(v453[2]))
                            {
                            }

                            if (LODWORD(v453[3]))
                            {
                            }

                            if (HIDWORD(v453[3]))
                            {
                            }

                            if (LODWORD(v453[4]))
                            {
                            }

                            if (HIDWORD(v453[4]))
                            {
                            }

                            if (LODWORD(v453[5]))
                            {
                            }

                            if (HIDWORD(v453[5]))
                            {
                            }

                            if (LODWORD(v453[6]))
                            {
                            }

                            if (HIDWORD(v453[6]))
                            {
                            }

                            if (LODWORD(v453[7]))
                            {
                            }

                            if (HIDWORD(v453[7]))
                            {
                            }

                            if (LODWORD(v453[8]))
                            {
                            }

                            if (HIDWORD(v453[8]))
                            {
                            }

                            if (v454)
                            {
                            }

                            if (HIDWORD(v454))
                            {
                            }

                            if (v455)
                            {
                            }

                            if (HIDWORD(v455))
                            {
                            }

                            if (v456)
                            {
                            }

                            if (HIDWORD(v456))
                            {
                            }

                            if (v457)
                            {
                            }

                            if (HIDWORD(v457))
                            {
                            }

                            if (v458)
                            {
                            }

                            if (HIDWORD(v458))
                            {
                            }

                            if (v459)
                            {
                            }

                            v12 = v89 + v114;
                            v17 = v89 + v136;
                            if (!HIDWORD(v459))
                            {
                              goto LABEL_898;
                            }

                            v112 = currentDevice4;
LABEL_897:

                            goto LABEL_898;
                          }

LABEL_790:

                          goto LABEL_791;
                        }

LABEL_2484:
                        v129 = &CSQuickActionButtonInsetX;
                        goto LABEL_782;
                      }
                    }

                    memset(v453, 0, 68);
                    v452 = 0;
                    v442 = 0;
                    v447 = 0;
                    v432 = 0;
                    v437 = 0;
                    v422 = 0;
                    v427 = 0;
                    v412 = 0;
                    v417 = 0;
                    v407 = 0;
                    v403 = 0;
                    v399 = 0;
                    v123 = 0;
                    v124 = 0;
                    v125 = 0;
                    v126 = 0;
                    v127 = 0;
                    v128 = 0;
                    v129 = &qword_21EC96208;
                    HIDWORD(v453[8]) = currentDevice33 ^ 1;
                    goto LABEL_782;
                  }

LABEL_609:

                  goto LABEL_610;
                }

LABEL_2478:
                v104 = &CSQuickActionButtonInsetY;
                goto LABEL_604;
              }
            }

            memset(v453, 0, 68);
            v451 = 0;
            v441 = 0;
            v446 = 0;
            v431 = 0;
            v436 = 0;
            v421 = 0;
            v426 = 0;
            v411 = 0;
            v416 = 0;
            v406 = 0;
            v402 = 0;
            v398 = 0;
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = 0;
            v103 = 0;
            v104 = &qword_21EC96318;
            HIDWORD(v453[8]) = currentDevice32 ^ 1;
            goto LABEL_604;
          }

LABEL_313:

          goto LABEL_314;
        }

LABEL_2466:
        v53 = &CSQuickActionButtonDiameter;
        goto LABEL_308;
      }
    }

    memset(v453, 0, 68);
    v449 = 0;
    v439 = 0;
    v444 = 0;
    v429 = 0;
    v434 = 0;
    v419 = 0;
    v424 = 0;
    v409 = 0;
    v414 = 0;
    v405 = 0;
    v401 = 0;
    v397 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = &qword_21EC960F8;
    HIDWORD(v453[8]) = currentDevice30 ^ 1;
    goto LABEL_308;
  }

  [(CSCombinedListViewController *)self _edgeInsetsForUnsupportedQuickActionsForOrientation:orientation];
  v12 = v18;
  v17 = v19;
  v21 = v20;
  v23 = v22;
LABEL_899:

  v137 = v12;
  v138 = v17;
  v139 = v21;
  v140 = v23;
  result.right = v140;
  result.bottom = v139;
  result.left = v138;
  result.top = v137;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForUnsupportedQuickActionsForOrientation:(int64_t)orientation
{
  [(CSCombinedListViewController *)self _listViewDefaultContentInsets];
  v5 = v4;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v8 = 80.0;
  if ((orientation - 3) < 2)
  {
    v8 = 46.0;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = 50.0;
  }

  v9 = v5;
  v10 = v8;
  v11 = v5;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)notificationStructuredListViewController:(id)controller requestsPresentingFocusActivityPickerFromView:(id)view
{
  viewCopy = view;
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    [CSCombinedListViewController notificationStructuredListViewController:v6 requestsPresentingFocusActivityPickerFromView:?];
  }

  focusActivityManager = [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController focusActivityManager];
  coverSheetViewPresenting = [(CSCombinedListViewController *)self coverSheetViewPresenting];
  [focusActivityManager presentFocusActivityPickerViewControllerFromView:viewCopy coverSheetViewPresenting:coverSheetViewPresenting];
}

- (void)notificationStructuredListViewController:(id)controller didUpdateNotificationsVisibilityInViewport:(BOOL)viewport
{
  if (self->_notificationsVisibleInViewport != viewport)
  {
    self->_notificationsVisibleInViewport = viewport;
    [(CSCombinedListViewController *)self _updateNotificationDimmingLayerLocalizedDimMode];
  }
}

- (id)notificationStructuredListViewControllerRequestsDiagnosticsDictionary:(id)dictionary
{
  delegate = [(CSCombinedListViewController *)self delegate];
  v5 = [delegate diagnosticsDictionaryForCombinedListViewController:self];

  return v5;
}

- (void)structuredListContentChanged:(BOOL)changed
{
  hasContent = [(CSCombinedListViewController *)self hasContent];
  if (changed || [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController isPresentingTransientContent])
  {
    v6 = 1;
LABEL_4:
    [(CSCombinedListViewController *)self _setListHasContent:v6];
    goto LABEL_5;
  }

  v6 = 0;
  if (!self->_listDismissingContent)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(CSCombinedListViewController *)self _noteListContentsPotentiallyChangedAfterTransitionFrom:hasContent to:v6];

  [(CSCombinedListViewController *)self _publishVisibleNotificationCountOnContentChange];
}

- (void)homeGestureParticipantOwningHomeGestureDidChange:(id)change ownsHomeGesture:(BOOL)gesture
{
  if (gesture)
  {
    v5 = SBFEffectiveHomeButtonType() == 2;
    WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);
    screenEdgePanGesture = [WeakRetained screenEdgePanGesture];
  }

  else
  {
    screenEdgePanGesture = 0;
    v5 = 0;
  }

  [(NCNotificationStructuredListViewController *)self->_structuredListViewController setHomeAffordanceVisible:v5];
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController setHomeAffordancePanGesture:screenEdgePanGesture];
}

- (void)didReceiveRaiseGesture
{
  selfCopy = self;
  v3 = OUTLINED_FUNCTION_3_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0(&dword_21EB05000, v5, v6, "%{public}@ received raise gesture", v7, v8, v9, v10, v11);
}

- (void)coverSheetViewControllerWillPresentPosterSwitcher:(id)switcher
{
  supplementaryItemManager = [(CSCombinedListViewController *)self supplementaryItemManager];
  [supplementaryItemManager willPresentPosterSwitcher];
}

- (void)coverSheetViewController:(id)controller didChangeHasContentAbove:(BOOL)above
{
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController handleCoverSheetVisibilityChange:!above];

  [(CSCombinedListViewController *)self _resetReducedIdleTimeFlagsIfNeeded];
}

- (void)coverSheetViewController:(id)controller didObscureWallpaper:(BOOL)wallpaper
{
  if (self->_isWallpaperObscured != wallpaper)
  {
    self->_isWallpaperObscured = wallpaper;
    [(CSCombinedListViewController *)self _updateNotificationDimmingLayerLocalizedDimMode];
  }
}

- (void)coverSheetViewController:(id)controller didWakeForSource:(int)source
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (source == 10)
  {
    v9 = controllerCopy;
    v8 = &OBJC_IVAR___CSCombinedListViewController__reduceIdleTimerDurationDueToNotificationWake;
    goto LABEL_7;
  }

  if (source == 5)
  {
    v9 = controllerCopy;
    controllerCopy = [controllerCopy isShowingNonNotificationContent];
    v7 = v9;
    if ((controllerCopy & 1) == 0)
    {
      controllerCopy = [(CSCombinedListViewController *)self hasContent];
      v7 = v9;
      if ((controllerCopy & 1) == 0)
      {
        v8 = &OBJC_IVAR___CSCombinedListViewController__reduceIdleTimerDurationDueToEmptyLiftToWake;
LABEL_7:
        *(&self->super.super.super.super.isa + *v8) = 1;
        controllerCopy = [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
        v7 = v9;
      }
    }
  }

  MEMORY[0x2821F96F8](controllerCopy, v7);
}

- (BOOL)handleEvent:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v22.receiver = self;
  v22.super_class = CSCombinedListViewController;
  if ([(CSCoverSheetViewControllerBase *)&v22 handleEvent:eventCopy])
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    isConsumable = 0;
  }

  if (([eventCopy isConsumable] & 1) == 0)
  {
    [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController handleEvent:eventCopy];
  }

  if ((isConsumable & 1) == 0)
  {
    isConsumable2 = 0;
    switch([eventCopy type])
    {
      case 1:
        activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
        legibilitySettings = [activeAppearance legibilitySettings];

        [(CSCombinedListViewController *)self updateForLegibilitySettings:legibilitySettings];
        goto LABEL_36;
      case 5:
        isConsumable2 = 0;
        self->_coverSheetWasDismissed = 1;
        goto LABEL_37;
      case 6:
        [(CSCombinedListViewController *)self _resetReducedIdleTimeFlagsIfNeeded];
        [(NCNotificationStructuredListViewController *)self->_structuredListViewController dismissModalFullScreenAnimated:0];
        goto LABEL_36;
      case 9:
        isConsumable2 = 0;
        self->_homeButtonPressDetected = 0;
        self->_lockButtonPressDetected = 0;
        v15 = 1376;
        goto LABEL_27;
      case 10:
        self->_coverSheetResignedActive = 1;
        goto LABEL_29;
      case 11:
        self->_coverSheetResignedActive = 0;
LABEL_29:
        [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
        goto LABEL_36;
      case 12:
      case 22:
        [(CSCombinedListViewController *)self _dismissDNDBedtimeGreetingViewAnimated:1];
        goto LABEL_36;
      case 13:
        value = [eventCopy value];
        bOOLValue = [value BOOLValue];

        [(NCNotificationStructuredListViewController *)self->_structuredListViewController setDeviceAuthenticated:bOOLValue];
        if (bOOLValue)
        {
          if (self->_reduceIdleTimerDurationDueToEmptyLiftToWake)
          {
            self->_reduceIdleTimerDurationDueToEmptyLiftToWake = 0;
            [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
          }
        }

        else if (![(CSCombinedListViewController *)self _allowNotificationsRevealPolicy])
        {
          [(NCNotificationStructuredListViewController *)self->_structuredListViewController revealNotificationHistory:0 animated:0];
        }

        goto LABEL_36;
      case 24:
        [(CSCombinedListViewController *)self _setScreenOn:1];
        if ([(CSCombinedListViewController *)self _hasUserInteraction])
        {
          v16 = *MEMORY[0x277D77DB0];
          if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
          {
            [CSCombinedListViewController handleEvent:v16];
          }

          [(CSCombinedListViewController *)self _removeAllUserInteractionReasons];
        }

        [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
        [(CSCombinedListViewController *)self _updateDeviceWakeProximitySensorAssertion];
        [(CSCombinedListViewController *)self _updateNotificationLongPressProximitySensorAssertion];
        [(CSCombinedListViewController *)self _updatePresentationForReason:@"handleEvent:CSEventTypeScreenOn"];
        [(NCNotificationStructuredListViewController *)self->_structuredListViewController revealNotificationHistory:0 animated:0];
        goto LABEL_35;
      case 25:
        [(CSCombinedListViewController *)self _setScreenOn:0];
        self->_homeButtonPressDetected = 0;
        self->_lockButtonPressDetected = 0;
        self->_liftDetected = 0;
        self->_coverSheetWasDismissed = 0;
        self->_interactingWithNotificationList = 0;
        self->_proximitySensorCoveredSinceWake = self->_hasProximitySensor;
        [(CSCombinedListViewController *)self _resetReducedIdleTimeFlagsIfNeeded];
        [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
        [(CSCombinedListViewController *)self _updateDeviceWakeProximitySensorAssertion];
        [(CSCombinedListViewController *)self _updateNotificationLongPressProximitySensorAssertion];
        [(CSCombinedListViewController *)self _updatePresentationForReason:@"handleEvent:CSEventTypeScreenOff"];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __44__CSCombinedListViewController_handleEvent___block_invoke;
        v21[3] = &unk_27838B770;
        v21[4] = self;
        [(CSCombinedListViewController *)self _performSelfCorrectingListViewAction:v21];
        mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
        -[CSCombinedListViewController _updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance:](self, "_updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance:", -[CSCombinedListViewController _uiBacklightLuminanceForBLSBacklightState:](self, "_uiBacklightLuminanceForBLSBacklightState:", [mEMORY[0x277CF0880] backlightState]));

        [(NCNotificationStructuredListViewController *)self->_structuredListViewController dismissModalFullScreenAnimated:0];
        self->_confirmedNotInPocket = 0;
        [(CSCombinedListViewController *)self _stopScreenOnTimer];
        goto LABEL_36;
      case 26:
        [(NCNotificationStructuredListViewController *)self->_structuredListViewController listViewControllerPresentedByUserAction];
LABEL_35:
        [(CSCombinedListViewController *)self _startScreenOnTimer];
        goto LABEL_36;
      case 27:
        if ([(NCNotificationStructuredListViewController *)self->_structuredListViewController dismissModalFullScreenAnimated:1])
        {
          v8 = *MEMORY[0x277D77DB0];
          if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            *buf = 138543362;
            v24 = v11;
            _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ handled home button tap dismissing long look", buf, 0xCu);
          }

          v12 = SBLogDashBoard();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [CSCombinedListViewController handleEvent:];
          }
        }

        else
        {
          dndBedtimeGreetingViewController = self->_dndBedtimeGreetingViewController;
          if (!dndBedtimeGreetingViewController || ![(CSDNDBedtimeGreetingViewController *)dndBedtimeGreetingViewController handleEvent:eventCopy])
          {
LABEL_36:
            isConsumable2 = 0;
            goto LABEL_37;
          }
        }

        break;
      case 35:
        [(NCNotificationStructuredListViewController *)self->_structuredListViewController migrateNotifications];
        goto LABEL_36;
      case 36:
        if ([(CSCombinedListViewController *)self _allowNotificationsRevealPolicy])
        {
          [(NCNotificationStructuredListViewController *)self->_structuredListViewController revealNotificationHistory:1 animated:0];
        }

        isConsumable2 = 0;
        v15 = 1426;
LABEL_27:
        *(&self->super.super.super.super.isa + v15) = 0;
        goto LABEL_37;
      default:
        goto LABEL_37;
    }
  }

  isConsumable2 = [eventCopy isConsumable];
LABEL_37:

  return isConsumable2;
}

void __44__CSCombinedListViewController_handleEvent___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) revealNotificationHistory:0 animated:0];
  if (([MEMORY[0x277D75D18] areAnimationsEnabled] & 1) == 0)
  {
    v2 = [*(*(a1 + 32) + 1072) view];
    [v2 layoutIfNeeded];
    [v2 _removeAllRetargetableAnimations:1];
  }
}

- (BOOL)wouldHandleButtonEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = CSCombinedListViewController;
  return [(CSCoverSheetViewControllerBase *)&v4 wouldHandleButtonEvent:event];
}

- (id)metadataForTriggeredInteraction:(id)interaction
{
  if (self->_gestureStudyInteraction == interaction)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceOrientationProvider = [(CSCombinedListViewController *)self deviceOrientationProvider];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(deviceOrientationProvider, "rawDeviceOrientationIgnoringOrientationLocks")}];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D773D8]];

    proximitySensorProvider = [(CSCombinedListViewController *)self proximitySensorProvider];
    isObjectInProximity = [proximitySensorProvider isObjectInProximity];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:isObjectInProximity];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D77410]];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_proximitySensorCoveredSinceWake];
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D77408]];

    WeakRetained = objc_loadWeakRetained(&self->_authenticationStatusProvider);
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isAuthenticated")}];
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D773C8]];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "hasPasscodeSet")}];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D77400]];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[CSUserPresenceMonitor userPresenceDetectedSinceWake](self->_userPresenceMonitor, "userPresenceDetectedSinceWake")}];
    [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277D773E0]];

    if (self->_screenOnTime)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:self->_screenOnTime];
      v17 = v16;

      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
      [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x277D77418]];
    }

    mEMORY[0x277D66010] = [MEMORY[0x277D66010] sharedInstance];
    activeWakeSourceDescription = [mEMORY[0x277D66010] activeWakeSourceDescription];
    [v3 setObject:activeWakeSourceDescription forKeyedSubscript:*MEMORY[0x277D77420]];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_liftDetected];
    [v3 setObject:v21 forKeyedSubscript:*MEMORY[0x277D773F0]];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_homeButtonPressDetected];
    [v3 setObject:v22 forKeyedSubscript:*MEMORY[0x277D773E8]];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_lockButtonPressDetected];
    [v3 setObject:v23 forKeyedSubscript:*MEMORY[0x277D773F8]];

    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_coverSheetWasDismissed];
    [v3 setObject:v24 forKeyedSubscript:*MEMORY[0x277D773D0]];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_historyWasRevealed];
    [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x277D773C0]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)proximitySensorProvider:(id)provider objectWithinProximityDidChange:(BOOL)change
{
  changeCopy = change;
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v7 = MEMORY[0x277D77DB0];
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = changeCopy;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Proximity Sensor changed to objectWithinProximity: %{BOOL}d", &v17, 8u);
  }

  proximitySensorCoveredSinceWake = self->_proximitySensorCoveredSinceWake;
  _isScreenOn = [(CSCombinedListViewController *)self _isScreenOn];
  v11 = self->_proximitySensorCoveredSinceWake;
  if (_isScreenOn)
  {
    v11 &= changeCopy;
    self->_proximitySensorCoveredSinceWake = v11;
  }

  if (proximitySensorCoveredSinceWake != v11 && self->_deviceWakeProximitySensorAssertionCaptureTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_deviceWakeProximitySensorAssertionCaptureTime];

    if (BSFloatGreaterThanFloat())
    {
      mEMORY[0x277CF06F8] = [MEMORY[0x277CF06F8] sharedInstance];
      if (objc_opt_respondsToSelector())
      {
        [mEMORY[0x277CF06F8] proximityDidUnoccludeAfterWake];
      }
    }

    deviceWakeProximitySensorAssertionCaptureTime = self->_deviceWakeProximitySensorAssertionCaptureTime;
    self->_deviceWakeProximitySensorAssertionCaptureTime = 0;
  }

  if (self->_deviceWakeProximitySensorAssertion)
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = @"NotificationDeviceWake";
      _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Invalidating proximity sensor assertion for %@", &v17, 0xCu);
    }

    [(BSInvalidatable *)self->_deviceWakeProximitySensorAssertion invalidate];
    deviceWakeProximitySensorAssertion = self->_deviceWakeProximitySensorAssertion;
    self->_deviceWakeProximitySensorAssertion = 0;
  }
}

- (void)_setListHasContent:(BOOL)content
{
  v16 = *MEMORY[0x277D85DE8];
  self->_listDismissingContent = 0;
  if (self->_listPresentingContent != content)
  {
    contentCopy = content;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = v8;
      v10 = @"NO";
      if (contentCopy)
      {
        v10 = @"YES";
      }

      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "%@: Setting notification list has content to %@", &v12, 0x16u);
    }

    self->_listPresentingContent = contentCopy;
    self->_reduceIdleTimerDurationDueToEmptyLiftToWake = 0;
    delegate = [(CSCombinedListViewController *)self delegate];
    [delegate combinedListViewController:self hasContent:contentCopy];

    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
    [(CSCombinedListViewController *)self _updateFaceDetectMonitoring];
    [(CSCombinedListViewController *)self _updateNotificationLongPressProximitySensorAssertion];
    [(CSListItemManager *)self->_supplementaryItemManager setListHasNotificationContent:[(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent]];
  }
}

- (void)_performSelfCorrectingListViewAction:(id)action
{
  actionCopy = action;
  v4 = ([(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent]& 1) != 0 || [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController isPresentingTransientContent];
  if (actionCopy)
  {
    actionCopy[2]();
  }

  if (![(NCNotificationStructuredListViewController *)self->_structuredListViewController hasVisibleContent])
  {
    isPresentingTransientContent = [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController isPresentingTransientContent];
    v5 = isPresentingTransientContent;
    if (v4 == isPresentingTransientContent)
    {
      goto LABEL_14;
    }

    if (isPresentingTransientContent)
    {
      v5 = 1;
    }

    else
    {
      v5 = 0;
      if (self->_listDismissingContent)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v5 = 1;
  if (!v4)
  {
LABEL_13:
    [(CSCombinedListViewController *)self _setListHasContent:v5];
  }

LABEL_14:
  [(CSCombinedListViewController *)self _noteListContentsPotentiallyChangedAfterTransitionFrom:v4 to:v5];
  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
}

- (void)_updatePresentationForReason:(id)reason
{
  reasonCopy = reason;
  currentPresentationUpdateCauses = self->_currentPresentationUpdateCauses;
  if (!currentPresentationUpdateCauses)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_currentPresentationUpdateCauses;
    self->_currentPresentationUpdateCauses = v6;

    currentPresentationUpdateCauses = self->_currentPresentationUpdateCauses;
  }

  if ([(NSMutableSet *)currentPresentationUpdateCauses containsObject:reasonCopy])
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [CSCombinedListViewController _updatePresentationForReason:];
    }
  }

  else
  {
    [(NSMutableSet *)self->_currentPresentationUpdateCauses addObject:reasonCopy];
    [(CSCombinedListViewController *)self _minInsetsToPushDateOffScreen];
    v9 = v8;
    if ([(CSCombinedListViewController *)self _shouldPadBottomSpacing])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    persistentLayout = [(CSLayoutStrategy *)self->_layoutStrategy persistentLayout];
    [persistentLayout bottomContentInset];
    v13 = v12;

    v14 = fmax(v10 - v13, 0.0);
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      self->_footerOffset = v14;
      [(CSCombinedListViewController *)self _updateListViewContentInset];
      view = [(CSCombinedListViewController *)self view];
      [view setNeedsLayout];
    }

    notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
    [notificationListScrollView contentOffset];
    v18 = v17;
    [(NCNotificationStructuredListViewController *)self->_structuredListViewController scrollViewVisibleContentLayoutOffset];
    v20 = v19;
    [notificationListScrollView contentInset];
    v22 = -v21;
    v23 = v18 - v20 - v21;
    if (v23 <= v22)
    {
      v23 = v22;
    }

    v24 = v18 >= v22 && v20 <= 0.0;
    cachedAdjunctHeight = self->_cachedAdjunctHeight;
    self->_presentationDirtiedAppearance = 0;
    if (v24)
    {
      v26 = v18;
    }

    else
    {
      v26 = v23;
    }

    [(NSLayoutConstraint *)self->_adjunctListViewTopConstraint setConstant:-cachedAdjunctHeight];
    [(CSCombinedListViewController *)self _listViewDefaultContentInsets];
    v28 = v27;
    if ([(CSCombinedListViewController *)self _allowsDateViewOrProudLockScroll])
    {
      [(CSCombinedListViewController *)self scrollingContentInset];
      [(CSCombinedListViewController *)self clippingOffset];
      [(CSCombinedListViewController *)self updateAppearanceForHidden:BSFloatGreaterThanOrEqualToFloat() offset:cachedAdjunctHeight + v26];
    }

    else
    {
      [(CSCombinedListViewController *)self updateAppearanceForHidden:0 offset:0.0];
    }

    [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController setProminentElementHeightToMimic:v28 + -8.666666];
    CSUpdateStatusBarBackgroundComponent(self);
    if (self->_presentationDirtiedAppearance)
    {
      [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
    }

    [(NSMutableSet *)self->_currentPresentationUpdateCauses removeObject:reasonCopy];
  }
}

- (void)_layoutListView
{
  self->_listBeingLaidOut = 1;
  notificationListViewController = [(CSCombinedListViewController *)self notificationListViewController];
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [(CSCombinedListViewController *)self _suggestedListViewFrame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v9 = CGRectGetWidth(v17);
  view = [(CSCombinedListViewController *)self view];
  [view bounds];
  v11 = CGRectGetHeight(v18);

  view2 = [(UIViewController *)self->_captureOnlyMaterialViewController view];
  [view2 setFrame:{MinX, 0.0, v9, v11}];

  view3 = [notificationListViewController view];
  [view3 setFrame:{MinX, 0.0, v9, v11}];

  [notificationListScrollView setFrame:{0.0, 0.0, v9, v11}];
  [(CSCombinedListViewController *)self _updateListViewContentInset];
  self->_listBeingLaidOut = 0;
  [(CSCombinedListViewController *)self _updatePresentationForReason:@"_layoutListView"];
}

- (void)_updateListViewContentInset
{
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [notificationListScrollView contentOffset];
  v5 = v4;
  [notificationListScrollView contentInset];
  v7 = v6;
  [(CSCombinedListViewController *)self _listViewAdjustedContentInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12 + self->_cachedAdjunctHeight;
  v15 = v14 + self->_footerOffset;
  [(CSCombinedListViewController *)self _sanitizedContentOffset:v5 - (v13 - v7) forContentInset:v13, v8, v15, v10];
  v16 = BSFloatEqualToFloat();
  v17 = BSFloatEqualToFloat();
  v18 = BSFloatEqualToFloat();
  v19 = BSFloatEqualToFloat();
  if ([notificationListScrollView isDragging])
  {
    [notificationListScrollView setContentInset:{v13, v9, v15, v11}];
  }

  else
  {
    isDecelerating = [notificationListScrollView isDecelerating];
    [notificationListScrollView setContentInset:{v13, v9, v15, v11}];
    if ((isDecelerating & 1) == 0 && (v17 & v18 & v19 & v16 & 1) == 0)
    {
      v21 = (v18 ^ 1) & v17 & v19 & v16;
      _shouldPadBottomSpacing = [(CSCombinedListViewController *)self _shouldPadBottomSpacing];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __59__CSCombinedListViewController__updateListViewContentInset__block_invoke;
      v31[3] = &unk_27838B838;
      v31[4] = self;
      v23 = notificationListScrollView;
      v32 = v23;
      v24 = MEMORY[0x223D698D0](v31);
      if (v21 == 1 && _shouldPadBottomSpacing)
      {
        [MEMORY[0x277D75D18] performWithoutAnimation:v24];
      }

      else
      {
        if (v21 && !_shouldPadBottomSpacing)
        {
          [v23 _scrollToTopIfPossible:1];
        }

        v25 = MEMORY[0x277D75D18];
        [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController listViewContentAnimationDuration];
        v27 = v26;
        [(CSNotificationAdjunctListViewController *)self->_adjunctListViewController listViewContentAnimationDampingRatio];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __59__CSCombinedListViewController__updateListViewContentInset__block_invoke_2;
        v29[3] = &unk_27838D198;
        v30 = _shouldPadBottomSpacing;
        v29[4] = self;
        [v25 animateWithDuration:0 delay:v24 usingSpringWithDamping:v29 initialSpringVelocity:v27 options:0.0 animations:v28 completion:0.0];
      }
    }
  }
}

uint64_t __59__CSCombinedListViewController__updateListViewContentInset__block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _updatePresentationForReason:@"_updateListViewContentInset"];
  }

  return result;
}

- (double)_sanitizedContentOffset:(double)offset forContentInset:(UIEdgeInsets)inset
{
  top = inset.top;
  [(CSCombinedListViewController *)self _determineMaxContentOffsetForContentInset:inset.top, inset.left, inset.bottom, inset.right];
  v7 = v6;
  v8 = -top;
  v9 = BSFloatGreaterThanFloat();
  if (v7 >= offset)
  {
    result = v7;
  }

  else
  {
    result = offset;
  }

  if (result >= v8)
  {
    result = v8;
  }

  if (v7 <= offset)
  {
    offsetCopy = v7;
  }

  else
  {
    offsetCopy = offset;
  }

  if (v9)
  {
    return offsetCopy;
  }

  return result;
}

- (CGPoint)_determineMaxContentOffsetForContentInset:(UIEdgeInsets)inset
{
  bottom = inset.bottom;
  left = inset.left;
  v6 = [(CSCombinedListViewController *)self notificationListScrollView:inset.top];
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController effectiveContentSize];
  v8 = v7;
  [v6 bounds];
  v10 = bottom + v8 - v9;

  v11 = -left;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_updateCaptureOnlyMaterialView
{
  if (!self->_captureOnlyMaterialViewController)
  {
    captureOnlyMaterialViewController = [(NCNotificationStructuredListViewController *)self->_structuredListViewController captureOnlyMaterialViewController];
    captureOnlyMaterialViewController = self->_captureOnlyMaterialViewController;
    self->_captureOnlyMaterialViewController = captureOnlyMaterialViewController;

    v5 = self->_captureOnlyMaterialViewController;
    if (v5)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __62__CSCombinedListViewController__updateCaptureOnlyMaterialView__block_invoke;
      v6[3] = &unk_27838B798;
      v6[4] = self;
      [(CSCombinedListViewController *)self bs_addChildViewController:v5 animated:0 transitionBlock:v6];
    }
  }
}

void __62__CSCombinedListViewController__updateCaptureOnlyMaterialView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [*(*(a1 + 32) + 1064) view];
  [v2 addSubview:v3];

  v4 = [*(a1 + 32) view];
  [v4 setNeedsLayout];
}

- (void)_setDisableScrolling:(BOOL)scrolling
{
  if (self->_disableScrolling != scrolling)
  {
    self->_disableScrolling = scrolling;
    [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
  }
}

- (void)_setScreenOn:(BOOL)on
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_screenOn != on)
  {
    onCopy = on;
    self->_screenOn = on;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allItems = [(CSListItemManager *)self->_supplementaryItemManager allItems];
    v5 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allItems);
          }

          contentHost = [*(*(&v10 + 1) + 8 * v8) contentHost];
          if (objc_opt_respondsToSelector())
          {
            [contentHost setScreenOn:onCopy];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_setDisableBackgroundAnimation:(BOOL)animation forReason:(id)reason
{
  animationCopy = animation;
  reasonCopy = reason;
  v7 = reasonCopy;
  if (reasonCopy)
  {
    backgroundAnimationDisabledReasons = self->_backgroundAnimationDisabledReasons;
    v17 = v7;
    if (animationCopy)
    {
      if (!backgroundAnimationDisabledReasons)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v10 = self->_backgroundAnimationDisabledReasons;
        self->_backgroundAnimationDisabledReasons = v9;

        v7 = v17;
        backgroundAnimationDisabledReasons = self->_backgroundAnimationDisabledReasons;
      }

      [(NSMutableSet *)backgroundAnimationDisabledReasons addObject:v7];
    }

    else
    {
      [(NSMutableSet *)backgroundAnimationDisabledReasons removeObject:v7];
    }

    reasonCopy = [(NSMutableSet *)self->_backgroundAnimationDisabledReasons count];
    v11 = reasonCopy != 0;
    v7 = v17;
    if (self->_disableBackgroundAnimation != v11)
    {
      self->_disableBackgroundAnimation = v11;
      if (reasonCopy)
      {
        v12 = objc_opt_new();
        appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
        v14 = [v12 identifier:appearanceIdentifier];
        v15 = [v14 suppressTeachableMomentsAnimation:1];
        homeAffordanceComponent = self->_homeAffordanceComponent;
        self->_homeAffordanceComponent = v15;
      }

      else
      {
        v12 = self->_homeAffordanceComponent;
        self->_homeAffordanceComponent = 0;
      }

      reasonCopy = [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
      v7 = v17;
    }
  }

  MEMORY[0x2821F96F8](reasonCopy, v7);
}

- (void)_setFooterCallToActionLabelHidden:(BOOL)hidden forReason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  v7 = reasonCopy;
  if (reasonCopy)
  {
    footerCallToActionHiddenReasons = self->_footerCallToActionHiddenReasons;
    v17 = v7;
    if (hiddenCopy)
    {
      if (!footerCallToActionHiddenReasons)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v10 = self->_footerCallToActionHiddenReasons;
        self->_footerCallToActionHiddenReasons = v9;

        v7 = v17;
        footerCallToActionHiddenReasons = self->_footerCallToActionHiddenReasons;
      }

      [(NSMutableSet *)footerCallToActionHiddenReasons addObject:v7];
    }

    else
    {
      [(NSMutableSet *)footerCallToActionHiddenReasons removeObject:v7];
    }

    reasonCopy = [(NSMutableSet *)self->_footerCallToActionHiddenReasons count];
    v11 = reasonCopy != 0;
    v7 = v17;
    if (self->_footerCallToActionLabelHidden != v11)
    {
      self->_footerCallToActionLabelHidden = v11;
      if (reasonCopy)
      {
        v12 = +[CSComponent footerCallToActionLabel];
        appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
        v14 = [v12 identifier:appearanceIdentifier];
        v15 = [v14 hidden:1];
        footerCallToActionLabelComponent = self->_footerCallToActionLabelComponent;
        self->_footerCallToActionLabelComponent = v15;
      }

      else
      {
        v12 = self->_footerCallToActionLabelComponent;
        self->_footerCallToActionLabelComponent = 0;
      }

      reasonCopy = [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
      v7 = v17;
    }
  }

  MEMORY[0x2821F96F8](reasonCopy, v7);
}

- (void)_setNotificationListHidden:(BOOL)hidden forReason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  v7 = reasonCopy;
  if (reasonCopy)
  {
    notificationListHiddenReasons = self->_notificationListHiddenReasons;
    v16 = v7;
    if (hiddenCopy)
    {
      if (!notificationListHiddenReasons)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v10 = self->_notificationListHiddenReasons;
        self->_notificationListHiddenReasons = v9;

        v7 = v16;
        notificationListHiddenReasons = self->_notificationListHiddenReasons;
      }

      [(NSMutableSet *)notificationListHiddenReasons addObject:v7];
    }

    else
    {
      [(NSMutableSet *)notificationListHiddenReasons removeObject:v7];
    }

    reasonCopy = [(NSMutableSet *)self->_notificationListHiddenReasons count];
    v11 = reasonCopy != 0;
    v7 = v16;
    if (self->_notificationListHidden != v11)
    {
      v12 = reasonCopy;
      self->_notificationListHidden = v11;
      view = [(NCNotificationStructuredListViewController *)self->_structuredListViewController view];
      v14 = view;
      v15 = 1.0;
      if (v12)
      {
        v15 = 0.0;
      }

      [view setAlpha:v15];

      v7 = v16;
    }
  }

  MEMORY[0x2821F96F8](reasonCopy, v7);
}

- (void)_setDismissGestureDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v7 = reasonCopy;
  if (reasonCopy)
  {
    dismissGestureDisabledReasons = self->_dismissGestureDisabledReasons;
    v12 = v7;
    if (disabledCopy)
    {
      if (!dismissGestureDisabledReasons)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v10 = self->_dismissGestureDisabledReasons;
        self->_dismissGestureDisabledReasons = v9;

        v7 = v12;
        dismissGestureDisabledReasons = self->_dismissGestureDisabledReasons;
      }

      [(NSMutableSet *)dismissGestureDisabledReasons addObject:v7];
    }

    else
    {
      [(NSMutableSet *)dismissGestureDisabledReasons removeObject:v7];
    }

    reasonCopy = [(NSMutableSet *)self->_dismissGestureDisabledReasons count];
    v11 = reasonCopy != 0;
    v7 = v12;
    if (self->_dismissGestureDisabled != v11)
    {
      self->_dismissGestureDisabled = v11;
      reasonCopy = [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
      v7 = v12;
    }
  }

  MEMORY[0x2821F96F8](reasonCopy, v7);
}

- (void)_requestAuthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_unlockRequester);
  createUnlockRequest = [WeakRetained createUnlockRequest];
  [createUnlockRequest setSource:10];
  [createUnlockRequest setIntent:2];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [createUnlockRequest setName:v7];

  [createUnlockRequest setWantsBiometricPresentation:1];
  [createUnlockRequest setConfirmedNotInPocket:self->_confirmedNotInPocket];
  [WeakRetained unlockWithRequest:createUnlockRequest completion:completionCopy];
}

- (BOOL)_isClockSnoozeAlarmNotificationRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_applicationInformer);
  sectionIdentifier = [requestCopy sectionIdentifier];
  if ([WeakRetained isBundleIdentifierClock:sectionIdentifier])
  {
    categoryIdentifier = [requestCopy categoryIdentifier];
    v8 = [categoryIdentifier isEqualToString:@"AlarmSnoozeCountdown"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_updateProximitySensorAssertion:(id)assertion wantsAssertion:(BOOL)wantsAssertion forReason:(id)reason
{
  wantsAssertionCopy = wantsAssertion;
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = assertion;
  reasonCopy = reason;
  if (!WeakRetained && wantsAssertionCopy)
  {
    v10 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Acquiring proximity sensor assertion for %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_proximitySensorProvider);
    v11 = [WeakRetained requestProximityMode:13 forReason:reasonCopy];
LABEL_11:

    WeakRetained = v11;
    goto LABEL_12;
  }

  if (WeakRetained && !wantsAssertionCopy)
  {
    v12 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Invalidating proximity sensor assertion for reason %@", &v14, 0xCu);
    }

    [WeakRetained invalidate];
    v11 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return WeakRetained;
}

- (void)_lockButtonPressDetected
{
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[Notification Long Press Gesture] Lock button pressed", v4, 2u);
  }

  self->_lockButtonPressDetected = 1;
}

- (void)_tearDownContainerViewForExpandedNotificationContent
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_containerViewForExpandedNotificationContent)
  {
    v3 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      containerViewForExpandedNotificationContent = self->_containerViewForExpandedNotificationContent;
      v6 = 138543362;
      v7 = containerViewForExpandedNotificationContent;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Tearing down container view for expanded notification content: %{public}@", &v6, 0xCu);
    }

    [(UIView *)self->_containerViewForExpandedNotificationContent removeFromSuperview];
    v5 = self->_containerViewForExpandedNotificationContent;
    self->_containerViewForExpandedNotificationContent = 0;
  }
}

- (void)_noteListContentsPotentiallyChangedAfterTransitionFrom:(BOOL)from to:(BOOL)to
{
  if (from || to)
  {
    [(CSCombinedListViewController *)self _noteListContentsPotentiallyChanged];
  }
}

- (void)_noteListContentsPotentiallyChanged
{
  [(CSCombinedListViewController *)self _noteVisibleBreakthroughContentPotentiallyChanged];
  v3 = [CSAction actionWithType:13 animated:1];
  [(CSCoverSheetViewControllerBase *)self sendAction:v3];

  activityItemObserver = [(CSCombinedListViewController *)self activityItemObserver];
  if (activityItemObserver && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [activityItemObserver activityItemsMayHaveChanged];
  }

  [(CSCombinedListViewController *)self _updateAudioCategoriesDisablingVolumeHUD];
}

- (void)_noteVisibleBreakthroughContentPotentiallyChanged
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSHashTable *)self->_breakthroughContentObservers count])
  {
    hasVisibleBreakthroughContent = [(CSCombinedListViewController *)self hasVisibleBreakthroughContent];
    if (self->_hadBreakthroughContent != hasVisibleBreakthroughContent)
    {
      v4 = hasVisibleBreakthroughContent;
      self->_hadBreakthroughContent = hasVisibleBreakthroughContent;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = self->_breakthroughContentObservers;
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v10 + 1) + 8 * v9++) combinedListViewController:self didChangeVisibleBreakthroughContent:{v4, v10}];
          }

          while (v7 != v9);
          v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)_triggerSignificantUserInteractionIfNeeded
{
  idleTimerSettings = [(CSLockScreenSettings *)self->_lockScreenSettings idleTimerSettings];
  increaseNotificationScrollLogging = [idleTimerSettings increaseNotificationScrollLogging];

  if (self->_significantUserInteractionTimer)
  {
    if (increaseNotificationScrollLogging)
    {
      v5 = SBLogIdleTimer();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[SignificantUserInteraction] dropped, timer already active", buf, 2u);
      }
    }
  }

  else
  {
    if (increaseNotificationScrollLogging)
    {
      v6 = SBLogIdleTimer();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[SignificantUserInteraction] Creating new timer", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v7 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSCombinedListViewController.significantUserInteractionTimer"];
    significantUserInteractionTimer = self->_significantUserInteractionTimer;
    self->_significantUserInteractionTimer = v7;

    v9 = self->_significantUserInteractionTimer;
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__CSCombinedListViewController__triggerSignificantUserInteractionIfNeeded__block_invoke;
    v12[3] = &unk_27838D1C0;
    objc_copyWeak(&v13, buf);
    v14 = increaseNotificationScrollLogging;
    [(BSAbsoluteMachTimer *)v9 scheduleWithFireInterval:v10 leewayInterval:v12 queue:1.0 handler:0.0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __74__CSCombinedListViewController__triggerSignificantUserInteractionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v3 = SBLogIdleTimer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[SignificantUserInteraction] 1s timer fired", v6, 2u);
    }
  }

  if ([WeakRetained participantState] == 2)
  {
    v4 = [CSAction actionWithType:4];
    [WeakRetained sendAction:v4];
  }

  if (WeakRetained)
  {
    [WeakRetained[141] invalidate];
    v5 = WeakRetained[141];
    WeakRetained[141] = 0;
  }
}

- (void)_updateAudioCategoriesDisablingVolumeHUD
{
  v40 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier allValues];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
  v2 = 0;
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        supplementaryViewControllers = [v4 supplementaryViewControllers];
        v6 = [supplementaryViewControllers countByEnumeratingWithState:&v24 objects:v38 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v25;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v25 != v8)
              {
                objc_enumerationMutation(supplementaryViewControllers);
              }

              v10 = *(*(&v24 + 1) + 8 * j);
              v11 = objc_opt_self();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v13 = v10;
                audioCategoriesDisablingVolumeHUD = [v13 audioCategoriesDisablingVolumeHUD];
                v15 = SBFAudioCategoriesDisablingVolumeHUDUnion();

                v2 = v15;
              }
            }

            v7 = [supplementaryViewControllers countByEnumeratingWithState:&v24 objects:v38 count:16];
          }

          while (v7);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v23);
  }

  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, v2);
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138412802;
      v33 = v17;
      v34 = 2048;
      selfCopy = self;
      v36 = 2114;
      v37 = v2;
      v18 = v17;
      _os_log_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEFAULT, "(%@:%p) Updating audioCategoriesDisablingVolumeHUD to '%{public}@'", buf, 0x20u);
    }

    audioCategoriesObserver = [(CSCombinedListViewController *)self audioCategoriesObserver];
    [audioCategoriesObserver combinedListViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
  }
}

- (void)_updateMediaOnlyFlagInSupplementaryContainers
{
  _exclusivelyHasMediaSupplementaryItems = [(CSCombinedListViewController *)self _exclusivelyHasMediaSupplementaryItems];
  if (self->_hasOnlyMediaInSupplementaryContainers != _exclusivelyHasMediaSupplementaryItems)
  {
    self->_hasOnlyMediaInSupplementaryContainers = _exclusivelyHasMediaSupplementaryItems;

    [(CSCombinedListViewController *)self _updateNotificationDimmingLayerLocalizedDimMode];
  }
}

- (BOOL)_exclusivelyHasMediaSupplementaryItems
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [(NSMutableDictionary *)self->_supplementaryItemContainersByIdentifier allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    v17 = selfCopy;
    v18 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (([v9 isEqualToString:@"AdjunctTopSticky"] & 1) == 0)
        {
          v10 = [(NSMutableDictionary *)selfCopy->_supplementaryItemContainersByIdentifier objectForKeyedSubscript:v9];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          groupingIdentifiers = [v10 groupingIdentifiers];
          v12 = [groupingIdentifiers countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(groupingIdentifiers);
                }

                if (![*(*(&v19 + 1) + 8 * j) isEqualToString:@"com.apple.MediaRemoteUI"])
                {

                  goto LABEL_21;
                }
              }

              v13 = [groupingIdentifiers countByEnumeratingWithState:&v19 objects:v27 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

            v6 = 1;
            selfCopy = v17;
          }

          v7 = v18;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_21:
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_updateNotificationDimmingLayerLocalizedDimMode
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_historyWasRevealed)
  {
    v3 = 2;
  }

  else
  {
    v3 = self->_isWallpaperObscured && self->_hasOnlyMediaInSupplementaryContainers && !self->_notificationsVisibleInViewport;
  }

  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    historyWasRevealed = self->_historyWasRevealed;
    isWallpaperObscured = self->_isWallpaperObscured;
    hasOnlyMediaInSupplementaryContainers = self->_hasOnlyMediaInSupplementaryContainers;
    notificationsVisibleInViewport = self->_notificationsVisibleInViewport;
    v11 = 134219008;
    v12 = v3;
    v13 = 1024;
    v14 = historyWasRevealed;
    v15 = 1024;
    v16 = isWallpaperObscured;
    v17 = 1024;
    v18 = hasOnlyMediaInSupplementaryContainers;
    v19 = 1024;
    v20 = notificationsVisibleInViewport;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "NotificationDimmingLayer localizedDimMode set to: %ld; historyWasRevealed: %d, wallpaperObscured: %d; hasOnlyMediaInSupplementaryContainers: %d; notificationsVisibleInViewport: %d", &v11, 0x24u);
  }

  notificationDimmingLayerComponent = self->_notificationDimmingLayerComponent;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  [(CSComponent *)notificationDimmingLayerComponent setValue:v10];

  [(CSCombinedListViewController *)self _updatePresentationForReason:@"notificationDimmingLayerVisibility"];
}

- (void)updateAppearanceForHidden:(BOOL)hidden offset:(double)offset
{
  hiddenCopy = hidden;
  _allowsDateViewOrProudLockScroll = [(CSCombinedListViewController *)self _allowsDateViewOrProudLockScroll];
  activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v9 = [activeAppearance componentForType:1 property:2];

  activeAppearance2 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v11 = [activeAppearance2 componentForType:1 property:1];

  if (hiddenCopy)
  {
    isHidden = [v11 isHidden];
    v13 = _allowsDateViewOrProudLockScroll;
  }

  else
  {
    v13 = 0;
    isHidden = 0;
  }

  [v9 offset];
  if (v15 == 0.0)
  {
    v16 = isHidden;
  }

  else
  {
    v16 = 0;
  }

  if (v14 == offset)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(CSComponent *)self->_dateViewComponent setHidden:v13];
  v18 = 0.0;
  if (_allowsDateViewOrProudLockScroll)
  {
    [(CSCombinedListViewController *)self scrollingContentInset];
    v18 = v19 + offset;
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  CSComponentTransitionInputsMake(0, &v26, 0.0, 0.0, v18, 0.0, 0.0);
  if (self->_screenOn)
  {
    v20 = 12;
  }

  else if ([v11 isHidden])
  {
    v20 = 0;
  }

  else
  {
    v20 = 12;
  }

  [(CSComponent *)self->_dateViewComponent setTransitionModifiers:v20];
  dateViewComponent = self->_dateViewComponent;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  [(CSComponent *)dateViewComponent setTransitionInputs:&v23];
  [(CSCombinedListViewController *)self _updateProudLockForHidden:hiddenCopy scrollOffset:v18];
  [(CSComponent *)self->_complicationContainerComponent setTransitionModifiers:v20];
  complicationContainerComponent = self->_complicationContainerComponent;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  [(CSComponent *)complicationContainerComponent setTransitionInputs:&v23];
  if ((v17 & 1) == 0)
  {
    self->_presentationDirtiedAppearance = 1;
  }
}

- (void)_updateProudLockForHidden:(BOOL)hidden scrollOffset:(double)offset
{
  _shouldUpdateProudLockMaterialBackgroundForScrolling = [(CSCombinedListViewController *)self _shouldUpdateProudLockMaterialBackgroundForScrolling];
  v8 = _shouldUpdateProudLockMaterialBackgroundForScrolling;
  if (offset <= 0.0 || _shouldUpdateProudLockMaterialBackgroundForScrolling)
  {
    [(CSComponent *)self->_proudLockComponent setTransitionModifiers:0];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    CSComponentTransitionInputsMake(0, &v26, 0.0, 0.0, -offset, 0.0, 0.0);
    [(CSComponent *)self->_proudLockComponent setTransitionModifiers:8];
    proudLockComponent = self->_proudLockComponent;
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    [(CSComponent *)proudLockComponent setTransitionInputs:v25];
  }

  _shouldHideProudLockForScroll = [(CSCombinedListViewController *)self _shouldHideProudLockForScroll];
  v11 = hidden || _shouldHideProudLockForScroll;
  v12 = self->_proudLockComponent;
  if (v8)
  {
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;

    [(CSComponent *)v17 setSupportsMaterialBackground:_shouldHideProudLockForScroll];
    v16 = _shouldHideProudLockForScroll;
  }

  else
  {
    [(CSComponent *)self->_proudLockComponent setHidden:v11];
    v16 = v11;
  }

  activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v19 = [activeAppearance componentForType:11 property:-1];

  if (v8)
  {
    v20 = objc_opt_class();
    v21 = v19;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = v22;

    if (v24)
    {
      LOBYTE(v23) = _shouldHideProudLockForScroll ^ [v24 supportsMaterialBackground];
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  else
  {
    v23 = (v11 ^ [v19 isHidden]);
  }

  self->_presentationDirtiedAppearance = (v16 | v23) & 1;
}

- (void)updateAppearanceForStatusBarBackgroundHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
  v6 = [activeAppearance componentForType:8 property:1];

  LODWORD(activeAppearance) = [v6 isHidden];
  [(CSComponent *)self->_statusBarBackgroundComponent setHidden:hiddenCopy];
  if (activeAppearance != hiddenCopy)
  {
    self->_presentationDirtiedAppearance = 1;
  }
}

- (CGRect)_suggestedListViewFrame
{
  [(NCNotificationStructuredListViewController *)self->_structuredListViewController insetMargins];
  v4 = v3;
  v6 = v5;
  layoutStrategy = self->_layoutStrategy;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  view = [(CSCombinedListViewController *)self view];
  [view bounds];
  [(CSLayoutStrategy *)layoutStrategy suggestedFrameForListForPage:WeakRetained bounds:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11 - v4;
  v19 = v13 + 0.0;
  v20 = v15 - (-v6 - v4);
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGSize)_adjunctListViewSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_adjunctListViewSizeIncludingSpacing
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)_shouldPadBottomSpacingIsDragging:(BOOL)dragging
{
  draggingCopy = dragging;
  notificationListScrollView = [(CSCombinedListViewController *)self notificationListScrollView];
  [notificationListScrollView contentSize];

  if (draggingCopy)
  {
    return self->_shouldPadBottomSpacingWhileDragging;
  }

  [(CSCombinedListViewController *)self _minListHeightForPadding];

  return BSFloatGreaterThanFloat();
}

- (id)_identifierForNotificationRequest:(id)request
{
  v3 = MEMORY[0x277CCACA8];
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  notificationIdentifier = [requestCopy notificationIdentifier];

  v7 = [v3 stringWithFormat:@"%@:%@", sectionIdentifier, notificationIdentifier];

  return v7;
}

- (id)_threadIdentifierForNotificationRequest:(id)request
{
  v3 = MEMORY[0x277CCACA8];
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  threadIdentifier = [requestCopy threadIdentifier];

  v7 = [v3 stringWithFormat:@"%@:%@", sectionIdentifier, threadIdentifier];

  return v7;
}

- (void)_removeAllUserInteractionReasons
{
  [(NSMutableSet *)self->_hasUserInteractionReasons removeAllObjects];

  [(CSCombinedListViewController *)self _didUpdateSetHasUserInteraction];
}

- (void)_setHasUserInteraction:(BOOL)interaction forReason:(id)reason
{
  interactionCopy = interaction;
  reasonCopy = reason;
  hasUserInteractionReasons = self->_hasUserInteractionReasons;
  v10 = reasonCopy;
  if (interactionCopy)
  {
    if (hasUserInteractionReasons)
    {
      v8 = hasUserInteractionReasons;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB58] set];
    }

    v9 = self->_hasUserInteractionReasons;
    self->_hasUserInteractionReasons = v8;

    [(NSMutableSet *)self->_hasUserInteractionReasons addObject:v10];
  }

  else
  {
    [(NSMutableSet *)hasUserInteractionReasons removeObject:reasonCopy];
  }

  [(CSCombinedListViewController *)self _didUpdateSetHasUserInteraction];
}

- (void)_didUpdateSetHasUserInteraction
{
  [(CSCombinedListViewController *)self _setQuickActionsHidden:[(CSCombinedListViewController *)self _hasUserInteraction] forReason:@"CSQuickActionsUserInteractionReason"];

  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)_updateRaiseGestureDetectionForNotificationRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    bs_isAppearingOrAppeared = [(CSCombinedListViewController *)self bs_isAppearingOrAppeared];
  }

  else
  {
    bs_isAppearingOrAppeared = 0;
  }

  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    [CSCombinedListViewController _updateRaiseGestureDetectionForNotificationRequest:v6];
  }

  mEMORY[0x277D65EE8] = [MEMORY[0x277D65EE8] sharedInstance];
  v8 = mEMORY[0x277D65EE8];
  if (bs_isAppearingOrAppeared)
  {
    [mEMORY[0x277D65EE8] addGestureObserver:self];
  }

  else
  {
    [mEMORY[0x277D65EE8] removeGestureObserver:self];
  }

  [(CSCombinedListViewController *)self setActiveRaiseToListenNotificationRequest:requestCopy];
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    state = [updateCopy state];
    v9 = [(CSCombinedListViewController *)self _modeIdentifierForDNDState:state];
    previousState = [updateCopy previousState];
    v11 = [(CSCombinedListViewController *)self _modeIdentifierForDNDState:previousState];
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Received DND state update for current mode %{public}@ and previous mode %{public}@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__CSCombinedListViewController_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke;
  v13[3] = &unk_27838B838;
  v13[4] = self;
  v14 = updateCopy;
  v12 = updateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

void __79__CSCombinedListViewController_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) state];
  [v1 _updateActiveDNDState:v2];
}

- (void)_updateActiveDNDState:(id)state
{
  stateCopy = state;
  BSDispatchQueueAssertMain();
  activeDNDState = self->_activeDNDState;
  self->_activeDNDState = stateCopy;

  [(CSCombinedListViewController *)self _updateStructuredListOverrideUserInterfaceStyle];
}

- (int64_t)_uiBacklightLuminanceForBLSBacklightState:(int64_t)state
{
  if (state > 3)
  {
    return -1;
  }

  else
  {
    return qword_21EC96000[state];
  }
}

- (void)_updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance:(int64_t)luminance
{
  v5 = [(CSCombinedListViewController *)self overrideTraitCollectionForChildViewController:self->_structuredListViewController];
  userInterfaceStyle = [v5 userInterfaceStyle];

  sb_isDimmingModeActive = [self->_activeDNDState sb_isDimmingModeActive];
  v8 = luminance == 1 || sb_isDimmingModeActive;
  if ((((userInterfaceStyle != 2) ^ v8) & 1) == 0)
  {
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102__CSCombinedListViewController__updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance___block_invoke;
    v14[3] = &unk_27838BC70;
    v15 = v8;
    v14[4] = self;
    v10 = MEMORY[0x223D698D0](v14);
    v11 = v10;
    if (areAnimationsEnabled)
    {
      v12 = MEMORY[0x277D75D18];
      view = [(CSCombinedListViewController *)self view];
      [v12 transitionWithView:view duration:5242880 options:v11 animations:0 completion:0.2];
    }

    else
    {
      (*(v10 + 16))(v10);
    }
  }
}

void __102__CSCombinedListViewController__updateStructuredListOverrideUserInterfaceStyleWithBacklightLuminance___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) setOverrideTraitCollection:v2 forChildViewController:*(*(a1 + 32) + 1072)];
  [*(a1 + 32) setOverrideTraitCollection:v3 forChildViewController:*(*(a1 + 32) + 1064)];
  [*(*(a1 + 32) + 1232) setShouldRenderInline:*(a1 + 40)];
  [*(a1 + 32) updateAppearanceForController:*(a1 + 32)];
}

- (void)activeActivityDidChangeForManager:(id)manager
{
  focusActivityManager = self->_focusActivityManager;
  if (focusActivityManager == manager)
  {
    activeActivity = [(FCActivityManager *)focusActivityManager activeActivity];
    [(CSCombinedListViewController *)self _setFooterCallToActionLabelHidden:activeActivity != 0 forReason:@"Focus Activity"];
  }
}

- (BOOL)_shouldFilterNotificationRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  if ([options overridesDowntime])
  {
    v6 = 0;
  }

  else
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v6 = [(CSCombinedListViewController *)self _shouldScreenTimeSuppressNotificationsForBundleIdentifier:sectionIdentifier];
  }

  return v6;
}

- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_applicationInformer);
  v6 = [WeakRetained shouldScreenTimeSuppressNotificationsForBundleIdentifier:identifierCopy];

  return v6;
}

- (void)_screenTimeExpirationApplicationsDidChange:(id)change
{
  v35 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = changeCopy;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    v11 = MEMORY[0x277D77DD0];
    *&v8 = 138412546;
    v24 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [(CSCombinedListViewController *)self _shouldScreenTimeSuppressNotificationsForBundleIdentifier:v13, v24];
        v15 = *v11;
        v16 = os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          v17 = v5;
          if (v16)
          {
            v18 = v15;
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = v24;
            v31 = v20;
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "%@ received blocked event for screen time expiration for section: %@", buf, 0x16u);

            v11 = MEMORY[0x277D77DD0];
            v17 = v5;
          }
        }

        else
        {
          v17 = v6;
          if (v16)
          {
            v21 = v15;
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            *buf = v24;
            v31 = v23;
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "%@ received unblocked event for screen time expiration for section: %@", buf, 0x16u);

            v11 = MEMORY[0x277D77DD0];
            v17 = v6;
          }
        }

        [v17 addObject:v13];
        [(NCNotificationStructuredListViewController *)self->_structuredListViewController toggleFilteringForSectionIdentifier:v13 shouldFilter:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }
}

- (void)_evaluateShouldShowGreeting:(id)greeting animated:(BOOL)animated
{
  animatedCopy = animated;
  greetingCopy = greeting;
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  shouldShowGreeting = [greetingCopy shouldShowGreeting];
  if (![(CSCombinedListViewController *)self bs_isAppearingOrAppeared])
  {
    goto LABEL_15;
  }

  if ((activeInterfaceOrientation - 1) >= 2)
  {
    if (!__sb__runningInSpringBoard())
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        isGreetingDisabled = [greetingCopy isGreetingDisabled];
      }

      else
      {
        isGreetingDisabled = 1;
      }

      if (!shouldShowGreeting)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_15;
    }
  }

  isGreetingDisabled = [greetingCopy isGreetingDisabled];
  if (!shouldShowGreeting)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (isGreetingDisabled)
  {
LABEL_15:
    [(CSCombinedListViewController *)self _dismissDNDBedtimeGreetingViewAnimated:animatedCopy];
    goto LABEL_16;
  }

  if (!self->_dndBedtimeGreetingViewController)
  {
    activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
    legibilitySettings = [activeAppearance legibilitySettings];
    primaryColor = [legibilitySettings primaryColor];

    v14 = [[CSDNDBedtimeGreetingViewController alloc] initWithLegibilityPrimaryColor:primaryColor];
    dndBedtimeGreetingViewController = self->_dndBedtimeGreetingViewController;
    self->_dndBedtimeGreetingViewController = v14;

    v16 = self->_dndBedtimeGreetingViewController;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__CSCombinedListViewController__evaluateShouldShowGreeting_animated___block_invoke;
    v17[3] = &unk_27838B798;
    v17[4] = self;
    [(CSCombinedListViewController *)self bs_addChildViewController:v16 animated:animatedCopy transitionBlock:v17];
  }

LABEL_16:
}

void __69__CSCombinedListViewController__evaluateShouldShowGreeting_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 1264);
  v7 = a2;
  [v4 setDelegate:v3];
  [*(a1 + 32) _setNotificationListHidden:1 forReason:@"Bedtime Greeting"];
  [*(a1 + 32) _setDisableBackgroundAnimation:1 forReason:@"Bedtime Greeting"];
  [*(a1 + 32) _setFooterCallToActionLabelHidden:1 forReason:@"Bedtime Greeting"];
  v5 = *(a1 + 32);
  v6 = [CSAction actionWithType:7];
  [v5 sendAction:v6];

  v7[2]();
}

- (void)_dismissDNDBedtimeGreetingViewAnimated:(BOOL)animated
{
  if (self->_dndBedtimeGreetingViewController)
  {
    [CSCombinedListViewController bs_removeChildViewController:"bs_removeChildViewController:animated:transitionBlock:" animated:? transitionBlock:?];
  }
}

void __71__CSCombinedListViewController__dismissDNDBedtimeGreetingViewAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75D18];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CSCombinedListViewController__dismissDNDBedtimeGreetingViewAnimated___block_invoke_2;
  v6[3] = &unk_27838BC70;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__CSCombinedListViewController__dismissDNDBedtimeGreetingViewAnimated___block_invoke_3;
  v5[3] = &unk_27838B9B8;
  v5[4] = v7;
  v4 = a2;
  [v2 animateWithDuration:v6 animations:v5 completion:v3];
  v4[2](v4);
}

uint64_t __71__CSCombinedListViewController__dismissDNDBedtimeGreetingViewAnimated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [CSAction actionWithType:8 animated:*(a1 + 40)];
  [v2 sendAction:v3];

  v4 = [*(*(a1 + 32) + 1264) view];
  [v4 setAlpha:0.0];

  v5 = *(a1 + 32);

  return [v5 _setNotificationListHidden:0 forReason:@"Bedtime Greeting"];
}

void __71__CSCombinedListViewController__dismissDNDBedtimeGreetingViewAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setDisableBackgroundAnimation:0 forReason:@"Bedtime Greeting"];
  [*(a1 + 32) _setFooterCallToActionLabelHidden:0 forReason:@"Bedtime Greeting"];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1264);
  *(v2 + 1264) = 0;
}

- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__CSCombinedListViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke;
  v4[3] = &unk_27838B770;
  v4[4] = self;
  [animator addAnimations:v4];
}

void __98__CSCombinedListViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) view];
  v3 = [*(*(a1 + 32) + 1064) view];
  v4 = MEMORY[0x277D75D18];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __98__CSCombinedListViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2;
  v10 = &unk_27838B838;
  v11 = v3;
  v12 = v2;
  v5 = v2;
  v6 = v3;
  [v4 performWithoutAnimation:&v7];
  [v5 pl_performCrossFadeIfNecessary];
}

uint64_t __98__CSCombinedListViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (void)_setInlineContentHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(CSComponent *)self->_remoteInlineContentComponent isHidden]!= hidden)
  {
    [(CSComponent *)self->_remoteInlineContentComponent setHidden:hiddenCopy];

    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }
}

- (void)_setQuickActionsHidden:(BOOL)hidden forReason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  if (reasonCopy)
  {
    v6 = [(NSMutableSet *)self->_quickActionsHiddenReasons count];
    quickActionsHiddenReasons = self->_quickActionsHiddenReasons;
    if (hiddenCopy)
    {
      if (!quickActionsHiddenReasons)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v9 = self->_quickActionsHiddenReasons;
        self->_quickActionsHiddenReasons = v8;

        quickActionsHiddenReasons = self->_quickActionsHiddenReasons;
      }

      [(NSMutableSet *)quickActionsHiddenReasons addObject:reasonCopy];
    }

    else
    {
      [(NSMutableSet *)quickActionsHiddenReasons removeObject:reasonCopy];
    }

    v10 = self->_quickActionsHiddenReasons;
    if (v10)
    {
      v11 = [(NSMutableSet *)v10 count]!= 0;
      if ((v6 == 0) != v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_13;
      }

      v11 = 0;
    }

    [(CSComponent *)self->_quickActionsComponent setHidden:v11];
    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }

LABEL_13:
}

- (void)updateForLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(NCNotificationStructuredListViewController *)self->_structuredListViewController adjustForLegibilitySettingsChange:settingsCopy];
  }
}

- (id)_modeIdentifierForDNDState:(id)state
{
  activeModeConfiguration = [state activeModeConfiguration];
  mode = [activeModeConfiguration mode];
  modeIdentifier = [mode modeIdentifier];

  return modeIdentifier;
}

- (void)_toggleGestureStudyInteractionIfNecessary
{
  hasContent = [(CSCombinedListViewController *)self hasContent];
  gestureStudyInteraction = self->_gestureStudyInteraction;
  if (hasContent)
  {
    if (!gestureStudyInteraction)
    {
      return;
    }

    view = [(CSCombinedListViewController *)self view];
    [view removeInteraction:self->_gestureStudyInteraction];

    v6 = self->_gestureStudyInteraction;
    self->_gestureStudyInteraction = 0;
  }

  else
  {
    if (gestureStudyInteraction)
    {
      return;
    }

    v7 = [objc_alloc(MEMORY[0x277D75FB0]) initWithDelegate:self];
    v8 = self->_gestureStudyInteraction;
    self->_gestureStudyInteraction = v7;

    view2 = [(CSCombinedListViewController *)self view];
    [view2 addInteraction:self->_gestureStudyInteraction];
    v6 = view2;
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v4 = [(CSLockScreenSettings *)self->_lockScreenSettings dashBoardNotificationScrollSettings:settings];
}

- (void)_testingClearAllNotificationRequests
{
  dispatcher = [(CSCombinedListViewController *)self dispatcher];
  v3 = [dispatcher notificationSectionSettingsForDestination:self];
  v4 = [v3 bs_map:&__block_literal_global_14];
  [dispatcher destination:self clearNotificationRequestsInSections:v4];
}

- (CSCombinedListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSApplicationInforming)applicationInformer
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationInformer);

  return WeakRetained;
}

- (CSPageViewControllerProtocol)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (CSScrollablePageViewControllerProtocol)scrollablePage
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollablePage);

  return WeakRetained;
}

- (CSHomeAffordanceControlling)homeAffordanceController
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceController);

  return WeakRetained;
}

- (CSPlatterHomeGestureManaging)platterHomeGestureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_platterHomeGestureManager);

  return WeakRetained;
}

- (CSUnlockRequesting)unlockRequester
{
  WeakRetained = objc_loadWeakRetained(&self->_unlockRequester);

  return WeakRetained;
}

- (CSNotificationPresenting)notificationPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationPresenter);

  return WeakRetained;
}

- (SBFAuthenticationStatusProvider)authenticationStatusProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationStatusProvider);

  return WeakRetained;
}

- (CSProximitySensorProviding)proximitySensorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_proximitySensorProvider);

  return WeakRetained;
}

- (CSDeviceOrientationProviding)deviceOrientationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceOrientationProvider);

  return WeakRetained;
}

- (CSRemoteContentInlineProviding)remoteContentInlineProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteContentInlineProvider);

  return WeakRetained;
}

- (CSCoverSheetViewPresenting)coverSheetViewPresenting
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewPresenting);

  return WeakRetained;
}

- (CSCoverSheetGestureHandling)coverSheetGestureHandling
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetGestureHandling);

  return WeakRetained;
}

- (CSActivityItemObserving)activityItemObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_activityItemObserver);

  return WeakRetained;
}

- (CSCombinedListViewControllerAudioCategoriesObserver)audioCategoriesObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_audioCategoriesObserver);

  return WeakRetained;
}

- (void)viewWillDisappear:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0(&dword_21EB05000, v5, v6, "%{public}@ stopped listening to raise gesture", v7, v8, v9, v10, v11);
}

- (void)notificationStructuredListViewControllerDidSignificantUserInteraction:.cold.1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v1, v2, "%@", v3, v4, v5, v6, v7);
}

- (void)notificationStructuredListViewController:(void *)a1 requestsPresentingFocusActivityPickerFromView:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0(&dword_21EB05000, v5, v6, "%{public}@ presenting focus activity picker from notification list", v7, v8, v9, v10, v11);
}

- (void)handleEvent:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v2, v3, "Destination %@ handled home button tap dismissing long look", v4, v5, v6, v7, v8);
}

- (void)handleEvent:(void *)a1 .cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21EB05000, v1, OS_LOG_TYPE_ERROR, "Destination %{public}@ resetting user interaction on screen ON", v5, 0xCu);
}

- (void)_updatePresentationForReason:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21EB05000, v0, OS_LOG_TYPE_ERROR, "CSCombinedListViewController attempted a second presentation update for reason: %@", v1, 0xCu);
}

- (void)_updateRaiseGestureDetectionForNotificationRequest:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4();
  v6 = 2114;
  v7 = v4;
  _os_log_debug_impl(&dword_21EB05000, v1, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ to raise gesture", v5, 0x16u);
}

@end