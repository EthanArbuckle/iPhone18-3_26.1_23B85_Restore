@interface CSCoverSheetViewController
- ($453422EBA70013024ECC637D52E1FF2D)transitionContext;
- (BOOL)_areComplicationsHidden;
- (BOOL)_batteryCollection:(id)a3 containsDeviceWithIdentifier:(id)a4;
- (BOOL)_canPresentSwipeDismissableModal;
- (BOOL)_canShowEmbeddedRemoteContent;
- (BOOL)_complicationsInterpretGestureRecognizerLocationAsContent:(id)a3;
- (BOOL)_gestureRecognizer:(id)a3 hitContainerWithView:(id)a4 componentType:(int64_t)a5 interpretsViewAsContent:(id)a6;
- (BOOL)_gestureRecognizer:(id)a3 isLocatedOverHorizontalContentRegionInViewController:(id)a4;
- (BOOL)_handleEvent:(id)a3;
- (BOOL)_handleEventType:(int64_t)a3;
- (BOOL)_isAccessoryAnimationAllowedForAccessory:(id)a3;
- (BOOL)_isAppleMagSafePack:(id)a3;
- (BOOL)_isComplicationContainerVisible;
- (BOOL)_isFakeStatusBarEnabled;
- (BOOL)_isKnownTransitionConflictFrom:(id)a3 to:(id)a4;
- (BOOL)_isMainPageShowing;
- (BOOL)_isPageContentHidden;
- (BOOL)_isPresentingModalRemoteContent;
- (BOOL)_isPresentingModalViewControllerWithIdentifier:(id)a3;
- (BOOL)_isPresentingPosterSwitcher;
- (BOOL)_isRemoteContentPresentedInUnlockMode;
- (BOOL)_isShowingChargingModal;
- (BOOL)_isSlideableContentOffsetOnscreen:(CGPoint)a3;
- (BOOL)_isSlideableContentOnscreen;
- (BOOL)_isSourceForHorizontalScrolling:(id)a3;
- (BOOL)_isSpotlightBehaviorRestricted;
- (BOOL)_isTodayViewOverlayShowing;
- (BOOL)_overSlidingControlForLocation:(CGPoint)a3 inView:(id)a4;
- (BOOL)_quickActionButtonInterpretsLocation:(CGPoint)a3 asBesideContentForGestureView:(id)a4;
- (BOOL)_removeRemoteViewControllerForInvalidatedSession:(id)a3 completion:(id)a4;
- (BOOL)_shouldAllowGlassCoverSheet;
- (BOOL)_shouldLoadComplications;
- (BOOL)_shouldReduceWhitePoint;
- (BOOL)_shouldReduceWhitePointForAppearance:(id)a3;
- (BOOL)_shouldUpdateActiveAppearanceForReason:(id)a3;
- (BOOL)_showingAccessoryView;
- (BOOL)_transitionPrototypeChargingViewToVisible:(BOOL)a3 animated:(BOOL)a4;
- (BOOL)attachedAccessoriesContainsAccessoryType:(int64_t)a3;
- (BOOL)canBeDeactivatedForUIUnlockFromSource:(int)a3;
- (BOOL)complicationsUsingBottomPosition;
- (BOOL)containsCenteredDateTimeLayout;
- (BOOL)contentOccludesBackground;
- (BOOL)controller:(id)a3 shouldAllowPanScrollingWithSystemGestureRecognizer:(id)a4;
- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)a3;
- (BOOL)externalLockProvidersRequireUnlock;
- (BOOL)externalLockProvidersShowPasscode;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)hasVisibleContentToReveal;
- (BOOL)interceptDismissalGestureForOverlayController:(id)a3;
- (BOOL)isHostingAnApp;
- (BOOL)isInteractingWithNotificationList;
- (BOOL)isLockScreenShowingDefaultContent;
- (BOOL)isLockScreenShowingDefaultContentExceptControlCenter;
- (BOOL)isMainPageVisible;
- (BOOL)isNotificationContentExtensionVisible:(id)a3;
- (BOOL)isPasscodeLockVisible;
- (BOOL)isPresentingNotificationInLongLook;
- (BOOL)isRestToOpenAvailable;
- (BOOL)isShowingMediaControls;
- (BOOL)isShowingModalView;
- (BOOL)isShowingNonNotificationContent;
- (BOOL)isShowingTodayView;
- (BOOL)isTouchLocation:(CGPoint)a3 inRestrictedRectForGestureView:(id)a4;
- (BOOL)isTransitioningInteractively;
- (BOOL)isUnlockDisabled;
- (BOOL)passcodeViewControllerShouldHideStatusBar:(id)a3;
- (BOOL)phoneUnlockWithWatchControllerShowRawErrorCodes:(id)a3;
- (BOOL)preventsLaunchFromWidgetWithAction:(id)a3;
- (BOOL)proudLockViewControllerIsCoverSheetVisible;
- (BOOL)remoteContentSession:(id)a3 dismissWithReason:(int64_t)a4 completion:(id)a5;
- (BOOL)remoteContentSession:(id)a3 presentViewController:(id)a4;
- (BOOL)searchGestureShouldRecognize:(id)a3;
- (BOOL)shouldActivateRemoteContentSession:(id)a3;
- (BOOL)shouldAutoUnlockForSource:(int)a3;
- (BOOL)shouldAutorotate;
- (BOOL)shouldCompletePhoneAutoUnlockWithNotification;
- (BOOL)shouldModifyPageScrolling;
- (BOOL)shouldPresentOrDismissCoverSheetSpotlight;
- (BOOL)shouldShowLockStatusBarTime;
- (BOOL)shouldUnlockUIOnKeyDownEvent;
- (BOOL)spotlightPresenterAllowsPullToSearch:(id)a3;
- (BOOL)suppressesBanners;
- (BOOL)suppressesControlCenter;
- (BOOL)suppressesScreenshots;
- (BOOL)userPresenceDetectedSinceWake;
- (BOOL)widgetGridViewControllerShouldPreventLaunchFromWidget:(id)a3;
- (BOOL)willUIUnlockFromSource:(int)a3 isLockScreenDisabledForAssertion:(BOOL)a4;
- (BOOL)wouldHandleButtonEvent:(id)a3;
- (CAFrameRateRange)presentationPreferredFrameRateRange;
- (CGPoint)_slideableContentOffset;
- (CGRect)_effectivePreferredSalientContentRectangle;
- (CGRect)frameForContentViewForContainerBounds:(CGRect)a3;
- (CGRect)posterPreferredSalientContentRectangle;
- (CSApplicationLaunching)applicationLauncher;
- (CSCoverSheetSpotlightPresenting)coverSheetSpotlightPresenter;
- (CSCoverSheetViewController)initWithPageViewControllers:(id)a3 mainPageContentViewController:(id)a4 context:(id)a5;
- (CSCoverSheetViewControllerDelegate)delegate;
- (CSEmergencyCalling)emergencyCaller;
- (CSIdleTimerControlling)idleTimerController;
- (CSNotificationDispatcher)dispatcher;
- (CSPresentation)externalPresentation;
- (CSWallpaperColorProvider)wallpaperColorProvider;
- (CSWidgetURLHandling)widgetURLHandler;
- (NSSet)audioCategoriesDisablingVolumeHUD;
- (NSString)coverSheetIdentifier;
- (SBFOverlayControlling)overlayController;
- (double)_adaptiveTimeMaxYFromConfigurationAndPosterPreferences;
- (double)_dateTimeAlphaForFade;
- (double)_dateTimeInsetXForPage:(id)a3;
- (double)_dateViewAlphaForCurrentWakeState;
- (double)_listInsetXForPage:(id)a3;
- (double)_minDateListSpacingForPage:(id)a3;
- (double)_posterPersistedTimeMaxY;
- (double)_timeLabelScrollPercentForDateTimeLayout:(unint64_t)a3;
- (double)_wallpaperLumaFromWallpaperComponent:(id)a3;
- (double)bottomInsetForBottomComplications;
- (double)dateTimeMostExtremeLeadingX;
- (double)dateTimeMostExtremeTrailingX;
- (double)dateTimeSubtitleMaximumWidth;
- (double)listMinY;
- (double)prominentBaselineToListY;
- (double)remoteContentComplicationTopYInset;
- (double)timeLabelBaselineY;
- (double)timeLabelOffsetForScrollPercent:(double)a3;
- (double)timeTextHeight;
- (double)timeToSubtitleLabelBaselineDifferenceY;
- (double)windowedAccessoryInset;
- (id)__currentDesiredAppearanceWithStartIndex:(unint64_t *)a3 targetIndex:(unint64_t *)a4 targetAppearance:(id *)a5 targetPresentation:(id *)a6 modalAppearance:(id *)a7 proudLockAppearance:(id *)a8 poseidonAppearance:(id *)a9 backgroundContentAppearance:(id *)a10;
- (id)_activeViewControllers;
- (id)_appearanceForParticipant:(id)a3;
- (id)_averageLockScreenWallpaperColor;
- (id)_batteryCenterInternalBattery;
- (id)_behaviorForParticipant:(id)a3;
- (id)_chargingInfo;
- (id)_coachingStringToUse;
- (id)_connectedExternalChargers;
- (id)_createFakeStatusBar;
- (id)_eligiblePageViewControllers;
- (id)_fakeStatusBarSettings;
- (id)_filterValuesForWhitePointReduced:(BOOL)a3 lighterReduction:(BOOL)a4;
- (id)_fullscreeNotificationViewControllerMatchingNotificationRequest:(id)a3;
- (id)_hostedRemoteContentViewController;
- (id)_overrideDate;
- (id)_pageForScrollPercent:(double)a3;
- (id)_passcodeViewController;
- (id)_presentationForParticipant:(id)a3;
- (id)_presentedModalViewControllerWithIdentifier:(id)a3;
- (id)_validatedComplicationDescriptorForDescriptor:(id)a3;
- (id)_whitePointReductionFilterFromValues:(id)a3;
- (id)_whitePointValues;
- (id)_whitePointValuesForAppearance:(id)a3;
- (id)_windowsFromViewControllers:(id)a3;
- (id)createHomeButtonShowPasscodeRecognizerForHomeButtonPress;
- (id)createHomeButtonSuppressAfterUnlockRecognizerForUnlockSource:(int)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayConfigurationForSpotlightPresenter:(id)a3;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)pageViewControllerAtIndex:(unint64_t)a3;
- (id)posterSwitcherPresentationStatus;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (id)succinctDescription;
- (id)visibleHostedEntity;
- (id)visiblePageViewController;
- (int64_t)_passcodePresentationMode;
- (int64_t)backlightLuminance;
- (int64_t)effectiveInterfaceOrientation;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)statusBarStyle;
- (unint64_t)_dateTimeLayoutForPage:(id)a3;
- (unint64_t)_indexOfCameraPage;
- (unint64_t)_indexOfMainPage;
- (unint64_t)_indexOfPageViewControllerForRole:(id)a3;
- (unint64_t)_pageCapabilities;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)visibleNotificationCount;
- (void):(id)a3 withTransition:(int)a4 completion:(id)a5;
- (void)_activateCameraEntity:(id)a3 animated:(BOOL)a4 actions:(id)a5 completion:(id)a6;
- (void)_actuallyUpdateUIForIrisPlaying:(BOOL)a3;
- (void)_addBackgroundContentOccludingViewsForAppearance:(id)a3;
- (void)_addBackgroundContentViewControllerForAction:(id)a3;
- (void)_addBedtimeGreetingBackgroundView;
- (void)_addOrRemoveBlockedViewIfNecessaryAnimated:(BOOL)a3;
- (void)_addOrRemoveRemoteContentViewIfNecessaryMaintainingState:(BOOL)a3;
- (void)_addOrRemoveResetRestoreViewIfNecessaryAnimated:(BOOL)a3;
- (void)_addOrRemoveThermalTrapViewIfNecessaryAnimated:(BOOL)a3;
- (void)_addRemoteViewControllerForAction:(id)a3;
- (void)_addStateCaptureHandlers;
- (void)_addVisiblePageViewController:(id)a3;
- (void)_addWhitePointAnimationForKeyPath:(id)a3 onLayer:(id)a4 toValues:(id)a5 withDuration:(double)a6 dispatchGroup:(id)a7;
- (void)_animateAccessory:(id)a3 toVisibleAnimated:(BOOL)a4;
- (void)_animateView:(id)a3 toWhitePointReduced:(BOOL)a4 withDuration:(double)a5 withDispatchGroup:(id)a6;
- (void)_beginAppearanceTransitionForPageViewControllersToVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_calculateAppearanceForCurrentOrientation;
- (void)_cleanupPosterSwitcherPresentationForCompleted:(BOOL)a3 withActivatingTouches:(id)a4;
- (void)_cleanupStaleRemoteContentWithCompletion:(id)a3;
- (void)_clearChargingModalStateIfNecessary;
- (void)_clearChargingModalTimerPerformingHandler:(BOOL)a3;
- (void)_complicationSelected:(id)a3;
- (void)_createStatusBarBackgroundViewIfNeeded;
- (void)_dismissAccessoryViewController:(id)a3 animated:(BOOL)a4;
- (void)_dismissAllModalViewControllersExcept:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_dismissHostingModalsAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissInlineContentOnSignificantScroll;
- (void)_dismissModalViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_dismissModalViewControllersWithIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_dismissPosterSwitcherViewController;
- (void)_dismissRemoteViewControllerForReason:(int64_t)a3 completion:(id)a4;
- (void)_dismissToMainPageFromPageViewController:(id)a3;
- (void)_displayDidDisappearImplementation;
- (void)_displayWillAppearImplementation;
- (void)_displayWillDisappearImplementation;
- (void)_displayWillTurnOnWhileOnCoverSheet:(id)a3;
- (void)_endAppearanceTransitionForPageViewControllersToVisible:(BOOL)a3;
- (void)_finishFadeInAnimationForPowerSource:(int)a3 connectedToPower:(BOOL)a4 screenOn:(BOOL)a5;
- (void)_handleAddedAction;
- (void)_handleDismissalForAccessoryViewController:(id)a3 animated:(BOOL)a4;
- (void)_handlePosterSwitcherActivation:(id)a3;
- (void)_handleQuickNoteLaunch:(id)a3;
- (void)_invalidateStatusBarAssertions;
- (void)_listenForDisplayLayoutChanges:(BOOL)a3;
- (void)_loadViewsForRestrictedPagesIfPossible;
- (void)_managedConfigurationEffectiveSettingsDidChange:(id)a3;
- (void)_migrateNotificationsToHistory;
- (void)_overrideNotificationDisplayStyleForInlineContent;
- (void)_overrideNotificationDisplayStyleWithRemotePreference:(int64_t)a3;
- (void)_performLocalAppearanceUpdatesWithReason:(id)a3 updates:(id)a4;
- (void)_powerStatusChangedToConnectedState:(BOOL)a3;
- (void)_preferredContentSizeDidChange;
- (void)_prepareForPosterSwitcherPresentation;
- (void)_prepareForViewWillAppearIfNecessary;
- (void)_presentInlineViewController:(id)a3;
- (void)_presentModalViewController:(id)a3 shouldDismissOverlays:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_removeAllowedPageViewController:(id)a3;
- (void)_removeBackgroundContentOccludingViewsForAppearance:(id)a3;
- (void)_removeBackgroundContentViewController;
- (void)_removeBedtimeGreetingBackgroundViewAnimated:(BOOL)a3;
- (void)_scrollPanGestureBegan:(id)a3;
- (void)_scrollPanGestureChanged:(id)a3;
- (void)_scrollPanGestureEnded:(id)a3;
- (void)_sendAuthenticationChangedEvent;
- (void)_setAppearanceForLandscape:(BOOL)a3;
- (void)_setDidDismissSinceScreenOn:(BOOL)a3;
- (void)_setDismissed:(BOOL)a3;
- (void)_setFakeStatusBarEnabled:(BOOL)a3;
- (void)_setHasContentAboveCoverSheet:(BOOL)a3 opaque:(BOOL)a4 isSignificantUserInteraction:(BOOL)a5;
- (void)_setLastSettledPageIndex:(unint64_t)a3;
- (void)_setLockOrientationWhileTransitioning:(BOOL)a3;
- (void)_setMainPageContentViewController:(id)a3;
- (void)_setModalPresentationControllerVisibility:(BOOL)a3 cancelTouches:(BOOL)a4;
- (void)_setPageViewControllers:(id)a3;
- (void)_setSuppressChargingUIForAmbient:(BOOL)a3;
- (void)_setupBackgroundContentGestureRecognizer;
- (void)_setupComplicationSelectionGestureRecognizer;
- (void)_setupPosterSwitcherGestureRecognizer;
- (void)_setupQuickNoteGestureRecognizer;
- (void)_setupSearchGesture;
- (void)_setupWallpaperGesture;
- (void)_showChargingSubtitleWithTimeout:(double)a3;
- (void)_startFadeInAnimationForSource:(int64_t)a3;
- (void)_transitionAccessoryChargingViewToVisible:(BOOL)a3;
- (void)_transitionAccessoryViewToVisible:(BOOL)a3 accessory:(id)a4 animated:(BOOL)a5;
- (void)_transitionChargingDateSubtitleToVisible:(BOOL)a3 animated:(BOOL)a4 force:(BOOL)a5;
- (void)_transitionChargingViewToVisible:(BOOL)a3 suppressedByPack:(BOOL)a4 showBattery:(BOOL)a5 animated:(BOOL)a6;
- (void)_transitionTimerViewToVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateAccessibilityContentSizesIfNeeded;
- (void)_updateAccessoryAnimationPresenting:(BOOL)a3 userInteractionDisabled:(BOOL)a4;
- (void)_updateActiveAppearanceForReason:(id)a3;
- (void)_updateActiveBehaviorsForReason:(id)a3 updatingAppearanceIfNeeded:(BOOL)a4;
- (void)_updateAppearance:(id)a3 forComponentType:(int64_t)a4 shouldHide:(BOOL)a5;
- (void)_updateAppearanceForAODTransitionToInactive:(BOOL)a3;
- (void)_updateAppearanceForHavingPosterSwitcherTransition:(BOOL)a3;
- (void)_updateAppearanceForTransitionToOrientation:(int64_t)a3;
- (void)_updateBackground;
- (void)_updateBackgroundContentView;
- (void)_updateBackgroundGlassView;
- (void)_updateCaptureButtonRestriction;
- (void)_updateChargingSubtitleWithString:(id)a3 timeout:(double)a4;
- (void)_updateClockAppearanceForAODTransitionToInactive:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateCoachingString;
- (void)_updateCoachingStringWithTimeout:(double)a3;
- (void)_updateComplicationContainerPosition;
- (void)_updateComplicationSidebar;
- (void)_updateComplicationsContainerView;
- (void)_updateContent;
- (void)_updateControlCenterGrabber;
- (void)_updateDateSubtitleAppearanceForBattery:(BOOL)a3 animated:(BOOL)a4 chargingVisible:(BOOL)a5;
- (void)_updateDateTimeView;
- (void)_updateDimmingLayer;
- (void)_updateFixedFooterView;
- (void)_updateForGlassLegibilitySetting;
- (void)_updateForSensitiveUI;
- (void)_updateForegroundView;
- (void)_updateFullBleedContent;
- (void)_updateGeneralAppearanceForAODTransitionToInactive:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateGlassContentInterfaceStyle;
- (void)_updateHomeAffordance;
- (void)_updateIdleTimerBehavior;
- (void)_updateIdleTimerForTransitionProgress:(double)a3;
- (void)_updateLegibilitySettings;
- (void)_updateLocalAppearanceForPresentation;
- (void)_updateLocalAppearanceForRequester:(id)a3 animationSettings:(id)a4 actions:(id)a5 completion:(id)a6;
- (void)_updateModalContent;
- (void)_updateModalPresentationControllerVisibility:(id)a3;
- (void)_updateNotificationClearingTriggerForEvent:(id)a3;
- (void)_updateNotificationDimmingLayer;
- (void)_updateOverrideDateIfNeeded;
- (void)_updatePageContent;
- (void)_updatePoseidon;
- (void)_updatePosterSwitcherBackgroundView;
- (void)_updatePosterSwitcherComplicationRowHidden;
- (void)_updatePosterSwitcherPresentationWithProgress:(double)a3;
- (void)_updateProudLockView;
- (void)_updateProudLockViewUpdateSuspension;
- (void)_updateQuickActions;
- (void)_updateRemoteContentInlineHorizontalMargin;
- (void)_updateRemoteInlineContentView;
- (void)_updateRestrictedBehavior;
- (void)_updateScrollingBehavior;
- (void)_updateStatusBar;
- (void)_updateStatusBarBackground;
- (void)_updateStatusBarGradient;
- (void)_updateTintingView;
- (void)_updateUIForPlaying:(BOOL)a3 immediately:(BOOL)a4;
- (void)_updateVibrancy;
- (void)_updateVisibilityForPageViewControllersWithVisiblePageViewController:(id)a3;
- (void)_updateWallpaper;
- (void)_updateWallpaperEffectView;
- (void)_updateWallpaperFloatingLayerContainerView;
- (void)_updateWhitePoint;
- (void)_validateAndUpdateInlineComplication;
- (void)accessoryAnimationStatusChanged:(BOOL)a3;
- (void)accessoryAttached:(id)a3;
- (void)accessoryDetached:(id)a3;
- (void)actionManager:(id)a3 addedAction:(id)a4;
- (void)actionManager:(id)a3 removedAction:(id)a4;
- (void)activateCameraWithHostableEntity:(id)a3 animated:(BOOL)a4 sendingActions:(id)a5 completion:(id)a6;
- (void)activateMainPageWithCompletion:(id)a3;
- (void)activateOverlayWithViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)activatePage:(unint64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)activateTodayViewWithCompletion:(id)a3;
- (void)activityItemsMayHaveChanged;
- (void)addCoverSheetObserver:(id)a3;
- (void)addRemoteContentInlineProvidingManager:(id)a3;
- (void)ambientPresentationController:(id)a3 didUpdatePresented:(BOOL)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)backgroundContentActionManager:(id)a3 addedAction:(id)a4;
- (void)backgroundContentActionManager:(id)a3 removedAction:(id)a4;
- (void)cleanupInterstitialPresentationToPresented:(BOOL)a3 inPlace:(BOOL)a4;
- (void)cleanupInterstitialWhileOffScreen;
- (void)combinedListViewController:(id)a3 didChangeVisibleBreakthroughContent:(BOOL)a4;
- (void)combinedListViewController:(id)a3 didUpdateVisibleNotificationCount:(unint64_t)a4;
- (void)combinedListViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:(id)a3;
- (void)connectedDevicesDidChange:(id)a3;
- (void)contentRequestCancellingGesture;
- (void)controllerWillCancelHorizontalScrolling:(id)a3;
- (void)coverSheetNotificationClearingTriggerDidFire:(id)a3;
- (void)createHomeButtonShowPasscodeRecognizerForHomeButtonPress;
- (void)deactivateTodayViewWithCompletion:(id)a3;
- (void)dealloc;
- (void)didAddNewActivityItemSceneHostEnvironment;
- (void)didPostNotificationRequest:(id)a3;
- (void)dismissHomeScreenOverlay;
- (void)dismissHostedAppsAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissInterstitialPresentationAnimated:(BOOL)a3;
- (void)dismissOverlays:(unint64_t)a3 animated:(BOOL)a4;
- (void)endCoverSheetTransition;
- (void)externalAppearanceProviderBehaviorChanged:(id)a3;
- (void)externalBehaviorProviderBehaviorChanged:(id)a3;
- (void)externalLockProviderStateChanged:(id)a3;
- (void)externalPresentationProviderPresentationChanged:(id)a3;
- (void)fillRestToOpenWithDuration:(double)a3;
- (void)finishUIUnlockFromSource:(int)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)handleAction:(id)a3 fromSender:(id)a4;
- (void)handleBiometricEvent:(unint64_t)a3;
- (void)handleReachabilityAnimationDidEnd;
- (void)handleReachabilityAnimationWillBegin;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)a3;
- (void)idleTimerDidExpire;
- (void)idleTimerDidRefresh;
- (void)idleTimerDidWarn;
- (void)idleTimerWillRefresh;
- (void)irisWallpaperPlayer:(id)a3 didReplaceGestureRecognizer:(id)a4 withGestureRecognizer:(id)a5;
- (void)irisWallpaperPlayerIsInteractingDidChange:(id)a3;
- (void)irisWallpaperPlayerPlaybackStateDidChange:(id)a3;
- (void)isUnlockDisabled;
- (void)jiggleLockIcon;
- (void)loadView;
- (void)noteDeviceBlockedStatusUpdated;
- (void)noteWillPresentForUserGesture;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3;
- (void)overlayControllerRequestsDismissal:(id)a3;
- (void)passcodeViewControllerDidCancelPasscodeEntry:(id)a3;
- (void)performInterstitialPresentationAnimated:(BOOL)a3;
- (void)phoneUnlockWithVisionController:(id)a3 attemptFailedWithError:(id)a4;
- (void)phoneUnlockWithVisionControllerAttemptSucceeded:(id)a3;
- (void)phoneUnlockWithWatchControllerAttemptFailed:(id)a3 withError:(id)a4;
- (void)phoneUnlockWithWatchControllerAttemptSucceeded:(id)a3;
- (void)postNotificationRequest:(id)a3;
- (void)posterSwitcherActivationManager:(id)a3 didChangeToCoachingText:(id)a4;
- (void)prepareForInterstitialPresentation;
- (void)prepareForTransitionToPresented:(BOOL)a3 reversingTransition:(BOOL)a4 forUserGesture:(BOOL)a5;
- (void)presentModalViewController:(id)a3 fromRect:(CGRect)a4 inView:(id)a5 animated:(BOOL)a6;
- (void)presentModalViewController:(id)a3 withTransition:(int)a4;
- (void)presentOrDismissCoverSheetSpotlightAnimated:(BOOL)a3;
- (void)presentationViewController:(id)a3 didTransitionViewController:(id)a4 toPresented:(BOOL)a5;
- (void)proudLockDidChangeToCoachingText:(id)a3;
- (void)publisher:(id)a3 didUpdateLayout:(id)a4 withTransition:(id)a5;
- (void)registerExternalAppearanceProvider:(id)a3;
- (void)registerExternalBehaviorProvider:(id)a3;
- (void)registerExternalPresentationProvider:(id)a3;
- (void)remoteContentDidUpdateStyle;
- (void)remoteContentSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)removeCoverSheetObserver:(id)a3;
- (void)removeRemoteContentInlineProvidingManager:(id)a3;
- (void)requestIdleTimerResetForPoster;
- (void)resetMainPageContentOffset;
- (void)resetRestToOpen;
- (void)respondToUIUnlockFromSource:(int)a3;
- (void)screenSleepCompletedForSource:(int)a3;
- (void)scrollPanGestureDidUpdate:(id)a3;
- (void)scrollablePageViewController:(id)a3 scrollViewDidScroll:(id)a4;
- (void)scrollablePageViewController:(id)a3 scrollViewWillBeginDragging:(id)a4;
- (void)scrollablePageViewController:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5;
- (void)searchGesture:(id)a3 changedPercentComplete:(double)a4;
- (void)searchGesture:(id)a3 completedShowing:(BOOL)a4;
- (void)searchGesture:(id)a3 endedGesture:(BOOL)a4;
- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4;
- (void)setAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a3;
- (void)setAuthenticated:(BOOL)a3;
- (void)setBacklightLevel:(double)a3;
- (void)setCameraPrewarmer:(id)a3;
- (void)setComplicationContainerUsesBottomPosition:(BOOL)a3;
- (void)setCoverSheetIsVisible:(BOOL)a3;
- (void)setCurrentTransitionSource:(id)a3;
- (void)setEffectiveInterfaceOrientationOverride:(int64_t)a3;
- (void)setEffectiveVibrancyConfiguration:(id)a3;
- (void)setHidesDimmingLayer:(BOOL)a3;
- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5;
- (void)setInterstitialTransitionSource:(id)a3;
- (void)setIrisWallpaperPlayer:(id)a3;
- (void)setLayoutStrategy:(id)a3;
- (void)setPartiallyOnScreen:(BOOL)a3;
- (void)setPasscodeLockVisible:(BOOL)a3 animated:(BOOL)a4 showBackground:(BOOL)a5 forceBiometricPresentation:(BOOL)a6 completion:(id)a7;
- (void)setPosterPreferredSalientContentRectangle:(CGRect)a3;
- (void)setPosterSwitcherTransitionSource:(id)a3;
- (void)setPosterSwitcherViewController:(id)a3;
- (void)setRestrictsTouchesForRemoteView:(BOOL)a3;
- (void)setScale:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5;
- (void)setSearchGesture:(id)a3;
- (void)setShowingMediaControls:(BOOL)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)setVibrancyConfigurationOverride:(id)a3;
- (void)setWallpaperColorProvider:(id)a3;
- (void)setWallpaperGestureRecognizer:(id)a3;
- (void)setYContentOffset:(double)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)spotlightPresenter:(id)a3 dismissDismissableModalViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)spotlightPresenter:(id)a3 presentDismissableModalViewController:(id)a4 completion:(id)a5;
- (void)spotlightPresenterAddContentView:(id)a3;
- (void)spotlightPresenterDidDismissSearch:(id)a3;
- (void)spotlightPresenterDidPresentSearch:(id)a3;
- (void)spotlightPresenterRemoveContentView:(id)a3;
- (void)startLockScreenFadeInAnimationForSource:(int)a3;
- (void)startRestToOpenCoachingWithCompletion:(id)a3;
- (void)timerControllerDidStartTimer:(id)a3;
- (void)timerControllerDidStopTimer:(id)a3;
- (void)timerControllerDidUpdateTimer:(id)a3;
- (void)transitionSource:(id)a3 didEndWithContext:(id *)a4;
- (void)transitionSource:(id)a3 didUpdateTransitionWithContext:(id *)a4;
- (void)transitionSource:(id)a3 willBeginWithType:(int64_t)a4;
- (void)unregisterExternalAppearanceProvider:(id)a3;
- (void)unregisterExternalBehaviorProvider:(id)a3;
- (void)unregisterExternalPresentationProvider:(id)a3;
- (void)updateAppearanceForController:(id)a3;
- (void)updateAppearanceForController:(id)a3 withAnimationSettings:(id)a4 completion:(id)a5;
- (void)updateBackgroundGlassEffectForDraggingProgress:(double)a3 usingGlassEffects:(BOOL)a4;
- (void)updateBehaviorForController:(id)a3;
- (void)updateCoverSheetDraggingProgress:(double)a3 forPresentationValue:(BOOL)a4;
- (void)updateCoverSheetTransitionProgress:(double)a3;
- (void)updateFloatingLayerOrdering;
- (void)updateFont:(id)a3 preferredTimeMaxYPortrait:(double)a4 preferredTimeMaxYLandscape:(double)a5 vibrancyConfiguration:(id)a6 numberingSystem:(id)a7 contentStyle:(id)a8;
- (void)updateInterstitialPresentationWithProgress:(double)a3;
- (void)updateNotificationRequest:(id)a3;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4;
- (void)updateQuickActionsVisibility;
- (void)updateScaleViewWithScale:(double)a3 withDuration:(double)a4;
- (void)updateStatusBarForLockScreenComeback;
- (void)updateStatusBarForLockScreenTeardown;
- (void)userPresenceDetectedRecentlyDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wallpaperLegibilityEnvironmentDidChange:(id)a3;
- (void)widgetGridViewControllerDidUpdateComplicationDescriptors;
- (void)withdrawNotificationRequest:(id)a3;
@end

@implementation CSCoverSheetViewController

- (BOOL)isHostingAnApp
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_applicationHosters;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * v7) isHostingAnApp])
        {

          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(CSPresentationViewController *)self->_modalPresentationController isHostingAnApp];
}

- (int64_t)_passcodePresentationMode
{
  if (![(CSCoverSheetViewController *)self isShowingTodayView]&& (![(CSCoverSheetViewController *)self isShowingModalView]|| [(CSCoverSheetViewController *)self isPasscodeLockVisible]))
  {
    return 0;
  }

  if ([(CSCoverSheetViewController *)self _isRemoteContentPresentedInUnlockMode])
  {
    return 2;
  }

  return 1;
}

- (BOOL)isUnlockDisabled
{
  v2 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v2 areRestrictedCapabilities:56];
  if (v3)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewController isUnlockDisabled];
    }
  }

  return v3;
}

- (BOOL)isShowingTodayView
{
  v3 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  v4 = v3;
  if (v3 && ([v3 presentationProgress], v5 > 0.0))
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CSCoverSheetViewController *)self _indexOfTodayPage];
    if ([(CSCoverSheetViewController *)self isTransitioning])
    {
      v8 = v7 == self->_transitionContext.interval.end.value;
    }

    else
    {
      v8 = self->_lastSettledPageIndex == v7;
    }

    v6 = v8;
  }

  return v6;
}

- (BOOL)isShowingModalView
{
  v2 = [(CSCoverSheetViewController *)self modalPresentationController];
  v3 = [v2 isPresentingContent];

  return v3;
}

- (BOOL)externalLockProvidersRequireUnlock
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self delegate];
  v4 = [v3 coverSheetViewControllerIsTransitioningToSecureApp:self];

  if (v4)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_externalLockProviders;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v5 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v5)
        {
          v5 = 1;
        }

        else
        {
          v5 = [*(*(&v12 + 1) + 8 * i) isLocked];
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_passcodeViewController
{
  v3 = +[(CSCoverSheetViewControllerBase *)CSPasscodeViewController];
  v4 = [(CSCoverSheetViewController *)self _presentedModalViewControllerWithIdentifier:v3];

  return v4;
}

- (BOOL)isPasscodeLockVisible
{
  v3 = +[(CSCoverSheetViewControllerBase *)CSPasscodeViewController];
  LOBYTE(self) = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v3];

  return self;
}

- (CSCoverSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)supportedInterfaceOrientations
{
  v4 = [(CSCoverSheetViewController *)self delegate];
  v5 = [v4 coverSheetViewControllerTraitsArbiterOrientationActuationEnabled:self];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained coverSheetViewControllerShouldPreserveOrientationForExternalTransition:self])
    {
LABEL_3:
      v7 = [(CSCoverSheetViewController *)self coverSheetView];
      v8 = [v7 window];
      [v8 interfaceOrientation];
      v9 = XBInterfaceOrientationMaskForInterfaceOrientation();

LABEL_4:
      return v9;
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2 && ![WeakRetained coverSheetViewControllerHasBeenDismissedSinceKeybagLock:self])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = [MEMORY[0x277D75418] currentDevice];
      if ([v15 userInterfaceIdiom] == 1)
      {
      }

      else
      {
        v2 = [WeakRetained coverSheetViewControllerHasBeenDismissedSinceKeybagLock:self];

        if ((v2 & 1) == 0)
        {
LABEL_28:
          v9 = 2;
          goto LABEL_4;
        }
      }
    }

    v16 = __sb__runningInSpringBoard();
    v17 = v16;
    if (v16)
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      if ([v2 userInterfaceIdiom] == 1)
      {

        goto LABEL_30;
      }
    }

    v18 = [(CSCoverSheetViewController *)self coverSheetView];
    v19 = [v18 window];

    if (v17)
    {
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    else
    {

      if (!v19)
      {
        goto LABEL_39;
      }
    }

LABEL_30:
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2 && ![(CSCoverSheetViewController *)self dismissed])
      {
        goto LABEL_3;
      }
    }

    else
    {
      v20 = [MEMORY[0x277D75418] currentDevice];
      if ([v20 userInterfaceIdiom] == 1)
      {
      }

      else
      {
        v21 = [(CSCoverSheetViewController *)self dismissed];

        if (!v21)
        {
          goto LABEL_3;
        }
      }
    }

    if ([(CSCoverSheetViewController *)self partiallyOnScreen]|| [(CSCoverSheetViewController *)self lockOrientationWhileTransitioning])
    {
      goto LABEL_3;
    }

LABEL_39:
    v9 = 30;
    goto LABEL_4;
  }

  [(CSCoverSheetViewController *)self effectiveInterfaceOrientation];
  v9 = XBInterfaceOrientationMaskForInterfaceOrientation();
  if (![(CSCoverSheetViewController *)self shouldAutorotate])
  {
    return v9;
  }

  if (!-[CSCoverSheetViewController isHostingAnApp](self, "isHostingAnApp") || (-[CSCoverSheetViewController hostedAppSceneHandle](self, "hostedAppSceneHandle"), v10 = objc_claimAutoreleasedReturnValue(), [v10 sceneIfExists], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "uiSettings"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "deviceOrientationEventsEnabled"), v12, v11, v10, !v13))
  {
    v22.receiver = self;
    v22.super_class = CSCoverSheetViewController;
    return [(CSCoverSheetViewController *)&v22 supportedInterfaceOrientations];
  }

  [*MEMORY[0x277D76620] activeInterfaceOrientation];

  return XBInterfaceOrientationMaskForInterfaceOrientation();
}

- (void)idleTimerWillRefresh
{
  v3 = [CSEvent eventWithType:17];
  [(CSCoverSheetViewController *)self _handleEvent:v3];
}

- (BOOL)_isPresentingPosterSwitcher
{
  v2 = [(CSCoverSheetViewController *)self posterSwitcherViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldModifyPageScrolling
{
  v2 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v2 scrollingStrategy] != 2;

  return v3;
}

- (CSPresentation)externalPresentation
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(CSCoverSheetViewController *)self isViewLoaded])
  {
    v3 = [(CSCoverSheetViewController *)self view];
    v4 = [v3 window];
    v5 = [CSPresentation presentationWithCoordinateSpace:v4];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_externalPresentationProviders;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(CSCoverSheetViewController *)self _presentationForParticipant:*(*(&v13 + 1) + 8 * i), v13];
          [v5 unionPresentation:v11];
        }

        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateScrollingBehavior
{
  hasContentAboveCoverSheet = self->_hasContentAboveCoverSheet;
  v4 = [(CSCoverSheetViewController *)self localBehavior];
  v5 = [v4 scrollingStrategy];

  if (v5 != hasContentAboveCoverSheet)
  {
    v6 = [(CSCoverSheetViewController *)self localBehavior];
    [v6 setScrollingStrategy:hasContentAboveCoverSheet];
  }
}

- (BOOL)_showingAccessoryView
{
  if (self->_accessoryViewController)
  {
    v3 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
    v4 = ([v3 containsObject:self->_accessoryViewController] & 1) != 0 || self->_accessoryViewPresentationDelayed;
  }

  else
  {
    return 0;
  }

  return v4;
}

- (unint64_t)_indexOfMainPage
{
  v3 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v4 = [(CSCoverSheetViewController *)self mainPageContentViewController];
  v5 = [v3 indexOfObject:v4];

  return v5;
}

- (id)_whitePointValues
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [(CSCoverSheetViewController *)self _whitePointValuesForAppearance:v3];

  return v4;
}

- (void)_updateRestrictedBehavior
{
  screenOffBehavior = self->_screenOffBehavior;
  if (self->_screenOffMode)
  {
    v4 = 0x2000000;
  }

  else
  {
    v4 = 0;
  }

  [(CSBehavior *)screenOffBehavior setRestrictedCapabilities:v4];
  if (self->_hasContentAboveCoverSheet && !self->_contentAboveIsSiriOrNotFullScreenOniPad)
  {
    [(CSBehavior *)self->_localBehavior setNotificationBehavior:2];
  }

  else
  {
    [(CSBehavior *)self->_localBehavior setNotificationBehavior:0];
    if (![(CSCoverSheetViewController *)self _showingAccessoryView])
    {
      [(CSCoverSheetViewController *)self _updateAccessoryAnimationPresenting:0 userInteractionDisabled:0];
    }
  }

  v5 = [(CSCoverSheetViewController *)self currentTransitionSource];

  localBehavior = self->_localBehavior;
  if (v5)
  {
    [(CSBehavior *)localBehavior addRestrictedCapabilities:4096];
  }

  else
  {
    [(CSBehavior *)localBehavior removeRestrictedCapabilities:4096];
  }

  if ([MEMORY[0x277D3E928] supportsPosterCustomization])
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x800000;
  }

  posterBoardBehavior = self->_posterBoardBehavior;

  [(CSBehavior *)posterBoardBehavior setRestrictedCapabilities:v7];
}

- (void)_updateIdleTimerBehavior
{
  v3 = [(CSCoverSheetViewController *)self localBehavior];
  v5 = v3;
  if (self->_contentAboveIsSiriOrNotFullScreenOniPad)
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  [v3 setIdleTimerDuration:v4];
}

- ($453422EBA70013024ECC637D52E1FF2D)transitionContext
{
  v3 = *&self[24].var1.var1.var1;
  *&retstr->var0 = *&self[24].var1.var0.var1;
  *&retstr->var1.var0.var1 = v3;
  *&retstr->var1.var1.var1 = *&self[25].var0;
  return self;
}

void __46__CSCoverSheetViewController__updateStatusBar__block_invoke_2(uint64_t a1)
{
  v2 = [*MEMORY[0x277D76620] statusBar];
  [v2 alpha];
  IsZero = BSFloatIsZero();

  if ((IsZero & 1) == 0)
  {
    v6 = [*(a1 + 32) view];
    v4 = [v6 window];
    v5 = [v4 rootViewController];
    [v5 _updateContentOverlayInsetsFromParentIfNecessary];
  }
}

uint64_t __46__CSCoverSheetViewController__updateStatusBar__block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_updatePageContent
{
  v7 = [(CSCoverSheetViewController *)self coverSheetView];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:4 identifier:@"(active)"];
  v5 = [v7 scrollView];
  [v4 alpha];
  [v5 setAlpha:?];

  v6 = [v7 scrollView];
  [v4 flag];
  [v6 setBouncesHorizontally:BSSettingFlagIsExplicitNo() ^ 1];
}

- (void)_updateHomeAffordance
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:12 identifier:@"(active)"];
  v5 = [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController homeAffordanceViewController];
  v6 = [v5 homeAffordanceView];
  [v6 setStyle:{objc_msgSend(v4, "viewStyle")}];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__CSCoverSheetViewController__updateHomeAffordance__block_invoke;
  v32[3] = &unk_27838B838;
  v7 = v4;
  v33 = v7;
  v34 = self;
  v8 = MEMORY[0x223D698D0](v32);
  [v7 suppressTeachableMomentsAnimation];
  [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController setAnimationState:BSSettingFlagIsYes() ^ 1];
  [v7 alpha];
  v10 = v9;
  [v6 alpha];
  IsZero = BSFloatIsZero();
  v12 = [v7 isHidden];
  if ([(CSCoverSheetViewController *)self _appearState]== 2)
  {
    v13 = BSFloatIsOne() & (v12 ^ 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(CSCoverSheetContextProviding *)self->_coverSheetContext assistantController];
  v15 = [v14 isHomeAffordanceDoubleTapGestureEnabled];

  [v5 setHomeAffordanceInteractionEnabled:v13 & v15];
  [v6 setSystemPointerInteractionEnabled:v13];
  if (IsZero != v12)
  {
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v36 = IsZero ^ 1;
      v37 = 1024;
      v38 = v12 ^ 1;
      _os_log_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEFAULT, "DashBoard home affordance transitioning from visible: %{BOOL}d to visible:%{BOOL}d", buf, 0xEu);
    }
  }

  if (!(v12 & 1 | ((IsZero & 1) == 0)))
  {
    v17 = [MEMORY[0x277D65E80] rootSettings];
    v18 = [v17 unhideForHomeGestureOwnershipAnimationSettings];
    v19 = [v18 BSAnimationSettings];

    v20 = MEMORY[0x277CF0D38];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __51__CSCoverSheetViewController__updateHomeAffordance__block_invoke_703;
    v28[3] = &unk_27838C328;
    v29 = v6;
    v31 = v10;
    v30 = v8;
    [v20 animateWithSettings:v19 actions:v28 completion:0];

    v21 = v29;
LABEL_13:

    goto LABEL_14;
  }

  if (!(IsZero & 1 | ((v12 & 1) == 0)))
  {
    v17 = [MEMORY[0x277D65E80] rootSettings];
    v22 = [v17 hideForHomeGestureOwnershipAnimationSettings];
    v19 = [v22 BSAnimationSettings];

    v23 = MEMORY[0x277CF0D38];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__CSCoverSheetViewController__updateHomeAffordance__block_invoke_2;
    v24[3] = &unk_27838C328;
    v25 = v6;
    v27 = v10;
    v26 = v8;
    [v23 animateWithSettings:v19 actions:v24 completion:0];

    v21 = v25;
    goto LABEL_13;
  }

  [v6 setAlpha:v10];
  v8[2](v8);
LABEL_14:
}

- (void)_updateBackground
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  if (v3)
  {
    v4 = [(CSCoverSheetViewController *)self coverSheetView];
    v5 = [v4 backgroundView];

    v6 = [(CSCoverSheetViewController *)self _averageLockScreenWallpaperColor];
    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    [v7 setReduceTransparencyBackingColor:v6];

    [v5 setReduceTransparencyBackingColor:v6];
    v8 = [v3 componentForType:19 identifier:@"(active)"];
    v9 = [v8 value];
    v10 = [v9 integerValue];

    if ([(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource isTransitioning])
    {
      [v5 beginTransitionToBackgroundStyle:v10];
      [v8 transitionProgress];
      v12 = v11;
      [v5 updateBackgroundStyleTransitionProgress:?];
      if ((v10 == 7) == ([v5 backgroundStyle] == 7))
      {
LABEL_10:
        v15 = [v8 color];
        [v5 setBackgroundColor:v15];

        goto LABEL_11;
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __47__CSCoverSheetViewController__updateBackground__block_invoke;
      v16[3] = &__block_descriptor_33_e8_d16__0d8l;
      v17 = v10 == 7;
      v13 = MEMORY[0x223D698D0](v16);
      v14 = [v5 backdropView];
      v13[2](v13, v12);
      [v14 setAlpha:?];
    }

    else
    {
      if ([v5 isTransitioningBackgroundStyle])
      {
        [v5 completeTransitionToBackgroundStyle:v10];
      }

      else
      {
        [v5 setBackgroundStyle:v10];
      }

      v13 = [v5 backdropView];
      [v13 setAlpha:1.0];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)_averageLockScreenWallpaperColor
{
  v3 = [(CSCoverSheetViewController *)self wallpaperLegibilityEnvironment];
  v4 = [v3 legibilityEnvironmentContextForVariant:*MEMORY[0x277D3EF20]];
  v5 = [v4 averageColor];

  if (v5)
  {
    v6 = v5;
LABEL_3:
    v7 = v6;
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);
  v7 = [WeakRetained averageColorForCurrentWallpaper];

  if (!v7)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_3;
  }

LABEL_5:

  return v7;
}

- (void)_updateBackgroundContentView
{
  v8 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v8 componentForType:24 identifier:@"(active)"];
  if (v3)
  {
    v4 = [(CSCoverSheetViewController *)self coverSheetView];
    [v3 alpha];
    [v4 setBackgroundContentViewAlpha:?];

    v5 = [(CSCoverSheetViewController *)self coverSheetView];
    [v5 setBackgroundContentPresentationLevel:{objc_msgSend(v3, "level")}];

    [v3 flag];
    IsYes = BSSettingFlagIsYes();
    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    [v7 setBackgroundContentViewDimmed:IsYes];
  }
}

- (void)_updateComplicationsContainerView
{
  v14 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v14 componentForType:20 identifier:@"(active)"];
  if (v3)
  {
    v4 = [(CSCoverSheetViewController *)self complicationContainerViewController];

    if (v4)
    {
      v5 = [v3 isHidden] ? 0.0 : 1.0;
      v6 = [(CSCoverSheetViewController *)self complicationContainerViewController];
      v7 = [v6 view];
      [v7 alpha];
      IsZero = BSFloatIsZero();

      v9 = [(CSCoverSheetViewController *)self complicationContainerViewController];
      v10 = [v9 view];
      [v10 setAlpha:v5];

      v11 = [(CSCoverSheetViewController *)self coverSheetView];
      [v3 scale];
      [v11 setComplicationContainerViewScale:?];

      if (IsZero != [v3 isHidden])
      {
        v12 = [(CSCoverSheetViewController *)self mainPageContentViewController];
        v13 = [v12 combinedListViewController];
        [v13 layoutListView];

        [(CSCoverSheetViewController *)self _updateComplicationContainerPosition];
      }
    }
  }

  [(CSCoverSheetViewController *)self _updatePosterSwitcherComplicationRowHidden];
}

- (void)_updatePosterSwitcherComplicationRowHidden
{
  v3 = [(CSCoverSheetViewController *)self posterSwitcherViewController];
  if (v3)
  {
    v9 = v3;
    v4 = [(CSCoverSheetViewController *)self localAppearance];
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) < 2)
    {
      v7 = 25;
    }

    else
    {
      v7 = 20;
    }

    v8 = [v4 componentForType:v7 property:1];
    [v9 setCoverSheetComplicationRowHidden:{objc_msgSend(v8, "isHidden")}];

    v3 = v9;
  }
}

- (void)_updateComplicationSidebar
{
  v13 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v13 componentForType:25 identifier:@"(active)"];
  if (v3)
  {
    v4 = [(CSCoverSheetViewController *)self sidebarComplicationContainerViewController];

    if (v4)
    {
      [v3 alpha];
      v6 = v5;
      v7 = [(CSCoverSheetViewController *)self sidebarComplicationContainerViewController];
      v8 = [v7 view];
      [v8 setAlpha:v6];
    }
  }

  v9 = [(CSWidgetGridViewController *)self->_sidebarComplicationContainerViewController containsIconsInRow:0];
  v10 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  [v10 updateContainsFirstRowIcons:v9];

  v11 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  v12 = [(CSWidgetGridViewController *)self->_sidebarComplicationContainerViewController view];
  [v12 frame];
  [v11 updateSidebarComplicationFrame:?];
}

- (void)_updateForegroundView
{
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:5 property:2];

  [v4 offset];
  [v5 setForegroundViewPositionOffset:?];
}

- (void)_updateFullBleedContent
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  [v3 flagForComponentType:26];
  IsYes = BSSettingFlagIsYes();

  v6 = [(CSCoverSheetViewController *)self coverSheetView];
  [v6 setClipsToBounds:IsYes ^ 1u];
  v5 = [v6 window];
  [v5 setClipsToBounds:IsYes ^ 1u];
}

- (void)_updateVibrancy
{
  v3 = [(CSCoverSheetViewController *)self vibrancyConfigurationOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CSCoverSheetViewController *)self vibrancyConfiguration];
  }

  v25 = v5;

  v6 = [(CSCoverSheetViewController *)self effectiveVibrancyConfiguration];
  v7 = [(CSCoverSheetViewController *)self activeAppearance];
  v8 = [v7 componentForType:19 identifier:@"(active)"];

  if ([v25 backgroundType] == 1)
  {
    if (v8)
    {
      v9 = [v8 value];
      IsDarkAffectingLegibility = CSBackgroundStyleIsDarkAffectingLegibility([v9 integerValue]);

      if (IsDarkAffectingLegibility)
      {
        v11 = [v25 copyWithWithBackgroundType:0];

        v25 = v11;
      }
    }
  }

  v12 = [(CSCoverSheetViewController *)self traitCollection];
  v13 = [v12 _backlightLuminance];

  if (v13 == 1)
  {
    v14 = [v25 cs_adjustedForReducedBacklight];

    v15 = v14;
  }

  else
  {
    v15 = v25;
  }

  v26 = v15;
  if ((BSEqualObjects() & 1) != 0 || ![(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource isTransitioning])
  {
    v24 = v26;
  }

  else
  {
    [v8 transitionProgress];
    v17 = v16;
    v18 = objc_alloc(MEMORY[0x277CF0D90]);
    v19 = [v6 effectType];
    v20 = [v6 backgroundType];
    v21 = [v6 color];
    v22 = [v6 groupName];
    v23 = [v26 alternativeVibrancyEffectLUT];
    v24 = [v18 initWithEffectType:v19 backgroundType:v20 color:v21 groupName:v22 blendConfiguration:v26 blendAmount:v23 alternativeVibrancyEffectLUT:v17];
  }

  [(CSCoverSheetViewController *)self setEffectiveVibrancyConfiguration:v24];
}

- (void)_updateLegibilitySettings
{
  v5 = [(CSAppearance *)self->_activeAppearance legibilitySettings];
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 setLegibilitySettings:v5];

  [(SBFLockScreenDateViewController *)self->_dateViewController setLegibilitySettings:v5];
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
  [WeakRetained setLegibilitySettings:v5];
}

- (void)_updateWallpaperEffectView
{
  v22 = [(CSCoverSheetContextProviding *)self->_coverSheetContext wallpaperProvider];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:6 identifier:@"(active)"];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && ([v8 isHidden] & 1) == 0)
  {
    v11 = [(CSCoverSheetViewController *)self coverSheetView];
    v12 = [v11 wallpaperEffectView];

    if (!v12)
    {
      v13 = [v22 createCoverSheetWallpaperView];
      v14 = [(CSCoverSheetViewController *)self suspendWallpaperAnimationAssertion];
      [v14 invalidate];

      v15 = [(CSCoverSheetViewController *)self coverSheetIdentifier];
      v16 = [v22 suspendWallpaperAnimationForReason:v15];
      [(CSCoverSheetViewController *)self setSuspendWallpaperAnimationAssertion:v16];

      v17 = [(CSCoverSheetViewController *)self coverSheetView];
      [v17 setWallpaperEffectView:v13];
    }

    if ([v8 shouldMatchBackgroundStyle])
    {
      v18 = [(CSCoverSheetViewController *)self coverSheetView];
      v19 = [v18 backgroundView];
      v20 = [v19 backgroundStyle];
    }

    else
    {
      v20 = 1;
    }

    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    v21 = [v10 wallpaperEffectView];
    [v21 setBackgroundStyle:v20];
  }

  else
  {
    v9 = [(CSCoverSheetViewController *)self suspendWallpaperAnimationAssertion];
    [v9 invalidate];

    [(CSCoverSheetViewController *)self setSuspendWallpaperAnimationAssertion:0];
    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    [v10 setWallpaperEffectView:0];
  }
}

- (void)_updateWallpaperFloatingLayerContainerView
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:23 identifier:@"(active)"];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if ([v8 shouldRenderInline])
  {
    v9 = [v8 shouldRenderForPosterSwitcher] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CSCoverSheetViewController *)self _appearState];
  floatingLayerView = self->_floatingLayerView;
  if (!v10 || (v9 & 1) != 0)
  {
    if (floatingLayerView)
    {
      [(BSInvalidatable *)floatingLayerView invalidate];
      [(BSInvalidatable *)self->_floatingLayerView removeFromSuperview];
      v13 = self->_floatingLayerView;
      self->_floatingLayerView = 0;
    }
  }

  else if (!floatingLayerView)
  {
    v12 = CSFeatureEnabled(12);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__CSCoverSheetViewController__updateWallpaperFloatingLayerContainerView__block_invoke;
    v22[3] = &unk_27838BC70;
    v22[4] = self;
    v23 = v12;
    [MEMORY[0x277D75D18] performWithoutAnimation:v22];
  }

  if (self->_floatingLayerView)
  {
    -[BSInvalidatable setShouldMatchWallpaperPosition:](self->_floatingLayerView, "setShouldMatchWallpaperPosition:", [v8 shouldMatchMove]);
  }

  if (CSFeatureEnabled(12))
  {
    v14 = self->_floatingLayerView;
    [v8 alpha];
    [(BSInvalidatable *)v14 setAlpha:?];
  }

  v15 = [(CSCoverSheetViewController *)self posterSwitcherViewController];
  [v15 setCoverSheetWallpaperFloatingLayerInlined:{objc_msgSend(v8, "shouldRenderInline")}];

  v16 = [(CSCoverSheetViewController *)self coverSheetView];
  [v8 offset];
  v18 = v17;
  v20 = v19;
  [v8 scale];
  [v16 setWallpaperFloatingLayerContainerViewOffset:v18 scale:{v20, v21}];
  [v16 setWallpaperFloatingLayerPresentationLevel:{objc_msgSend(v8, "level")}];
  [v16 setDateTimePresentationLevel:{objc_msgSend(v8, "level")}];
}

- (void)_updateTintingView
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v8 = [v3 componentForType:7 property:1];

  v4 = [(CSCoverSheetViewController *)self coverSheetView];
  v5 = [v4 tintingView];

  if (v8 && ([v8 isHidden] & 1) == 0)
  {
    [v8 alpha];
    v7 = v6;
    [v5 setHidden:0];
    [v5 setAlpha:v7];
  }

  else
  {
    [v5 setHidden:1];
  }
}

- (void)_updateStatusBarBackground
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:2 identifier:@"(active)"];

  v5 = [(CSCoverSheetViewController *)self activeAppearance];
  v6 = [v5 componentForType:8 identifier:@"(active)"];

  v7 = [v4 isHidden];
  [v4 flag];
  if (BSSettingFlagIsYes())
  {
    hasContentAboveCoverSheet = self->_hasContentAboveCoverSheet;
  }

  else
  {
    hasContentAboveCoverSheet = 1;
  }

  v9 = [v6 value];
  v10 = [(CSCoverSheetViewController *)self coverSheetView];
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v10 setStatusBarBackgroundPageAlignment:v11];

  currentTransitionSource = self->_currentTransitionSource;
  if (currentTransitionSource)
  {
    [(CSCoverSheetViewTransitionSource *)currentTransitionSource transitionContext];
  }

  BSIntervalFractionForValue();
  if ([(CSCoverSheetViewController *)self isTransitioning:0]&& (BSFloatIsOne() & 1) == 0)
  {
    v13 = 0.0;
    if ([v6 isHidden])
    {
      goto LABEL_19;
    }
  }

  else
  {
    [v6 flag];
    v13 = 0.0;
    if (!BSSettingFlagIsYes() || ([v6 isHidden] & 1) != 0)
    {
      goto LABEL_19;
    }
  }

  if (!self->_hasContentAboveCoverSheet && (v7 & hasContentAboveCoverSheet & 1) == 0 && ![(CSCoverSheetViewController *)self _isPresentingPosterSwitcher])
  {
    [(CSCoverSheetViewController *)self _createStatusBarBackgroundViewIfNeeded];
    [v6 alpha];
    v13 = v14;
  }

LABEL_19:
  [(UIView *)self->_statusBarBackgroundView setAlpha:v13];
}

- (void)_updateFixedFooterView
{
  v19 = [(CSFixedFooterViewController *)self->_fixedFooterViewController fixedFooterView];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:3 identifier:@"(active)"];
  v5 = [v19 pageControl];
  [v4 alpha];
  [v5 setAlpha:?];

  v6 = [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController teachableMomentsContainerView];
  v7 = [v6 callToActionLabel];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v19 callToActionLabel];
  }

  v10 = v9;

  v11 = [v3 componentForType:9 identifier:@"(active)"];
  [v11 alpha];
  [v10 setAlpha:?];
  v12 = [v3 componentForType:10 identifier:@"(active)"];
  [v12 offset];
  v14 = v13;
  v16 = v15;
  [v12 scale];
  [v19 setStatusTextViewOffset:v14 scale:{v16, v17}];
  v18 = [v19 statusTextView];
  [v12 alpha];
  [v18 setAlpha:?];
}

- (void)_updateProudLockView
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  v4 = [(CSProudLockViewController *)self->_proudLockViewController proudLockView];
  v5 = [(CSCoverSheetViewController *)self activeAppearance];
  v6 = [v5 componentForType:11 identifier:@"(active)"];
  [v6 alpha];
  [v4 setAlpha:?];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 supportsMaterialBackground];
  v12 = objc_opt_class();
  v13 = v4;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 backgroundMaterialView];

  v17 = 0.0;
  if (v11)
  {
    v17 = 1.0;
  }

  [v16 setAlpha:v17];

  finalInterfaceOrientationForInProgressTransition = self->_finalInterfaceOrientationForInProgressTransition;
  if ((finalInterfaceOrientationForInProgressTransition - 1) >= 2)
  {
    v20 = finalInterfaceOrientationForInProgressTransition - 5;
    v19 = v20 < 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 0xFFFFFFFFFFFFFFFDLL && ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) > 1)
    {
      v19 = 1;
    }

    else
    {
      v21 = [(CSProudLockViewController *)self->_proudLockViewController proudLockContainerViewController];
      [v21 proudLockLandscapeOffset];
      v23 = v22;

      [v8 setOffset:{0.0, -v23}];
    }
  }

  else
  {
    v19 = 0;
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __50__CSCoverSheetViewController__updateProudLockView__block_invoke;
  v39[3] = &unk_27838B838;
  v24 = v8;
  v40 = v24;
  v25 = v3;
  v41 = v25;
  v26 = MEMORY[0x223D698D0](v39);
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl() && ([MEMORY[0x277D75418] currentDevice], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "userInterfaceIdiom"), v27, (v28 & 0xFFFFFFFFFFFFFFFBLL) == 1))
    {
      v29 = objc_opt_class();
      v30 = v24;
      if (v29)
      {
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      v33 = v31;

      v34 = [v33 prefersInlineCoaching];
      v32 = v34 ^ 1u;
    }

    else
    {
      v32 = 0;
    }

    v35 = [(CSProudLockViewController *)self->_proudLockViewController proudLockContainerViewController];
    [v35 setSuppressAlongsideCoaching:v32];
  }

  [v24 animationDuration];
  if ((v19 & BSFloatIsZero()) == 1)
  {
    v36 = MEMORY[0x277D75D18];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __50__CSCoverSheetViewController__updateProudLockView__block_invoke_3;
    v37[3] = &unk_27838BB18;
    v38 = v26;
    [v36 performWithoutAnimation:v37];
  }

  else
  {
    v26[2](v26);
  }
}

void __50__CSCoverSheetViewController__updateProudLockView__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  [*(a1 + 32) animationDuration];
  v4 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__CSCoverSheetViewController__updateProudLockView__block_invoke_2;
  v5[3] = &unk_27838B838;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v2 animateWithDuration:v5 animations:v4];
}

uint64_t __50__CSCoverSheetViewController__updateProudLockView__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) offset];
  v4 = v3;
  v6 = v5;
  [*(a1 + 40) scale];
  [v2 setProudLockIconViewOffset:v4 scale:{v6, v7}];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v8 setProudLockPrefersLowerPresentationLevel:{objc_msgSend(v13, "shouldResideInALowerSubview")}];
  v14 = *(a1 + 32);
  [*(a1 + 40) blurRadius];

  return [v14 setProudLockIconBlurRadius:?];
}

- (void)_updateContent
{
  v10 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v10 componentForType:15 identifier:@"(active)"];
  v4 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 offset];
  v6 = v5;
  v8 = v7;
  [v3 scale];
  [v4 setContentViewOffset:v6 scale:{v8, v9}];
}

- (void)_updateControlCenterGrabber
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:13 identifier:@"(active)"];
  v5 = [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController teachableMomentsContainerView];
  v6 = [v5 controlCenterGlyphView];
  v7 = [v5 controlCenterGrabberView];
  [v4 alpha];
  v9 = v8;
  v10 = SBLogDashBoard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [v4 scale];
    v12 = v11;
    [v4 blurRadius];
    v16 = 134218496;
    v17 = v9;
    v18 = 2048;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Updating control center grabber alpha: %f, scale: %f, and blurRadius: %f", &v16, 0x20u);
  }

  [v7 setAlpha:v9];
  [v6 setAlpha:v9];
  v14 = [(CSCoverSheetViewController *)self coverSheetView];
  [v4 scale];
  [v14 setControlCenterGrabberScale:?];

  v15 = [(CSCoverSheetViewController *)self coverSheetView];
  [v4 blurRadius];
  [v15 setControlCenterGrabberBlurRadius:?];
}

- (void)_updateModalContent
{
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:22 identifier:@"(active)"];
  [v5 setModalPresentationLevel:{objc_msgSend(v4, "level")}];
}

- (void)_updateWallpaper
{
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:6 identifier:@"(active)"];
  [v5 setWallpaperPresentationLevel:{objc_msgSend(v4, "level")}];
}

- (void)_updateQuickActions
{
  v20 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v20 componentForType:14 identifier:@"(active)"];
  v4 = [v20 componentForType:28 identifier:@"(active)"];
  -[CSQuickActionsViewController setSuppressingVisibleChanges:](self->_quickActionsViewController, "setSuppressingVisibleChanges:", [v3 flag] != 0);
  v5 = [(CSQuickActionsViewController *)self->_quickActionsViewController view];
  [v3 alpha];
  [v5 setAlpha:?];

  v6 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 offset];
  v8 = v7;
  v10 = v9;
  [v3 scale];
  [v6 setQuickActionsViewOffset:v8 scale:{v10, v11}];

  v12 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 blurRadius];
  [v12 setQuickActionsViewBlurRadius:?];

  v13 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v14 = [v13 notificationListScrollView];

  [v14 contentOffset];
  v16 = v15;
  v17 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
  [v17 effectiveFadeInThreshold];
  if (v16 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = [v4 isHidden] ^ 1;
  }

  [(CSQuickActionsViewController *)self->_quickActionsViewController setHidesBackingShadow:v19];
}

- (void)_updateStatusBarGradient
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:16 property:1];
  v5 = [v4 isHidden];

  v6 = [(CSCoverSheetViewController *)self coverSheetView];
  [v6 updateStatusBarLegibilityForForceLegibilityGradientHidden:v5];
}

- (void)_updatePoseidon
{
  v5 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonView];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:17 identifier:@"(active)"];
  [v4 alpha];
  [v5 setAlpha:?];
}

- (void)_updateWhitePoint
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self previousAppearance];
  v4 = [(CSCoverSheetViewController *)self _shouldReduceWhitePointForAppearance:v3];

  v5 = [(CSCoverSheetViewController *)self _shouldReduceWhitePoint];
  if (v4 != v5)
  {
    v6 = v5;
    v7 = [(CSCoverSheetViewController *)self activeAppearance];
    v8 = [v7 componentForType:18 property:1024];

    if (v8)
    {
      [v8 animationDuration];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    if (v6)
    {
      v11 = [(CSCoverSheetViewController *)self _whitePointValues];
      if (v10 <= 0.0)
      {
        v12 = [(CSCoverSheetViewController *)self view];
        v18 = [v12 layer];
        v19 = [(CSCoverSheetViewController *)self _whitePointReductionFilterFromValues:v11];
        v26[0] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        [v18 setFilters:v20];
      }

      else
      {
        v12 = dispatch_group_create();
        v13 = [(CSCoverSheetViewController *)self view];
        [(CSCoverSheetViewController *)self _animateView:v13 toWhitePointReduced:1 withDuration:v12 withDispatchGroup:v10];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__CSCoverSheetViewController__updateWhitePoint__block_invoke;
        block[3] = &unk_27838B838;
        block[4] = self;
        v25 = v11;
        dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      v14 = [(CSCoverSheetViewController *)self view];
      v15 = [v14 layer];
      v16 = [v15 filters];

      if (!v16)
      {
LABEL_14:

        return;
      }

      if (v10 <= 0.0)
      {
        v21 = [(CSCoverSheetViewController *)self view];
        v22 = [v21 layer];
        [v22 setFilters:0];

        goto LABEL_14;
      }

      v11 = dispatch_group_create();
      v17 = [(CSCoverSheetViewController *)self view];
      [(CSCoverSheetViewController *)self _animateView:v17 toWhitePointReduced:0 withDuration:v11 withDispatchGroup:v10];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47__CSCoverSheetViewController__updateWhitePoint__block_invoke_2;
      v23[3] = &unk_27838B770;
      v23[4] = self;
      dispatch_group_notify(v11, MEMORY[0x277D85CD0], v23);
    }

    goto LABEL_14;
  }
}

- (BOOL)_shouldReduceWhitePoint
{
  v2 = self;
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  LOBYTE(v2) = [(CSCoverSheetViewController *)v2 _shouldReduceWhitePointForAppearance:v3];

  return v2;
}

- (void)_updateDimmingLayer
{
  v8 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v8 componentForType:27 identifier:@"(active)"];
  if (v3)
  {
    v4 = [(CSCoverSheetViewController *)self dateViewController];

    if (v4)
    {
      [v3 alpha];
      v6 = v5;
      v7 = [(CSCoverSheetViewController *)self dateViewController];
      [v7 setDimmingViewAlpha:v6];
    }
  }
}

- (BOOL)shouldCompletePhoneAutoUnlockWithNotification
{
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  if ([v3 areRestrictedCapabilities:8])
  {

    return 0;
  }

  v4 = [(CSCoverSheetViewController *)self activeBehavior];
  v5 = [v4 areRestrictedCapabilities:56];

  if (v5)
  {
    return 0;
  }

  phoneUnlockWithWatchController = self->_phoneUnlockWithWatchController;

  return [(SBUIPhoneUnlockWithWatchController *)phoneUnlockWithWatchController shouldPhoneCompleteAutoUnlockWithNotification];
}

void __51__CSCoverSheetViewController__updateHomeAffordance__block_invoke(uint64_t a1)
{
  [*(a1 + 32) offset];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) scale];
  v7 = v6;
  v8 = [*(*(a1 + 40) + 1416) homeAffordanceViewController];
  [v8 setHomeAffordanceOffset:v3 scale:{v5, v7}];
}

- (void)_updateDateTimeView
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 effectiveContainerBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CSCoverSheetViewController *)self activeAppearance];
  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = (v14 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) < 0xFFFFFFFFFFFFFFFELL;
  v16 = [(CSCoverSheetViewController *)self dateView];
  [v16 setUseCompactDateFormat:v15];

  v17 = [(CSCoverSheetViewController *)self dateView];
  [v17 setUseLandscapeTimeFontSize:v15];

  v18 = [v12 componentForType:1 identifier:@"(active)"];
  [v18 vibrantAndCentered];
  IsYes = BSSettingFlagIsYes();
  LOBYTE(v17) = IsYes;
  [v3 setDateViewIsVibrant:IsYes];
  objc_initWeak(&location, self);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __49__CSCoverSheetViewController__updateDateTimeView__block_invoke;
  v56[3] = &unk_27838C288;
  objc_copyWeak(v59, &location);
  v56[4] = self;
  v20 = v3;
  v57 = v20;
  v59[1] = v5;
  v59[2] = v7;
  v59[3] = v9;
  v59[4] = v11;
  v60 = v17;
  v21 = v18;
  v58 = v21;
  v22 = MEMORY[0x223D698D0](v56);
  if ([v21 isHidden])
  {
    objc_initWeak(&from, self);
    v23 = MEMORY[0x277CF0D38];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_4;
    v52[3] = &unk_27838C2B0;
    objc_copyWeak(&v54, &from);
    v53 = v22;
    [v23 addAlongsideAnimations:0 completion:v52];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&from);
    goto LABEL_16;
  }

  v24 = [v20 dateView];
  [v24 timeAlpha];
  if (BSFloatIsZero())
  {
    v25 = [v20 dateView];
    [v25 subtitleAlpha];
    IsZero = BSFloatIsZero();
  }

  else
  {
    IsZero = 0;
  }

  [v20 dateViewOffset];
  v28 = v27;
  v30 = v29;
  [v21 offset];
  if ((IsZero & 1) != 0 || v31 != v28 || v32 == v30)
  {
    if (!IsZero)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [v21 animationDuration];
    if (!((v33 == 0.0) | IsZero & 1))
    {
LABEL_13:
      v22[2](v22);
      goto LABEL_16;
    }
  }

  v34 = MEMORY[0x277D75D18];
  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_5;
  v50 = &unk_27838BB18;
  v51 = v22;
  [v34 performWithoutAnimation:&v47];

LABEL_16:
  if ([v21 isHidden])
  {
    v35 = 0;
  }

  else
  {
    v36 = [v21 string];
    if (v36)
    {
      v37 = [v21 string];
      v35 = [v37 length] != 0;
    }

    else
    {
      v35 = 1;
    }
  }

  v38 = 0.0;
  v39 = 0.0;
  if (([v21 isHidden] & 1) == 0 && (objc_msgSend(v21, "hidesTime") & 1) == 0)
  {
    [v21 alpha];
    v39 = v40;
  }

  if (v35)
  {
    [v21 alpha];
    v38 = v41;
  }

  [(SBFLockScreenDateViewController *)self->_dateViewController setTimeAlpha:v39 subtitleAlpha:v38];
  -[SBFLockScreenDateViewController setTimeSupportsStretch:](self->_dateViewController, "setTimeSupportsStretch:", [v21 constrainsTimeHeight] ^ 1);
  v42 = [(CSCoverSheetViewController *)self traitCollection];
  v43 = [v42 _backlightLuminance];

  v44 = 0.0;
  if (v43 != 1)
  {
    v44 = 1.0;
  }

  [(SBFLockScreenDateViewController *)self->_dateViewController setBackgroundAlpha:v44];
  v45 = [v21 view];
  if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(SBFLockScreenDateViewController *)self->_dateViewController setCustomSubtitleView:v45];
  }

  else
  {
    [(SBFLockScreenDateViewController *)self->_dateViewController setCustomSubtitleView:0];
  }

  -[SBFLockScreenDateViewController setShowCompactTime:animated:](self->_dateViewController, "setShowCompactTime:animated:", [v21 showCompactTime], -[CSCoverSheetViewController _appearState](self, "_appearState") == 2);
  v46 = [v20 dateView];
  [(CSCoverSheetViewController *)self dateTimeSubtitleMaximumWidth];
  [v46 setMaximumSubtitleWidth:?];

  objc_destroyWeak(v59);
  objc_destroyWeak(&location);
}

void __49__CSCoverSheetViewController__updateDateTimeView__block_invoke(uint64_t a1)
{
  v245 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(*(a1 + 32) + 2040) combinedListViewController];
  v4 = [v3 notificationListScrollView];

  v5 = [*(a1 + 40) dateView];
  [v5 setPosterHasComplications:{objc_msgSend(*(*(a1 + 32) + 2160), "isEmpty") ^ 1}];

  Height = CGRectGetHeight(*(a1 + 64));
  v216 = v4;
  [v4 contentOffset];
  v8 = Height - v7;
  v9 = WeakRetained[134];
  if ([v9 shouldOptimizeDeviceMotionEffectUnderNotificationList])
  {
    [v9 wallpaperOcclusionPercentage];
    v4 = 2352;
    v11 = WeakRetained[294];
    if (v8 <= Height * (1.0 - v10))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      v12 = [WeakRetained[292] acquireForReason:@"NotificationList"];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_8;
      }

      [v11 invalidate];
      v12 = 0;
    }

    v13 = WeakRetained[294];
    WeakRetained[294] = v12;
  }

LABEL_8:
  v14 = [objc_alloc(getCSProminentLayoutControllerClass()) initWithTraitEnvironment:*(a1 + 32)];
  [v14 frameForElements:1 variant:0 withBoundingRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  MinY = CGRectGetMinY(v246);
  [v14 frameForElements:1 variant:1 withBoundingRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  MaxY = CGRectGetMaxY(v247);
  v215 = [*(*(a1 + 32) + 1064) wallpaperProvider];
  v17 = v8 + -8.0;
  v18 = [*(*(a1 + 32) + 2136) dateView];
  v19 = [v18 prominentDisplayViewController];

  [v19 maximumAdaptiveTimeTextHeight];
  v21 = v20;
  [v19 minimumAdaptiveTimeTextHeight];
  v23 = v22;
  [*(a1 + 32) _adaptiveTimeMaxYFromConfigurationAndPosterPreferences];
  v25 = v24;
  v26 = CGRectGetMaxY(*(a1 + 64));
  if (v25 < v26)
  {
    v26 = v25;
  }

  v217 = v26;
  v214 = MinY + v21;
  if (v26 >= MinY + v21)
  {
    v27 = MinY + v21;
  }

  else
  {
    v27 = v26;
  }

  v28 = [*(*(a1 + 32) + 1576) proportionalAdaptiveTime];
  v29 = *(a1 + 32);
  if (v28)
  {
    v30 = [v29 mainPageContentViewController];
    v31 = [v30 combinedListViewController];
    [v31 effectiveListMaxY];
    v33 = v32;

    v207 = CGRectGetHeight(*(a1 + 64));
    v34 = __sb__runningInSpringBoard();
    if (v34)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v206 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v179 = [MEMORY[0x277D75418] currentDevice];
      if ([v179 userInterfaceIdiom] != 1)
      {
        v206 = 0x100000000;
        goto LABEL_35;
      }
    }

    HIDWORD(v206) = v34 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v53 = __sb__runningInSpringBoard();
      if (v53)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v180 = [MEMORY[0x277D759A0] mainScreen];
        [v180 _referenceBounds];
      }

      LODWORD(v206) = v53 ^ 1;
      BSSizeRoundForScale();
      if (v66 == *(MEMORY[0x277D66E30] + 288) && v65 == *(MEMORY[0x277D66E30] + 296))
      {
        v194 = 0;
        v193 = 0;
        v192 = 0;
        v195 = 0;
        v181 = 0;
        v191 = 0;
        v190 = 0;
        v196 = 0;
        v188 = 0;
        v189 = 0;
        v197 = 0;
        v186 = 0;
        v187 = 0;
        v184 = 0;
        v185 = 0;
        v198 = 0;
        v199 = 0;
        v182 = 0;
        v183 = 0;
        v200 = 0;
        v213 = 0;
        v211 = 0;
        v209 = 0;
        v59 = 0;
        v201 = 0;
        v60 = 0;
        v61 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v62 = &qword_21EC96320;
        goto LABEL_102;
      }
    }

    else
    {
      LODWORD(v206) = 0;
    }

LABEL_35:
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v205 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v178 = [MEMORY[0x277D75418] currentDevice];
      if ([v178 userInterfaceIdiom] != 1)
      {
        v205 = 0x100000000;
        goto LABEL_44;
      }
    }

    HIDWORD(v205) = v54 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v53 = __sb__runningInSpringBoard();
      if (v53)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v170 = [MEMORY[0x277D759A0] mainScreen];
        [v170 _referenceBounds];
      }

      LODWORD(v205) = v53 ^ 1;
      BSSizeRoundForScale();
      if (v67 >= *(MEMORY[0x277D66E30] + 440))
      {
        v194 = 0;
        v193 = 0;
        v192 = 0;
        v195 = 0;
        v181 = 0;
        v191 = 0;
        v190 = 0;
        v196 = 0;
        v188 = 0;
        v189 = 0;
        v197 = 0;
        v186 = 0;
        v187 = 0;
        v184 = 0;
        v185 = 0;
        v198 = 0;
        v199 = 0;
        v182 = 0;
        v183 = 0;
        v200 = 0;
        v213 = 0;
        v211 = 0;
        v209 = 0;
        v59 = 0;
        v201 = 0;
        v60 = 0;
        v61 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v62 = &qword_21EC96348;
        goto LABEL_102;
      }
    }

    else
    {
      LODWORD(v205) = 0;
    }

LABEL_44:
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v204 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      v177 = [MEMORY[0x277D75418] currentDevice];
      if ([v177 userInterfaceIdiom] != 1)
      {
        v204 = 0x100000000;
        goto LABEL_53;
      }
    }

    HIDWORD(v204) = v55 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v53 = __sb__runningInSpringBoard();
      if (v53)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v169 = [MEMORY[0x277D759A0] mainScreen];
        [v169 _referenceBounds];
      }

      LODWORD(v204) = v53 ^ 1;
      BSSizeRoundForScale();
      if (v68 >= *(MEMORY[0x277D66E30] + 376))
      {
        v194 = 0;
        v193 = 0;
        v192 = 0;
        v195 = 0;
        v181 = 0;
        v191 = 0;
        v190 = 0;
        v196 = 0;
        v188 = 0;
        v189 = 0;
        v197 = 0;
        v186 = 0;
        v187 = 0;
        v184 = 0;
        v185 = 0;
        v198 = 0;
        v199 = 0;
        v182 = 0;
        v183 = 0;
        v200 = 0;
        v213 = 0;
        v211 = 0;
        v209 = 0;
        v59 = 0;
        v201 = 0;
        v60 = 0;
        v61 = 0;
        v202 = 0;
        v203 = 0;
        v62 = &qword_21EC96338;
        goto LABEL_102;
      }
    }

    else
    {
      LODWORD(v204) = 0;
    }

LABEL_53:
    v56 = __sb__runningInSpringBoard();
    if (v56)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v203 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v176 = [MEMORY[0x277D75418] currentDevice];
      if ([v176 userInterfaceIdiom] != 1)
      {
        v203 = 0x100000000;
        goto LABEL_62;
      }
    }

    HIDWORD(v203) = v56 ^ 1;
    v53 = __sb__runningInSpringBoard();
    if (v53)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v173 = [MEMORY[0x277D759A0] mainScreen];
      [v173 _referenceBounds];
    }

    LODWORD(v203) = v53 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 280))
    {
      v194 = 0;
      v193 = 0;
      v192 = 0;
      v195 = 0;
      v181 = 0;
      v191 = 0;
      v190 = 0;
      v196 = 0;
      v188 = 0;
      v189 = 0;
      v197 = 0;
      v186 = 0;
      v187 = 0;
      v184 = 0;
      v185 = 0;
      v198 = 0;
      v199 = 0;
      v182 = 0;
      v183 = 0;
      v200 = 0;
      v213 = 0;
      v211 = 0;
      v209 = 0;
      v59 = 0;
      v201 = 0;
      v60 = 0;
      v61 = 0;
      v202 = 0;
      v62 = &qword_21EC96340;
      goto LABEL_102;
    }

LABEL_62:
    v58 = __sb__runningInSpringBoard();
    if (v58)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v202 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      v175 = [MEMORY[0x277D75418] currentDevice];
      if ([v175 userInterfaceIdiom] != 1)
      {
        v202 = 0x100000000;
        goto LABEL_72;
      }
    }

    HIDWORD(v202) = v58 ^ 1;
    v53 = __sb__runningInSpringBoard();
    if (v53)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v171 = [MEMORY[0x277D759A0] mainScreen];
      [v171 _referenceBounds];
    }

    LODWORD(v202) = v53 ^ 1;
    BSSizeRoundForScale();
    if (v63 >= *(MEMORY[0x277D66E30] + 264))
    {
      v194 = 0;
      v193 = 0;
      v192 = 0;
      v195 = 0;
      v181 = 0;
      v191 = 0;
      v190 = 0;
      v196 = 0;
      v188 = 0;
      v189 = 0;
      v197 = 0;
      v186 = 0;
      v187 = 0;
      v184 = 0;
      v185 = 0;
      v198 = 0;
      v199 = 0;
      v182 = 0;
      v183 = 0;
      v200 = 0;
      v213 = 0;
      v211 = 0;
      v209 = 0;
      v59 = 0;
      v201 = 0;
      v60 = 0;
      v61 = 0;
      v62 = &qword_21EC96330;
      goto LABEL_102;
    }

LABEL_72:
    v64 = __sb__runningInSpringBoard();
    if (v64)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v201 = 0;
LABEL_92:
        v53 = __sb__runningInSpringBoard();
        if (v53)
        {
          if (SBFEffectiveDeviceClass() != 2)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v172 = [MEMORY[0x277D75418] currentDevice];
          if ([v172 userInterfaceIdiom] != 1)
          {
LABEL_94:
            HIDWORD(v200) = v53 ^ 1;
            if (!_SBF_Private_IsD94Like())
            {
LABEL_98:
              LODWORD(v200) = 0;
              LODWORD(v198) = 0;
              goto LABEL_250;
            }

            v70 = __sb__runningInSpringBoard();
            if (v70)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_98;
              }
            }

            else
            {
              v166 = [MEMORY[0x277D75418] currentDevice];
              if ([v166 userInterfaceIdiom])
              {
                LODWORD(v200) = 0;
                LODWORD(v198) = 1;
                goto LABEL_250;
              }
            }

            v4 = v70 ^ 1u;
            LODWORD(v198) = v70 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v159 = [MEMORY[0x277D759A0] mainScreen];
                [v159 _referenceBounds];
              }

              LODWORD(v200) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v94 >= *(MEMORY[0x277D66E30] + 200))
              {
                v194 = 0;
                v193 = 0;
                v192 = 0;
                v195 = 0;
                v181 = 0;
                v191 = 0;
                v190 = 0;
                v196 = 0;
                v188 = 0;
                v189 = 0;
                v197 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                HIDWORD(v198) = 0;
                v199 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC962F8;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v200) = 0;
            }

LABEL_250:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v199 = 0;
                goto LABEL_260;
              }
            }

            else
            {
              v167 = [MEMORY[0x277D75418] currentDevice];
              if ([v167 userInterfaceIdiom])
              {
                v199 = 0x100000000;
                goto LABEL_260;
              }
            }

            HIDWORD(v199) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v162 = [MEMORY[0x277D759A0] mainScreen];
                [v162 _referenceBounds];
              }

              LODWORD(v199) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v92 >= *(MEMORY[0x277D66E30] + 200))
              {
                goto LABEL_264;
              }
            }

            else
            {
              LODWORD(v199) = 0;
            }

LABEL_260:
            if (_SBF_Private_IsD94Like())
            {
              v194 = 0;
              v193 = 0;
              v192 = 0;
              v195 = 0;
              v181 = 0;
              v191 = 0;
              v190 = 0;
              v196 = 0;
              v188 = 0;
              v189 = 0;
              v197 = 0;
              v186 = 0;
              v187 = 0;
              v184 = 0;
              v185 = 0;
              HIDWORD(v198) = 0;
              v182 = 0;
              v183 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96300;
              goto LABEL_102;
            }

LABEL_264:
            if (!_SBF_Private_IsD64Like())
            {
LABEL_268:
              HIDWORD(v196) = 0;
              HIDWORD(v198) = 0;
              goto LABEL_278;
            }

            v93 = __sb__runningInSpringBoard();
            if (v93)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_268;
              }
            }

            else
            {
              v163 = [MEMORY[0x277D75418] currentDevice];
              if ([v163 userInterfaceIdiom])
              {
                HIDWORD(v196) = 0;
                HIDWORD(v198) = 1;
                goto LABEL_278;
              }
            }

            HIDWORD(v198) = v93 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v154 = [MEMORY[0x277D759A0] mainScreen];
                [v154 _referenceBounds];
              }

              v4 = v53 ^ 1;
              BSSizeRoundForScale();
              HIDWORD(v196) = v53 ^ 1;
              if (v98 >= *(MEMORY[0x277D66E30] + 136))
              {
                v194 = 0;
                v193 = 0;
                v192 = 0;
                v195 = 0;
                v181 = 0;
                v191 = 0;
                v190 = 0;
                LODWORD(v196) = 0;
                v188 = 0;
                v189 = 0;
                v197 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC96308;
                goto LABEL_102;
              }
            }

            else
            {
              HIDWORD(v196) = 0;
            }

LABEL_278:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v197 = 0;
                goto LABEL_288;
              }
            }

            else
            {
              v165 = [MEMORY[0x277D75418] currentDevice];
              if ([v165 userInterfaceIdiom])
              {
                v197 = 0x100000000;
                goto LABEL_288;
              }
            }

            HIDWORD(v197) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v158 = [MEMORY[0x277D759A0] mainScreen];
                [v158 _referenceBounds];
              }

              LODWORD(v197) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v95 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_292;
              }
            }

            else
            {
              LODWORD(v197) = 0;
            }

LABEL_288:
            if (_SBF_Private_IsD64Like())
            {
              v194 = 0;
              v193 = 0;
              v192 = 0;
              v195 = 0;
              v181 = 0;
              v191 = 0;
              v190 = 0;
              LODWORD(v196) = 0;
              v188 = 0;
              v189 = 0;
              v186 = 0;
              v187 = 0;
              v184 = 0;
              v185 = 0;
              v182 = 0;
              v183 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96310;
              goto LABEL_102;
            }

LABEL_292:
            v96 = __sb__runningInSpringBoard();
            if (v96)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                LODWORD(v196) = 0;
                HIDWORD(v192) = 0;
                goto LABEL_302;
              }
            }

            else
            {
              v164 = [MEMORY[0x277D75418] currentDevice];
              if ([v164 userInterfaceIdiom])
              {
                LODWORD(v196) = 0;
                HIDWORD(v192) = 1;
                goto LABEL_302;
              }
            }

            v4 = v96 ^ 1u;
            HIDWORD(v192) = v96 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v155 = [MEMORY[0x277D759A0] mainScreen];
                [v155 _referenceBounds];
              }

              LODWORD(v196) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v97 >= *(MEMORY[0x277D66E30] + 136))
              {
                v194 = 0;
                v193 = 0;
                LODWORD(v192) = 0;
                v195 = 0;
                v181 = 0;
                v191 = 0;
                v190 = 0;
                v188 = 0;
                v189 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC962E8;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v196) = 0;
            }

LABEL_302:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v195 = 0;
                goto LABEL_312;
              }
            }

            else
            {
              v161 = [MEMORY[0x277D75418] currentDevice];
              if ([v161 userInterfaceIdiom])
              {
                v195 = 0x100000000;
                goto LABEL_312;
              }
            }

            HIDWORD(v195) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v153 = [MEMORY[0x277D759A0] mainScreen];
                [v153 _referenceBounds];
              }

              LODWORD(v195) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v99 >= *(MEMORY[0x277D66E30] + 136))
              {
                goto LABEL_322;
              }
            }

            else
            {
              LODWORD(v195) = 0;
            }

LABEL_312:
            if (_SBF_Private_IsD54())
            {
              v194 = 0;
              v193 = 0;
              LODWORD(v192) = 0;
              v181 = 0;
              v191 = 0;
              v190 = 0;
              v188 = 0;
              v189 = 0;
              v186 = 0;
              v187 = 0;
              v184 = 0;
              v185 = 0;
              v182 = 0;
              v183 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC962F0;
              goto LABEL_102;
            }

LABEL_322:
            v100 = __sb__runningInSpringBoard();
            if (v100)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v194 = 0;
                goto LABEL_332;
              }
            }

            else
            {
              v160 = [MEMORY[0x277D75418] currentDevice];
              if ([v160 userInterfaceIdiom])
              {
                v194 = 0x100000000;
                goto LABEL_332;
              }
            }

            HIDWORD(v194) = v100 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v150 = [MEMORY[0x277D759A0] mainScreen];
                [v150 _referenceBounds];
              }

              LODWORD(v194) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v101 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
              {
                v193 = 0;
                LODWORD(v192) = 0;
                v181 = 0;
                v191 = 0;
                v190 = 0;
                v188 = 0;
                v189 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC962A8;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v194) = 0;
            }

LABEL_332:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v193 = 0;
                goto LABEL_342;
              }
            }

            else
            {
              v157 = [MEMORY[0x277D75418] currentDevice];
              if ([v157 userInterfaceIdiom])
              {
                v193 = 0x100000000;
                goto LABEL_342;
              }
            }

            HIDWORD(v193) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v149 = [MEMORY[0x277D759A0] mainScreen];
                [v149 _referenceBounds];
              }

              LODWORD(v193) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v102 >= *(MEMORY[0x277D66E30] + 120))
              {
                goto LABEL_351;
              }
            }

            else
            {
              LODWORD(v193) = 0;
            }

LABEL_342:
            if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
            {
              LODWORD(v192) = 0;
              v181 = 0;
              v191 = 0;
              v190 = 0;
              v188 = 0;
              v189 = 0;
              v186 = 0;
              v187 = 0;
              v184 = 0;
              v185 = 0;
              v182 = 0;
              v183 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC962B0;
              goto LABEL_102;
            }

LABEL_351:
            if (!_SBF_Private_IsD93Like())
            {
LABEL_355:
              LODWORD(v192) = 0;
              v181 = 0;
              goto LABEL_362;
            }

            v103 = __sb__runningInSpringBoard();
            if (v103)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_355;
              }
            }

            else
            {
              v152 = [MEMORY[0x277D75418] currentDevice];
              if ([v152 userInterfaceIdiom])
              {
                v181 = 0;
                LODWORD(v192) = 1;
                goto LABEL_362;
              }
            }

            v4 = v103 ^ 1u;
            LODWORD(v192) = v103 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v143 = [MEMORY[0x277D759A0] mainScreen];
                [v143 _referenceBounds];
              }

              v4 = v53 ^ 1;
              BSSizeRoundForScale();
              v181 = v53 ^ 1;
              if (v106 >= *(MEMORY[0x277D66E30] + 184))
              {
                v191 = 0;
                v190 = 0;
                v188 = 0;
                v189 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC96298;
                goto LABEL_102;
              }
            }

            else
            {
              v181 = 0;
            }

LABEL_362:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v191 = 0;
                goto LABEL_372;
              }
            }

            else
            {
              v156 = [MEMORY[0x277D75418] currentDevice];
              if ([v156 userInterfaceIdiom])
              {
                v191 = 0x100000000;
                goto LABEL_372;
              }
            }

            HIDWORD(v191) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v146 = [MEMORY[0x277D759A0] mainScreen];
                [v146 _referenceBounds];
              }

              LODWORD(v191) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v104 >= *(MEMORY[0x277D66E30] + 184))
              {
                goto LABEL_376;
              }
            }

            else
            {
              LODWORD(v191) = 0;
            }

LABEL_372:
            if (_SBF_Private_IsD93Like())
            {
              v190 = 0;
              v188 = 0;
              v189 = 0;
              v186 = 0;
              v187 = 0;
              v184 = 0;
              v185 = 0;
              v182 = 0;
              v183 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC962A0;
              goto LABEL_102;
            }

LABEL_376:
            if (!_SBF_Private_IsD63Like())
            {
LABEL_380:
              v190 = 0;
              goto LABEL_390;
            }

            v105 = __sb__runningInSpringBoard();
            if (v105)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_380;
              }
            }

            else
            {
              v148 = [MEMORY[0x277D75418] currentDevice];
              if ([v148 userInterfaceIdiom])
              {
                v190 = 0x100000000;
                goto LABEL_390;
              }
            }

            HIDWORD(v190) = v105 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v139 = [MEMORY[0x277D759A0] mainScreen];
                [v139 _referenceBounds];
              }

              LODWORD(v190) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v109 >= *(MEMORY[0x277D66E30] + 104))
              {
                v188 = 0;
                v189 = 0;
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC962C8;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v190) = 0;
            }

LABEL_390:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v189 = 0;
                goto LABEL_400;
              }
            }

            else
            {
              v151 = [MEMORY[0x277D75418] currentDevice];
              if ([v151 userInterfaceIdiom])
              {
                v189 = 0x100000000;
                goto LABEL_400;
              }
            }

            HIDWORD(v189) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v142 = [MEMORY[0x277D759A0] mainScreen];
                [v142 _referenceBounds];
              }

              LODWORD(v189) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v107 >= *(MEMORY[0x277D66E30] + 104))
              {
                goto LABEL_404;
              }
            }

            else
            {
              LODWORD(v189) = 0;
            }

LABEL_400:
            if (_SBF_Private_IsD63Like())
            {
              v187 = 0;
              v188 = 0;
              v185 = 0;
              v186 = 0;
              v183 = 0;
              v184 = 0;
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC962D0;
              goto LABEL_102;
            }

LABEL_404:
            if (!_SBF_Private_IsD23Like())
            {
LABEL_408:
              v188 = 0;
              goto LABEL_418;
            }

            v108 = __sb__runningInSpringBoard();
            if (v108)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                goto LABEL_408;
              }
            }

            else
            {
              v144 = [MEMORY[0x277D75418] currentDevice];
              if ([v144 userInterfaceIdiom])
              {
                v188 = 0x100000000;
                goto LABEL_418;
              }
            }

            HIDWORD(v188) = v108 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v135 = [MEMORY[0x277D759A0] mainScreen];
                [v135 _referenceBounds];
              }

              LODWORD(v188) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v113 >= *(MEMORY[0x277D66E30] + 216))
              {
                v186 = 0;
                v187 = 0;
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC962D8;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v188) = 0;
            }

LABEL_418:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v187 = 0;
                goto LABEL_428;
              }
            }

            else
            {
              v147 = [MEMORY[0x277D75418] currentDevice];
              if ([v147 userInterfaceIdiom])
              {
                v187 = 0x100000000;
                goto LABEL_428;
              }
            }

            HIDWORD(v187) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v138 = [MEMORY[0x277D759A0] mainScreen];
                [v138 _referenceBounds];
              }

              LODWORD(v187) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v110 >= *(MEMORY[0x277D66E30] + 216))
              {
                goto LABEL_432;
              }
            }

            else
            {
              LODWORD(v187) = 0;
            }

LABEL_428:
            if (_SBF_Private_IsD23Like())
            {
              v185 = 0;
              v186 = 0;
              v183 = 0;
              v184 = 0;
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC962E0;
              goto LABEL_102;
            }

LABEL_432:
            v111 = __sb__runningInSpringBoard();
            if (v111)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v186 = 0;
                goto LABEL_442;
              }
            }

            else
            {
              v145 = [MEMORY[0x277D75418] currentDevice];
              if ([v145 userInterfaceIdiom])
              {
                v186 = 0x100000000;
                goto LABEL_442;
              }
            }

            HIDWORD(v186) = v111 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v136 = [MEMORY[0x277D759A0] mainScreen];
                [v136 _referenceBounds];
              }

              LODWORD(v186) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v112 >= *(MEMORY[0x277D66E30] + 120))
              {
                v184 = 0;
                v185 = 0;
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC962B8;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v186) = 0;
            }

LABEL_442:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v185 = 0;
                goto LABEL_452;
              }
            }

            else
            {
              v141 = [MEMORY[0x277D75418] currentDevice];
              if ([v141 userInterfaceIdiom])
              {
                v185 = 0x100000000;
                goto LABEL_452;
              }
            }

            HIDWORD(v185) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v134 = [MEMORY[0x277D759A0] mainScreen];
                [v134 _referenceBounds];
              }

              LODWORD(v185) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v114 >= *(MEMORY[0x277D66E30] + 120))
              {
                goto LABEL_462;
              }
            }

            else
            {
              LODWORD(v185) = 0;
            }

LABEL_452:
            if (_SBF_Private_IsD33OrSimilarDevice())
            {
              v183 = 0;
              v184 = 0;
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC962C0;
              goto LABEL_102;
            }

LABEL_462:
            v115 = __sb__runningInSpringBoard();
            if (v115)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v184 = 0;
                goto LABEL_472;
              }
            }

            else
            {
              v140 = [MEMORY[0x277D75418] currentDevice];
              if ([v140 userInterfaceIdiom])
              {
                v184 = 0x100000000;
                goto LABEL_472;
              }
            }

            HIDWORD(v184) = v115 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v133 = [MEMORY[0x277D759A0] mainScreen];
                [v133 _referenceBounds];
              }

              LODWORD(v184) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v116 >= *(MEMORY[0x277D66E30] + 104))
              {
                v182 = 0;
                v183 = 0;
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC96288;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v184) = 0;
            }

LABEL_472:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v183 = 0;
                goto LABEL_482;
              }
            }

            else
            {
              v137 = [MEMORY[0x277D75418] currentDevice];
              if ([v137 userInterfaceIdiom])
              {
                v183 = 0x100000000;
                goto LABEL_482;
              }
            }

            HIDWORD(v183) = v53 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v132 = [MEMORY[0x277D759A0] mainScreen];
                [v132 _referenceBounds];
              }

              LODWORD(v183) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v117 >= *(MEMORY[0x277D66E30] + 104))
              {
                goto LABEL_489;
              }
            }

            else
            {
              LODWORD(v183) = 0;
            }

LABEL_482:
            if (_SBF_Private_IsD53())
            {
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96290;
              goto LABEL_102;
            }

LABEL_489:
            if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
            {
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96268;
              goto LABEL_102;
            }

            if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
            {
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96270;
              goto LABEL_102;
            }

            if (_SBF_Private_IsD52OrSimilarDevice())
            {
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96258;
              goto LABEL_102;
            }

            if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
            {
              v182 = 0;
              v213 = 0;
              v211 = 0;
              v209 = 0;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96260;
              goto LABEL_102;
            }

            v118 = __sb__runningInSpringBoard();
            if (v118)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v182 = 0;
                goto LABEL_509;
              }
            }

            else
            {
              v131 = [MEMORY[0x277D75418] currentDevice];
              if ([v131 userInterfaceIdiom])
              {
                v182 = 0x100000000;
                goto LABEL_509;
              }
            }

            HIDWORD(v182) = v118 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v127 = [MEMORY[0x277D759A0] mainScreen];
                [v127 _referenceBounds];
              }

              LODWORD(v182) = v53 ^ 1;
              BSSizeRoundForScale();
              if (v122 >= *(MEMORY[0x277D66E30] + 88))
              {
                v213 = 0;
                v211 = 0;
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC96278;
                goto LABEL_102;
              }
            }

            else
            {
              LODWORD(v182) = 0;
            }

LABEL_509:
            v119 = __sb__runningInSpringBoard();
            if (v119)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v213 = 0;
                v211 = 0;
                goto LABEL_519;
              }
            }

            else
            {
              v130 = [MEMORY[0x277D75418] currentDevice];
              if ([v130 userInterfaceIdiom])
              {
                v211 = 0;
                v213 = 1;
                goto LABEL_519;
              }
            }

            v213 = v119 ^ 1;
            if (SBFEffectiveHomeButtonType() == 2)
            {
              v53 = __sb__runningInSpringBoard();
              if (v53)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                v126 = [MEMORY[0x277D759A0] mainScreen];
                [v126 _referenceBounds];
              }

              v211 = v53 ^ 1;
              BSSizeRoundForScale();
              if (v123 >= *(MEMORY[0x277D66E30] + 72))
              {
                v209 = 0;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = &qword_21EC96280;
                goto LABEL_102;
              }
            }

            else
            {
              v211 = 0;
            }

LABEL_519:
            v120 = __sb__runningInSpringBoard();
            if (v120)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v209 = 0;
                v59 = 0;
                goto LABEL_529;
              }
            }

            else
            {
              v129 = [MEMORY[0x277D75418] currentDevice];
              if ([v129 userInterfaceIdiom])
              {
                v59 = 0;
                v209 = 1;
                goto LABEL_529;
              }
            }

            v209 = v120 ^ 1;
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v128 = [MEMORY[0x277D759A0] mainScreen];
              [v128 _referenceBounds];
            }

            v59 = v53 ^ 1;
            BSSizeRoundForScale();
            if (v121 >= *(MEMORY[0x277D66E30] + 56))
            {
              v60 = 0;
              v61 = 0;
              v62 = &qword_21EC96250;
              goto LABEL_102;
            }

LABEL_529:
            v53 = __sb__runningInSpringBoard();
            if (v53)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v60 = 0;
                v61 = 0;
LABEL_546:
                v62 = &CSQuickActionButtonInsetY;
                goto LABEL_102;
              }
            }

            else
            {
              v4 = [MEMORY[0x277D75418] currentDevice];
              if ([v4 userInterfaceIdiom])
              {
                v61 = 0;
                v60 = 1;
                goto LABEL_546;
              }
            }

            v60 = v53 ^ 1;
            v124 = __sb__runningInSpringBoard();
            if (v124)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v53 = [MEMORY[0x277D759A0] mainScreen];
              [v53 _referenceBounds];
            }

            v61 = v124 ^ 1;
            BSSizeRoundForScale();
            if (v125 >= *(MEMORY[0x277D66E30] + 40))
            {
              v62 = &qword_21EC96248;
              goto LABEL_102;
            }

            goto LABEL_546;
          }
        }

        v194 = 0;
        v193 = 0;
        v192 = 0;
        v195 = 0;
        v181 = 0;
        v191 = 0;
        v190 = 0;
        v196 = 0;
        v188 = 0;
        v189 = 0;
        v197 = 0;
        v186 = 0;
        v187 = 0;
        v184 = 0;
        v185 = 0;
        v198 = 0;
        v199 = 0;
        v182 = 0;
        v183 = 0;
        LODWORD(v200) = 0;
        v213 = 0;
        v211 = 0;
        v209 = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = &qword_21EC96318;
        HIDWORD(v200) = v53 ^ 1;
LABEL_102:
        v71 = *v62;
        if (v61)
        {
        }

        if (v60)
        {
        }

        if (v59)
        {
        }

        if (v209)
        {
        }

        if (v211)
        {
        }

        if (v213)
        {
        }

        if (v182)
        {
        }

        if (HIDWORD(v182))
        {
        }

        if (v183)
        {
        }

        if (HIDWORD(v183))
        {
        }

        if (v184)
        {
        }

        if (HIDWORD(v184))
        {
        }

        if (v185)
        {
        }

        if (HIDWORD(v185))
        {
        }

        if (v186)
        {
        }

        if (HIDWORD(v186))
        {
        }

        if (v187)
        {
        }

        if (HIDWORD(v187))
        {
        }

        if (v188)
        {
        }

        if (HIDWORD(v188))
        {
        }

        if (v189)
        {
        }

        if (HIDWORD(v189))
        {
        }

        if (v190)
        {
        }

        if (HIDWORD(v190))
        {
        }

        if (v191)
        {
        }

        if (HIDWORD(v191))
        {
        }

        if (v181)
        {
        }

        if (v192)
        {
        }

        if (v193)
        {
        }

        if (HIDWORD(v193))
        {
        }

        if (v194)
        {
        }

        if (HIDWORD(v194))
        {
        }

        if (v195)
        {
        }

        if (HIDWORD(v195))
        {
        }

        if (v196)
        {
        }

        if (HIDWORD(v192))
        {
        }

        if (v197)
        {
        }

        if (HIDWORD(v197))
        {
        }

        if (HIDWORD(v196))
        {
        }

        if (HIDWORD(v198))
        {
        }

        if (v199)
        {
        }

        if (HIDWORD(v199))
        {
        }

        if (v200)
        {
        }

        if (v198)
        {
        }

        if (HIDWORD(v200))
        {
        }

        if (v201)
        {
        }

        if (HIDWORD(v201))
        {
        }

        if (v202)
        {
        }

        if (HIDWORD(v202))
        {
        }

        if (v203)
        {
        }

        if (HIDWORD(v203))
        {
        }

        if (v204)
        {
        }

        if (HIDWORD(v204))
        {
        }

        if (v205)
        {
        }

        v72 = v17;
        if (HIDWORD(v205))
        {
        }

        if (v206)
        {
        }

        if (HIDWORD(v206))
        {
        }

        v73 = v33 - (v207 - (v27 + v71)) + 150.0;
        if (v72 >= v33)
        {
          v74 = v33;
        }

        else
        {
          v74 = v72;
        }

        if (v217 - MinY >= v23)
        {
          v75 = v217 - MinY;
        }

        else
        {
          v75 = v23;
        }

        [v19 maximumAdaptiveTimeTextHeight];
        if (v76 >= v75)
        {
          v76 = v75;
        }

        if (v23 >= v74)
        {
          v77 = v23;
        }

        else
        {
          v77 = v74;
        }

        if (v73 <= v77)
        {
          v77 = v73;
        }

        v45 = v76 + (v23 - v76) * (v77 - v73) / (MinY + v23 - v73);
        goto LABEL_230;
      }
    }

    else
    {
      v174 = [MEMORY[0x277D75418] currentDevice];
      if ([v174 userInterfaceIdiom] != 1)
      {
        v201 = 0x100000000;
        goto LABEL_92;
      }
    }

    HIDWORD(v201) = v64 ^ 1;
    v53 = __sb__runningInSpringBoard();
    if (v53)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v168 = [MEMORY[0x277D759A0] mainScreen];
      [v168 _referenceBounds];
    }

    LODWORD(v201) = v53 ^ 1;
    BSSizeRoundForScale();
    if (v69 >= *(MEMORY[0x277D66E30] + 248))
    {
      v194 = 0;
      v193 = 0;
      v192 = 0;
      v195 = 0;
      v181 = 0;
      v191 = 0;
      v190 = 0;
      v196 = 0;
      v188 = 0;
      v189 = 0;
      v197 = 0;
      v186 = 0;
      v187 = 0;
      v184 = 0;
      v185 = 0;
      v198 = 0;
      v199 = 0;
      v182 = 0;
      v183 = 0;
      v200 = 0;
      v213 = 0;
      v211 = 0;
      v209 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = &qword_21EC96328;
      goto LABEL_102;
    }

    goto LABEL_92;
  }

  v212 = MinY;
  v210 = MaxY;
  v35 = vabdd_f64(MaxY, MinY);
  [v29 _effectivePreferredSalientContentRectangle];
  x = v248.origin.x;
  y = v248.origin.y;
  width = v248.size.width;
  v39 = v248.size.height;
  v40 = CGRectGetMaxY(v248);
  v41 = CGRectGetMaxY(*(a1 + 64));
  v42 = 0.0;
  if (v40 < v41 + -10.0)
  {
    v249.origin.x = x;
    v249.origin.y = y;
    v249.size.width = width;
    v249.size.height = v39;
    v42 = CGRectGetHeight(v249);
  }

  v208 = v17;
  v43 = v17 - v42;
  if (v43 >= v217)
  {
    v43 = v217;
  }

  v44 = v43 - v212;
  if (v35 >= v43 - v212)
  {
    v45 = v35;
  }

  else
  {
    v45 = v43 - v212;
  }

  v46 = [*(a1 + 40) dateView];
  [v46 maximumAdaptiveTimeTextHeight];
  v48 = v47;

  if (v48 != v45)
  {
    v49 = [*(*(a1 + 32) + 1064) wallpaperProvider];
    v50 = [v49 adaptiveTimeHonorsPreferredSalientContentRectangle];
    v51 = SBLogDashBoard();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = BSStringFromCGRect();
      *buf = 134219522;
      v232 = v45;
      v233 = 1024;
      v234 = v50;
      v235 = 2048;
      v236 = v217;
      v237 = 2048;
      v238 = v208;
      v239 = 2112;
      v240 = v52;
      v241 = 2048;
      v242 = v41;
      v243 = 2048;
      v244 = v44;
      _os_log_impl(&dword_21EB05000, v51, OS_LOG_TYPE_DEFAULT, "[Adaptive Time] Calculated timeHeight: %f from honorsSalientContent: %{BOOL}u, posterDerivedTimeMaxY: %f, timeBottomFromList: %f, preferredSalientContent: %@, screenMax: %f, salientSpaceLeft: %f", buf, 0x44u);
    }
  }

  MinY = v212;
  MaxY = v210;
LABEL_230:
  v229[0] = MEMORY[0x277D85DD0];
  v229[1] = 3221225472;
  v229[2] = __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_696;
  v229[3] = &unk_27838C210;
  v230 = *(a1 + 40);
  v78 = MEMORY[0x223D698D0](v229);
  if ([*(a1 + 32) _appearState] == 2)
  {
    v78[2](v78, v45);
  }

  else
  {
    v79 = MEMORY[0x277D75D18];
    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_2;
    v226[3] = &unk_27838C238;
    v227 = v78;
    v228 = v45;
    [v79 performWithoutAnimation:v226];
  }

  [*(a1 + 40) setForceDateViewCentered:*(a1 + 96)];
  v80 = [*(a1 + 48) value];
  v81 = v80;
  v82 = *(a1 + 40);
  if (v80)
  {
    v83 = [v80 integerValue];
  }

  else
  {
    v83 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v82 setDateViewPageAlignment:v83];
  [*(a1 + 40) setDateViewStretch:{objc_msgSend(*(a1 + 48), "stretch")}];
  v84 = *(a1 + 80);
  v85 = MinY + v45;
  if (MinY + v45 >= v214)
  {
    v85 = v214;
  }

  if (v217 < v85)
  {
    v85 = v217;
  }

  if (MaxY >= v85)
  {
    v86 = MaxY;
  }

  else
  {
    v86 = v85;
  }

  v87 = *(a1 + 88) - v86;
  v88 = MEMORY[0x277D75D18];
  [*(a1 + 48) animationDuration];
  v90 = v89;
  v218[0] = MEMORY[0x277D85DD0];
  v218[1] = 3221225472;
  v218[2] = __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_3;
  v218[3] = &unk_27838C260;
  v219 = *(a1 + 40);
  v220 = *(a1 + 48);
  v91 = v215;
  v221 = v91;
  v222 = 0;
  v223 = v86;
  v224 = v84;
  v225 = v87;
  [v88 animateWithDuration:v218 animations:v90];
}

- (double)_adaptiveTimeMaxYFromConfigurationAndPosterPreferences
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext wallpaperProvider];
  if (![v3 adaptiveTimeHonorsPreferredSalientContentRectangle])
  {
    [(CSCoverSheetViewController *)self _posterPersistedTimeMaxY];
LABEL_6:
    v8 = MinY;
    goto LABEL_7;
  }

  [(CSCoverSheetViewController *)self _effectivePreferredSalientContentRectangle];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (!CGRectIsNull(v11))
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    MinY = CGRectGetMinY(v12);
    goto LABEL_6;
  }

  v8 = INFINITY;
LABEL_7:

  return v8;
}

- (double)_posterPersistedTimeMaxY
{
  v3 = [(CSCoverSheetViewController *)self interfaceOrientation];
  if ((v3 - 1) >= 2)
  {
    v5 = 0.0;
    if ((v3 - 3) > 1)
    {
LABEL_6:
      v6 = [(CSCoverSheetViewController *)self coverSheetView];
      [v6 effectiveContainerBounds];
      v5 = v5 * v7;

      return v5;
    }

    v4 = &OBJC_IVAR___CSCoverSheetViewController__posterPreferredTimeMaxYLandscape;
  }

  else
  {
    v4 = &OBJC_IVAR___CSCoverSheetViewController__posterPreferredTimeMaxYPortrait;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);
  if (v5 <= 1.0)
  {
    goto LABEL_6;
  }

  return v5;
}

- (CGRect)_effectivePreferredSalientContentRectangle
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext wallpaperProvider];
  [v3 preferredSalientContentRectangle];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsNull(v12))
  {
    x = self->_posterPreferredSalientContentRectangle.origin.x;
    y = self->_posterPreferredSalientContentRectangle.origin.y;
    width = self->_posterPreferredSalientContentRectangle.size.width;
    height = self->_posterPreferredSalientContentRectangle.size.height;
  }

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_updateRemoteInlineContentView
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:21 identifier:@"(active)"];
  v5 = [v4 isHidden];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_remoteContentInlineProvidingManagers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setInlineRemoteContentHidden:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateStatusBar
{
  fakeStatusBar = self->_fakeStatusBar;
  v4 = [(CSCoverSheetViewController *)self _fakeStatusBarSettings];
  [(UIStatusBar *)fakeStatusBar setStyleRequest:v4];

  v22 = [(CSCoverSheetViewController *)self activeAppearance];
  v5 = [v22 componentForType:2 identifier:@"(active)"];
  v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
  v7 = [v5 legibilitySettings];
  if (!v7)
  {
    v7 = [(CSAppearance *)self->_activeAppearance legibilitySettings];
  }

  v8 = [v7 style];
  v9 = [v6 statusBarLegibilitySettings];
  v10 = [v9 style];

  [v5 flag];
  IsYes = BSSettingFlagIsYes();
  v12 = [(CSCoverSheetViewController *)self _isFakeStatusBarEnabled];
  v13 = v12 & (IsYes ^ 1);
  if (v12)
  {
    v14 = IsYes ^ 1;
  }

  else
  {
    v14 = IsYes;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__CSCoverSheetViewController__updateStatusBar__block_invoke;
  v27[3] = &unk_27838C2D8;
  v27[4] = self;
  v15 = v6;
  v28 = v15;
  v16 = v5;
  v29 = v16;
  v31 = v8 != v10;
  v17 = v7;
  v30 = v17;
  v32 = v13;
  v18 = MEMORY[0x223D698D0](v27);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__CSCoverSheetViewController__updateStatusBar__block_invoke_2;
  v26[3] = &unk_27838B9B8;
  v26[4] = self;
  v19 = MEMORY[0x223D698D0](v26);
  v20 = MEMORY[0x277D75D18];
  if (v14 == 1)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__CSCoverSheetViewController__updateStatusBar__block_invoke_3;
    v23[3] = &unk_27838C300;
    v24 = v18;
    v25 = v19;
    [v20 performWithoutAnimation:v23];
  }

  else if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {
    [MEMORY[0x277CF0D38] addAlongsideAnimations:v18 completion:v19];
  }

  else
  {
    if (v8 == v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = [MEMORY[0x277CF0B70] settingsWithDuration:0.25];
    }

    [MEMORY[0x277CF0D38] animateWithSettings:v21 actions:v18 completion:v19];
  }
}

- (id)_fakeStatusBarSettings
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
  v4 = [(CSCoverSheetViewController *)self statusBarStyle];
  v5 = [(CSCoverSheetViewControllerBase *)self legibilitySettings];
  v6 = [v3 effectiveStatusBarStyleRequestForAlpha:0 style:v4 legibilitySettings:v5];

  return v6;
}

- (void)_updateProudLockViewUpdateSuspension
{
  proudLockViewController = self->_proudLockViewController;
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  -[CSProudLockViewController setSuspendLockUpdates:](proudLockViewController, "setSuspendLockUpdates:", [v3 areRestrictedCapabilities:0x8000]);
}

- (void)_updateLocalAppearanceForPresentation
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  v4 = [(CSCoverSheetViewController *)self activePresentation];
  v5 = [v3 scrollView];
  [v5 pageRelativeScrollOffset];
  v7 = v6;

  if ([(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource isTransitioning]&& [(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:self->_currentTransitionSource])
  {
    currentTransitionSource = self->_currentTransitionSource;
    if (currentTransitionSource)
    {
      [(CSCoverSheetViewTransitionSource *)currentTransitionSource transitionContext];
    }

    v7 = 0.0;
  }

  [v3 dateViewPresentationExtentForPageRelativeScrollOffset:v7];
  v9 = [CSRegion regionForCoordinateSpace:v3 withExtent:?];
  v10 = [v4 firstRegionIntersectingCoordinateSpace:v9 excludingRegionsWithRole:3];
  v11 = v10 != 0;

  [(CSCoverSheetViewController *)self _updateAppearance:self->_localAppearance forComponentType:1 shouldHide:v11];
  v12 = [(CSFixedFooterViewController *)self->_fixedFooterViewController fixedFooterView];
  localAppearance = self->_localAppearance;
  v14 = [v12 pageControl];
  -[CSCoverSheetViewController _updateAppearance:forComponentType:shouldHide:](self, "_updateAppearance:forComponentType:shouldHide:", localAppearance, 3, [v4 intersectsCoordinateSpace:v14]);

  v15 = self->_localAppearance;
  v16 = [v12 statusTextView];
  v17 = [v4 firstRegionIntersectingCoordinateSpace:v16 excludingRegionsWithRole:2];
  [(CSCoverSheetViewController *)self _updateAppearance:v15 forComponentType:10 shouldHide:v17 != 0];

  v18 = [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController teachableMomentsContainerView];
  v19 = [v18 callToActionLabelPositionPlaceholderView];
  v20 = v19;
  v50 = v12;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v12 callToActionLabel];
  }

  v22 = v21;

  v49 = v22;
  -[CSCoverSheetViewController _updateAppearance:forComponentType:shouldHide:](self, "_updateAppearance:forComponentType:shouldHide:", self->_localAppearance, 9, ([v4 intersectsCoordinateSpace:v22] | -[CSCoverSheetViewController isUnlockDisabled](self, "isUnlockDisabled")) & 1);
  v48 = [(CSWidgetGridViewController *)self->_sidebarComplicationContainerViewController view];
  v23 = [v4 firstRegionIntersectingCoordinateSpace:? excludingRegionsWithRole:?];
  v24 = v23 != 0;

  [(CSCoverSheetViewController *)self _updateAppearance:self->_localAppearance forComponentType:25 shouldHide:v24];
  v25 = [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController homeAffordanceViewController];
  v26 = [v25 homeAffordanceView];

  if (v26)
  {
    v27 = [v4 firstRegionIntersectingCoordinateSpace:v26 excludingRegionsWithRole:3];

    v28 = [(CSAppearance *)self->_localAppearance componentForType:12 identifier:@"CSPresentation"];
    v29 = v28;
    if (v28)
    {
      [v28 setHidden:0];
      [v29 setSuppressTeachableMomentsAnimation:BSSettingFlagIfYes()];
    }

    else
    {
      v30 = [CSComponent componentWithType:12];
      v31 = [v30 identifier:@"CSPresentation"];
      [v31 priority:10];
      v46 = v26;
      v33 = v32 = v9;

      [v33 setHidden:0];
      [v33 setSuppressTeachableMomentsAnimation:BSSettingFlagIfYes()];
      [(CSAppearance *)self->_localAppearance addComponent:v33];

      v9 = v32;
      v26 = v46;
    }
  }

  v34 = [v18 controlCenterGrabberPositionPlaceholderView];
  v35 = [v4 firstRegionIntersectingCoordinateSpace:v34 excludingRegionsWithRole:3];

  v36 = [(CSAppearance *)self->_localAppearance componentForType:13 identifier:@"CSPresentation"];
  v37 = v36;
  if (v36)
  {
    [v36 setHidden:v35 != 0];
  }

  else
  {
    [CSComponent componentWithType:13];
    v38 = v45 = v9;
    [v38 identifier:@"CSPresentation"];
    v39 = v47 = v26;
    [v39 priority:10];
    v40 = v4;
    v41 = v18;
    v43 = v42 = v3;
    v44 = [v43 hidden:v35 != 0];

    v3 = v42;
    v18 = v41;
    v4 = v40;

    v26 = v47;
    v9 = v45;
    [(CSAppearance *)self->_localAppearance addComponent:v44];
  }
}

- (unint64_t)_pageCapabilities
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CSCoverSheetViewController *)self pageViewControllers:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [objc_opt_class() requiredCapabilities];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)dateTimeSubtitleMaximumWidth
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self view];
  [v3 bounds];
  Width = CGRectGetWidth(v27);

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(CSCoverSheetViewController *)self pageViewControllers];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      v11 = 0.0;
      v12 = Width;
      v13 = Width;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if (([(CSCoverSheetViewController *)self _dateTimeLayoutForPage:v15]& 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            [(CSCoverSheetViewController *)self _dateTimeInsetXForPage:v15];
            if (v13 >= v16)
            {
              v13 = v16;
            }

            [(CSCoverSheetViewController *)self _listInsetXForPage:v15];
            if (v12 >= v17)
            {
              v12 = v17;
            }

            [(CSCoverSheetViewController *)self _minDateListSpacingForPage:v15];
            if (v11 < v18)
            {
              v11 = v18;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
      v12 = Width;
      v13 = Width;
    }

    [MEMORY[0x277D67DA0] idealSearchPlatterWidth];
    return Width - v19 - v13 - v12 - v11;
  }

  return Width;
}

- (int64_t)statusBarStyle
{
  v2 = [(CSCoverSheetViewControllerBase *)self legibilitySettings];
  v3 = [v2 style] != 2;

  return v3;
}

- (BOOL)_isFakeStatusBarEnabled
{
  v2 = [(CSCoverSheetViewController *)self coverSheetView];
  v3 = [v2 fakeStatusBar];
  v4 = v3 != 0;

  return v4;
}

void __46__CSCoverSheetViewController__updateStatusBar__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1449) & 1) != 0 || (*(v2 + 1801))
  {
    [*(a1 + 40) clearStatusBarParameters];
  }

  else
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = *(a1 + 40);
    [*(a1 + 48) alpha];
    v9 = [v7 numberWithDouble:?];
    v10 = [*(a1 + 32) statusBarStyle];
    if (*(a1 + 64) == 1)
    {
      v11 = *(a1 + 56);
    }

    else
    {
      v11 = 0;
    }

    [v8 setStatusBarAlpha:v9 style:v10 legibilitySettings:v11];

    if (([*(a1 + 32) isTransitioning] & 1) == 0 && (*(*(a1 + 32) + 1083) & 1) == 0)
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock])
      {
        [MEMORY[0x277D75D18] _currentAnimationDuration];
        v18 = v17;
      }

      else if (*(a1 + 65))
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 0.25;
      }

      [*(a1 + 40) setStatusBarPart:0 hidden:objc_msgSend(*(a1 + 32) animationDuration:{"shouldShowLockStatusBarTime") ^ 1, v18}];
    }
  }

  [*(a1 + 48) flag];
  IsYes = BSSettingFlagIsYes();
  v4 = *(a1 + 32);
  if (!IsYes || (v4[1081] & 1) != 0 || (v4[1449] & 1) != 0)
  {
    v5 = [v4 coverSheetView];
    [*(a1 + 48) blurRadius];
    [v5 setFakeStatusBarBlurRadius:?];

    v6 = *(a1 + 32);

    [v6 _setFakeStatusBarEnabled:0];
  }

  else
  {
    [v4 _setFakeStatusBarEnabled:1];
    v12 = [*(a1 + 32) coverSheetView];
    v13 = [*(a1 + 48) value];
    [v12 setFakeStatusBarLevel:{objc_msgSend(v13, "integerValue")}];

    v14 = [*(a1 + 32) coverSheetView];
    [*(a1 + 48) blurRadius];
    [v14 setFakeStatusBarBlurRadius:?];

    v15 = [*(a1 + 32) coverSheetView];
    [*(a1 + 48) scale];
    [v15 setFakeStatusBarScale:?];

    v19 = [*(a1 + 32) coverSheetView];
    v16 = [v19 fakeStatusBar];
    [*(a1 + 48) alpha];
    [v16 setAlpha:?];
  }
}

- (BOOL)isLockScreenShowingDefaultContent
{
  v3 = [(CSCoverSheetViewController *)self isMainPageVisible];
  if (v3)
  {
    LOBYTE(v3) = ![(CSCoverSheetViewController *)self hasContentAboveCoverSheet];
  }

  return v3;
}

- (BOOL)isMainPageVisible
{
  v3 = [(CSCoverSheetViewController *)self visiblePageViewController];
  v4 = [(CSCoverSheetViewController *)self mainPageContentViewController];
  if (v3 == v4)
  {
    v5 = ![(CSCoverSheetViewController *)self _isTodayViewOverlayShowing];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)visiblePageViewController
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  v4 = [v3 scrollView];
  v5 = [v4 visiblePageRange];
  v7 = v6;

  if (v7 == 1)
  {
    v8 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isTodayViewOverlayShowing
{
  v2 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  v3 = [v2 isPresented];

  return v3;
}

- (NSSet)audioCategoriesDisablingVolumeHUD
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v3 = [v2 audioCategoriesDisablingVolumeHUD];

  return v3;
}

- (SBFOverlayControlling)overlayController
{
  overlayController = self->_overlayController;
  if (!overlayController)
  {
    v4 = [(CSCoverSheetContextProviding *)self->_coverSheetContext homeScreenOverlayProvider];
    v5 = [v4 newOverlayController];
    v6 = self->_overlayController;
    self->_overlayController = v5;

    [(SBFOverlayControlling *)self->_overlayController addHomeScreenOverlayObserver:self];
    [(SBFOverlayControlling *)self->_overlayController setDismissalDelegate:self];
    overlayController = self->_overlayController;
  }

  return overlayController;
}

- (BOOL)shouldShowLockStatusBarTime
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained coverSheetViewControllerIsShowingSecureApp:self];

  if ((v4 & 1) != 0 || self->_hasContentAboveCoverSheet && !self->_contentAboveIsControlCenter)
  {
    return 1;
  }

  if ([(CSCoverSheetViewController *)self isTransitioning])
  {
    [(CSCoverSheetViewController *)self previousAppearance];
  }

  else
  {
    [(CSCoverSheetViewController *)self activeAppearance];
  }
  v6 = ;
  v7 = [v6 componentForType:1 identifier:@"(active)"];
  v8 = objc_opt_class();
  v9 = v7;
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

  if ([v11 isHidden])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v11 hidesTime];
  }

  return v5;
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  v3 = [(CSWidgetGridViewController *)self->_complicationContainerViewController sceneHostEnvironmentEntriesForBacklightSession];
  v4 = [(CSInlineWidgetContainerViewController *)self->_inlineComplicationContainerViewController sceneHostEnvironmentEntriesForBacklightSession];
  v5 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v6 = [v5 sceneHostEnvironmentEntriesForBacklightSession];

  v7 = [MEMORY[0x277CBEB58] setWithSet:v3];
  [v7 unionSet:v6];
  [v7 unionSet:v4];
  backgroundContentViewController = self->_backgroundContentViewController;
  if (backgroundContentViewController)
  {
    v9 = [(CSBackgroundContentViewController *)backgroundContentViewController sceneHostEnvironmentEntriesForBacklightSession];
    [v7 unionSet:v9];
  }

  return v7;
}

- (void)updateStatusBarForLockScreenTeardown
{
  v3 = [*MEMORY[0x277D76620] statusBar];
  [v3 setMode:0];

  [(UIStatusBar *)self->_fakeStatusBar setMode:0];
  v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
  [v6 destroyFakeStatusBar:self->_fakeStatusBar];
  fakeStatusBar = self->_fakeStatusBar;
  self->_fakeStatusBar = 0;

  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  [v5 setFakeStatusBar:0];

  self->_statusBarInLockdownForTeardown = 1;
  [(CSCoverSheetViewController *)self _invalidateStatusBarAssertions];
}

- (void)_invalidateStatusBarAssertions
{
  v2 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
  [v2 setStatusBarHidden:0 forReason:@"CSCoverSheetFakeStatusBar"];
  [v2 clearStatusBarParameters];
}

- (void)updateStatusBarForLockScreenComeback
{
  v3 = [*MEMORY[0x277D76620] statusBar];
  [v3 setMode:2];

  fakeStatusBar = self->_fakeStatusBar;
  if (!fakeStatusBar)
  {
    v5 = [(CSCoverSheetViewController *)self _createFakeStatusBar];
    v6 = self->_fakeStatusBar;
    self->_fakeStatusBar = v5;

    fakeStatusBar = self->_fakeStatusBar;
  }

  [(UIStatusBar *)fakeStatusBar setMode:2];
  if (self->_wantsStatusBarLockItemDisabled)
  {
    v7 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
    [v7 setStatusBarPart:1 hidden:1 animationDuration:0.0];
  }

  self->_statusBarInLockdownForTeardown = 0;
  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"DashBoard Come Back"];
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "CSTeachableMomentsContainerView needs layout for updateStatusBarForLockScreenComeback", v10, 2u);
  }

  v9 = [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController view];
  [v9 setNeedsLayout];
}

- (CSCoverSheetSpotlightPresenting)coverSheetSpotlightPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);

  return WeakRetained;
}

- (void)noteDeviceBlockedStatusUpdated
{
  [(CSCoverSheetViewController *)self _addOrRemoveThermalTrapViewIfNecessaryAnimated:1];
  [(CSCoverSheetViewController *)self _addOrRemoveBlockedViewIfNecessaryAnimated:1];
  [(CSCoverSheetViewController *)self _addOrRemoveResetRestoreViewIfNecessaryAnimated:1];
  modalPresentationController = self->_modalPresentationController;

  [(CSCoverSheetViewController *)self _updateModalPresentationControllerVisibility:modalPresentationController];
}

- (void)_sendAuthenticationChangedEvent
{
  v4 = [CSEvent eventWithType:13];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_authenticated];
  [v4 setValue:v3];

  [(CSCoverSheetViewController *)self _handleEvent:v4];
}

- (void)_updateCoachingString
{
  v3 = [(CSCoverSheetViewController *)self _coachingStringToUse];
  if (v3)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = 0.0;
  }

  dateViewController = self->_dateViewController;
  v6 = [(CSCoverSheetViewController *)self _coachingStringToUse];
  [(SBFLockScreenDateViewController *)dateViewController setCustomSubtitle:v6 withPriority:1 withTimeout:v4];
}

- (id)_coachingStringToUse
{
  if (self->_screenOffMode || self->_authenticated)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_currentCoachingString;
  }

  return v3;
}

- (void)_setupQuickNoteGestureRecognizer
{
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  v4 = [v3 areRestrictedCapabilities:0x2000];

  quickNoteGestureRecognizer = self->_quickNoteGestureRecognizer;
  if (v4)
  {
    if (!quickNoteGestureRecognizer)
    {
      return;
    }

    self->_quickNoteGestureRecognizer = 0;
  }

  else
  {
    if (quickNoteGestureRecognizer)
    {
      v6 = [(CSCoverSheetViewController *)self coverSheetView];
      v7 = [v6 quickNoteGestureRecognizer];

      if (v7)
      {
        return;
      }

      v8 = self->_quickNoteGestureRecognizer;
    }

    else
    {
      v8 = 0;
    }

    [(UITapGestureRecognizer *)v8 setDelegate:0];
    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleQuickNoteLaunch_];
    v10 = self->_quickNoteGestureRecognizer;
    self->_quickNoteGestureRecognizer = v9;

    [(UITapGestureRecognizer *)self->_quickNoteGestureRecognizer setDelegate:self];
    v11 = [(SBLockScreenDefaults *)self->_lockScreenDefaults showQuickNoteFingerGestureRecognizer];
    v12 = self->_quickNoteGestureRecognizer;
    if (v11)
    {
      [(UITapGestureRecognizer *)v12 setNumberOfTouchesRequired:2];
      [(UITapGestureRecognizer *)self->_quickNoteGestureRecognizer setNumberOfTapsRequired:2];
    }

    else
    {
      [(UITapGestureRecognizer *)v12 setAllowedTouchTypes:&unk_2830798C0];
      [(UITapGestureRecognizer *)self->_quickNoteGestureRecognizer setAllowableMovement:10.0];
    }
  }

  v13 = [(CSCoverSheetViewController *)self coverSheetView];
  [v13 setQuickNoteGestureRecognizer:self->_quickNoteGestureRecognizer];
}

- (double)listMinY
{
  v3 = [(CSCoverSheetViewController *)self interfaceOrientation]- 1;
  v4 = v3 > 1;
  v5 = 0x277D75000;
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1 || v3 < 2)
  {
    [(CSCoverSheetViewController *)self timeLabelBaselineY];
    v10 = v9;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(CSCoverSheetViewController *)self timeToSubtitleLabelBaselineDifferenceY];
      v10 = v10 + v11;
    }

    [(CSCoverSheetViewController *)self prominentBaselineToListY];
    v13 = v12;
    v14 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v15 = [v14 isShowingFocusActivityView];

    if (v15)
    {
      v16 = _os_feature_enabled_impl();
      v17 = 0.0;
      if ((v16 & 1) == 0)
      {
        [(CSCoverSheetViewController *)self focusActivityHeight];
      }

      v18 = v13 - v17;
      if (v18 >= 0.0)
      {
        v13 = v18;
      }

      else
      {
        v13 = 0.0;
      }
    }

    if (__sb__runningInSpringBoard())
    {
      v19 = SBFEffectiveDeviceClass() == 2 && v4;
    }

    else
    {
      v22 = [MEMORY[0x277D75418] currentDevice];
      v19 = [v22 userInterfaceIdiom] == 1 && v4;
    }

    v23 = 0.0;
    portraitComplicationContainerHeight = 0.0;
    if (![(CSCoverSheetViewController *)self _wouldComplicationsUseBottomPosition]&& ![(CSCoverSheetViewController *)self _areComplicationsHidden]&& ((v19 | [(CSWidgetGridViewController *)self->_complicationContainerViewController isEmpty]) & 1) == 0)
    {
      portraitComplicationContainerHeight = self->_portraitComplicationContainerHeight;
    }

    if ((_os_feature_enabled_impl() & 1) == 0 && [MEMORY[0x277D65E98] showAlternateDate])
    {
      [MEMORY[0x277D65EA0] subtitleLabelToLunarDateLabelBaselineDifferenceY];
      v23 = v25;
    }

    return v10 + v13 + portraitComplicationContainerHeight + v23;
  }

  v20 = __sb__runningInSpringBoard();
  v21 = &CSListLandscapeTopY;
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v157 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v141 = [MEMORY[0x277D75418] currentDevice];
    if ([v141 userInterfaceIdiom] != 1)
    {
      v157 = 0x100000000;
      goto LABEL_33;
    }
  }

  HIDWORD(v157) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v142 = [MEMORY[0x277D759A0] mainScreen];
      [v142 _referenceBounds];
    }

    LODWORD(v157) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v44 == *(MEMORY[0x277D66E30] + 288) && v43 == *(MEMORY[0x277D66E30] + 296))
    {
      memset(v151, 0, sizeof(v151));
      v150 = 0;
      v152 = 0;
      v153 = 0;
      v149 = 0;
      v148 = 0;
      v154 = 0;
      v147 = 0;
      v146 = 0;
      v155 = 0;
      v145 = 0;
      v144 = 0;
      v156 = 0uLL;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC969A0;
      goto LABEL_90;
    }
  }

  else
  {
    LODWORD(v157) = 0;
  }

LABEL_33:
  v28 = __sb__runningInSpringBoard();
  if (v28)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v156 + 1) = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v140 = [MEMORY[0x277D75418] currentDevice];
    if ([v140 userInterfaceIdiom] != 1)
    {
      *(&v156 + 1) = 0x100000000;
      goto LABEL_42;
    }
  }

  HIDWORD(v156) = v28 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v132 = [MEMORY[0x277D759A0] mainScreen];
      [v132 _referenceBounds];
    }

    DWORD2(v156) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v46 >= *(MEMORY[0x277D66E30] + 440))
    {
      memset(v151, 0, sizeof(v151));
      v150 = 0;
      v152 = 0;
      v153 = 0;
      v149 = 0;
      v148 = 0;
      v154 = 0;
      v147 = 0;
      v146 = 0;
      v155 = 0;
      v145 = 0;
      v144 = 0;
      *&v156 = 0;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC969C8;
      goto LABEL_90;
    }
  }

  else
  {
    DWORD2(v156) = 0;
  }

LABEL_42:
  v29 = __sb__runningInSpringBoard();
  if (v29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *&v156 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v139 = [MEMORY[0x277D75418] currentDevice];
    if ([v139 userInterfaceIdiom] != 1)
    {
      *&v156 = 0x100000000;
      goto LABEL_51;
    }
  }

  DWORD1(v156) = v29 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v131 = [MEMORY[0x277D759A0] mainScreen];
      [v131 _referenceBounds];
    }

    LODWORD(v156) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v151, 0, sizeof(v151));
      v150 = 0;
      v152 = 0;
      v153 = 0;
      v149 = 0;
      v148 = 0;
      v154 = 0;
      v147 = 0;
      v146 = 0;
      v155 = 0;
      v145 = 0;
      v144 = 0;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC969B8;
      goto LABEL_90;
    }
  }

  else
  {
    LODWORD(v156) = 0;
  }

LABEL_51:
  v30 = __sb__runningInSpringBoard();
  if (v30)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v155 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v138 = [MEMORY[0x277D75418] currentDevice];
    if ([v138 userInterfaceIdiom] != 1)
    {
      v155 = 0x100000000;
      goto LABEL_60;
    }
  }

  HIDWORD(v155) = v30 ^ 1;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v135 = [MEMORY[0x277D759A0] mainScreen];
    [v135 _referenceBounds];
  }

  LODWORD(v155) = v27 ^ 1;
  BSSizeRoundForScale();
  if (v31 >= *(MEMORY[0x277D66E30] + 280))
  {
    memset(v151, 0, sizeof(v151));
    v150 = 0;
    v152 = 0;
    v153 = 0;
    v149 = 0;
    v148 = 0;
    v154 = 0;
    v147 = 0;
    v146 = 0;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC969C0;
    goto LABEL_90;
  }

LABEL_60:
  v32 = __sb__runningInSpringBoard();
  if (v32)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v154 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    v137 = [MEMORY[0x277D75418] currentDevice];
    if ([v137 userInterfaceIdiom] != 1)
    {
      v154 = 0x100000000;
      goto LABEL_70;
    }
  }

  HIDWORD(v154) = v32 ^ 1;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v133 = [MEMORY[0x277D759A0] mainScreen];
    [v133 _referenceBounds];
  }

  LODWORD(v154) = v27 ^ 1;
  BSSizeRoundForScale();
  if (v41 >= *(MEMORY[0x277D66E30] + 264))
  {
    memset(v151, 0, sizeof(v151));
    v150 = 0;
    v152 = 0;
    v153 = 0;
    v149 = 0;
    v148 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC969B0;
    goto LABEL_90;
  }

LABEL_70:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v153 = 0;
      goto LABEL_209;
    }
  }

  else
  {
    v136 = [MEMORY[0x277D75418] currentDevice];
    if ([v136 userInterfaceIdiom] != 1)
    {
      v153 = 0x100000000;
      goto LABEL_209;
    }
  }

  HIDWORD(v153) = v42 ^ 1;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v130 = [MEMORY[0x277D759A0] mainScreen];
    [v130 _referenceBounds];
  }

  LODWORD(v153) = v27 ^ 1;
  BSSizeRoundForScale();
  if (v49 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v151, 0, sizeof(v151));
    v150 = 0;
    v152 = 0;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC969A8;
    goto LABEL_90;
  }

LABEL_209:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_211;
    }

LABEL_217:
    memset(v151, 0, sizeof(v151));
    v150 = 0;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96998;
    v152 = v27 ^ 1;
    goto LABEL_90;
  }

  v134 = [MEMORY[0x277D75418] currentDevice];
  if ([v134 userInterfaceIdiom] == 1)
  {
    goto LABEL_217;
  }

LABEL_211:
  v152 = v27 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_215:
    *&v151[76] = 0;
    goto LABEL_225;
  }

  v50 = __sb__runningInSpringBoard();
  if (v50)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_215;
    }
  }

  else
  {
    v128 = [MEMORY[0x277D75418] currentDevice];
    if ([v128 userInterfaceIdiom])
    {
      *&v151[76] = 0;
      *&v151[80] = 1;
      goto LABEL_225;
    }
  }

  *&v151[80] = v50 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v121 = [MEMORY[0x277D759A0] mainScreen];
      [v121 _referenceBounds];
    }

    *&v151[76] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v151, 0, 76);
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96978;
      goto LABEL_90;
    }
  }

  else
  {
    *&v151[76] = 0;
  }

LABEL_225:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[68] = 0;
      goto LABEL_235;
    }
  }

  else
  {
    v129 = [MEMORY[0x277D75418] currentDevice];
    if ([v129 userInterfaceIdiom])
    {
      *&v151[68] = 0;
      *&v151[72] = 1;
      goto LABEL_235;
    }
  }

  *&v151[72] = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v124 = [MEMORY[0x277D759A0] mainScreen];
      [v124 _referenceBounds];
    }

    *&v151[68] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v51 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_239;
    }
  }

  else
  {
    *&v151[68] = 0;
  }

LABEL_235:
  if (_SBF_Private_IsD94Like())
  {
    memset(v151, 0, 68);
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96980;
    goto LABEL_90;
  }

LABEL_239:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_243:
    *&v151[60] = 0;
    goto LABEL_253;
  }

  v52 = __sb__runningInSpringBoard();
  if (v52)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_243;
    }
  }

  else
  {
    v125 = [MEMORY[0x277D75418] currentDevice];
    if ([v125 userInterfaceIdiom])
    {
      *&v151[60] = 0;
      *&v151[64] = 1;
      goto LABEL_253;
    }
  }

  *&v151[64] = v52 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v116 = [MEMORY[0x277D759A0] mainScreen];
      [v116 _referenceBounds];
    }

    *&v151[60] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v151, 0, 60);
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96988;
      goto LABEL_90;
    }
  }

  else
  {
    *&v151[60] = 0;
  }

LABEL_253:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[52] = 0;
      goto LABEL_263;
    }
  }

  else
  {
    v127 = [MEMORY[0x277D75418] currentDevice];
    if ([v127 userInterfaceIdiom])
    {
      *&v151[52] = 0;
      *&v151[56] = 1;
      goto LABEL_263;
    }
  }

  *&v151[56] = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v120 = [MEMORY[0x277D759A0] mainScreen];
      [v120 _referenceBounds];
    }

    *&v151[52] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v54 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_267;
    }
  }

  else
  {
    *&v151[52] = 0;
  }

LABEL_263:
  if (_SBF_Private_IsD64Like())
  {
    memset(v151, 0, 52);
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96990;
    goto LABEL_90;
  }

LABEL_267:
  v55 = __sb__runningInSpringBoard();
  if (v55)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[44] = 0;
      goto LABEL_277;
    }
  }

  else
  {
    v126 = [MEMORY[0x277D75418] currentDevice];
    if ([v126 userInterfaceIdiom])
    {
      *&v151[44] = 0;
      *&v151[48] = 1;
      goto LABEL_277;
    }
  }

  *&v151[48] = v55 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    *&v151[44] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v151, 0, 44);
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96968;
      goto LABEL_90;
    }
  }

  else
  {
    *&v151[44] = 0;
  }

LABEL_277:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[36] = 0;
      goto LABEL_287;
    }
  }

  else
  {
    v123 = [MEMORY[0x277D75418] currentDevice];
    if ([v123 userInterfaceIdiom])
    {
      *&v151[36] = 0;
      *&v151[40] = 1;
      goto LABEL_287;
    }
  }

  *&v151[40] = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v115 = [MEMORY[0x277D759A0] mainScreen];
      [v115 _referenceBounds];
    }

    *&v151[36] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_297;
    }
  }

  else
  {
    *&v151[36] = 0;
  }

LABEL_287:
  if (_SBF_Private_IsD54())
  {
    memset(v151, 0, 36);
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96970;
    goto LABEL_90;
  }

LABEL_297:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[28] = 0;
      goto LABEL_307;
    }
  }

  else
  {
    v122 = [MEMORY[0x277D75418] currentDevice];
    if ([v122 userInterfaceIdiom])
    {
      *&v151[28] = 0;
      *&v151[32] = 1;
      goto LABEL_307;
    }
  }

  *&v151[32] = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v60 = __sb__runningInSpringBoard();
    if (v60)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v112 = [MEMORY[0x277D759A0] mainScreen];
      [v112 _referenceBounds];
    }

    v27 = v60 ^ 1u;
    BSSizeRoundForScale();
    *&v151[28] = v27;
    if (v61 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v151, 0, 28);
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96928;
      goto LABEL_90;
    }
  }

  else
  {
    *&v151[28] = 0;
  }

LABEL_307:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[20] = 0;
      goto LABEL_317;
    }
  }

  else
  {
    v119 = [MEMORY[0x277D75418] currentDevice];
    if ([v119 userInterfaceIdiom])
    {
      *&v151[20] = 0;
      *&v151[24] = 1;
      goto LABEL_317;
    }
  }

  *&v151[24] = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v111 = [MEMORY[0x277D759A0] mainScreen];
      [v111 _referenceBounds];
    }

    *&v151[20] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_326;
    }
  }

  else
  {
    *&v151[20] = 0;
  }

LABEL_317:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    memset(v151, 0, 20);
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96930;
    goto LABEL_90;
  }

LABEL_326:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_330:
    *&v151[12] = 0;
    goto LABEL_337;
  }

  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_330;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom])
    {
      *&v151[12] = 0;
      *&v151[16] = 1;
      goto LABEL_337;
    }
  }

  *&v151[16] = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v64 = __sb__runningInSpringBoard();
    if (v64)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v105 = [MEMORY[0x277D759A0] mainScreen];
      [v105 _referenceBounds];
    }

    v27 = v64 ^ 1u;
    BSSizeRoundForScale();
    *&v151[12] = v27;
    if (v67 >= *(MEMORY[0x277D66E30] + 184))
    {
      *&v151[4] = 0;
      *v151 = 0;
      v149 = 0;
      v150 = 0;
      v147 = 0;
      v148 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96918;
      goto LABEL_90;
    }
  }

  else
  {
    *&v151[12] = 0;
  }

LABEL_337:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *&v151[4] = 0;
      goto LABEL_347;
    }
  }

  else
  {
    v118 = [MEMORY[0x277D75418] currentDevice];
    if ([v118 userInterfaceIdiom])
    {
      *&v151[4] = 0;
      *&v151[8] = 1;
      goto LABEL_347;
    }
  }

  *&v151[8] = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    *&v151[4] = v27 ^ 1;
    BSSizeRoundForScale();
    if (v65 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_351;
    }
  }

  else
  {
    *&v151[4] = 0;
  }

LABEL_347:
  if (_SBF_Private_IsD93Like())
  {
    *v151 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96920;
    goto LABEL_90;
  }

LABEL_351:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_355:
    *v151 = 0;
    HIDWORD(v150) = 0;
    goto LABEL_365;
  }

  v66 = __sb__runningInSpringBoard();
  if (v66)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_355;
    }
  }

  else
  {
    v110 = [MEMORY[0x277D75418] currentDevice];
    if ([v110 userInterfaceIdiom])
    {
      HIDWORD(v150) = 0;
      *v151 = 1;
      goto LABEL_365;
    }
  }

  *v151 = v66 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v68 = __sb__runningInSpringBoard();
    if (v68)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v101 = [MEMORY[0x277D759A0] mainScreen];
      [v101 _referenceBounds];
    }

    v27 = v68 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v150) = v27;
    if (v71 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v150) = 0;
      v148 = 0;
      v149 = 0;
      v146 = 0;
      v147 = 0;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96948;
      goto LABEL_90;
    }
  }

  else
  {
    HIDWORD(v150) = 0;
  }

LABEL_365:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v150) = 0;
      HIDWORD(v149) = 0;
      goto LABEL_375;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom])
    {
      HIDWORD(v149) = 0;
      LODWORD(v150) = 1;
      goto LABEL_375;
    }
  }

  LODWORD(v150) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v104 = [MEMORY[0x277D759A0] mainScreen];
      [v104 _referenceBounds];
    }

    HIDWORD(v149) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v69 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_379;
    }
  }

  else
  {
    HIDWORD(v149) = 0;
  }

LABEL_375:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v149) = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96950;
    goto LABEL_90;
  }

LABEL_379:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_383:
    LODWORD(v149) = 0;
    HIDWORD(v148) = 0;
    goto LABEL_393;
  }

  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_383;
    }
  }

  else
  {
    v106 = [MEMORY[0x277D75418] currentDevice];
    if ([v106 userInterfaceIdiom])
    {
      HIDWORD(v148) = 0;
      LODWORD(v149) = 1;
      goto LABEL_393;
    }
  }

  LODWORD(v149) = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    HIDWORD(v148) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v76 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v148) = 0;
      v146 = 0;
      v147 = 0;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96958;
      goto LABEL_90;
    }
  }

  else
  {
    HIDWORD(v148) = 0;
  }

LABEL_393:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v148) = 0;
      HIDWORD(v147) = 0;
      goto LABEL_403;
    }
  }

  else
  {
    v109 = [MEMORY[0x277D75418] currentDevice];
    if ([v109 userInterfaceIdiom])
    {
      HIDWORD(v147) = 0;
      LODWORD(v148) = 1;
      goto LABEL_403;
    }
  }

  LODWORD(v148) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    HIDWORD(v147) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_407;
    }
  }

  else
  {
    HIDWORD(v147) = 0;
  }

LABEL_403:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v147) = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96960;
    goto LABEL_90;
  }

LABEL_407:
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v147) = 0;
      HIDWORD(v146) = 0;
      goto LABEL_417;
    }
  }

  else
  {
    v107 = [MEMORY[0x277D75418] currentDevice];
    if ([v107 userInterfaceIdiom])
    {
      HIDWORD(v146) = 0;
      LODWORD(v147) = 1;
      goto LABEL_417;
    }
  }

  LODWORD(v147) = v73 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v74 = __sb__runningInSpringBoard();
    if (v74)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v98 = [MEMORY[0x277D759A0] mainScreen];
      [v98 _referenceBounds];
    }

    v27 = v74 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v146) = v27;
    if (v75 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v146) = 0;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96938;
      goto LABEL_90;
    }
  }

  else
  {
    HIDWORD(v146) = 0;
  }

LABEL_417:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v146) = 0;
      HIDWORD(v145) = 0;
      goto LABEL_427;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      HIDWORD(v145) = 0;
      LODWORD(v146) = 1;
      goto LABEL_427;
    }
  }

  LODWORD(v146) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    HIDWORD(v145) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v77 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_437;
    }
  }

  else
  {
    HIDWORD(v145) = 0;
  }

LABEL_427:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v145) = 0;
    v143 = 0;
    v144 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96940;
    goto LABEL_90;
  }

LABEL_437:
  v78 = __sb__runningInSpringBoard();
  if (v78)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v145) = 0;
      HIDWORD(v144) = 0;
      goto LABEL_447;
    }
  }

  else
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      HIDWORD(v144) = 0;
      LODWORD(v145) = 1;
      goto LABEL_447;
    }
  }

  LODWORD(v145) = v78 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v95 = [MEMORY[0x277D759A0] mainScreen];
      [v95 _referenceBounds];
    }

    HIDWORD(v144) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v79 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v144) = 0;
      v143 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96908;
      goto LABEL_90;
    }
  }

  else
  {
    HIDWORD(v144) = 0;
  }

LABEL_447:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v144) = 0;
      HIDWORD(v143) = 0;
      goto LABEL_457;
    }
  }

  else
  {
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      HIDWORD(v143) = 0;
      LODWORD(v144) = 1;
      goto LABEL_457;
    }
  }

  LODWORD(v144) = v27 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v94 = [MEMORY[0x277D759A0] mainScreen];
      [v94 _referenceBounds];
    }

    HIDWORD(v143) = v27 ^ 1;
    BSSizeRoundForScale();
    if (v80 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_464;
    }
  }

  else
  {
    HIDWORD(v143) = 0;
  }

LABEL_457:
  if (_SBF_Private_IsD53())
  {
    LODWORD(v143) = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC96910;
    goto LABEL_90;
  }

LABEL_464:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v143) = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC968E8;
    goto LABEL_90;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    LODWORD(v143) = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC968F0;
    goto LABEL_90;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v143) = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC968D8;
    goto LABEL_90;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v143) = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC968E0;
    goto LABEL_90;
  }

  v81 = __sb__runningInSpringBoard();
  if (v81)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v143) = 0;
      v33 = 0;
      goto LABEL_484;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      v33 = 0;
      LODWORD(v143) = 1;
      goto LABEL_484;
    }
  }

  LODWORD(v143) = v81 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    v33 = v27 ^ 1;
    BSSizeRoundForScale();
    if (v85 >= *(MEMORY[0x277D66E30] + 88))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC968F8;
      goto LABEL_90;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_484:
  v82 = __sb__runningInSpringBoard();
  if (v82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v34 = 0;
      v35 = 0;
      goto LABEL_494;
    }
  }

  else
  {
    v92 = [MEMORY[0x277D75418] currentDevice];
    if ([v92 userInterfaceIdiom])
    {
      v35 = 0;
      v34 = 1;
      goto LABEL_494;
    }
  }

  v34 = v82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v27 = __sb__runningInSpringBoard();
    if (v27)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v89 = [MEMORY[0x277D759A0] mainScreen];
      [v89 _referenceBounds];
    }

    v35 = v27 ^ 1;
    BSSizeRoundForScale();
    if (v86 >= *(MEMORY[0x277D66E30] + 72))
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = &qword_21EC96900;
      goto LABEL_90;
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_494:
  v83 = __sb__runningInSpringBoard();
  if (v83)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_504;
    }
  }

  else
  {
    v91 = [MEMORY[0x277D75418] currentDevice];
    if ([v91 userInterfaceIdiom])
    {
      v37 = 0;
      v36 = 1;
      goto LABEL_504;
    }
  }

  v36 = v83 ^ 1;
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v21 = [MEMORY[0x277D759A0] mainScreen];
    [v21 _referenceBounds];
  }

  v37 = v27 ^ 1;
  BSSizeRoundForScale();
  if (v84 >= *(MEMORY[0x277D66E30] + 56))
  {
    v38 = 0;
    v39 = 0;
    v40 = &qword_21EC968D0;
    goto LABEL_90;
  }

LABEL_504:
  v27 = __sb__runningInSpringBoard();
  if (v27)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v38 = 0;
      v39 = 0;
LABEL_521:
      v40 = &CSListLandscapeTopY;
      goto LABEL_90;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
      v39 = 0;
      v38 = 1;
      goto LABEL_521;
    }
  }

  v38 = v27 ^ 1;
  v87 = __sb__runningInSpringBoard();
  if (v87)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v27 = [MEMORY[0x277D759A0] mainScreen];
    [v27 _referenceBounds];
  }

  v39 = v87 ^ 1;
  BSSizeRoundForScale();
  if (v88 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_521;
  }

  v40 = &qword_21EC968C8;
LABEL_90:
  v26 = *v40;
  if (v39)
  {
  }

  if (v38)
  {
  }

  if (v37)
  {

    if (!v36)
    {
      goto LABEL_96;
    }
  }

  else if (!v36)
  {
LABEL_96:
    if (v35)
    {
      goto LABEL_97;
    }

    goto LABEL_203;
  }

  if (v35)
  {
LABEL_97:

    if (!v34)
    {
      goto LABEL_98;
    }

LABEL_204:

    if (!v33)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_203:
  if (v34)
  {
    goto LABEL_204;
  }

LABEL_98:
  if (v33)
  {
LABEL_99:
  }

LABEL_100:
  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (HIDWORD(v148))
  {
  }

  if (v149)
  {
  }

  if (HIDWORD(v149))
  {
  }

  if (v150)
  {
  }

  if (HIDWORD(v150))
  {
  }

  if (*v151)
  {
  }

  if (*&v151[4])
  {
  }

  if (*&v151[8])
  {
  }

  if (*&v151[12])
  {
  }

  if (*&v151[16])
  {
  }

  if (*&v151[20])
  {
  }

  if (*&v151[24])
  {
  }

  if (*&v151[28])
  {
  }

  if (*&v151[32])
  {
  }

  if (*&v151[36])
  {
  }

  if (*&v151[40])
  {
  }

  if (*&v151[44])
  {
  }

  if (*&v151[48])
  {
  }

  if (*&v151[52])
  {
  }

  if (*&v151[56])
  {
  }

  if (*&v151[60])
  {
  }

  if (*&v151[64])
  {
  }

  if (*&v151[68])
  {
  }

  if (*&v151[72])
  {
  }

  if (*&v151[76])
  {
  }

  if (*&v151[80])
  {
  }

  if (v152)
  {
  }

  if (v153)
  {
  }

  if (HIDWORD(v153))
  {
  }

  if (v154)
  {
  }

  if (HIDWORD(v154))
  {
  }

  if (v155)
  {
  }

  if (HIDWORD(v155))
  {
  }

  if (v156)
  {
  }

  if (DWORD1(v156))
  {
  }

  if (DWORD2(v156))
  {
  }

  if (HIDWORD(v156))
  {
  }

  if (v157)
  {
  }

  if (HIDWORD(v157))
  {
  }

  return v26;
}

- (double)timeLabelBaselineY
{
  if (_os_feature_enabled_impl())
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([(CSCoverSheetViewController *)self interfaceOrientation]- 1) <= 1)
    {
      [getCSProminentLayoutControllerClass() frameForElements:1 variant:1 forcePortraitBounds:1];
      CGRectGetMaxY(v326);
      SBFMainScreenScale();
      BSFloatRoundForScale();
LABEL_419:
      SBFMainScreenScale();

      BSFloatRoundForScale();
      return result;
    }

    v14 = __sb__runningInSpringBoard();
    if (v14)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v324 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v300 = [MEMORY[0x277D75418] currentDevice];
      if ([v300 userInterfaceIdiom] != 1)
      {
        v324 = 0x100000000;
        goto LABEL_41;
      }
    }

    HIDWORD(v324) = v14 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v17 = __sb__runningInSpringBoard();
      if (v17)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v303 = [MEMORY[0x277D759A0] mainScreen];
        [v303 _referenceBounds];
      }

      LODWORD(v324) = v17 ^ 1;
      BSSizeRoundForScale();
      if (v52 == *(MEMORY[0x277D66E30] + 288) && v51 == *(MEMORY[0x277D66E30] + 296))
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v306 = 0;
        v309 = 0;
        v312 = 0;
        v315 = 0;
        v318 = 0;
        memset(v321, 0, sizeof(v321));
        v322 = 0;
        v323 = 0;
        goto LABEL_184;
      }
    }

    else
    {
      LODWORD(v324) = 0;
    }

LABEL_41:
    v21 = __sb__runningInSpringBoard();
    if (v21)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v323 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v297 = [MEMORY[0x277D75418] currentDevice];
      if ([v297 userInterfaceIdiom] != 1)
      {
        v323 = 0x100000000;
        goto LABEL_59;
      }
    }

    HIDWORD(v323) = v21 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v17 = __sb__runningInSpringBoard();
      if (v17)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v289 = [MEMORY[0x277D759A0] mainScreen];
        [v289 _referenceBounds];
      }

      LODWORD(v323) = v17 ^ 1;
      BSSizeRoundForScale();
      if (v57 >= *(MEMORY[0x277D66E30] + 440))
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v306 = 0;
        v309 = 0;
        v312 = 0;
        v315 = 0;
        v318 = 0;
        memset(v321, 0, sizeof(v321));
        v322 = 0;
        goto LABEL_184;
      }
    }

    else
    {
      LODWORD(v323) = 0;
    }

LABEL_59:
    v23 = __sb__runningInSpringBoard();
    if (v23)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v322 = 0;
        goto LABEL_77;
      }
    }

    else
    {
      v296 = [MEMORY[0x277D75418] currentDevice];
      if ([v296 userInterfaceIdiom] != 1)
      {
        v322 = 0x100000000;
        goto LABEL_77;
      }
    }

    HIDWORD(v322) = v23 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v17 = __sb__runningInSpringBoard();
      if (v17)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v288 = [MEMORY[0x277D759A0] mainScreen];
        [v288 _referenceBounds];
      }

      LODWORD(v322) = v17 ^ 1;
      BSSizeRoundForScale();
      if (v61 >= *(MEMORY[0x277D66E30] + 376))
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v306 = 0;
        v309 = 0;
        v312 = 0;
        v315 = 0;
        v318 = 0;
        memset(v321, 0, sizeof(v321));
        goto LABEL_184;
      }
    }

    else
    {
      LODWORD(v322) = 0;
    }

LABEL_77:
    v25 = __sb__runningInSpringBoard();
    if (v25)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[15] = 0;
        goto LABEL_94;
      }
    }

    else
    {
      v295 = [MEMORY[0x277D75418] currentDevice];
      if ([v295 userInterfaceIdiom] != 1)
      {
        v321[15] = 0x100000000;
        goto LABEL_94;
      }
    }

    HIDWORD(v321[15]) = v25 ^ 1;
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v292 = [MEMORY[0x277D759A0] mainScreen];
      [v292 _referenceBounds];
    }

    LODWORD(v321[15]) = v17 ^ 1;
    BSSizeRoundForScale();
    if (v28 >= *(MEMORY[0x277D66E30] + 280))
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v306 = 0;
      v309 = 0;
      v312 = 0;
      v315 = 0;
      v318 = 0;
      memset(v321, 0, 120);
      goto LABEL_184;
    }

LABEL_94:
    v29 = __sb__runningInSpringBoard();
    if (v29)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[14] = 0;
        goto LABEL_114;
      }
    }

    else
    {
      v294 = [MEMORY[0x277D75418] currentDevice];
      if ([v294 userInterfaceIdiom] != 1)
      {
        v321[14] = 0x100000000;
        goto LABEL_114;
      }
    }

    HIDWORD(v321[14]) = v29 ^ 1;
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v290 = [MEMORY[0x277D759A0] mainScreen];
      [v290 _referenceBounds];
    }

    LODWORD(v321[14]) = v17 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 264))
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v306 = 0;
      v309 = 0;
      v312 = 0;
      v315 = 0;
      v318 = 0;
      memset(v321, 0, 112);
      goto LABEL_184;
    }

LABEL_114:
    v48 = __sb__runningInSpringBoard();
    if (v48)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[13] = 0;
        goto LABEL_441;
      }
    }

    else
    {
      v293 = [MEMORY[0x277D75418] currentDevice];
      if ([v293 userInterfaceIdiom] != 1)
      {
        v321[13] = 0x100000000;
        goto LABEL_441;
      }
    }

    HIDWORD(v321[13]) = v48 ^ 1;
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v287 = [MEMORY[0x277D759A0] mainScreen];
      [v287 _referenceBounds];
    }

    LODWORD(v321[13]) = v17 ^ 1;
    BSSizeRoundForScale();
    if (v68 >= *(MEMORY[0x277D66E30] + 248))
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v306 = 0;
      v309 = 0;
      v312 = 0;
      v315 = 0;
      v318 = 0;
      memset(v321, 0, 104);
      goto LABEL_184;
    }

LABEL_441:
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_443;
      }
    }

    else
    {
      v291 = [MEMORY[0x277D75418] currentDevice];
      if ([v291 userInterfaceIdiom] != 1)
      {
LABEL_443:
        HIDWORD(v321[12]) = v17 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_447:
          *(&v321[11] + 4) = 0;
          goto LABEL_691;
        }

        v69 = __sb__runningInSpringBoard();
        if (v69)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_447;
          }
        }

        else
        {
          v285 = [MEMORY[0x277D75418] currentDevice];
          if ([v285 userInterfaceIdiom])
          {
            HIDWORD(v321[11]) = 0;
            LODWORD(v321[12]) = 1;
            goto LABEL_691;
          }
        }

        LODWORD(v321[12]) = v69 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v278 = [MEMORY[0x277D759A0] mainScreen];
            [v278 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v321[11]) = v17 ^ 1;
          if (v111 >= *(MEMORY[0x277D66E30] + 200))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            v318 = 0;
            memset(v321, 0, 92);
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v321[11]) = 0;
        }

LABEL_691:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[10] + 4) = 0;
            goto LABEL_701;
          }
        }

        else
        {
          v286 = [MEMORY[0x277D75418] currentDevice];
          if ([v286 userInterfaceIdiom])
          {
            HIDWORD(v321[10]) = 0;
            LODWORD(v321[11]) = 1;
            goto LABEL_701;
          }
        }

        LODWORD(v321[11]) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v281 = [MEMORY[0x277D759A0] mainScreen];
            [v281 _referenceBounds];
          }

          HIDWORD(v321[10]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v106 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_705;
          }
        }

        else
        {
          HIDWORD(v321[10]) = 0;
        }

LABEL_701:
        if (_SBF_Private_IsD94Like())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v315 = 0;
          v318 = 0;
          memset(v321, 0, 84);
          goto LABEL_184;
        }

LABEL_705:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_709:
          *(&v321[9] + 4) = 0;
          goto LABEL_747;
        }

        v107 = __sb__runningInSpringBoard();
        if (v107)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_709;
          }
        }

        else
        {
          v282 = [MEMORY[0x277D75418] currentDevice];
          if ([v282 userInterfaceIdiom])
          {
            HIDWORD(v321[9]) = 0;
            LODWORD(v321[10]) = 1;
            goto LABEL_747;
          }
        }

        LODWORD(v321[10]) = v107 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v273 = [MEMORY[0x277D759A0] mainScreen];
            [v273 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v321[9]) = v17 ^ 1;
          if (v125 >= *(MEMORY[0x277D66E30] + 136))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            v318 = 0;
            memset(v321, 0, 76);
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v321[9]) = 0;
        }

LABEL_747:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[8] + 4) = 0;
            goto LABEL_757;
          }
        }

        else
        {
          v284 = [MEMORY[0x277D75418] currentDevice];
          if ([v284 userInterfaceIdiom])
          {
            HIDWORD(v321[8]) = 0;
            LODWORD(v321[9]) = 1;
            goto LABEL_757;
          }
        }

        LODWORD(v321[9]) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v277 = [MEMORY[0x277D759A0] mainScreen];
            [v277 _referenceBounds];
          }

          HIDWORD(v321[8]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v113 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_761;
          }
        }

        else
        {
          HIDWORD(v321[8]) = 0;
        }

LABEL_757:
        if (_SBF_Private_IsD64Like())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v315 = 0;
          v318 = 0;
          memset(v321, 0, 68);
          goto LABEL_184;
        }

LABEL_761:
        v114 = __sb__runningInSpringBoard();
        if (v114)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[7] + 4) = 0;
            goto LABEL_771;
          }
        }

        else
        {
          v283 = [MEMORY[0x277D75418] currentDevice];
          if ([v283 userInterfaceIdiom])
          {
            HIDWORD(v321[7]) = 0;
            LODWORD(v321[8]) = 1;
            goto LABEL_771;
          }
        }

        LODWORD(v321[8]) = v114 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v274 = [MEMORY[0x277D759A0] mainScreen];
            [v274 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v321[7]) = v17 ^ 1;
          if (v123 >= *(MEMORY[0x277D66E30] + 136))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            v318 = 0;
            memset(v321, 0, 60);
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v321[7]) = 0;
        }

LABEL_771:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[6] + 4) = 0;
            goto LABEL_865;
          }
        }

        else
        {
          v280 = [MEMORY[0x277D75418] currentDevice];
          if ([v280 userInterfaceIdiom])
          {
            HIDWORD(v321[6]) = 0;
            LODWORD(v321[7]) = 1;
            goto LABEL_865;
          }
        }

        LODWORD(v321[7]) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v272 = [MEMORY[0x277D759A0] mainScreen];
            [v272 _referenceBounds];
          }

          HIDWORD(v321[6]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v129 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_893;
          }
        }

        else
        {
          HIDWORD(v321[6]) = 0;
        }

LABEL_865:
        if (_SBF_Private_IsD54())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v315 = 0;
          v318 = 0;
          memset(v321, 0, 52);
          goto LABEL_184;
        }

LABEL_893:
        v130 = __sb__runningInSpringBoard();
        if (v130)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[5] + 4) = 0;
            goto LABEL_911;
          }
        }

        else
        {
          v279 = [MEMORY[0x277D75418] currentDevice];
          if ([v279 userInterfaceIdiom])
          {
            HIDWORD(v321[5]) = 0;
            LODWORD(v321[6]) = 1;
            goto LABEL_911;
          }
        }

        LODWORD(v321[6]) = v130 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v269 = [MEMORY[0x277D759A0] mainScreen];
            [v269 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v321[5]) = v17 ^ 1;
          if (v142 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            v318 = 0;
            memset(v321, 0, 44);
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v321[5]) = 0;
        }

LABEL_911:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[4] + 4) = 0;
            goto LABEL_999;
          }
        }

        else
        {
          v276 = [MEMORY[0x277D75418] currentDevice];
          if ([v276 userInterfaceIdiom])
          {
            HIDWORD(v321[4]) = 0;
            LODWORD(v321[5]) = 1;
            goto LABEL_999;
          }
        }

        LODWORD(v321[5]) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v268 = [MEMORY[0x277D759A0] mainScreen];
            [v268 _referenceBounds];
          }

          HIDWORD(v321[4]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v146 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1043;
          }
        }

        else
        {
          HIDWORD(v321[4]) = 0;
        }

LABEL_999:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v315 = 0;
          v318 = 0;
          memset(v321, 0, 36);
          goto LABEL_184;
        }

LABEL_1043:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1047:
          *(&v321[3] + 4) = 0;
          goto LABEL_1113;
        }

        v147 = __sb__runningInSpringBoard();
        if (v147)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1047;
          }
        }

        else
        {
          v271 = [MEMORY[0x277D75418] currentDevice];
          if ([v271 userInterfaceIdiom])
          {
            HIDWORD(v321[3]) = 0;
            LODWORD(v321[4]) = 1;
            goto LABEL_1113;
          }
        }

        LODWORD(v321[4]) = v147 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v262 = [MEMORY[0x277D759A0] mainScreen];
            [v262 _referenceBounds];
          }

          HIDWORD(v321[3]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v166 >= *(MEMORY[0x277D66E30] + 184))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            v318 = 0;
            memset(v321, 0, 28);
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v321[3]) = 0;
        }

LABEL_1113:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[2] + 4) = 0;
            goto LABEL_1123;
          }
        }

        else
        {
          v275 = [MEMORY[0x277D75418] currentDevice];
          if ([v275 userInterfaceIdiom])
          {
            HIDWORD(v321[2]) = 0;
            LODWORD(v321[3]) = 1;
            goto LABEL_1123;
          }
        }

        LODWORD(v321[3]) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v265 = [MEMORY[0x277D759A0] mainScreen];
            [v265 _referenceBounds];
          }

          HIDWORD(v321[2]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v156 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1127;
          }
        }

        else
        {
          HIDWORD(v321[2]) = 0;
        }

LABEL_1123:
        if (_SBF_Private_IsD93Like())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v315 = 0;
          v318 = 0;
          memset(v321, 0, 20);
          goto LABEL_184;
        }

LABEL_1127:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1131:
          *(&v321[1] + 4) = 0;
          goto LABEL_1195;
        }

        v157 = __sb__runningInSpringBoard();
        if (v157)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1131;
          }
        }

        else
        {
          v267 = [MEMORY[0x277D75418] currentDevice];
          if ([v267 userInterfaceIdiom])
          {
            HIDWORD(v321[1]) = 0;
            LODWORD(v321[2]) = 1;
            goto LABEL_1195;
          }
        }

        LODWORD(v321[2]) = v157 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v258 = [MEMORY[0x277D759A0] mainScreen];
            [v258 _referenceBounds];
          }

          HIDWORD(v321[1]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v176 >= *(MEMORY[0x277D66E30] + 104))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            v318 = 0;
            v321[0] = 0;
            LODWORD(v321[1]) = 0;
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v321[1]) = 0;
        }

LABEL_1195:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v321 + 4) = 0;
            goto LABEL_1205;
          }
        }

        else
        {
          v270 = [MEMORY[0x277D75418] currentDevice];
          if ([v270 userInterfaceIdiom])
          {
            HIDWORD(v321[0]) = 0;
            LODWORD(v321[1]) = 1;
            goto LABEL_1205;
          }
        }

        LODWORD(v321[1]) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v261 = [MEMORY[0x277D759A0] mainScreen];
            [v261 _referenceBounds];
          }

          HIDWORD(v321[0]) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v168 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1209;
          }
        }

        else
        {
          HIDWORD(v321[0]) = 0;
        }

LABEL_1205:
        if (_SBF_Private_IsD63Like())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          v315 = 0;
          v318 = 0;
          LODWORD(v321[0]) = 0;
          goto LABEL_184;
        }

LABEL_1209:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1213:
          HIDWORD(v318) = 0;
          LODWORD(v321[0]) = 0;
          goto LABEL_1307;
        }

        v169 = __sb__runningInSpringBoard();
        if (v169)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1213;
          }
        }

        else
        {
          v263 = [MEMORY[0x277D75418] currentDevice];
          if ([v263 userInterfaceIdiom])
          {
            HIDWORD(v318) = 0;
            LODWORD(v321[0]) = 1;
            goto LABEL_1307;
          }
        }

        LODWORD(v321[0]) = v169 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v254 = [MEMORY[0x277D759A0] mainScreen];
            [v254 _referenceBounds];
          }

          HIDWORD(v318) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v190 >= *(MEMORY[0x277D66E30] + 216))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            v312 = 0;
            v315 = 0;
            LODWORD(v318) = 0;
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v318) = 0;
        }

LABEL_1307:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v315) = 0;
            LODWORD(v318) = 0;
            goto LABEL_1317;
          }
        }

        else
        {
          v266 = [MEMORY[0x277D75418] currentDevice];
          if ([v266 userInterfaceIdiom])
          {
            HIDWORD(v315) = 0;
            LODWORD(v318) = 1;
            goto LABEL_1317;
          }
        }

        LODWORD(v318) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v257 = [MEMORY[0x277D759A0] mainScreen];
            [v257 _referenceBounds];
          }

          HIDWORD(v315) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v180 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1321;
          }
        }

        else
        {
          HIDWORD(v315) = 0;
        }

LABEL_1317:
        if (_SBF_Private_IsD23Like())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          v309 = 0;
          v312 = 0;
          LODWORD(v315) = 0;
          goto LABEL_184;
        }

LABEL_1321:
        v181 = __sb__runningInSpringBoard();
        if (v181)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v312) = 0;
            LODWORD(v315) = 0;
            goto LABEL_1331;
          }
        }

        else
        {
          v264 = [MEMORY[0x277D75418] currentDevice];
          if ([v264 userInterfaceIdiom])
          {
            HIDWORD(v312) = 0;
            LODWORD(v315) = 1;
            goto LABEL_1331;
          }
        }

        LODWORD(v315) = v181 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v255 = [MEMORY[0x277D759A0] mainScreen];
            [v255 _referenceBounds];
          }

          HIDWORD(v312) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v188 >= *(MEMORY[0x277D66E30] + 120))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v306 = 0;
            v309 = 0;
            LODWORD(v312) = 0;
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v312) = 0;
        }

LABEL_1331:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v309) = 0;
            LODWORD(v312) = 0;
            goto LABEL_1425;
          }
        }

        else
        {
          v260 = [MEMORY[0x277D75418] currentDevice];
          if ([v260 userInterfaceIdiom])
          {
            HIDWORD(v309) = 0;
            LODWORD(v312) = 1;
            goto LABEL_1425;
          }
        }

        LODWORD(v312) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v253 = [MEMORY[0x277D759A0] mainScreen];
            [v253 _referenceBounds];
          }

          HIDWORD(v309) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v194 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1453;
          }
        }

        else
        {
          HIDWORD(v309) = 0;
        }

LABEL_1425:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v306 = 0;
          LODWORD(v309) = 0;
          goto LABEL_184;
        }

LABEL_1453:
        v195 = __sb__runningInSpringBoard();
        if (v195)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v306) = 0;
            LODWORD(v309) = 0;
            goto LABEL_1471;
          }
        }

        else
        {
          v259 = [MEMORY[0x277D75418] currentDevice];
          if ([v259 userInterfaceIdiom])
          {
            HIDWORD(v306) = 0;
            LODWORD(v309) = 1;
            goto LABEL_1471;
          }
        }

        LODWORD(v309) = v195 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v252 = [MEMORY[0x277D759A0] mainScreen];
            [v252 _referenceBounds];
          }

          HIDWORD(v306) = v17 ^ 1;
          BSSizeRoundForScale();
          if (v204 >= *(MEMORY[0x277D66E30] + 104))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            LODWORD(v306) = 0;
            goto LABEL_184;
          }
        }

        else
        {
          HIDWORD(v306) = 0;
        }

LABEL_1471:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v40 = 0;
            LODWORD(v306) = 0;
            goto LABEL_1571;
          }
        }

        else
        {
          v256 = [MEMORY[0x277D75418] currentDevice];
          if ([v256 userInterfaceIdiom])
          {
            v40 = 0;
            LODWORD(v306) = 1;
            goto LABEL_1571;
          }
        }

        LODWORD(v306) = v17 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v251 = [MEMORY[0x277D759A0] mainScreen];
            [v251 _referenceBounds];
          }

          v40 = v17 ^ 1;
          BSSizeRoundForScale();
          if (v212 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1615;
          }
        }

        else
        {
          v40 = 0;
        }

LABEL_1571:
        if (_SBF_Private_IsD53())
        {
LABEL_1617:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          goto LABEL_184;
        }

LABEL_1615:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice() & 1) != 0)
        {
          goto LABEL_1617;
        }

        v214 = __sb__runningInSpringBoard();
        if (v214)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v38 = 0;
            v39 = 0;
            goto LABEL_1722;
          }
        }

        else
        {
          v250 = [MEMORY[0x277D75418] currentDevice];
          if ([v250 userInterfaceIdiom])
          {
            v38 = 0;
            v39 = 1;
            goto LABEL_1722;
          }
        }

        v39 = v214 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v246 = [MEMORY[0x277D759A0] mainScreen];
            [v246 _referenceBounds];
          }

          v38 = v17 ^ 1;
          BSSizeRoundForScale();
          if (v227 >= *(MEMORY[0x277D66E30] + 88))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            goto LABEL_184;
          }
        }

        else
        {
          v38 = 0;
        }

LABEL_1722:
        v222 = __sb__runningInSpringBoard();
        if (v222)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v36 = 0;
            v37 = 0;
            goto LABEL_1742;
          }
        }

        else
        {
          v249 = [MEMORY[0x277D75418] currentDevice];
          if ([v249 userInterfaceIdiom])
          {
            v36 = 0;
            v37 = 1;
            goto LABEL_1742;
          }
        }

        v37 = v222 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v17 = __sb__runningInSpringBoard();
          if (v17)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v245 = [MEMORY[0x277D759A0] mainScreen];
            [v245 _referenceBounds];
          }

          v36 = v17 ^ 1;
          BSSizeRoundForScale();
          if (v229 >= *(MEMORY[0x277D66E30] + 72))
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            goto LABEL_184;
          }
        }

        else
        {
          v36 = 0;
        }

LABEL_1742:
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v34 = 0;
            v35 = 0;
            goto LABEL_1762;
          }
        }

        else
        {
          v248 = [MEMORY[0x277D75418] currentDevice];
          if ([v248 userInterfaceIdiom])
          {
            v34 = 0;
            v35 = 1;
            goto LABEL_1762;
          }
        }

        v35 = v17 ^ 1;
        v17 = __sb__runningInSpringBoard();
        if (v17)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v247 = [MEMORY[0x277D759A0] mainScreen];
          [v247 _referenceBounds];
        }

        v34 = v17 ^ 1;
        BSSizeRoundForScale();
        if (v224 >= *(MEMORY[0x277D66E30] + 56))
        {
          v32 = 0;
          v33 = 0;
          goto LABEL_184;
        }

LABEL_1762:
        v225 = __sb__runningInSpringBoard();
        if (v225)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v32 = 0;
            v33 = 0;
LABEL_1796:
            v27 = v244;
LABEL_184:
            if (v32)
            {

              if (!v33)
              {
                goto LABEL_186;
              }
            }

            else if (!v33)
            {
LABEL_186:
              if (!v34)
              {
                goto LABEL_188;
              }

              goto LABEL_187;
            }

            if (!v34)
            {
LABEL_188:
              if (v35)
              {

                if (!v36)
                {
                  goto LABEL_190;
                }
              }

              else if (!v36)
              {
LABEL_190:
                if (v37)
                {
                  goto LABEL_191;
                }

                goto LABEL_200;
              }

              if (v37)
              {
LABEL_191:

                if (!v38)
                {
                  goto LABEL_192;
                }

                goto LABEL_201;
              }

LABEL_200:
              if (!v38)
              {
LABEL_192:
                if (v39)
                {
                  goto LABEL_193;
                }

                goto LABEL_202;
              }

LABEL_201:

              if (v39)
              {
LABEL_193:

                if (!v40)
                {
                  goto LABEL_204;
                }

                goto LABEL_203;
              }

LABEL_202:
              if (!v40)
              {
LABEL_204:
                if (v306)
                {
                }

                if (HIDWORD(v306))
                {
                }

                if (v309)
                {
                }

                if (HIDWORD(v309))
                {
                }

                if (v312)
                {
                }

                if (HIDWORD(v312))
                {
                }

                if (v315)
                {
                }

                if (HIDWORD(v315))
                {
                }

                if (v318)
                {
                }

                if (HIDWORD(v318))
                {
                }

                if (LODWORD(v321[0]))
                {
                }

                if (HIDWORD(v321[0]))
                {
                }

                if (LODWORD(v321[1]))
                {
                }

                if (HIDWORD(v321[1]))
                {
                }

                if (LODWORD(v321[2]))
                {
                }

                if (HIDWORD(v321[2]))
                {
                }

                if (LODWORD(v321[3]))
                {
                }

                if (HIDWORD(v321[3]))
                {
                }

                if (LODWORD(v321[4]))
                {
                }

                if (HIDWORD(v321[4]))
                {
                }

                if (LODWORD(v321[5]))
                {
                }

                if (HIDWORD(v321[5]))
                {
                }

                if (LODWORD(v321[6]))
                {
                }

                if (HIDWORD(v321[6]))
                {
                }

                if (LODWORD(v321[7]))
                {
                }

                if (HIDWORD(v321[7]))
                {
                }

                if (LODWORD(v321[8]))
                {
                }

                if (HIDWORD(v321[8]))
                {
                }

                if (LODWORD(v321[9]))
                {
                }

                if (HIDWORD(v321[9]))
                {
                }

                if (LODWORD(v321[10]))
                {
                }

                if (HIDWORD(v321[10]))
                {
                }

                if (LODWORD(v321[11]))
                {
                }

                if (HIDWORD(v321[11]))
                {
                }

                if (LODWORD(v321[12]))
                {
                }

                if (HIDWORD(v321[12]))
                {
                }

                if (LODWORD(v321[13]))
                {
                }

                if (HIDWORD(v321[13]))
                {
                }

                if (LODWORD(v321[14]))
                {
                }

                if (HIDWORD(v321[14]))
                {
                }

                if (LODWORD(v321[15]))
                {
                }

                if (HIDWORD(v321[15]))
                {
                }

                if (v322)
                {
                }

                if (HIDWORD(v322))
                {
                }

                if (v323)
                {
                }

                if (HIDWORD(v323))
                {
                }

                if (v324)
                {
                }

                if (!HIDWORD(v324))
                {
                  goto LABEL_419;
                }

                v62 = v300;
                goto LABEL_418;
              }

LABEL_203:

              goto LABEL_204;
            }

LABEL_187:

            goto LABEL_188;
          }
        }

        else
        {
          v17 = [MEMORY[0x277D75418] currentDevice];
          if ([v17 userInterfaceIdiom])
          {
            v32 = 0;
            v33 = 1;
            goto LABEL_1796;
          }
        }

        v33 = v225 ^ 1;
        v231 = __sb__runningInSpringBoard();
        if (v231)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v244 = [MEMORY[0x277D759A0] mainScreen];
          [v244 _referenceBounds];
        }

        v32 = v231 ^ 1;
        BSSizeRoundForScale();
        goto LABEL_1796;
      }
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v306 = 0;
    v309 = 0;
    v312 = 0;
    v315 = 0;
    v318 = 0;
    memset(v321, 0, 100);
    HIDWORD(v321[12]) = v17 ^ 1;
    goto LABEL_184;
  }

  if (self->_wantsAccessibilityContentSizes)
  {
    [(CSCoverSheetViewController *)self _updateAccessibilityContentSizesIfNeeded];
    goto LABEL_419;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_9;
    }

LABEL_17:
    v15 = __sb__runningInSpringBoard();
    if (v15)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v324 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v295 = [MEMORY[0x277D75418] currentDevice];
      if ([v295 userInterfaceIdiom] != 1)
      {
        v324 = 0x100000000;
        goto LABEL_50;
      }
    }

    HIDWORD(v324) = v15 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v18 = __sb__runningInSpringBoard();
      if (v18)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v296 = [MEMORY[0x277D759A0] mainScreen];
        [v296 _referenceBounds];
      }

      LODWORD(v324) = v18 ^ 1;
      BSSizeRoundForScale();
      if (v54 == *(MEMORY[0x277D66E30] + 288) && v53 == *(MEMORY[0x277D66E30] + 296))
      {
        memset(v321, 0, sizeof(v321));
        v319 = 0;
        v322 = 0;
        v316 = 0;
        v313 = 0;
        v323 = 0;
        v310 = 0;
        v307 = 0;
        v304 = 0;
        v301 = 0;
        v298 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        goto LABEL_303;
      }
    }

    else
    {
      LODWORD(v324) = 0;
    }

LABEL_50:
    v22 = __sb__runningInSpringBoard();
    if (v22)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v323 = 0;
        goto LABEL_68;
      }
    }

    else
    {
      v294 = [MEMORY[0x277D75418] currentDevice];
      if ([v294 userInterfaceIdiom] != 1)
      {
        v323 = 0x100000000;
        goto LABEL_68;
      }
    }

    HIDWORD(v323) = v22 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v18 = __sb__runningInSpringBoard();
      if (v18)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v286 = [MEMORY[0x277D759A0] mainScreen];
        [v286 _referenceBounds];
      }

      LODWORD(v323) = v18 ^ 1;
      BSSizeRoundForScale();
      if (v58 >= *(MEMORY[0x277D66E30] + 440))
      {
        memset(v321, 0, sizeof(v321));
        v319 = 0;
        v322 = 0;
        v316 = 0;
        v313 = 0;
        v307 = 0;
        v310 = 0;
        v304 = 0;
        v301 = 0;
        v298 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        goto LABEL_303;
      }
    }

    else
    {
      LODWORD(v323) = 0;
    }

LABEL_68:
    v24 = __sb__runningInSpringBoard();
    if (v24)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v322 = 0;
        goto LABEL_85;
      }
    }

    else
    {
      v293 = [MEMORY[0x277D75418] currentDevice];
      if ([v293 userInterfaceIdiom] != 1)
      {
        v322 = 0x100000000;
        goto LABEL_85;
      }
    }

    HIDWORD(v322) = v24 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v18 = __sb__runningInSpringBoard();
      if (v18)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v285 = [MEMORY[0x277D759A0] mainScreen];
        [v285 _referenceBounds];
      }

      LODWORD(v322) = v18 ^ 1;
      BSSizeRoundForScale();
      if (v63 >= *(MEMORY[0x277D66E30] + 376))
      {
        memset(v321, 0, sizeof(v321));
        v319 = 0;
        v313 = 0;
        v316 = 0;
        v307 = 0;
        v310 = 0;
        v304 = 0;
        v301 = 0;
        v298 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        goto LABEL_303;
      }
    }

    else
    {
      LODWORD(v322) = 0;
    }

LABEL_85:
    v26 = __sb__runningInSpringBoard();
    if (v26)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[15] = 0;
        goto LABEL_103;
      }
    }

    else
    {
      v292 = [MEMORY[0x277D75418] currentDevice];
      if ([v292 userInterfaceIdiom] != 1)
      {
        v321[15] = 0x100000000;
        goto LABEL_103;
      }
    }

    HIDWORD(v321[15]) = v26 ^ 1;
    v18 = __sb__runningInSpringBoard();
    if (v18)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v289 = [MEMORY[0x277D759A0] mainScreen];
      [v289 _referenceBounds];
    }

    LODWORD(v321[15]) = v18 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 280))
    {
      memset(v321, 0, 120);
      v316 = 0;
      v319 = 0;
      v310 = 0;
      v313 = 0;
      v307 = 0;
      v304 = 0;
      v301 = 0;
      v298 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      goto LABEL_303;
    }

LABEL_103:
    v31 = __sb__runningInSpringBoard();
    if (v31)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[14] = 0;
        goto LABEL_123;
      }
    }

    else
    {
      v291 = [MEMORY[0x277D75418] currentDevice];
      if ([v291 userInterfaceIdiom] != 1)
      {
        v321[14] = 0x100000000;
        goto LABEL_123;
      }
    }

    HIDWORD(v321[14]) = v31 ^ 1;
    v18 = __sb__runningInSpringBoard();
    if (v18)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v287 = [MEMORY[0x277D759A0] mainScreen];
      [v287 _referenceBounds];
    }

    LODWORD(v321[14]) = v18 ^ 1;
    BSSizeRoundForScale();
    if (v49 >= *(MEMORY[0x277D66E30] + 264))
    {
      memset(v321, 0, 112);
      v316 = 0;
      v319 = 0;
      v310 = 0;
      v313 = 0;
      v307 = 0;
      v304 = 0;
      v301 = 0;
      v298 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      goto LABEL_303;
    }

LABEL_123:
    v50 = __sb__runningInSpringBoard();
    if (v50)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[13] = 0;
        goto LABEL_453;
      }
    }

    else
    {
      v290 = [MEMORY[0x277D75418] currentDevice];
      if ([v290 userInterfaceIdiom] != 1)
      {
        v321[13] = 0x100000000;
        goto LABEL_453;
      }
    }

    HIDWORD(v321[13]) = v50 ^ 1;
    v18 = __sb__runningInSpringBoard();
    if (v18)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v284 = [MEMORY[0x277D759A0] mainScreen];
      [v284 _referenceBounds];
    }

    LODWORD(v321[13]) = v18 ^ 1;
    BSSizeRoundForScale();
    if (v70 >= *(MEMORY[0x277D66E30] + 248))
    {
      memset(v321, 0, 104);
      v316 = 0;
      v319 = 0;
      v310 = 0;
      v313 = 0;
      v307 = 0;
      v304 = 0;
      v301 = 0;
      v298 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      goto LABEL_303;
    }

LABEL_453:
    v18 = __sb__runningInSpringBoard();
    if (v18)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_455;
      }
    }

    else
    {
      v288 = [MEMORY[0x277D75418] currentDevice];
      if ([v288 userInterfaceIdiom] != 1)
      {
LABEL_455:
        HIDWORD(v321[12]) = v18 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_459:
          *(&v321[11] + 4) = 0;
          goto LABEL_716;
        }

        v71 = __sb__runningInSpringBoard();
        if (v71)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_459;
          }
        }

        else
        {
          v282 = [MEMORY[0x277D75418] currentDevice];
          if ([v282 userInterfaceIdiom])
          {
            HIDWORD(v321[11]) = 0;
            LODWORD(v321[12]) = 1;
            goto LABEL_716;
          }
        }

        LODWORD(v321[12]) = v71 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v108 = __sb__runningInSpringBoard();
          if (v108)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v275 = [MEMORY[0x277D759A0] mainScreen];
            [v275 _referenceBounds];
          }

          v18 = v108 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v321[11]) = v18;
          if (v112 >= *(MEMORY[0x277D66E30] + 200))
          {
            memset(v321, 0, 92);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v321[11]) = 0;
        }

LABEL_716:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[10] + 4) = 0;
            goto LABEL_726;
          }
        }

        else
        {
          v283 = [MEMORY[0x277D75418] currentDevice];
          if ([v283 userInterfaceIdiom])
          {
            HIDWORD(v321[10]) = 0;
            LODWORD(v321[11]) = 1;
            goto LABEL_726;
          }
        }

        LODWORD(v321[11]) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v278 = [MEMORY[0x277D759A0] mainScreen];
            [v278 _referenceBounds];
          }

          HIDWORD(v321[10]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v109 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_730;
          }
        }

        else
        {
          HIDWORD(v321[10]) = 0;
        }

LABEL_726:
        if (_SBF_Private_IsD94Like())
        {
          memset(v321, 0, 84);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_730:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_734:
          *(&v321[9] + 4) = 0;
          goto LABEL_781;
        }

        v110 = __sb__runningInSpringBoard();
        if (v110)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_734;
          }
        }

        else
        {
          v279 = [MEMORY[0x277D75418] currentDevice];
          if ([v279 userInterfaceIdiom])
          {
            HIDWORD(v321[9]) = 0;
            LODWORD(v321[10]) = 1;
            goto LABEL_781;
          }
        }

        LODWORD(v321[10]) = v110 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v115 = __sb__runningInSpringBoard();
          if (v115)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v270 = [MEMORY[0x277D759A0] mainScreen];
            [v270 _referenceBounds];
          }

          v18 = v115 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v321[9]) = v18;
          if (v126 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v321, 0, 76);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v321[9]) = 0;
        }

LABEL_781:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[8] + 4) = 0;
            goto LABEL_791;
          }
        }

        else
        {
          v281 = [MEMORY[0x277D75418] currentDevice];
          if ([v281 userInterfaceIdiom])
          {
            HIDWORD(v321[8]) = 0;
            LODWORD(v321[9]) = 1;
            goto LABEL_791;
          }
        }

        LODWORD(v321[9]) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v274 = [MEMORY[0x277D759A0] mainScreen];
            [v274 _referenceBounds];
          }

          HIDWORD(v321[8]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v116 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_795;
          }
        }

        else
        {
          HIDWORD(v321[8]) = 0;
        }

LABEL_791:
        if (_SBF_Private_IsD64Like())
        {
          memset(v321, 0, 68);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_795:
        v117 = __sb__runningInSpringBoard();
        if (v117)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[7] + 4) = 0;
            goto LABEL_805;
          }
        }

        else
        {
          v280 = [MEMORY[0x277D75418] currentDevice];
          if ([v280 userInterfaceIdiom])
          {
            HIDWORD(v321[7]) = 0;
            LODWORD(v321[8]) = 1;
            goto LABEL_805;
          }
        }

        LODWORD(v321[8]) = v117 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v118 = __sb__runningInSpringBoard();
          if (v118)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v271 = [MEMORY[0x277D759A0] mainScreen];
            [v271 _referenceBounds];
          }

          v18 = v118 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v321[7]) = v18;
          if (v124 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v321, 0, 60);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v321[7]) = 0;
        }

LABEL_805:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[6] + 4) = 0;
            goto LABEL_871;
          }
        }

        else
        {
          v277 = [MEMORY[0x277D75418] currentDevice];
          if ([v277 userInterfaceIdiom])
          {
            HIDWORD(v321[6]) = 0;
            LODWORD(v321[7]) = 1;
            goto LABEL_871;
          }
        }

        LODWORD(v321[7]) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v269 = [MEMORY[0x277D759A0] mainScreen];
            [v269 _referenceBounds];
          }

          HIDWORD(v321[6]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v131 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_901;
          }
        }

        else
        {
          HIDWORD(v321[6]) = 0;
        }

LABEL_871:
        if (_SBF_Private_IsD54())
        {
          memset(v321, 0, 52);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_901:
        v132 = __sb__runningInSpringBoard();
        if (v132)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[5] + 4) = 0;
            goto LABEL_921;
          }
        }

        else
        {
          v276 = [MEMORY[0x277D75418] currentDevice];
          if ([v276 userInterfaceIdiom])
          {
            HIDWORD(v321[5]) = 0;
            LODWORD(v321[6]) = 1;
            goto LABEL_921;
          }
        }

        LODWORD(v321[6]) = v132 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v133 = __sb__runningInSpringBoard();
          if (v133)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v266 = [MEMORY[0x277D759A0] mainScreen];
            [v266 _referenceBounds];
          }

          v18 = v133 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v321[5]) = v18;
          if (v143 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            memset(v321, 0, 44);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v321[5]) = 0;
        }

LABEL_921:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[4] + 4) = 0;
            goto LABEL_1006;
          }
        }

        else
        {
          v273 = [MEMORY[0x277D75418] currentDevice];
          if ([v273 userInterfaceIdiom])
          {
            HIDWORD(v321[4]) = 0;
            LODWORD(v321[5]) = 1;
            goto LABEL_1006;
          }
        }

        LODWORD(v321[5]) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v265 = [MEMORY[0x277D759A0] mainScreen];
            [v265 _referenceBounds];
          }

          HIDWORD(v321[4]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v148 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1052;
          }
        }

        else
        {
          HIDWORD(v321[4]) = 0;
        }

LABEL_1006:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          memset(v321, 0, 36);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_1052:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1056:
          *(&v321[3] + 4) = 0;
          goto LABEL_1138;
        }

        v149 = __sb__runningInSpringBoard();
        if (v149)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1056;
          }
        }

        else
        {
          v268 = [MEMORY[0x277D75418] currentDevice];
          if ([v268 userInterfaceIdiom])
          {
            HIDWORD(v321[3]) = 0;
            LODWORD(v321[4]) = 1;
            goto LABEL_1138;
          }
        }

        LODWORD(v321[4]) = v149 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v259 = [MEMORY[0x277D759A0] mainScreen];
            [v259 _referenceBounds];
          }

          HIDWORD(v321[3]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v167 >= *(MEMORY[0x277D66E30] + 184))
          {
            memset(v321, 0, 28);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v321[3]) = 0;
        }

LABEL_1138:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[2] + 4) = 0;
            goto LABEL_1148;
          }
        }

        else
        {
          v272 = [MEMORY[0x277D75418] currentDevice];
          if ([v272 userInterfaceIdiom])
          {
            HIDWORD(v321[2]) = 0;
            LODWORD(v321[3]) = 1;
            goto LABEL_1148;
          }
        }

        LODWORD(v321[3]) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v262 = [MEMORY[0x277D759A0] mainScreen];
            [v262 _referenceBounds];
          }

          HIDWORD(v321[2]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v158 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1152;
          }
        }

        else
        {
          HIDWORD(v321[2]) = 0;
        }

LABEL_1148:
        if (_SBF_Private_IsD93Like())
        {
          memset(v321, 0, 20);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_1152:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1156:
          *(&v321[1] + 4) = 0;
          goto LABEL_1220;
        }

        v159 = __sb__runningInSpringBoard();
        if (v159)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1156;
          }
        }

        else
        {
          v264 = [MEMORY[0x277D75418] currentDevice];
          if ([v264 userInterfaceIdiom])
          {
            HIDWORD(v321[1]) = 0;
            LODWORD(v321[2]) = 1;
            goto LABEL_1220;
          }
        }

        LODWORD(v321[2]) = v159 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v255 = [MEMORY[0x277D759A0] mainScreen];
            [v255 _referenceBounds];
          }

          HIDWORD(v321[1]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v177 >= *(MEMORY[0x277D66E30] + 104))
          {
            *(v321 + 4) = 0;
            LODWORD(v321[0]) = 0;
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v321[1]) = 0;
        }

LABEL_1220:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v321 + 4) = 0;
            goto LABEL_1230;
          }
        }

        else
        {
          v267 = [MEMORY[0x277D75418] currentDevice];
          if ([v267 userInterfaceIdiom])
          {
            HIDWORD(v321[0]) = 0;
            LODWORD(v321[1]) = 1;
            goto LABEL_1230;
          }
        }

        LODWORD(v321[1]) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v258 = [MEMORY[0x277D759A0] mainScreen];
            [v258 _referenceBounds];
          }

          HIDWORD(v321[0]) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v170 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1234;
          }
        }

        else
        {
          HIDWORD(v321[0]) = 0;
        }

LABEL_1230:
        if (_SBF_Private_IsD63Like())
        {
          LODWORD(v321[0]) = 0;
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_1234:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1238:
          LODWORD(v321[0]) = 0;
          HIDWORD(v319) = 0;
          goto LABEL_1341;
        }

        v171 = __sb__runningInSpringBoard();
        if (v171)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1238;
          }
        }

        else
        {
          v260 = [MEMORY[0x277D75418] currentDevice];
          if ([v260 userInterfaceIdiom])
          {
            HIDWORD(v319) = 0;
            LODWORD(v321[0]) = 1;
            goto LABEL_1341;
          }
        }

        LODWORD(v321[0]) = v171 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v251 = [MEMORY[0x277D759A0] mainScreen];
            [v251 _referenceBounds];
          }

          HIDWORD(v319) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v191 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v319) = 0;
            v313 = 0;
            v316 = 0;
            v307 = 0;
            v310 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v319) = 0;
        }

LABEL_1341:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v319) = 0;
            HIDWORD(v316) = 0;
            goto LABEL_1351;
          }
        }

        else
        {
          v263 = [MEMORY[0x277D75418] currentDevice];
          if ([v263 userInterfaceIdiom])
          {
            HIDWORD(v316) = 0;
            LODWORD(v319) = 1;
            goto LABEL_1351;
          }
        }

        LODWORD(v319) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v254 = [MEMORY[0x277D759A0] mainScreen];
            [v254 _referenceBounds];
          }

          HIDWORD(v316) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v182 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1355;
          }
        }

        else
        {
          HIDWORD(v316) = 0;
        }

LABEL_1351:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v316) = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_1355:
        v183 = __sb__runningInSpringBoard();
        if (v183)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v316) = 0;
            HIDWORD(v313) = 0;
            goto LABEL_1365;
          }
        }

        else
        {
          v261 = [MEMORY[0x277D75418] currentDevice];
          if ([v261 userInterfaceIdiom])
          {
            HIDWORD(v313) = 0;
            LODWORD(v316) = 1;
            goto LABEL_1365;
          }
        }

        LODWORD(v316) = v183 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v252 = [MEMORY[0x277D759A0] mainScreen];
            [v252 _referenceBounds];
          }

          HIDWORD(v313) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v189 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v313) = 0;
            v307 = 0;
            v310 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v313) = 0;
        }

LABEL_1365:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v313) = 0;
            HIDWORD(v310) = 0;
            goto LABEL_1431;
          }
        }

        else
        {
          v257 = [MEMORY[0x277D75418] currentDevice];
          if ([v257 userInterfaceIdiom])
          {
            HIDWORD(v310) = 0;
            LODWORD(v313) = 1;
            goto LABEL_1431;
          }
        }

        LODWORD(v313) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v250 = [MEMORY[0x277D759A0] mainScreen];
            [v250 _referenceBounds];
          }

          HIDWORD(v310) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v196 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1461;
          }
        }

        else
        {
          HIDWORD(v310) = 0;
        }

LABEL_1431:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v310) = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_1461:
        v197 = __sb__runningInSpringBoard();
        if (v197)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v310) = 0;
            HIDWORD(v307) = 0;
            goto LABEL_1481;
          }
        }

        else
        {
          v256 = [MEMORY[0x277D75418] currentDevice];
          if ([v256 userInterfaceIdiom])
          {
            HIDWORD(v307) = 0;
            LODWORD(v310) = 1;
            goto LABEL_1481;
          }
        }

        LODWORD(v310) = v197 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v249 = [MEMORY[0x277D759A0] mainScreen];
            [v249 _referenceBounds];
          }

          HIDWORD(v307) = v18 ^ 1;
          BSSizeRoundForScale();
          if (v205 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v307) = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          HIDWORD(v307) = 0;
        }

LABEL_1481:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v307) = 0;
            v304 = 0;
            goto LABEL_1577;
          }
        }

        else
        {
          v253 = [MEMORY[0x277D75418] currentDevice];
          if ([v253 userInterfaceIdiom])
          {
            v304 = 0;
            LODWORD(v307) = 1;
            goto LABEL_1577;
          }
        }

        LODWORD(v307) = v18 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v248 = [MEMORY[0x277D759A0] mainScreen];
            [v248 _referenceBounds];
          }

          v304 = v18 ^ 1;
          BSSizeRoundForScale();
          if (v213 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1626;
          }
        }

        else
        {
          v304 = 0;
        }

LABEL_1577:
        if (_SBF_Private_IsD53())
        {
LABEL_1633:
          v301 = 0;
          v298 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

LABEL_1626:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice() & 1) != 0)
        {
          goto LABEL_1633;
        }

        v215 = __sb__runningInSpringBoard();
        if (v215)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v301 = 0;
            v298 = 0;
            goto LABEL_1732;
          }
        }

        else
        {
          v247 = [MEMORY[0x277D75418] currentDevice];
          if ([v247 userInterfaceIdiom])
          {
            v298 = 0;
            v301 = 1;
            goto LABEL_1732;
          }
        }

        v301 = v215 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v245 = [MEMORY[0x277D759A0] mainScreen];
            [v245 _referenceBounds];
          }

          v298 = v18 ^ 1;
          BSSizeRoundForScale();
          if (v228 >= *(MEMORY[0x277D66E30] + 88))
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          v298 = 0;
        }

LABEL_1732:
        v223 = __sb__runningInSpringBoard();
        if (v223)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v41 = 0;
            v42 = 0;
            goto LABEL_1752;
          }
        }

        else
        {
          v246 = [MEMORY[0x277D75418] currentDevice];
          if ([v246 userInterfaceIdiom])
          {
            v42 = 0;
            v41 = 1;
            goto LABEL_1752;
          }
        }

        v41 = v223 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v18 = __sb__runningInSpringBoard();
          if (v18)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v244 = [MEMORY[0x277D759A0] mainScreen];
            [v244 _referenceBounds];
          }

          v42 = v18 ^ 1;
          BSSizeRoundForScale();
          if (v230 >= *(MEMORY[0x277D66E30] + 72))
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            goto LABEL_303;
          }
        }

        else
        {
          v42 = 0;
        }

LABEL_1752:
        v18 = __sb__runningInSpringBoard();
        if (v18)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v43 = 0;
            v44 = 0;
LABEL_1773:
            v2 = __sb__runningInSpringBoard();
            if (v2)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v45 = 0;
                v46 = 0;
                goto LABEL_303;
              }
            }

            else
            {
              v5 = [MEMORY[0x277D75418] currentDevice];
              if ([v5 userInterfaceIdiom])
              {
                v46 = 0;
                v45 = 1;
                goto LABEL_303;
              }
            }

            v45 = v2 ^ 1;
            v232 = __sb__runningInSpringBoard();
            if (v232)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v2 = [MEMORY[0x277D759A0] mainScreen];
              [v2 _referenceBounds];
            }

            v46 = v232 ^ 1;
            BSSizeRoundForScale();
LABEL_303:
            if (v46)
            {

              if (!v45)
              {
                goto LABEL_305;
              }
            }

            else if (!v45)
            {
LABEL_305:
              if (v44)
              {
                goto LABEL_306;
              }

              goto LABEL_310;
            }

            if (v44)
            {
LABEL_306:

              if (!v43)
              {
LABEL_312:
                v64 = v296;
                if (v42)
                {
                }

                if (!v41)
                {
                  goto LABEL_316;
                }

LABEL_315:

LABEL_316:
                if (v298)
                {
                }

                if (v301)
                {
                }

                if (v304)
                {
                }

                if (v307)
                {
                }

                if (HIDWORD(v307))
                {
                }

                if (v310)
                {
                }

                if (HIDWORD(v310))
                {
                }

                if (v313)
                {
                }

                if (HIDWORD(v313))
                {
                }

                if (v316)
                {
                }

                if (HIDWORD(v316))
                {
                }

                if (v319)
                {
                }

                if (HIDWORD(v319))
                {
                }

                if (LODWORD(v321[0]))
                {
                }

                if (HIDWORD(v321[0]))
                {
                }

                if (LODWORD(v321[1]))
                {
                }

                if (HIDWORD(v321[1]))
                {
                }

                if (LODWORD(v321[2]))
                {
                }

                if (HIDWORD(v321[2]))
                {
                }

                if (LODWORD(v321[3]))
                {
                }

                if (HIDWORD(v321[3]))
                {
                }

                if (LODWORD(v321[4]))
                {
                }

                if (HIDWORD(v321[4]))
                {
                }

                if (LODWORD(v321[5]))
                {
                }

                if (HIDWORD(v321[5]))
                {
                }

                if (LODWORD(v321[6]))
                {
                }

                if (HIDWORD(v321[6]))
                {
                }

                if (LODWORD(v321[7]))
                {
                }

                if (HIDWORD(v321[7]))
                {
                }

                if (LODWORD(v321[8]))
                {
                }

                if (HIDWORD(v321[8]))
                {
                }

                if (LODWORD(v321[9]))
                {
                }

                if (HIDWORD(v321[9]))
                {
                }

                if (LODWORD(v321[10]))
                {
                }

                if (HIDWORD(v321[10]))
                {
                }

                if (LODWORD(v321[11]))
                {
                }

                if (HIDWORD(v321[11]))
                {
                }

                if (LODWORD(v321[12]))
                {
                }

                if (HIDWORD(v321[12]))
                {
                }

                if (LODWORD(v321[13]))
                {
                }

                if (HIDWORD(v321[13]))
                {
                }

                if (LODWORD(v321[14]))
                {
                }

                if (HIDWORD(v321[14]))
                {
                }

                if (LODWORD(v321[15]))
                {
                }

                if (HIDWORD(v321[15]))
                {
                }

                if (v322)
                {
                }

                if (HIDWORD(v322))
                {
                }

                if (v323)
                {
                }

                if (HIDWORD(v323))
                {
                }

                if (v324)
                {
                }

                if (!HIDWORD(v324))
                {
                  goto LABEL_419;
                }

                v62 = v295;
LABEL_418:

                goto LABEL_419;
              }

LABEL_311:

              goto LABEL_312;
            }

LABEL_310:
            if (!v43)
            {
              goto LABEL_312;
            }

            goto LABEL_311;
          }
        }

        else
        {
          v3 = [MEMORY[0x277D75418] currentDevice];
          if ([v3 userInterfaceIdiom])
          {
            v44 = 0;
            v43 = 1;
            goto LABEL_1773;
          }
        }

        v43 = v18 ^ 1;
        v2 = __sb__runningInSpringBoard();
        if (v2)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v18 = [MEMORY[0x277D759A0] mainScreen];
          [v18 _referenceBounds];
        }

        v44 = v2 ^ 1;
        BSSizeRoundForScale();
        if (v226 >= *(MEMORY[0x277D66E30] + 56))
        {
          v45 = 0;
          v46 = 0;
          goto LABEL_303;
        }

        goto LABEL_1773;
      }
    }

    memset(v321, 0, 100);
    v316 = 0;
    v319 = 0;
    v310 = 0;
    v313 = 0;
    v307 = 0;
    v304 = 0;
    v301 = 0;
    v298 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    HIDWORD(v321[12]) = v18 ^ 1;
    goto LABEL_303;
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    goto LABEL_17;
  }

LABEL_9:
  v10 = [(CSCoverSheetViewController *)self interfaceOrientation]- 1;
  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v10 <= 1)
  {
    v13 = &CSTimeLabelPortraitBaselineY;
    if (v11)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v324 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      v295 = [MEMORY[0x277D75418] currentDevice];
      if ([v295 userInterfaceIdiom] != 1)
      {
        v324 = 0x100000000;
        goto LABEL_141;
      }
    }

    HIDWORD(v324) = v12 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v19 = __sb__runningInSpringBoard();
      if (v19)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v296 = [MEMORY[0x277D759A0] mainScreen];
        [v296 _referenceBounds];
      }

      LODWORD(v324) = v19 ^ 1;
      BSSizeRoundForScale();
      if (v94 == *(MEMORY[0x277D66E30] + 288) && v93 == *(MEMORY[0x277D66E30] + 296))
      {
        v322 = 0;
        v323 = 0;
        memset(v321, 0, sizeof(v321));
        v316 = 0;
        v319 = 0;
        v310 = 0;
        v313 = 0;
        v307 = 0;
        v304 = 0;
        v301 = 0;
        v298 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        goto LABEL_521;
      }
    }

    else
    {
      LODWORD(v324) = 0;
    }

LABEL_141:
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v323 = 0;
        goto LABEL_165;
      }
    }

    else
    {
      v294 = [MEMORY[0x277D75418] currentDevice];
      if ([v294 userInterfaceIdiom] != 1)
      {
        v323 = 0x100000000;
        goto LABEL_165;
      }
    }

    HIDWORD(v323) = v55 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v19 = __sb__runningInSpringBoard();
      if (v19)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v286 = [MEMORY[0x277D759A0] mainScreen];
        [v286 _referenceBounds];
      }

      LODWORD(v323) = v19 ^ 1;
      BSSizeRoundForScale();
      if (v97 >= *(MEMORY[0x277D66E30] + 440))
      {
        v322 = 0;
        memset(v321, 0, sizeof(v321));
        v316 = 0;
        v319 = 0;
        v310 = 0;
        v313 = 0;
        v307 = 0;
        v304 = 0;
        v301 = 0;
        v298 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        goto LABEL_521;
      }
    }

    else
    {
      LODWORD(v323) = 0;
    }

LABEL_165:
    v59 = __sb__runningInSpringBoard();
    if (v59)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v322 = 0;
        goto LABEL_424;
      }
    }

    else
    {
      v293 = [MEMORY[0x277D75418] currentDevice];
      if ([v293 userInterfaceIdiom] != 1)
      {
        v322 = 0x100000000;
        goto LABEL_424;
      }
    }

    HIDWORD(v322) = v59 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v19 = __sb__runningInSpringBoard();
      if (v19)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v285 = [MEMORY[0x277D759A0] mainScreen];
        [v285 _referenceBounds];
      }

      LODWORD(v322) = v19 ^ 1;
      BSSizeRoundForScale();
      if (v99 >= *(MEMORY[0x277D66E30] + 376))
      {
        memset(v321, 0, sizeof(v321));
        v316 = 0;
        v319 = 0;
        v310 = 0;
        v313 = 0;
        v307 = 0;
        v304 = 0;
        v301 = 0;
        v298 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        goto LABEL_521;
      }
    }

    else
    {
      LODWORD(v322) = 0;
    }

LABEL_424:
    v66 = __sb__runningInSpringBoard();
    if (v66)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[15] = 0;
        goto LABEL_467;
      }
    }

    else
    {
      v292 = [MEMORY[0x277D75418] currentDevice];
      if ([v292 userInterfaceIdiom] != 1)
      {
        v321[15] = 0x100000000;
        goto LABEL_467;
      }
    }

    HIDWORD(v321[15]) = v66 ^ 1;
    v19 = __sb__runningInSpringBoard();
    if (v19)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v289 = [MEMORY[0x277D759A0] mainScreen];
      [v289 _referenceBounds];
    }

    LODWORD(v321[15]) = v19 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 280))
    {
      memset(v321, 0, 120);
      v316 = 0;
      v319 = 0;
      v310 = 0;
      v313 = 0;
      v307 = 0;
      v304 = 0;
      v301 = 0;
      v298 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      goto LABEL_521;
    }

LABEL_467:
    v73 = __sb__runningInSpringBoard();
    if (v73)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[14] = 0;
        goto LABEL_487;
      }
    }

    else
    {
      v291 = [MEMORY[0x277D75418] currentDevice];
      if ([v291 userInterfaceIdiom] != 1)
      {
        v321[14] = 0x100000000;
        goto LABEL_487;
      }
    }

    HIDWORD(v321[14]) = v73 ^ 1;
    v19 = __sb__runningInSpringBoard();
    if (v19)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v287 = [MEMORY[0x277D759A0] mainScreen];
      [v287 _referenceBounds];
    }

    LODWORD(v321[14]) = v19 ^ 1;
    BSSizeRoundForScale();
    if (v89 >= *(MEMORY[0x277D66E30] + 264))
    {
      memset(v321, 0, 112);
      v316 = 0;
      v319 = 0;
      v310 = 0;
      v313 = 0;
      v307 = 0;
      v304 = 0;
      v301 = 0;
      v298 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      goto LABEL_521;
    }

LABEL_487:
    v90 = __sb__runningInSpringBoard();
    if (v90)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v321[13] = 0;
        goto LABEL_656;
      }
    }

    else
    {
      v290 = [MEMORY[0x277D75418] currentDevice];
      if ([v290 userInterfaceIdiom] != 1)
      {
        v321[13] = 0x100000000;
        goto LABEL_656;
      }
    }

    HIDWORD(v321[13]) = v90 ^ 1;
    v19 = __sb__runningInSpringBoard();
    if (v19)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v284 = [MEMORY[0x277D759A0] mainScreen];
      [v284 _referenceBounds];
    }

    LODWORD(v321[13]) = v19 ^ 1;
    BSSizeRoundForScale();
    if (v102 >= *(MEMORY[0x277D66E30] + 248))
    {
      memset(v321, 0, 104);
      v316 = 0;
      v319 = 0;
      v310 = 0;
      v313 = 0;
      v307 = 0;
      v304 = 0;
      v301 = 0;
      v298 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      goto LABEL_521;
    }

LABEL_656:
    v19 = __sb__runningInSpringBoard();
    if (v19)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_658;
      }
    }

    else
    {
      v288 = [MEMORY[0x277D75418] currentDevice];
      if ([v288 userInterfaceIdiom] != 1)
      {
LABEL_658:
        HIDWORD(v321[12]) = v19 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_662:
          *(&v321[11] + 4) = 0;
          goto LABEL_815;
        }

        v103 = __sb__runningInSpringBoard();
        if (v103)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_662;
          }
        }

        else
        {
          v282 = [MEMORY[0x277D75418] currentDevice];
          if ([v282 userInterfaceIdiom])
          {
            HIDWORD(v321[11]) = 0;
            LODWORD(v321[12]) = 1;
            goto LABEL_815;
          }
        }

        LODWORD(v321[12]) = v103 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v275 = [MEMORY[0x277D759A0] mainScreen];
            [v275 _referenceBounds];
          }

          HIDWORD(v321[11]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v127 >= *(MEMORY[0x277D66E30] + 200))
          {
            memset(v321, 0, 92);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v321[11]) = 0;
        }

LABEL_815:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[10] + 4) = 0;
            goto LABEL_825;
          }
        }

        else
        {
          v283 = [MEMORY[0x277D75418] currentDevice];
          if ([v283 userInterfaceIdiom])
          {
            HIDWORD(v321[10]) = 0;
            LODWORD(v321[11]) = 1;
            goto LABEL_825;
          }
        }

        LODWORD(v321[11]) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v278 = [MEMORY[0x277D759A0] mainScreen];
            [v278 _referenceBounds];
          }

          HIDWORD(v321[10]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v119 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_829;
          }
        }

        else
        {
          HIDWORD(v321[10]) = 0;
        }

LABEL_825:
        if (_SBF_Private_IsD94Like())
        {
          memset(v321, 0, 84);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_829:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_833:
          *(&v321[9] + 4) = 0;
          goto LABEL_931;
        }

        v120 = __sb__runningInSpringBoard();
        if (v120)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_833;
          }
        }

        else
        {
          v279 = [MEMORY[0x277D75418] currentDevice];
          if ([v279 userInterfaceIdiom])
          {
            HIDWORD(v321[9]) = 0;
            LODWORD(v321[10]) = 1;
            goto LABEL_931;
          }
        }

        LODWORD(v321[10]) = v120 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v134 = __sb__runningInSpringBoard();
          if (v134)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v270 = [MEMORY[0x277D759A0] mainScreen];
            [v270 _referenceBounds];
          }

          v19 = v134 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v321[9]) = v19;
          if (v144 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v321, 0, 76);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v321[9]) = 0;
        }

LABEL_931:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[8] + 4) = 0;
            goto LABEL_941;
          }
        }

        else
        {
          v281 = [MEMORY[0x277D75418] currentDevice];
          if ([v281 userInterfaceIdiom])
          {
            HIDWORD(v321[8]) = 0;
            LODWORD(v321[9]) = 1;
            goto LABEL_941;
          }
        }

        LODWORD(v321[9]) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v274 = [MEMORY[0x277D759A0] mainScreen];
            [v274 _referenceBounds];
          }

          HIDWORD(v321[8]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v135 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_945;
          }
        }

        else
        {
          HIDWORD(v321[8]) = 0;
        }

LABEL_941:
        if (_SBF_Private_IsD64Like())
        {
          memset(v321, 0, 68);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_945:
        v136 = __sb__runningInSpringBoard();
        if (v136)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[7] + 4) = 0;
            goto LABEL_955;
          }
        }

        else
        {
          v280 = [MEMORY[0x277D75418] currentDevice];
          if ([v280 userInterfaceIdiom])
          {
            HIDWORD(v321[7]) = 0;
            LODWORD(v321[8]) = 1;
            goto LABEL_955;
          }
        }

        LODWORD(v321[8]) = v136 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v271 = [MEMORY[0x277D759A0] mainScreen];
            [v271 _referenceBounds];
          }

          HIDWORD(v321[7]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v140 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v321, 0, 60);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v321[7]) = 0;
        }

LABEL_955:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[6] + 4) = 0;
            goto LABEL_1013;
          }
        }

        else
        {
          v277 = [MEMORY[0x277D75418] currentDevice];
          if ([v277 userInterfaceIdiom])
          {
            HIDWORD(v321[6]) = 0;
            LODWORD(v321[7]) = 1;
            goto LABEL_1013;
          }
        }

        LODWORD(v321[7]) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v269 = [MEMORY[0x277D759A0] mainScreen];
            [v269 _referenceBounds];
          }

          HIDWORD(v321[6]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v150 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_1061;
          }
        }

        else
        {
          HIDWORD(v321[6]) = 0;
        }

LABEL_1013:
        if (_SBF_Private_IsD54())
        {
          memset(v321, 0, 52);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1061:
        v151 = __sb__runningInSpringBoard();
        if (v151)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[5] + 4) = 0;
            goto LABEL_1079;
          }
        }

        else
        {
          v276 = [MEMORY[0x277D75418] currentDevice];
          if ([v276 userInterfaceIdiom])
          {
            HIDWORD(v321[5]) = 0;
            LODWORD(v321[6]) = 1;
            goto LABEL_1079;
          }
        }

        LODWORD(v321[6]) = v151 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v154 = __sb__runningInSpringBoard();
          if (v154)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v266 = [MEMORY[0x277D759A0] mainScreen];
            [v266 _referenceBounds];
          }

          v19 = v154 ^ 1u;
          BSSizeRoundForScale();
          HIDWORD(v321[5]) = v19;
          if (v160 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            memset(v321, 0, 44);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v321[5]) = 0;
        }

LABEL_1079:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[4] + 4) = 0;
            goto LABEL_1099;
          }
        }

        else
        {
          v273 = [MEMORY[0x277D75418] currentDevice];
          if ([v273 userInterfaceIdiom])
          {
            HIDWORD(v321[4]) = 0;
            LODWORD(v321[5]) = 1;
            goto LABEL_1099;
          }
        }

        LODWORD(v321[5]) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v265 = [MEMORY[0x277D759A0] mainScreen];
            [v265 _referenceBounds];
          }

          HIDWORD(v321[4]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v162 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1169;
          }
        }

        else
        {
          HIDWORD(v321[4]) = 0;
        }

LABEL_1099:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          memset(v321, 0, 36);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1169:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_1173:
          *(&v321[3] + 4) = 0;
          goto LABEL_1245;
        }

        v163 = __sb__runningInSpringBoard();
        if (v163)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1173;
          }
        }

        else
        {
          v268 = [MEMORY[0x277D75418] currentDevice];
          if ([v268 userInterfaceIdiom])
          {
            HIDWORD(v321[3]) = 0;
            LODWORD(v321[4]) = 1;
            goto LABEL_1245;
          }
        }

        LODWORD(v321[4]) = v163 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v259 = [MEMORY[0x277D759A0] mainScreen];
            [v259 _referenceBounds];
          }

          HIDWORD(v321[3]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v178 >= *(MEMORY[0x277D66E30] + 184))
          {
            memset(v321, 0, 28);
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v321[3]) = 0;
        }

LABEL_1245:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v321[2] + 4) = 0;
            goto LABEL_1255;
          }
        }

        else
        {
          v272 = [MEMORY[0x277D75418] currentDevice];
          if ([v272 userInterfaceIdiom])
          {
            HIDWORD(v321[2]) = 0;
            LODWORD(v321[3]) = 1;
            goto LABEL_1255;
          }
        }

        LODWORD(v321[3]) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v262 = [MEMORY[0x277D759A0] mainScreen];
            [v262 _referenceBounds];
          }

          HIDWORD(v321[2]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v172 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_1259;
          }
        }

        else
        {
          HIDWORD(v321[2]) = 0;
        }

LABEL_1255:
        if (_SBF_Private_IsD93Like())
        {
          memset(v321, 0, 20);
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1259:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_1263:
          *(&v321[1] + 4) = 0;
          goto LABEL_1375;
        }

        v173 = __sb__runningInSpringBoard();
        if (v173)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1263;
          }
        }

        else
        {
          v264 = [MEMORY[0x277D75418] currentDevice];
          if ([v264 userInterfaceIdiom])
          {
            HIDWORD(v321[1]) = 0;
            LODWORD(v321[2]) = 1;
            goto LABEL_1375;
          }
        }

        LODWORD(v321[2]) = v173 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v255 = [MEMORY[0x277D759A0] mainScreen];
            [v255 _referenceBounds];
          }

          HIDWORD(v321[1]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v192 >= *(MEMORY[0x277D66E30] + 104))
          {
            *(v321 + 4) = 0;
            LODWORD(v321[0]) = 0;
            v316 = 0;
            v319 = 0;
            v310 = 0;
            v313 = 0;
            v307 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v321[1]) = 0;
        }

LABEL_1375:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v321 + 4) = 0;
            goto LABEL_1385;
          }
        }

        else
        {
          v267 = [MEMORY[0x277D75418] currentDevice];
          if ([v267 userInterfaceIdiom])
          {
            HIDWORD(v321[0]) = 0;
            LODWORD(v321[1]) = 1;
            goto LABEL_1385;
          }
        }

        LODWORD(v321[1]) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v258 = [MEMORY[0x277D759A0] mainScreen];
            [v258 _referenceBounds];
          }

          HIDWORD(v321[0]) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v184 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1389;
          }
        }

        else
        {
          HIDWORD(v321[0]) = 0;
        }

LABEL_1385:
        if (_SBF_Private_IsD63Like())
        {
          LODWORD(v321[0]) = 0;
          v316 = 0;
          v319 = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1389:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1393:
          LODWORD(v321[0]) = 0;
          HIDWORD(v319) = 0;
          goto LABEL_1491;
        }

        v185 = __sb__runningInSpringBoard();
        if (v185)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1393;
          }
        }

        else
        {
          v260 = [MEMORY[0x277D75418] currentDevice];
          if ([v260 userInterfaceIdiom])
          {
            HIDWORD(v319) = 0;
            LODWORD(v321[0]) = 1;
            goto LABEL_1491;
          }
        }

        LODWORD(v321[0]) = v185 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v251 = [MEMORY[0x277D759A0] mainScreen];
            [v251 _referenceBounds];
          }

          HIDWORD(v319) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v206 >= *(MEMORY[0x277D66E30] + 216))
          {
            LODWORD(v319) = 0;
            v313 = 0;
            v316 = 0;
            v307 = 0;
            v310 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v319) = 0;
        }

LABEL_1491:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v319) = 0;
            HIDWORD(v316) = 0;
            goto LABEL_1501;
          }
        }

        else
        {
          v263 = [MEMORY[0x277D75418] currentDevice];
          if ([v263 userInterfaceIdiom])
          {
            HIDWORD(v316) = 0;
            LODWORD(v319) = 1;
            goto LABEL_1501;
          }
        }

        LODWORD(v319) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v254 = [MEMORY[0x277D759A0] mainScreen];
            [v254 _referenceBounds];
          }

          HIDWORD(v316) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v198 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1505;
          }
        }

        else
        {
          HIDWORD(v316) = 0;
        }

LABEL_1501:
        if (_SBF_Private_IsD23Like())
        {
          LODWORD(v316) = 0;
          v310 = 0;
          v313 = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1505:
        v199 = __sb__runningInSpringBoard();
        if (v199)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v316) = 0;
            HIDWORD(v313) = 0;
            goto LABEL_1515;
          }
        }

        else
        {
          v261 = [MEMORY[0x277D75418] currentDevice];
          if ([v261 userInterfaceIdiom])
          {
            HIDWORD(v313) = 0;
            LODWORD(v316) = 1;
            goto LABEL_1515;
          }
        }

        LODWORD(v316) = v199 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v252 = [MEMORY[0x277D759A0] mainScreen];
            [v252 _referenceBounds];
          }

          HIDWORD(v313) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v202 >= *(MEMORY[0x277D66E30] + 120))
          {
            LODWORD(v313) = 0;
            v307 = 0;
            v310 = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v313) = 0;
        }

LABEL_1515:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v313) = 0;
            HIDWORD(v310) = 0;
            goto LABEL_1559;
          }
        }

        else
        {
          v257 = [MEMORY[0x277D75418] currentDevice];
          if ([v257 userInterfaceIdiom])
          {
            HIDWORD(v310) = 0;
            LODWORD(v313) = 1;
            goto LABEL_1559;
          }
        }

        LODWORD(v313) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v250 = [MEMORY[0x277D759A0] mainScreen];
            [v250 _referenceBounds];
          }

          HIDWORD(v310) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v208 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1599;
          }
        }

        else
        {
          HIDWORD(v310) = 0;
        }

LABEL_1559:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          LODWORD(v310) = 0;
          v307 = 0;
          v304 = 0;
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1599:
        v209 = __sb__runningInSpringBoard();
        if (v209)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v310) = 0;
            HIDWORD(v307) = 0;
            goto LABEL_1638;
          }
        }

        else
        {
          v256 = [MEMORY[0x277D75418] currentDevice];
          if ([v256 userInterfaceIdiom])
          {
            HIDWORD(v307) = 0;
            LODWORD(v310) = 1;
            goto LABEL_1638;
          }
        }

        LODWORD(v310) = v209 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v249 = [MEMORY[0x277D759A0] mainScreen];
            [v249 _referenceBounds];
          }

          HIDWORD(v307) = v19 ^ 1;
          BSSizeRoundForScale();
          if (v216 >= *(MEMORY[0x277D66E30] + 104))
          {
            LODWORD(v307) = 0;
            v304 = 0;
            v301 = 0;
            v298 = 0;
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          HIDWORD(v307) = 0;
        }

LABEL_1638:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v307) = 0;
            v304 = 0;
            goto LABEL_1658;
          }
        }

        else
        {
          v253 = [MEMORY[0x277D75418] currentDevice];
          if ([v253 userInterfaceIdiom])
          {
            v304 = 0;
            LODWORD(v307) = 1;
            goto LABEL_1658;
          }
        }

        LODWORD(v307) = v19 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v248 = [MEMORY[0x277D759A0] mainScreen];
            [v248 _referenceBounds];
          }

          v304 = v19 ^ 1;
          BSSizeRoundForScale();
          if (v218 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1682;
          }
        }

        else
        {
          v304 = 0;
        }

LABEL_1658:
        if (_SBF_Private_IsD53())
        {
LABEL_1689:
          v301 = 0;
          v298 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

LABEL_1682:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || _SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0 || (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice() & 1) != 0)
        {
          goto LABEL_1689;
        }

        v220 = __sb__runningInSpringBoard();
        if (v220)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v301 = 0;
            v298 = 0;
            goto LABEL_1805;
          }
        }

        else
        {
          v247 = [MEMORY[0x277D75418] currentDevice];
          if ([v247 userInterfaceIdiom])
          {
            v298 = 0;
            v301 = 1;
            goto LABEL_1805;
          }
        }

        v301 = v220 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v245 = [MEMORY[0x277D759A0] mainScreen];
            [v245 _referenceBounds];
          }

          v298 = v19 ^ 1;
          BSSizeRoundForScale();
          if (v237 >= *(MEMORY[0x277D66E30] + 88))
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          v298 = 0;
        }

LABEL_1805:
        v233 = __sb__runningInSpringBoard();
        if (v233)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v76 = 0;
            v77 = 0;
            goto LABEL_1825;
          }
        }

        else
        {
          v246 = [MEMORY[0x277D75418] currentDevice];
          if ([v246 userInterfaceIdiom])
          {
            v77 = 0;
            v76 = 1;
            goto LABEL_1825;
          }
        }

        v76 = v233 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v19 = __sb__runningInSpringBoard();
          if (v19)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            v244 = [MEMORY[0x277D759A0] mainScreen];
            [v244 _referenceBounds];
          }

          v77 = v19 ^ 1;
          BSSizeRoundForScale();
          if (v239 >= *(MEMORY[0x277D66E30] + 72))
          {
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = 0;
            goto LABEL_521;
          }
        }

        else
        {
          v77 = 0;
        }

LABEL_1825:
        v19 = __sb__runningInSpringBoard();
        if (v19)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v78 = 0;
            v79 = 0;
LABEL_1845:
            v13 = __sb__runningInSpringBoard();
            if (v13)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
                v80 = 0;
                v81 = 0;
                goto LABEL_521;
              }
            }

            else
            {
              v4 = [MEMORY[0x277D75418] currentDevice];
              if ([v4 userInterfaceIdiom])
              {
                v81 = 0;
                v80 = 1;
                goto LABEL_521;
              }
            }

            v80 = v13 ^ 1;
            v241 = __sb__runningInSpringBoard();
            if (v241)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              v13 = [MEMORY[0x277D759A0] mainScreen];
              [v13 _referenceBounds];
            }

            v81 = v241 ^ 1;
            BSSizeRoundForScale();
LABEL_521:
            if (v81)
            {

              if (!v80)
              {
                goto LABEL_523;
              }
            }

            else if (!v80)
            {
LABEL_523:
              if (v79)
              {
                goto LABEL_524;
              }

              goto LABEL_528;
            }

            if (v79)
            {
LABEL_524:

              if (!v78)
              {
LABEL_530:
                v64 = v296;
                if (v77)
                {
                }

                if (!v76)
                {
                  goto LABEL_316;
                }

                goto LABEL_315;
              }

LABEL_529:

              goto LABEL_530;
            }

LABEL_528:
            if (!v78)
            {
              goto LABEL_530;
            }

            goto LABEL_529;
          }
        }

        else
        {
          v6 = [MEMORY[0x277D75418] currentDevice];
          if ([v6 userInterfaceIdiom])
          {
            v79 = 0;
            v78 = 1;
            goto LABEL_1845;
          }
        }

        v78 = v19 ^ 1;
        v13 = __sb__runningInSpringBoard();
        if (v13)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          v19 = [MEMORY[0x277D759A0] mainScreen];
          [v19 _referenceBounds];
        }

        v79 = v13 ^ 1;
        BSSizeRoundForScale();
        if (v235 >= *(MEMORY[0x277D66E30] + 56))
        {
          v80 = 0;
          v81 = 0;
          goto LABEL_521;
        }

        goto LABEL_1845;
      }
    }

    memset(v321, 0, 100);
    v316 = 0;
    v319 = 0;
    v310 = 0;
    v313 = 0;
    v307 = 0;
    v304 = 0;
    v301 = 0;
    v298 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    HIDWORD(v321[12]) = v19 ^ 1;
    goto LABEL_521;
  }

  v16 = &CSTimeLabelLandscapeBaselineY;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v324 = 0;
      goto LABEL_150;
    }
  }

  else
  {
    v295 = [MEMORY[0x277D75418] currentDevice];
    if ([v295 userInterfaceIdiom] != 1)
    {
      v324 = 0x100000000;
      goto LABEL_150;
    }
  }

  HIDWORD(v324) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v296 = [MEMORY[0x277D759A0] mainScreen];
      [v296 _referenceBounds];
    }

    LODWORD(v324) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v96 == *(MEMORY[0x277D66E30] + 288) && v95 == *(MEMORY[0x277D66E30] + 296))
    {
      v322 = 0;
      v323 = 0;
      memset(v321, 0, sizeof(v321));
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96780;
      goto LABEL_537;
    }
  }

  else
  {
    LODWORD(v324) = 0;
  }

LABEL_150:
  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v323 = 0;
      goto LABEL_174;
    }
  }

  else
  {
    v294 = [MEMORY[0x277D75418] currentDevice];
    if ([v294 userInterfaceIdiom] != 1)
    {
      v323 = 0x100000000;
      goto LABEL_174;
    }
  }

  HIDWORD(v323) = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v286 = [MEMORY[0x277D759A0] mainScreen];
      [v286 _referenceBounds];
    }

    LODWORD(v323) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v98 >= *(MEMORY[0x277D66E30] + 440))
    {
      v322 = 0;
      memset(v321, 0, sizeof(v321));
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC967A8;
      goto LABEL_537;
    }
  }

  else
  {
    LODWORD(v323) = 0;
  }

LABEL_174:
  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v322 = 0;
      goto LABEL_432;
    }
  }

  else
  {
    v293 = [MEMORY[0x277D75418] currentDevice];
    if ([v293 userInterfaceIdiom] != 1)
    {
      v322 = 0x100000000;
      goto LABEL_432;
    }
  }

  HIDWORD(v322) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v285 = [MEMORY[0x277D759A0] mainScreen];
      [v285 _referenceBounds];
    }

    LODWORD(v322) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v100 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v321, 0, sizeof(v321));
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96798;
      goto LABEL_537;
    }
  }

  else
  {
    LODWORD(v322) = 0;
  }

LABEL_432:
  v67 = __sb__runningInSpringBoard();
  if (v67)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v321[15] = 0;
      goto LABEL_476;
    }
  }

  else
  {
    v292 = [MEMORY[0x277D75418] currentDevice];
    if ([v292 userInterfaceIdiom] != 1)
    {
      v321[15] = 0x100000000;
      goto LABEL_476;
    }
  }

  HIDWORD(v321[15]) = v67 ^ 1;
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v289 = [MEMORY[0x277D759A0] mainScreen];
    [v289 _referenceBounds];
  }

  LODWORD(v321[15]) = v20 ^ 1;
  BSSizeRoundForScale();
  if (v74 >= *(MEMORY[0x277D66E30] + 280))
  {
    memset(v321, 0, 120);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC967A0;
    goto LABEL_537;
  }

LABEL_476:
  v75 = __sb__runningInSpringBoard();
  if (v75)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v321[14] = 0;
      goto LABEL_496;
    }
  }

  else
  {
    v291 = [MEMORY[0x277D75418] currentDevice];
    if ([v291 userInterfaceIdiom] != 1)
    {
      v321[14] = 0x100000000;
      goto LABEL_496;
    }
  }

  HIDWORD(v321[14]) = v75 ^ 1;
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v287 = [MEMORY[0x277D759A0] mainScreen];
    [v287 _referenceBounds];
  }

  LODWORD(v321[14]) = v20 ^ 1;
  BSSizeRoundForScale();
  if (v91 >= *(MEMORY[0x277D66E30] + 264))
  {
    memset(v321, 0, 112);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96790;
    goto LABEL_537;
  }

LABEL_496:
  v92 = __sb__runningInSpringBoard();
  if (v92)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v321[13] = 0;
      goto LABEL_668;
    }
  }

  else
  {
    v290 = [MEMORY[0x277D75418] currentDevice];
    if ([v290 userInterfaceIdiom] != 1)
    {
      v321[13] = 0x100000000;
      goto LABEL_668;
    }
  }

  HIDWORD(v321[13]) = v92 ^ 1;
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v284 = [MEMORY[0x277D759A0] mainScreen];
    [v284 _referenceBounds];
  }

  LODWORD(v321[13]) = v20 ^ 1;
  BSSizeRoundForScale();
  if (v104 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v321, 0, 104);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96788;
    goto LABEL_537;
  }

LABEL_668:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_670;
    }

LABEL_676:
    memset(v321, 0, 100);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96778;
    HIDWORD(v321[12]) = v20 ^ 1;
    goto LABEL_537;
  }

  v288 = [MEMORY[0x277D75418] currentDevice];
  if ([v288 userInterfaceIdiom] == 1)
  {
    goto LABEL_676;
  }

LABEL_670:
  HIDWORD(v321[12]) = v20 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_674:
    *(&v321[11] + 4) = 0;
    goto LABEL_840;
  }

  v105 = __sb__runningInSpringBoard();
  if (v105)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_674;
    }
  }

  else
  {
    v282 = [MEMORY[0x277D75418] currentDevice];
    if ([v282 userInterfaceIdiom])
    {
      HIDWORD(v321[11]) = 0;
      LODWORD(v321[12]) = 1;
      goto LABEL_840;
    }
  }

  LODWORD(v321[12]) = v105 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v275 = [MEMORY[0x277D759A0] mainScreen];
      [v275 _referenceBounds];
    }

    HIDWORD(v321[11]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v128 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v321, 0, 92);
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96758;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v321[11]) = 0;
  }

LABEL_840:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[10] + 4) = 0;
      goto LABEL_850;
    }
  }

  else
  {
    v283 = [MEMORY[0x277D75418] currentDevice];
    if ([v283 userInterfaceIdiom])
    {
      HIDWORD(v321[10]) = 0;
      LODWORD(v321[11]) = 1;
      goto LABEL_850;
    }
  }

  LODWORD(v321[11]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v278 = [MEMORY[0x277D759A0] mainScreen];
      [v278 _referenceBounds];
    }

    HIDWORD(v321[10]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v121 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_854;
    }
  }

  else
  {
    HIDWORD(v321[10]) = 0;
  }

LABEL_850:
  if (_SBF_Private_IsD94Like())
  {
    memset(v321, 0, 84);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96760;
    goto LABEL_537;
  }

LABEL_854:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_858:
    *(&v321[9] + 4) = 0;
    goto LABEL_965;
  }

  v122 = __sb__runningInSpringBoard();
  if (v122)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_858;
    }
  }

  else
  {
    v279 = [MEMORY[0x277D75418] currentDevice];
    if ([v279 userInterfaceIdiom])
    {
      HIDWORD(v321[9]) = 0;
      LODWORD(v321[10]) = 1;
      goto LABEL_965;
    }
  }

  LODWORD(v321[10]) = v122 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v137 = __sb__runningInSpringBoard();
    if (v137)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v270 = [MEMORY[0x277D759A0] mainScreen];
      [v270 _referenceBounds];
    }

    v20 = v137 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v321[9]) = v20;
    if (v145 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v321, 0, 76);
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96768;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v321[9]) = 0;
  }

LABEL_965:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[8] + 4) = 0;
      goto LABEL_975;
    }
  }

  else
  {
    v281 = [MEMORY[0x277D75418] currentDevice];
    if ([v281 userInterfaceIdiom])
    {
      HIDWORD(v321[8]) = 0;
      LODWORD(v321[9]) = 1;
      goto LABEL_975;
    }
  }

  LODWORD(v321[9]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v274 = [MEMORY[0x277D759A0] mainScreen];
      [v274 _referenceBounds];
    }

    HIDWORD(v321[8]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v138 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_979;
    }
  }

  else
  {
    HIDWORD(v321[8]) = 0;
  }

LABEL_975:
  if (_SBF_Private_IsD64Like())
  {
    memset(v321, 0, 68);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96770;
    goto LABEL_537;
  }

LABEL_979:
  v139 = __sb__runningInSpringBoard();
  if (v139)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[7] + 4) = 0;
      goto LABEL_989;
    }
  }

  else
  {
    v280 = [MEMORY[0x277D75418] currentDevice];
    if ([v280 userInterfaceIdiom])
    {
      HIDWORD(v321[7]) = 0;
      LODWORD(v321[8]) = 1;
      goto LABEL_989;
    }
  }

  LODWORD(v321[8]) = v139 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v271 = [MEMORY[0x277D759A0] mainScreen];
      [v271 _referenceBounds];
    }

    HIDWORD(v321[7]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v141 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v321, 0, 60);
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96748;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v321[7]) = 0;
  }

LABEL_989:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[6] + 4) = 0;
      goto LABEL_1019;
    }
  }

  else
  {
    v277 = [MEMORY[0x277D75418] currentDevice];
    if ([v277 userInterfaceIdiom])
    {
      HIDWORD(v321[6]) = 0;
      LODWORD(v321[7]) = 1;
      goto LABEL_1019;
    }
  }

  LODWORD(v321[7]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v269 = [MEMORY[0x277D759A0] mainScreen];
      [v269 _referenceBounds];
    }

    HIDWORD(v321[6]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v152 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_1069;
    }
  }

  else
  {
    HIDWORD(v321[6]) = 0;
  }

LABEL_1019:
  if (_SBF_Private_IsD54())
  {
    memset(v321, 0, 52);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96750;
    goto LABEL_537;
  }

LABEL_1069:
  v153 = __sb__runningInSpringBoard();
  if (v153)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[5] + 4) = 0;
      goto LABEL_1089;
    }
  }

  else
  {
    v276 = [MEMORY[0x277D75418] currentDevice];
    if ([v276 userInterfaceIdiom])
    {
      HIDWORD(v321[5]) = 0;
      LODWORD(v321[6]) = 1;
      goto LABEL_1089;
    }
  }

  LODWORD(v321[6]) = v153 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v155 = __sb__runningInSpringBoard();
    if (v155)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v266 = [MEMORY[0x277D759A0] mainScreen];
      [v266 _referenceBounds];
    }

    v20 = v155 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v321[5]) = v20;
    if (v161 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v321, 0, 44);
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96708;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v321[5]) = 0;
  }

LABEL_1089:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[4] + 4) = 0;
      goto LABEL_1106;
    }
  }

  else
  {
    v273 = [MEMORY[0x277D75418] currentDevice];
    if ([v273 userInterfaceIdiom])
    {
      HIDWORD(v321[4]) = 0;
      LODWORD(v321[5]) = 1;
      goto LABEL_1106;
    }
  }

  LODWORD(v321[5]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v265 = [MEMORY[0x277D759A0] mainScreen];
      [v265 _referenceBounds];
    }

    HIDWORD(v321[4]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v164 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1178;
    }
  }

  else
  {
    HIDWORD(v321[4]) = 0;
  }

LABEL_1106:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    memset(v321, 0, 36);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96710;
    goto LABEL_537;
  }

LABEL_1178:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_1182:
    *(&v321[3] + 4) = 0;
    goto LABEL_1270;
  }

  v165 = __sb__runningInSpringBoard();
  if (v165)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1182;
    }
  }

  else
  {
    v268 = [MEMORY[0x277D75418] currentDevice];
    if ([v268 userInterfaceIdiom])
    {
      HIDWORD(v321[3]) = 0;
      LODWORD(v321[4]) = 1;
      goto LABEL_1270;
    }
  }

  LODWORD(v321[4]) = v165 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v259 = [MEMORY[0x277D759A0] mainScreen];
      [v259 _referenceBounds];
    }

    HIDWORD(v321[3]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v179 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v321, 0, 28);
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC966F8;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v321[3]) = 0;
  }

LABEL_1270:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v321[2] + 4) = 0;
      goto LABEL_1280;
    }
  }

  else
  {
    v272 = [MEMORY[0x277D75418] currentDevice];
    if ([v272 userInterfaceIdiom])
    {
      HIDWORD(v321[2]) = 0;
      LODWORD(v321[3]) = 1;
      goto LABEL_1280;
    }
  }

  LODWORD(v321[3]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v262 = [MEMORY[0x277D759A0] mainScreen];
      [v262 _referenceBounds];
    }

    HIDWORD(v321[2]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v174 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_1284;
    }
  }

  else
  {
    HIDWORD(v321[2]) = 0;
  }

LABEL_1280:
  if (_SBF_Private_IsD93Like())
  {
    memset(v321, 0, 20);
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96700;
    goto LABEL_537;
  }

LABEL_1284:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_1288:
    *(&v321[1] + 4) = 0;
    goto LABEL_1400;
  }

  v175 = __sb__runningInSpringBoard();
  if (v175)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1288;
    }
  }

  else
  {
    v264 = [MEMORY[0x277D75418] currentDevice];
    if ([v264 userInterfaceIdiom])
    {
      HIDWORD(v321[1]) = 0;
      LODWORD(v321[2]) = 1;
      goto LABEL_1400;
    }
  }

  LODWORD(v321[2]) = v175 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v255 = [MEMORY[0x277D759A0] mainScreen];
      [v255 _referenceBounds];
    }

    HIDWORD(v321[1]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v193 >= *(MEMORY[0x277D66E30] + 104))
    {
      *(v321 + 4) = 0;
      LODWORD(v321[0]) = 0;
      v317 = 0;
      v320 = 0;
      v311 = 0;
      v314 = 0;
      v308 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96728;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v321[1]) = 0;
  }

LABEL_1400:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v321 + 4) = 0;
      goto LABEL_1410;
    }
  }

  else
  {
    v267 = [MEMORY[0x277D75418] currentDevice];
    if ([v267 userInterfaceIdiom])
    {
      HIDWORD(v321[0]) = 0;
      LODWORD(v321[1]) = 1;
      goto LABEL_1410;
    }
  }

  LODWORD(v321[1]) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v258 = [MEMORY[0x277D759A0] mainScreen];
      [v258 _referenceBounds];
    }

    HIDWORD(v321[0]) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v186 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1414;
    }
  }

  else
  {
    HIDWORD(v321[0]) = 0;
  }

LABEL_1410:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v321[0]) = 0;
    v317 = 0;
    v320 = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96730;
    goto LABEL_537;
  }

LABEL_1414:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1418:
    LODWORD(v321[0]) = 0;
    HIDWORD(v320) = 0;
    goto LABEL_1525;
  }

  v187 = __sb__runningInSpringBoard();
  if (v187)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1418;
    }
  }

  else
  {
    v260 = [MEMORY[0x277D75418] currentDevice];
    if ([v260 userInterfaceIdiom])
    {
      HIDWORD(v320) = 0;
      LODWORD(v321[0]) = 1;
      goto LABEL_1525;
    }
  }

  LODWORD(v321[0]) = v187 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v251 = [MEMORY[0x277D759A0] mainScreen];
      [v251 _referenceBounds];
    }

    HIDWORD(v320) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v207 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v320) = 0;
      v314 = 0;
      v317 = 0;
      v308 = 0;
      v311 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96738;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v320) = 0;
  }

LABEL_1525:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v320) = 0;
      HIDWORD(v317) = 0;
      goto LABEL_1535;
    }
  }

  else
  {
    v263 = [MEMORY[0x277D75418] currentDevice];
    if ([v263 userInterfaceIdiom])
    {
      HIDWORD(v317) = 0;
      LODWORD(v320) = 1;
      goto LABEL_1535;
    }
  }

  LODWORD(v320) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v254 = [MEMORY[0x277D759A0] mainScreen];
      [v254 _referenceBounds];
    }

    HIDWORD(v317) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v200 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1539;
    }
  }

  else
  {
    HIDWORD(v317) = 0;
  }

LABEL_1535:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v317) = 0;
    v311 = 0;
    v314 = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96740;
    goto LABEL_537;
  }

LABEL_1539:
  v201 = __sb__runningInSpringBoard();
  if (v201)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v317) = 0;
      HIDWORD(v314) = 0;
      goto LABEL_1549;
    }
  }

  else
  {
    v261 = [MEMORY[0x277D75418] currentDevice];
    if ([v261 userInterfaceIdiom])
    {
      HIDWORD(v314) = 0;
      LODWORD(v317) = 1;
      goto LABEL_1549;
    }
  }

  LODWORD(v317) = v201 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v252 = [MEMORY[0x277D759A0] mainScreen];
      [v252 _referenceBounds];
    }

    HIDWORD(v314) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v203 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v314) = 0;
      v308 = 0;
      v311 = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC96718;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v314) = 0;
  }

LABEL_1549:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v314) = 0;
      HIDWORD(v311) = 0;
      goto LABEL_1565;
    }
  }

  else
  {
    v257 = [MEMORY[0x277D75418] currentDevice];
    if ([v257 userInterfaceIdiom])
    {
      HIDWORD(v311) = 0;
      LODWORD(v314) = 1;
      goto LABEL_1565;
    }
  }

  LODWORD(v314) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v250 = [MEMORY[0x277D759A0] mainScreen];
      [v250 _referenceBounds];
    }

    HIDWORD(v311) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v210 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1607;
    }
  }

  else
  {
    HIDWORD(v311) = 0;
  }

LABEL_1565:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v311) = 0;
    v308 = 0;
    v305 = 0;
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC96720;
    goto LABEL_537;
  }

LABEL_1607:
  v211 = __sb__runningInSpringBoard();
  if (v211)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v311) = 0;
      HIDWORD(v308) = 0;
      goto LABEL_1648;
    }
  }

  else
  {
    v256 = [MEMORY[0x277D75418] currentDevice];
    if ([v256 userInterfaceIdiom])
    {
      HIDWORD(v308) = 0;
      LODWORD(v311) = 1;
      goto LABEL_1648;
    }
  }

  LODWORD(v311) = v211 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v249 = [MEMORY[0x277D759A0] mainScreen];
      [v249 _referenceBounds];
    }

    HIDWORD(v308) = v20 ^ 1;
    BSSizeRoundForScale();
    if (v217 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v308) = 0;
      v305 = 0;
      v302 = 0;
      v299 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC966E8;
      goto LABEL_537;
    }
  }

  else
  {
    HIDWORD(v308) = 0;
  }

LABEL_1648:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v308) = 0;
      v305 = 0;
      goto LABEL_1664;
    }
  }

  else
  {
    v253 = [MEMORY[0x277D75418] currentDevice];
    if ([v253 userInterfaceIdiom])
    {
      v305 = 0;
      LODWORD(v308) = 1;
      goto LABEL_1664;
    }
  }

  LODWORD(v308) = v20 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v248 = [MEMORY[0x277D759A0] mainScreen];
      [v248 _referenceBounds];
    }

    v305 = v20 ^ 1;
    BSSizeRoundForScale();
    if (v219 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1692;
    }
  }

  else
  {
    v305 = 0;
  }

LABEL_1664:
  if (_SBF_Private_IsD53())
  {
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC966F0;
    goto LABEL_537;
  }

LABEL_1692:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC966C8;
    goto LABEL_537;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC966D0;
    goto LABEL_537;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC966B8;
    goto LABEL_537;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v302 = 0;
    v299 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC966C0;
    goto LABEL_537;
  }

  v221 = __sb__runningInSpringBoard();
  if (v221)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v302 = 0;
      v299 = 0;
      goto LABEL_1815;
    }
  }

  else
  {
    v247 = [MEMORY[0x277D75418] currentDevice];
    if ([v247 userInterfaceIdiom])
    {
      v299 = 0;
      v302 = 1;
      goto LABEL_1815;
    }
  }

  v302 = v221 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v245 = [MEMORY[0x277D759A0] mainScreen];
      [v245 _referenceBounds];
    }

    v299 = v20 ^ 1;
    BSSizeRoundForScale();
    if (v238 >= *(MEMORY[0x277D66E30] + 88))
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC966D8;
      goto LABEL_537;
    }
  }

  else
  {
    v299 = 0;
  }

LABEL_1815:
  v234 = __sb__runningInSpringBoard();
  if (v234)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v82 = 0;
      v83 = 0;
      goto LABEL_1835;
    }
  }

  else
  {
    v246 = [MEMORY[0x277D75418] currentDevice];
    if ([v246 userInterfaceIdiom])
    {
      v83 = 0;
      v82 = 1;
      goto LABEL_1835;
    }
  }

  v82 = v234 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v20 = __sb__runningInSpringBoard();
    if (v20)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v244 = [MEMORY[0x277D759A0] mainScreen];
      [v244 _referenceBounds];
    }

    v83 = v20 ^ 1;
    BSSizeRoundForScale();
    if (v240 >= *(MEMORY[0x277D66E30] + 72))
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = &qword_21EC966E0;
      goto LABEL_537;
    }
  }

  else
  {
    v83 = 0;
  }

LABEL_1835:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v84 = 0;
      v85 = 0;
      goto LABEL_1856;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    if ([v6 userInterfaceIdiom])
    {
      v85 = 0;
      v84 = 1;
      goto LABEL_1856;
    }
  }

  v84 = v20 ^ 1;
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 _referenceBounds];
  }

  v85 = v16 ^ 1;
  BSSizeRoundForScale();
  if (v236 >= *(MEMORY[0x277D66E30] + 56))
  {
    v86 = 0;
    v87 = 0;
    v88 = &qword_21EC966B0;
    goto LABEL_537;
  }

LABEL_1856:
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v86 = 0;
      v87 = 0;
LABEL_1883:
      v88 = &CSTimeLabelLandscapeBaselineY;
      goto LABEL_537;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    if ([v4 userInterfaceIdiom])
    {
      v87 = 0;
      v86 = 1;
      goto LABEL_1883;
    }
  }

  v86 = v16 ^ 1;
  v242 = __sb__runningInSpringBoard();
  if (v242)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 _referenceBounds];
  }

  v87 = v242 ^ 1;
  BSSizeRoundForScale();
  if (v243 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_1883;
  }

  v88 = &qword_21EC966A8;
LABEL_537:
  v101 = *v88;
  if (v87)
  {

    if (!v86)
    {
      goto LABEL_539;
    }
  }

  else if (!v86)
  {
LABEL_539:
    if (v85)
    {
      goto LABEL_540;
    }

    goto LABEL_544;
  }

  if (v85)
  {
LABEL_540:

    if (!v84)
    {
      goto LABEL_546;
    }

    goto LABEL_545;
  }

LABEL_544:
  if (v84)
  {
LABEL_545:
  }

LABEL_546:
  if (v83)
  {
  }

  if (v82)
  {
  }

  if (v299)
  {
  }

  if (v302)
  {
  }

  if (v305)
  {
  }

  if (v308)
  {
  }

  if (HIDWORD(v308))
  {
  }

  if (v311)
  {
  }

  if (HIDWORD(v311))
  {
  }

  if (v314)
  {
  }

  if (HIDWORD(v314))
  {
  }

  if (v317)
  {
  }

  if (HIDWORD(v317))
  {
  }

  if (v320)
  {
  }

  if (HIDWORD(v320))
  {
  }

  if (LODWORD(v321[0]))
  {
  }

  if (HIDWORD(v321[0]))
  {
  }

  if (LODWORD(v321[1]))
  {
  }

  if (HIDWORD(v321[1]))
  {
  }

  if (LODWORD(v321[2]))
  {
  }

  if (HIDWORD(v321[2]))
  {
  }

  if (LODWORD(v321[3]))
  {
  }

  if (HIDWORD(v321[3]))
  {
  }

  if (LODWORD(v321[4]))
  {
  }

  if (HIDWORD(v321[4]))
  {
  }

  if (LODWORD(v321[5]))
  {
  }

  if (HIDWORD(v321[5]))
  {
  }

  if (LODWORD(v321[6]))
  {
  }

  if (HIDWORD(v321[6]))
  {
  }

  if (LODWORD(v321[7]))
  {
  }

  if (HIDWORD(v321[7]))
  {
  }

  if (LODWORD(v321[8]))
  {
  }

  if (HIDWORD(v321[8]))
  {
  }

  if (LODWORD(v321[9]))
  {
  }

  if (HIDWORD(v321[9]))
  {
  }

  if (LODWORD(v321[10]))
  {
  }

  if (HIDWORD(v321[10]))
  {
  }

  if (LODWORD(v321[11]))
  {
  }

  if (HIDWORD(v321[11]))
  {
  }

  if (LODWORD(v321[12]))
  {
  }

  if (HIDWORD(v321[12]))
  {
  }

  if (LODWORD(v321[13]))
  {
  }

  if (HIDWORD(v321[13]))
  {
  }

  if (LODWORD(v321[14]))
  {
  }

  if (HIDWORD(v321[14]))
  {
  }

  if (LODWORD(v321[15]))
  {
  }

  if (HIDWORD(v321[15]))
  {
  }

  if (v322)
  {
  }

  if (HIDWORD(v322))
  {
  }

  if (v323)
  {
  }

  if (HIDWORD(v323))
  {
  }

  if (v324)
  {
  }

  if (HIDWORD(v324))
  {
  }

  return v101;
}

- (double)prominentBaselineToListY
{
  if (prominentBaselineToListY_onceToken != -1)
  {
    [CSCoverSheetViewController(Layout) prominentBaselineToListY];
  }

  return *&prominentBaselineToListY_prominentBaselineToListY;
}

- (BOOL)_isPageContentHidden
{
  v2 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v2 componentForType:4 property:1];
  v4 = [v3 isHidden];

  return v4;
}

- (BOOL)_isSlideableContentOnscreen
{
  [(CSCoverSheetViewController *)self _slideableContentOffset];

  return [(CSCoverSheetViewController *)self _isSlideableContentOffsetOnscreen:?];
}

- (CGPoint)_slideableContentOffset
{
  v2 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v2 componentForType:5 property:2];
  [v3 offset];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)complicationsUsingBottomPosition
{
  if ([(CSCoverSheetViewController *)self _areComplicationsHidden])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(CSCoverSheetViewController *)self _wouldComplicationsUseBottomPosition];
    if (v3)
    {
      LOBYTE(v3) = ![(CSWidgetGridViewController *)self->_complicationContainerViewController isEmpty];
    }
  }

  return v3;
}

- (void)_displayWillDisappearImplementation
{
  [(CSCoverSheetViewController *)self _listenForDisplayLayoutChanges:0];
  notificationClearingTrigger = self->_notificationClearingTrigger;
  v4 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  -[CSNotificationClearingTrigger setHadNotificationContentAtDisappearance:](notificationClearingTrigger, "setHadNotificationContentAtDisappearance:", [v4 hasContent]);
}

- (BOOL)isInteractingWithNotificationList
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v3 = [v2 isInteractingWithNotificationList];

  return v3;
}

- (id)_createFakeStatusBar
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
  v7 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] statusBarHeight];
  v9 = [v6 createFakeStatusBarWithReason:@"SBDashBoardFakeStatusBar" withFrame:{0.0, 0.0, v5, v8}];

  v20 = &unk_28307A4F0;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CSCoverSheetViewController shouldShowLockStatusBarTime](self, "shouldShowLockStatusBarTime")}];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [v9 setEnabledCenterItems:v11 duration:0.0];

  [v9 setOrientation:{objc_msgSend(*v7, "activeInterfaceOrientation")}];
  v12 = [(CSCoverSheetViewController *)self _fakeStatusBarSettings];
  [v9 setStyleRequest:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_alloc(MEMORY[0x277D6BA48]);
    v14 = [MEMORY[0x277D6BAF0] disabledEntry];
    v15 = [v13 initWithEntry:v14 forKey:*MEMORY[0x277D6BE40]];

    v16 = [v9 statusBar];
    [v16 setOverlayData:v15];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277D76298]);
    v16 = objc_alloc_init(MEMORY[0x277D76308]);
    [v16 setEnabled:0];
    v17 = [MEMORY[0x277D76308] disabledEntry];
    [v15 setSensorActivityEntry:v17];

    v18 = [v9 statusBar];
    [v18 setOverlayData:v15];
  }

  return v9;
}

- (void)_displayDidDisappearImplementation
{
  v21 = *MEMORY[0x277D85DE8];
  [(CSCoverSheetViewController *)self _setHasContentAboveCoverSheet:0];
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 resetScrollViewToMainPageAnimated:0 withCompletion:0];

  [(CSCoverSheetViewController *)self _handleEventType:9];
  [(CSNotificationClearingTrigger *)self->_notificationClearingTrigger setUiLocked:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CSCoverSheetViewController *)self pageViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v16 + 1) + 8 * v8++) dismissPresentationAnimated:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if ([(CSCoverSheetViewController *)self _isPresentingDismissableRemoteContent])
  {
    [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:7];
  }

  [(CSCoverSheetViewController *)self dismissModalPresentationAnimated:0 completion:0];
  [(CSNotificationDispatcher *)self->_notificationDispatcher setActive:0];
  v9 = [(CSCoverSheetViewController *)self coverSheetView];
  [v9 viewControllerDidDisappear];

  [(CSCoverSheetViewController *)self setActiveAppearance:0];
  [(CSScrollGestureController *)self->_scrollGestureController setDelegate:0];
  [(CSScrollGestureController *)self->_scrollGestureController invalidate];
  scrollGestureController = self->_scrollGestureController;
  self->_scrollGestureController = 0;

  v11 = [(CSCoverSheetViewController *)self coverSheetView];
  [v11 setStatusBarBackgroundView:0];

  statusBarBackgroundView = self->_statusBarBackgroundView;
  self->_statusBarBackgroundView = 0;

  [(CSCoverSheetViewController *)self _invalidateStatusBarAssertions];
  [(CSCoverSheetViewController *)self dismissHomeScreenOverlay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained coverSheetViewController:self requestsTouchIDDisabled:0 forReason:@"CSActiveBehavior"];
  [WeakRetained coverSheetViewController:self requestsPreArmDisabled:0 forReason:@"CSActiveBehavior"];
  v14 = SBLogDashBoard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "DashBoard switching to CSCoverSheetParticipantStateInactive", v15, 2u);
  }

  self->_participantState = 1;
}

- (BOOL)_isPresentingModalRemoteContent
{
  v3 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
  if ([(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v3])
  {
    v4 = self->_remoteContentModalViewController != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dismissHomeScreenOverlay
{
  v2 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  if (v2)
  {
    v3 = v2;
    [v2 dismissAnimated:1 completionHandler:0];
    v2 = v3;
  }
}

- (void)_clearChargingModalStateIfNecessary
{
  if (![(CSCoverSheetViewController *)self _isShowingChargingModal]&& self->_chargingViewController)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Charging is in a stuck state. Clearing out everything.", v6, 2u);
    }

    [(CSCoverSheetViewController *)self _clearChargingModalTimerPerformingHandler:0];
    chargingViewController = self->_chargingViewController;
    self->_chargingViewController = 0;

    v5 = +[(CSCoverSheetViewControllerBase *)CSChargingViewController];
    [(CSCoverSheetViewController *)self _dismissModalViewControllersWithIdentifier:v5 animated:0 completion:0];
  }
}

- (BOOL)_isShowingChargingModal
{
  chargingViewController = self->_chargingViewController;
  if (chargingViewController)
  {
    v4 = [(CSCoverSheetViewControllerBase *)chargingViewController coverSheetIdentifier];
    v5 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v4];

    LOBYTE(chargingViewController) = v5;
  }

  return chargingViewController;
}

- (double)_dateTimeAlphaForFade
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:1 identifier:@"(active)"];

  v5 = 1.0;
  if (![(CSPresentationViewController *)self->_modalPresentationController isPresentingContent])
  {
    [v4 alpha];
    v5 = v6;
  }

  return v5;
}

- (void)_setupWallpaperGesture
{
  if (![(CSCoverSheetViewController *)self _shouldSetUpWallpaperGesture])
  {
    return;
  }

  [(UIGestureRecognizer *)self->_wallpaperGestureRecognizer setDelegate:self];
  v3 = [(CSCoverSheetViewController *)self irisWallpaperPlayer];

  if (v3)
  {
    v4 = [(CSCoverSheetViewController *)self activeBehavior];
    v5 = [v4 areRestrictedCapabilities:256];

    if (v5)
    {
      v6 = [(CSCoverSheetViewController *)self coverSheetView];
      [v6 setWallpaperGestureRecognizer:0];

LABEL_10:
      userPresenceMonitor = self->_userPresenceMonitor;

      [(CSUserPresenceMonitor *)userPresenceMonitor disableDetectionForReason:@"Wallpaper" monitorType:0];
      return;
    }
  }

  v7 = [(CSCoverSheetViewController *)self coverSheetView];
  [v7 setWallpaperGestureRecognizer:self->_wallpaperGestureRecognizer];

  if (![(CSCoverSheetViewController *)self _wallpaperGestureShouldRequireUserPresence])
  {
    goto LABEL_10;
  }

  v8 = self->_userPresenceMonitor;

  [(CSUserPresenceMonitor *)v8 enableDetectionForReason:@"Wallpaper" monitorType:0];
}

- (void)_updateOverrideDateIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self _overrideDate];
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = SBLogDashBoard();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v10 = 138543362;
        v11 = v3;
        v6 = "[Date Override] Adding override for date: %{public}@.";
        v7 = v4;
        v8 = 12;
LABEL_7:
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
      }
    }

    else if (v5)
    {
      LOWORD(v10) = 0;
      v6 = "[Date Override] Removing override.";
      v7 = v4;
      v8 = 2;
      goto LABEL_7;
    }

    objc_storeStrong(&self->_defaultsDerivedOverrideDate, v3);
    v9 = [MEMORY[0x277D65E40] sharedInstance];
    [v9 setOverrideDate:v3];
  }
}

- (id)_overrideDate
{
  if (![(SBLockScreenDefaults *)self->_lockScreenDefaults useDefaultsValuesForDateTimeOverrides])
  {
    goto LABEL_18;
  }

  v3 = [(SBLockScreenDefaults *)self->_lockScreenDefaults dateTimeOverridesIntervalSince1970];
  if (!v3)
  {
    if ([(SBLockScreenDefaults *)self->_lockScreenDefaults overridesDateTimeToDefaultToday])
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[Date Override] Enforcing Hero override.", v18, 2u);
      }

      v8 = [MEMORY[0x277CBEA80] currentCalendar];
      v9 = [MEMORY[0x277CBEAA8] date];
      v6 = [v8 dateBySettingHour:9 minute:41 second:0 ofDate:v9 options:0];

LABEL_14:
      goto LABEL_19;
    }

    v10 = [(SBLockScreenDefaults *)self->_lockScreenDefaults overridesDateTimeToDefaultPast];
    v11 = SBLogDashBoard();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *v17 = 0;
        _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Date Override] Enforcing Historical override.", v17, 2u);
      }

      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1168335660.0];
      v13 = [MEMORY[0x277CBEBB0] systemTimeZone];
      v14 = 1168335660.0 - [v13 secondsFromGMTForDate:v8];

      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14];
      goto LABEL_14;
    }

    if (v12)
    {
      *v16 = 0;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Date Override] Couldn't find override.", v16, 2u);
    }

LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  v4 = v3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[Date Override] Enforcing Custom override.", buf, 2u);
  }

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4];
LABEL_19:

  return v6;
}

- (void)idleTimerDidRefresh
{
  v3 = [CSEvent eventWithType:18];
  [(CSCoverSheetViewController *)self _handleEvent:v3];
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = [a3 _backlightLuminance];
  v5 = [v7 traitCollection];
  v6 = [v5 _backlightLuminance];

  if ((v4 != 1) == (v6 == 1))
  {
    [v7 _updateAppearanceForAODTransitionToInactive:v6 == 1];
  }
}

- (BOOL)proudLockViewControllerIsCoverSheetVisible
{
  v3 = [(CSCoverSheetViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && !self->_hasContentAboveCoverSheet)
  {
    v4 = [v3 coverSheetViewControllerIsPasscodeVisible:self] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (int64_t)backlightLuminance
{
  v2 = [(CSCoverSheetViewController *)self traitCollection];
  v3 = [v2 _backlightLuminance];

  return v3;
}

- (CSCoverSheetViewController)initWithPageViewControllers:(id)a3 mainPageContentViewController:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 containsObject:v9] & 1) == 0)
  {
    [CSCoverSheetViewController initWithPageViewControllers:mainPageContentViewController:context:];
  }

  v221.receiver = self;
  v221.super_class = CSCoverSheetViewController;
  v11 = [(CSCoverSheetViewController *)&v221 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_coverSheetContext, a5);
    v13 = +[CSLockScreenDomain rootSettings];
    prototypeSettings = v12->_prototypeSettings;
    v12->_prototypeSettings = v13;

    [(PTSettings *)v12->_prototypeSettings addKeyObserver:v12];
    v15 = objc_alloc_init(MEMORY[0x277D65FF0]);
    lockScreenDefaults = v12->_lockScreenDefaults;
    v12->_lockScreenDefaults = v15;

    v17 = objc_alloc_init(MEMORY[0x277D65D98]);
    alwaysOnDefaults = v12->_alwaysOnDefaults;
    v12->_alwaysOnDefaults = v17;

    v19 = objc_opt_new();
    activityCenter = v12->_activityCenter;
    v12->_activityCenter = v19;

    v212 = v8;
    [(CSCoverSheetViewController *)v12 _setPageViewControllers:v8];
    [(CSCoverSheetViewController *)v12 _setAllowedPageViewControllers:MEMORY[0x277CBEBF8]];
    [(CSCoverSheetViewController *)v12 _setMainPageContentViewController:v9];
    v21 = [[CSMagSafeAccessoryStatusObserver alloc] initWithCoverSheetContext:v12->_coverSheetContext];
    accessoryAttachmentObserver = v12->_accessoryAttachmentObserver;
    v12->_accessoryAttachmentObserver = v21;

    [(CSMagSafeAccessoryStatusObserver *)v12->_accessoryAttachmentObserver setDelegate:v12];
    v23 = objc_opt_new();
    attachedAccessories = v12->_attachedAccessories;
    v12->_attachedAccessories = v23;

    v12->_isAccessoryAnimationPresenting = 0;
    v12->_isAccessoryAnimationAllowed = 0;
    v25 = +[CSBehavior behavior];
    localBehavior = v12->_localBehavior;
    v12->_localBehavior = v25;

    v27 = +[CSBehavior behavior];
    irisBehavior = v12->_irisBehavior;
    v12->_irisBehavior = v27;

    v29 = +[CSBehavior behavior];
    landscapeBehavior = v12->_landscapeBehavior;
    v12->_landscapeBehavior = v29;

    v31 = +[CSBehavior behavior];
    screenOffBehavior = v12->_screenOffBehavior;
    v12->_screenOffBehavior = v31;

    v33 = +[CSBehavior behavior];
    posterBoardBehavior = v12->_posterBoardBehavior;
    v12->_posterBoardBehavior = v33;

    v35 = +[CSBehavior behavior];
    accessoryBehavior = v12->_accessoryBehavior;
    v12->_accessoryBehavior = v35;

    v37 = [CSAppearance appearanceWithIdentifier:@"(default)"];
    localAppearance = v12->_localAppearance;
    v12->_localAppearance = v37;

    v39 = v12->_localAppearance;
    v40 = objc_opt_new();
    v41 = [v40 priority:-100];
    v42 = [v41 style:&unk_28307A430];
    [(CSAppearance *)v39 addComponent:v42];

    v43 = v12->_localAppearance;
    v44 = +[CSComponent dateView];
    v45 = [v44 priority:-100];
    v46 = [v45 hidden:0];
    [(CSAppearance *)v43 addComponent:v46];

    v47 = v12->_localAppearance;
    v48 = objc_opt_new();
    v49 = [v48 priority:-100];
    v50 = [v49 hidden:0];
    v51 = [v50 fakeStatusBarLevel:&unk_28307A448];
    [(CSAppearance *)v47 addComponent:v51];

    v52 = v12->_localAppearance;
    v53 = +[CSComponent statusBarBackground];
    v54 = [v53 priority:-100];
    v55 = [v54 hidden:1];
    [(CSAppearance *)v52 addComponent:v55];

    v56 = v12->_localAppearance;
    v57 = +[CSComponent pageControl];
    v58 = [v57 priority:-100];
    v59 = [v58 hidden:0];
    [(CSAppearance *)v56 addComponent:v59];

    v60 = v12->_localAppearance;
    v61 = +[CSComponent pageContent];
    v62 = [v61 priority:-100];
    v63 = [v62 hidden:0];
    [(CSAppearance *)v60 addComponent:v63];

    v64 = v12->_localAppearance;
    v65 = +[CSComponent slideableContent];
    v66 = [v65 priority:-100];
    v67 = [v66 hidden:0];
    [(CSAppearance *)v64 addComponent:v67];

    v68 = v12->_localAppearance;
    v69 = +[CSComponent wallpaper];
    v70 = [v69 priority:-100];
    v71 = [v70 hidden:1];
    [(CSAppearance *)v68 addComponent:v71];

    v72 = v12->_localAppearance;
    v73 = +[CSComponent tinting];
    v74 = [v73 priority:-100];
    v75 = [v74 hidden:1];
    [(CSAppearance *)v72 addComponent:v75];

    v76 = v12->_localAppearance;
    v77 = +[CSComponent footerStatusLabel];
    v78 = [v77 priority:-100];
    v79 = [v78 hidden:0];
    [(CSAppearance *)v76 addComponent:v79];

    v80 = v12->_localAppearance;
    v81 = +[CSComponent footerCallToActionLabel];
    v82 = [v81 priority:-100];
    v83 = [v82 hidden:0];
    [(CSAppearance *)v80 addComponent:v83];

    v84 = v12->_localAppearance;
    v85 = objc_opt_new();
    v86 = [v85 priority:-100];
    v87 = [v86 hidden:0];
    v88 = [v87 prefersInlineCoaching:0];
    [(CSAppearance *)v84 addComponent:v88];

    v89 = v12->_localAppearance;
    v90 = +[CSComponent content];
    v91 = [v90 priority:-100];
    v92 = [v91 hidden:0];
    [(CSAppearance *)v89 addComponent:v92];

    v93 = v12->_localAppearance;
    v94 = +[CSComponent statusBarGradient];
    v95 = [v94 priority:-100];
    v96 = [v95 hidden:0];
    [(CSAppearance *)v93 addComponent:v96];

    v97 = v12->_localAppearance;
    v98 = objc_opt_new();
    v99 = [v98 priority:-100];
    v100 = [v99 hidden:1];
    v101 = [v100 lighterReduction:1];
    [(CSAppearance *)v97 addComponent:v101];

    v102 = v12->_localAppearance;
    v103 = +[CSComponent dimmingLayer];
    v104 = [v103 priority:-100];
    v105 = [v104 hidden:0];
    [(CSAppearance *)v102 addComponent:v105];

    v106 = v12->_localAppearance;
    v107 = +[CSComponent notificationDimmingLayer];
    v108 = [v107 priority:-100];
    v109 = [v108 hidden:1];
    [(CSAppearance *)v106 addComponent:v109];

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2 || !_os_feature_enabled_impl())
      {
        goto LABEL_12;
      }
    }

    else
    {
      v110 = [MEMORY[0x277D75418] currentDevice];
      if ([v110 userInterfaceIdiom] != 1)
      {
LABEL_11:

        goto LABEL_12;
      }

      v111 = _os_feature_enabled_impl();

      if ((v111 & 1) == 0)
      {
LABEL_12:
        v115 = [MEMORY[0x277CCAB98] defaultCenter];
        [v115 addObserver:v12 selector:sel__displayWillTurnOnWhileOnCoverSheet_ name:*MEMORY[0x277D67A38] object:0];
        [v115 addObserver:v12 selector:sel__preferredContentSizeDidChange name:*MEMORY[0x277D76810] object:0];
        [v115 addObserver:v12 selector:sel__reduceMotionDidChange_ name:*MEMORY[0x277D764C0] object:0];
        [v115 addObserver:v12 selector:sel__liftToWakeGestureDetected name:*MEMORY[0x277D67A78] object:0];
        [v115 addObserver:v12 selector:sel__managedConfigurationEffectiveSettingsDidChange_ name:*MEMORY[0x277D25CA0] object:0];
        [v115 addObserver:v12 selector:sel__updateForGlassLegibilitySetting name:*MEMORY[0x277D77258] object:0];
        [v115 addObserver:v12 selector:sel__updateForGlassLegibilitySetting name:*MEMORY[0x277D764C8] object:0];
        [(CSCoverSheetViewController *)v12 _updateForGlassLegibilitySetting];
        v116 = [CSPowerChangeObserver alloc];
        v117 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext powerStatusProvider];
        v118 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext powerStatusChangeNotificationName];
        v219[0] = MEMORY[0x277D85DD0];
        v219[1] = 3221225472;
        v219[2] = __96__CSCoverSheetViewController_initWithPageViewControllers_mainPageContentViewController_context___block_invoke;
        v219[3] = &unk_27838B9B8;
        v119 = v12;
        v220 = v119;
        v120 = [(CSPowerChangeObserver *)v116 initWithStatusProvider:v117 notificationName:v118 updateBlock:v219];
        powerChangeObserver = v119->_powerChangeObserver;
        v119->_powerChangeObserver = v120;

        v122 = objc_alloc_init(MEMORY[0x277CF0DB0]);
        batteryDeviceController = v119->_batteryDeviceController;
        v119->_batteryDeviceController = v122;

        v124 = [[CSEmbeddedContentActionManager alloc] initWithDelegate:v119];
        embeddedContentActionManager = v119->_embeddedContentActionManager;
        v119->_embeddedContentActionManager = v124;

        v126 = v119->_embeddedContentActionManager;
        v127 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext contentActionProvider];
        [(CSEmbeddedContentActionManager *)v126 setContentActionProvider:v127];

        v128 = objc_alloc_init(CSBackgroundPresentationManager);
        backgroundPresentationManager = v119->_backgroundPresentationManager;
        v119->_backgroundPresentationManager = v128;

        v130 = [[CSBackgroundContentActionManager alloc] initWithDelegate:v119];
        backgroundContentActionManager = v119->_backgroundContentActionManager;
        v119->_backgroundContentActionManager = v130;

        v132 = v119->_backgroundContentActionManager;
        v133 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext contentActionProvider];
        [(CSBackgroundContentActionManager *)v132 setContentActionProvider:v133];

        v134 = [CSRemoteContentSessionManager alloc];
        v135 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext authenticationStatusProvider];
        v136 = [(CSRemoteContentSessionManager *)v134 initWithAuthenticationStatusProvider:v135];
        remoteContentSessionManager = v119->_remoteContentSessionManager;
        v119->_remoteContentSessionManager = v136;

        [(CSRemoteContentSessionManager *)v119->_remoteContentSessionManager setForwardingHostDelegate:v119];
        v138 = [MEMORY[0x277CBEB58] set];
        remoteContentInlineProvidingManagers = v119->_remoteContentInlineProvidingManagers;
        v119->_remoteContentInlineProvidingManagers = v138;

        v140 = [v9 combinedListViewController];
        [v140 setRemoteContentInlineProvider:v119];

        v141 = [v9 combinedListViewController];
        [v141 setCoverSheetGestureHandling:v119];
        [v141 setActivityItemObserver:v119];
        [v141 setAudioCategoriesObserver:v119];
        v142 = objc_alloc_init(CSModalPresentationViewController);
        modalPresentationController = v119->_modalPresentationController;
        v119->_modalPresentationController = v142;

        [(CSPresentationViewController *)v119->_modalPresentationController setPresentationDelegate:v119];
        v144 = [MEMORY[0x277CBEB58] set];
        pendingModalViewControllers = v119->_pendingModalViewControllers;
        v119->_pendingModalViewControllers = v144;

        v146 = [[CSTimerViewController alloc] initWithNibName:0 bundle:0];
        timerViewController = v119->_timerViewController;
        v119->_timerViewController = v146;

        [(CSTimerViewController *)v119->_timerViewController setDelegate:v119];
        [(CSTimerViewController *)v119->_timerViewController setEnabled:1];
        v148 = objc_alloc_init(CSNotificationDispatcher);
        notificationDispatcher = v119->_notificationDispatcher;
        v119->_notificationDispatcher = v148;

        [(CSNotificationDispatcher *)v119->_notificationDispatcher setModalDestination:v119];
        v150 = v119->_notificationDispatcher;
        v151 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext carPlayStatusProvider];
        [(CSNotificationDispatcher *)v150 setCarPlayStatusProvider:v151];

        [(CSNotificationDispatcher *)v119->_notificationDispatcher setListDestination:v9];
        [v9 setDispatcher:v119->_notificationDispatcher];
        v152 = [v9 combinedListViewController];
        v153 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext contentActionProvider];
        [v152 setContentActionProvider:v153];

        v154 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext legibilityProvider];
        legibilityProvider = v119->_legibilityProvider;
        v119->_legibilityProvider = v154;

        [(CSLegibilityProviding *)v119->_legibilityProvider setLegibilityProviderDelegate:v119];
        v156 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext lockOutStatusProvider];
        [(CSCoverSheetViewController *)v119 _setLockOutController:v156];

        v157 = objc_alloc_init(CSLayoutStrategy);
        [(CSLayoutStrategy *)v157 setPersistentLayout:v119];
        [(CSCoverSheetViewController *)v119 setLayoutStrategy:v157];
        v158 = objc_alloc_init(MEMORY[0x277CBEB18]);
        exemptFromInactiveAppearanceParticipants = v119->_exemptFromInactiveAppearanceParticipants;
        v119->_exemptFromInactiveAppearanceParticipants = v158;

        v160 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        externalAppearanceProviders = v119->_externalAppearanceProviders;
        v119->_externalAppearanceProviders = v160;

        v162 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        externalBehaviorProviders = v119->_externalBehaviorProviders;
        v119->_externalBehaviorProviders = v162;

        v164 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        externalEventHandlers = v119->_externalEventHandlers;
        v119->_externalEventHandlers = v164;

        v166 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        externalLockProviders = v119->_externalLockProviders;
        v119->_externalLockProviders = v166;

        v168 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        externalPresentationProviders = v119->_externalPresentationProviders;
        v119->_externalPresentationProviders = v168;

        v170 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        applicationHosters = v119->_applicationHosters;
        v119->_applicationHosters = v170;

        v172 = [[CSNotificationClearingTrigger alloc] initWithDelegate:v119];
        notificationClearingTrigger = v119->_notificationClearingTrigger;
        v119->_notificationClearingTrigger = v172;

        v174 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext screenWakeAnimationController];
        screenWakeAnimationController = v119->_screenWakeAnimationController;
        v119->_screenWakeAnimationController = v174;

        v176 = objc_alloc_init(MEMORY[0x277D65E88]);
        legacyWallpaperWakeAnimator = v119->_legacyWallpaperWakeAnimator;
        v119->_legacyWallpaperWakeAnimator = v176;

        [(SBFLegacyWallpaperWakeAnimator *)v119->_legacyWallpaperWakeAnimator setWakeState:0];
        v178 = objc_alloc_init(CSNotificationLegibilityDimController);
        notificationLegibilityDimController = v119->_notificationLegibilityDimController;
        v119->_notificationLegibilityDimController = v178;

        v119->_lastAppearState = 0;
        [(CSCoverSheetViewController *)v119 _preferredContentSizeDidChange];
        [(CSCoverSheetViewController *)v119 _addStateCaptureHandlers];
        v180 = [MEMORY[0x277D67D40] sharedInstance];
        phoneUnlockWithWatchController = v119->_phoneUnlockWithWatchController;
        v119->_phoneUnlockWithWatchController = v180;

        [(SBUIPhoneUnlockWithWatchController *)v119->_phoneUnlockWithWatchController setDelegate:v119];
        v182 = v119->_phoneUnlockWithWatchController;
        v183 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext biometricResource];
        [(SBUIPhoneUnlockWithWatchController *)v182 setBiometricResource:v183];

        [(SBUIPhoneUnlockWithWatchController *)v119->_phoneUnlockWithWatchController addObserver:v119];
        v184 = [MEMORY[0x277D67D38] sharedInstance];
        phoneUnlockWithVisionController = v119->_phoneUnlockWithVisionController;
        v119->_phoneUnlockWithVisionController = v184;

        [(SBUIPhoneUnlockWithVisionController *)v119->_phoneUnlockWithVisionController addObserver:v119];
        v186 = [MEMORY[0x277D67D30] sharedInstance];
        phoneUnlockWithRemoteDeviceCoordinator = v119->_phoneUnlockWithRemoteDeviceCoordinator;
        v119->_phoneUnlockWithRemoteDeviceCoordinator = v186;

        v188 = v119->_phoneUnlockWithRemoteDeviceCoordinator;
        v189 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext biometricResource];
        [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)v188 setBiometricResource:v189];

        [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)v119->_phoneUnlockWithRemoteDeviceCoordinator addRemoteUnlockHandler:v119->_phoneUnlockWithWatchController];
        [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)v119->_phoneUnlockWithRemoteDeviceCoordinator addRemoteUnlockHandler:v119->_phoneUnlockWithVisionController];
        v190 = objc_alloc_init(CSCoverSheetAppearanceResolver);
        appearanceResolver = v119->_appearanceResolver;
        v119->_appearanceResolver = v190;

        v192 = [CSPosterSwitcherActivationManager alloc];
        v193 = [(CSCoverSheetContextProviding *)v12->_coverSheetContext unlockRequester];
        v194 = [(CSPosterSwitcherActivationManager *)v192 initWithSource:v119 delegate:v119 unlockRequester:v193];
        posterSwitcherActivationManager = v119->_posterSwitcherActivationManager;
        v119->_posterSwitcherActivationManager = v194;

        v196 = *(MEMORY[0x277CBF398] + 16);
        v119->_posterPreferredSalientContentRectangle.origin = *MEMORY[0x277CBF398];
        v119->_posterPreferredSalientContentRectangle.size = v196;
        v197 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
        v198 = [v197 addMonitor:v119 subjectMask:1 subscriptionOptions:1];
        appProtectionSubjectMonitorSubscription = v119->_appProtectionSubjectMonitorSubscription;
        v119->_appProtectionSubjectMonitorSubscription = v198;

        v200 = objc_alloc_init(MEMORY[0x277D65FF8]);
        miscellaneousDefaults = v119->_miscellaneousDefaults;
        v119->_miscellaneousDefaults = v200;

        objc_initWeak(&location, v119);
        v202 = v119->_miscellaneousDefaults;
        v203 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sensitiveUIEnabled"];
        v204 = MEMORY[0x277D85CD0];
        v205 = MEMORY[0x277D85CD0];
        v216[0] = MEMORY[0x277D85DD0];
        v216[1] = 3221225472;
        v216[2] = __96__CSCoverSheetViewController_initWithPageViewControllers_mainPageContentViewController_context___block_invoke_2;
        v216[3] = &unk_27838B748;
        objc_copyWeak(&v217, &location);
        v206 = [(SBMiscellaneousDefaults *)v202 observeDefault:v203 onQueue:v204 withBlock:v216];

        v207 = MEMORY[0x277CF0BD0];
        v213[0] = MEMORY[0x277D85DD0];
        v213[1] = 3221225472;
        v213[2] = __96__CSCoverSheetViewController_initWithPageViewControllers_mainPageContentViewController_context___block_invoke_3;
        v213[3] = &unk_27838BAF0;
        objc_copyWeak(&v215, &location);
        v208 = v119;
        v214 = v208;
        v209 = [v207 assertionWithIdentifier:@"WallpaperOccludedByContent" stateDidChangeHandler:v213];
        wallpaperOccludedAssertions = v208->__wallpaperOccludedAssertions;
        v208->__wallpaperOccludedAssertions = v209;

        objc_destroyWeak(&v215);
        objc_destroyWeak(&v217);
        objc_destroyWeak(&location);

        v8 = v212;
        goto LABEL_13;
      }
    }

    v112 = v12->_localAppearance;
    v110 = +[CSComponent fullBleedContent];
    v113 = [v110 priority:40];
    v114 = [v113 flag:1];
    [(CSAppearance *)v112 addComponent:v114];

    goto LABEL_11;
  }

LABEL_13:

  return v12;
}

void __96__CSCoverSheetViewController_initWithPageViewControllers_mainPageContentViewController_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForSensitiveUI];
}

void __96__CSCoverSheetViewController_initWithPageViewControllers_mainPageContentViewController_context___block_invoke_3(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = v3;
  v5 = [v3 isActive];
  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (v5)
    {
      v9 = @"occluded";
    }

    else
    {
      v9 = @"visible";
    }

    v10 = [WeakRetained[292] reasons];
    *buf = 138543874;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Wallpaper is %@, assertions taken: %@", buf, 0x20u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [WeakRetained[142] copy];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 coverSheetViewController:*(a1 + 32) didOccludeWallpaper:v5];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_accessoryViewControllerTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_accessoryViewControllerChargingTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_chargingViewControllerTimer invalidate];
  [(APSubjectMonitorSubscription *)self->_appProtectionSubjectMonitorSubscription invalidate];
  v3.receiver = self;
  v3.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)_addStateCaptureHandlers
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v8[1] = MEMORY[0x277D85DD0];
  v8[2] = 3221225472;
  v8[3] = __54__CSCoverSheetViewController__addStateCaptureHandlers__block_invoke;
  v8[4] = &unk_27838B8C0;
  objc_copyWeak(&v9, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();

  v7[1] = MEMORY[0x277D85DD0];
  v7[2] = 3221225472;
  v7[3] = __54__CSCoverSheetViewController__addStateCaptureHandlers__block_invoke_2;
  v7[4] = &unk_27838B8C0;
  objc_copyWeak(v8, &location);
  v5 = BSLogAddStateCaptureBlockWithTitle();

  objc_copyWeak(v7, &location);
  v6 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __54__CSCoverSheetViewController__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionWithMultilinePrefix:0];

  return v2;
}

id __54__CSCoverSheetViewController__addStateCaptureHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained __currentDesiredAppearanceWithStartIndex:0 targetIndex:0 targetAppearance:0 targetPresentation:0 modalAppearance:0 proudLockAppearance:0 poseidonAppearance:0 backgroundContentAppearance:0];
  v3 = [v2 description];

  return v3;
}

id __54__CSCoverSheetViewController__addStateCaptureHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeBehavior];
  v3 = NSStringFromCoverSheetScrollingStrategy([v2 scrollingStrategy]);

  v4 = [WeakRetained activeBehavior];
  v5 = NSStringFromCoverSheetCapability([v4 restrictedCapabilities]);

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Scrolling Strategy: %@\nRestricted Capabilities: %@", v3, v5];

  return v6;
}

- (void)setIrisWallpaperPlayer:(id)a3
{
  v5 = a3;
  if (self->_irisWallpaperPlayer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_irisWallpaperPlayer, a3);
    [(PBUIIrisWallpaperPlaying *)self->_irisWallpaperPlayer setIrisDelegate:self];
    v5 = v6;
  }
}

- (void)setWallpaperGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->_wallpaperGestureRecognizer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_wallpaperGestureRecognizer, a3);
    [(CSCoverSheetViewController *)self _setupWallpaperGesture];
    v5 = v6;
  }
}

- (void)setWallpaperColorProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wallpaperColorProvider, obj);
    [(CSMainPageContentViewController *)self->_mainPageContentViewController setWallpaperColorProvider:obj];
  }
}

- (void)setCameraPrewarmer:(id)a3
{
  v5 = a3;
  if (self->_cameraPrewarmer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cameraPrewarmer, a3);
    [(CSQuickActionsViewController *)self->_quickActionsViewController setCameraPrewarmer:self->_cameraPrewarmer];
    v5 = v6;
  }
}

- (void)setEffectiveInterfaceOrientationOverride:(int64_t)a3
{
  if (self->_effectiveInterfaceOrientationOverride != a3)
  {
    self->_effectiveInterfaceOrientationOverride = a3;
    v4 = [(CSCoverSheetViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)activateTodayViewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self activeBehavior];
  v6 = [v5 areRestrictedCapabilities:64];

  if (v4 && v6)
  {
    v4[2](v4);
  }

  v7 = [(CSCoverSheetViewController *)self overlayController];
  if (v7)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__CSCoverSheetViewController_activateTodayViewWithCompletion___block_invoke;
    v14[3] = &unk_27838BAC0;
    v8 = &v15;
    v15 = v4;
    v9 = v4;
    [v7 setPresentationProgress:0 interactive:1 animated:v14 completionHandler:1.0];
  }

  else
  {
    v10 = [(CSCoverSheetViewController *)self _indexOfTodayPage];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__CSCoverSheetViewController_activateTodayViewWithCompletion___block_invoke_2;
    v12[3] = &unk_27838BB18;
    v8 = &v13;
    v13 = v4;
    v11 = v4;
    [(CSCoverSheetViewController *)self activatePage:v10 animated:1 withCompletion:v12];
  }
}

uint64_t __62__CSCoverSheetViewController_activateTodayViewWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __62__CSCoverSheetViewController_activateTodayViewWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deactivateTodayViewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  v6 = v5;
  if (v5)
  {
    if ([v5 isPresented])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __64__CSCoverSheetViewController_deactivateTodayViewWithCompletion___block_invoke;
      v7[3] = &unk_27838BAC0;
      v8 = v4;
      [v6 setPresentationProgress:0 interactive:1 animated:v7 completionHandler:0.0];
    }

    else if (v4)
    {
      v4[2](v4);
    }
  }
}

uint64_t __64__CSCoverSheetViewController_deactivateTodayViewWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)activateMainPageWithCompletion:(id)a3
{
  v4 = a3;
  [(CSCoverSheetViewController *)self activatePage:[(CSCoverSheetViewController *)self _indexOfMainPage] animated:1 withCompletion:v4];
}

- (void)activateCameraWithHostableEntity:(id)a3 animated:(BOOL)a4 sendingActions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke;
  v28[3] = &unk_27838BB68;
  v28[4] = self;
  v13 = v10;
  v29 = v13;
  v32 = a4;
  v14 = v11;
  v30 = v14;
  v15 = v12;
  v31 = v15;
  v16 = MEMORY[0x223D698D0](v28);
  v19 = 0;
  if ([(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource isTransitioning])
  {
    currentTransitionSource = self->_currentTransitionSource;
    v18 = [(CSCoverSheetViewController *)self coverSheetView];

    if (currentTransitionSource == v18)
    {
      v21 = self->_currentTransitionSource;
      if (v21)
      {
        [(CSCoverSheetViewTransitionSource *)v21 transitionContext];
        v22 = *(&v26 + 1);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v22 = 0.0;
      }

      if (v22 == [(CSCoverSheetViewController *)self _indexOfMainPage])
      {
        v19 = 1;
      }
    }
  }

  [(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource cancelTransition];
  [(CSCoverSheetViewController *)self dismissHomeScreenOverlay];
  if ([(CSCoverSheetViewController *)self _isPresentingModalRemoteContent])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke_152;
    v23[3] = &unk_27838BAC0;
    v24 = v16;
    [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:5 completion:v23];
  }

  else
  {
    if (self->_spotlightModalViewController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
      [WeakRetained dismissSpotlightAnimated:1];
    }

    else if (v19)
    {
      self->_transitionType = 0;
      [(CSCoverSheetViewController *)self setCurrentTransitionSource:0];
      [(CSCoverSheetViewController *)self activatePage:[(CSCoverSheetViewController *)self _indexOfMainPage] animated:0 withCompletion:0];
    }

    v16[2](v16);
  }
}

void __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke_2;
  v5[3] = &unk_27838BB40;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v1 _activateCameraEntity:v2 animated:v3 actions:v4 completion:v5];
}

void __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke_2_cold_1();
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2 == 0);
  }
}

void __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke_152(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Dismissing remote modal VC failed; not activating camera", v6, 2u);
    }
  }
}

- (void)setCoverSheetIsVisible:(BOOL)a3
{
  v3 = a3;
  if ([(CSCoverSheetViewController *)self isShowingTodayView])
  {
    v5 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:[(CSCoverSheetViewController *)self _indexOfTodayPage]];
    if (!v3)
    {
      [(CSCoverSheetViewController *)self dismissHomeScreenOverlay];
    }

    [v5 setDisplayLayoutElementActive:v3];
  }

  if (v3)
  {
    if ([(CSCoverSheetViewController *)self _isShowingInlineContent])
    {

      [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleForInlineContent];
    }
  }

  else
  {
    if ([(CSCoverSheetViewController *)self _isPresentingDismissableRemoteContent])
    {
      [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:7 completion:0];
    }

    if (self->_spotlightModalViewController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
      [WeakRetained dismissSpotlightAnimated:0];
    }

    if ([(CSCoverSheetViewController *)self isPasscodeLockVisible])
    {

      [(CSCoverSheetViewController *)self setPasscodeLockVisible:0 animated:0];
    }
  }
}

- (BOOL)isShowingNonNotificationContent
{
  v3 = [(CSCoverSheetViewController *)self mainPageContentViewController];
  v4 = [v3 isShowingNonNotificationContent];

  v5 = [(CSCoverSheetViewController *)self modalPresentationController];
  LOBYTE(v3) = [v5 isPresentingContent];

  return (v4 | v3) & 1;
}

- (BOOL)shouldPresentOrDismissCoverSheetSpotlight
{
  if (self->_spotlightModalViewController)
  {
    LOBYTE(v2) = 1;
  }

  else if ([(CSCoverSheetViewController *)self isMainPageVisible]&& ![(CSCoverSheetViewController *)self isShowingModalView])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (([WeakRetained coverSheetViewControllerHasSecureApp:self] & 1) != 0 || -[CSCoverSheetViewController isPresentingNotificationInLongLook](self, "isPresentingNotificationInLongLook"))
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v2 = ![(CSCoverSheetViewController *)self _isSpotlightBehaviorRestricted];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)presentOrDismissCoverSheetSpotlightAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CSCoverSheetViewController *)self shouldPresentOrDismissCoverSheetSpotlight])
  {
    WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
    v6 = WeakRetained;
    if (self->_spotlightModalViewController)
    {
      [WeakRetained dismissSpotlightAnimated:v3];
    }

    else
    {
      [WeakRetained presentSpotlightAnimated:v3];
    }
  }
}

- (void)updateScaleViewWithScale:(double)a3 withDuration:(double)a4
{
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  CSComponentTransitionInputsMake(0, &v32, a4, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), a3, 0.0);
  localAppearance = self->_localAppearance;
  v6 = [(CSAppearance *)localAppearance componentForType:1 identifier:@"Spotlight"];
  [(CSAppearance *)localAppearance removeComponent:v6];

  v7 = self->_localAppearance;
  v8 = [(CSAppearance *)v7 componentForType:11 identifier:@"Spotlight"];
  [(CSAppearance *)v7 removeComponent:v8];

  v9 = self->_localAppearance;
  v10 = [(CSAppearance *)v9 componentForType:15 identifier:@"Spotlight"];
  [(CSAppearance *)v9 removeComponent:v10];

  v11 = self->_localAppearance;
  v12 = objc_opt_new();
  v13 = [v12 identifier:@"Spotlight"];
  v14 = [v13 priority:40];
  v15 = [v14 transitionModifiers:16];
  v29 = v32;
  v30 = v33;
  v31 = v34;
  v16 = [v15 transitionInputs:&v29];
  [(CSAppearance *)v11 addComponent:v16];

  v17 = self->_localAppearance;
  v18 = objc_opt_new();
  v19 = [v18 identifier:@"Spotlight"];
  v20 = [v19 priority:40];
  v21 = [v20 transitionModifiers:16];
  v29 = v32;
  v30 = v33;
  v31 = v34;
  v22 = [v21 transitionInputs:&v29];
  [(CSAppearance *)v17 addComponent:v22];

  v23 = self->_localAppearance;
  v24 = objc_opt_new();
  v25 = [v24 identifier:@"Spotlight"];
  v26 = [v25 priority:40];
  v27 = [v26 transitionModifiers:16];
  v29 = v32;
  v30 = v33;
  v31 = v34;
  v28 = [v27 transitionInputs:&v29];
  [(CSAppearance *)v23 addComponent:v28];

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"Spotlight"];
}

- (void)noteWillPresentForUserGesture
{
  v10 = *MEMORY[0x277D85DE8];
  [(CSCoverSheetViewController *)self setPasscodeLockVisible:0 animated:1];
  [(CSCoverSheetViewController *)self _setDidDismissSinceScreenOn:1];
  [(CSFixedFooterViewController *)self->_fixedFooterViewController updateCallToActionForReversingInteractiveTransition];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[Charge UI][User Gesture] visible NO, showBattery NO – isAlreadyShowingChargingModal: %d", &v8, 8u);
  }

  [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:0 showBattery:0 animated:1];
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
    v8 = 67109120;
    v9 = v5;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[Charge UI][User Gesture] – endedShowingChargingModal: %d", &v8, 8u);
  }

  v6 = [(SBFLockScreenDateViewController *)self->_dateViewController dateViewIfExists];
  [v6 setAlpha:1.0];

  [(CSCoverSheetViewController *)self _addOrRemoveRemoteContentViewIfNecessaryMaintainingState:1];
  v7 = [CSEvent eventWithType:36];
  [(CSCoverSheetViewController *)self _handleEvent:v7];
}

- (void)setLayoutStrategy:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_layoutStrategy != v5)
  {
    objc_storeStrong(&self->_layoutStrategy, a3);
    v6 = [(CSCoverSheetViewController *)self coverSheetView];
    [v6 setLayoutStrategy:v5];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(CSCoverSheetViewController *)self pageViewControllers];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setLayoutStrategy:v5];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (int64_t)effectiveInterfaceOrientation
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    return 0;
  }

LABEL_3:
  result = [(CSCoverSheetViewController *)self effectiveInterfaceOrientationOverride];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)resetMainPageContentOffset
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  [v2 resetContentOffset];
}

- (void)setPartiallyOnScreen:(BOOL)a3
{
  if (self->_partiallyOnScreen != a3)
  {
    self->_partiallyOnScreen = a3;
    [(CSCoverSheetViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)updateFont:(id)a3 preferredTimeMaxYPortrait:(double)a4 preferredTimeMaxYLandscape:(double)a5 vibrancyConfiguration:(id)a6 numberingSystem:(id)a7 contentStyle:(id)a8
{
  v23 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  if (_os_feature_enabled_impl())
  {
    [(CSCoverSheetViewController *)self setVibrancyConfiguration:v14];
    v17 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v17 setCustomTimeFont:v23];

    v18 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v18 setCustomTimeNumberingSystem:v15];

    v19 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v19 setContentStyle:v16];

    [(CSWidgetGridViewController *)self->_complicationContainerViewController setContentStyle:v16];
    [(CSWidgetGridViewController *)self->_sidebarComplicationContainerViewController setContentStyle:v16];
  }

  else
  {
    [(CSCoverSheetViewController *)self setVibrancyConfiguration:0];
    v20 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v20 setCustomTimeFont:0];

    v21 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v21 setTextColor:0];

    v22 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v22 setCustomTimeNumberingSystem:0];
  }

  self->_posterPreferredTimeMaxYPortrait = a4;
  self->_posterPreferredTimeMaxYLandscape = a5;
}

- (void)setVibrancyConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = [v4 copyWithGroupName:v6];

  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [v9 copy];
    vibrancyConfiguration = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v7;

    [(CSCoverSheetViewController *)self _updateVibrancy];
  }
}

- (void)setVibrancyConfigurationOverride:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = [v4 copyWithGroupName:v6];

  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = [v9 copy];
    vibrancyConfigurationOverride = self->_vibrancyConfigurationOverride;
    self->_vibrancyConfigurationOverride = v7;

    [(CSCoverSheetViewController *)self _updateVibrancy];
  }
}

- (void)setEffectiveVibrancyConfiguration:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v7 copy];
    effectiveVibrancyConfiguration = self->_effectiveVibrancyConfiguration;
    self->_effectiveVibrancyConfiguration = v4;

    v6 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    [v6 setVibrancyConfiguration:self->_effectiveVibrancyConfiguration];

    [(CSWidgetGridViewController *)self->_complicationContainerViewController setVibrancyConfiguration:self->_effectiveVibrancyConfiguration];
    [(CSWidgetGridViewController *)self->_sidebarComplicationContainerViewController setVibrancyConfiguration:self->_effectiveVibrancyConfiguration];
    [(CSPosterSwitcherViewController *)self->_posterSwitcherViewController setVibrancyConfiguration:self->_effectiveVibrancyConfiguration];
  }
}

- (void)updateFloatingLayerOrdering
{
  floatingLayerView = self->_floatingLayerView;
  if (floatingLayerView)
  {
    [(BSInvalidatable *)floatingLayerView invalidate];
    [(BSInvalidatable *)self->_floatingLayerView removeFromSuperview];
    v4 = self->_floatingLayerView;
    self->_floatingLayerView = 0;

    [(CSCoverSheetViewController *)self _updateWallpaperFloatingLayerContainerView];
  }
}

- (void)handleReachabilityAnimationWillBegin
{
  v3 = [(CSCoverSheetViewController *)self _appearState];
  v4 = [(CSCoverSheetContextProviding *)self->_coverSheetContext reachabilityController];
  [v4 effectiveReachabilityYOffset];
  IsZero = BSFloatIsZero();

  if (IsZero)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    localAppearance = self->_localAppearance;
    v8 = objc_opt_new();
    v9 = [v8 identifier:@"ReachabilityOverride"];
    v10 = [v9 priority:20];
    v11 = [v10 hidden:0];
    [(CSAppearance *)localAppearance addComponent:v11];

    v12 = self->_localAppearance;
    v13 = objc_opt_new();
    v14 = [v13 identifier:@"ReachabilityOverride"];
    v15 = [v14 priority:20];
    v16 = [v15 shouldMatchMove:0];
    [(CSAppearance *)v12 addComponent:v16];

    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"ReachabilityOverride"];
  }
}

- (void)handleReachabilityAnimationDidEnd
{
  v3 = [(CSAppearance *)self->_localAppearance componentForType:6 identifier:@"ReachabilityOverride"];

  if (v3)
  {
    v4 = [(CSCoverSheetContextProviding *)self->_coverSheetContext reachabilityController];
    [v4 effectiveReachabilityYOffset];
    IsZero = BSFloatIsZero();

    if (IsZero)
    {
      [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"ReachabilityOverride"];

      [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"ReachabilityOverride"];
    }
  }
}

- (void)requestIdleTimerResetForPoster
{
  v4 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationStatusProvider];
  if ([v4 hasPasscodeSet])
  {
    v3 = [(CSCoverSheetViewController *)self isAuthenticated];

    if (!v3)
    {
      return;
    }

    v4 = [CSAction actionWithType:3];
    [CSCoverSheetViewController handleAction:"handleAction:fromSender:" fromSender:?];
  }
}

- (void)_setLastSettledPageIndex:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  self->_lastSettledPageIndex = a3;
  v4 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:?];
  v5 = [(CSCoverSheetViewController *)self mainPageContentViewController];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 coverSheetViewControllerDidSettleOnPage:self mainPage:v4 == v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)prepareForTransitionToPresented:(BOOL)a3 reversingTransition:(BOOL)a4 forUserGesture:(BOOL)a5
{
  if (!a3 && !a4 && [(CSCoverSheetViewController *)self _isShowingChargingModal])
  {

    [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:0 showBattery:0 animated:1];
  }
}

- (void)updateCoverSheetTransitionProgress:(double)a3
{
  if (CSFeatureEnabled(12))
  {
    v5 = 1.0 - a3;
    v6 = [(CSBackgroundContentViewController *)self->_backgroundContentViewController view];
    [v6 setAlpha:v5];

    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    v8 = [v7 backgroundView];
    [v8 setAlpha:v5];

    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    v9 = [v10 bedtimeGreetingViewBackgroundView];
    [v9 setAlpha:v5];
  }
}

- (void)endCoverSheetTransition
{
  if (CSFeatureEnabled(12))
  {
    v3 = [(CSBackgroundContentViewController *)self->_backgroundContentViewController view];
    [v3 setAlpha:1.0];

    v4 = [(CSCoverSheetViewController *)self coverSheetView];
    v5 = [v4 backgroundView];
    [v5 setAlpha:1.0];

    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    v6 = [v7 bedtimeGreetingViewBackgroundView];
    [v6 setAlpha:1.0];
  }
}

- (void)updateCoverSheetDraggingProgress:(double)a3 forPresentationValue:(BOOL)a4
{
  v4 = a4;
  v6 = [(CSCoverSheetViewController *)self coverSheetView];
  [v6 setCoverSheetPresentationProgress:v4 forPresentationValue:a3];
}

- (void)updateBackgroundGlassEffectForDraggingProgress:(double)a3 usingGlassEffects:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  if (CSFeatureEnabled(12))
  {
    v7 = fmin(fmax(a3, 0.0), 0.25) * 4.0 + 0.0;
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134217984;
      v25 = v7;
      _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "AC*** - progress: %f", &v24, 0xCu);
    }

    v9 = [(CSCoverSheetViewController *)self coverSheetView];
    v10 = [v9 backgroundGlassView];
    v11 = v10;
    if (v4)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0.0;
    }

    [v10 setEffectMultiplier:v12];

    IsZero = BSFloatIsZero();
    v14 = [(CSCoverSheetViewController *)self coverSheetView];
    v15 = [v14 backgroundGlassView];
    [v15 setHidden:IsZero | !v4];

    v16 = [(CSCoverSheetViewController *)self traitCollection];
    [v16 displayCornerRadius];
    v18 = v17;

    v19 = v18 > 0.0;
    v20 = [(CSCoverSheetViewController *)self coverSheetView];
    v21 = v20;
    if ((v19 & ~IsZero) != 0)
    {
      v22 = 12;
    }

    else
    {
      v22 = 0;
    }

    if ((v19 & ~IsZero) != 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0.0;
    }

    [v20 setClipping:v19 & ~IsZero corners:v22 radius:v23];
  }
}

- (void)cleanupInterstitialWhileOffScreen
{
  v3 = [(CSCoverSheetViewController *)self _passcodeViewController];
  [v3 commitingToEndTransitionToPresented:1 forInitialTransition:0];

  v4 = [(CSCoverSheetViewController *)self _passcodeViewController];
  [v4 endInteractiveTransitionToPresented:1 forInitialTransition:0];
}

- (void)setScale:(double)a3 behaviorMode:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(CSAppearance *)self->_localAppearance componentForType:15 identifier:@"SwitcherZoomingPresentation"];
  v10 = v9;
  if (!v9 || ([v9 transitionInputs], (BSFloatEqualToFloat() & 1) == 0))
  {
    v11 = [(CSLockScreenSettings *)self->_prototypeSettings cameraExtensionSettings];
    v12 = [v11 coverSheetContentScaleSettings];

    v13 = 0.0;
    if ((a4 - 3) <= 2)
    {
      [MEMORY[0x277D75D18] inheritedAnimationDuration];
    }

    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    CSComponentTransitionInputsMake(0, &v46, v13, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), a3, 0.0);
    IsOne = BSFloatIsOne();
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"SwitcherZoomingPresentation"];
    if ((IsOne & 1) == 0)
    {
      v40 = v12;
      localAppearance = self->_localAppearance;
      v16 = objc_opt_new();
      v17 = [v16 identifier:@"SwitcherZoomingPresentation"];
      v18 = [v17 priority:40];
      v19 = [v18 transitionModifiers:16];
      v43 = v46;
      v44 = v47;
      v45 = v48;
      v20 = [v19 transitionInputs:&v43];
      [(CSAppearance *)localAppearance addComponent:v20];

      v21 = self->_localAppearance;
      v22 = objc_opt_new();
      v23 = [v22 identifier:@"SwitcherZoomingPresentation"];
      v24 = [v23 priority:40];
      v25 = [v24 transitionModifiers:16];
      v43 = v46;
      v44 = v47;
      v45 = v48;
      v26 = [v25 transitionInputs:&v43];
      [(CSAppearance *)v21 addComponent:v26];

      v27 = self->_localAppearance;
      v28 = objc_opt_new();
      v29 = [v28 identifier:@"SwitcherZoomingPresentation"];
      v30 = [v29 priority:40];
      v31 = [v30 transitionModifiers:16];
      v43 = v46;
      v44 = v47;
      v45 = v48;
      v32 = [v31 transitionInputs:&v43];
      [(CSAppearance *)v27 addComponent:v32];

      v33 = self->_localAppearance;
      v34 = objc_opt_new();
      v35 = [v34 identifier:@"SwitcherZoomingPresentation"];
      v36 = [v35 priority:40];
      v37 = [v36 transitionModifiers:16];
      v43 = v46;
      v44 = v47;
      v45 = v48;
      v38 = [v37 transitionInputs:&v43];
      [(CSAppearance *)v33 addComponent:v38];

      v12 = v40;
    }

    v39 = [v12 BSAnimationSettings];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __63__CSCoverSheetViewController_setScale_behaviorMode_completion___block_invoke;
    v41[3] = &unk_27838BAC0;
    v42 = v8;
    [(CSCoverSheetViewController *)self updateAppearanceForController:self withAnimationSettings:v39 completion:v41];
  }
}

uint64_t __63__CSCoverSheetViewController_setScale_behaviorMode_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)registerExternalAppearanceProvider:(id)a3
{
  externalAppearanceProviders = self->_externalAppearanceProviders;
  v5 = a3;
  [(NSHashTable *)externalAppearanceProviders addObject:v5];
  v6 = [v5 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v6];
}

- (void)externalAppearanceProviderBehaviorChanged:(id)a3
{
  v4 = [a3 coverSheetIdentifier];
  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v4];
}

- (void)unregisterExternalAppearanceProvider:(id)a3
{
  externalAppearanceProviders = self->_externalAppearanceProviders;
  v5 = a3;
  [(NSHashTable *)externalAppearanceProviders removeObject:v5];
  v6 = [v5 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v6];
}

- (void)registerExternalBehaviorProvider:(id)a3
{
  externalBehaviorProviders = self->_externalBehaviorProviders;
  v5 = a3;
  [(NSHashTable *)externalBehaviorProviders addObject:v5];
  v6 = [v5 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v6];
}

- (void)externalBehaviorProviderBehaviorChanged:(id)a3
{
  v4 = [a3 coverSheetIdentifier];
  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v4];
}

- (void)unregisterExternalBehaviorProvider:(id)a3
{
  externalBehaviorProviders = self->_externalBehaviorProviders;
  v5 = a3;
  [(NSHashTable *)externalBehaviorProviders removeObject:v5];
  v6 = [v5 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v6];
}

- (void)externalLockProviderStateChanged:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 coverSheetViewControllerExternalLockProviderStateDidChange:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)registerExternalPresentationProvider:(id)a3
{
  externalPresentationProviders = self->_externalPresentationProviders;
  v5 = a3;
  [(NSHashTable *)externalPresentationProviders addObject:v5];
  v6 = [(CSCoverSheetViewController *)self visiblePageViewController];
  [v6 updatePresentationAnimated:1];

  v7 = [v5 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v7];
}

- (void)externalPresentationProviderPresentationChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self visiblePageViewController];
  [v5 updatePresentationAnimated:1];

  v6 = [v4 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v6];
}

- (void)unregisterExternalPresentationProvider:(id)a3
{
  externalPresentationProviders = self->_externalPresentationProviders;
  v5 = a3;
  [(NSHashTable *)externalPresentationProviders removeObject:v5];
  v6 = [(CSCoverSheetViewController *)self visiblePageViewController];
  [v6 updatePresentationAnimated:1];

  v7 = [v5 coverSheetIdentifier];

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v7];
}

- (void)addCoverSheetObserver:(id)a3
{
  v7 = a3;
  if (![(NSHashTable *)self->_observers containsObject:?])
  {
    observers = self->_observers;
    if (!observers)
    {
      v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = self->_observers;
      self->_observers = v5;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v7];
  }
}

- (void)removeCoverSheetObserver:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }
}

- (void)loadView
{
  v3 = [CSCoverSheetView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v11 = [(CSCoverSheetView *)v3 initWithFrame:?];

  [(CSCoverSheetView *)v11 setAutoresizingMask:18];
  [(CSCoverSheetView *)v11 setAutoresizesSubviews:1];
  LODWORD(v3) = CSFeatureEnabled(12);
  v5 = [(CSCoverSheetView *)v11 layer];
  [v5 setHitTestsAsOpaque:v3 ^ 1];

  [(CSCoverSheetView *)v11 setLayoutStrategy:self->_layoutStrategy];
  [(CSCoverSheetView *)v11 _setLockScreenDefaults:self->_lockScreenDefaults];
  v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext homeScreenOverlayProvider];
  LODWORD(v5) = [v6 wantsHomeScreenOverlay];

  if (v5)
  {
    v7 = [(CSCoverSheetView *)v11 scrollView];
    v8 = [v7 panGestureRecognizer];
    [v8 addTarget:self action:sel_scrollPanGestureDidUpdate_];

    [(CSCoverSheetView *)v11 setIgnoresOverscrollOnMainPage:1];
  }

  if ([(CSCoverSheetViewController *)self _shouldAllowGlassCoverSheet])
  {
    v9 = [CSCoverSheetSDFView alloc];
    [(CSCoverSheetView *)v11 bounds];
    v10 = [(CSCoverSheetSDFView *)v9 initWithFrame:?];
    [(CSCoverSheetView *)v11 setBackgroundGlassView:v10];
  }

  [(CSCoverSheetViewController *)self setActiveAppearance:0];
  [(CSCoverSheetViewController *)self setView:v11];
  [(CSCoverSheetView *)v11 setDelegate:self];
}

- (void)viewDidLoad
{
  OUTLINED_FUNCTION_7();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Received portrait widget update: %@", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = [v5 bs_map:&__block_literal_global_2];
    [WeakRetained[270] setComplicationDescriptors:v9 iconLayout:v6];
    if ([v5 count])
    {
      [WeakRetained dateBaselineToComplicationY];
      v11 = v10;
      [getCSProminentLayoutControllerClass() boundsForElements:8];
      v13 = v11 + v12;
    }

    else
    {
      v13 = 0.0;
    }

    *(WeakRetained + 207) = v13;
    [WeakRetained[202] hostDidChangeContentBounds];
    v14 = [WeakRetained[255] combinedListViewController];
    [v14 layoutListView];

    v15 = [WeakRetained[255] combinedListViewController];
    [v15 invalidateContentInsets];
  }
}

id __41__CSCoverSheetViewController_viewDidLoad__block_invoke_194(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3EC78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uniqueIdentifier];
  v6 = [v3 widget];

  v7 = [v4 initWithUniqueIdentifier:v5 widget:v6 suggestedComplication:0];

  return v7;
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Received sidebar widget update: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = [v5 bs_map:&__block_literal_global_200];
    [WeakRetained[271] setComplicationDescriptors:v9 iconLayout:v6];
    [WeakRetained[267] setHasSidebarContents:{objc_msgSend(WeakRetained[271], "isEmpty") ^ 1}];
  }
}

id __41__CSCoverSheetViewController_viewDidLoad__block_invoke_198(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3EC78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uniqueIdentifier];
  v6 = [v3 widget];

  v7 = [v4 initWithUniqueIdentifier:v5 widget:v6 suggestedComplication:0];

  return v7;
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_2_201(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Received inline widget update: %@ / %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained[226];
  WeakRetained[226] = v5;
  v10 = v5;

  v11 = WeakRetained[227];
  WeakRetained[227] = v6;

  [WeakRetained _validateAndUpdateInlineComplication];
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_207(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 2136);
  v5 = a2;
  v4 = [v3 dateView];
  [v2 setDateView:v4];

  v5[2]();
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_2_210(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1376);
  v5 = a2;
  v4 = [v3 fixedFooterView];
  [v2 setFixedFooterView:v4];

  v5[2]();
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 2168);
  v5 = a2;
  v4 = [v3 view];
  [v2 setSidebarComplicationContainerView:v4];

  v5[2]();
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1416);
  v5 = a2;
  v4 = [v3 teachableMomentsContainerView];
  [v2 setTeachableMomentsContainerView:v4];

  v5[2]();
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1384);
  v4 = a2;
  v5 = [v3 view];
  [v5 setHidden:*(a1 + 48)];
  [*(a1 + 40) setProudLockContainerView:v5];
  v4[2](v4);
}

void __41__CSCoverSheetViewController_viewDidLoad__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1408);
  v5 = a2;
  v4 = [v3 view];
  [v2 setPoseidonContainerView:v4];

  v5[2]();
}

- (void)viewDidLayoutSubviews
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v10 viewDidLayoutSubviews];
  v3 = [(CSCoverSheetViewController *)self interfaceOrientation];
  if (v3 != self->_appearanceOrientation)
  {
    v4 = v3;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = SBFStringForBSInterfaceOrientation();
      v7 = SBFStringForBSInterfaceOrientation();
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "CSCoverSheetViewController will force orientation update from %@ to %@. This should only occur on device boot or if SpringBoard was recently killed.", buf, 0x16u);
    }

    [(CSCoverSheetViewController *)self _updateAppearanceForTransitionToOrientation:v4];
    [(CSCoverSheetViewController *)self _calculateAppearanceForCurrentOrientation];
    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"Forced Orientation Update"];
    v8 = [(CSCoverSheetViewController *)self complicationContainerViewController];
    [v8 updatePresentationStyleForNewOrientation:v4];

    v9 = [(CSCoverSheetViewController *)self sidebarComplicationContainerViewController];
    [v9 updatePresentationStyleForNewOrientation:v4];

    self->_appearanceOrientation = v4;
  }
}

- (void)updateQuickActionsVisibility
{
  if (self->_quickActionsViewController)
  {
    if ([(CSCoverSheetViewController *)self _quickActionsSupported])
    {
      v3 = [(CSCoverSheetViewController *)self childViewControllers];
      v4 = [v3 containsObject:self->_quickActionsViewController];

      if ((v4 & 1) == 0)
      {
        quickActionsViewController = self->_quickActionsViewController;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __58__CSCoverSheetViewController_updateQuickActionsVisibility__block_invoke;
        v8[3] = &unk_27838B798;
        v8[4] = self;
        [(CSCoverSheetViewController *)self bs_addChildViewController:quickActionsViewController animated:0 transitionBlock:v8];
      }
    }

    else
    {
      v6 = [(CSQuickActionsViewController *)self->_quickActionsViewController parentViewController];

      if (v6)
      {
        v7 = self->_quickActionsViewController;

        [(CSCoverSheetViewController *)self bs_removeChildViewController:v7];
      }
    }
  }
}

uint64_t __58__CSCoverSheetViewController_updateQuickActionsVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetView];
  v3 = [*(*(a1 + 32) + 1432) quickActionsView];
  [v2 setQuickActionsView:v3];

  v4 = *(*(a1 + 32) + 1432);

  return [v4 setCoverSheetViewController:?];
}

- (void)_prepareForViewWillAppearIfNecessary
{
  if (!self->_lastAppearState)
  {
    v4 = [(CSCoverSheetViewController *)self coverSheetView];
    [v4 viewControllerWillAppear];

    [(CSCoverSheetViewController *)self setActiveAppearance:0];
    [(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource cancelTransition];
    self->_transitionType = 0;
    [(CSCoverSheetViewController *)self setCurrentTransitionSource:0];
    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    v5 = [[CSScrollGestureController alloc] initWithScrollableView:v7];
    scrollGestureController = self->_scrollGestureController;
    self->_scrollGestureController = v5;

    [(CSScrollGestureController *)self->_scrollGestureController setDelegate:self];
    [(CSCoverSheetViewController *)self _loadViewsForRestrictedPagesIfPossible];
    [v7 resetScrollViewToMainPageAnimated:0 withCompletion:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(CSCoverSheetViewController *)self _prepareForViewWillAppearIfNecessary];
  v6.receiver = self;
  v6.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewWillAppear:v3];
  [(CSCoverSheetViewController *)self _handleEventType:3];
  [(CSCoverSheetViewController *)self updateQuickActionsVisibility];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_dateViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_fixedFooterViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_teachableMomentsContainerViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_inlineComplicationContainerViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_landscapeInlineComplicationContainerViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_complicationContainerViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_sidebarComplicationContainerViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_backgroundContentViewController toVisible:1 animated:v3];
  if ([(CSCoverSheetViewController *)self _quickActionsSupported])
  {
    [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_quickActionsViewController toVisible:1 animated:v3];
  }

  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_proudLockViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_poseidonViewController toVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self _beginAppearanceTransitionForPageViewControllersToVisible:1 animated:v3];
  [(CSCoverSheetViewController *)self noteDeviceBlockedStatusUpdated];
  [(CSCoverSheetViewController *)self _updateScrollingBehavior];
  [(CSCoverSheetViewController *)self _updateAppearanceForTransitionToOrientation:[(CSCoverSheetViewController *)self interfaceOrientation]];
  [(CSCoverSheetViewController *)self _calculateAppearanceForCurrentOrientation];
  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"viewWillAppear"];
  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"viewWillAppear"];
  [(CSCoverSheetViewController *)self _addOrRemoveRemoteContentViewIfNecessaryMaintainingState:1];
  [(CSCoverSheetViewController *)self _displayWillAppearImplementation];
  [(CSCoverSheetViewController *)self _sendAuthenticationChangedEvent];
  [(CSCoverSheetViewController *)self setPasscodeLockVisible:0 animated:v3];
  self->_lastAppearState = [(CSCoverSheetViewController *)self _appearState];
  [(CSCoverSheetViewController *)self _setDismissed:0];
  v5 = [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController hostViewController];
  [v5 hostDidChangeContentBounds];

  [(CSCoverSheetViewController *)self _updateRemoteContentInlineHorizontalMargin];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(CSCoverSheetViewController *)self _handleEventType:4];
  [(CSCoverSheetViewController *)self _setupWallpaperGesture];
  [(CSCoverSheetViewController *)self _setupBackgroundContentGestureRecognizer];
  [(CSCoverSheetViewController *)self _setupQuickNoteGestureRecognizer];
  [(CSCoverSheetViewController *)self _setupPosterSwitcherGestureRecognizer];
  [(CSCoverSheetViewController *)self _setupComplicationSelectionGestureRecognizer];
  [(CSCoverSheetViewController *)self _setupSearchGesture];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_dateViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_fixedFooterViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_teachableMomentsContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_inlineComplicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_landscapeInlineComplicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_complicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_sidebarComplicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_backgroundContentViewController];
  if ([(CSCoverSheetViewController *)self _quickActionsSupported])
  {
    [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_quickActionsViewController];
  }

  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_proudLockViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_poseidonViewController];
  [(CSCoverSheetViewController *)self _endAppearanceTransitionForPageViewControllersToVisible:1];
  self->_statusBarInLockdownForTeardown = 0;
  [(CSNotificationClearingTrigger *)self->_notificationClearingTrigger setUiLocked:1];
  self->_lastAppearState = [(CSCoverSheetViewController *)self _appearState];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewWillDisappear:?];
  [(CSCoverSheetViewController *)self _handleEventType:5];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_dateViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_fixedFooterViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_teachableMomentsContainerViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_inlineComplicationContainerViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_landscapeInlineComplicationContainerViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_complicationContainerViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_sidebarComplicationContainerViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_backgroundContentViewController toVisible:0 animated:v3];
  if ([(CSCoverSheetViewController *)self _quickActionsSupported])
  {
    [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_quickActionsViewController toVisible:0 animated:v3];
  }

  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_proudLockViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_poseidonViewController toVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self _beginAppearanceTransitionForPageViewControllersToVisible:0 animated:v3];
  [(CSCoverSheetViewController *)self _displayWillDisappearImplementation];
  self->_lastAppearState = [(CSCoverSheetViewController *)self _appearState];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource cancelTransition];
  v6.receiver = self;
  v6.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:v3];
  [(CSCoverSheetViewController *)self _handleEventType:6];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_dateViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_fixedFooterViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_teachableMomentsContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_inlineComplicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_landscapeInlineComplicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_complicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_sidebarComplicationContainerViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_backgroundContentViewController];
  if ([(CSCoverSheetViewController *)self _quickActionsSupported])
  {
    [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_quickActionsViewController];
  }

  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_proudLockViewController];
  [(CSCoverSheetViewController *)self bs_endAppearanceTransitionForChildViewController:self->_poseidonViewController];
  [(CSCoverSheetViewController *)self _endAppearanceTransitionForPageViewControllersToVisible:0];
  [(BCBatteryDeviceController *)self->_batteryDeviceController removeBatteryDeviceObserver:self];
  [(CSCoverSheetViewController *)self _displayDidDisappearImplementation];
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  [v5 removeContentView];

  [(CSCoverSheetViewController *)self _clearChargingModalStateIfNecessary];
  [(CSCoverSheetViewController *)self _updateWallpaperFloatingLayerContainerView];
  self->_statusBarInLockdownForTeardown = 0;
  if ([(CSCoverSheetViewController *)self _isPresentingDismissableRemoteContent])
  {
    [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:7];
  }

  self->_lastAppearState = [(CSCoverSheetViewController *)self _appearState];
  [(CSCoverSheetViewController *)self _setDismissed:1];
  if ([(CSCoverSheetViewController *)self _isShowingInlineContent])
  {
    [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleForInlineContent];
  }
}

- (void)presentModalViewController:(id)a3 fromRect:(CGRect)a4 inView:(id)a5 animated:(BOOL)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"CSCoverSheetViewController.m" lineNumber:1929 description:@"DashBoard does not support modal view controller presentations."];
}

- (void)presentModalViewController:(id)a3 withTransition:(int)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"CSCoverSheetViewController.m" lineNumber:1933 description:@"DashBoard does not support modal view controller presentations."];
}

- (void):(id)a3 withTransition:(int)a4 completion:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"CSCoverSheetViewController.m" lineNumber:1937 description:@"DashBoard does not support modal view controller presentations."];
}

- (BOOL)_shouldLoadComplications
{
  v2 = CSAutobahnEnabledForPlatform();
  if (v2)
  {

    LOBYTE(v2) = CSFeatureEnabled(4);
  }

  return v2;
}

- (void)setHidesDimmingLayer:(BOOL)a3
{
  if (self->_hidesDimmingLayer != a3)
  {
    v4 = a3;
    self->_hidesDimmingLayer = a3;
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"HidesDimmingLayer"];
    if (v4)
    {
      v6 = +[CSComponent dimmingLayer];
      v7 = [v6 identifier:@"HidesDimmingLayer"];

      [v7 setHidden:1];
      [(CSAppearance *)self->_localAppearance addComponent:v7];
    }

    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"HidesDimmingLayer"];
  }
}

- (void)setPosterPreferredSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  if (!CGRectEqualToRect(self->_posterPreferredSalientContentRectangle, v9))
  {
    self->_posterPreferredSalientContentRectangle.origin.x = x;
    self->_posterPreferredSalientContentRectangle.origin.y = y;
    self->_posterPreferredSalientContentRectangle.size.width = width;
    self->_posterPreferredSalientContentRectangle.size.height = height;

    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"PosterSalientContentRectangleUpdate"];
  }
}

- (void)setAdaptiveTimeHonorsPreferredSalientContentRectangle:(BOOL)a3
{
  if (self->_adaptiveTimeHonorsPreferredSalientContentRectangle != a3)
  {
    self->_adaptiveTimeHonorsPreferredSalientContentRectangle = a3;
    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"PosterAdaptiveTimeModeUpdate"];
  }
}

- (void)_updateAppearanceForAODTransitionToInactive:(BOOL)a3
{
  v3 = a3;
  [(CSCoverSheetViewController *)self _updateClockAppearanceForAODTransitionToInactive:a3 animated:1];

  [(CSCoverSheetViewController *)self _updateGeneralAppearanceForAODTransitionToInactive:v3 animated:1];
}

- (void)_updateGeneralAppearanceForAODTransitionToInactive:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(CSLockScreenSettings *)self->_prototypeSettings aodTransitionSettings:a3];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __90__CSCoverSheetViewController__updateGeneralAppearanceForAODTransitionToInactive_animated___block_invoke;
  v20 = &unk_27838BC70;
  if (v4)
  {
    v7 = 96;
  }

  else
  {
    v7 = 98;
  }

  v21 = self;
  v22 = v4;
  v8 = MEMORY[0x223D698D0](&v17);
  [v6 aodGeneralResponse];
  v10 = [objc_alloc(MEMORY[0x277D75A60]) initWithDuration:v9 bounce:0.0];
  [v10 settlingDuration];
  v12 = v11;
  v13 = MEMORY[0x277D75D18];
  [v10 stiffness];
  v15 = v14;
  [v10 damping];
  [v13 _animateUsingSpringWithDuration:v7 delay:v8 options:&__block_literal_global_270 mass:v12 stiffness:0.0 damping:1.0 initialVelocity:v15 animations:v16 completion:0.0];
}

uint64_t __90__CSCoverSheetViewController__updateGeneralAppearanceForAODTransitionToInactive_animated___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 1744);
  [*(*(a1 + 32) + 2120) setLegibilitySettings:0];
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [*(v2 + 2120) removeAllComponentsWithIdentifier:@"_UIBacklightLuminance"];
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
    [MEMORY[0x277D75D18] inheritedAnimationDuration];
    CSComponentTransitionInputsMake(0, &v109, v3, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 0.97, 10.0);
    v4 = *(*(a1 + 32) + 2120);
    v5 = objc_opt_new();
    v6 = [v5 identifier:@"_UIBacklightLuminance"];
    v7 = [v6 fakeStatusBar:1];
    v8 = [v7 priority:80];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v9 = [v8 transitionInputs:&v106];
    [v4 addComponent:v9];

    v10 = *(*(a1 + 32) + 2120);
    v11 = +[CSComponent notificationDimmingLayer];
    v12 = [v11 identifier:@"_UIBacklightLuminance"];
    v13 = [v12 hidden:1];
    v14 = [v13 animationDuration:0.0];
    v15 = [v14 priority:80];
    [v10 addComponent:v15];

    v16 = *(*(a1 + 32) + 2120);
    v17 = +[CSComponent wallpaper];
    v18 = [v17 identifier:@"_UIBacklightLuminance"];
    v19 = [MEMORY[0x277D75348] blackColor];
    v20 = [v18 color:v19];
    v21 = [v20 priority:80];
    [v16 addComponent:v21];

    [*(a1 + 32) _updateActiveAppearanceForReason:@"_UIBacklightLuminance"];
    v22 = *(*(a1 + 32) + 2120);
    v23 = objc_opt_new();
    v24 = [v23 viewStyle:3];
    v25 = [v24 identifier:@"_UIBacklightLuminance"];
    v26 = [*(*(a1 + 32) + 1064) touchEnvironmentStatusProvider];
    v27 = [v25 hidden:{objc_msgSend(v26, "tapToWakeEnabled") ^ 1}];
    v28 = [v27 priority:80];
    [v22 addComponent:v28];

    v29 = *(*(a1 + 32) + 2120);
    v30 = objc_opt_new();
    v31 = [v30 hidden:1];
    v32 = [v31 identifier:@"_UIBacklightLuminance"];
    v33 = [v32 priority:80];
    v34 = [v33 transitionModifiers:48];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v35 = [v34 transitionInputs:&v106];
    [v29 addComponent:v35];

    v36 = *(*(a1 + 32) + 2120);
    v37 = objc_opt_new();
    v38 = [v37 hidden:1];
    v39 = [v38 identifier:@"_UIBacklightLuminance"];
    v40 = [v39 priority:80];
    v41 = [v40 transitionModifiers:48];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v42 = [v41 transitionInputs:&v106];
    [v36 addComponent:v42];

    v43 = *(*(a1 + 32) + 2120);
    v44 = objc_opt_new();
    v45 = [v44 hidden:1];
    v46 = [v45 identifier:@"_UIBacklightLuminance"];
    v47 = [v46 fakeStatusBar:1];
    v48 = [v47 priority:80];
    v49 = [v48 transitionModifiers:48];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v50 = [v49 transitionInputs:&v106];
    [v43 addComponent:v50];

    v51 = *(*(a1 + 32) + 2120);
    v52 = objc_opt_new();
    v53 = [v52 identifier:@"_UIBacklightLuminance"];
    v54 = [v53 priority:80];
    v55 = [v54 transitionModifiers:16];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v56 = [v55 transitionInputs:&v106];
    [v51 addComponent:v56];

    v57 = *(*(a1 + 32) + 2120);
    v58 = objc_opt_new();
    v59 = [v58 identifier:@"_UIBacklightLuminance"];
    v60 = [v59 priority:80];
    v61 = [v60 transitionModifiers:16];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v62 = [v61 transitionInputs:&v106];
    [v57 addComponent:v62];

    v63 = *(*(a1 + 32) + 2120);
    v64 = objc_opt_new();
    v65 = [v64 identifier:@"_UIBacklightLuminance"];
    v66 = [v65 priority:80];
    v67 = [v66 transitionModifiers:16];
    v106 = v109;
    v107 = v110;
    v108 = v111;
    v68 = [v67 transitionInputs:&v106];
    [v63 addComponent:v68];

    if (([*(*(a1 + 32) + 1584) showWallpaperInAlwaysOn] & 1) == 0)
    {
      v69 = *(*(a1 + 32) + 2120);
      v70 = objc_opt_new();
      v71 = [v70 identifier:@"_UIBacklightLuminance"];
      v72 = [v71 priority:80];
      v73 = [v72 style:&unk_28307A430];
      v74 = [MEMORY[0x277D75348] blackColor];
      v75 = [v73 color:v74];
      [v69 addComponent:v75];

      v76 = *(*(a1 + 32) + 2120);
      v77 = objc_alloc(MEMORY[0x277D760A8]);
      v78 = [MEMORY[0x277D75348] whiteColor];
      v79 = [v77 initWithStyle:1 contentColor:v78];
      [v76 setLegibilitySettings:v79];
    }

    v80 = [*(*(a1 + 32) + 2040) combinedListViewController];
    [v80 setShowNotificationsInAlwaysOn:{objc_msgSend(*(*(a1 + 32) + 1584), "showNotificationsInAlwaysOn")}];

    v81 = [*(a1 + 32) coverSheetView];
    [v81 addContentView];
  }

  else
  {
    v82 = [*(v2 + 1584) showWallpaperInAlwaysOn];
    v83 = [*(a1 + 32) isDepthEffectDisabled];
    v84 = [*(a1 + 32) isFloatingLayerFullscreen];
    if ((v82 & 1) == 0 && (v83 & 1) == 0 && (v84 & 1) == 0)
    {
      v85 = *(*(a1 + 32) + 2120);
      v86 = [v85 componentForType:19 identifier:@"_UIBacklightLuminance"];
      [v85 removeComponent:v86];

      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __90__CSCoverSheetViewController__updateGeneralAppearanceForAODTransitionToInactive_animated___block_invoke_2;
      v104[3] = &unk_27838B838;
      v104[4] = *(a1 + 32);
      v105 = @"_UIBacklightLuminance";
      [MEMORY[0x277D75D18] performWithoutAnimation:v104];
    }

    [*(*(a1 + 32) + 2120) removeAllComponentsWithIdentifier:@"_UIBacklightLuminance"];
    v87 = *(*(a1 + 32) + 2120);
    v88 = objc_opt_new();
    v89 = [v88 identifier:@"_UIBacklightLuminance"];
    v90 = [v89 hidden:0];
    v91 = [v90 fakeStatusBar:1];
    v92 = [v91 priority:80];
    [v87 addComponent:v92];

    v93 = *(*(a1 + 32) + 2120);
    v94 = +[CSComponent notificationDimmingLayer];
    v95 = [v94 identifier:@"_UIBacklightLuminance"];
    v96 = [v95 animationDuration:0.0];
    v97 = [v96 priority:80];
    [v93 addComponent:v97];

    v98 = *(a1 + 32);
    v99 = *(v98 + 1744);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __90__CSCoverSheetViewController__updateGeneralAppearanceForAODTransitionToInactive_animated___block_invoke_3;
    v101[3] = &unk_27838BC48;
    v102 = @"_UIBacklightLuminance";
    v103 = v99;
    v101[4] = v98;
    [MEMORY[0x277CF0D38] addAlongsideAnimations:0 completion:v101];
  }

  return [*(a1 + 32) _updateActiveAppearanceForReason:@"_UIBacklightLuminance"];
}

void __90__CSCoverSheetViewController__updateGeneralAppearanceForAODTransitionToInactive_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetView];
  [v2 foregroundViewPositionOffset];
  IsZero = BSFloatIsZero();

  if (IsZero)
  {
    v4 = [*(a1 + 32) coverSheetView];
    [v4 removeContentView];
  }

  v5 = *(a1 + 32);
  if (*(a1 + 48) == *(v5 + 1744))
  {
    v6 = *(v5 + 2120);
    v7 = *(a1 + 40);

    [v6 removeAllComponentsWithIdentifier:v7];
  }
}

- (void)_updateClockAppearanceForAODTransitionToInactive:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(CSLockScreenSettings *)self->_prototypeSettings aodTransitionSettings:a3];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __88__CSCoverSheetViewController__updateClockAppearanceForAODTransitionToInactive_animated___block_invoke;
  v20 = &unk_27838BC70;
  if (v4)
  {
    v7 = 96;
  }

  else
  {
    v7 = 98;
  }

  v22 = v4;
  v21 = self;
  v8 = MEMORY[0x223D698D0](&v17);
  [v6 aodClockResponse];
  v10 = [objc_alloc(MEMORY[0x277D75A60]) initWithDuration:v9 bounce:0.0];
  [v10 settlingDuration];
  v12 = v11;
  v13 = MEMORY[0x277D75D18];
  [v10 stiffness];
  v15 = v14;
  [v10 damping];
  [v13 _animateUsingSpringWithDuration:v7 delay:v8 options:&__block_literal_global_275 mass:v12 stiffness:0.0 damping:1.0 initialVelocity:v15 animations:v16 completion:0.0];
}

uint64_t __88__CSCoverSheetViewController__updateClockAppearanceForAODTransitionToInactive_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    [MEMORY[0x277D75D18] inheritedAnimationDuration];
    CSComponentTransitionInputsMake(0, &v11, v2, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 0.97, 10.0);
    v3 = *(*(a1 + 32) + 2120);
    v4 = objc_opt_new();
    v5 = [v4 identifier:@"_UIBacklightLuminance-Clock"];
    v6 = [v5 priority:80];
    v7 = [v6 transitionModifiers:16];
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    v8 = [v7 transitionInputs:v10];
    [v3 addComponent:v8];
  }

  else
  {
    [*(*(a1 + 32) + 2120) removeAllComponentsWithIdentifier:@"_UIBacklightLuminance-Clock"];
  }

  return [*(a1 + 32) _updateActiveAppearanceForReason:@"_UIBacklightLuminance-Clock"];
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  v5 = [(CSCoverSheetViewController *)self activeAppearance:a3];
  [v5 flagForComponentType:26];
  IsYes = BSSettingFlagIsYes();

  if (a3)
  {
    if (IsYes)
    {
      a3->var6 = 0;
    }
  }
}

- (BOOL)shouldAutorotate
{
  v3 = [(CSCoverSheetViewController *)self delegate];
  v4 = [v3 coverSheetViewControllerTraitsArbiterOrientationActuationEnabled:self];

  if (v4)
  {
    return 1;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 1)
    {
      return 0;
    }
  }

  return ![(CSCoverSheetViewController *)self isTransitioningInteractively];
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if (![(CSCoverSheetViewController *)self shouldAutorotate])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = CSCoverSheetViewController;
  return [(CSCoverSheetViewController *)&v4 preferredInterfaceOrientationForPresentation];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(CSCoverSheetViewController *)self coverSheetView];
  [v8 setSuppressesBackgroundContentMatchMove:1 forReason:@"CoverSheetRotation"];

  v9 = SBFWindowForViewControllerTransition();
  v10 = [v9 _fromWindowOrientation];

  v11 = SBFWindowForViewControllerTransition();
  v12 = [v11 _toWindowOrientation];

  self->_appearanceOrientation = v12;
  v13 = [(CSCoverSheetViewController *)self visiblePageViewController];
  v14 = [(CSCoverSheetViewController *)self coverSheetView];
  v15 = [v14 scrollView];
  [v15 contentOffset];
  v17 = v16;
  v19 = v18;

  v20 = [CSAction actionWithType:3];
  [(CSCoverSheetViewController *)self handleAction:v20 fromSender:self];

  self->_preventAppearanceUpdatesForRotation = 1;
  if ([(CSCoverSheetViewController *)self _appearState]== 2)
  {
    [v7 transitionDuration];
    [(CSOrientationUpdateControlling *)self->_orientationUpdateController noteInterfaceOrientationChanged:v12 duration:@"Cover Sheet is transitioning" logMessage:?];
  }

  v42.receiver = self;
  v42.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewControllerBase *)&v42 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [v7 transitionDuration];
  v22 = v21;
  v23 = [(CSCoverSheetContextProviding *)self->_coverSheetContext wallpaperProvider];
  [v23 wallpaperClientWillRotateToInterfaceOrientation:v12 duration:v22];
  if ((v10 - 3) > 1)
  {
    v25 = 0;
    v24 = (v10 - 1) <= 1 && (v12 - 1) < 2;
  }

  else
  {
    v24 = 0;
    v25 = (v12 - 3) < 2;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __81__CSCoverSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v36[3] = &unk_27838BCB8;
  v40 = v24;
  v41 = v25;
  v36[4] = self;
  v38 = v12;
  v37 = v23;
  v39 = v22;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __81__CSCoverSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v28[3] = &unk_27838BCE0;
  v29 = v37;
  v30 = self;
  v32 = v10;
  v33 = v12;
  v31 = v13;
  v34 = v17;
  v35 = v19;
  v26 = v13;
  v27 = v37;
  [v7 animateAlongsideTransition:v36 completion:v28];
}

void __81__CSCoverSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissHomeScreenOverlay];
  if ((*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1)
  {
    v2 = [*(a1 + 32) coverSheetView];
    [v2 _layoutWallpaperFloatingLayerContainerView];
  }

  v3 = [*(a1 + 32) coverSheetView];
  [v3 updateContainerOrientationForBackgroundViews:*(a1 + 48)];

  [*(a1 + 40) wallpaperClientWillAnimateRotationToInterfaceOrientation:*(a1 + 48) duration:*(a1 + 56)];
  *(*(a1 + 32) + 1084) = 0;
  [*(a1 + 32) _updateAppearanceForTransitionToOrientation:*(a1 + 48)];
  [*(a1 + 32) _updateActiveAppearanceForReason:@"Rotation"];
  *(*(a1 + 32) + 1084) = 1;
  v4 = [*(a1 + 32) visiblePageViewController];
  v6 = *(*(a1 + 32) + 1176);
  v7 = *(*(a1 + 32) + 1192);
  BSIntervalFractionForValue();
  [v4 updateTransitionToVisible:1 progress:*(*(a1 + 32) + 1208) mode:{v6, v7}];
  v5 = [*(*(a1 + 32) + 1616) hostViewController];
  [v5 hostDidChangeContentBounds];

  [*(a1 + 32) _updateRemoteContentInlineHorizontalMargin];
}

void __81__CSCoverSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) wallpaperClientDidRotateFromInterfaceOrientation:*(a1 + 56)];
  v2 = [*(a1 + 40) visiblePageViewController];
  v3 = [*(a1 + 40) coverSheetView];
  v4 = [v3 scrollView];
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;

  *(*(a1 + 40) + 1084) = 0;
  *(*(a1 + 40) + 1392) = 0;
  v9 = [*(a1 + 40) coverSheetView];
  [v9 _layoutWallpaperFloatingLayerContainerView];

  if ([*(a1 + 40) _wouldUpdateActiveAppearance])
  {
    [*(a1 + 40) _calculateAppearanceForCurrentOrientation];
  }

  [*(a1 + 40) _updateActiveAppearanceForReason:@"CompleteRotation"];
  v10 = [*(a1 + 40) mainPageContentViewController];
  v11 = [v10 combinedListViewController];
  [v11 layoutListView];

  v12 = [*(a1 + 40) coverSheetView];
  [v12 setSuppressesBackgroundContentMatchMove:0 forReason:@"CoverSheetRotation"];

  v13 = SBLogDashBoard();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x223D68E70](*(a1 + 56));
    v15 = MEMORY[0x223D68E70](*(a1 + 64));
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromCGPoint(*(a1 + 72));
    v35.x = v6;
    v35.y = v8;
    v21 = NSStringFromCGPoint(v35);
    v22 = 138544642;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v19;
    v30 = 2114;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "DashBoard has transitioned from orientation %{public}@ to %{public}@. \nVisible page: %{public}@ -> %{public}@. \nScrollView content offset: %{public}@ -> %{public}@", &v22, 0x3Eu);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CSCoverSheetViewController;
  [(CSCoverSheetViewController *)&v9 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  v5 = [(CSCoverSheetViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _windowInterfaceOrientation];

  v8 = [(CSCoverSheetViewController *)self coverSheetView];
  [v8 updateContainerOrientationForBackgroundViews:v7];
}

- (void)_updateAppearanceForTransitionToOrientation:(int64_t)a3
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 != 1)
    {
      return;
    }
  }

  if (_os_feature_enabled_impl())
  {
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"ActiveComplicationContainer"];
    if ((a3 - 3) > 1)
    {
      +[CSComponent complicationSidebar];
    }

    else
    {
      +[CSComponent complicationContainer];
    }
    v7 = ;
    v8 = [v7 identifier:@"ActiveComplicationContainer"];

    [v8 setHidden:1];
    [(CSAppearance *)self->_localAppearance addComponent:v8];
  }

  self->_appearanceOrientation = a3;
  self->_finalInterfaceOrientationForInProgressTransition = a3;
}

- (void)_setAppearanceForLandscape:(BOOL)a3
{
  v3 = self;
  v57 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
LABEL_4:
        v4 = MEMORY[0x277CBEBF8];
        goto LABEL_13;
      }
    }

    else
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 == 1)
      {
        goto LABEL_4;
      }
    }

    if (_os_feature_enabled_impl())
    {
      v4 = &unk_283079860;
    }

    else
    {
      v4 = &unk_283079878;
    }

LABEL_13:
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v53;
      v10 = 0x27CEDF000uLL;
      v11 = @"SBDashBoardThingsToHideInLandscape";
      v50 = v4;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v13 = [*(*(&v52 + 1) + 8 * i) integerValue];
          v14 = *(v10 + 1604);
          v15 = [*(&v3->super.super.super.super.isa + v14) componentForType:v13 identifier:v11];

          if (!v15)
          {
            v16 = [CSComponent componentWithType:v13];
            v17 = [v16 identifier:v11];
            [v17 priority:20];
            v18 = v8;
            v19 = v11;
            v20 = v9;
            v22 = v21 = v3;
            v23 = [v22 hidden:1];

            v3 = v21;
            v9 = v20;
            v11 = v19;
            v8 = v18;

            [*(&v3->super.super.super.super.isa + v14) addComponent:v23];
            v4 = v50;
            v10 = 0x27CEDF000;
          }
        }

        v8 = [v4 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v8);
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
LABEL_31:
        if (__sb__runningInSpringBoard())
        {
          if (SBFEffectiveDeviceClass() == 2)
          {
LABEL_36:
            if (__sb__runningInSpringBoard())
            {
              if (SBFEffectiveDeviceClass() == 2 || !_os_feature_enabled_impl())
              {
                return;
              }
            }

            else
            {
              v39 = [MEMORY[0x277D75418] currentDevice];
              if ([v39 userInterfaceIdiom] == 1)
              {
LABEL_47:

                return;
              }

              v40 = _os_feature_enabled_impl();

              if ((v40 & 1) == 0)
              {
                return;
              }
            }

            v41 = objc_opt_new();
            v42 = [v41 identifier:@"SBDashBoardThingsToHideInLandscape"];
            v43 = [v42 priority:20];
            v39 = [v43 shouldRenderInline:1];

            [(CSAppearance *)v3->_localAppearance addComponent:v39];
            [(SBFLockScreenDateViewController *)v3->_dateViewController setDateTimeAlignment:0];
            [(CSBehavior *)v3->_landscapeBehavior setRestrictedCapabilities:2097220];
            v44 = [(SBFLockScreenDateViewController *)v3->_dateViewController inlineComplicationViewController];
            LOBYTE(v42) = BSEqualObjects();

            if ((v42 & 1) == 0)
            {
              [(SBFLockScreenDateViewController *)v3->_dateViewController setInlineComplicationViewController:v3->_landscapeInlineComplicationContainerViewController];
            }

            if ([(CSCoverSheetViewController *)v3 _isShowingInlineContent])
            {
              if ([(CSCoverSheetViewController *)v3 isShowingMediaControls])
              {
                [(CSCoverSheetViewController *)v3 _dismissRemoteViewControllerForReason:4];
              }
            }

            goto LABEL_47;
          }
        }

        else
        {
          v30 = [MEMORY[0x277D75418] currentDevice];
          v31 = [v30 userInterfaceIdiom];

          if (v31 == 1)
          {
            goto LABEL_36;
          }
        }

        localAppearance = v3->_localAppearance;
        v33 = +[CSComponent wallpaper];
        v34 = [v33 identifier:@"SBDashBoardLandscapeDateComponentIdentifier"];
        v35 = [v34 priority:20];
        v36 = [MEMORY[0x277D75348] blackColor];
        [v35 color:v36];
        v38 = v37 = v3;
        [(CSAppearance *)localAppearance addComponent:v38];

        v3 = v37;
        goto LABEL_36;
      }
    }

    else
    {
      v24 = [MEMORY[0x277D75418] currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if (v25 == 1)
      {
        goto LABEL_31;
      }
    }

    v26 = v3->_localAppearance;
    v27 = objc_opt_new();
    v28 = [v27 identifier:@"SBDashBoardLandscapeDateComponentIdentifier"];
    v29 = [v28 constrainsTimeHeight:1];
    [(CSAppearance *)v26 addComponent:v29];

    goto LABEL_31;
  }

  [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"SBDashBoardThingsToHideInLandscape"];
  [(CSAppearance *)v3->_localAppearance removeAllComponentsWithIdentifier:@"SBDashBoardLandscapeDateComponentIdentifier"];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2 || !_os_feature_enabled_impl())
    {
      return;
    }

    goto LABEL_50;
  }

  v51 = [MEMORY[0x277D75418] currentDevice];
  if ([v51 userInterfaceIdiom] != 1)
  {
    v45 = _os_feature_enabled_impl();

    if ((v45 & 1) == 0)
    {
      return;
    }

LABEL_50:
    [(SBFLockScreenDateViewController *)v3->_dateViewController setDateTimeAlignment:1];
    [(CSBehavior *)v3->_landscapeBehavior setRestrictedCapabilities:0];
    v46 = [(SBFLockScreenDateViewController *)v3->_dateViewController inlineComplicationViewController];
    v47 = BSEqualObjects();

    if ((v47 & 1) == 0)
    {
      dateViewController = v3->_dateViewController;
      inlineComplicationContainerViewController = v3->_inlineComplicationContainerViewController;

      [(SBFLockScreenDateViewController *)dateViewController setInlineComplicationViewController:inlineComplicationContainerViewController];
    }

    return;
  }
}

- (void)_calculateAppearanceForCurrentOrientation
{
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [MEMORY[0x277D75418] currentDevice];
    if ([v14 userInterfaceIdiom] == 1)
    {
      v4 = 1;
      goto LABEL_8;
    }
  }

  v4 = v3 ^ 1;
  if (_os_feature_enabled_impl())
  {
    v5 = 1;
    goto LABEL_19;
  }

LABEL_8:
  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
      v5 = SBFEffectiveHomeButtonType() == 2;
      v6 = v14;
      if (!v4)
      {
        goto LABEL_12;
      }

LABEL_20:

      if (!v5)
      {
        return;
      }

      goto LABEL_21;
    }

    v5 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom])
    {

      v8 = v14;
      if ((v4 & 1) == 0)
      {
        return;
      }

      goto LABEL_29;
    }

    v5 = SBFEffectiveHomeButtonType() == 2;
  }

LABEL_19:
  v6 = v14;
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (!v5)
  {
    return;
  }

LABEL_21:
  v9 = ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) < 2;
  [(CSCoverSheetViewController *)self _setAppearanceForLandscape:v9];
  v15 = [(CSAppearance *)self->_localAppearance componentForType:2 identifier:@"D22_OVERRIDE"];
  v10 = [(CSCoverSheetViewController *)self traitCollection];
  if ([v10 verticalSizeClass] != 1)
  {
    LODWORD(v9) = 0;
  }

  v8 = v15;
  if ((v15 == 0) == v9)
  {
    if (v9)
    {
      v11 = +[CSComponent statusBar];
      v12 = [v11 priority:20];
      v13 = [v12 identifier:@"D22_OVERRIDE"];

      [v13 setHidden:1];
      [v13 setFlag:0];
      [v13 setAlpha:0.0];
      [(CSAppearance *)self->_localAppearance addComponent:v13];
    }

    else
    {
      [(CSAppearance *)self->_localAppearance removeComponent:v15];
    }

    v8 = v15;
  }

LABEL_29:
}

- (void)_displayWillAppearImplementation
{
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "DashBoard switching to CSCoverSheetParticipantStateActive", v5, 2u);
  }

  self->_participantState = 2;
  v4 = [(CSCoverSheetViewController *)self view];
  [(CSCoverSheetViewController *)self _setHasContentAboveCoverSheet:0];
  [(CSCoverSheetViewController *)self _listenForDisplayLayoutChanges:1];
  [(CSNotificationDispatcher *)self->_notificationDispatcher setActive:1];
  [(CSCoverSheetViewController *)self _handleEventType:8];
}

- (void)_listenForDisplayLayoutChanges:(BOOL)a3
{
  if (self->_listeningForDisplayLayoutChanges != a3)
  {
    v4 = a3;
    self->_listeningForDisplayLayoutChanges = a3;
    v6 = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
    v7 = v6;
    if (v4)
    {
      [v6 addObserver:self];
    }

    else
    {
      [v6 removeObserver:self];
    }
  }
}

- (void)coverSheetNotificationClearingTriggerDidFire:(id)a3
{
  v4 = [CSEvent eventWithType:35];
  [(CSCoverSheetViewController *)self _handleEvent:v4];
}

- (void)passcodeViewControllerDidCancelPasscodeEntry:(id)a3
{
  if ([(CSInterstitialTransitionSource *)self->_interstitialTransitionSource isTransitioning])
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[CSViewController] Cancel button pressed while interstitial was transitioning", buf, 2u);
    }

    [(CSCoverSheetViewController *)self updateInterstitialPresentationWithProgress:self->_initialInterstitialTransitionProgress];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__CSCoverSheetViewController_passcodeViewControllerDidCancelPasscodeEntry___block_invoke;
    v7[3] = &unk_27838B770;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__CSCoverSheetViewController_passcodeViewControllerDidCancelPasscodeEntry___block_invoke_2;
    v6[3] = &unk_27838BD08;
    v6[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v7 interactive:v6 animations:9300.0 completion:196.0];
  }

  else if (CSFeatureEnabled(12))
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "[CSViewController] Cancel button pressed for interstitial", buf, 2u);
    }

    [(CSCoverSheetViewController *)self dismissInterstitialPresentationAnimated:1];
  }
}

- (BOOL)passcodeViewControllerShouldHideStatusBar:(id)a3
{
  v3 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  v4 = [v3 coachingActive];

  if (v4)
  {
    return 1;
  }

  return SBSIsSystemApertureAvailable();
}

- (BOOL)suppressesBanners
{
  if (self->_participantState != 2)
  {
    return 0;
  }

  v2 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v2 notificationBehavior] != 2;

  return v3;
}

- (BOOL)suppressesControlCenter
{
  if (self->_participantState != 2)
  {
    return 0;
  }

  v2 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v2 areRestrictedCapabilities:128];

  return v3;
}

- (BOOL)suppressesScreenshots
{
  v2 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v2 areRestrictedCapabilities:0x4000];

  return v3;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  if (a3)
  {
    v3 = 33;
  }

  else
  {
    v3 = 32;
  }

  return [(CSCoverSheetViewController *)self _handleEventType:v3];
}

- (BOOL)externalLockProvidersShowPasscode
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self delegate];
  v4 = [v3 coverSheetViewControllerIsTransitioningToSecureApp:self];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_externalLockProviders;
    v5 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 participantState] == 2 && objc_msgSend(v9, "isLocked") && (objc_msgSend(v9, "showPasscode") & 1) != 0)
          {
            LOBYTE(v5) = 1;
            goto LABEL_15;
          }
        }

        v5 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v5;
}

- (void)setPasscodeLockVisible:(BOOL)a3 animated:(BOOL)a4 showBackground:(BOOL)a5 forceBiometricPresentation:(BOOL)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = +[(CSCoverSheetViewControllerBase *)CSPasscodeViewController];
  v14 = [(CSCoverSheetViewController *)self delegate];
  v15 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v13];
  v16 = v15;
  if (v10)
  {
    if (!v15 && ![(CSCoverSheetViewController *)self isUnlockDisabled])
    {
      v17 = [(CSCoverSheetViewController *)self activeAppearance];
      v18 = [v17 componentForType:19 property:64];
      v45 = [v18 color];

      v19 = [(CSCoverSheetViewController *)self _customLockScreenActionContext];
      v20 = [CSPasscodeViewController alloc];
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = 2;
      }

      v22 = [(CSPasscodeViewController *)v20 initWithOptions:v21];
      [(CSPasscodeViewController *)v22 setCoverSheetContext:self->_coverSheetContext];
      WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);
      [(CSPasscodeViewController *)v22 setWallpaperColorProvider:WeakRetained];

      [(CSPasscodeViewController *)v22 setWallpaperAverageColorOverride:v45];
      if (a6)
      {
        v24 = 1;
      }

      else
      {
        v24 = [v19 wantsBiometricPresentation];
      }

      v32 = v19;
      [(CSPasscodeViewController *)v22 setUseBiometricPresentation:v24];
      [(CSPasscodeViewController *)v22 setFaceOcclusionMonitor:self->_faceOcclusionMonitor];
      [(CSPasscodeViewController *)v22 setDelegate:self];
      v43 = [MEMORY[0x277D67C98] sharedInstance];
      v48 = v14;
      if ([v43 hasPearlSupport])
      {
        v33 = 0;
      }

      else
      {
        v33 = MGGetBoolAnswer() ^ 1;
      }

      [(CSPasscodeViewController *)v22 setBiometricButtonsInitiallyVisible:v33];
      v34 = 1;
      [(CSPasscodeViewController *)v22 setShowProudLock:1];
      v35 = [(CSProudLockViewController *)self->_proudLockViewController proudLockContainerViewController];
      [(CSPasscodeViewController *)v22 setProudLockContainerViewControllerToUpdate:v35];

      v36 = [v32 unlockDestination];
      [(CSPasscodeViewController *)v22 setUnlockDestination:v36];

      if (!a6)
      {
        v34 = [v32 confirmedNotInPocket];
      }

      v44 = v32;
      [(CSPasscodeViewController *)v22 setConfirmedNotInPocket:v34];
      [(CSCoverSheetViewController *)self _presentModalViewController:v22 animated:v9 completion:v12];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v37 = [(NSHashTable *)self->_observers copy];
      v38 = [v37 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v57;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v57 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v56 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v42 coverSheetViewControllerDidPresentPasscodeLockView:self];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v39);
      }

      v14 = v48;
    }
  }

  else
  {
    v47 = v14;
    v25 = CSFeatureEnabled(12);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __115__CSCoverSheetViewController_setPasscodeLockVisible_animated_showBackground_forceBiometricPresentation_completion___block_invoke;
    v53[3] = &unk_27838BD30;
    v55 = v25;
    v53[4] = self;
    v46 = v12;
    v54 = v12;
    [(CSCoverSheetViewController *)self _dismissModalViewControllersWithIdentifier:v13 animated:v9 completion:v53];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v26 = [(NSHashTable *)self->_observers copy];
    v27 = [v26 countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v50;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v50 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v49 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v31 coverSheetViewControllerDidDismissPasscodeLockView:self];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v28);
    }

    v14 = v47;
    if (v16 || (v25 & 1) == 0)
    {
      [v47 coverSheetViewControllerDidDismissInlinePasscode:self];
    }

    v12 = v46;
  }
}

uint64_t __115__CSCoverSheetViewController_setPasscodeLockVisible_animated_showBackground_forceBiometricPresentation_completion___block_invoke(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) interstitialTransitionSource];
    if ([v2 isTransitioning])
    {
      [v2 cancelTransition];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setAuthenticated:(BOOL)a3
{
  v3 = a3;
  if ([(CSCoverSheetViewController *)self isAuthenticated]!= a3)
  {
    self->_authenticated = v3;
    [(CSCoverSheetViewController *)self _sendAuthenticationChangedEvent];
    if (v3)
    {
      [(CSCoverSheetViewController *)self _updateCoachingString];
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __47__CSCoverSheetViewController_setAuthenticated___block_invoke;
      v7[3] = &unk_27838B770;
      v7[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v7];
      if ([(CSCoverSheetViewController *)self _isSpotlightBehaviorRestricted]&& self->_spotlightModalViewController)
      {
        WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
        [WeakRetained dismissSpotlightAnimated:1];
      }
    }
  }

  [(CSHomeButtonShowPasscodeRecognizer *)self->_homeButtonShowPasscodeRecognizer noteAuthenticated:v3];
  v6 = [(CSCoverSheetViewController *)self coverSheetView];
  [v6 updateUIForAuthenticated:v3];

  if (v3)
  {
    [(CSCoverSheetViewController *)self _setupQuickNoteGestureRecognizer];
  }

  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"UserAuthenticationChanged"];
  [(CSNotificationClearingTrigger *)self->_notificationClearingTrigger setAuthenticated:v3];
}

- (void)respondToUIUnlockFromSource:(int)a3
{
  v4 = a3 - 1;
  if (a3 - 1) <= 0x28 && ((0x11101010297uLL >> v4))
  {
    v5 = 0xFFFEFFFD79uLL >> v4;
    v6 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    [v6 handleDisplayWake:v5 & 1];
  }
}

- (BOOL)willUIUnlockFromSource:(int)a3 isLockScreenDisabledForAssertion:(BOOL)a4
{
  v5 = *&a3;
  v45 = *MEMORY[0x277D85DE8];
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = v5;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[UIUnlock] Can UIUnlock from source %ld?", buf, 0xCu);
  }

  if ([(CSCoverSheetViewController *)self isUnlockDisabled])
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[UIUnlock] Returning NO because unlock is disabled.", buf, 2u);
    }

    v9 = 0;
  }

  else
  {
    v8 = [(CSCoverSheetViewController *)self delegate];
    v10 = [v8 coverSheetViewControllerIsTransitioningToSecureApp:self];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = self->_externalLockProviders;
    v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v12)
    {
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v11);
          }

          if ((v10 & 1) == 0)
          {
            v15 = *(*(&v36 + 1) + 8 * i);
            if ([v15 participantState] == 2 && objc_msgSend(v15, "isLocked") && (objc_msgSend(v15, "unlockFromSource:", v5) & 1) == 0)
            {
              v21 = SBLogDashBoard();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v41 = v15;
                _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "[UIUnlock] Returning NO because external lock provider said so: %@", buf, 0xCu);
              }

              if (CSFeatureEnabled(12))
              {
                if ([v15 presentsAlert])
                {
                  v22 = v15;
                  objc_initWeak(buf, v22);
                  v30 = MEMORY[0x277D85DD0];
                  v31 = 3221225472;
                  v32 = __86__CSCoverSheetViewController_willUIUnlockFromSource_isLockScreenDisabledForAssertion___block_invoke;
                  v33 = &unk_27838BD58;
                  objc_copyWeak(&v35, buf);
                  v34 = v8;
                  [v22 setAlertDismissalHandler:&v30];

                  objc_destroyWeak(&v35);
                  objc_destroyWeak(buf);
                }

                [v8 coverSheetViewControllerRequestsTranslationToPresentedForExternalLockProvider:0 animated:1, v30, v31, v32, v33];
              }

              v9 = 0;
              goto LABEL_29;
            }
          }
        }

        v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = [(CSCoverSheetViewController *)self isPasscodeLockVisible];
    v17 = [(CSCoverSheetViewController *)self activeBehavior];
    v11 = v17;
    v18 = v5 - 1;
    v9 = 1;
    switch(v18)
    {
      case 0:
      case 4:
      case 16:
        v24 = +[CSLockScreenDomain rootSettings];
        v25 = [v24 autoDismissUnlockedLockScreen];

        v9 = v25 | a4;
        goto LABEL_19;
      case 1:
      case 2:
      case 3:
      case 7:
      case 8:
      case 9:
      case 10:
      case 12:
      case 17:
      case 18:
      case 23:
      case 24:
      case 25:
      case 28:
      case 29:
      case 32:
      case 33:
      case 40:
        goto LABEL_19;
      case 14:
        v26 = [CSEvent eventWithType:27];
        v27 = [(CSCoverSheetViewController *)self wouldHandleButtonEvent:v26];

        if (!v27)
        {
          goto LABEL_19;
        }

        v9 = 0;
        v28 = @"the home button is being handled manually";
        goto LABEL_39;
      case 22:
        if (v16)
        {
          v28 = @"we're showing the passcode UI";
        }

        else
        {
          if (([(NSHashTable *)v17 areRestrictedCapabilities:8]& 1) == 0)
          {
LABEL_19:
            v19 = SBLogDashBoard();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = NSStringFromBOOL();
              *buf = 138412290;
              v41 = v20;
              _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "[UIUnlock] Returning %@.", buf, 0xCu);
            }

            goto LABEL_21;
          }

          v9 = 0;
          v28 = @"CSCapabilityTouchID is restricted";
        }

LABEL_39:
        v19 = SBLogDashBoard();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v29 = NSStringFromBOOL();
          *buf = 138412546;
          v41 = v29;
          v42 = 2112;
          v43 = v28;
          _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "[UIUnlock] Returning %@ because %@.", buf, 0x16u);
        }

LABEL_21:

        break;
      default:
        v9 = 0;
        goto LABEL_19;
    }

LABEL_29:
  }

  return v9;
}

void __86__CSCoverSheetViewController_willUIUnlockFromSource_isLockScreenDisabledForAssertion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlertDismissalHandler:0];
  if (a3)
  {
    [*(a1 + 32) coverSheetViewControllerRequestsTranslationToPresentedForExternalLockProvider:1 animated:1];
  }
}

- (void)finishUIUnlockFromSource:(int)a3
{
  v5 = [(CSCoverSheetViewController *)self activeBehavior];
  v6 = [v5 areRestrictedCapabilities:56];

  if (v6)
  {
    [CSCoverSheetViewController finishUIUnlockFromSource:a2];
  }

  [(CSCoverSheetViewController *)self _handleEventType:12];
}

- (void)_setDidDismissSinceScreenOn:(BOOL)a3
{
  if (self->_didDismissSinceScreenOn != a3)
  {
    self->_didDismissSinceScreenOn = a3;
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"didDismissSinceScreenOn"];
    v5 = [CSComponent componentWithType:12];
    v6 = [v5 identifier:@"didDismissSinceScreenOn"];
    v7 = [v6 priority:10];

    [v7 setSuppressTeachableMomentsAnimation:BSSettingFlagIfYes()];
    [(CSAppearance *)self->_localAppearance addComponent:v7];
    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"didDismissSinceScreenOn"];
  }
}

- (void)_setDismissed:(BOOL)a3
{
  if (self->_dismissed != a3)
  {
    self->_dismissed = a3;
    if (a3)
    {
      [(CSCoverSheetViewController *)self _setDidDismissSinceScreenOn:1];
    }

    [(CSCoverSheetViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (BOOL)canBeDeactivatedForUIUnlockFromSource:(int)a3
{
  v4 = [(CSCoverSheetViewController *)self activeBehavior];
  v5 = [v4 areRestrictedCapabilities:56];

  if (v5)
  {
    return 0;
  }

  else
  {
    return ![(CSCoverSheetViewController *)self externalLockProvidersRequireUnlock];
  }
}

- (void)jiggleLockIcon
{
  v3 = [*MEMORY[0x277D76620] statusBar];
  [v3 jiggleLockIcon];

  proudLockViewController = self->_proudLockViewController;

  [(CSProudLockViewController *)proudLockViewController updateLockForBiometricMatchFailure];
}

- (unint64_t)visibleNotificationCount
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v3 = [v2 visibleNotificationCount];

  return v3;
}

- (BOOL)contentOccludesBackground
{
  v3 = [(CSCoverSheetViewController *)self isPasscodeLockVisible];
  if (v3)
  {
    LOBYTE(v3) = ![(CSInterstitialTransitionSource *)self->_interstitialTransitionSource isTransitioning];
  }

  return v3;
}

- (void)setYContentOffset:(double)a3
{
  v4 = [(CSCoverSheetViewController *)self coverSheetView];
  [v4 setModalPresentationViewOffset:a3];
}

- (CGRect)frameForContentViewForContainerBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CSFeatureEnabled(12))
  {
    v7 = height + height;
  }

  else
  {
    v7 = height;
  }

  v8 = x;
  v9 = y;
  v10 = width;
  result.size.height = v7;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)prepareForInterstitialPresentation
{
  v3 = [(CSCoverSheetViewController *)self currentTransitionSource];
  v4 = [v3 isTransitioning];

  if ((v4 & 1) == 0)
  {
    v5 = [(CSCoverSheetViewController *)self _passcodeViewController];
    self->_interstitialTransitionStartedFromPasscodePresented = v5 != 0;
    v6 = objc_alloc_init(CSInterstitialTransitionSource);
    [(CSInterstitialTransitionSource *)v6 setTransitioningDelegate:self];
    [(CSCoverSheetViewController *)self setInterstitialTransitionSource:v6];
    [(CSInterstitialTransitionSource *)v6 prepareForPresentation];
    [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)self->_phoneUnlockWithRemoteDeviceCoordinator attemptPhoneUnlockWithRemoteDevice];
    [(CSCoverSheetViewController *)self setPasscodeLockVisible:1 animated:0 showBackground:CSFeatureEnabled(12) ^ 1 forceBiometricPresentation:1 completion:0];
    if (!v5)
    {
      v5 = [(CSCoverSheetViewController *)self _passcodeViewController];
    }

    [v5 beginInteractivePresentationTransitionForInitialTransition:!self->_interstitialTransitionStartedFromPasscodePresented];
    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__CSCoverSheetViewController_prepareForInterstitialPresentation__block_invoke;
    v9[3] = &unk_27838B838;
    v10 = v5;
    v11 = self;
    v8 = v5;
    [v7 _performWithoutRetargetingAnimations:v9];
    self->_initialInterstitialTransitionProgress = -1.0;
  }
}

- (void)updateInterstitialPresentationWithProgress:(double)a3
{
  initialInterstitialTransitionProgress = self->_initialInterstitialTransitionProgress;
  if (initialInterstitialTransitionProgress < 0.0)
  {
    self->_initialInterstitialTransitionProgress = a3;
    initialInterstitialTransitionProgress = a3;
  }

  v6 = [(CSCoverSheetViewController *)self interstitialTransitionSource];
  if ([v6 isTransitioning])
  {
    [v6 updatePresentationWithProgress:a3 - initialInterstitialTransitionProgress + a3 - initialInterstitialTransitionProgress];
    v7 = *(MEMORY[0x277CF0B28] + 16);
    v17 = *MEMORY[0x277CF0B28];
    v18 = v7;
    BSUIConstrainValueToIntervalWithRubberBand();
    v9 = v8;
    v10 = [(CSCoverSheetViewController *)self _passcodeViewController];
    v11 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__CSCoverSheetViewController_updateInterstitialPresentationWithProgress___block_invoke;
    v13[3] = &unk_27838BD80;
    v16 = v9;
    v14 = v10;
    v15 = self;
    v12 = v10;
    [v11 _animateUsingSpringWithTension:0 friction:v13 interactive:&__block_literal_global_355 animations:9300.0 completion:196.0];
  }
}

void __73__CSCoverSheetViewController_updateInterstitialPresentationWithProgress___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v14.minimum;
  maximum = v14.maximum;
  preferred = v14.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__CSCoverSheetViewController_updateInterstitialPresentationWithProgress___block_invoke_2;
  v10[3] = &unk_27838BD80;
  v6 = *(a1 + 32);
  v13 = *(a1 + 48);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v10 animations:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v13), LODWORD(minimum))), v8, v9}];
}

- (void)cleanupInterstitialPresentationToPresented:(BOOL)a3 inPlace:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CSCoverSheetViewController *)self interstitialTransitionSource];
  if ([v7 isTransitioning])
  {
    if (v5)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (v5 && !self->_hasPresentedForInterstitialTransitionSource)
    {
      self->_hasPresentedForInterstitialTransitionSource = 1;
      v9 = [(CSCoverSheetViewController *)self delegate];
      [v9 coverSheetViewControllerWillPresentInlinePasscode:self];
    }

    v10 = [(CSCoverSheetViewController *)self _passcodeViewController];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke;
    v22[3] = &unk_27838BDC8;
    v11 = v7;
    v23 = v11;
    v24 = self;
    v12 = v10;
    v25 = v12;
    v26 = v5;
    v13 = MEMORY[0x223D698D0](v22);
    [v12 commitingToEndTransitionToPresented:v5 forInitialTransition:!self->_interstitialTransitionStartedFromPasscodePresented];
    if (v4)
    {
      v13[2](v13);
    }

    else
    {
      v14 = MEMORY[0x277D75D18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke_2;
      v17[3] = &unk_27838B690;
      v21 = v8;
      v18 = v12;
      v19 = self;
      v20 = v11;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke_4;
      v15[3] = &unk_27838BDF0;
      v16 = v13;
      [v14 _animateUsingSpringWithTension:0 friction:v17 interactive:v15 animations:240.0 completion:30.0];
    }
  }

  self->_initialInterstitialTransitionProgress = -1.0;
}

void __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cleanupPresentation];
  [*(a1 + 40) setInterstitialTransitionSource:0];
  [*(a1 + 48) endInteractiveTransitionToPresented:*(a1 + 56) forInitialTransition:(*(*(a1 + 40) + 1568) & 1) == 0];
  v2 = *(a1 + 40);
  if ((*(a1 + 56) & 1) == 0 && (v2[1568] & 1) == 0)
  {
    [v2 setPasscodeLockVisible:0 animated:0];
    v2 = *(a1 + 40);
  }

  v3 = [v2 delegate];
  [v3 coverSheetViewControllerDidDismissInlinePasscode:*(a1 + 40)];
}

void __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v17 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v17.minimum;
  maximum = v17.maximum;
  preferred = v17.preferred;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke_3;
  v12[3] = &unk_27838B690;
  v6 = *(a1 + 32);
  v16 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  *&v9 = minimum;
  *&v10 = maximum;
  *&v11 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v12 animations:{v9, v10, v11}];
}

uint64_t __81__CSCoverSheetViewController_cleanupInterstitialPresentationToPresented_inPlace___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) updateInteractiveTransitionWithPercent:(*(*(a1 + 40) + 1568) & 1) == 0 forInitialTransition:*(a1 + 56)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 updatePresentationWithProgress:v3];
}

- (void)setInterstitialTransitionSource:(id)a3
{
  v5 = a3;
  if (self->_interstitialTransitionSource != v5)
  {
    [(CSCoverSheetViewController *)self unregisterExternalAppearanceProvider:?];
    [(CSCoverSheetViewController *)self unregisterExternalBehaviorProvider:self->_interstitialTransitionSource];
    objc_storeStrong(&self->_interstitialTransitionSource, a3);
    self->_hasPresentedForInterstitialTransitionSource = 0;
    if (self->_interstitialTransitionSource)
    {
      [(CSCoverSheetViewController *)self registerExternalAppearanceProvider:?];
      [(CSCoverSheetViewController *)self registerExternalBehaviorProvider:self->_interstitialTransitionSource];
    }
  }
}

- (void)performInterstitialPresentationAnimated:(BOOL)a3
{
  v3 = a3;
  if (CSFeatureEnabled(12))
  {
    v5 = [(CSCoverSheetViewController *)self currentTransitionSource];
    v6 = [v5 isTransitioning];

    if ((v6 & 1) == 0)
    {
      v9 = [(CSCoverSheetViewController *)self _passcodeViewController];
      self->_interstitialTransitionStartedFromPasscodePresented = v9 != 0;
      [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)self->_phoneUnlockWithRemoteDeviceCoordinator attemptPhoneUnlockWithRemoteDevice];
      [(CSCoverSheetViewController *)self setPasscodeLockVisible:1 animated:v3 showBackground:0 forceBiometricPresentation:1 completion:0];
      v7 = [(CSCoverSheetViewController *)self delegate];
      [v7 coverSheetViewControllerWillPresentInlinePasscode:self];
    }
  }

  else
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSCoverSheetViewController performInterstitialPresentationAnimated:];
    }
  }
}

- (void)dismissInterstitialPresentationAnimated:(BOOL)a3
{
  v3 = a3;
  if (CSFeatureEnabled(12))
  {
    v7 = [(CSCoverSheetViewController *)self delegate];
    v5 = [(CSCoverSheetViewController *)self _passcodeViewController];

    if (v5)
    {
      [(CSCoverSheetViewController *)self setPasscodeLockVisible:0 animated:v3];
      [v7 coverSheetViewControllerDidCancelInlinePasscode:self];
    }
  }

  else
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CSCoverSheetViewController dismissInterstitialPresentationAnimated:];
    }
  }
}

- (void)setBacklightLevel:(double)a3
{
  [(CSCoverSheetViewController *)self backlightLevel];
  if (v5 != a3)
  {
    v7 = [CSEvent eventWithType:16];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v7 setValue:v6];

    [(CSCoverSheetViewController *)self _handleEvent:v7];
    self->_backlightLevel = a3;
  }
}

- (void)setInScreenOffMode:(BOOL)a3 forAutoUnlock:(BOOL)a4 fromUnlockSource:(int)a5
{
  v44 = *MEMORY[0x277D85DE8];
  if (self->_screenOffMode == a3)
  {
    return;
  }

  v5 = *&a5;
  v6 = a3;
  self->_screenOffMode = a3;
  v8 = 0x27CEDF000uLL;
  if (a3)
  {
    [(CSCoverSheetViewController *)self _setDidDismissSinceScreenOn:0, a4];
    [(CSOrientationUpdateControlling *)self->_orientationUpdateController deferOrientationUpdatesWithReason:@"CSCoverSheetScreenOffReason"];
    [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)self->_phoneUnlockWithRemoteDeviceCoordinator handleScreenOff:1];
    [(CSCoverSheetViewController *)self _clearChargingModalTimerPerformingHandler:1];
    accessoryViewControllerTimer = self->_accessoryViewControllerTimer;
    if (accessoryViewControllerTimer && self->_accessoryViewControllerTimerHandler)
    {
      [(BSAbsoluteMachTimer *)accessoryViewControllerTimer invalidate];
      (*(self->_accessoryViewControllerTimerHandler + 2))();
      v10 = self->_accessoryViewControllerTimer;
      self->_accessoryViewControllerTimer = 0;

      accessoryViewControllerTimerHandler = self->_accessoryViewControllerTimerHandler;
      self->_accessoryViewControllerTimerHandler = 0;

      self->_accessoryViewPresentationDelayed = 0;
    }

    accessoryViewControllerChargingTimer = self->_accessoryViewControllerChargingTimer;
    if (accessoryViewControllerChargingTimer && self->_accessoryViewControllerChargingTimerHandler)
    {
      [(BSAbsoluteMachTimer *)accessoryViewControllerChargingTimer invalidate];
      (*(self->_accessoryViewControllerChargingTimerHandler + 2))();
      v13 = self->_accessoryViewControllerChargingTimer;
      self->_accessoryViewControllerChargingTimer = 0;

      accessoryViewControllerChargingTimerHandler = self->_accessoryViewControllerChargingTimerHandler;
      self->_accessoryViewControllerChargingTimerHandler = 0;
    }

    v15 = SBLogDashBoard();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v43 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "[Charge UI][Screen Off Mode] visible NO, showBattery NO – isAlreadyShowingChargingModal: %d", buf, 8u);
    }

    [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:0 showBattery:0 animated:0];
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109120;
      v43 = v17;
      _os_log_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEFAULT, "[Charge UI][Screen Off Mode] – endedShowingChargingModal: %d", buf, 8u);
    }

    v18 = [(CSCoverSheetViewController *)self coverSheetView];
    [v18 resetScrollViewToMainPageAnimated:0 withCompletion:0];

    [(CSCoverSheetViewTransitionSource *)self->_currentTransitionSource cancelTransition];
    [(CSTimerViewController *)self->_timerViewController setEnabled:0];
    [(CSCoverSheetViewController *)self _addOrRemoveRemoteContentViewIfNecessary];
    [(CSCoverSheetViewController *)self dismissHomeScreenOverlay];
  }

  else
  {
    [(CSCoverSheetViewController *)self _updateOverrideDateIfNeeded:a3];
    [(CSOrientationUpdateControlling *)self->_orientationUpdateController cancelOrientationUpdateDeferral];
    if (([(SBFScreenWakeAnimationControlling *)self->_screenWakeAnimationController isWakeAnimationInProgress]& 1) == 0)
    {
      [(SBFLockScreenDateViewController *)self->_dateViewController updateTimeNow];
    }

    v19 = [CSAction actionWithType:3];
    [(CSCoverSheetViewController *)self handleAction:v19 fromSender:self];

    [(CSTimerViewController *)self->_timerViewController setEnabled:1];
    [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)self->_phoneUnlockWithRemoteDeviceCoordinator handleScreenOff:0];
  }

  v20 = 0x277CF0000uLL;
  v21 = [MEMORY[0x277CF0880] sharedBacklight];
  if ([v21 backlightState] != 1)
  {

    goto LABEL_21;
  }

  v22 = [(CSCoverSheetViewController *)self _appearState];

  if (v22 == 2)
  {
LABEL_21:
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"HiddenAODTransitionElement"];
    goto LABEL_22;
  }

  localAppearance = self->_localAppearance;
  v24 = objc_opt_new();
  [v24 hidden:1];
  v25 = v41 = v5;
  v26 = [v25 identifier:@"HiddenAODTransitionElement"];
  v27 = [v26 priority:80];
  [(CSAppearance *)localAppearance addComponent:v27];

  v28 = self->_localAppearance;
  v8 = 0x27CEDF000;
  v29 = objc_opt_new();
  v30 = [v29 hidden:1];
  v31 = [v30 identifier:@"HiddenAODTransitionElement"];
  v32 = [v31 priority:80];
  [(CSAppearance *)v28 addComponent:v32];

  v20 = 0x277CF0000;
  v5 = v41;

LABEL_22:
  v33 = *(v8 + 1816);
  [*(&self->super.super.super.super.isa + v33) setScreenOff:self->_screenOffMode];
  v34 = *(&self->super.super.super.super.isa + v33);
  v35 = [(CSLockScreenSettings *)self->_prototypeSettings aodTransitionSettings];
  [v35 aodClockResponse];
  [v34 setLuminanceChangeAnimationResponse:?];

  [(CSInlineWidgetContainerViewController *)self->_inlineComplicationContainerViewController setScreenOff:self->_screenOffMode];
  [(CSInlineWidgetContainerViewController *)self->_landscapeInlineComplicationContainerViewController setScreenOff:self->_screenOffMode];
  [(CSWidgetGridViewController *)self->_complicationContainerViewController setScreenOff:self->_screenOffMode];
  [(CSWidgetGridViewController *)self->_sidebarComplicationContainerViewController setScreenOff:self->_screenOffMode];
  if (v6)
  {
    v36 = @"ScreenOff";
  }

  else
  {
    v36 = @"ScreenOn";
  }

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v36];
  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"ScreenOffModeUpdate"];
  if (self->_screenOffMode)
  {
    v37 = [CSEvent eventWithType:25];
  }

  else
  {
    v37 = [CSEvent eventWithType:24];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    [v37 setValue:v38];
  }

  [(CSCoverSheetViewController *)self _handleEvent:v37];
  [(CSNotificationClearingTrigger *)self->_notificationClearingTrigger setScreenOff:v6];
  notificationClearingTrigger = self->_notificationClearingTrigger;
  v40 = [*(v20 + 2176) sharedBacklight];
  -[CSNotificationClearingTrigger setScreenInactive:](notificationClearingTrigger, "setScreenInactive:", [v40 backlightState] == 1);
}

- (BOOL)shouldUnlockUIOnKeyDownEvent
{
  if ([(CSCoverSheetViewController *)self isPasscodeLockVisible])
  {
    return 0;
  }

  v3 = [(CSCoverSheetViewController *)self modalPresentationController];
  v4 = [v3 isPresentingContent];

  if (v4)
  {
    return 0;
  }

  else
  {
    return ![(CSCoverSheetViewController *)self isHostingAnApp];
  }
}

- (BOOL)isShowingMediaControls
{
  v2 = [(CSCoverSheetViewController *)self mainPageContentViewController];
  v3 = [v2 isShowingMediaControls];

  return v3;
}

- (void)setShowingMediaControls:(BOOL)a3
{
  if (a3 && [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController shouldDismissInlineContentForNowPlaying])
  {

    [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:4];
  }
}

- (void)_activateCameraEntity:(id)a3 animated:(BOOL)a4 actions:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(CSCoverSheetViewController *)self coverSheetView];
  v14 = [(CSCoverSheetViewController *)self _indexOfCameraPage];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12[2](v12, 5, @"Camera page not accessible");
    goto LABEL_20;
  }

  v15 = v14;
  v27 = v8;
  v16 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:v14];
  v28 = v11;
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [v16 hostedEntity];
      v18 = [v17 applicationBundleIdentifier];
      v19 = [v10 applicationBundleIdentifier];
      v20 = [v18 isEqualToString:v19];

      v11 = v28;
      if (!v20)
      {
        v21 = 0;
        goto LABEL_12;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v21 = 0;
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      [v16 setHostedEntity:v10];
    }

    goto LABEL_14;
  }

  v21 = [v16 acquireLiveContentAssertionForReason:@"Camera Activation"];
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = objc_opt_respondsToSelector() & 1;
  if (v22)
  {
    [v16 setActionsToDeliver:v11];
  }

  objc_initWeak(location, self);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __80__CSCoverSheetViewController__activateCameraEntity_animated_actions_completion___block_invoke;
  v34[3] = &unk_27838BE18;
  objc_copyWeak(v40, location);
  v23 = v13;
  v40[1] = v15;
  v35 = v23;
  v36 = self;
  v41 = v22;
  v24 = v16;
  v37 = v24;
  v25 = v21;
  v38 = v25;
  v39 = v12;
  v26 = MEMORY[0x223D698D0](v34);
  if ([(CSCoverSheetViewController *)self isPasscodeLockVisible])
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __80__CSCoverSheetViewController__activateCameraEntity_animated_actions_completion___block_invoke_2;
    v29[3] = &unk_27838BE40;
    v30 = v23;
    v32 = v15;
    v33 = v27;
    v31 = v26;
    [(CSCoverSheetViewController *)self setPasscodeLockVisible:0 animated:v27 completion:v29];
  }

  else
  {
    [v23 scrollToPageAtIndex:v15 animated:v27 withCompletion:v26];
  }

  objc_destroyWeak(v40);
  objc_destroyWeak(location);

  v11 = v28;
LABEL_20:
}

void __80__CSCoverSheetViewController__activateCameraEntity_animated_actions_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [*(a1 + 32) scrollView];
  [v2 contentOffset];
  v4 = v3;
  v5 = [*(a1 + 32) scrollView];
  [v5 contentOffsetForPageAtIndex:*(a1 + 80)];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    [*(*(a1 + 40) + 2232) cancelTransition];
    *(*(a1 + 40) + 1160) = 0;
    [*(a1 + 40) setCurrentTransitionSource:0];
    [WeakRetained activateMainPageWithCompletion:0];
    if (*(a1 + 88) == 1)
    {
      [*(a1 + 48) setActionsToDeliver:0];
    }

    v8 = @"Camera presentation interrupted existing scroll.";
    v9 = 1;
  }

  [*(*(a1 + 40) + 1984) cancelOrientationUpdateDeferral];
  [*(a1 + 56) invalidate];
  v10 = *(a1 + 64);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v8);
  }
}

- (void)activateOverlayWithViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = SBLogDashBoard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Attempt to activate overlay with view controller: %@", buf, 0xCu);
  }

  if (self->_spotlightModalViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
    [WeakRetained dismissSpotlightAnimated:1];
  }

  v12 = [(CSCoverSheetViewController *)self _indexOfMainPage];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__CSCoverSheetViewController_activateOverlayWithViewController_animated_completion___block_invoke;
  v15[3] = &unk_27838BE68;
  v15[4] = self;
  v16 = v8;
  v18 = v6;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [(CSCoverSheetViewController *)self activatePage:v12 animated:v6 withCompletion:v15];
}

void __84__CSCoverSheetViewController_activateOverlayWithViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(CSDismissableModalViewController);
  v3 = [*(*(a1 + 32) + 1064) modalHomeAffordanceController];
  [(CSDismissableModalViewController *)v2 setHomeAffordanceController:v3];

  [(CSDismissableModalViewController *)v2 setDelegate:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__CSCoverSheetViewController_activateOverlayWithViewController_animated_completion___block_invoke_2;
  v6[3] = &unk_27838BE68;
  v7 = v2;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v2;
  [v4 _presentModalViewController:v5 shouldDismissOverlays:0 animated:0 completion:v6];
}

void __84__CSCoverSheetViewController_activateOverlayWithViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__CSCoverSheetViewController_activateOverlayWithViewController_animated_completion___block_invoke_3;
  v4[3] = &unk_27838BB18;
  v5 = *(a1 + 48);
  [v1 presentContentViewController:v2 animated:v3 completion:v4];
}

uint64_t __84__CSCoverSheetViewController_activateOverlayWithViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)dismissHostedAppsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(CSCoverSheetViewController *)self isMainPageVisible])
  {
    [(CSCoverSheetViewController *)self _dismissHostingModalsAnimated:v4 completion:v6];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__CSCoverSheetViewController_dismissHostedAppsAnimated_completion___block_invoke;
    v7[3] = &unk_27838BD30;
    v7[4] = self;
    v9 = v4;
    v8 = v6;
    [(CSCoverSheetViewController *)self _dismissHostingModalsAnimated:0 completion:v7];
  }
}

uint64_t __67__CSCoverSheetViewController_dismissHostedAppsAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _indexOfMainPage];
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);

  return [v2 activatePage:v3 animated:v4 withCompletion:v5];
}

- (void)_dismissHostingModalsAnimated:(BOOL)a3 completion:(id)a4
{
  v16 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CSCoverSheetViewController__dismissHostingModalsAnimated_completion___block_invoke;
  block[3] = &unk_27838BB18;
  v15 = v5;
  v24 = v15;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = v12;
          if ([v13 isHostingAnApp])
          {
            dispatch_group_enter(v6);
            modalPresentationController = self->_modalPresentationController;
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __71__CSCoverSheetViewController__dismissHostingModalsAnimated_completion___block_invoke_2;
            v17[3] = &unk_27838B770;
            v18 = v6;
            [(CSPresentationViewController *)modalPresentationController dismissContentViewController:v13 animated:v16 completion:v17];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  dispatch_group_leave(v6);
}

uint64_t __71__CSCoverSheetViewController__dismissHostingModalsAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)idleTimerDidExpire
{
  v3 = [CSEvent eventWithType:20];
  [(CSCoverSheetViewController *)self _handleEvent:v3];
}

- (void)idleTimerDidWarn
{
  v3 = [CSEvent eventWithType:19];
  [(CSCoverSheetViewController *)self _handleEvent:v3];
}

- (void)scrollPanGestureDidUpdate:(id)a3
{
  v8 = a3;
  v4 = [(CSCoverSheetViewController *)self activeBehavior];
  v5 = [v4 areRestrictedCapabilities:64];

  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v6 = [v8 state];
    if (v6 > 3)
    {
      v7 = v8;
      if ((v6 - 4) >= 2)
      {
        goto LABEL_12;
      }

      [(CSCoverSheetViewController *)self dismissHomeScreenOverlay];
      v6 = [(CSWidgetGridViewController *)self->_complicationContainerViewController endCancellingTouches];
      goto LABEL_11;
    }

    if (v6 == 1)
    {
      [(CSCoverSheetViewController *)self _scrollPanGestureBegan:v8];
    }

    else if (v6 != 2)
    {
      v7 = v8;
      if (v6 != 3)
      {
        goto LABEL_12;
      }

      v6 = [(CSCoverSheetViewController *)self _scrollPanGestureEnded:v8];
      goto LABEL_11;
    }

    v6 = [(CSCoverSheetViewController *)self _scrollPanGestureChanged:v8];
LABEL_11:
    v7 = v8;
  }

LABEL_12:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)_scrollPanGestureBegan:(id)a3
{
  [(CSWidgetGridViewController *)self->_complicationContainerViewController beginCancellingTouches];
  v4 = [(CSCoverSheetViewController *)self overlayControllerIfExists];

  if (v4)
  {
    v6 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
    [v6 layerPresentationProgress];
    self->_initialOverlayPresentationProgress = v5;
  }

  else
  {
    self->_initialOverlayPresentationProgress = 0.0;
  }
}

- (void)_scrollPanGestureChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  [v4 translationInView:v5];
  v7 = v6;

  v8 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v9 = v7 > 0.0;
  if (v8 == 1)
  {
    v9 = v7 < 0.0;
  }

  if (v9)
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewController _scrollPanGestureChanged:];
    }

    v11 = [(CSCoverSheetViewController *)self overlayController];
    [v11 presentationProgressForTranslation:1 initialPresentationProgress:v7 fromLeading:self->_initialOverlayPresentationProgress];
    v13 = v12;
    [v11 setPresentationProgress:1 interactive:1 animated:0 completionHandler:?];
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = [MEMORY[0x277D75418] currentDevice];
      v15 = [v14 userInterfaceIdiom];

      if (v15 == 1)
      {
LABEL_11:

        return;
      }
    }

    [(CSCoverSheetViewController *)self _updateIdleTimerForTransitionProgress:v13];
    goto LABEL_11;
  }
}

- (void)_scrollPanGestureEnded:(id)a3
{
  v4 = a3;
  [(CSWidgetGridViewController *)self->_complicationContainerViewController endCancellingTouches];
  v5 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  v6 = v5;
  if (v5)
  {
    [v5 presentationProgress];
    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    [v4 velocityInView:v7];
    v9 = v8;

    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    [v4 translationInView:v10];
    v12 = v11;

    [v6 finalPresentationProgressForTranslation:1 velocity:v12 initialPresentationProgress:v9 fromLeading:self->_initialOverlayPresentationProgress];
    v14 = v13;
    if ((BSFloatIsZero() & 1) == 0 && (BSFloatIsZero() & 1) == 0)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      *&v16 = [(CSCoverSheetViewController *)self _indexOfMainPage];
      *&v17 = *&v16;
      *(&v16 + 1) = 1;
      *(&v17 + 1) = 1;
      v15 = [(CSCoverSheetViewController *)self coverSheetView:CSCoverSheetTransitionContextMake(&v16];
      v16 = v19;
      v17 = v20;
      v18 = v21;
      [(CSCoverSheetViewController *)self transitionSource:v15 didEndWithContext:&v16];
    }

    [v6 setPresentationProgress:0 interactive:1 animated:0 completionHandler:v14];
  }
}

- (void)overlayControllerDidBeginChangingPresentationProgress:(id)a3
{
  if ([(CSCoverSheetViewController *)self bs_isAppearingOrAppeared])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained coverSheetViewControllerShouldDismissContextMenu:self];
  }
}

- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v8 = a3;
  v11 = [(CSCoverSheetViewController *)self overlayControllerIfExists];

  v9 = v11;
  if (v11 == v8)
  {
    [v11 presentationProgress];
    if (a4 <= 0.0 && v10 > 0.0)
    {
      [(CSCoverSheetViewController *)self registerExternalBehaviorProvider:v11];
      [(CSCoverSheetViewController *)self registerExternalEventHandler:v11];
LABEL_8:
      v9 = v11;
      goto LABEL_9;
    }

    v9 = v11;
    if (a4 > 0.0 && v10 <= 0.0)
    {
      [(CSCoverSheetViewController *)self unregisterExternalBehaviorProvider:v11];
      [(CSCoverSheetViewController *)self unregisterExternalEventHandler:v11];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (BOOL)interceptDismissalGestureForOverlayController:(id)a3
{
  if (self->_overlayController != a3)
  {
    return 0;
  }

  v4 = [(CSCoverSheetContextProviding *)self->_coverSheetContext homeScreenOverlayProvider];
  v5 = [v4 dismissModalContentIfVisibleAnimated:1];

  return v5;
}

- (void)overlayControllerRequestsDismissal:(id)a3
{
  if (self->_overlayController == a3)
  {
    [(CSCoverSheetViewController *)self dismissHomeScreenOverlay];
  }
}

- (BOOL)isLockScreenShowingDefaultContentExceptControlCenter
{
  if ([(CSCoverSheetViewController *)self isMainPageVisible])
  {
    return ![(CSCoverSheetViewController *)self hasContentAboveCoverSheet]|| self->_contentAboveIsControlCenter;
  }

  else
  {
    return 0;
  }
}

- (id)createHomeButtonShowPasscodeRecognizerForHomeButtonPress
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationStatusProvider];
  v4 = [v3 isAuthenticated];

  if (v4)
  {
    [CSCoverSheetViewController createHomeButtonShowPasscodeRecognizerForHomeButtonPress];
  }

  v5 = [(CSCoverSheetContextProviding *)self->_coverSheetContext biometricResource];
  if (([v5 hasBiometricAuthenticationCapabilityEnabled] & 1) == 0)
  {
    v6 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Not creating home button passcode recognizer because mesa unlock is disabled.";
      v8 = buf;
      goto LABEL_9;
    }

LABEL_10:

    v9 = 0;
    goto LABEL_11;
  }

  if ([v5 biometricLockoutState])
  {
    v6 = SBLogLockScreenMesaHomeButtonPasscodeRecognizer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = "Not creating home button passcode recognizer because we're already in bio-lockout status.";
      v8 = &v11;
LABEL_9:
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v9 = -[CSHomeButtonShowPasscodeRecognizer initWithFingerOn:]([CSHomeButtonShowPasscodeRecognizer alloc], "initWithFingerOn:", [v5 isFingerOn]);
LABEL_11:
  objc_storeStrong(&self->_homeButtonShowPasscodeRecognizer, v9);

  return v9;
}

- (id)createHomeButtonSuppressAfterUnlockRecognizerForUnlockSource:(int)a3
{
  v4 = objc_alloc_init(CSHomeButtonSuppressAfterUnlockRecognizer);
  objc_storeWeak(&self->_homeButtonSuppressAfterUnlockRecognizer, v4);

  return v4;
}

- (BOOL)_isComplicationContainerVisible
{
  v2 = CSAutobahnEnabledForPlatform();
  if (v2)
  {

    LOBYTE(v2) = CSFeatureEnabled(4);
  }

  return v2;
}

- (id)_validatedComplicationDescriptorForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 widget];
  v6 = [v5 containerBundleIdentifier];

  v7 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v6];
  if ([v7 isLocked] & 1) != 0 || (objc_msgSend(v7, "isHidden"))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CSCoverSheetContextProviding *)self->_coverSheetContext applicationInformer];
    v10 = [v9 isInstallingApplicationWithBundleIdentifier:v6];
    v11 = [v9 applicationExistsForBundleIdentifier:v6];
    if ((v10 & 1) != 0 || v11)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_validateAndUpdateInlineComplication
{
  v18 = [(CSCoverSheetViewController *)self _validatedComplicationDescriptorForDescriptor:self->_posterPortraitDescriptor];
  v3 = [(CSCoverSheetViewController *)self _validatedComplicationDescriptorForDescriptor:self->_posterLandscapeDescriptor];
  v4 = [(CSInlineWidgetContainerViewController *)self->_inlineComplicationContainerViewController widgetDescriptor];
  v5 = BSEqualObjects();

  if (!v5 || ([(CSInlineWidgetContainerViewController *)self->_landscapeInlineComplicationContainerViewController widgetDescriptor], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, (v7 & 1) == 0))
  {
    inlineComplicationContainerViewController = self->_inlineComplicationContainerViewController;
    if (v18)
    {
      if (!inlineComplicationContainerViewController)
      {
        v9 = [[CSInlineWidgetContainerViewController alloc] initWithComplicationManager:self->_complicationManager];
        v10 = self->_inlineComplicationContainerViewController;
        self->_inlineComplicationContainerViewController = v9;

        [(CSInlineWidgetContainerViewController *)self->_inlineComplicationContainerViewController setDelegate:self];
        inlineComplicationContainerViewController = self->_inlineComplicationContainerViewController;
      }

      [(CSInlineWidgetContainerViewController *)inlineComplicationContainerViewController setWidgetDescriptor:v18];
      if (!__sb__runningInSpringBoard())
      {
        v12 = [MEMORY[0x277D75418] currentDevice];
        if ([v12 userInterfaceIdiom] == 1)
        {
        }

        else
        {
          v13 = [(CSCoverSheetViewController *)self interfaceOrientation]- 1;

          if (v13 >= 2)
          {
            goto LABEL_11;
          }
        }

LABEL_15:
        v11 = self->_inlineComplicationContainerViewController;
LABEL_16:
        landscapeInlineComplicationContainerViewController = self->_landscapeInlineComplicationContainerViewController;
        if (v3)
        {
          if (!landscapeInlineComplicationContainerViewController)
          {
            v15 = [[CSInlineWidgetContainerViewController alloc] initWithComplicationManager:self->_complicationManager inlineTextAlignment:1];
            v16 = self->_landscapeInlineComplicationContainerViewController;
            self->_landscapeInlineComplicationContainerViewController = v15;

            [(CSInlineWidgetContainerViewController *)self->_landscapeInlineComplicationContainerViewController setDelegate:self];
            landscapeInlineComplicationContainerViewController = self->_landscapeInlineComplicationContainerViewController;
          }

          [landscapeInlineComplicationContainerViewController setWidgetDescriptor:v3];
          if (__sb__runningInSpringBoard())
          {
            if (SBFEffectiveDeviceClass() == 2 || ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) > 1)
            {
              goto LABEL_28;
            }

LABEL_26:
            landscapeInlineComplicationContainerViewController = v11;
            v11 = self->_landscapeInlineComplicationContainerViewController;
            goto LABEL_27;
          }

          landscapeInlineComplicationContainerViewController = [MEMORY[0x277D75418] currentDevice];
          if ([landscapeInlineComplicationContainerViewController userInterfaceIdiom] != 1)
          {
            v17 = [(CSCoverSheetViewController *)self interfaceOrientation]- 3;

            if (v17 >= 2)
            {
LABEL_28:
              [(SBFLockScreenDateViewController *)self->_dateViewController setInlineComplicationViewController:v11];

              goto LABEL_29;
            }

            goto LABEL_26;
          }
        }

        else
        {
          self->_landscapeInlineComplicationContainerViewController = 0;
        }

LABEL_27:

        goto LABEL_28;
      }

      if (SBFEffectiveDeviceClass() == 2 || ([(CSCoverSheetViewController *)self interfaceOrientation]- 1) <= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      self->_inlineComplicationContainerViewController = 0;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_16;
  }

LABEL_29:
}

- (id)succinctDescription
{
  v2 = [(CSCoverSheetViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CSCoverSheetViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27838B838;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

id __68__CSCoverSheetViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTransitioning])
  {
    v2 = MEMORY[0x277CF0C00];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) currentTransitionSource];
    v5 = [v2 descriptionForObject:v4];
    v6 = [v3 appendObject:v5 withName:@"transitionSource"];

    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 1168);
    v9 = *(*(a1 + 32) + 1200);
    v52[1] = *(*(a1 + 32) + 1184);
    v52[2] = v9;
    v52[0] = v8;
    v10 = NSStringFromCoverSheetTransitionContext(v52);
    v11 = [v7 appendObject:v10 withName:@"transitionContext"];
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) coverSheetView];
  v14 = [v12 appendObject:v13 withName:@"view"];

  v15 = *(a1 + 40);
  [*(a1 + 32) _appearState];
  v16 = SBFStringForAppearState();
  v17 = [v15 appendObject:v16 withName:@"appearState"];

  v18 = *(a1 + 40);
  v19 = [*(a1 + 32) pageViewControllers];
  [v18 appendArraySection:v19 withName:@"pageControllers" skipIfEmpty:0];

  v20 = *(a1 + 40);
  v21 = [*(a1 + 32) modalPresentationController];
  v22 = [v20 appendObject:v21 withName:@"modalPresentationController" skipIfNil:1];

  v23 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 1152) withName:@"notificationDispatcher"];
  v24 = *(a1 + 40);
  v25 = [*(*(a1 + 32) + 1136) allObjects];
  v26 = [*(a1 + 40) activeMultilinePrefix];
  [v24 appendArraySection:v25 withName:@"observers" multilinePrefix:v26 skipIfEmpty:1 objectTransformer:&__block_literal_global_423];

  v27 = *(a1 + 40);
  v28 = [*(*(a1 + 32) + 1096) allObjects];
  v29 = [*(a1 + 40) activeMultilinePrefix];
  [v27 appendArraySection:v28 withName:@"externalAppearanceProviders" multilinePrefix:v29 skipIfEmpty:1 objectTransformer:&__block_literal_global_428];

  v30 = *(a1 + 40);
  v31 = [*(*(a1 + 32) + 1104) allObjects];
  v32 = [*(a1 + 40) activeMultilinePrefix];
  [v30 appendArraySection:v31 withName:@"externalBehaviorProviders" multilinePrefix:v32 skipIfEmpty:1 objectTransformer:&__block_literal_global_433];

  v33 = *(a1 + 40);
  v34 = [*(*(a1 + 32) + 1112) allObjects];
  v35 = [*(a1 + 40) activeMultilinePrefix];
  [v33 appendArraySection:v34 withName:@"externalEventHandlers" multilinePrefix:v35 skipIfEmpty:1 objectTransformer:&__block_literal_global_438];

  v36 = *(a1 + 40);
  v37 = [*(*(a1 + 32) + 1128) allObjects];
  v38 = [*(a1 + 40) activeMultilinePrefix];
  [v36 appendArraySection:v37 withName:@"externalLockProviders" multilinePrefix:v38 skipIfEmpty:1 objectTransformer:&__block_literal_global_443];

  v39 = *(a1 + 40);
  v40 = [*(*(a1 + 32) + 1120) allObjects];
  v41 = [*(a1 + 40) activeMultilinePrefix];
  [v39 appendArraySection:v40 withName:@"externalPresentationProviders" multilinePrefix:v41 skipIfEmpty:1 objectTransformer:&__block_literal_global_448];

  v42 = *(a1 + 40);
  v43 = [*(a1 + 32) activeAppearance];
  v44 = [v42 appendObject:v43 withName:@"activeAppearance"];

  v45 = *(a1 + 40);
  v46 = [*(a1 + 32) activeBehavior];
  v47 = [v45 appendObject:v46 withName:@"activeBehavior"];

  v48 = *(a1 + 40);
  v49 = [*(a1 + 32) activePresentation];
  v50 = [v48 appendObject:v49 withName:@"activePresentation"];

  return [*(a1 + 40) appendObject:*(*(a1 + 32) + 1440) withName:@"scrollGestureController"];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)updateBehaviorForController:(id)a3
{
  v4 = a3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CSCoverSheetViewController updateBehaviorForController:v4];
  }

  if ([v4 participantState] == 2)
  {
    v6 = [v4 coverSheetIdentifier];
    [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v6];
  }

  else
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewController updateBehaviorForController:];
    }
  }
}

- (void)updateAppearanceForController:(id)a3
{
  if (a3 == self)
  {
    v4 = [(CSCoverSheetViewController *)self coverSheetIdentifier];
    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v4];
  }

  else
  {

    [CSCoverSheetViewController updateAppearanceForController:"updateAppearanceForController:withAnimationSettings:completion:" withAnimationSettings:? completion:?];
  }
}

- (void)updateAppearanceForController:(id)a3 withAnimationSettings:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogDashBoard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CSCoverSheetViewController updateAppearanceForController:v8 withAnimationSettings:? completion:?];
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 stringWithFormat:@"%@:%p", v14, v8];

  if ([v8 participantState] == 2 || (-[NSMutableArray containsObject:](self->_exemptFromInactiveAppearanceParticipants, "containsObject:", v8) & 1) != 0)
  {
    if (![(CSCoverSheetViewController *)self isTransitioning])
    {
      if ([MEMORY[0x277D75D18] _isInAnimationBlock] && (!v9 || (objc_msgSend(MEMORY[0x277D75D18], "_currentAnimationSettings"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v9, "isEqual:", v16), v16, v17)))
      {
        v18 = MEMORY[0x277CF0D38];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __93__CSCoverSheetViewController_updateAppearanceForController_withAnimationSettings_completion___block_invoke;
        v24[3] = &unk_27838B838;
        v24[4] = self;
        v25 = v15;
        [v18 addAlongsideAnimations:v24 completion:v10];
        v19 = v25;
      }

      else
      {
        v21 = MEMORY[0x277CF0D38];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __93__CSCoverSheetViewController_updateAppearanceForController_withAnimationSettings_completion___block_invoke_2;
        v22[3] = &unk_27838B838;
        v22[4] = self;
        v23 = v15;
        [v21 animateWithSettings:v9 actions:v22 completion:v10];
        v19 = v23;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v20 = SBLogDashBoard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewController updateBehaviorForController:];
    }
  }

  if (v10)
  {
    v10[2](v10, 0);
  }

LABEL_17:
}

- (CAFrameRateRange)presentationPreferredFrameRateRange
{
  v2 = *MEMORY[0x277CD9DD0];
  v3 = *(MEMORY[0x277CD9DD0] + 4);
  v4 = *(MEMORY[0x277CD9DD0] + 8);
  result.preferred = v4;
  result.maximum = v3;
  result.minimum = v2;
  return result;
}

- (void)handleAction:(id)a3 fromSender:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(CSCoverSheetViewController *)self participantState]== 2)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v46 = _SBFLoggingMethodProem();
      v47 = [MEMORY[0x277CF0C00] descriptionForObject:v7];
      *buf = 138412802;
      v73 = v46;
      v74 = 2112;
      v75 = v6;
      v76 = 2112;
      v77 = v47;
      _os_log_debug_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ fromSender: %@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_idleTimerController);
    switch([v6 type])
    {
      case 0:
        v10 = [v6 context];
        v11 = v10;
        if (v10 && [v10 intent])
        {
          v12 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
          v13 = [v12 createUnlockRequestForActionContext:v11];

          [(CSCoverSheetViewController *)self setCustomLockScreenActionContext:v11];
          v14 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke;
          v70[3] = &unk_27838BEB0;
          v70[4] = self;
          v71 = v11;
          [v14 unlockWithRequest:v13 completion:v70];

          v15 = v71;
          goto LABEL_57;
        }

        v48 = [v11 action];

        if (!v48)
        {
          goto LABEL_39;
        }

        v13 = [v11 action];
        v13[2]();
        goto LABEL_58;
      case 1:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_68;
        }

        if (self->_modalPresentationController == v7)
        {
          [(CSCoverSheetViewController *)self _setModalPresentationControllerVisibility:0];
        }

        else if (self->_posterSwitcherViewController == v7)
        {
          [(CSCoverSheetViewController *)self _dismissPosterSwitcherViewController];
        }

        else if (self->_remoteContentModalViewController == v7 || self->_remoteContentInlineViewController == v7)
        {
          [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:2];
        }

        else
        {
          v27 = [(CSCoverSheetViewController *)self pageViewControllers];
          v28 = [v27 containsObject:v7];

          if (v28)
          {
            v29 = objc_opt_class();
            v11 = __BSSafeCast(v7, v29);
            [(CSCoverSheetViewController *)self _dismissToMainPageFromPageViewController:v11];
LABEL_39:
          }

          else
          {
            v64 = [(CSCoverSheetViewController *)self mainPageContentViewController];
            [v64 dismissContentViewController:v7 animated:1];

            [(CSCoverSheetViewController *)self _dismissModalViewController:v7 animated:1 completion:0];
          }
        }

LABEL_68:

        break;
      case 2:
        v26 = objc_loadWeakRetained(&self->_emergencyCaller);
        [v26 launchEmergencyDialer];
        goto LABEL_41;
      case 3:
        [WeakRetained resetIdleTimerIfTopMost];
        goto LABEL_68;
      case 4:
        [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)self->_phoneUnlockWithRemoteDeviceCoordinator handleSignificantUserInteractionOccurred];
        v19 = [(CSLockScreenSettings *)self->_prototypeSettings idleTimerSettings];
        v20 = [v19 increaseNotificationScrollLogging];

        if (v20)
        {
          v21 = SBLogIdleTimer();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "[SignificantUserInteraction] trying idle timer reset", buf, 2u);
          }
        }

        [WeakRetained resetIdleTimerIfTopMost];
        v22 = 21;
        goto LABEL_38;
      case 5:
        v22 = 22;
        goto LABEL_38;
      case 6:
        v22 = 23;
        goto LABEL_38;
      case 7:
        [(CSCoverSheetViewController *)self _addBedtimeGreetingBackgroundView];
        goto LABEL_68;
      case 8:
        -[CSCoverSheetViewController _removeBedtimeGreetingBackgroundViewAnimated:](self, "_removeBedtimeGreetingBackgroundViewAnimated:", [v6 animated]);
        goto LABEL_68;
      case 9:
        v22 = 37;
LABEL_38:
        v11 = [CSEvent eventWithType:v22];
        [(CSCoverSheetViewController *)self _handleEvent:v11];
        goto LABEL_39;
      case 10:
        v26 = [(CSCoverSheetContextProviding *)self->_coverSheetContext reachabilityController];
        [v26 deactivateReachability];
LABEL_41:

        goto LABEL_68;
      case 11:
        v16 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
        v17 = [v16 createUnlockRequest];

        [v17 setIntent:3];
        [v17 setSource:15];
        v18 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
        [v18 unlockWithRequest:v17 completion:0];

        goto LABEL_68;
      case 12:
        v23 = objc_opt_class();
        v24 = v7;
        if (v23)
        {
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        v49 = v25;

        activityViewController = self->_activityViewController;
        self->_activityViewController = v49;

        v51 = [MEMORY[0x277D75418] currentDevice];
        v52 = [v51 userInterfaceIdiom];

        v53 = (v52 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ![(CSUserPresenceMonitor *)self->_userPresenceMonitor isUserPresenceDetectionSupported]|| [(CSUserPresenceMonitor *)self->_userPresenceMonitor userPresenceDetectedSinceWake];
        if (!self->_activityViewController || ![(CSCoverSheetViewController *)self _canPresentSwipeDismissableModal]|| !v53)
        {
          goto LABEL_68;
        }

        v54 = [(CSCoverSheetViewController *)self activeBehavior];
        v55 = [v54 areRestrictedCapabilities:0x400000];

        v56 = [MEMORY[0x277D75418] currentDevice];
        v57 = [v56 userInterfaceIdiom];

        v58 = (v57 & 0xFFFFFFFFFFFFFFFBLL) != 1;
        if ((v57 & 0xFFFFFFFFFFFFFFFBLL) == 1 && v55)
        {
          v59 = +[CSLockScreenDomain rootSettings];
          v60 = [v59 focusSettings];
          v58 = [v60 requiresAuthWithoutControlCenterAccess];
        }

        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke_471;
        v69[3] = &unk_27838B770;
        v69[4] = self;
        v61 = MEMORY[0x223D698D0](v69);
        v11 = v61;
        if (v58)
        {
          v62 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
          v13 = [v62 createUnlockRequest];

          [v13 setIntent:2];
          [v13 setSource:24];
          [v13 setName:@"FocusPicker"];
          [v13 setWantsBiometricPresentation:1];
          [v13 setConfirmedNotInPocket:1];
          v63 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke_2;
          v67[3] = &unk_27838BAC0;
          v68 = v11;
          [v63 unlockWithRequest:v13 completion:v67];

          v15 = v68;
LABEL_57:

LABEL_58:
        }

        else
        {
          (*(v61 + 16))(v61);
        }

        goto LABEL_39;
      case 13:
        v30 = [(CSCoverSheetViewController *)self viewIfLoaded];
        v31 = [v30 window];
        v11 = [v31 windowScene];

        v32 = objc_loadWeakRetained(&self->_delegate);
        LOBYTE(v31) = [v32 coverSheetViewControllerIsShowingSecureApp:self];

        if ((v31 & 1) == 0)
        {
          if (v11)
          {
            v33 = [(CSCoverSheetViewController *)self traitCollection];
            v34 = [v33 _backlightLuminance];

            if (v34 == 1)
            {
              v35 = MEMORY[0x277CCACA8];
              v36 = objc_opt_class();
              v37 = NSStringFromClass(v36);
              v38 = [v35 stringWithFormat:@"Inactive content update from <%@: %p>", v37, v7];

              v39 = [v6 animated];
              v40 = SBLogLiveRendering();
              v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
              if (v39)
              {
                if (v41)
                {
                  *buf = 138412290;
                  v73 = v38;
                  _os_log_impl(&dword_21EB05000, v40, OS_LOG_TYPE_DEFAULT, "Will request live-rendering assertion with reason: '%@'", buf, 0xCu);
                }

                v42 = [MEMORY[0x277D65DC0] sharedInstance];
                v43 = [v42 acquireLiveRenderingAssertionForUIScene:v11 reason:v38];

                v44 = dispatch_time(0, 1000000000);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke_480;
                block[3] = &unk_27838B770;
                v66 = v43;
                v45 = v43;
                dispatch_after(v44, MEMORY[0x277D85CD0], block);
              }

              else
              {
                if (v41)
                {
                  *buf = 138412290;
                  v73 = v38;
                  _os_log_impl(&dword_21EB05000, v40, OS_LOG_TYPE_DEFAULT, "Will invalidate timelines with reason '%@'", buf, 0xCu);
                }

                v45 = [v11 _backlightSceneEnvironment];
                [v45 invalidateAllTimelinesForReason:v38];
              }
            }
          }
        }

        goto LABEL_39;
      default:
        goto LABEL_68;
    }
  }
}

void __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) _customLockScreenActionContext];
    v4 = *(a1 + 40);

    if (v3 == v4)
    {
      v5 = *(a1 + 32);

      [v5 setCustomLockScreenActionContext:0];
    }
  }
}

void __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke_471(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1784) activityPickerViewController];
  [v2 setParentContainer:*(a1 + 32)];
  v3 = objc_alloc_init(CSDismissableModalViewController);
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[ZStack-Participant] adding activity picker modal home affordance", buf, 2u);
  }

  v5 = [*(*(a1 + 32) + 1064) modalHomeAffordanceController];
  [(CSDismissableModalViewController *)v3 setHomeAffordanceController:v5];

  [(CSDismissableModalViewController *)v3 setDelegate:v2];
  [v2 setModalPresenter:v3];
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke_472;
  v9[3] = &unk_27838B838;
  v10 = v3;
  v11 = v2;
  v7 = v2;
  v8 = v3;
  [v6 _presentModalViewController:v8 shouldDismissOverlays:0 animated:0 completion:v9];
}

uint64_t __54__CSCoverSheetViewController_handleAction_fromSender___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_addBedtimeGreetingBackgroundView
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  v4 = [v3 bedtimeGreetingViewBackgroundView];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D67998]);
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v13 = [v5 initWithFrame:?];

    [v13 setAutoresizingMask:18];
    v7 = [(CSCoverSheetViewController *)self activeAppearance];
    v8 = [v7 legibilitySettings];
    v9 = [v8 style];

    if (v9 == 1)
    {
      v10 = 5;
    }

    else
    {
      v10 = 2;
    }

    [v13 setBackgroundStyle:v10];
    v11 = [(CSCoverSheetViewController *)self _averageLockScreenWallpaperColor];
    [v13 setReduceTransparencyBackingColor:v11];

    v12 = [(CSCoverSheetViewController *)self coverSheetView];
    [v12 setBedtimeGreetingViewBackgroundView:v13];
  }
}

- (void)_removeBedtimeGreetingBackgroundViewAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  v6 = [v5 bedtimeGreetingViewBackgroundView];

  if (v6)
  {
    v7 = SBLogDoNotDisturbBedtime();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CSCoverSheetViewController *)self coverSheetView];
      v9 = [v8 bedtimeGreetingViewBackgroundView];
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Removing greeting view background: %{public}@", buf, 0xCu);
    }

    v10 = 0.6;
    if (!v3)
    {
      v10 = 0.0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__CSCoverSheetViewController__removeBedtimeGreetingBackgroundViewAnimated___block_invoke;
    v12[3] = &unk_27838B770;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__CSCoverSheetViewController__removeBedtimeGreetingBackgroundViewAnimated___block_invoke_2;
    v11[3] = &unk_27838B9B8;
    v11[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v11 completion:v10];
  }
}

void __75__CSCoverSheetViewController__removeBedtimeGreetingBackgroundViewAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetView];
  v1 = [v2 bedtimeGreetingViewBackgroundView];
  [v1 setBackgroundStyle:1];
}

void __75__CSCoverSheetViewController__removeBedtimeGreetingBackgroundViewAnimated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) coverSheetView];
  [v1 setBedtimeGreetingViewBackgroundView:0];
}

- (BOOL)wouldHandleButtonEvent:(id)a3
{
  v4 = a3;
  if ([(CSPresentationViewController *)self->_modalPresentationController participantState]== 2)
  {
    if ([(CSPresentationViewController *)self->_modalPresentationController wouldHandleButtonEvent:v4])
    {
      v5 = self->_modalPresentationController;
      if (v5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:self->_lastSettledPageIndex];
    if ([v6 wouldHandleButtonEvent:v4])
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_12;
    }
  }

  v7 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  v5 = v7;
  if (!v7 || ([(CSModalPresentationViewController *)v7 presentationProgress], v8 <= 0.0) || ![(CSPresentationViewController *)v5 wouldHandleButtonEvent:v4])
  {

    v10 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(CSCoverSheetViewController *)v5 wouldHandleButtonEvent:v4];
  }

  v10 = 1;
LABEL_16:

  return v10;
}

- (void)wallpaperLegibilityEnvironmentDidChange:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CSCoverSheetViewController *)self setWallpaperLegibilityEnvironment:v4];
  [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"legibilityEnvironment"];
  v5 = [(CSCoverSheetViewController *)self _averageLockScreenWallpaperColor];
  v6 = +[CSComponent wallpaper];
  v7 = [v6 identifier:@"legibilityEnvironment"];
  v8 = [v7 priority:10];
  v9 = [v8 color:v5];

  [(CSAppearance *)self->_localAppearance addComponent:v9];
  v10 = [v4 legibilityEnvironmentContextForVariant:*MEMORY[0x277D3EF20]];

  [v10 luma];
  v12 = v11;
  v13 = +[CSComponent notificationDimmingLayer];
  v14 = [v13 identifier:@"legibilityEnvironment"];
  v15 = [v14 priority:10];
  v16 = [v15 hidden:0];

  [v16 setAnimationDuration:1.0];
  [(CSAppearance *)self->_localAppearance addComponent:v16];
  v17 = SBLogDashBoard();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v5;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "Received PLKLegibilityEnvironment update with new average color: %@, wallpaper luminance: %.2f", &v18, 0x16u);
  }

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"legibilityEnvironment"];
}

- (BOOL)isTransitioningInteractively
{
  currentTransitionSource = self->_currentTransitionSource;
  if (currentTransitionSource)
  {
    [(CSCoverSheetViewTransitionSource *)currentTransitionSource transitionContext];
    LOBYTE(currentTransitionSource) = v4 == 3;
  }

  return currentTransitionSource;
}

- (BOOL)isTouchLocation:(CGPoint)a3 inRestrictedRectForGestureView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v9 = [v8 isTouchLocationInRestrictedRect:{x, y}];

  v10 = [(CSCoverSheetViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  Width = CGRectGetWidth(v35);
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  Height = CGRectGetHeight(v36);
  v21 = [(CSCoverSheetViewController *)self view];
  [v21 safeAreaInsets];
  v23 = v22;
  v25 = v24;

  v26 = [MEMORY[0x277D75418] currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if ((v27 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = Width;
    v37.size.height = v23;
    v33.x = x;
    v33.y = y;
    v29 = CGRectContainsPoint(v37, v33);
    v38.origin.y = Height - v25;
    v38.origin.x = 0.0;
    v38.size.width = Width;
    v38.size.height = v25;
    v34.x = x;
    v34.y = y;
    v28 = v29 | CGRectContainsPoint(v38, v34);
  }

  v30 = [(CSCoverSheetViewController *)self _quickActionButtonInterpretsLocation:v7 asBesideContentForGestureView:x, y];
  if (v9)
  {
    v31 = 1;
  }

  else
  {
    v31 = v28 | v30;
  }

  return v31 & 1;
}

- (void)setRestrictsTouchesForRemoteView:(BOOL)a3
{
  v3 = a3;
  v4 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  [v4 setRestrictsTouchesForRemoteView:v3];
}

- (void)transitionSource:(id)a3 willBeginWithType:(int64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_transitionType && ![(CSCoverSheetViewController *)self _isKnownTransitionConflictFrom:self->_currentTransitionSource to:v6])
  {
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v30 = objc_opt_class();
      v35 = NSStringFromClass(v30);
      v31 = NSStringFromCoverSheetTransitionType(self->_transitionType);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      NSStringFromCoverSheetTransitionType(a4);
      *buf = 138413058;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      *&buf[22] = 2112;
      *&buf[24] = v33;
      *(&v37 + 2) = LOWORD(v37) = 2112;
      v34 = *(&v37 + 2);
      _os_log_fault_impl(&dword_21EB05000, v7, OS_LOG_TYPE_FAULT, "[Transition] Nested transitions are not supported. Current source: %@ | type: %@; new source: %@ | type: %@", buf, 0x2Au);
    }
  }

  currentTransitionSource = self->_currentTransitionSource;
  if (currentTransitionSource)
  {
    v9 = currentTransitionSource == v6;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!a4)
    {
      [CSCoverSheetViewController transitionSource:willBeginWithType:];
    }

    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[Transition] Will begin from %@", buf, 0xCu);
    }

    if (!self->_currentTransitionSource)
    {
      v13 = [(CSCoverSheetViewController *)self activeAppearance];
      [(CSCoverSheetViewController *)self setPreviousAppearance:v13];

      v14 = MEMORY[0x277CCACA8];
      v15 = [(CSCoverSheetViewTransitionSource *)v6 coverSheetIdentifier];
      v16 = [v14 stringWithFormat:@"beginTransition-%@", v15];

      [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v16 updatingAppearanceIfNeeded:0];
      [(CSCoverSheetViewController *)self setCurrentTransitionSource:v6];
      self->_transitionType = a4;
      if ([(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:v6])
      {
        v17 = self->_currentTransitionSource;
        if (v17)
        {
          [(CSCoverSheetViewTransitionSource *)v17 transitionContext];
        }

        else
        {
          v37 = 0u;
          memset(buf, 0, sizeof(buf));
        }

        v24 = *&buf[16];
        *&self->_transitionContext.value = *buf;
        *&self->_transitionContext.interval.start.inclusive = v24;
        *&self->_transitionContext.interval.end.inclusive = v37;
      }

      [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v16];
    }

    if ([(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:v6])
    {
      v25 = @"com.apple.springboard.lock-screen.scroll";
    }

    else
    {
      v25 = @"CSCoverSheetViewController";
    }

    v18 = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
    if (!v18)
    {
      [CSCoverSheetViewController transitionSource:willBeginWithType:];
    }

    displayLayoutTransitionAssertion = self->_displayLayoutTransitionAssertion;
    if (displayLayoutTransitionAssertion)
    {
      [(BSInvalidatable *)displayLayoutTransitionAssertion invalidate];
      v27 = self->_displayLayoutTransitionAssertion;
      self->_displayLayoutTransitionAssertion = 0;
    }

    v28 = [v18 transitionAssertionWithReason:v25];
    v29 = self->_displayLayoutTransitionAssertion;
    self->_displayLayoutTransitionAssertion = v28;
  }

  else
  {
    v18 = SBLogDashBoard();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[Transition] Ignoring transition began from %@ since there is an active transition from %@", buf, 0x16u);
    }
  }
}

- (void)transitionSource:(id)a3 didUpdateTransitionWithContext:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  currentTransitionSource = self->_currentTransitionSource;
  v8 = SBLogDashBoard();
  v9 = v8;
  if (currentTransitionSource == v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = *&a4->var1.var0.var1;
      *buf = *&a4->var0;
      *&buf[16] = v29;
      v38 = *&a4->var1.var1.var1;
      v30 = NSStringFromCoverSheetTransitionContext(buf);
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_debug_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEBUG, "[Transition] Update from %@ with context %@", buf, 0x16u);
    }

    var1 = a4->var1.var1;
    *buf = a4->var1.var0;
    *&buf[16] = var1;
    if (BSIntervalOrder() || self->_transitionContext.mode && (end = self->_transitionContext.interval.end, *buf = self->_transitionContext.interval.start, *&buf[16] = end, BSIntervalOrder()))
    {
      v15 = a4->var1.var1;
      *buf = a4->var1.var0;
      *&buf[16] = v15;
      BSIntervalFractionForValue();
      v17 = v16;
      if ([(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:v6])
      {
        v19 = *&a4->var1.var0.var1;
        v18 = *&a4->var1.var1.var1;
        *&self->_transitionContext.value = *&a4->var0;
        *&self->_transitionContext.interval.start.inclusive = v19;
        *&self->_transitionContext.interval.end.inclusive = v18;
        var0 = a4->var1.var1.var0;
        v21 = (a4->var2 & 0xFFFFFFFFFFFFFFFELL) == 2;
        v22 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v23 = *&a4->var1.var0.var1;
        v32 = *&a4->var0;
        v33 = v23;
        v31[2] = __78__CSCoverSheetViewController_transitionSource_didUpdateTransitionWithContext___block_invoke_2;
        v31[3] = &unk_27838BEF8;
        v31[4] = self;
        v31[5] = var0;
        v35 = v21;
        *&v31[6] = v17;
        v34 = *&a4->var1.var1.var1;
        [v22 enumerateObjectsUsingBlock:v31];
      }

      [(CSCoverSheetViewController *)self _updateIdleTimerForTransitionProgress:v17];
      [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"TransitionSourceDidUpdate"];
    }

    else if ([(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:v6])
    {
      v25 = a4->var1.var1.var0;
      v26 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __78__CSCoverSheetViewController_transitionSource_didUpdateTransitionWithContext___block_invoke;
      v36[3] = &__block_descriptor_40_e37_v32__0__CSPageViewController_8Q16_B24l;
      v36[4] = v25;
      [v26 enumerateObjectsUsingBlock:v36];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Transition] Ignoring transition update from %@ since there is an active transition from %@", buf, 0x16u);
    }
  }
}

uint64_t __78__CSCoverSheetViewController_transitionSource_didUpdateTransitionWithContext___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    return [a2 updateTransitionWhileRubberBandingInProgress:1];
  }

  return result;
}

void __78__CSCoverSheetViewController_transitionSource_didUpdateTransitionWithContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (*(a1 + 40) == a3)
  {
    v6 = [*(a1 + 32) _isPageContentHidden];
    v7 = v9;
    v8 = v6 ^ 1u;
  }

  else
  {
    v7 = v5;
    v8 = 0;
  }

  if ([*(a1 + 32) bs_beginAppearanceTransitionForChildViewController:v7 toVisible:v8 animated:*(a1 + 104)])
  {
    [v9 setTransitioning:1];
    [v9 willTransitionToVisible:v8];
    if (v8)
    {
      [v9 rebuildAppearance];
    }
  }

  if ([v9 isTransitioning])
  {
    [v9 updateTransitionToVisible:v8 progress:*(a1 + 96) mode:*(a1 + 48)];
  }
}

- (void)transitionSource:(id)a3 didEndWithContext:(id *)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self->_currentTransitionSource == v6;
  v8 = SBLogDashBoard();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *&a4->var1.var0.var1;
      *buf = *&a4->var0;
      *&buf[16] = v16;
      v58 = *&a4->var1.var1.var1;
      v17 = NSStringFromCoverSheetTransitionContext(buf);
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[Transition] Will end from %@ with context %@", buf, 0x16u);
    }

    var1 = a4->var1.var1;
    *buf = a4->var1.var0;
    *&buf[16] = var1;
    if (!BSIntervalOrder())
    {
      if (!self->_transitionContext.mode || (end = self->_transitionContext.interval.end, *buf = self->_transitionContext.interval.start, *&buf[16] = end, !BSIntervalOrder()))
      {
        if ([(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:v6])
        {
          var0 = a4->var1.var1.var0;
          v30 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __65__CSCoverSheetViewController_transitionSource_didEndWithContext___block_invoke;
          v56[3] = &__block_descriptor_40_e37_v32__0__CSPageViewController_8Q16_B24l;
          v56[4] = var0;
          [v30 enumerateObjectsUsingBlock:v56];
        }
      }
    }

    if ([(CSCoverSheetViewController *)self _isSourceForHorizontalScrolling:v6])
    {
      v19 = [(CSCoverSheetViewController *)self coverSheetView];
      v20 = [v19 scrollView];
      v21 = [v20 visiblePageRange];
      v23 = v22;

      v24 = SBLogDashBoard();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v21 + v23;
        _os_log_impl(&dword_21EB05000, v24, OS_LOG_TYPE_DEFAULT, "[Transition] New visible pages indexes: [%lu..%lu]", buf, 0x16u);
      }

      if (v23 == 1)
      {
        v25 = [(CSCoverSheetViewController *)self coverSheetView];
        v26 = [v25 scrollView];
        -[CSCoverSheetViewController _setLastSettledPageIndex:](self, "_setLastSettledPageIndex:", [v26 currentPageIndex]);

        lastSettledPageIndex = self->_lastSettledPageIndex;
        v54 = *&lastSettledPageIndex;
        p_lastSettledPageIndex = 1;
        v55 = 1;
        CSCoverSheetTransitionContextMake(&lastSettledPageIndex, 0, buf);
        v27 = *&buf[16];
        *&self->_transitionContext.value = *buf;
        *&self->_transitionContext.interval.start.inclusive = v27;
        *&self->_transitionContext.interval.end.inclusive = v58;
      }

      else
      {
        v32 = *&a4->var1.var0.var1;
        v31 = *&a4->var1.var1.var1;
        *&self->_transitionContext.value = *&a4->var0;
        *&self->_transitionContext.interval.start.inclusive = v32;
        *&self->_transitionContext.interval.end.inclusive = v31;
      }

      v33 = SBLogDashBoard();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *&self->_transitionContext.interval.start.inclusive;
        *buf = *&self->_transitionContext.value;
        *&buf[16] = v34;
        v58 = *&self->_transitionContext.interval.end.inclusive;
        v35 = NSStringFromCoverSheetTransitionContext(buf);
        *buf = 138412290;
        *&buf[4] = v35;
        _os_log_impl(&dword_21EB05000, v33, OS_LOG_TYPE_DEFAULT, "[Transition] Updated internal transition context: %@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      lastSettledPageIndex = 0.0;
      p_lastSettledPageIndex = &lastSettledPageIndex;
      v54 = 0x2020000000;
      LOBYTE(v55) = 0;
      v36 = self->_transitionContext.interval.end;
      start = self->_transitionContext.interval.start;
      v51 = v36;
      v37 = BSIntervalOrder();
      v38 = a4->var1.var1.var0;
      v39 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __65__CSCoverSheetViewController_transitionSource_didEndWithContext___block_invoke_510;
      v48[3] = &unk_27838BF20;
      v49 = v37 == 0;
      v48[4] = self;
      v48[5] = buf;
      v48[6] = &lastSettledPageIndex;
      v48[7] = v38;
      [v39 enumerateObjectsUsingBlock:v48];

      _Block_object_dispose(&lastSettledPageIndex, 8);
      _Block_object_dispose(buf, 8);
    }

    WeakRetained = objc_loadWeakRetained(&self->_idleTimerController);
    v8 = WeakRetained;
    if (self->_transitionDisabledIdleTimer)
    {
      [WeakRetained removeIdleTimerDisabledAssertionReason:@"CSCoverSheetTransitioningReason"];
    }

    [(BSInvalidatable *)self->_displayLayoutTransitionAssertion invalidate];
    displayLayoutTransitionAssertion = self->_displayLayoutTransitionAssertion;
    self->_displayLayoutTransitionAssertion = 0;

    self->_transitionType = 0;
    [(CSCoverSheetViewController *)self setCurrentTransitionSource:0];
    self->_transitionDisabledIdleTimer = 0;
    v42 = SBLogDashBoard();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138412290;
      *&buf[4] = v44;
      _os_log_impl(&dword_21EB05000, v42, OS_LOG_TYPE_DEFAULT, "[Transition] Did end transition from %@", buf, 0xCu);
    }

    [v8 removeIdleTimerDisabledAssertionReason:@"CSCoverSheetTransitioningReason"];
    v45 = MEMORY[0x277CCACA8];
    v46 = [(CSCoverSheetViewTransitionSource *)v6 coverSheetIdentifier];
    v47 = [v45 stringWithFormat:@"endTransition-%@", v46];

    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:v47];
    [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v47];
    [(CSCoverSheetViewController *)self setPreviousAppearance:0];
  }

  else if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[Transition] Ignoring transition ended from %@ since there is an active transition from %@", buf, 0x16u);
  }
}

uint64_t __65__CSCoverSheetViewController_transitionSource_didEndWithContext___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    return [a2 updateTransitionWhileRubberBandingInProgress:0];
  }

  return result;
}

uint64_t __65__CSCoverSheetViewController_transitionSource_didEndWithContext___block_invoke_510(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = v5;
  if (*(a1 + 56) == a3)
  {
    v6 = [*(a1 + 32) _isPageContentHidden];
    v7 = v13;
    v8 = v6 ^ 1u;
  }

  else
  {
    v7 = v5;
    v8 = 0;
  }

  if ([v7 isTransitioning])
  {
    [v13 setTransitioning:0];
    [*(a1 + 32) bs_endAppearanceTransitionForChildViewController:v13 toVisible:v8];
    v9 = [v13 didTransitionToVisible:v8];
    if ((v8 & 1) == 0 && *(a1 + 64) == 1)
    {
      [v13 rebuildAppearance];
      v9 = [v13 rebuildBehavior];
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v10 = (objc_opt_respondsToSelector() & 1) == 0;
      v11 = v13;
      if (v10)
      {
        v11 = 0;
      }

      v9 = [v11 canHostAnApp];
      if (v9)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        if (v8)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }
    }
  }

  else
  {
    v9 = [*(a1 + 32) bs_endAppearanceTransitionForChildViewController:v13 toVisible:v8];
  }

  return MEMORY[0x2821F9730](v9);
}

- (void)irisWallpaperPlayerPlaybackStateDidChange:(id)a3
{
  v5 = [a3 irisPlaybackState];
  if (v5 <= 0)
  {
    if (v5 == -1)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"CSCoverSheetViewController.m" lineNumber:4558 description:@"unknown is not a valid state"];

      goto LABEL_16;
    }

    if (v5)
    {
      goto LABEL_16;
    }

    v7 = [(CSCoverSheetViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 coverSheetViewControllerIrisPlayingDidFinish:self];
    }

    goto LABEL_12;
  }

  if ((v5 - 1) < 3)
  {
    v6 = [(CSCoverSheetViewController *)self irisBehavior];
    [v6 setIdleTimerMode:3];

    goto LABEL_16;
  }

  if (v5 == 4)
  {
    v11 = [(CSCoverSheetViewController *)self irisBehavior];
    [v11 setIdleTimerMode:3];

    v9 = self;
    v10 = 1;
    goto LABEL_14;
  }

  if (v5 == 5)
  {
LABEL_12:
    v8 = [(CSCoverSheetViewController *)self irisBehavior];
    [v8 setIdleTimerMode:0];

    v9 = self;
    v10 = 0;
LABEL_14:
    [(CSCoverSheetViewController *)v9 _updateUIForPlaying:v10 immediately:1];
  }

LABEL_16:

  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"iris"];
}

- (void)irisWallpaperPlayerIsInteractingDidChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 irisPlaybackState];
  v6 = [v4 isIrisInteracting];

  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    irisPlayerIsInteracting = self->_irisPlayerIsInteracting;
    v9 = PBUIIrisWallpaperPlaybackStateDescription();
    v13[0] = 67109634;
    v13[1] = v6;
    v14 = 1024;
    v15 = irisPlayerIsInteracting;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Iris wallpaper view interaction changed: isIrisInteracting: %{BOOL}u, wasInteracting: %{BOOL}u, playbackState: %@", v13, 0x18u);
  }

  if (v5 == 4)
  {
    if (self->_irisPlayerIsInteracting || !v6)
    {
      if (!self->_irisPlayerIsInteracting || (v6 & 1) != 0)
      {
        goto LABEL_11;
      }

      v10 = self;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v10 = self;
      v11 = 1;
      v12 = 1;
    }

    [(CSCoverSheetViewController *)v10 _updateUIForPlaying:v11 immediately:v12];
LABEL_11:
    self->_irisPlayerIsInteracting = v6;
  }
}

- (void)irisWallpaperPlayer:(id)a3 didReplaceGestureRecognizer:(id)a4 withGestureRecognizer:(id)a5
{
  v13 = a4;
  v7 = a5;
  if ([(CSCoverSheetViewController *)self _shouldSetUpWallpaperGesture])
  {
    [v13 setDelegate:0];
    [v7 setDelegate:self];
    v8 = [(CSCoverSheetViewController *)self irisBehavior];
    v9 = [v8 areRestrictedCapabilities:256];

    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    v11 = v10;
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    [v10 setWallpaperGestureRecognizer:v12];
  }
}

- (void)addRemoteContentInlineProvidingManager:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(NSMutableSet *)self->_remoteContentInlineProvidingManagers addObject:v4];
}

- (void)removeRemoteContentInlineProvidingManager:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(NSMutableSet *)self->_remoteContentInlineProvidingManagers removeObject:v4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self _complicationsInterpretGestureRecognizerLocationAsContent:v4];
  if (self->_wallpaperGestureRecognizer != v4 || (_os_feature_enabled_impl() & v5 & 1) == 0)
  {
    v7 = [(CSCoverSheetViewController *)self view];
    [(UITapGestureRecognizer *)v4 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __59__CSCoverSheetViewController_gestureRecognizerShouldBegin___block_invoke;
    v65[3] = &unk_27838BF48;
    v65[4] = self;
    v12 = MEMORY[0x223D698D0](v65);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __59__CSCoverSheetViewController_gestureRecognizerShouldBegin___block_invoke_2;
    v64[3] = &unk_27838BF70;
    v64[4] = self;
    v13 = MEMORY[0x223D698D0](v64);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __59__CSCoverSheetViewController_gestureRecognizerShouldBegin___block_invoke_3;
    v63[3] = &unk_27838BF48;
    v63[4] = self;
    v14 = MEMORY[0x223D698D0](v63);
    v15 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v16 = [v15 hasUserInteraction];

    if (self->_wallpaperGestureRecognizer != v4 || !CSAutobahnEnabledForPlatform() || ((v12[2](v12, v9, v11) | v16) & 1) != 0)
    {
      if (self->_backgroundContentGestureRecognizer == v4)
      {
        if (self->_backgroundContentViewController != 0 && !v5)
        {
          v6 = (v14[2](v14, v9, v11) | v16) ^ 1;
LABEL_38:

          goto LABEL_39;
        }

        goto LABEL_37;
      }

      if ([(UITapGestureRecognizer *)v4 isEqual:self->_wallpaperGestureRecognizer])
      {
        if (([(CSCoverSheetViewController *)self interfaceOrientation]- 3) >= 2)
        {
          if (![(CSCoverSheetViewController *)self _wallpaperGestureShouldRequireUserPresence]|| ![(CSUserPresenceMonitor *)self->_userPresenceMonitor isUserPresenceDetectionSupported]|| [(CSUserPresenceMonitor *)self->_userPresenceMonitor userPresenceDetectedSinceWake])
          {
            if ((v12[2](v12, v9, v11) | v16))
            {
              goto LABEL_37;
            }

            goto LABEL_22;
          }

          v19 = SBLogDashBoard();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            goto LABEL_36;
          }

          *v62 = 0;
          v20 = "Live wallpaper gesture not beginning due to no user presence.";
          v47 = v19;
          v48 = OS_LOG_TYPE_INFO;
          goto LABEL_35;
        }

LABEL_37:
        v6 = 0;
        goto LABEL_38;
      }

      if ([(UITapGestureRecognizer *)v4 isEqual:self->_posterSwitcherGestureRecognizer])
      {
        v17 = [(CSCoverSheetViewController *)self activeBehavior];
        v18 = [v17 areRestrictedCapabilities:0x800000];

        if (v18)
        {
          v19 = SBLogDashBoard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 0;
            v20 = "Rejecting Poster Switcher gesture – capability is restricted.";
LABEL_34:
            v47 = v19;
            v48 = OS_LOG_TYPE_DEFAULT;
LABEL_35:
            _os_log_impl(&dword_21EB05000, v47, v48, v20, v62, 2u);
            goto LABEL_36;
          }

          goto LABEL_36;
        }

        v21 = [(CSCoverSheetViewController *)self view];
        [v21 bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v70.origin.x = v23;
        v70.origin.y = v25;
        v70.size.width = v27;
        v70.size.height = v29;
        Width = CGRectGetWidth(v70);
        v71.origin.x = v23;
        v71.origin.y = v25;
        v71.size.width = v27;
        v71.size.height = v29;
        Height = CGRectGetHeight(v71);
        v32 = [(CSCoverSheetViewController *)self view];
        [v32 safeAreaInsets];
        v34 = v33;
        v36 = v35;

        v37 = [MEMORY[0x277D75418] currentDevice];
        v38 = [v37 userInterfaceIdiom];

        if ((v38 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v72.origin.x = 0.0;
          v72.origin.y = 0.0;
          v72.size.width = Width;
          v72.size.height = v34;
          v66.x = v9;
          v66.y = v11;
          v39 = CGRectContainsPoint(v72, v66);
          v73.origin.y = Height - v36;
          v73.origin.x = 0.0;
          v73.size.width = Width;
          v73.size.height = v36;
          v67.x = v9;
          v67.y = v11;
          v40 = CGRectContainsPoint(v73, v67);
          if (v39 || v40)
          {
            v19 = SBLogDashBoard();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_36;
            }

            *v62 = 0;
            v20 = "Rejecting Poster Switcher gesture – location is in safe area";
            goto LABEL_34;
          }
        }

        v41 = [MEMORY[0x277D75418] currentDevice];
        v42 = [v41 userInterfaceIdiom];

        if ((v42 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v43 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
          [v43 horizontalInsetMargin];
          v45 = v44;

          v74.origin.x = 0.0;
          v74.origin.y = 0.0;
          v74.size.width = v45;
          v74.size.height = Height;
          v68.x = v9;
          v68.y = v11;
          LOBYTE(v43) = CGRectContainsPoint(v74, v68);
          v75.origin.x = Width - v45;
          v75.origin.y = 0.0;
          v75.size.width = v45;
          v75.size.height = Height;
          v69.x = v9;
          v69.y = v11;
          v46 = CGRectContainsPoint(v75, v69);
          if ((v43 & 1) != 0 || v46)
          {
            v19 = SBLogDashBoard();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_36;
            }

            *v62 = 0;
            v20 = "Rejecting Poster Switcher gesture – location is in notification list gutter";
            goto LABEL_34;
          }
        }

        if (v12[2](v12, v9, v11))
        {
          v19 = SBLogDashBoard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 0;
            v20 = "Rejecting Poster Switcher gesture – location is in combined list";
            goto LABEL_34;
          }

LABEL_36:

          goto LABEL_37;
        }

        v50 = [(UITapGestureRecognizer *)v4 view];
        v51 = (v13)[2](v13, v50, v9, v11);

        if (v51)
        {
          v19 = SBLogDashBoard();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_36;
          }

          *v62 = 0;
          v20 = "Rejecting Poster Switcher gesture – location is over a quick action button";
          goto LABEL_34;
        }

        v52 = [(UITapGestureRecognizer *)v4 view];
        v53 = [(CSCoverSheetViewController *)self _quickActionButtonInterpretsLocation:v52 asBesideContentForGestureView:v9, v11];

        if (v53)
        {
          v19 = SBLogDashBoard();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_36;
          }

          *v62 = 0;
          v20 = "Rejecting Poster Switcher gesture – location is beside the quick action buttons";
          goto LABEL_34;
        }

        if (v5)
        {
          v19 = SBLogDashBoard();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_36;
          }

          *v62 = 0;
          v20 = "Rejecting Poster Switcher gesture – location is in a complication";
          goto LABEL_34;
        }

        v19 = [(CSCoverSheetViewController *)self sidebarComplicationContainerViewController];
        v54 = [v19 view];
        [(UITapGestureRecognizer *)v4 locationInView:v54];
        v56 = v55;
        v58 = v57;

        v59 = [v19 view];
        v60 = [v59 hitTest:0 forEvent:{v56, v58}];

        if (([v19 interpretsViewAsContent:v60]& 1) != 0)
        {
          v61 = SBLogDashBoard();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 0;
            _os_log_impl(&dword_21EB05000, v61, OS_LOG_TYPE_DEFAULT, "Poster Switcher gesture not beginning because location for the gesture is in a sidebar complication", v62, 2u);
          }

          goto LABEL_36;
        }
      }

      else if (!(v5 | (([(UITapGestureRecognizer *)v4 isEqual:self->_complicationSelectionRecognizer]& 1) == 0)))
      {
        v19 = SBLogDashBoard();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 0;
          v20 = "Complication Selection gesture not beginning because location for the gesture is not in a complication";
          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }

LABEL_22:
    v6 = 1;
    goto LABEL_38;
  }

  v6 = 0;
LABEL_39:

  return v6 & 1;
}

uint64_t __59__CSCoverSheetViewController_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) view];
  v7 = [v6 hitTest:0 withEvent:{a2, a3}];

  v8 = [*(*(a1 + 32) + 2040) combinedListViewController];
  v9 = [v8 interpretsViewAsContent:v7];

  return v9;
}

uint64_t __59__CSCoverSheetViewController_gestureRecognizerShouldBegin___block_invoke_2(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) activeAppearance];
  v9 = [v8 componentForType:14 identifier:@"(active)"];

  if ([v9 isHidden] & 1) != 0 || (objc_msgSend(v9, "alpha"), (BSFloatIsZero()))
  {
    v10 = 0;
  }

  else
  {
    v10 = [*(*(a1 + 32) + 1432) interpretsLocationAsContent:v7 inView:{a3, a4}];
  }

  return v10;
}

uint64_t __59__CSCoverSheetViewController_gestureRecognizerShouldBegin___block_invoke_3(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) view];
  v7 = [v6 hitTest:0 withEvent:{a2, a3}];

  v8 = [*(*(a1 + 32) + 2040) combinedListViewController];
  v9 = [v8 interpretsViewAsContent:v7];

  return v9;
}

- (BOOL)_complicationsInterpretGestureRecognizerLocationAsContent:(id)a3
{
  v3 = self;
  inlineComplicationContainerViewController = self->_inlineComplicationContainerViewController;
  v5 = a3;
  v6 = [(CSInlineWidgetContainerViewController *)inlineComplicationContainerViewController view];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CSCoverSheetViewController__complicationsInterpretGestureRecognizerLocationAsContent___block_invoke;
  v13[3] = &unk_27838BF98;
  v13[4] = v3;
  LOBYTE(inlineComplicationContainerViewController) = [(CSCoverSheetViewController *)v3 _gestureRecognizer:v5 hitContainerWithView:v6 componentType:21 interpretsViewAsContent:v13];

  v7 = [(CSWidgetGridViewController *)v3->_complicationContainerViewController widgetGridContentView];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__CSCoverSheetViewController__complicationsInterpretGestureRecognizerLocationAsContent___block_invoke_2;
  v12[3] = &unk_27838BF98;
  v12[4] = v3;
  v8 = [(CSCoverSheetViewController *)v3 _gestureRecognizer:v5 hitContainerWithView:v7 componentType:20 interpretsViewAsContent:v12];

  v9 = [(CSWidgetGridViewController *)v3->_sidebarComplicationContainerViewController widgetGridContentView];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__CSCoverSheetViewController__complicationsInterpretGestureRecognizerLocationAsContent___block_invoke_3;
  v11[3] = &unk_27838BF98;
  v11[4] = v3;
  LOBYTE(v3) = [(CSCoverSheetViewController *)v3 _gestureRecognizer:v5 hitContainerWithView:v9 componentType:25 interpretsViewAsContent:v11];

  return (inlineComplicationContainerViewController | v8 | v3) & 1;
}

- (BOOL)_gestureRecognizer:(id)a3 hitContainerWithView:(id)a4 componentType:(int64_t)a5 interpretsViewAsContent:(id)a6
{
  v10 = a6;
  activeAppearance = self->_activeAppearance;
  v12 = a4;
  v13 = a3;
  v14 = [(CSAppearance *)activeAppearance componentForType:a5 property:1];
  LOBYTE(activeAppearance) = [v14 isHidden];

  [v13 locationInView:v12];
  v16 = v15;
  v18 = v17;

  v19 = [v12 hitTest:0 withEvent:{v16, v18}];

  if (activeAppearance)
  {
    v20 = 0;
  }

  else
  {
    v20 = v10[2](v10, v19);
  }

  return v20;
}

- (BOOL)_quickActionButtonInterpretsLocation:(CGPoint)a3 asBesideContentForGestureView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(CSCoverSheetViewController *)self _quickActionsSupported])
  {
    v8 = [(CSCoverSheetViewController *)self activeAppearance];
    v9 = [v8 componentForType:14 identifier:@"(active)"];

    v10 = ([v9 isHidden] & 1) == 0 && (objc_msgSend(v9, "alpha"), (BSFloatIsZero() & 1) == 0) && -[CSQuickActionsViewController interpretsLocationAsBesideButtons:inView:](self->_quickActionsViewController, "interpretsLocationAsBesideButtons:inView:", v7, x, y);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = ([(UILongPressGestureRecognizer *)v5 isEqual:self->_quickNoteGestureRecognizer]& 1) == 0 && (self->_wallpaperGestureRecognizer != v5 || (CSAutobahnEnabledForPlatform() & 1) == 0) && self->_posterSwitcherGestureRecognizer != v5;

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_wallpaperGestureRecognizer == v6 && (CSAutobahnEnabledForPlatform() & 1) != 0 || self->_backgroundContentGestureRecognizer == v6 && self->_posterSwitcherGestureRecognizer == v7;

  return v8;
}

- (void)postNotificationRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DB0];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v4 notificationIdentifier];
    v11 = [v10 un_logDigest];
    v30 = 138543618;
    v31 = v9;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ posting notification %{public}@", &v30, 0x16u);
  }

  v12 = [(CSCoverSheetViewController *)self _fullscreeNotificationViewControllerMatchingNotificationRequest:v4];
  if (v12)
  {
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v4 notificationIdentifier];
      v18 = [v17 un_logDigest];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v30 = 138543874;
      v31 = v16;
      v32 = 2114;
      v33 = v18;
      v34 = 2114;
      v35 = v20;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ updating notification %{public}@ to %{public}@", &v30, 0x20u);
    }

    [v12 updateNotificationRequest:v4];
  }

  else
  {
    v21 = objc_alloc_init(CSFullscreenNotificationViewController);
    [(CSFullscreenNotificationViewController *)v21 setDispatcher:self->_notificationDispatcher];
    [(CSFullscreenNotificationViewController *)v21 postNotificationRequest:v4];
    v22 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v4 notificationIdentifier];
      v27 = [v26 un_logDigest];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v27;
      v34 = 2114;
      v35 = v29;
      _os_log_impl(&dword_21EB05000, v23, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presenting notification %{public}@ to %{public}@", &v30, 0x20u);
    }

    [(CSCoverSheetViewController *)self _presentModalViewController:v21 shouldDismissOverlays:0 animated:1 completion:0];
  }
}

- (void)updateNotificationRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ updating notification %{public}@", &v12, 0x16u);
  }

  v11 = [(CSCoverSheetViewController *)self _fullscreeNotificationViewControllerMatchingNotificationRequest:v4];
  [v11 updateNotificationRequest:v4];
}

- (id)_fullscreeNotificationViewControllerMatchingNotificationRequest:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v6 = [v5 bs_objectsOfClass:objc_opt_class()];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 notificationRequest];
        v12 = [v11 sectionIdentifier];
        v13 = [v4 sectionIdentifier];
        if ([v12 isEqualToString:v13])
        {
          v14 = [v11 notificationIdentifier];
          [v4 notificationIdentifier];
          v15 = v7;
          v16 = v8;
          v18 = v17 = v4;
          v21 = [v14 isEqualToString:v18];

          v4 = v17;
          v8 = v16;
          v7 = v15;

          if (v21)
          {
            v7 = v10;

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

LABEL_12:

  return v7;
}

- (void)withdrawNotificationRequest:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    *buf = 138543618;
    v30 = v8;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ withdrawing notification %{public}@", buf, 0x16u);
  }

  v23 = self;
  v11 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v12 = [v11 bs_objectsOfClass:objc_opt_class()];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 notificationRequest];
        v20 = [v19 notificationIdentifier];
        v21 = [v4 notificationIdentifier];
        v22 = [v20 isEqualToString:v21];

        if (v22)
        {
          [v18 withdrawNotificationRequest:v4];
          [(CSCoverSheetViewController *)v23 _dismissModalViewController:v18 animated:1 completion:0];
          goto LABEL_13;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v9 = [v8 bs_objectsOfClass:objc_opt_class()];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) updateNotificationSectionSettings:v6 previousSectionSettings:{v7, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v9 = [v8 bs_objectsOfClass:objc_opt_class()];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) updateNotificationSystemSettings:v6 previousSystemSettings:{v7, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v6 = [v5 bs_objectsOfClass:objc_opt_class()];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) notificationsLoadedForSectionIdentifier:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)isNotificationContentExtensionVisible:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self notificationDestination];
  v6 = [v5 isNotificationContentExtensionVisible:v4];

  return v6;
}

- (BOOL)isPresentingNotificationInLongLook
{
  v2 = [(CSCoverSheetViewController *)self notificationDestination];
  v3 = [v2 isPresentingNotificationInLongLook];

  return v3;
}

- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(CSCoverSheetViewController *)self notificationDestination];
  LOBYTE(v3) = [v4 dismissNotificationInLongLookAnimated:v3];

  return v3;
}

- (id)hostedAppSceneHandle
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_applicationHosters;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) hostedAppSceneHandle];
        if (v8)
        {
          v9 = v8;

          goto LABEL_11;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = [(CSPresentationViewController *)self->_modalPresentationController hostedAppSceneHandle];
LABEL_11:

  return v9;
}

- (id)hostedAppSceneHandles
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_applicationHosters;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) hostedAppSceneHandles];
        if (v9)
        {
          [v3 addObjectsFromArray:v9];
        }
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(CSPresentationViewController *)self->_modalPresentationController hostedAppSceneHandles];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  [v3 addObjectsFromArray:{v12, v14}];

  return v3;
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(CSCoverSheetViewController *)self supportedInterfaceOrientations];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_applicationHosters;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = v5 & (1 << a3);
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 isHostingAnApp];
        v14 = [v12 handlesRotationIndependentOfCoverSheet];
        if (v9)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        if (v13)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          [v12 hostedAppWillRotateToInterfaceOrientation:a3];
        }
      }

      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)visibleHostedEntity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:self->_lastSettledPageIndex];
  if ([v3 participantState] == 2 && objc_msgSend(v3, "conformsToProtocol:", &unk_2830EF220))
  {
    v4 = [v3 hostedEntity];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&unk_2830EF220])
          {
            v4 = [v10 hostedEntity];

            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
  }

LABEL_14:

  return v4;
}

- (BOOL)shouldAutoUnlockForSource:(int)a3
{
  v6 = 1;
  if (a3 != 3 && a3 != 41)
  {
    v3 = +[CSLockScreenDomain rootSettings];
    v6 = [v3 autoDismissUnlockedLockScreen];
  }

  if (a3 != 3 && a3 != 41)
  {
  }

  if (v6 && ![(CSPresentationViewController *)self->_modalPresentationController isPresentingContent])
  {
    v8 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v7 = [v8 hasContent] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)startRestToOpenCoachingWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_hasContentAboveCoverSheet)
  {
    v5 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__CSCoverSheetViewController_startRestToOpenCoachingWithCompletion___block_invoke;
    v6[3] = &unk_27838BAC0;
    v7 = v4;
    [v5 startRestToOpenCoaching:1 withCompletion:v6];
  }
}

uint64_t __68__CSCoverSheetViewController_startRestToOpenCoachingWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)fillRestToOpenWithDuration:(double)a3
{
  v4 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  [v4 fillRestToOpenWithDuration:a3];
}

- (void)resetRestToOpen
{
  v2 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  [v2 resetRestToOpen];
}

- (BOOL)isRestToOpenAvailable
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_externalLockProviders;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 participantState] == 2 && (objc_msgSend(v7, "isLocked") & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return (v4 | [(CSCoverSheetViewController *)self isPasscodeLockVisible]) ^ 1;
}

- (BOOL)hasVisibleContentToReveal
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  v3 = [v2 hasVisibleContentToReveal];

  return v3;
}

- (BOOL)phoneUnlockWithWatchControllerShowRawErrorCodes:(id)a3
{
  v3 = +[CSLockScreenDomain rootSettings];
  v4 = [v3 showRawErrorCodes];

  return v4;
}

- (void)phoneUnlockWithWatchControllerAttemptSucceeded:(id)a3
{
  v4 = [(CSCoverSheetViewController *)self delegate];
  if (([v4 coverSheetViewControllerIsPasscodeVisible:self] & 1) == 0)
  {
    [v4 coverSheetViewControllerHandleUnlockAttemptSucceeded:self];
  }
}

- (void)phoneUnlockWithWatchControllerAttemptFailed:(id)a3 withError:(id)a4
{
  v6 = a4;
  if ([(SBUIPhoneUnlockWithVisionController *)self->_phoneUnlockWithVisionController isPhoneUnlockEnabledAndRequirementsMet])
  {
    [(SBUIPhoneUnlockWithVisionController *)self->_phoneUnlockWithVisionController attemptUnlock];
  }

  else if ([(CSCoverSheetViewController *)self proudLockViewControllerIsCoverSheetVisible])
  {
    v5 = [(CSProudLockViewController *)self->_proudLockViewController proudLockContainerViewController];
    [v5 handlePhoneUnlockWithWatchError:v6];
  }
}

- (void)phoneUnlockWithVisionControllerAttemptSucceeded:(id)a3
{
  v4 = [(CSCoverSheetViewController *)self delegate];
  if (([v4 coverSheetViewControllerIsPasscodeVisible:self] & 1) == 0)
  {
    [v4 coverSheetViewControllerHandleUnlockAttemptSucceeded:self];
  }
}

- (void)phoneUnlockWithVisionController:(id)a3 attemptFailedWithError:(id)a4
{
  v6 = a4;
  if ([(CSCoverSheetViewController *)self proudLockViewControllerIsCoverSheetVisible])
  {
    v5 = [(CSProudLockViewController *)self->_proudLockViewController proudLockContainerViewController];
    [v5 handlePhoneUnlockWithVisionError:v6];
  }
}

- (void)handleBiometricEvent:(unint64_t)a3
{
  if (a3 <= 0x21)
  {
    if (((1 << a3) & 0x2070009E0) != 0)
    {
      v5 = [CSEvent eventWithType:14];
      [(CSCoverSheetViewController *)self _handleEvent:v5];

      if (a3 != 13)
      {
        goto LABEL_6;
      }

LABEL_4:
      v6 = [CSAction actionWithType:4];
      [(CSCoverSheetViewController *)self handleAction:v6 fromSender:self];
LABEL_5:

      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v9 = [CSAction actionWithType:3];
      [(CSCoverSheetViewController *)self handleAction:v9 fromSender:self];

      v6 = [CSEvent eventWithType:34];
      [(CSCoverSheetViewController *)self _handleEvent:v6];
      goto LABEL_5;
    }

    if (a3 == 13)
    {
      goto LABEL_4;
    }
  }

  if (!a3)
  {
    v6 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
    [v6 setFingerOffSinceWake:1];
    goto LABEL_5;
  }

LABEL_6:
  v10 = [CSEvent eventWithType:15];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v10 setValue:v7];

  [(CSCoverSheetViewController *)self _handleEvent:v10];
  [(CSHomeButtonShowPasscodeRecognizer *)self->_homeButtonShowPasscodeRecognizer handleBiometricEvent:a3];
  WeakRetained = objc_loadWeakRetained(&self->_homeButtonSuppressAfterUnlockRecognizer);
  [WeakRetained handleBiometricEvent:a3];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  [(CSCoverSheetViewController *)self noteDeviceBlockedStatusUpdated];
  v6 = [v5 isEqualToString:@"showRegionsDebugView"];

  if (v6)
  {
    if ([(CSLockScreenSettings *)self->_prototypeSettings showRegionsDebugView])
    {
      v7 = objc_alloc_init(CSRegionsDebugView);
      v8 = [(CSCoverSheetViewController *)self coverSheetView];
      [v8 setRegionsDebugView:v7];
    }

    else
    {
      v7 = [(CSCoverSheetViewController *)self coverSheetView];
      [(CSRegionsDebugView *)v7 setRegionsDebugView:0];
    }
  }

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"PrototypeSettingsChanged"];

  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"PrototypeSettingsChanged"];
}

- (BOOL)controller:(id)a3 shouldAllowPanScrollingWithSystemGestureRecognizer:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(CSCoverSheetViewController *)self _activeViewControllers];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if ([(CSCoverSheetViewController *)self _gestureRecognizer:v5 isLocatedOverHorizontalContentRegionInViewController:v11, v18])
      {
        break;
      }

      v12 = [v11 viewIfLoaded];
      _UISystemGestureLocationInView();
      if ([(CSCoverSheetViewController *)self _overSlidingControlForLocation:v12 inView:?])
      {
        v15 = SBLogDashBoard();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v12 description];
          *buf = 138412290;
          v23 = v16;
          _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "Preventing panning scroll for sliding control in view: %@", buf, 0xCu);
        }

LABEL_15:

        goto LABEL_16;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v12 = SBLogDashBoard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 description];
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "Preventing panning scroll for horizontal content region in view controller: %@", buf, 0xCu);
      goto LABEL_15;
    }

LABEL_16:

    LOBYTE(v14) = 0;
    v13 = v6;
    goto LABEL_17;
  }

LABEL_10:

  v13 = [(CSCoverSheetViewController *)self viewIfLoaded];
  _UISystemGestureLocationInView();
  v14 = ![(CSCoverSheetViewController *)self _overSlidingControlForLocation:v13 inView:?];
LABEL_17:

  return v14;
}

- (void)controllerWillCancelHorizontalScrolling:(id)a3
{
  v4 = [(CSCoverSheetViewController *)self coverSheetView];
  [v4 setTargetPageIndexForDraggingEnded:{-[CSCoverSheetViewController _lastSettledPageIndex](self, "_lastSettledPageIndex")}];
}

- (void)presentationViewController:(id)a3 didTransitionViewController:(id)a4 toPresented:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  v8 = a4;
  v9 = [v8 coverSheetIdentifier];
  v10 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = v8;
    v13 = [v12 contentViewControllers];
    v14 = v13;
    if (v5)
    {
      v15 = [v13 containsObject:self->_remoteContentModalViewController];

      if (v15)
      {
        v16 = [(CSCoverSheetViewController *)self coverSheetView];
        v17 = [v23 view];
        [v16 addContentViewWithCustomContentView:v17];

LABEL_10:
      }
    }

    else
    {
      v19 = [(CSCoverSheetViewController *)self posterSwitcherViewController];
      v20 = [v14 containsObject:v19];

      if (v20)
      {
        v16 = [(CSCoverSheetViewController *)self coverSheetView];
        [v16 removeContentView];
        goto LABEL_10;
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if (![v8 needsContentView])
  {
    goto LABEL_12;
  }

  v18 = [(CSCoverSheetViewController *)self coverSheetView];
  v12 = v18;
  if (v5)
  {
    [v18 addContentView];
    goto LABEL_11;
  }

  [v18 foregroundViewPositionOffset];
  IsZero = BSFloatIsZero();

  if (IsZero)
  {
    v22 = [(CSCoverSheetViewController *)self coverSheetView];
    [v22 removeContentView];
  }

  else
  {
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"SwitcherZoomingPresentation"];
  }

LABEL_12:
}

- (double)bottomInsetForBottomComplications
{
  v2 = [(CSCoverSheetViewController *)self complicationsUsingBottomPosition];
  result = 0.0;
  if (v2)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v6 = v5;

    [getCSProminentLayoutControllerClass() frameForElements:32];
    return v6 - CGRectGetMinY(v7);
  }

  return result;
}

- (BOOL)_areComplicationsHidden
{
  v2 = [(CSAppearance *)self->_activeAppearance componentForType:20 property:1];
  v3 = [v2 isHidden];

  return v3;
}

- (double)timeTextHeight
{
  v2 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
  v3 = [v2 prominentDisplayViewController];
  [v3 adaptiveTimeTextHeight];
  v5 = v4;

  return v5;
}

- (void)contentRequestCancellingGesture
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  v4 = [v3 scrollView];
  v5 = [v4 panGestureRecognizer];
  [v5 setEnabled:0];

  v8 = [(CSCoverSheetViewController *)self coverSheetView];
  v6 = [v8 scrollView];
  v7 = [v6 panGestureRecognizer];
  [v7 setEnabled:1];
}

- (void)_addBackgroundContentViewControllerForAction:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [a3 configurationObject];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (a3)
  {
    if (!self->_backgroundContentViewController && v9 != 0)
    {
      v11 = [(CSCoverSheetViewController *)self coverSheetView];
      v12 = [v11 effectiveContentsContainerView];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v33 = v9;
      v21 = [(CSBackgroundPresentationManager *)self->_backgroundPresentationManager createBackgroundViewControllerForDefinition:v9 frame:v14, v16, v18, v20];
      backgroundContentViewController = self->_backgroundContentViewController;
      self->_backgroundContentViewController = v21;

      [(CSCoverSheetViewController *)self addCoverSheetObserver:self->_backgroundContentViewController];
      v23 = self->_backgroundContentViewController;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __75__CSCoverSheetViewController__addBackgroundContentViewControllerForAction___block_invoke;
      v39[3] = &unk_27838B798;
      v39[4] = self;
      [(CSCoverSheetViewController *)self bs_addChildViewController:v23 animated:0 transitionBlock:v39];
      [(UITapGestureRecognizer *)self->_backgroundContentGestureRecognizer addTarget:self->_backgroundContentViewController action:sel_tapGestureRecognizerAction_];
      [(CSCoverSheetViewController *)self _updatePosterSwitcherBackgroundView];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __75__CSCoverSheetViewController__addBackgroundContentViewControllerForAction___block_invoke_2;
      v38[3] = &unk_27838BFC0;
      v38[4] = self;
      [(CSCoverSheetViewController *)self _performLocalAppearanceUpdatesWithReason:@"Background content added" updates:v38];
      v24 = [CSAction actionWithType:3];
      [(CSCoverSheetViewController *)self handleAction:v24 fromSender:self];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = [(NSHashTable *)self->_observers copy];
      v26 = [v25 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          v29 = 0;
          do
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v34 + 1) + 8 * v29);
            if (objc_opt_respondsToSelector())
            {
              [v30 coverSheetViewControllerDidAddNewSceneHostEnvironment:self];
            }

            if (objc_opt_respondsToSelector())
            {
              [v30 coverSheetViewController:self didObscureWallpaper:1];
            }

            ++v29;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v27);
      }

      if (!self->_backgroundContentDidOccludeWallpaperAssertion)
      {
        v31 = [(BSCompoundAssertion *)self->__wallpaperOccludedAssertions acquireForReason:@"BackgroundContentAdded"];
        backgroundContentDidOccludeWallpaperAssertion = self->_backgroundContentDidOccludeWallpaperAssertion;
        self->_backgroundContentDidOccludeWallpaperAssertion = v31;
      }

      v9 = v33;
    }
  }
}

void __75__CSCoverSheetViewController__addBackgroundContentViewControllerForAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1720);
  v4 = a2;
  v6 = [v3 backgroundContentView];
  v5 = [*(a1 + 32) coverSheetView];
  [v5 setBackgroundContentView:v6];

  v4[2](v4);
}

void __75__CSCoverSheetViewController__addBackgroundContentViewControllerForAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF0D90];
  v4 = a2;
  v6 = objc_alloc_init(v3);
  [*(a1 + 32) setVibrancyConfigurationOverride:v6];
  [*(a1 + 32) _removeBackgroundContentOccludingViewsForAppearance:v4];
  v5 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
  [v4 setLegibilitySettings:v5];
}

- (void)_removeBackgroundContentViewController
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_backgroundContentViewController)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__CSCoverSheetViewController__removeBackgroundContentViewController__block_invoke;
    v19[3] = &unk_27838BFC0;
    v19[4] = self;
    [(CSCoverSheetViewController *)self _performLocalAppearanceUpdatesWithReason:@"Background content removed" updates:v19];
    [(UITapGestureRecognizer *)self->_backgroundContentGestureRecognizer removeTarget:self->_backgroundContentViewController action:0];
    backgroundContentViewController = self->_backgroundContentViewController;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__CSCoverSheetViewController__removeBackgroundContentViewController__block_invoke_2;
    v18[3] = &unk_27838B798;
    v18[4] = self;
    [(CSCoverSheetViewController *)self bs_removeChildViewController:backgroundContentViewController animated:0 transitionBlock:v18];
    [(CSCoverSheetViewController *)self removeCoverSheetObserver:self->_backgroundContentViewController];
    v4 = self->_backgroundContentViewController;
    self->_backgroundContentViewController = 0;

    [(CSCoverSheetViewController *)self _updatePosterSwitcherBackgroundView];
    v5 = [CSAction actionWithType:3];
    [(CSCoverSheetViewController *)self handleAction:v5 fromSender:self];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 coverSheetViewController:self didObscureWallpaper:0];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v8);
    }

    backgroundContentDidOccludeWallpaperAssertion = self->_backgroundContentDidOccludeWallpaperAssertion;
    if (backgroundContentDidOccludeWallpaperAssertion)
    {
      [(BSInvalidatable *)backgroundContentDidOccludeWallpaperAssertion invalidate];
      v13 = self->_backgroundContentDidOccludeWallpaperAssertion;
      self->_backgroundContentDidOccludeWallpaperAssertion = 0;
    }
  }
}

void __68__CSCoverSheetViewController__removeBackgroundContentViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setVibrancyConfigurationOverride:0];
  [*(a1 + 32) _addBackgroundContentOccludingViewsForAppearance:v4];
  [v4 setLegibilitySettings:0];
}

void __68__CSCoverSheetViewController__removeBackgroundContentViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 coverSheetView];
  [v3 setBackgroundContentView:0];

  v4[2]();
}

- (void)_performLocalAppearanceUpdatesWithReason:(id)a3 updates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSCoverSheetViewController *)self localAppearance];
  v9 = MEMORY[0x277CF0D38];
  v10 = [MEMORY[0x277CF0B70] settingsWithDuration:0.4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__CSCoverSheetViewController__performLocalAppearanceUpdatesWithReason_updates___block_invoke;
  v14[3] = &unk_27838BFE8;
  v15 = v8;
  v16 = self;
  v17 = v6;
  v18 = v7;
  v11 = v6;
  v12 = v8;
  v13 = v7;
  [v9 animateWithSettings:v10 actions:v14 completion:0];
}

uint64_t __79__CSCoverSheetViewController__performLocalAppearanceUpdatesWithReason_updates___block_invoke(void *a1)
{
  (*(a1[7] + 16))();
  v2 = a1[5];
  v3 = a1[6];

  return [v2 _updateActiveAppearanceForReason:v3];
}

- (void)_addBackgroundContentOccludingViewsForAppearance:(id)a3
{
  if (self->_backgroundContentViewController)
  {
    [a3 removeAllComponentsWithIdentifier:@"BackgroundContent"];
  }
}

- (void)_removeBackgroundContentOccludingViewsForAppearance:(id)a3
{
  v4 = a3;
  if (self->_backgroundContentViewController)
  {
    v19 = v4;
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v7 = +[CSComponent complicationContainer];
      v8 = [v7 identifier:@"BackgroundContent"];
      v9 = [v8 priority:-100];
      v10 = [v9 hidden:1];
      [v19 addComponent:v10];
    }

    v11 = +[CSComponent remoteInlineContent];
    v12 = [v11 identifier:@"BackgroundContent"];
    v13 = [v12 priority:-100];
    v14 = [v13 hidden:1];
    [v19 addComponent:v14];

    v15 = objc_opt_new();
    v16 = [v15 identifier:@"BackgroundContent"];
    v17 = [v16 priority:-100];
    v18 = [v17 shouldRenderInline:1];
    [v19 addComponent:v18];

    v4 = v19;
  }
}

- (void)_setupBackgroundContentGestureRecognizer
{
  if (!self->_backgroundContentViewController || (-[CSCoverSheetViewController coverSheetView](self, "coverSheetView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 backgroundContentGestureRecognizer], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277D75B80]);
    backgroundContentGestureRecognizer = self->_backgroundContentGestureRecognizer;
    self->_backgroundContentGestureRecognizer = v5;

    [(UITapGestureRecognizer *)self->_backgroundContentGestureRecognizer setDelegate:self];
    v7 = [(CSCoverSheetViewController *)self coverSheetView];
    [v7 setBackgroundContentGestureRecognizer:self->_backgroundContentGestureRecognizer];
  }
}

- (void)_addOrRemoveRemoteContentViewIfNecessaryMaintainingState:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [(CSCoverSheetViewController *)self _activeRemoteContentAssertion];
  if (v5)
  {
    self->_suppressModalRemotePresentation = a3;
    v6 = [(CSCoverSheetViewController *)self _canShowEmbeddedRemoteContent];
    v7 = SBLogDashBoard();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Reinstating content", v9, 2u);
      }

      [(CSCoverSheetViewController *)self _addRemoteViewControllerForAction:v5];
    }

    else
    {
      if (v8)
      {
        v9[0] = 67109120;
        v9[1] = 0;
        _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Not reinstating content: canShowContent: %d", v9, 8u);
      }
    }
  }

  else
  {
    [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:6];
  }
}

- (void)_cleanupStaleRemoteContentWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_remoteContentInlineProvidingManagers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9++) removeInlineRemoteContentWithAnimatedDismissal:0];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CSCoverSheetViewController__cleanupStaleRemoteContentWithCompletion___block_invoke;
  v11[3] = &unk_27838BA98;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __71__CSCoverSheetViewController__cleanupStaleRemoteContentWithCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1600) existingSessions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = SBLogDashBoard();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 sessionID];
          *buf = 138543362;
          v18 = v9;
          _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Forcefully removing stale remote session %{public}@", buf, 0xCu);
        }

        [v7 forceDisconnect];
        v10 = *(*(a1 + 32) + 1600);
        v11 = [v7 sessionID];
        [v10 didInvalidateSessionWithSessionID:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

- (BOOL)_canShowEmbeddedRemoteContent
{
  v3 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v4 = [(CSCoverSheetViewController *)self bs_isAppearingOrAppeared];
  if (!v4 || (v3 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if ((__sb__runningInSpringBoard() & 1) == 0)
  {
    v12 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 != 1)
    {
      goto LABEL_15;
    }

LABEL_7:
    v5 = [(CSCoverSheetViewController *)self activeBehavior];
    v6 = [v5 areRestrictedCapabilities:0x80000];

    if (v6)
    {
      v7 = SBLogDashBoard();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v19 = 0;
      v8 = "[RemoteContent] Cannot show content: hosted remote content is restricted";
      v9 = &v19;
    }

    else
    {
      if (![(CSCoverSheetViewController *)self isLockScreenShowingDefaultContentExceptControlCenter])
      {
        v7 = SBLogDashBoard();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v18 = 0;
        v8 = "[RemoteContent] Cannot show content: !isLockScreenShowingDefaultContentExceptControlCenter";
        v9 = &v18;
        goto LABEL_17;
      }

      v10 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
      v11 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v10];

      if (!v11)
      {
        if (self->_remoteContentInlineViewController)
        {
          v7 = SBLogDashBoard();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          v16 = 0;
          v8 = "[RemoteContent] Cannot show content: already have inline VC";
          v9 = &v16;
          goto LABEL_17;
        }

        if (![(CSCoverSheetViewController *)self isPresentingNotificationInLongLook])
        {
          return 1;
        }

        v7 = SBLogDashBoard();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 0;
          v8 = "[RemoteContent] Cannot show content: presenting notification in long look";
          v9 = &v15;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v7 = SBLogDashBoard();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v17 = 0;
      v8 = "[RemoteContent] Cannot show content: presenting modal VC";
      v9 = &v17;
    }

LABEL_17:
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    goto LABEL_18;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_7;
  }

LABEL_15:
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "[RemoteContent] Cannot show content: isAppearingOrAppeared";
    v9 = buf;
    goto LABEL_17;
  }

LABEL_18:

  return 0;
}

- (void)_addRemoteViewControllerForAction:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [a3 configurationObject];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ([(CSCoverSheetViewController *)self _isShowingInlineContent])
  {
    [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleForInlineContent];
  }

  else
  {
    v10 = [(CSCoverSheetViewController *)self _hostedRemoteContentViewController];
    if (!a3 || v10)
    {
    }

    else if (v9)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [(CSRemoteContentSessionManager *)self->_remoteContentSessionManager existingSessionsWithDefinition:v9];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
LABEL_13:
        v15 = 0;
        while (1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          if ([v16 isValid])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
            if (v13)
            {
              goto LABEL_13;
            }

            goto LABEL_19;
          }
        }

        v17 = [v16 sessionID];

        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = SBLogDashBoard();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = v17;
          _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "Already have valid existing session ID %{public}@; not adding remote VC", buf, 0xCu);
        }
      }

      else
      {
LABEL_19:

LABEL_24:
        v19 = [(CSRemoteContentSessionManager *)self->_remoteContentSessionManager createSessionWithDefinition:v9];
        [v19 setHostDelegate:self];
        v17 = v19;
        BSDispatchMain();
        v18 = v19;
      }
    }
  }
}

- (void)_dismissRemoteViewControllerForReason:(int64_t)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  BSDispatchQueueAssertMain();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__CSCoverSheetViewController__dismissRemoteViewControllerForReason_completion___block_invoke;
  v20[3] = &unk_27838C010;
  v20[4] = self;
  v7 = v6;
  v21 = v7;
  v8 = MEMORY[0x223D698D0](v20);
  v9 = [(CSCoverSheetViewController *)self _hostedRemoteContentViewController];
  if (v9)
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSBSRemoteContentDismissType();
      *buf = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Dismissing remote content because of %{public}@: %{public}@", buf, 0x16u);
    }

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __79__CSCoverSheetViewController__dismissRemoteViewControllerForReason_completion___block_invoke_607;
    v17 = &unk_27838C038;
    v12 = v8;
    v18 = self;
    v19 = v12;
    v13 = MEMORY[0x223D698D0](&v14);
    self->_isRemovingLockScreenContentAction = 1;
    if (([v9 dismissForDismissType:a3 completion:{v13, v14, v15, v16, v17}] & 1) == 0)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    v8[2](v8, 0);
  }
}

void __79__CSCoverSheetViewController__dismissRemoteViewControllerForReason_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__CSCoverSheetViewController__dismissRemoteViewControllerForReason_completion___block_invoke_2;
  v4[3] = &unk_27838BD30;
  v4[4] = v3;
  v5 = *(a1 + 40);
  v6 = a2;
  [v3 _cleanupStaleRemoteContentWithCompletion:v4];
}

uint64_t __79__CSCoverSheetViewController__dismissRemoteViewControllerForReason_completion___block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 1633) = 0;
  v1 = *(result + 40);
  if (v1)
  {
    return (*(v1 + 16))(*(result + 40), *(result + 48));
  }

  return result;
}

void __79__CSCoverSheetViewController__dismissRemoteViewControllerForReason_completion___block_invoke_607(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) _activeRemoteContentAssertion];

  if (v2)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] After dismissing remote content we still have an active assertion; adding remote view", v4, 2u);
    }

    [*(a1 + 32) _handleAddedAction];
  }
}

- (BOOL)_removeRemoteViewControllerForInvalidatedSession:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __90__CSCoverSheetViewController__removeRemoteViewControllerForInvalidatedSession_completion___block_invoke;
  v35[3] = &unk_27838BB18;
  v8 = v7;
  v36 = v8;
  v9 = MEMORY[0x223D698D0](v35);
  v10 = v9;
  if (self->_remoteContentModalViewController)
  {
    v11 = SBLogDashBoard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 sessionID];
      remoteContentModalViewController = self->_remoteContentModalViewController;
      *buf = 138543618;
      v39 = v12;
      v40 = 2114;
      v41 = remoteContentModalViewController;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Removing content for session %{public}@: %{public}@", buf, 0x16u);
    }

    v14 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
    v15 = [(CSCoverSheetViewController *)self _presentedModalViewControllerWithIdentifier:v14];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __90__CSCoverSheetViewController__removeRemoteViewControllerForInvalidatedSession_completion___block_invoke_608;
    v31[3] = &unk_27838C060;
    v32 = v6;
    v33 = self;
    v34 = v10;
    v16 = 1;
    [(CSCoverSheetViewController *)self _dismissModalViewController:v15 animated:1 completion:v31];
  }

  else if (self->_remoteContentInlineViewController)
  {
    v17 = SBLogDashBoard();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 sessionID];
      remoteContentInlineViewController = self->_remoteContentInlineViewController;
      *buf = 138543618;
      v39 = v18;
      v40 = 2114;
      v41 = remoteContentInlineViewController;
      _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Removing content for session %{public}@: %{public}@", buf, 0x16u);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = self->_remoteContentInlineProvidingManagers;
    v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v27 + 1) + 8 * i) removeInlineRemoteContentWithAnimatedDismissal:{1, v27}];
        }

        v22 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v22);
    }

    [(CSMainPageContentViewController *)self->_mainPageContentViewController removeInlineContentSupport];
    [(CSCoverSheetViewControllerBase *)self->_remoteContentInlineViewController setPresenter:0];
    v25 = self->_remoteContentInlineViewController;
    self->_remoteContentInlineViewController = 0;

    [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleWithRemotePreference:0];
    v10[2](v10);
    v16 = 1;
  }

  else
  {
    (*(v9 + 16))(v9);
    v16 = 0;
  }

  return v16;
}

uint64_t __90__CSCoverSheetViewController__removeRemoteViewControllerForInvalidatedSession_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __90__CSCoverSheetViewController__removeRemoteViewControllerForInvalidatedSession_completion___block_invoke_608(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionID];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Did remove content for session %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 1608);
  *(v4 + 1608) = 0;

  (*(*(a1 + 48) + 16))();
  v6 = [*(a1 + 40) coverSheetView];
  [v6 removeContentView];
}

- (BOOL)_isRemoteContentPresentedInUnlockMode
{
  v3 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
  v4 = [(CSCoverSheetViewController *)self _presentedModalViewControllerWithIdentifier:v3];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 presentedViewControllers];

  v10 = [v9 containsObject:self->_remoteContentModalViewController];
  if (v10)
  {
    remoteContentModalViewController = self->_remoteContentModalViewController;
  }

  else
  {
    remoteContentModalViewController = self->_remoteContentInlineViewController;
    if (!remoteContentModalViewController)
    {
      return remoteContentModalViewController;
    }
  }

  LOBYTE(remoteContentModalViewController) = [remoteContentModalViewController isInUnlockGestureMode];
  return remoteContentModalViewController;
}

- (id)_hostedRemoteContentViewController
{
  remoteContentModalViewController = self->_remoteContentModalViewController;
  if (!remoteContentModalViewController)
  {
    remoteContentModalViewController = self->_remoteContentInlineViewController;
  }

  return remoteContentModalViewController;
}

- (void)_overrideNotificationDisplayStyleForInlineContent
{
  if ([(CSCoverSheetViewController *)self didDismissSinceScreenOn])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController preferredNotificationListMode];
  }

  [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleWithRemotePreference:v3];
}

- (void)_overrideNotificationDisplayStyleWithRemotePreference:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  remoteOverrideNotificationDisplayStyleAssertion = self->_remoteOverrideNotificationDisplayStyleAssertion;
  if (!remoteOverrideNotificationDisplayStyleAssertion)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_10;
  }

  v6 = [(CSOverrideNotificationListDisplayStyleAssertion *)remoteOverrideNotificationDisplayStyleAssertion hideNotificationCount];
  v7 = [(CSOverrideNotificationListDisplayStyleAssertion *)self->_remoteOverrideNotificationDisplayStyleAssertion displayStyle];
  switch(v7)
  {
    case 2:
      v8 = 3;
      if (!v6)
      {
        v8 = 4;
      }

      break;
    case 1:
      v8 = 2;
      break;
    case 0:
      v8 = 1;
      break;
    default:
      goto LABEL_6;
  }

LABEL_10:
  if (v8 == a3)
  {
    return;
  }

  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromPreferredNotificationListMode();
    v18 = 138543362;
    v19 = v10;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Setting notification list display style override: %{public}@", &v18, 0xCu);
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      v12 = self->_remoteOverrideNotificationDisplayStyleAssertion;
      self->_remoteOverrideNotificationDisplayStyleAssertion = 0;
      goto LABEL_25;
    }

    if (a3 != 1)
    {
      return;
    }

    v11 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v12 = v11;
    v13 = *MEMORY[0x277D78020];
    v14 = 0;
  }

  else
  {
    switch(a3)
    {
      case 2:
        v11 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
        v12 = v11;
        v13 = *MEMORY[0x277D78020];
        v14 = 1;
        break;
      case 3:
        v11 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
        v12 = v11;
        v13 = *MEMORY[0x277D78020];
        v14 = 2;
        v15 = 1;
        goto LABEL_24;
      case 4:
        v11 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
        v12 = v11;
        v13 = *MEMORY[0x277D78020];
        v14 = 2;
        break;
      default:
        return;
    }
  }

  v15 = 0;
LABEL_24:
  v16 = [(CSOverrideNotificationListDisplayStyleAssertion *)v11 acquireOverrideNotificationListDisplayStyleAssertionWithStyle:v14 hideNotificationCount:v15 reason:v13];
  v17 = self->_remoteOverrideNotificationDisplayStyleAssertion;
  self->_remoteOverrideNotificationDisplayStyleAssertion = v16;

LABEL_25:
}

- (void)_dismissInlineContentOnSignificantScroll
{
  if ([(CSCoverSheetViewController *)self _isShowingInlineContent]&& [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController inlineContentDismissesOnSignificantScroll])
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent]  Dismissing remote content for significant scroll", v4, 2u);
    }

    [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:8];
  }
}

- (BOOL)shouldActivateRemoteContentSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self activeBehavior];
  v6 = [v5 areRestrictedCapabilities:0x80000];

  v7 = [(CSCoverSheetViewController *)self _hostedRemoteContentViewController];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 1)
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 sessionID];
      v12 = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v7;
      v16 = 1026;
      v17 = v6;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Should not activate for session: %{public}@, controller: %{public}@, restricted: %{public}d", &v12, 0x1Cu);
    }
  }

  return v8 ^ 1;
}

- (void)_presentInlineViewController:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_remoteContentInlineViewController, a3);
    [(CSCoverSheetViewController *)self _updateRemoteContentInlineHorizontalMargin];
    v6 = [(CSCoverSheetViewController *)self _isMainPageShowing];
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[RemoteContent] Telling remote inline content managers to present", buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_remoteContentInlineProvidingManagers;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12++) presentInlineRemoteContent:v5 animatePresentation:{v6, v15}];
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }

    v13 = [CSAction actionWithType:3];
    [(CSCoverSheetViewController *)self handleAction:v13 fromSender:self];

    [v5 setPresenter:self];
    if (self->_lastAppearState == 2 && [v5 presentationCancelsTouches])
    {
      BKSHIDServicesCancelTouchesOnMainDisplay();
    }

    v14 = [(CSCoverSheetViewController *)self mainPageContentViewController];
    [v14 addInlineContentSupportForDelegate:v5];

    [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleForInlineContent];
    [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"PresentedInlineContentViewController"];
    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"PresentedInlineContentViewController"];
  }
}

- (BOOL)remoteContentSession:(id)a3 presentViewController:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (*&self->_remoteContentModalViewController == 0)
  {
    v12 = [(CSCoverSheetViewController *)self activeBehavior];
    v13 = [v12 areRestrictedCapabilities:0x80000];

    v8 = SBLogDashBoard();
    v14 = os_log_type_enabled(&v8->super.super.super.super.super, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_5;
      }

      LOWORD(v31) = 0;
      v9 = "[CSCSVC][RemoteContent] capability restricted";
      goto LABEL_4;
    }

    if (v14)
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_21EB05000, &v8->super.super.super.super.super, OS_LOG_TYPE_DEFAULT, "[CSCSVS][RemoteContent] Being asked to present remote session", &v31, 2u);
    }

    v15 = [v7 contentPresentationType];
    if (v15)
    {
      if (v15 != 1)
      {
        v10 = 1;
        goto LABEL_7;
      }

      v16 = objc_opt_class();
      v17 = v7;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v8 = v18;

      if ([(CSCoverSheetViewController *)self isShowingMediaControls]&& [(CSDismissableModalViewController *)v8 shouldDismissInlineContentForNowPlaying])
      {
        v21 = SBLogDashBoard();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] showing media controls; not presenting inline", &v31, 2u);
        }

        goto LABEL_5;
      }

      [(CSCoverSheetViewController *)self _presentInlineViewController:v8];
      v22 = SBLogDashBoard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v6 sessionID];
        remoteContentInlineViewController = self->_remoteContentInlineViewController;
        v31 = 138543618;
        v32 = v23;
        v33 = 2114;
        v34 = remoteContentInlineViewController;
LABEL_40:
        _os_log_impl(&dword_21EB05000, v22, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Added content for session %{public}@: %{public}@", &v31, 0x16u);
      }
    }

    else
    {
      if (self->_suppressModalRemotePresentation)
      {
        v8 = SBLogDashBoard();
        if (!os_log_type_enabled(&v8->super.super.super.super.super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        LOWORD(v31) = 0;
        v9 = "[CSCSVC][RemoteContent] not reinstating modal content";
        goto LABEL_4;
      }

      v19 = [(CSCoverSheetViewController *)self mainPageContentViewController];
      v20 = [v19 hasVisibleBreakthroughContent];

      if (v20)
      {
        v8 = SBLogDashBoard();
        if (!os_log_type_enabled(&v8->super.super.super.super.super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        LOWORD(v31) = 0;
        v9 = "[CSCSVC][RemoteContent] has visible breakthrough content; not showing modal";
        goto LABEL_4;
      }

      v25 = objc_opt_class();
      v26 = __BSSafeCast(v7, v25);
      remoteContentModalViewController = self->_remoteContentModalViewController;
      self->_remoteContentModalViewController = v26;

      v8 = objc_alloc_init(CSDismissableModalViewController);
      [(CSPresentationViewController *)v8 presentContentViewController:self->_remoteContentModalViewController animated:0];
      if ([(CSRemoteContentModalViewController *)self->_remoteContentModalViewController shouldCaptureHomeGesture])
      {
        v28 = SBLogDashBoard();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_21EB05000, v28, OS_LOG_TYPE_DEFAULT, "[ZStack-Participant] adding remote content modal home affordance", &v31, 2u);
        }

        v29 = [(CSCoverSheetContextProviding *)self->_coverSheetContext modalHomeAffordanceController];
        [(CSDismissableModalViewController *)v8 setHomeAffordanceController:v29];
      }

      [(CSDismissableModalViewController *)v8 setDelegate:self->_remoteContentModalViewController];
      [(CSCoverSheetViewController *)self _presentModalViewController:v8 shouldDismissOverlays:0 animated:1 completion:0];
      v22 = SBLogDashBoard();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v6 sessionID];
        v30 = self->_remoteContentModalViewController;
        v31 = 138543618;
        v32 = v23;
        v33 = 2114;
        v34 = v30;
        goto LABEL_40;
      }
    }

    v10 = 1;
    goto LABEL_6;
  }

  v8 = SBLogDashBoard();
  if (os_log_type_enabled(&v8->super.super.super.super.super, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    v9 = "[CSCSVC][RemoteContent] remote content existed";
LABEL_4:
    _os_log_impl(&dword_21EB05000, &v8->super.super.super.super.super, OS_LOG_TYPE_DEFAULT, v9, &v31, 2u);
  }

LABEL_5:
  v10 = 0;
LABEL_6:

LABEL_7:
  return v10;
}

- (BOOL)remoteContentSession:(id)a3 dismissWithReason:(int64_t)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 sessionID];
    v11 = NSStringFromSBSRemoteContentDismissType();
    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_INFO, "[CSCSVC][RemoteContent] Dismiss remote content session %{public}@ for reason %{pubic}@", &v16, 0x16u);
  }

  remoteContentSessionManager = self->_remoteContentSessionManager;
  v13 = [v7 sessionID];
  [(CSRemoteContentSessionManager *)remoteContentSessionManager didInvalidateSessionWithSessionID:v13];

  v14 = [(CSCoverSheetViewController *)self _removeRemoteViewControllerForInvalidatedSession:v7 completion:v8];
  return v14;
}

- (void)remoteContentSession:(id)a3 didInvalidateWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 sessionID];
    v10 = [v7 descriptionWithMultilinePrefix:0];
    *buf = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_INFO, "[CSCSVC][RemoteContent] Invalidate remote content session %{public}@ for error: %{pubic}@", buf, 0x16u);
  }

  remoteContentSessionManager = self->_remoteContentSessionManager;
  v12 = [v6 sessionID];
  [(CSRemoteContentSessionManager *)remoteContentSessionManager didInvalidateSessionWithSessionID:v12];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__CSCoverSheetViewController_remoteContentSession_didInvalidateWithError___block_invoke;
  v14[3] = &unk_27838B838;
  v15 = v7;
  v16 = self;
  v13 = v7;
  [(CSCoverSheetViewController *)self _removeRemoteViewControllerForInvalidatedSession:v6 completion:v14];
}

void __74__CSCoverSheetViewController_remoteContentSession_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && ([v2 domain], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"CSRemoteContentSessionErrorDomain"), v3, v4))
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) descriptionWithMultilinePrefix:0];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_INFO, "[CSCSVC][RemoteContent] Not re-adding remote content view given error: %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 40);

    [v7 _addOrRemoveRemoteContentViewIfNecessary];
  }
}

- (void)remoteContentDidUpdateStyle
{
  v3 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
  v4 = [(CSCoverSheetViewController *)self _presentedModalViewControllerWithIdentifier:v3];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(CSRemoteContentModalViewController *)self->_remoteContentModalViewController shouldCaptureHomeGesture];
    v10 = SBLogDashBoard();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[ZStack-Participant] adding remote content modal home affordance for style update", buf, 2u);
      }

      v12 = [(CSCoverSheetContextProviding *)self->_coverSheetContext modalHomeAffordanceController];
      [v8 setHomeAffordanceController:v12];
    }

    else
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[ZStack-Participant] removing remote content modal home affordance for style update", v13, 2u);
      }

      [v8 setHomeAffordanceController:0];
    }
  }

  if ([(CSCoverSheetViewController *)self _isShowingInlineContent])
  {
    if ([(CSCoverSheetViewController *)self isShowingMediaControls]&& [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController shouldDismissInlineContentForNowPlaying])
    {
      [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:4];
    }

    else
    {
      [(CSCoverSheetViewController *)self _overrideNotificationDisplayStyleForInlineContent];
      [(CSMainPageContentViewController *)self->_mainPageContentViewController inlineContentDidChange];
    }
  }
}

- (double)remoteContentComplicationTopYInset
{
  v3 = [(CSCoverSheetViewController *)self _wouldComplicationsUseBottomPosition];
  result = 0.0;
  if (!v3)
  {
    return self->_portraitComplicationContainerHeight;
  }

  return result;
}

- (void)combinedListViewController:(id)a3 didChangeVisibleBreakthroughContent:(BOOL)a4
{
  v6 = [(CSCoverSheetViewController *)self _activeRemoteContentAssertion];

  if (v6 && !a4)
  {
    v7 = [(CSCoverSheetViewController *)self _hostedRemoteContentViewController];
    if (v7)
    {
    }

    else if ([(CSCoverSheetViewController *)self isInScreenOffMode])
    {
      v8 = SBLogDashBoard();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_INFO, "[CSCSVC][RemoteContent] Breakthrough content is gone and screen is off while sleep assertion is active; attempt to show remote content", v9, 2u);
      }

      [(CSCoverSheetViewController *)self _addOrRemoveRemoteContentViewIfNecessary];
    }
  }
}

- (void)didAddNewActivityItemSceneHostEnvironment
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 coverSheetViewControllerDidAddNewSceneHostEnvironment:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)activityItemsMayHaveChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 coverSheetViewControllerActivityItemsMayHaveChanged:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)preventsLaunchFromWidgetWithAction:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  v4 = [v3 areRestrictedCapabilities:0x1000000];

  return v4;
}

- (BOOL)widgetGridViewControllerShouldPreventLaunchFromWidget:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  v4 = [v3 areRestrictedCapabilities:0x1000000];

  return v4;
}

- (void)widgetGridViewControllerDidUpdateComplicationDescriptors
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  [v2 invalidateContentInsets];
}

- (void)actionManager:(id)a3 addedAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_embeddedContentActionManager == v6)
  {
    if (self->_isRemovingLockScreenContentAction)
    {
      v8 = SBLogDashBoard();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "[CSCSVC][RemoteContent] Pending removing remote content; not adding just yet", v9, 2u);
      }
    }

    else
    {
      [(CSCoverSheetViewController *)self _handleAddedAction];
    }
  }
}

- (void)_handleAddedAction
{
  [(CSCoverSheetViewController *)self _addOrRemoveRemoteContentViewIfNecessary];
  v4 = [(CSCoverSheetViewController *)self mainPageContentViewController];
  v3 = [v4 combinedListViewController];
  [v3 addVisibleBreakthroughContentObserver:self];
}

- (void)actionManager:(id)a3 removedAction:(id)a4
{
  if (self->_embeddedContentActionManager == a3)
  {
    v6 = [(CSCoverSheetViewController *)self mainPageContentViewController];
    v7 = [v6 combinedListViewController];
    [v7 removeVisibleBreakthroughContentObserver:self];

    [(CSCoverSheetViewController *)self _addOrRemoveRemoteContentViewIfNecessary];
  }
}

- (void)backgroundContentActionManager:(id)a3 addedAction:(id)a4
{
  if (self->_backgroundContentActionManager == a3)
  {
    [(CSCoverSheetViewController *)self _addBackgroundContentViewControllerForAction:a4];
  }
}

- (void)backgroundContentActionManager:(id)a3 removedAction:(id)a4
{
  if (self->_backgroundContentActionManager == a3)
  {
    [(CSCoverSheetViewController *)self _removeBackgroundContentViewController];
  }
}

- (void)didPostNotificationRequest:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
  v6 = [(CSCoverSheetViewController *)self _presentedModalViewControllerWithIdentifier:v5];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 presentedViewControllers];

  v12 = [v11 containsObject:self->_remoteContentModalViewController];
  if (v12)
  {
    v13 = [v4 sectionIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.cmas"];

    v15 = [v4 interruptionLevel];
    if ([v4 isCriticalAlert])
    {
      v16 = 1;
    }

    else if (v15 > 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v22 = [(CSRemoteContentModalViewController *)self->_remoteContentModalViewController suppressesDismissalForNotification];
    v23 = v22;
    if ((v16 & 1) != 0 || !v22)
    {
      v18 = SBLogDashBoard();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 67240448;
        v24[1] = v16;
        v25 = 1026;
        v26 = v23;
        v19 = "[CSCSVC][RemoteContent] Dismissing modal due to notification isBreakthrough: %{public}d, suppressDismissal: %{public}d";
        v20 = v18;
        v21 = 14;
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else
  {
    remoteContentInlineViewController = self->_remoteContentInlineViewController;
    if (remoteContentInlineViewController && ![(CSRemoteContentInlineViewController *)remoteContentInlineViewController suppressesDismissalForNotification])
    {
      v18 = SBLogDashBoard();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        v19 = "[CSCSVC][RemoteContent] Dismissing inline due to notification";
        v20 = v18;
        v21 = 2;
LABEL_20:
        _os_log_impl(&dword_21EB05000, v20, OS_LOG_TYPE_DEFAULT, v19, v24, v21);
      }

LABEL_21:

      [(CSCoverSheetViewController *)self _dismissRemoteViewControllerForReason:4];
    }
  }
}

- (void)combinedListViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 coverSheetViewControllerDidUpdateAudioCategoriesDisablingVolumeHUD:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)connectedDevicesDidChange:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v4;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v53;
    v8 = *MEMORY[0x277D66EE0] * 0.8;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        if ([v10 isPowerSource])
        {
          if (([v10 isInternal] & 1) == 0)
          {
            if ([(CSCoverSheetViewController *)self _isAppleMagSafePack:v10])
            {
              v11 = [v10 identifier];
              v12 = [(CSCoverSheetViewController *)self _containsCachedBatteryDeviceWithIdenfifier:v11];

              if (!v12)
              {
                [v42 addObject:v10];
              }
            }
          }
        }

        if ([v10 isInternal])
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v13 = self->_cachedBatteryDevices;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v49;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v49 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v48 + 1) + 8 * j);
                if ([v18 isInternal])
                {
                  v19 = [v18 percentCharge];
                  v20 = [v10 percentCharge];

                  if (v19 != v20)
                  {
                    v21 = [(BSAbsoluteMachTimer *)self->_chargingViewControllerTimer identifier];
                    v22 = [v21 isEqualToString:@"CSCoverSheetViewController.chargingViewControllerTimer.subtitleOnly"];

                    if (v22)
                    {
                      [(CSCoverSheetViewController *)self _showChargingSubtitleWithTimeout:v8];
                    }
                  }

                  goto LABEL_24;
                }
              }

              v15 = [(NSArray *)v13 countByEnumeratingWithState:&v48 objects:v59 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_24:
        ;
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v6);
  }

  if ([v42 count])
  {
    v23 = SBLogDashBoard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109120;
      v58 = v24;
      _os_log_impl(&dword_21EB05000, v23, OS_LOG_TYPE_DEFAULT, "[Charge UI][Novel Packs] visible YES, showBattery YES – isAlreadyShowingChargingModal: %d", buf, 8u);
    }

    [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:1 suppressedByPack:0 showBattery:1 animated:1];
    v25 = SBLogDashBoard();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109120;
      v58 = v26;
      _os_log_impl(&dword_21EB05000, v25, OS_LOG_TYPE_DEFAULT, "[Charge UI][Novel Packs] – endedShowingChargingModal: %d", buf, 8u);
    }
  }

  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [(BCBatteryDeviceController *)self->_batteryDeviceController connectedDevices];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = self->_cachedBatteryDevices;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v44 + 1) + 8 * k);
        if ([(CSCoverSheetViewController *)self _isAppleMagSafePack:v34])
        {
          v35 = [v34 identifier];
          v36 = [(CSCoverSheetViewController *)self _batteryCollection:v28 containsDeviceWithIdentifier:v35];

          if (!v36)
          {
            [v27 addObject:v34];
          }
        }
      }

      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v31);
  }

  if ([v27 count])
  {
    v37 = SBLogDashBoard();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109120;
      v58 = v38;
      _os_log_impl(&dword_21EB05000, v37, OS_LOG_TYPE_DEFAULT, "[Charge UI][Removed Packs] visible YES, showBattery NO – isAlreadyShowingChargingModal: %d", buf, 8u);
    }

    [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:1 suppressedByPack:0 showBattery:0 animated:1];
    v39 = SBLogDashBoard();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109120;
      v58 = v40;
      _os_log_impl(&dword_21EB05000, v39, OS_LOG_TYPE_DEFAULT, "[Charge UI][Removed Packs] – endedShowingChargingModal: %d", buf, 8u);
    }
  }

  cachedBatteryDevices = self->_cachedBatteryDevices;
  self->_cachedBatteryDevices = obj;
}

- (BOOL)_batteryCollection:(id)a3 containsDeviceWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) identifier];
        v12 = [v11 isEqualToString:v6];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)_isAppleMagSafePack:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 productIdentifier];
  return v3 == *MEMORY[0x277CF0DB8] || v3 == *MEMORY[0x277CF0DC0];
}

- (void)proudLockDidChangeToCoachingText:(id)a3
{
  v4 = [a3 copy];
  currentCoachingString = self->_currentCoachingString;
  self->_currentCoachingString = v4;

  [(CSCoverSheetViewController *)self _updateCoachingString];
}

- (void)_updateCoachingStringWithTimeout:(double)a3
{
  dateViewController = self->_dateViewController;
  v5 = [(CSCoverSheetViewController *)self _coachingStringToUse];
  [(SBFLockScreenDateViewController *)dateViewController setCustomSubtitle:v5 withPriority:1 withTimeout:a3];
}

- (void)scrollablePageViewController:(id)a3 scrollViewWillBeginDragging:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
  [WeakRetained scrollViewWillBeginDragging:v6];

  v11 = [(CSCoverSheetViewController *)self mainPageContentViewController];

  if (v11 == v7)
  {
    v9 = [(CSCoverSheetViewController *)self _isShowingInlineContent];

    if (v9)
    {
      remoteContentInlineViewController = self->_remoteContentInlineViewController;

      [(CSRemoteContentInlineViewController *)remoteContentInlineViewController beginCancelTouchesForCurrentEventInHostedContent];
    }
  }

  else
  {
  }
}

- (void)scrollablePageViewController:(id)a3 scrollViewDidScroll:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
  [WeakRetained scrollViewDidScroll:v5];
}

- (void)scrollablePageViewController:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetSpotlightPresenter);
  [WeakRetained scrollViewWillEndDragging:v9 withVelocity:{x, y}];

  mainPageContentViewController = self->_mainPageContentViewController;
  if (mainPageContentViewController == v10)
  {
    if ([(CSCoverSheetViewController *)self _isShowingInlineContent])
    {
      [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController endCancelTouchesForCurrentEventInHostedContent];
      v13 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
      v14 = [v13 isNotificationListSignificantlyScrolled];

      if (v14)
      {

        [(CSCoverSheetViewController *)self _dismissInlineContentOnSignificantScroll];
      }
    }
  }
}

- (BOOL)spotlightPresenterAllowsPullToSearch:(id)a3
{
  if ([(CSCoverSheetViewController *)self _canPresentSwipeDismissableModal])
  {
    if ([(CSCoverSheetViewController *)self _isSpotlightBehaviorRestricted])
    {
      v4 = SBLogSpotlight();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v5 = "Disallowing Spotlight presentation over CoverSheet: restricted";
        v6 = &v17;
LABEL_7:
        _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      }
    }

    else
    {
      v8 = [(CSCoverSheetContextProviding *)self->_coverSheetContext screenStateProvider];
      v9 = [v8 screenIsOn];

      if ((v9 & 1) == 0)
      {
        v4 = SBLogSpotlight();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v16 = 0;
        v5 = "Disallowing Spotlight presentation over CoverSheet: screen off";
        v6 = &v16;
        goto LABEL_7;
      }

      v10 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
      v11 = [v10 isScrollingListContent];

      if (v11)
      {
        v4 = SBLogSpotlight();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v15 = 0;
        v5 = "Disallowing Spotlight presentation over CoverSheet: scrolling";
        v6 = &v15;
        goto LABEL_7;
      }

      v12 = [MEMORY[0x277D262A0] sharedConnection];
      v13 = [v12 isSpotlightAllowed];

      if (v13)
      {
        return 1;
      }

      v4 = SBLogSpotlight();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v5 = "Disallowing Spotlight presentation over CoverSheet: disallowed by ManagedConfiguration";
        v6 = &v14;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = SBLogSpotlight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Disallowing Spotlight presentation over CoverSheet: cannot present modal";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_8:

  return 0;
}

- (BOOL)_isSpotlightBehaviorRestricted
{
  v2 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v2 areRestrictedCapabilities:0x200000];

  return v3;
}

- (void)spotlightPresenter:(id)a3 presentDismissableModalViewController:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(NSMutableArray *)self->_exemptFromInactiveAppearanceParticipants addObject:self->_mainPageContentViewController];
  if (!self->_spotlightModalViewController)
  {
    v9 = objc_alloc_init(CSDismissableModalViewController);
    spotlightModalViewController = self->_spotlightModalViewController;
    self->_spotlightModalViewController = v9;

    [(CSPresentationViewController *)self->_spotlightModalViewController presentContentViewController:v7 animated:0];
    v11 = SBLogDashBoard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[ZStack-Participant] adding spotlight modal home affordance", v14, 2u);
    }

    v12 = self->_spotlightModalViewController;
    v13 = [(CSCoverSheetContextProviding *)self->_coverSheetContext modalHomeAffordanceController];
    [(CSDismissableModalViewController *)v12 setHomeAffordanceController:v13];

    [(CSDismissableModalViewController *)self->_spotlightModalViewController setDelegate:v7];
    [(CSCoverSheetViewController *)self _presentModalViewController:self->_spotlightModalViewController animated:0 completion:v8];
  }
}

- (void)spotlightPresenterDidPresentSearch:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 coverSheetViewControllerDidPresentSearch:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)spotlightPresenter:(id)a3 dismissDismissableModalViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(NSMutableArray *)self->_exemptFromInactiveAppearanceParticipants removeObject:self->_mainPageContentViewController];
  [(CSDismissableModalViewController *)self->_spotlightModalViewController setHomeAffordanceController:0];
  objc_initWeak(&location, self);
  spotlightModalViewController = self->_spotlightModalViewController;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__CSCoverSheetViewController_spotlightPresenter_dismissDismissableModalViewController_animated_completion___block_invoke;
  v15[3] = &unk_27838C088;
  v14 = v12;
  v16 = v14;
  objc_copyWeak(&v17, &location);
  [(CSCoverSheetViewController *)self _dismissModalViewController:spotlightModalViewController animated:v7 completion:v15];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __107__CSCoverSheetViewController_spotlightPresenter_dismissDismissableModalViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained[222];
    WeakRetained[222] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

- (void)spotlightPresenterDidDismissSearch:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_observers copy:a3];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 coverSheetViewControllerDidDismissSearch:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)spotlightPresenterAddContentView:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 addContentView];
}

- (void)spotlightPresenterRemoveContentView:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 removeContentView];
}

- (id)displayConfigurationForSpotlightPresenter:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  v4 = [v3 _sbDisplayConfiguration];

  return v4;
}

- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = [(CSCoverSheetViewController *)self delegate];
    [v6 coverSheetViewController:self startSpotlightInteractiveGestureTransactionForGesture:v5];
  }

  v7 = [(CSCoverSheetViewController *)self coverSheetView];
  [v7 addContentView];

  v8 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  [v8 setResignActive:1];
}

- (void)searchGesture:(id)a3 changedPercentComplete:(double)a4
{
  v8 = a3;
  if ([v8 isTracking])
  {
    if (self->_spotlightInteractiveGestureTransaction || (-[CSCoverSheetViewController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 coverSheetViewController:self startSpotlightInteractiveGestureTransactionForGesture:v8], v6, self->_spotlightInteractiveGestureTransaction))
    {
      [objc_opt_class() searchHeaderHeight];
      [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)self->_spotlightInteractiveGestureTransaction updatePresentationWithProgress:a4 translation:v7 * a4];
    }
  }
}

- (void)searchGesture:(id)a3 endedGesture:(BOOL)a4
{
  spotlightInteractiveGestureTransaction = self->_spotlightInteractiveGestureTransaction;
  if (spotlightInteractiveGestureTransaction)
  {
    [(SBSpotlightTransientOverlayInteractiveGestureTransaction *)spotlightInteractiveGestureTransaction endPresentation:a4];
  }
}

- (void)searchGesture:(id)a3 completedShowing:(BOOL)a4
{
  [a3 resetAnimated:{0, a4}];
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  [v5 removeContentView];

  localAppearance = self->_localAppearance;
  v7 = [(CSAppearance *)localAppearance componentForType:1 identifier:@"Spotlight"];
  [(CSAppearance *)localAppearance removeComponent:v7];

  v8 = self->_localAppearance;
  v9 = [(CSAppearance *)v8 componentForType:11 identifier:@"Spotlight"];
  [(CSAppearance *)v8 removeComponent:v9];

  v10 = self->_localAppearance;
  v11 = [(CSAppearance *)v10 componentForType:15 identifier:@"Spotlight"];
  [(CSAppearance *)v10 removeComponent:v11];

  v12 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  [v12 setResignActive:0];
}

- (void)setSearchGesture:(id)a3
{
  objc_storeStrong(&self->_searchGesture, a3);
  v5 = a3;
  [v5 addObserver:self];
}

- (void)_setupSearchGesture
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 setSearchGesture:self->_searchGesture];
}

- (BOOL)searchGestureShouldRecognize:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
  {
    v6 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v7 = [v6 isScrollingListContent];
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  if (![(CSCoverSheetViewController *)self _isSpotlightBehaviorRestricted]&& (v7 & 1) == 0)
  {
    v8 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v9 = [v8 notificationListScrollView];

    [v9 contentOffset];
    v11 = v10;
    [v9 contentInset];
    v13 = fabs(v11 + v12);

    if (v13 <= 1.0)
    {
      return 1;
    }
  }

  return result;
}

- (void)combinedListViewController:(id)a3 didUpdateVisibleNotificationCount:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy:a3];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 coverSheetViewController:self didUpdateVisibleNotificationCount:a4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)ambientPresentationController:(id)a3 didUpdatePresented:(BOOL)a4
{
  v4 = a4;
  if (self->_isAmbientOverlayPresented != a4)
  {
    self->_isAmbientOverlayPresented = a4;
    if (!a4)
    {
      remoteContentInlineViewController = self->_remoteContentInlineViewController;
      if (remoteContentInlineViewController)
      {
        v7 = [(CSRemoteContentInlineViewController *)remoteContentInlineViewController hostViewController];
        [v7 hostDidChangeContentBounds];

        [(CSCoverSheetViewController *)self _updateRemoteContentInlineHorizontalMargin];
      }
    }
  }

  [(CSNotificationDispatcher *)self->_notificationDispatcher setBannerDestinationUnavailable:v4 forReason:@"CSCoverSheetViewController-Ambient"];

  [(CSCoverSheetViewController *)self _setSuppressChargingUIForAmbient:v4];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__CSCoverSheetViewController_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_27838B838;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __75__CSCoverSheetViewController_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 1824)];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _validateAndUpdateInlineComplication];
  }

  return result;
}

- (id)_windowsFromViewControllers:(id)a3
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(CSCoverSheetViewController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    [v4 addObject:v6];
  }

  return v4;
}

- (id)_activeViewControllers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:self->_lastSettledPageIndex];
  if ([v4 participantState] == 2)
  {
    [v3 addObject:v4];
  }

  if ([(CSPresentationViewController *)self->_modalPresentationController participantState]== 2)
  {
    [v3 addObject:self->_modalPresentationController];
  }

  return v3;
}

- (BOOL)_gestureRecognizer:(id)a3 isLocatedOverHorizontalContentRegionInViewController:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 view];
  _UISystemGestureLocationInView();
  v9 = v8;
  v11 = v10;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v6 presentationRegions];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([v16 isReservedForHorizontalScrolling])
        {
          [v16 convertPoint:v7 fromCoordinateSpace:{v9, v11}];
          v18 = v17;
          v20 = v19;
          [v16 extent];
          v28.x = v18;
          v28.y = v20;
          if (CGRectContainsPoint(v29, v28))
          {
            LOBYTE(v13) = 1;
            goto LABEL_12;
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v13;
}

- (BOOL)_overSlidingControlForLocation:(CGPoint)a3 inView:(id)a4
{
  v4 = [a4 hitTest:0 withEvent:{a3.x, a3.y}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_isSourceForHorizontalScrolling:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  v6 = v5 == v4;

  return v6;
}

- (BOOL)_isSlideableContentOffsetOnscreen:(CGPoint)a3
{
  y = a3.y;
  v4 = [(CSCoverSheetViewController *)self coverSheetView];
  [v4 bounds];
  v6 = v5;

  return y > -v6;
}

- (void)_beginAppearanceTransitionForPageViewControllersToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v7 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__CSCoverSheetViewController__beginAppearanceTransitionForPageViewControllersToVisible_animated___block_invoke;
  v8[3] = &unk_27838C0B0;
  v8[4] = self;
  v9 = a3;
  v10 = a4;
  [v7 enumerateObjectsUsingBlock:v8];
}

uint64_t __97__CSCoverSheetViewController__beginAppearanceTransitionForPageViewControllersToVisible_animated___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4[256] == a3)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return [v4 bs_beginAppearanceTransitionForChildViewController:a2 toVisible:v5 & 1 animated:*(a1 + 41)];
}

- (void)_endAppearanceTransitionForPageViewControllersToVisible:(BOOL)a3
{
  v5 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__CSCoverSheetViewController__endAppearanceTransitionForPageViewControllersToVisible___block_invoke;
  v6[3] = &unk_27838C0D8;
  v6[4] = self;
  v7 = a3;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __86__CSCoverSheetViewController__endAppearanceTransitionForPageViewControllersToVisible___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3[256] == a3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [v3 bs_endAppearanceTransitionForChildViewController:v5 toVisible:v4 & 1];
  [v5 didTransitionToVisible:v4 & 1];
}

- (double)_dateViewAlphaForCurrentWakeState
{
  v2 = [MEMORY[0x277D65FB8] rootSettings];
  [v2 awakeDateAlpha];
  v4 = v3;

  return v4;
}

- (BOOL)_isKnownTransitionConflictFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 isMemberOfClass:objc_opt_class()];

  v8 = v7 && ([v5 isMemberOfClass:objc_opt_class()] & 1) != 0;
  return v8;
}

- (BOOL)_canPresentSwipeDismissableModal
{
  v3 = [(CSCoverSheetViewController *)self visiblePageViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CSCoverSheetViewController *)self modalPresentationController];
  v5 = [v4 _appearState] == 0;

  return v5;
}

- (double)_wallpaperLumaFromWallpaperComponent:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self wallpaperLegibilityEnvironment];
  v6 = [v5 legibilityEnvironmentContextForVariant:*MEMORY[0x277D3EF20]];

  if (v6)
  {
    [v6 luma];
    v8 = v7;
  }

  else
  {
    v9 = [v4 color];
    [v9 _luminance];
    v8 = v10;
  }

  return v8;
}

- (void)_updateGlassContentInterfaceStyle
{
  v19 = [(CSCoverSheetViewController *)self activeAppearance];
  v3 = [v19 componentForType:6 identifier:@"(active)"];
  if (v3)
  {
    [(CSCoverSheetViewController *)self _wallpaperLumaFromWallpaperComponent:v3];
    v5 = v4;
    v6 = SBUIGlassContentInterfaceStyleFromLuminance();
    if (v6 == 1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (UIViewGlassGetLegibilitySetting())
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = [(CSCoverSheetViewController *)self mainPageContentViewController];
    v10 = [v9 combinedListViewController];
    [v10 updateGlassContentInterfaceStyle:v8 glassLuminanceValue:v7 wallpaperLuminanceValue:v5];

    v11 = [(CSQuickActionsViewController *)self->_quickActionsViewController quickActionsView];
    [v11 setGlassLuminanceValue:v7];

    v12 = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
    v13 = [v12 prominentDisplayViewController];

    v14 = [v13 titleContentStyle];
    v15 = [v14 type];
    v16 = 2;
    if (v15 == 5)
    {
      v16 = v6;
    }

    if ((v15 - 4) < 0xFFFFFFFFFFFFFFFELL)
    {
      v6 = v16;
    }

    v17 = [(CSCoverSheetViewController *)self coverSheetView];
    v18 = [v17 dateView];
    [v18 setTimeGlassInterfaceStyle:v6];
  }
}

- (void)_setPageViewControllers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_pageViewControllers != v5)
  {
    objc_storeStrong(&self->_pageViewControllers, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_pageViewControllers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setPresenter:{self, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setMainPageContentViewController:(id)a3
{
  v5 = a3;
  mainPageContentViewController = self->_mainPageContentViewController;
  if (mainPageContentViewController != v5)
  {
    v28 = v5;
    v7 = [(CSMainPageContentViewController *)mainPageContentViewController combinedListViewController];
    [(CSCoverSheetViewController *)self removeCoverSheetObserver:v7];

    objc_storeStrong(&self->_mainPageContentViewController, a3);
    [(CSMainPageContentViewController *)self->_mainPageContentViewController setUserPresenceMonitor:self->_userPresenceMonitor];
    v8 = self->_mainPageContentViewController;
    v9 = [(CSCoverSheetContextProviding *)self->_coverSheetContext touchEnvironmentStatusProvider];
    [(CSMainPageContentViewController *)v8 setTouchEnvironmentStatusProvider:v9];

    v10 = self->_mainPageContentViewController;
    v11 = [(CSCoverSheetContextProviding *)self->_coverSheetContext userSessionController];
    [(CSMainPageContentViewController *)v10 setUserSessionController:v11];

    v12 = self->_mainPageContentViewController;
    WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);
    [(CSMainPageContentViewController *)v12 setWallpaperColorProvider:WeakRetained];

    v14 = self->_mainPageContentViewController;
    v15 = [(CSCoverSheetContextProviding *)self->_coverSheetContext wallpaperProvider];
    [(CSMainPageContentViewController *)v14 setWallpaperProvider:v15];

    [(CSMainPageContentViewController *)self->_mainPageContentViewController setMediaControlsObserver:self];
    [(CSMainPageContentViewController *)self->_mainPageContentViewController setNotificationObserver:self];
    [(CSMainPageContentViewController *)self->_mainPageContentViewController setComplicationGridLayoutMetricsProvider:self];
    [(CSMainPageContentViewController *)self->_mainPageContentViewController setDiagnosticsProvider:self];
    [(CSMainPageContentViewController *)self->_mainPageContentViewController setDelegate:self];
    v16 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v17 = [(CSCoverSheetContextProviding *)self->_coverSheetContext applicationInformer];
    [v16 setApplicationInformer:v17];

    v18 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationStatusProvider];
    [v16 setAuthenticationStatusProvider:v18];

    v19 = [(CSCoverSheetContextProviding *)self->_coverSheetContext homeAffordanceController];
    [v16 setHomeAffordanceController:v19];

    v20 = [(CSCoverSheetContextProviding *)self->_coverSheetContext platterHomeGestureManager];
    [v16 setPlatterHomeGestureManager:v20];

    v21 = [(CSCoverSheetContextProviding *)self->_coverSheetContext notificationPresenter];
    [v16 setNotificationPresenter:v21];

    v22 = [(CSCoverSheetContextProviding *)self->_coverSheetContext unlockRequester];
    [v16 setUnlockRequester:v22];

    v23 = [(CSCoverSheetContextProviding *)self->_coverSheetContext contentActionProvider];
    [v16 setContentActionProvider:v23];

    v24 = [(CSCoverSheetContextProviding *)self->_coverSheetContext proximitySensorProvider];
    [v16 setProximitySensorProvider:v24];

    v25 = [(CSCoverSheetContextProviding *)self->_coverSheetContext deviceOrientationProvider];
    [v16 setDeviceOrientationProvider:v25];

    [v16 setRemoteContentInlineProvider:self];
    [v16 setCoverSheetViewPresenting:self];
    [v16 setNotificationObserver:self];
    if ([(CSCoverSheetViewController *)self isInScreenOffMode])
    {
      v26 = 25;
    }

    else
    {
      v26 = 24;
    }

    v27 = [CSEvent eventWithType:v26];
    [v16 handleEvent:v27];
    [(CSCoverSheetViewController *)self addCoverSheetObserver:v16];

    v5 = v28;
  }

  MEMORY[0x2821F96F8](mainPageContentViewController, v5);
}

- (void)setCurrentTransitionSource:(id)a3
{
  v5 = a3;
  if (self->_currentTransitionSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentTransitionSource, a3);
    [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"setCurrentTransitionSource"];
    [(CSCoverSheetViewController *)self _setLockOrientationWhileTransitioning:self->_currentTransitionSource != 0];
    v5 = v6;
  }
}

- (void)_setLockOrientationWhileTransitioning:(BOOL)a3
{
  if (self->_lockOrientationWhileTransitioning != a3)
  {
    self->_lockOrientationWhileTransitioning = a3;
    [(CSCoverSheetViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)_setSuppressChargingUIForAmbient:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_suppressChargingUIForAmbient != a3)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      suppressChargingUIForAmbient = self->_suppressChargingUIForAmbient;
      v7[0] = 67109120;
      v7[1] = suppressChargingUIForAmbient;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Updating charging UI suppression for ambient presentation [ suppressed : %{BOOL}d ]", v7, 8u);
    }

    self->_suppressChargingUIForAmbient = a3;
  }
}

- (void)activatePage:(unint64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __67__CSCoverSheetViewController_activatePage_animated_withCompletion___block_invoke;
    v14 = &unk_27838BE40;
    v15 = self;
    v17 = a3;
    v18 = v5;
    v16 = v8;
    v10 = MEMORY[0x223D698D0](&v11);
    if ([(CSCoverSheetViewController *)self isPasscodeLockVisible:v11])
    {
      [(CSCoverSheetViewController *)self setPasscodeLockVisible:0 animated:v5 completion:v10];
    }

    else
    {
      v10[2](v10);
    }
  }
}

void __67__CSCoverSheetViewController_activatePage_animated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetView];
  [v2 scrollToPageAtIndex:*(a1 + 48) animated:*(a1 + 56) withCompletion:*(a1 + 40)];
}

- (id)pageViewControllerAtIndex:(unint64_t)a3
{
  v4 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
  }

  return v5;
}

- (void)_loadViewsForRestrictedPagesIfPossible
{
  OUTLINED_FUNCTION_7();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addVisiblePageViewController:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
    v22 = 138543362;
    v23 = v6;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Adding visible page view controller, current allowed page view controllers: %{public}@", &v22, 0xCu);
  }

  v7 = [(CSCoverSheetViewController *)self pageViewControllers];
  v8 = [v7 indexOfObject:v4];

  v9 = 0;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
      v12 = [(CSCoverSheetViewController *)self pageViewControllers];
      v13 = [v12 objectAtIndex:i];
      v14 = [v11 containsObject:v13];

      v9 += v14;
    }
  }

  v15 = MEMORY[0x277CBEB18];
  v16 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v17 = [v15 arrayWithArray:v16];

  [v17 insertObject:v4 atIndex:v9];
  [(CSCoverSheetViewController *)self _setAllowedPageViewControllers:v17];
  [(CSCoverSheetViewController *)self addChildViewController:v4];
  v18 = [(CSCoverSheetViewController *)self view];
  v19 = [v4 view];
  [v18 addSubview:v19];

  [v4 didMoveToParentViewController:self];
  [v4 setCoverSheetViewController:self];
  [v4 setLayoutStrategy:self->_layoutStrategy];
  if (objc_opt_respondsToSelector())
  {
    [(NSHashTable *)self->_applicationHosters addObject:v4];
  }

  v20 = SBLogDashBoard();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
    v22 = 138543362;
    v23 = v21;
    _os_log_impl(&dword_21EB05000, v20, OS_LOG_TYPE_DEFAULT, "Finished adding visible page view controller, current allowed page view controllers: %{public}@", &v22, 0xCu);
  }
}

- (void)_removeAllowedPageViewController:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Removing allowed page view controller, current allowed page view controllers: %{public}@", &v14, 0xCu);
  }

  v7 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v8 = [v7 indexOfObject:v4];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CSCoverSheetViewController _removeAllowedPageViewController:?];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
    v9 = [v10 arrayWithArray:v11];

    [v9 removeObjectAtIndex:v8];
    [(CSCoverSheetViewController *)self _setAllowedPageViewControllers:v9];
    [(CSCoverSheetViewController *)self bs_removeChildViewController:v4];
    [v4 setCoverSheetViewController:0];
    [v4 setLayoutStrategy:0];
    if (objc_opt_respondsToSelector())
    {
      [(NSHashTable *)self->_applicationHosters removeObject:v4];
    }

    v12 = SBLogDashBoard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "Finished removing allowed page view controller, current allowed page view controllers: %{public}@", &v14, 0xCu);
    }
  }
}

- (id)_eligiblePageViewControllers
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(CSCoverSheetViewController *)self pageViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [objc_opt_class() isAvailableForConfiguration];
        v10 = [objc_opt_class() requiredCapabilities];
        if (v9 && (v11 = v10, -[CSCoverSheetViewController activeBehavior](self, "activeBehavior"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 restrictedCapabilities] & v11, v12, !v13))
        {
          [v20 addObject:v8];
        }

        else
        {
          v14 = SBLogDashBoard();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v8 pageRole];
            v16 = [(CSCoverSheetViewController *)self activeBehavior];
            v17 = [v16 restrictedCapabilities];
            *buf = 138412802;
            v26 = v15;
            v27 = 1024;
            v28 = v9;
            v29 = 2048;
            v30 = v17;
            _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "Not including page: %@, visibleRegardless: %d, restrictedCapabilities: %lu", buf, 0x1Cu);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v18 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
      v5 = v18;
    }

    while (v18);
  }

  return v20;
}

- (void)_updateVisibilityForPageViewControllersWithVisiblePageViewController:(id)a3
{
  v5 = a3;
  if ([(CSCoverSheetViewController *)self isTransitioning])
  {
    [CSCoverSheetViewController _updateVisibilityForPageViewControllersWithVisiblePageViewController:a2];
  }

  v6 = [(CSCoverSheetViewController *)self coverSheetView];
  v7 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v8 = [v7 indexOfObject:v5];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(CSCoverSheetViewController *)self _indexOfMainPage];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [CSCoverSheetViewController _updateVisibilityForPageViewControllersWithVisiblePageViewController:a2];
    }
  }

  v9 = v8;
  [(CSCoverSheetViewController *)self _setLastSettledPageIndex:v8];
  v10 = SBLogDashBoard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Updating page visibility...", buf, 2u);
  }

  v11 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__CSCoverSheetViewController__updateVisibilityForPageViewControllersWithVisiblePageViewController___block_invoke;
  v22[3] = &unk_27838C100;
  v12 = v11;
  v23 = v12;
  [v7 enumerateObjectsUsingBlock:v22];
  [v6 setPageViews:v12];
  v13 = [(CSPageViewController *)self->_mainPageContentViewController view];
  [v6 setMainPageView:v13];

  [v6 scrollToPageAtIndex:v9 animated:0 withCompletion:0];
  v14 = [(CSFixedFooterViewController *)self->_fixedFooterViewController fixedFooterView];
  v15 = [v14 pageControl];
  [v15 setCameraPageIndex:{-[CSCoverSheetViewController _indexOfCameraPage](self, "_indexOfCameraPage")}];

  if (![(CSCoverSheetViewController *)self isTransitioning])
  {
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    *&v16 = v9;
    *&v17 = v9;
    *(&v16 + 1) = 1;
    *(&v17 + 1) = 1;
    [(CSCoverSheetViewController *)self transitionSource:self willBeginWithType:2, CSCoverSheetTransitionContextMake(&v16, 1, buf).n128_f64[0]];
    v16 = *buf;
    v17 = v20;
    v18 = v21;
    [(CSCoverSheetViewController *)self transitionSource:self didUpdateTransitionWithContext:&v16];
    v16 = *buf;
    v17 = v20;
    v18 = v21;
    [(CSCoverSheetViewController *)self transitionSource:self didEndWithContext:&v16];
  }
}

void __99__CSCoverSheetViewController__updateVisibilityForPageViewControllersWithVisiblePageViewController___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 view];
  [v4 addObject:v5];

  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Allowed view controller: %@", &v9, 0xCu);
  }
}

- (unint64_t)_indexOfCameraPage
{
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  v4 = [v3 areRestrictedCapabilities:4];

  if (v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(CSCoverSheetViewController *)self _indexOfPageViewControllerForRole:@"CSPageViewControllerRoleCamera"];
}

- (unint64_t)_indexOfPageViewControllerForRole:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CSCoverSheetViewController__indexOfPageViewControllerForRole___block_invoke;
  v9[3] = &unk_27838C128;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__CSCoverSheetViewController__indexOfPageViewControllerForRole___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v9 pageRole];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (BOOL)_handleEventType:(int64_t)a3
{
  if (CSEventIsButtonType(a3) && !CSCoverSheetEventIsVolumeOrHeadsetButtonType(a3) && ([(CSCoverSheetViewController *)self isInScreenOffMode]|| [(CSCoverSheetViewController *)self _isWakeAnimationInProgress]|| [(CSCoverSheetViewController *)self isTransitioningInteractively]))
  {
    return 0;
  }

  v5 = [CSEvent eventWithType:a3];
  v6 = [(CSCoverSheetViewController *)self _handleEvent:v5];

  return v6;
}

- (BOOL)_handleEvent:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isStateless] & 1) == 0 && -[CSCoverSheetViewController participantState](self, "participantState") != 2)
  {
LABEL_43:
    v36 = 0;
    goto LABEL_44;
  }

  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    *buf = 138412546;
    v49 = v6;
    v50 = 2112;
    v51 = v4;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "%@ Sending event: %@", buf, 0x16u);
  }

  if (![v4 isConsumable])
  {
    [(CSCoverSheetViewController *)self _updateNotificationClearingTriggerForEvent:v4];
    [(CSScrollGestureController *)self->_scrollGestureController handleEvent:v4];
    [(CSPresentationViewController *)self->_modalPresentationController handleEvent:v4];
    [(CSFixedFooterViewController *)self->_fixedFooterViewController handleEvent:v4];
    [(CSQuickActionsViewController *)self->_quickActionsViewController handleEvent:v4];
    [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController handleEvent:v4];
    [(CSProudLockViewController *)self->_proudLockViewController handleEvent:v4];
    [(CSPoseidonViewController *)self->_poseidonViewController handleEvent:v4];
    [(CSUserPresenceMonitor *)self->_userPresenceMonitor handleEvent:v4];
    [(CSFaceOcclusionMonitor *)self->_faceOcclusionMonitor handleEvent:v4];
    [(CSPosterSwitcherActivationManager *)self->_posterSwitcherActivationManager handleEvent:v4];
    [(CSBackgroundContentViewController *)self->_backgroundContentViewController handleEvent:v4];
    if ([(CSCoverSheetViewController *)self _isPresentingPosterSwitcher])
    {
      v7 = [(CSCoverSheetViewControllerBase *)self->_posterSwitcherViewController coverSheetIdentifier];
      v8 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v7];

      if (!v8)
      {
        [(CSPosterSwitcherViewController *)self->_posterSwitcherViewController handleEvent:v4];
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [(CSCoverSheetViewController *)self pageViewControllers];
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          [v14 handleEvent:v4];
          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v11);
    }

    v16 = [(NSHashTable *)self->_externalEventHandlers copy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v38 + 1) + 8 * j);
          v23 = objc_autoreleasePoolPush();
          if ([v22 participantState] == 2)
          {
            [v22 handleEvent:v4];
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v19);
    }

    v24 = SBLogDashBoard();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = _SBFLoggingMethodProem();
      *buf = 138412290;
      v49 = v25;
      _os_log_impl(&dword_21EB05000, v24, OS_LOG_TYPE_INFO, "%@ Event delivered.", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if ([(CSPresentationViewController *)self->_modalPresentationController participantState]!= 2)
  {
    v26 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:self->_lastSettledPageIndex];
    if (!v26)
    {
      goto LABEL_34;
    }

    v27 = v26;
    v28 = [v26 handleEvent:v4];

    if ((v28 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_33:
    v29 = 1;
    goto LABEL_39;
  }

  if ([(CSPresentationViewController *)self->_modalPresentationController handleEvent:v4])
  {
    goto LABEL_33;
  }

LABEL_34:
  v30 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
  v31 = v30;
  if (v30 && ([v30 presentationProgress], v32 > 0.0))
  {
    v29 = [v31 handleEvent:v4];
  }

  else
  {
    v29 = 0;
  }

LABEL_39:
  v33 = SBLogDashBoard();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = _SBFLoggingMethodProem();
    v35 = NSStringFromBOOL();
    *buf = 138412546;
    v49 = v34;
    v50 = 2112;
    v51 = v35;
    _os_log_impl(&dword_21EB05000, v33, OS_LOG_TYPE_INFO, "%@ Event handled = %@", buf, 0x16u);
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_43;
  }

  v36 = [v4 isConsumable];
LABEL_44:

  return v36;
}

- (void)_updateNotificationClearingTriggerForEvent:(id)a3
{
  if ([a3 type] == 37)
  {
    notificationClearingTrigger = self->_notificationClearingTrigger;

    [(CSNotificationClearingTrigger *)notificationClearingTrigger setDidDisableCarDNDUntilEndOfDrive:1];
  }
}

- (void)_updateLocalAppearanceForRequester:(id)a3 animationSettings:(id)a4 actions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CF0D38];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__CSCoverSheetViewController__updateLocalAppearanceForRequester_animationSettings_actions_completion___block_invoke;
  v19[3] = &unk_27838C150;
  v21 = self;
  v22 = v11;
  v20 = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__CSCoverSheetViewController__updateLocalAppearanceForRequester_animationSettings_actions_completion___block_invoke_2;
  v17[3] = &unk_27838BAC0;
  v18 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  [v13 animateWithSettings:a4 actions:v19 completion:v17];
}

uint64_t __102__CSCoverSheetViewController__updateLocalAppearanceForRequester_animationSettings_actions_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = (*(v2 + 16))(v2);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          [v8 setIdentifier:*(a1 + 32)];
          v9 = [*(a1 + 40) localAppearance];
          [v9 addComponent:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  return [*(a1 + 40) _updateActiveAppearanceForReason:*(a1 + 32)];
}

uint64_t __102__CSCoverSheetViewController__updateLocalAppearanceForRequester_animationSettings_actions_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_behaviorForParticipant:(id)a3
{
  v3 = a3;
  if ([v3 participantState] == 2)
  {
    v4 = [CSBehavior behaviorForProvider:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_appearanceForParticipant:(id)a3
{
  v3 = a3;
  if ([v3 participantState] == 2)
  {
    v4 = [CSAppearance appearanceForProvider:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_presentationForParticipant:(id)a3
{
  v3 = a3;
  if ([v3 participantState] == 2)
  {
    v4 = [CSPresentation presentationForProvider:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateAppearance:(id)a3 forComponentType:(int64_t)a4 shouldHide:(BOOL)a5
{
  v5 = a5;
  v14 = a3;
  v7 = [v14 componentForType:a4 identifier:@"CSPresentation"];
  v8 = v7;
  v9 = !v5;
  if (!v5 || v7)
  {
    if (!v7)
    {
      v9 = 0;
    }

    if (v9 == 1)
    {
      [v14 removeComponent:v7];
    }
  }

  else
  {
    v10 = [CSComponent componentWithType:a4];
    v11 = [v10 identifier:@"CSPresentation"];
    v12 = [v11 priority:10];
    v13 = [v12 hidden:1];

    [v14 addComponent:v13];
  }
}

- (BOOL)_shouldUpdateActiveAppearanceForReason:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self coverSheetView];
  if (-[CSCoverSheetViewController _appearState](self, "_appearState") && v5 && ([v5 scrollView], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "visiblePageRange"), v8 = v7, v6, v8))
  {
    if (!self->_preventAppearanceUpdatesForRotation)
    {
      v11 = 1;
      goto LABEL_11;
    }

    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      v10 = "Ignoring appearance update for %@ because we are in a rotation.";
LABEL_9:
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
    }
  }

  else
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      v10 = "Ignoring appearance update for %@ because we have no view.";
      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)__currentDesiredAppearanceWithStartIndex:(unint64_t *)a3 targetIndex:(unint64_t *)a4 targetAppearance:(id *)a5 targetPresentation:(id *)a6 modalAppearance:(id *)a7 proudLockAppearance:(id *)a8 poseidonAppearance:(id *)a9 backgroundContentAppearance:(id *)a10
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = [(CSCoverSheetViewController *)self coverSheetView];
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  [(CSCoverSheetViewController *)self transitionContext];
  v15 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:0.0];
  if (v15)
  {
    v52 = a3;
    v16 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:0.0];
    if (v16)
    {
      v49 = v16;
      v50 = v15;
      v48 = a7;
      v58 = [CSAppearance appearanceForProvider:v15];
      v19 = [CSPresentation presentationForProvider:v15];
      v20 = [v14 window];

      v54 = v19;
      if (v20)
      {
        v21 = [(CSCoverSheetViewController *)self view];
        v22 = [v21 window];
        v23 = [CSPresentation presentationWithCoordinateSpace:v22];

        [v23 setIdentifier:@"CSPresentation"];
        v24 = [(CSCoverSheetViewController *)self _presentationForParticipant:self->_modalPresentationController];
        [v23 unionPresentation:v24];

        [v23 unionPresentation:v19];
        v25 = [(CSCoverSheetViewController *)self externalPresentation];
        [v23 unionPresentation:v25];

        v26 = [(CSCoverSheetViewController *)self activePresentation];
        LOBYTE(v22) = [v23 isEqual:v26];

        if ((v22 & 1) == 0)
        {
          [(CSCoverSheetViewController *)self setActivePresentation:v23];
          [(CSCoverSheetViewController *)self _updateLocalAppearanceForPresentation];
          v27 = [(CSCoverSheetViewController *)self coverSheetView];
          v28 = [v27 regionsDebugView];
          [v23 regions];
          v30 = v29 = a6;
          [v28 setRegions:v30];

          a6 = v29;
          v31 = SBLogDashBoard();
          LODWORD(v28) = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

          if (v28)
          {
            v32 = SBLogDashBoard();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [CSCoverSheetViewController __currentDesiredAppearanceWithStartIndex:targetIndex:targetAppearance:targetPresentation:modalAppearance:proudLockAppearance:poseidonAppearance:backgroundContentAppearance:];
            }
          }
        }
      }

      v51 = v14;
      v17 = [CSAppearance appearanceWithIdentifier:@"(active)"];
      v33 = [(CSCoverSheetViewController *)self _appearanceForParticipant:self->_modalPresentationController];
      v34 = [(CSCoverSheetViewController *)self _appearanceForParticipant:self->_proudLockViewController];
      v35 = [(CSCoverSheetViewController *)self _appearanceForParticipant:self->_poseidonViewController];
      v36 = [(CSCoverSheetViewController *)self _appearanceForParticipant:self->_backgroundContentViewController];
      [v17 unionAppearance:v58];
      v37 = [(CSCoverSheetViewController *)self localAppearance];
      [v17 unionAppearance:v37];

      v53 = v33;
      [v17 unionAppearance:v33];
      [v17 unionAppearance:v34];
      [v17 unionAppearance:self->_teachableMomentsContainerViewController];
      [v17 unionAppearance:v35];
      [v17 unionAppearance:v36];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v38 = self->_externalAppearanceProviders;
      v39 = [(NSHashTable *)v38 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v60;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v60 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v59 + 1) + 8 * i);
            if ([v43 participantState] == 2)
            {
              [v17 unionAppearance:v43];
            }
          }

          v40 = [(NSHashTable *)v38 countByEnumeratingWithState:&v59 objects:v66 count:16];
        }

        while (v40);
      }

      if (v52)
      {
        *v52 = 0.0;
      }

      v16 = v49;
      if (a4)
      {
        *a4 = 0.0;
      }

      if (a5)
      {
        *a5 = v58;
      }

      v14 = v51;
      if (a6)
      {
        *a6 = v54;
      }

      if (v48)
      {
        *v48 = v53;
      }

      if (a8)
      {
        v44 = v34;
        *a8 = v34;
      }

      if (a9)
      {
        v45 = v35;
        *a9 = v35;
      }

      if (a10)
      {
        v46 = v36;
        *a10 = v36;
      }

      v15 = v50;
      v18 = v54;
    }

    else
    {
      v18 = SBLogDashBoard();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [CSCoverSheetViewController __currentDesiredAppearanceWithStartIndex:? targetIndex:? targetAppearance:? targetPresentation:? modalAppearance:? proudLockAppearance:? poseidonAppearance:? backgroundContentAppearance:?];
      }

      v17 = 0;
    }
  }

  else
  {
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [CSCoverSheetViewController __currentDesiredAppearanceWithStartIndex:? targetIndex:? targetAppearance:? targetPresentation:? modalAppearance:? proudLockAppearance:? poseidonAppearance:? backgroundContentAppearance:?];
    }

    v17 = 0;
  }

  return v17;
}

- (void)_updateActiveAppearanceForReason:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if ([(CSCoverSheetViewController *)self _shouldUpdateActiveAppearanceForReason:v4])
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_INFO, "Beginning appearance update for %@... --------", buf, 0xCu);
    }

    v106 = 0;
    *buf = 0;
    v104 = 0;
    v105 = 0;
    v102 = 0;
    v103 = 0;
    v100 = 0;
    v101 = 0;
    v6 = [(CSCoverSheetViewController *)self __currentDesiredAppearanceWithStartIndex:buf targetIndex:&v106 targetAppearance:&v105 targetPresentation:&v104 modalAppearance:&v103 proudLockAppearance:&v102 poseidonAppearance:&v101 backgroundContentAppearance:&v100];
    v7 = v105;
    v8 = v104;
    v9 = v103;
    v10 = v102;
    v11 = v101;
    v12 = v100;
    if (v6)
    {
      v90 = v9;
      v83 = v8;
      v13 = [(CSCoverSheetViewController *)self previousAppearance];
      v14 = v13;
      v87 = v10;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [(CSCoverSheetViewController *)self activeAppearance];
      }

      v91 = v15;

      v81 = [CSAppearance appearanceWithIdentifier:@"(active)"];
      currentTransitionSource = self->_currentTransitionSource;
      v17 = [(CSCoverSheetViewController *)self coverSheetView];
      v88 = v6;
      v89 = v7;
      v85 = v12;
      v86 = v11;
      v84 = v4;
      v80 = currentTransitionSource == v17 || [(CSCoverSheetViewController *)self _isPresentingPosterSwitcher];

      appearanceResolver = self->_appearanceResolver;
      v19 = [(CSCoverSheetViewController *)self activeBehavior];
      v20 = v106;
      v78 = *buf;
      v21 = [(CSCoverSheetViewController *)self _indexOfMainPage];
      v22 = self->_currentTransitionSource;
      legibilityProvider = self->_legibilityProvider;
      v24 = [(CSCoverSheetViewController *)self view];
      [v24 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = [(CSCoverSheetViewController *)self _whitePointValues];
      LOBYTE(v76) = self->_hasContentAboveCoverSheet;
      v75 = legibilityProvider;
      LOBYTE(v74) = v80;
      v7 = v89;
      v73 = v21;
      v6 = v88;
      v34 = [(CSCoverSheetAppearanceResolver *)appearanceResolver newActiveAppearanceGivenDesiredAppearance:v88 oldAppearance:v91 activeAppearance:v81 activeBehavior:v19 startIndex:v78 targetIndex:v20 indexOfMainPage:v26 targetAppearance:v28 modalAppearance:v30 currentTransitionSource:v32 contentTransitionIsAtCoverSheetLevel:v73 legibilityProvider:v89 bounds:v90 whitePointValues:v22 hasContentAboveCoverSheet:v74, v75, v33, v76];

      [v34 setTransitional:{-[CSCoverSheetViewTransitionSource isTransitioning](self->_currentTransitionSource, "isTransitioning")}];
      v35 = [(CSCoverSheetViewController *)self previousAppearance];
      v36 = v35;
      if (v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = [(CSCoverSheetViewController *)self activeAppearance];
      }

      v38 = v37;
      v11 = v86;
      v10 = v87;
      v12 = v85;

      [(CSCoverSheetViewController *)self setActiveAppearance:v34];
      if (([v38 isEqualToAppearance:v34] & 1) == 0)
      {
        v39 = SBLogDashBoard();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);

        if (v40)
        {
          v41 = MEMORY[0x277CBEB58];
          v42 = [v38 components];
          v43 = [v41 setWithSet:v42];

          v44 = MEMORY[0x277CBEB58];
          v45 = [v34 components];
          v46 = [v44 setWithSet:v45];

          [(__CFString *)v46 minusSet:v43];
          v47 = [v34 components];
          [(__CFString *)v43 minusSet:v47];

          v48 = SBLogDashBoard();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [CSCoverSheetViewController _updateActiveAppearanceForReason:];
          }

          v49 = SBLogDashBoard();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [(CSCoverSheetViewController *)v46 _updateActiveAppearanceForReason:v49];
          }

          v50 = SBLogDashBoard();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            [(CSCoverSheetViewController *)v43 _updateActiveAppearanceForReason:v50];
          }
        }

        v82 = v38;
        [(CSCoverSheetViewController *)self _handleEventType:1];
        v51 = [MEMORY[0x277D75D18] _isInAnimationBlock];
        v52 = [v91 componentForType:4 identifier:@"(active)"];
        v53 = [v34 componentForType:4 identifier:@"(active)"];
        v54 = [v91 componentForType:4 identifier:@"(active)"];
        v55 = [v34 componentForType:4 identifier:@"(active)"];
        v79 = v54;
        [v54 offset];
        v57 = v56;
        v59 = v58;
        [v55 offset];
        v62 = v59 != v61 || v57 != v60;
        v63 = [v52 isHidden];
        v64 = v63 ^ [v53 isHidden];
        v65 = [(CSPresentationViewController *)self->_modalPresentationController isTransitioning];
        if (![(CSCoverSheetViewController *)self isTransitioning]&& ((v64 | v65 | v62) & 1) != 0)
        {
          v77 = v51;
          v66 = [v53 isHidden];
          [v55 offset];
          v67 = [(CSCoverSheetViewController *)self _isSlideableContentOffsetOnscreen:?];
          v68 = [(CSPresentationViewController *)self->_modalPresentationController isPresentingContent];
          v69 = (v66 & 1) == 0 && v67 && !v68;
          [(CSCoverSheetViewController *)self _beginAppearanceTransitionForPageViewControllersToVisible:v69 animated:v77];
        }

        [(CSCoverSheetViewController *)self _updateHomeAffordance];
        v70 = MEMORY[0x277CF0D38];
        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = __63__CSCoverSheetViewController__updateActiveAppearanceForReason___block_invoke;
        v99[3] = &unk_27838B770;
        v99[4] = self;
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __63__CSCoverSheetViewController__updateActiveAppearanceForReason___block_invoke_2;
        v92[3] = &unk_27838C178;
        v92[4] = self;
        v96 = v64;
        v93 = v34;
        v94 = v53;
        v97 = v62;
        v95 = v55;
        v98 = v65;
        v71 = v55;
        v72 = v53;
        [v70 addAlongsideAnimations:v99 completion:v92];

        v6 = v88;
        v7 = v89;
        v11 = v86;
        v10 = v87;
        v12 = v85;
        v38 = v82;
      }

      v8 = v83;
      v4 = v84;
      v9 = v90;
    }
  }
}

uint64_t __63__CSCoverSheetViewController__updateActiveAppearanceForReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateDateTimeView];
  [*(a1 + 32) _updateRemoteInlineContentView];
  [*(a1 + 32) _updateStatusBar];
  [*(a1 + 32) _updatePageContent];
  [*(a1 + 32) _updateBackground];
  [*(a1 + 32) _updateBackgroundContentView];
  [*(a1 + 32) _updateComplicationsContainerView];
  [*(a1 + 32) _updateComplicationSidebar];
  [*(a1 + 32) _updateForegroundView];
  [*(a1 + 32) _updateFullBleedContent];
  [*(a1 + 32) _updateVibrancy];
  [*(a1 + 32) _updateLegibilitySettings];
  [*(a1 + 32) _updateWallpaperEffectView];
  [*(a1 + 32) _updateWallpaperFloatingLayerContainerView];
  [*(a1 + 32) _updateTintingView];
  [*(a1 + 32) _updateStatusBarBackground];
  [*(a1 + 32) _updateFixedFooterView];
  [*(a1 + 32) _updateProudLockView];
  [*(a1 + 32) _updateContent];
  [*(a1 + 32) _updateControlCenterGrabber];
  [*(a1 + 32) _updateModalContent];
  [*(a1 + 32) _updateWallpaper];
  [*(a1 + 32) _updateQuickActions];
  [*(a1 + 32) _updateStatusBarGradient];
  [*(a1 + 32) _updatePoseidon];
  [*(a1 + 32) _updateWhitePoint];
  [*(a1 + 32) _updateDimmingLayer];
  [*(a1 + 32) _updateNotificationDimmingLayer];
  v2 = *(a1 + 32);

  return [v2 _updateGlassContentInterfaceStyle];
}

uint64_t __63__CSCoverSheetViewController__updateActiveAppearanceForReason___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isTransitioning] & 1) == 0)
  {
    [*(a1 + 32) setPreviousAppearance:*(a1 + 40)];
  }

  result = [*(a1 + 32) participantState];
  if (result == 2)
  {
    if (*(a1 + 64) == 1)
    {
      v3 = [*(a1 + 48) isHidden];
      v4 = v3 ^ [*(a1 + 32) _isPageContentHidden] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    if (*(a1 + 65) == 1)
    {
      [*(a1 + 56) offset];
      v6 = v5;
      v8 = v7;
      [*(a1 + 32) _slideableContentOffset];
      v11 = v8 == v10 && v6 == v9;
    }

    else
    {
      v11 = 0;
    }

    result = [*(a1 + 32) isTransitioning];
    if ((result & 1) == 0 && (((v4 | v11) & 1) != 0 || *(a1 + 66) == 1))
    {
      result = [*(*(a1 + 32) + 1264) isPresentingContent];
      if (v4 & 1 | ((result & 1) == 0) | v11)
      {
        if ([*(a1 + 32) _isPageContentHidden])
        {
          v12 = 0;
        }

        else
        {
          v12 = [*(a1 + 32) _isSlideableContentOnscreen];
        }

        v13 = *(a1 + 32);

        return [v13 _endAppearanceTransitionForPageViewControllersToVisible:v12];
      }
    }
  }

  return result;
}

- (void)_updateActiveBehaviorsForReason:(id)a3 updatingAppearanceIfNeeded:(BOOL)a4
{
  v4 = a4;
  v105 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(CSCoverSheetViewController *)self isViewLoaded]&& ![(CSCoverSheetViewController *)self isTransitioning]&& [(CSCoverSheetViewController *)self participantState]== 2)
  {
    v80 = v4;
    v81 = v6;
    [(CSCoverSheetViewController *)self _updateScrollingBehavior];
    [(CSCoverSheetViewController *)self _updateRestrictedBehavior];
    [(CSCoverSheetViewController *)self _updateIdleTimerBehavior];
    v87 = self;
    v85 = [(CSCoverSheetViewController *)self activeBehavior];
    v7 = +[CSBehavior behavior];
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "---------------- [Behavior] Restricted capabilities: starting new ----------------", buf, 2u);
    }

    v83 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:self->_lastSettledPageIndex];
    v9 = [v83 participantState];
    v10 = [(CSPresentationViewController *)self->_modalPresentationController participantState];
    v82 = [(CSCoverSheetViewController *)self _behaviorForParticipant:self->_modalPresentationController];
    if (v10 != 2 || v9 != 2)
    {
      if (v9 == 2 && v10 != 2)
      {
        [v7 unionBehavior:v83];
        v11 = SBLogDashBoard();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromCoverSheetCapability([v83 restrictedCapabilities]);
          v13 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v12;
          *&buf[12] = 2114;
          *&buf[14] = v13;
          v14 = v13;
          _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities: %{public}@ from current page VC: %{public}@", buf, 0x16u);
        }
      }
    }

    else if ([v82 areRestrictedCapabilities:0x10000000])
    {
      v15 = [v83 activeBehavior];
      [v7 setRestrictedCapabilities:{objc_msgSend(v15, "restrictedCapabilities")}];

      [v7 addRestrictedCapabilities:{objc_msgSend(v82, "restrictedCapabilities") - 0x10000000}];
    }

    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __89__CSCoverSheetViewController__updateActiveBehaviorsForReason_updatingAppearanceIfNeeded___block_invoke;
    v99[3] = &unk_27838C1A0;
    v86 = v7;
    v100 = v86;
    v84 = MEMORY[0x223D698D0](v99);
    (v84)[2](v84, v87->_irisBehavior, @"iris");
    (v84)[2](v84, v87->_localBehavior, @"local");
    (v84)[2](v84, v87->_landscapeBehavior, @"landscape");
    (v84)[2](v84, v87->_screenOffBehavior, @"screenOff");
    (v84)[2](v84, v87->_posterBoardBehavior, @"posterBoard");
    (v84)[2](v84, v87->_accessoryBehavior, @"accessory");
    if (v10 == 2)
    {
      [v86 unionBehavior:v82];
      v16 = [(CSPresentationViewController *)v87->_modalPresentationController presentedViewControllers];
      v17 = [v16 count] == 0;

      v18 = SBLogDashBoard();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          v25 = NSStringFromCoverSheetCapability([(CSCoverSheetViewControllerBase *)v87->_modalPresentationController restrictedCapabilities]);
          *buf = 138543362;
          *&buf[4] = v25;
          _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities: %{public}@ from modal", buf, 0xCu);
        }
      }

      else if (v19)
      {
        v20 = NSStringFromCoverSheetCapability([(CSCoverSheetViewControllerBase *)v87->_modalPresentationController restrictedCapabilities]);
        v21 = [(CSPresentationViewController *)v87->_modalPresentationController presentedViewControllers];
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        v24 = v23;
        _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities: %{public}@ from modal: %{public}@", buf, 0x16u);
      }
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v26 = v87->_externalBehaviorProviders;
    v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v95 objects:v104 count:16];
    if (v27)
    {
      v28 = *v96;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v96 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v95 + 1) + 8 * i);
          v31 = [(CSCoverSheetViewController *)v87 _behaviorForParticipant:v30];
          if (v31)
          {
            [v86 unionBehavior:v31];
            v32 = SBLogDashBoard();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = NSStringFromCoverSheetCapability([v30 restrictedCapabilities]);
              v34 = objc_opt_class();
              *buf = 138543618;
              *&buf[4] = v33;
              *&buf[12] = 2114;
              *&buf[14] = v34;
              v35 = v34;
              _os_log_impl(&dword_21EB05000, v32, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities: %{public}@ from external provider: %{public}@", buf, 0x16u);
            }
          }
        }

        v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v95 objects:v104 count:16];
      }

      while (v27);
    }

    [(CSCoverSheetViewController *)v87 setActiveBehavior:v86];
    v36 = SBLogDashBoard();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = NSStringFromCoverSheetCapability([v86 restrictedCapabilities]);
      *buf = 138543362;
      *&buf[4] = v37;
      _os_log_impl(&dword_21EB05000, v36, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities: setting active - %{public}@", buf, 0xCu);
    }

    -[CSScrollGestureController setScrollingStrategy:](v87->_scrollGestureController, "setScrollingStrategy:", [v86 scrollingStrategy]);
    v38 = [(CSCoverSheetViewController *)v87 coverSheetView];
    v39 = [v38 scrollView];

    if ([v86 scrollingStrategy] == 3 && objc_msgSend(v39, "isScrolling"))
    {
      [v39 _stopScrollingAndZoomingAnimations];
    }

    v40 = [v86 notificationBehavior];
    if (v40 != [v85 notificationBehavior])
    {
      v41 = SBLogDashBoard();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = NSStringFromCoverSheetNotificationBehavior([v85 notificationBehavior]);
        v43 = NSStringFromCoverSheetNotificationBehavior([v86 notificationBehavior]);
        *buf = 138543874;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        *&buf[22] = 2114;
        v103 = v81;
        _os_log_impl(&dword_21EB05000, v41, OS_LOG_TYPE_DEFAULT, "[Behavior] Notification behavior changed from %{public}@ to %{public}@ for reason: %{public}@", buf, 0x20u);
      }

      [(CSNotificationDispatcher *)v87->_notificationDispatcher setActiveBehavior:v86];
    }

    v44 = [v86 restrictedCapabilities];
    if (v44 != [v85 restrictedCapabilities])
    {
      v45 = SBLogDashBoard();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = NSStringFromCoverSheetCapability([v85 restrictedCapabilities]);
        v47 = NSStringFromCoverSheetCapability([v86 restrictedCapabilities]);
        *buf = 138543874;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v47;
        *&buf[22] = 2114;
        v103 = v81;
        _os_log_impl(&dword_21EB05000, v45, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities changed from %{public}@ to %{public}@ for reason: %{public}@", buf, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&v87->_delegate);
      v49 = [v86 areRestrictedCapabilities:8];
      v50 = [v85 areRestrictedCapabilities:8];
      v51 = [v86 areRestrictedCapabilities:56];
      v52 = v51 ^ [v85 areRestrictedCapabilities:56];
      if ((v49 ^ v50 | v52))
      {
        if ([v86 areRestrictedCapabilities:8])
        {
          v53 = 1;
        }

        else
        {
          v53 = [v86 areRestrictedCapabilities:56];
        }

        [WeakRetained coverSheetViewController:v87 requestsTouchIDDisabled:v53 forReason:@"CSActiveBehavior"];
      }

      v54 = [v86 areRestrictedCapabilities:16];
      if (v54 != [v85 areRestrictedCapabilities:16])
      {
        [WeakRetained coverSheetViewController:v87 requestsPreArmDisabled:v54 forReason:@"CSActiveBehavior"];
      }

      v55 = [v85 restrictedCapabilities];
      v56 = [(CSCoverSheetViewController *)v87 _pageCapabilities];
      v57 = [v86 restrictedCapabilities];
      if (([(CSCoverSheetViewController *)v87 _pageCapabilities]& v57) != (v56 & v55))
      {
        [(CSCoverSheetViewController *)v87 _loadViewsForRestrictedPagesIfPossible];
      }

      v58 = [v86 areRestrictedCapabilities:0x2000];
      if (v58 != [v85 areRestrictedCapabilities:0x2000])
      {
        [(CSCoverSheetViewController *)v87 _setupQuickNoteGestureRecognizer];
      }

      v59 = [v86 areRestrictedCapabilities:256];
      if (v59 != [v85 areRestrictedCapabilities:256])
      {
        [(CSCoverSheetViewController *)v87 _setupWallpaperGesture];
      }

      v60 = [v86 areRestrictedCapabilities:0x8000];
      if (v60 != [v85 areRestrictedCapabilities:0x8000])
      {
        [(CSCoverSheetViewController *)v87 _updateProudLockViewUpdateSuspension];
      }

      v61 = [v86 areRestrictedCapabilities:0x800000];
      if (v61 != [v85 areRestrictedCapabilities:0x800000])
      {
        [(CSCoverSheetViewController *)v87 _setupPosterSwitcherGestureRecognizer];
      }

      if ([v86 areRestrictedCapabilities:64] && (objc_msgSend(v85, "areRestrictedCapabilities:", 64) & 1) == 0 && -[CSCoverSheetViewController isShowingTodayView](v87, "isShowingTodayView"))
      {
        [(CSCoverSheetViewController *)v87 deactivateTodayViewWithCompletion:0];
      }

      v62 = [v86 areRestrictedCapabilities:0x4000000];
      if (v62 != [v85 areRestrictedCapabilities:0x4000000])
      {
        [(CSCoverSheetViewController *)v87 _updateCaptureButtonRestriction];
      }

      v63 = [v86 areRestrictedCapabilities:0x8000000];
      v64 = [(CSCoverSheetViewController *)v87 coverSheetView];
      [v64 setCameraSwipeBlocked:v63];

      if (v80)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v103) = 0;
        v65 = objc_alloc_init(MEMORY[0x277CCAB68]);
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __89__CSCoverSheetViewController__updateActiveBehaviorsForReason_updatingAppearanceIfNeeded___block_invoke_674;
        v92[3] = &unk_27838C1C8;
        v94 = buf;
        v66 = v65;
        v93 = v66;
        v67 = MEMORY[0x223D698D0](v92);
        v68 = [v86 areRestrictedCapabilities:128];
        if (v68 != [v85 areRestrictedCapabilities:128])
        {
          (v67)[2](v67, @"Control Center Capability Changed");
        }

        v69 = [v86 areRestrictedCapabilities:4096];
        if (v69 != [v85 areRestrictedCapabilities:4096])
        {
          (v67)[2](v67, @"Dismiss CoverSheet Capability Changed");
        }

        if (v52)
        {
          (v67)[2](v67, @"Unlock disabled changed");
        }

        if (*(*&buf[8] + 24) == 1)
        {
          [(CSCoverSheetViewController *)v87 _updateActiveAppearanceForReason:v66];
        }

        _Block_object_dispose(buf, 8);
      }
    }

    v70 = [v86 proximityDetectionMode];
    if (v70 != [v85 proximityDetectionMode])
    {
      v71 = SBLogDashBoard();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = NSStringFromCoverSheetProximityDetectionMode([v85 proximityDetectionMode]);
        v73 = NSStringFromCoverSheetProximityDetectionMode([v86 proximityDetectionMode]);
        *buf = 138412802;
        *&buf[4] = v72;
        *&buf[12] = 2112;
        *&buf[14] = v73;
        *&buf[22] = 2112;
        v103 = v81;
        _os_log_impl(&dword_21EB05000, v71, OS_LOG_TYPE_DEFAULT, "[Behavior] Proximity detection mode changed from %@ to %@ for reason: %@", buf, 0x20u);
      }
    }

    if (([v85 isEqual:v86] & 1) == 0)
    {
      v74 = SBLogDashBoard();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = v81;
        _os_log_impl(&dword_21EB05000, v74, OS_LOG_TYPE_DEFAULT, "[Behavior] Aggregate behavior did change: %@ for reason: %@", buf, 0x16u);
      }

      [(CSCoverSheetViewController *)v87 _handleEventType:2];
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v75 = [(NSHashTable *)v87->_observers copy];
      v76 = [v75 countByEnumeratingWithState:&v88 objects:v101 count:16];
      if (v76)
      {
        v77 = *v89;
        do
        {
          for (j = 0; j != v76; ++j)
          {
            if (*v89 != v77)
            {
              objc_enumerationMutation(v75);
            }

            v79 = *(*(&v88 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v79 coverSheetViewController:v87 didChangeActiveBehavior:v86];
            }
          }

          v76 = [v75 countByEnumeratingWithState:&v88 objects:v101 count:16];
        }

        while (v76);
      }
    }

    v6 = v81;
  }
}

void __89__CSCoverSheetViewController__updateActiveBehaviorsForReason_updatingAppearanceIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) unionBehavior:v5];
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromCoverSheetCapability([v5 restrictedCapabilities]);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "[Behavior] Restricted capabilities: %{public}@ from %@", &v9, 0x16u);
  }
}

void __89__CSCoverSheetViewController__updateActiveBehaviorsForReason_updatingAppearanceIfNeeded___block_invoke_674(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v3];
}

double __47__CSCoverSheetViewController__updateBackground__block_invoke(uint64_t a1, double a2)
{
  if (a2 < 0.2 && *(a1 + 32) == 1)
  {
    v2 = a2 / 0.2;
    if (v2 <= 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v2 + 0.0;
    }

    v4 = 1.0;
    return fmin(v3, v4);
  }

  v4 = 1.0;
  if (a2 > 0.8 && (*(a1 + 32) & 1) == 0)
  {
    v5 = (1.0 - a2) / 0.2;
    if (v5 <= 0.0)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = v5 + 0.0;
    }

    return fmin(v3, v4);
  }

  return v4;
}

- (void)_updateBackgroundGlassView
{
  v3 = [(CSCoverSheetViewController *)self _shouldAllowGlassCoverSheet];
  v7 = [(CSCoverSheetViewController *)self coverSheetView];
  if (v3)
  {
    v4 = [CSCoverSheetSDFView alloc];
    v5 = [(CSCoverSheetViewController *)self coverSheetView];
    [v5 bounds];
    v6 = [(CSCoverSheetSDFView *)v4 initWithFrame:?];
    [v7 setBackgroundGlassView:v6];
  }

  else
  {
    [v7 setBackgroundGlassView:0];
  }
}

void __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_696(uint64_t a1, double a2)
{
  v3 = [*(a1 + 32) dateView];
  [v3 setMaximumAdaptiveTimeTextHeight:a2];
}

uint64_t __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) offset];
  v4 = v3;
  v6 = v5;
  [*(a1 + 40) scale];
  [v2 setDateViewOffset:v4 scale:{v6, v7}];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);

  return [v8 updateSalientContentRectangle:{v9, v10, v11, v12}];
}

void __49__CSCoverSheetViewController__updateDateTimeView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeAppearance];
  v3 = [v2 componentForType:1 identifier:@"(active)"];
  if ([v3 isHidden])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_updateRemoteContentInlineHorizontalMargin
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 0.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if (self->_remoteContentInlineViewController)
    {
      v6 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
      [v6 horizontalInsetMargin];
      v5 = v7;

      if ([(CSCoverSheetViewController *)self interfaceOrientation]- 1) >= 2 && (objc_opt_respondsToSelector())
      {
        v8 = [(CSCoverSheetViewController *)self viewIfLoaded];
        [v8 bounds];
        v10 = v9;
        v12 = v11;

        [(CSMainPageContentViewController *)self->_mainPageContentViewController listInsetX];
        v5 = v10 - (v12 + v5 * -2.0 - (v5 * 2.0 + -0.333333)) - v13;
      }
    }
  }

  remoteContentInlineViewController = self->_remoteContentInlineViewController;

  [(CSRemoteContentInlineViewController *)remoteContentInlineViewController setHorizontalInsetMargin:v5];
}

uint64_t __51__CSCoverSheetViewController__updateHomeAffordance__block_invoke_703(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __51__CSCoverSheetViewController__updateHomeAffordance__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_updateCaptureButtonRestriction
{
  v11 = [(CSCoverSheetViewController *)self activeBehavior];
  v3 = [v11 areRestrictedCapabilities:0x4000000];
  inhibitCaptureButtonActionAssertion = self->_inhibitCaptureButtonActionAssertion;
  if (v3 && !inhibitCaptureButtonActionAssertion)
  {
    v5 = [(CSCoverSheetViewController *)self coverSheetContext];
    v6 = [v5 captureButtonRestrictionController];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 inhibitCaptureButtonActionAssertionWithReason:v8];
    v10 = self->_inhibitCaptureButtonActionAssertion;
    self->_inhibitCaptureButtonActionAssertion = v9;

LABEL_8:
    goto LABEL_9;
  }

  if (!inhibitCaptureButtonActionAssertion)
  {
    LOBYTE(v3) = 1;
  }

  if ((v3 & 1) == 0)
  {
    [(BSInvalidatable *)inhibitCaptureButtonActionAssertion invalidate];
    v5 = self->_inhibitCaptureButtonActionAssertion;
    self->_inhibitCaptureButtonActionAssertion = 0;
    goto LABEL_8;
  }

LABEL_9:
}

void __72__CSCoverSheetViewController__updateWallpaperFloatingLayerContainerView__block_invoke(uint64_t a1)
{
  v16 = [*(*(a1 + 32) + 1064) wallpaperProvider];
  v2 = [*(a1 + 32) coverSheetView];
  v3 = [v2 wallpaperFloatingLayerContainerView];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v16 createWallpaperFloatingViewForReason:v5 ignoreReplica:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1504);
  *(v7 + 1504) = v6;

  v9 = *(*(a1 + 32) + 1504);
  [v3 bounds];
  [v9 setFrame:?];
  [*(*(a1 + 32) + 1504) setAutoresizingMask:18];
  if (*(a1 + 40) == 1)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    v11 = [v10 traitCollection];
    [v11 displayCornerRadius];
    v13 = v12;

    if (v13 > 0.0)
    {
      [*(*(a1 + 32) + 1504) setClipsToBounds:1];
      v14 = [*(*(a1 + 32) + 1504) layer];
      [v14 setCornerCurve:*MEMORY[0x277CDA138]];

      v15 = [*(*(a1 + 32) + 1504) layer];
      [v15 setCornerRadius:v13];
    }
  }

  [v3 addSubview:*(*(a1 + 32) + 1504)];
}

void __47__CSCoverSheetViewController__updateWhitePoint__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldReduceWhitePoint])
  {
    v2 = [*(a1 + 32) view];
    v3 = [v2 layer];
    v4 = [*(a1 + 32) _whitePointReductionFilterFromValues:*(a1 + 40)];
    v6[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [v3 setFilters:v5];
  }
}

void __47__CSCoverSheetViewController__updateWhitePoint__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) _shouldReduceWhitePoint] & 1) == 0)
  {
    v3 = [*(a1 + 32) view];
    v2 = [v3 layer];
    [v2 setFilters:0];
  }
}

- (void)_updateNotificationDimmingLayer
{
  v3 = [(CSCoverSheetViewController *)self activeAppearance];
  v4 = [v3 componentForType:28 identifier:@"(active)"];
  if (v4)
  {
    v5 = [(CSCoverSheetViewController *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];

    LODWORD(v5) = [v4 isHidden];
    v7 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v7 setDimVisible:v5 ^ 1];

    [v4 animationDuration];
    v9 = v8;
    v10 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v10 setShouldAnimate:v9 != 0.0];

    [v4 offset];
    v12 = v11;
    v13 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v13 setFadeAnchorY:v12];

    v14 = [(CSCoverSheetViewController *)self coverSheetView];
    [v14 bounds];
    v16 = 1.0;
    if (v6 == 1)
    {
      v16 = 2.0;
    }

    v17 = v15 / v16;

    v18 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v18 setFadeWidth:v17];

    v19 = [v4 value];
    v20 = [v19 integerValue];

    v21 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v21 setLocalizedDimMode:v20];

    if (v20 == 1)
    {
      v22 = [(CSCoverSheetViewController *)self coverSheetView];
      v23 = [v22 wallpaperFloatingLayerContainerView];
      [v23 frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = [(CSCoverSheetViewController *)self coverSheetView];
      v33 = [v32 notificationLegibilityDynamicDimView];
      [v33 layoutInsetsForSize:v29 fadeAnchorY:{v31, v12}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = [(CSCoverSheetViewController *)self coverSheetView];
      v43 = [v42 notificationLegibilityDynamicDimView];
      [v43 setFrame:{v25 + v37, v27 + v35, v29 - (v37 + v41), v31 - (v35 + v39)}];
    }

    v44 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
    v45 = [v44 view];

    [v45 bounds];
    v47 = v46;
    v48 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v48 setFullDimHeight:v47];

    v49 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    v50 = v49;
    v51 = 12.0;
    if (v6 == 1)
    {
      v51 = 6.0;
    }

    [v49 setFadeRadiusY:v47 / v51];

    v52 = [v45 traitCollection];
    v53 = [v3 componentForType:6 identifier:@"(active)"];
    [(CSCoverSheetViewController *)self _wallpaperLumaFromWallpaperComponent:v53];
    v54 = SBUIGlassContentInterfaceStyleFromLuminance();
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __61__CSCoverSheetViewController__updateNotificationDimmingLayer__block_invoke;
    v58[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v58[4] = v54;
    v55 = [v52 traitCollectionByModifyingTraits:v58];

    v56 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v56 setTraitCollection:v55];

    v57 = [(CSCoverSheetViewController *)self notificationLegibilityDimController];
    [v57 updateDimViews];
  }
}

- (void)_animateView:(id)a3 toWhitePointReduced:(BOOL)a4 withDuration:(double)a5 withDispatchGroup:(id)a6
{
  v16[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = [a3 layer];
  if (v10)
  {
    v11 = [(CSCoverSheetViewController *)self _whitePointValues];
    [(CSCoverSheetViewController *)self _addWhitePointAnimationForKeyPath:@"filters.curves.inputRedValues" onLayer:v10 toValues:v11 withDuration:v9 dispatchGroup:a5];
    [(CSCoverSheetViewController *)self _addWhitePointAnimationForKeyPath:@"filters.curves.inputGreenValues" onLayer:v10 toValues:v11 withDuration:v9 dispatchGroup:a5];
    [(CSCoverSheetViewController *)self _addWhitePointAnimationForKeyPath:@"filters.curves.inputBlueValues" onLayer:v10 toValues:v11 withDuration:v9 dispatchGroup:a5];
    v12 = [(CSCoverSheetViewController *)self view];
    v13 = [v12 layer];
    v14 = [(CSCoverSheetViewController *)self _whitePointReductionFilterFromValues:v11];
    v16[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v13 setFilters:v15];
  }
}

- (BOOL)_shouldReduceWhitePointForAppearance:(id)a3
{
  v3 = [a3 componentForType:18 property:1];
  v4 = [v3 isHidden];

  return v4 ^ 1;
}

- (id)_whitePointValuesForAppearance:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self _shouldReduceWhitePointForAppearance:v4];
  if (v5)
  {
    v6 = [v4 componentForType:18 identifier:@"(active)"];
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      v7 = 1;
    }

    else
    {
      v7 = _UIAccessibilityReduceWhitePoint();
    }

    [v6 flag];
    v8 = BSSettingFlagIsYes() | v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(CSCoverSheetViewController *)self _filterValuesForWhitePointReduced:v5 lighterReduction:v8 & 1];

  return v9;
}

- (id)_filterValuesForWhitePointReduced:(BOOL)a3 lighterReduction:(BOOL)a4
{
  v22[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a4;
    v5 = [(CSLockScreenSettings *)self->_prototypeSettings dashBoardRemoteContentSettings];
    v6 = v5;
    v7 = MEMORY[0x277CCABB0];
    if (v4)
    {
      [v5 lighterBottomLuminanceValue];
      v8 = [v7 numberWithDouble:?];
      v22[0] = v8;
      v9 = MEMORY[0x277CCABB0];
      [v6 lighterLowerLuminanceValue];
      v10 = [v9 numberWithDouble:?];
      v22[1] = v10;
      v11 = MEMORY[0x277CCABB0];
      [v6 lighterUpperLuminanceValue];
      v12 = [v11 numberWithDouble:?];
      v22[2] = v12;
      v13 = MEMORY[0x277CCABB0];
      [v6 lighterTopLuminanceValue];
      v14 = [v13 numberWithDouble:?];
      v22[3] = v14;
      v15 = v22;
    }

    else
    {
      [v5 bottomLuminanceValue];
      v8 = [v7 numberWithDouble:?];
      v21[0] = v8;
      v17 = MEMORY[0x277CCABB0];
      [v6 lowerLuminanceValue];
      v10 = [v17 numberWithDouble:?];
      v21[1] = v10;
      v18 = MEMORY[0x277CCABB0];
      [v6 upperLuminanceValue];
      v12 = [v18 numberWithDouble:?];
      v21[2] = v12;
      v19 = MEMORY[0x277CCABB0];
      [v6 topLuminanceValue];
      v14 = [v19 numberWithDouble:?];
      v21[3] = v14;
      v15 = v21;
    }

    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  }

  else
  {
    v16 = &unk_283079890;
  }

  return v16;
}

- (void)_addWhitePointAnimationForKeyPath:(id)a3 onLayer:(id)a4 toValues:(id)a5 withDuration:(double)a6 dispatchGroup:(id)a7
{
  v19 = a3;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [v14 presentationLayer];
  v16 = [v15 valueForKeyPath:v19];

  if (v12)
  {
    dispatch_group_enter(v12);
  }

  if (!v16)
  {
    v16 = &unk_2830798A8;
  }

  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:v19];
  [v17 setDuration:a6];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v17 setTimingFunction:v18];

  [v17 setFromValue:v16];
  [v17 setToValue:v13];

  [v17 setValue:v12 forKey:@"CSCoverSheetWhitePointDispatchGroup"];
  [v17 setDelegate:self];
  [v14 removeAnimationForKey:v19];
  [v14 addAnimation:v17 forKey:v19];
}

- (id)_whitePointReductionFilterFromValues:(id)a3
{
  v3 = MEMORY[0x277CD9EA0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithType:*MEMORY[0x277CDA2E8]];
  [v6 setValue:v4 forKey:@"inputRedValues"];
  [v6 setValue:v4 forKey:@"inputGreenValues"];
  [v6 setValue:v4 forKey:@"inputBlueValues"];

  return v6;
}

- (void)_updateIdleTimerForTransitionProgress:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [(CSCoverSheetViewController *)self _appearState];
  screenOffMode = self->_screenOffMode;
  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v10 = [(CSLockScreenSettings *)self->_prototypeSettings idleTimerSettings];
      [v10 unlockSlideForIdleTimerDisabledPercentage];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
      goto LABEL_3;
    }
  }

  v10 = [(CSLockScreenSettings *)self->_prototypeSettings idleTimerSettings];
  [v10 unlockSlideForIdleTimerDisabledPercentageIPad];
LABEL_6:
  v12 = v11;

  if ((v9 & 1) == 0)
  {
  }

  v13 = SBLogDashBoard();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 134218240;
    v17 = a3;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_INFO, "transitionProgress: %f, percentThreshold: %f", &v16, 0x16u);
  }

  if (!screenOffMode && (v6 - 3) >= 0xFFFFFFFE && v12 < a3 && !self->_transitionDisabledIdleTimer)
  {
    v14 = [CSAction actionWithType:4];
    [(CSCoverSheetViewController *)self handleAction:v14 fromSender:self];

    WeakRetained = objc_loadWeakRetained(&self->_idleTimerController);
    [WeakRetained addIdleTimerDisabledAssertionReason:@"CSCoverSheetTransitioningReason"];

    self->_transitionDisabledIdleTimer = 1;
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = [a3 valueForKey:{@"CSCoverSheetWhitePointDispatchGroup", a4}];
  if (v4)
  {
    v5 = v4;
    dispatch_group_leave(v4);
    v4 = v5;
  }
}

- (void)_setFakeStatusBarEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = [(CSCoverSheetViewController *)self coverSheetView];
  v5 = [(CSCoverSheetContextProviding *)self->_coverSheetContext statusBarController];
  v6 = [v13 fakeStatusBar];
  v7 = v6;
  v8 = !v3;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v3;
  }

  if ((v9 & 1) == 0)
  {
    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    v11 = v10;
    fakeStatusBar = self->_fakeStatusBar;
    goto LABEL_10;
  }

  if (!v6)
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    v10 = [(CSCoverSheetViewController *)self coverSheetView];
    v11 = v10;
    fakeStatusBar = 0;
LABEL_10:
    [v10 setFakeStatusBar:fakeStatusBar];

    [v5 setStatusBarHidden:v9 ^ 1u forReason:@"CSCoverSheetFakeStatusBar"];
  }
}

- (void)_createStatusBarBackgroundViewIfNeeded
{
  if (!self->_statusBarBackgroundView)
  {
    [MEMORY[0x277D75A78] heightForStyle:300 orientation:1];
    if (v3 <= 20.0)
    {
      v4 = 6;
    }

    else
    {
      v4 = 5;
    }

    v5 = [objc_alloc(MEMORY[0x277D65E58]) initWithRecipe:v4];
    statusBarBackgroundView = self->_statusBarBackgroundView;
    self->_statusBarBackgroundView = v5;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__CSCoverSheetViewController__createStatusBarBackgroundViewIfNeeded__block_invoke;
    v7[3] = &unk_27838B770;
    v7[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  }
}

uint64_t __68__CSCoverSheetViewController__createStatusBarBackgroundViewIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coverSheetView];
  [v2 setStatusBarBackgroundView:*(*(a1 + 32) + 2208)];

  [*(*(a1 + 32) + 2208) setAlpha:0.0];
  v3 = *(*(a1 + 32) + 2208);

  return [v3 layoutIfNeeded];
}

- (void)_handleQuickNoteLaunch:(id)a3
{
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "QuickNote gesture recognized.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_applicationLauncher);
  [WeakRetained launchQuickNote];
}

- (void)_setupPosterSwitcherGestureRecognizer
{
  v3 = [(CSCoverSheetViewController *)self activeBehavior];
  v4 = [v3 areRestrictedCapabilities:0x800000];

  posterSwitcherGestureRecognizer = self->_posterSwitcherGestureRecognizer;
  if ((v4 & 1) == 0)
  {
    if (posterSwitcherGestureRecognizer)
    {
      v10 = [(CSCoverSheetViewController *)self coverSheetView];
      v11 = [v10 dateViewGestureRecognizer];

      if (v11)
      {
LABEL_13:
        if (self->_posterSwitcherFeedbackGenerator)
        {
          return;
        }

        v8 = objc_alloc_init(MEMORY[0x277D757B8]);
        posterSwitcherFeedbackGenerator = self->_posterSwitcherFeedbackGenerator;
        self->_posterSwitcherFeedbackGenerator = v8;
        goto LABEL_16;
      }

      v12 = self->_posterSwitcherGestureRecognizer;
    }

    else
    {
      v12 = 0;
    }

    [(UILongPressGestureRecognizer *)v12 setDelegate:0];
    v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handlePosterSwitcherActivation_];
    v14 = self->_posterSwitcherGestureRecognizer;
    self->_posterSwitcherGestureRecognizer = v13;

    [(UILongPressGestureRecognizer *)self->_posterSwitcherGestureRecognizer setMinimumPressDuration:0.3];
    [(UILongPressGestureRecognizer *)self->_posterSwitcherGestureRecognizer setDelegate:self];
    v15 = [(CSCoverSheetViewController *)self coverSheetView];
    [v15 setDateViewGestureRecognizer:self->_posterSwitcherGestureRecognizer];

    goto LABEL_13;
  }

  if (posterSwitcherGestureRecognizer)
  {
    self->_posterSwitcherGestureRecognizer = 0;

    v6 = [(CSCoverSheetViewController *)self coverSheetView];
    [v6 setDateViewGestureRecognizer:self->_posterSwitcherGestureRecognizer];
  }

  v7 = self->_posterSwitcherFeedbackGenerator;
  if (v7)
  {
    v8 = [(UINotificationFeedbackGenerator *)v7 isActive];
    if (v8)
    {
      v8 = [(UINotificationFeedbackGenerator *)self->_posterSwitcherFeedbackGenerator deactivate];
    }

    posterSwitcherFeedbackGenerator = self->_posterSwitcherFeedbackGenerator;
    self->_posterSwitcherFeedbackGenerator = 0;
LABEL_16:

    MEMORY[0x2821F96F8](v8, posterSwitcherFeedbackGenerator);
  }
}

- (void)_handlePosterSwitcherActivation:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Poster Switcher gesture recognized.", buf, 2u);
    }

    v6 = SBLogDashBoardTelemetrySignposts();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21EB05000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_TO_POSTER_SWITCHER_GESTURE", "", buf, 2u);
    }

    kdebug_trace();
    v7 = [v4 touches];
    v8 = [v7 copy];

    posterSwitcherActivationManager = self->_posterSwitcherActivationManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__CSCoverSheetViewController__handlePosterSwitcherActivation___block_invoke;
    v12[3] = &unk_27838B838;
    v12[4] = self;
    v13 = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__CSCoverSheetViewController__handlePosterSwitcherActivation___block_invoke_768;
    v11[3] = &unk_27838C370;
    v11[4] = self;
    v10 = v8;
    [(CSPosterSwitcherActivationManager *)posterSwitcherActivationManager activateWithHandler:v12 onFailure:v11];
  }
}

void __62__CSCoverSheetViewController__handlePosterSwitcherActivation___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1064) wallpaperSnapshotUpdater];
  [v2 updatePosterSwitcherSnapshots];
  v3 = [*(a1 + 32) coverSheetView];
  v4 = [v3 scrollView];
  [v4 _forcePanGestureToEndImmediately];

  [*(a1 + 32) _prepareForPosterSwitcherPresentation];
  [*(a1 + 32) _updatePosterSwitcherPresentationWithProgress:1.0];
  [*(a1 + 32) _cleanupPosterSwitcherPresentationForCompleted:1 withActivatingTouches:*(a1 + 40)];
  v5 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_COVERSHEET_TO_POSTER_SWITCHER_GESTURE", "", v6, 2u);
  }

  kdebug_trace();
}

void __62__CSCoverSheetViewController__handlePosterSwitcherActivation___block_invoke_768(uint64_t a1, void *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Failed to activate Poster Switcher for reason: %{public}@.", buf, 0xCu);
  }

  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 1496);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__CSCoverSheetViewController__handlePosterSwitcherActivation___block_invoke_769;
    v9[3] = &unk_27838B9B8;
    v9[4] = v7;
    [v8 activateWithCompletionBlock:v9];
  }
}

uint64_t __62__CSCoverSheetViewController__handlePosterSwitcherActivation___block_invoke_769(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 1496) notificationOccurred:2];
  }

  v3 = *(*(a1 + 32) + 1496);

  return [v3 deactivate];
}

- (void)_prepareForPosterSwitcherPresentation
{
  v3 = [(CSCoverSheetViewController *)self currentTransitionSource];
  v4 = [v3 isTransitioning];

  if ((v4 & 1) == 0)
  {
    v5 = [(CSCoverSheetViewController *)self coverSheetView];
    [v5 addContentView];

    v6 = objc_alloc_init(CSPosterSwitcherTransitionSource);
    [(CSPosterSwitcherTransitionSource *)v6 setTransitioningDelegate:self];
    [(CSCoverSheetViewController *)self setPosterSwitcherTransitionSource:v6];
    [(CSPosterSwitcherTransitionSource *)v6 prepareForPresentation];
  }
}

- (void)_updatePosterSwitcherPresentationWithProgress:(double)a3
{
  v4 = [(CSCoverSheetViewController *)self posterSwitcherTransitionSource];
  if ([v4 isTransitioning])
  {
    [v4 updatePresentationWithProgress:a3];
  }
}

- (void)_cleanupPosterSwitcherPresentationForCompleted:(BOOL)a3 withActivatingTouches:(id)a4
{
  v4 = a3;
  v51 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(CSCoverSheetViewController *)self posterSwitcherTransitionSource];
  v8 = [(CSCoverSheetContextProviding *)self->_coverSheetContext authenticationStatusProvider];
  v9 = [v8 isAuthenticated];

  if ([v7 isTransitioning])
  {
    v10 = 0.0;
    if (v4)
    {
      v10 = 1.0;
    }

    [v7 updatePresentationWithProgress:v10];
    v11 = SBLogDashBoard();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if ((v4 & v9) != 0)
    {
      if (v12)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "Poster Switcher gesture completed. Presenting Poster Switcher", &buf, 2u);
      }

      v13 = objc_alloc_init(CSDismissableModalViewController);
      v39 = [(CSCoverSheetViewController *)self activeAppearance];
      v14 = [v39 componentForType:23 identifier:@"(active)"];
      v15 = objc_opt_class();
      v16 = v14;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = v17;

      v20 = objc_alloc_init(CSPosterSwitcherViewController);
      [(CSPosterSwitcherViewController *)v20 setActivatingTouches:v6];
      v21 = [(CSCoverSheetViewController *)self view];
      v22 = [v21 window];
      [(CSPosterSwitcherViewController *)v20 setTargetWindow:v22];

      v23 = [(CSCoverSheetViewController *)self coverSheetView];
      v24 = [v23 wallpaperEffectView];
      [(CSPosterSwitcherViewController *)v20 setCoverSheetWallpaperView:v24];

      v25 = [(CSCoverSheetViewController *)self coverSheetView];
      v26 = [v25 wallpaperFloatingLayerContainerView];
      [(CSPosterSwitcherViewController *)v20 setCoverSheetFloatingView:v26];

      -[CSPosterSwitcherViewController setCoverSheetWallpaperFloatingLayerInlined:](v20, "setCoverSheetWallpaperFloatingLayerInlined:", [v19 shouldRenderInline]);
      v27 = [(CSCoverSheetViewController *)self effectiveVibrancyConfiguration];
      [(CSPosterSwitcherViewController *)v20 setVibrancyConfiguration:v27];

      [(SBFLockScreenDateViewController *)self->_dateViewController adaptiveTextHeight];
      [(CSPosterSwitcherViewController *)v20 setLastAdaptiveTimeTextHeight:?];
      [(CSCoverSheetViewController *)self addApplicationHoster:v20];
      [(CSCoverSheetViewController *)self setPosterSwitcherViewController:v20];
      [(CSCoverSheetViewController *)self _updatePosterSwitcherBackgroundView];
      [(CSCoverSheetViewController *)self _updatePosterSwitcherComplicationRowHidden];
      objc_initWeak(&buf, self);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __99__CSCoverSheetViewController__cleanupPosterSwitcherPresentationForCompleted_withActivatingTouches___block_invoke;
      v45[3] = &unk_27838B748;
      objc_copyWeak(&v46, &buf);
      [(CSPosterSwitcherViewController *)v20 setInvalidationHandler:v45];
      v36 = v19;
      v37 = v13;
      v38 = v6;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = [(NSHashTable *)self->_observers copy];
      v29 = [v28 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v29)
      {
        v30 = *v42;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v42 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v41 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v32 coverSheetViewControllerWillPresentPosterSwitcher:self];
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v29);
      }

      v6 = v38;
      v18 = v37;
      v33 = [(CSCoverSheetContextProviding *)self->_coverSheetContext traitsAwareAppHosting];
      [(CSPosterSwitcherViewController *)v20 setAppHostConfiguring:v33];

      [(CSDismissableModalViewController *)v37 setDelegate:v20];
      [(CSPresentationViewController *)v37 presentContentViewController:v20 animated:0];
      [(CSCoverSheetViewController *)self _presentModalViewController:v37 animated:0 completion:0];
      v34 = SBLogDashBoard();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&dword_21EB05000, v34, OS_LOG_TYPE_DEFAULT, "[ZStack-Participant] adding poster switcher home affordance", v40, 2u);
      }

      v35 = [(CSCoverSheetContextProviding *)self->_coverSheetContext modalHomeAffordanceController];
      [(CSDismissableModalViewController *)v37 setHomeAffordanceController:v35];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (v12)
      {
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v4;
        v48 = 1024;
        v49 = v9;
        _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "Poster Switcher gesture ended in failure. Not presenting Poster Switcher. Interaction completed: %{BOOL}d. Device authenticated: %{BOOL}d", &buf, 0xEu);
      }

      v18 = [(CSCoverSheetViewController *)self coverSheetView];
      [v18 removeContentView];
    }

    [v7 cleanupPresentation];
    [(CSCoverSheetViewController *)self setPosterSwitcherTransitionSource:0];
  }
}

void __99__CSCoverSheetViewController__cleanupPosterSwitcherPresentationForCompleted_withActivatingTouches___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPosterSwitcherViewController:0];
}

- (void)setPosterSwitcherTransitionSource:(id)a3
{
  v5 = a3;
  if (self->_posterSwitcherTransitionSource != v5)
  {
    [(CSCoverSheetViewController *)self unregisterExternalAppearanceProvider:?];
    [(CSCoverSheetViewController *)self unregisterExternalBehaviorProvider:self->_posterSwitcherTransitionSource];
    objc_storeStrong(&self->_posterSwitcherTransitionSource, a3);
    if (self->_posterSwitcherTransitionSource)
    {
      [(CSCoverSheetViewController *)self registerExternalAppearanceProvider:?];
      [(CSCoverSheetViewController *)self registerExternalBehaviorProvider:self->_posterSwitcherTransitionSource];
    }
  }
}

- (void)setPosterSwitcherViewController:(id)a3
{
  v5 = a3;
  if (self->_posterSwitcherViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_posterSwitcherViewController, a3);
    self->_preventStatusBarDateTimeUpdates = [(CSCoverSheetViewController *)self _isPresentingPosterSwitcher];
    [(CSCoverSheetViewController *)self _updateAppearanceForHavingPosterSwitcherTransition:self->_posterSwitcherViewController != 0];
    [(CSCoverSheetViewController *)self _updateStatusBarBackground];
    v5 = v6;
  }
}

- (void)_updatePosterSwitcherBackgroundView
{
  v3 = [(CSCoverSheetViewController *)self posterSwitcherViewController];
  if (v3)
  {
    v9 = v3;
    v4 = [(CSCoverSheetViewController *)self coverSheetView];
    v5 = [v4 backgroundContentView];
    v6 = [v4 backgroundView];
    v7 = v6;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    [v9 setCoverSheetBackgroundView:v8];

    v3 = v9;
  }
}

- (void)_dismissPosterSwitcherViewController
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 removeContentView];

  v5 = +[(CSCoverSheetViewControllerBase *)CSDismissableModalViewController];
  v4 = [(CSCoverSheetViewController *)self _presentedModalViewControllerWithIdentifier:v5];
  [(CSCoverSheetViewController *)self _dismissModalViewController:v4 animated:0 completion:0];
}

- (void)_updateAppearanceForHavingPosterSwitcherTransition:(BOOL)a3
{
  if (a3)
  {
    v4 = +[CSComponent notificationDimmingLayer];
    v5 = [v4 identifier:@"PosterSwitcherTransition"];
    v6 = [v5 priority:40];
    v7 = [v6 hidden:1];
    v8 = [v7 animationDuration:0.0];

    [(CSAppearance *)self->_localAppearance addComponent:v8];
  }

  else
  {
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"PosterSwitcherTransition"];
  }

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"PosterSwitcherTransition"];
}

- (void)posterSwitcherActivationManager:(id)a3 didChangeToCoachingText:(id)a4
{
  v5 = [a4 copy];
  currentCoachingString = self->_currentCoachingString;
  self->_currentCoachingString = v5;

  [(CSCoverSheetViewController *)self _updateCoachingStringWithTimeout:2.5];
}

- (BOOL)userPresenceDetectedSinceWake
{
  v3 = [(CSUserPresenceMonitor *)self->_userPresenceMonitor isUserPresenceDetectionSupported];
  if (v3)
  {
    userPresenceMonitor = self->_userPresenceMonitor;

    LOBYTE(v3) = [(CSUserPresenceMonitor *)userPresenceMonitor userPresenceDetectedSinceWake];
  }

  return v3;
}

- (id)posterSwitcherPresentationStatus
{
  if ([(CSCoverSheetViewController *)self _isPresentingPosterSwitcher])
  {
    v3 = 0;
    v4 = 2;
  }

  else
  {
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    v6 = [v5 isWallpaperModificationAllowed];

    if (v6)
    {
      v7 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
      v8 = [v7 hasUserInteraction];

      if (v8)
      {
        v4 = 0;
        v3 = 1;
      }

      else if ([(CSCoverSheetViewController *)self isAuthenticated])
      {
        v11 = [(CSCoverSheetContextProviding *)self->_coverSheetContext proximitySensorProvider];
        v12 = [v11 isObjectInProximity];

        if (v12)
        {
          v4 = 0;
          v3 = 3;
        }

        else
        {
          v13 = [MEMORY[0x277D75418] currentDevice];
          v14 = [v13 userInterfaceIdiom];

          if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([(CSCoverSheetViewController *)self interfaceOrientation]- 3) >= 2)
          {
            v3 = 0;
            v4 = 1;
          }

          else
          {
            v4 = 0;
            v3 = 4;
          }
        }
      }

      else
      {
        v4 = 0;
        v3 = 2;
      }
    }

    else
    {
      v4 = 0;
      v3 = 5;
    }
  }

  v9 = [[CSPosterSwitcherPresentationStatus alloc] initWithState:v4 notReadyReason:v3];

  return v9;
}

- (void)setComplicationContainerUsesBottomPosition:(BOOL)a3
{
  if (self->_complicationContainerUsesBottomPosition != a3)
  {
    self->_complicationContainerUsesBottomPosition = a3;
    [(CSCoverSheetViewController *)self _updateComplicationContainerPosition];
  }
}

- (void)_updateComplicationContainerPosition
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self _wouldComplicationsUseBottomPosition];
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    complicationContainerUsesBottomPosition = self->_complicationContainerUsesBottomPosition;
    *buf = 67109632;
    v18 = v3;
    v19 = 1024;
    v20 = complicationContainerUsesBottomPosition;
    v21 = 1024;
    v22 = ![(CSCoverSheetViewController *)self isDepthEffectDisabled];
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "[Widget Row] Widget row using bottom position: %{BOOL}u for poster configuration requested bottom position: %{BOOL}u, depth effect enabled: %{BOOL}u", buf, 0x14u);
  }

  v6 = [(CSWidgetGridViewController *)self->_complicationContainerViewController parentViewController];
  v7 = v6;
  if (v3)
  {
    if (v6 == self)
    {
      goto LABEL_12;
    }
  }

  else if (([(SBFLockScreenDateViewController *)self->_dateViewController isHostingViewController:self->_complicationContainerViewController]& 1) != 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    complicationContainerViewController = self->_complicationContainerViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__CSCoverSheetViewController__updateComplicationContainerPosition__block_invoke;
    v16[3] = &unk_27838B798;
    v16[4] = self;
    [(CSCoverSheetViewController *)v7 bs_removeChildViewController:complicationContainerViewController animated:0 transitionBlock:v16];
  }

  if (v3)
  {
    v9 = self->_complicationContainerViewController;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__CSCoverSheetViewController__updateComplicationContainerPosition__block_invoke_2;
    v15[3] = &unk_27838B798;
    v15[4] = self;
    [(CSCoverSheetViewController *)self bs_addChildViewController:v9 animated:0 transitionBlock:v15];
  }

  else
  {
    [(SBFLockScreenDateViewController *)self->_dateViewController setComplicationContainerViewController:self->_complicationContainerViewController];
  }

LABEL_12:
  [(CSCoverSheetViewController *)self dateBaselineToComplicationY];
  v11 = v10;
  [getCSProminentLayoutControllerClass() boundsForElements:8];
  self->_portraitComplicationContainerHeight = v11 + v12;
  [(CSRemoteContentInlineViewController *)self->_remoteContentInlineViewController hostDidChangeContentBounds];
  v13 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  [v13 layoutListView];

  v14 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  [v14 invalidateContentInsets];
}

void __66__CSCoverSheetViewController__updateComplicationContainerPosition__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 2136);
  v5 = a2;
  [v3 setComplicationContainerViewController:0];
  v4 = [*(a1 + 32) coverSheetView];
  [v4 setComplicationContainerView:0];

  v5[2]();
}

void __66__CSCoverSheetViewController__updateComplicationContainerPosition__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 coverSheetView];
  v5 = [*(*(a1 + 32) + 2160) view];
  [v4 setComplicationContainerView:v5];

  v6[2]();
}

- (BOOL)_shouldAllowGlassCoverSheet
{
  v2 = [(SBLockScreenDefaults *)self->_lockScreenDefaults disallowGlassLockScreen];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CSCoverSheetViewController _shouldAllowGlassCoverSheet];
  }

  return ((UIAccessibilityIsReduceMotionEnabled() | v2) & 1) == 0;
}

- (void)_updateForSensitiveUI
{
  [(CSCoverSheetViewController *)self _updateComplicationContainerPosition];

  [(CSCoverSheetViewController *)self _updateBackgroundGlassView];
}

- (void)_complicationSelected:(id)a3
{
  dateViewController = self->_dateViewController;
  v5 = a3;
  v6 = [(SBFLockScreenDateViewController *)dateViewController inlineComplicationViewController];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 handleComplicationSelectionGesture:v5];
  v11 = [(CSCoverSheetViewController *)self complicationContainerViewController];
  [v11 handleComplicationSelectionGesture:v5];

  v12 = [(CSCoverSheetViewController *)self sidebarComplicationContainerViewController];
  [v12 handleComplicationSelectionGesture:v5];
}

- (void)_setupComplicationSelectionGestureRecognizer
{
  if (self->_complicationSelectionRecognizer)
  {
    v3 = [(CSCoverSheetViewController *)self coverSheetView];
    v4 = [v3 complicationGestureRecognizer];

    if (v4)
    {
      return;
    }

    complicationSelectionRecognizer = self->_complicationSelectionRecognizer;
  }

  else
  {
    complicationSelectionRecognizer = 0;
  }

  [(UILongPressGestureRecognizer *)complicationSelectionRecognizer setDelegate:0];
  v6 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__complicationSelected_];
  v7 = self->_complicationSelectionRecognizer;
  self->_complicationSelectionRecognizer = v6;

  [(UILongPressGestureRecognizer *)self->_complicationSelectionRecognizer setMinimumPressDuration:0.01];
  [(UILongPressGestureRecognizer *)self->_complicationSelectionRecognizer setDelegate:self];
  v8 = [(CSCoverSheetViewController *)self coverSheetView];
  [v8 setComplicationGestureRecognizer:self->_complicationSelectionRecognizer];
}

- (void)_updateUIForPlaying:(BOOL)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8[1] = *MEMORY[0x277D85DE8];
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__actuallyUpdateUIForIrisNotPlaying object:0];
  if (v4)
  {

    [(CSCoverSheetViewController *)self _actuallyUpdateUIForIrisPlaying:v5];
  }

  else if (!v5)
  {
    v8[0] = *MEMORY[0x277CBE738];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(CSCoverSheetViewController *)self performSelector:sel__actuallyUpdateUIForIrisNotPlaying withObject:0 afterDelay:v7 inModes:0.3];
  }
}

- (void)_actuallyUpdateUIForIrisPlaying:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSCoverSheetViewController *)self irisBehavior];
  v6 = v5;
  if (v3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [v5 setScrollingStrategy:v7];

  v8 = MEMORY[0x277CCACA8];
  v10 = NSStringFromBOOL();
  v9 = [v8 stringWithFormat:@"irisPlaying-%@", v10];
  [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:v9];
}

- (void)startLockScreenFadeInAnimationForSource:(int)a3
{
  v3 = *&a3;
  v31 = *MEMORY[0x277D85DE8];
  self->_wakeSource = a3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromUnlockSource();
    *buf = 138543362;
    *v29 = v6;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "wake source: %{public}@", buf, 0xCu);
  }

  v7 = [(CSPoseidonViewController *)self->_poseidonViewController poseidonContainerViewController];
  [v7 setUnlockSource:v3];

  if (SBUIUnlockSourceIsUserAction())
  {
    [(SBUIPhoneUnlockWithRemoteDeviceCoordinator *)self->_phoneUnlockWithRemoteDeviceCoordinator handleWakeSourceIsUserActive];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 coverSheetViewController:self didWakeForSource:self->_wakeSource];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"StartFadeInAnimation"];
  v14 = [(CSCoverSheetContextProviding *)self->_coverSheetContext screenStateProvider];
  v15 = [v14 screenIsOn];

  v16 = SBLogDashBoard();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromBOOL();
    *buf = 138543362;
    *v29 = v17;
    _os_log_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEFAULT, "isScreenOn: %{public}@", buf, 0xCu);
  }

  self->_blockingPowerStatusTriggeredChargingUI = 1;
  [(CSPowerChangeObserver *)self->_powerChangeObserver update];
  self->_blockingPowerStatusTriggeredChargingUI = 0;
  v18 = [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToPower];
  if ((v3 - 21) > 1)
  {
    v19 = SBLogDashBoard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109376;
      *v29 = v18;
      *&v29[4] = 1024;
      *&v29[6] = v20;
      _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "[Charge UI] visible %d, showBattery NO – isAlreadyShowingChargingModal: %d", buf, 0xEu);
    }

    [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:v18 suppressedByPack:0 showBattery:0 animated:v15];
    v21 = SBLogDashBoard();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      *buf = 67109120;
      *v29 = v22;
      _os_log_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEFAULT, "[Charge UI] – endedShowingChargingModal: %d", buf, 8u);
    }

    if ((v15 & 1) == 0)
    {
      [(CSCoverSheetViewController *)self _startFadeInAnimationForSource:SBUIConvertUnlockSourceToBacklightChangeSource()];
    }
  }

  else
  {
    [(CSCoverSheetViewController *)self _finishFadeInAnimationForPowerSource:v3 connectedToPower:v18 screenOn:v15];
  }

  if (SBUIUnlockSourceIsUserAction())
  {
    v23 = [CSEvent eventWithType:26];
    [(CSCoverSheetViewController *)self _handleEvent:v23];
  }

  [(CSTeachableMomentsContainerViewController *)self->_teachableMomentsContainerViewController setAnimationState:1];
}

- (void)_finishFadeInAnimationForPowerSource:(int)a3 connectedToPower:(BOOL)a4 screenOn:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  *&v16[5] = *MEMORY[0x277D85DE8];
  if ([(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory])
  {
    if (v5)
    {
      return;
    }

    goto LABEL_12;
  }

  suppressChargingUIForAmbient = self->_suppressChargingUIForAmbient;
  v9 = SBLogDashBoard();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (suppressChargingUIForAmbient)
  {
    if (v10)
    {
      v11 = NSStringFromUnlockSource();
      v15 = 138412290;
      *v16 = v11;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Charge UI][Suppressed] visible NO, suppressed for ambient presentation! source: %@", &v15, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v15 = 67109376;
      v16[0] = v6;
      LOWORD(v16[1]) = 1024;
      *(&v16[1] + 2) = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Charge UI][Finish Fade] visible YES, showBattery %d – isAlreadyShowingChargingModal: %d", &v15, 0xEu);
    }

    [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:1 showBattery:v6 animated:v5];
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
      v15 = 67109120;
      v16[0] = v12;
      _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Charge UI][Finish Fade] – endedShowingChargingModal: %d", &v15, 8u);
    }
  }

  if (!v5)
  {
LABEL_12:
    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromUnlockSource();
      v15 = 138412290;
      *v16 = v14;
      _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[Charge UI] Starting fade in for source: %@", &v15, 0xCu);
    }

    [(CSCoverSheetViewController *)self _startFadeInAnimationForSource:SBUIConvertUnlockSourceToBacklightChangeSource()];
  }
}

- (void)_startFadeInAnimationForSource:(int64_t)a3
{
  if (![(CSCoverSheetViewController *)self _isWakeAnimationInProgress]&& [(CSCoverSheetViewController *)self isViewLoaded])
  {
    v5 = SBLogDashBoardTelemetrySignposts();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21EB05000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_FADE_IN", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    kdebug_trace();
    v6 = [(CSCoverSheetViewController *)self activeAppearance];
    v7 = [v6 componentForType:2 identifier:@"(active)"];

    [(CSCoverSheetViewController *)self _dateTimeAlphaForFade];
    v9 = v8;
    [v7 alpha];
    v11 = v10;
    screenWakeAnimationController = self->_screenWakeAnimationController;
    v13 = [(CSCoverSheetViewController *)self legacyWallpaperWakeAnimator];
    v14 = [(SBFLockScreenDateViewController *)self->_dateViewController dateViewIfExists];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__CSCoverSheetViewController__startFadeInAnimationForSource___block_invoke;
    v15[3] = &unk_27838B770;
    v15[4] = self;
    [(SBFScreenWakeAnimationControlling *)screenWakeAnimationController prepareToWakeForSource:a3 timeAlpha:v13 statusBarAlpha:v14 target:v15 dateView:v9 completion:v11];
  }
}

void __61__CSCoverSheetViewController__startFadeInAnimationForSource___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 2136) updateTimeNow];
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_FADE_IN", " enableTelemetry=YES  isAnimation=YES ", v4, 2u);
  }

  kdebug_trace();
  [*(a1 + 32) _updateActiveAppearanceForReason:@"FadeIn"];
  v3 = [CSEvent eventWithType:38];
  [*(a1 + 32) _handleEvent:v3];
}

- (void)screenSleepCompletedForSource:(int)a3
{
  v4 = [CSEvent eventWithType:39];
  [(CSCoverSheetViewController *)self _handleEvent:v4];
}

- (void)timerControllerDidStartTimer:(id)a3
{
  v4 = a3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Timer Controller did start timer.", v8, 2u);
  }

  [(CSCoverSheetViewController *)self _transitionTimerViewToVisible:1 animated:0];
  if (([(ACActivityCenter *)self->_activityCenter areActivitiesEnabled]& 1) == 0)
  {
    dateViewController = self->_dateViewController;
    v7 = [v4 timerText];
    [(SBFLockScreenDateViewController *)dateViewController setTimerWithText:v7];
  }
}

- (void)timerControllerDidUpdateTimer:(id)a3
{
  v6 = a3;
  if (([(ACActivityCenter *)self->_activityCenter areActivitiesEnabled]& 1) == 0)
  {
    dateViewController = self->_dateViewController;
    v5 = [v6 timerText];
    [(SBFLockScreenDateViewController *)dateViewController updateTimerWithText:v5];
  }
}

- (void)timerControllerDidStopTimer:(id)a3
{
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "Timer Controller did stop timer.", v5, 2u);
  }

  [(CSCoverSheetViewController *)self _transitionTimerViewToVisible:0 animated:[(CSTimerViewController *)self->_timerViewController isEnabled]];
  if (([(ACActivityCenter *)self->_activityCenter areActivitiesEnabled]& 1) == 0)
  {
    [(SBFLockScreenDateViewController *)self->_dateViewController setTimerWithText:0];
  }
}

- (void)_transitionTimerViewToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CSCoverSheetViewController *)self localAppearance];
  v8 = [v7 componentForType:1 identifier:@"TimerView"];

  if ((v8 != 0) != v5)
  {
    if (![(CSTimerViewController *)self->_timerViewController isEndDateValid])
    {
      v9 = SBLogDashBoard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Timer end date is invalid or nil.", buf, 2u);
      }

      v5 = 0;
    }

    if (v4)
    {
      v10 = [MEMORY[0x277CF0B70] settingsWithDuration:0.4];
    }

    else
    {
      v10 = 0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__CSCoverSheetViewController__transitionTimerViewToVisible_animated___block_invoke;
    v12[3] = &unk_27838C398;
    v12[4] = self;
    v13 = v5;
    [(CSCoverSheetViewController *)self _updateLocalAppearanceForRequester:@"TimerView" animationSettings:v10 actions:v12 completion:0];
    if (v4)
    {
    }

    if (v5)
    {
      v11 = self;
    }

    else
    {
      v11 = 0;
    }

    [(CSCoverSheetViewControllerBase *)self->_timerViewController setPresenter:v11];
  }
}

id __69__CSCoverSheetViewController__transitionTimerViewToVisible_animated___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) localAppearance];
  [v2 removeAllComponentsWithIdentifier:@"TimerView"];

  if (*(a1 + 40) == 1)
  {
    v3 = +[CSComponent dateView];
    v4 = [*(*(a1 + 32) + 2184) view];
    v5 = [v3 view:v4];
    v6 = [v5 priority:10];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)accessoryAttached:(id)a3
{
  v4 = a3;
  v5 = +[CSLockScreenDomain rootSettings];
  v6 = [v5 chargingSettings];

  [v6 omniAccessoryAnimationDelayInMilliseconds];
  v8 = dispatch_time(0, (v7 / 1000.0 * 1000000000.0));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CSCoverSheetViewController_accessoryAttached___block_invoke;
  v10[3] = &unk_27838B838;
  v11 = v4;
  v12 = self;
  v9 = v4;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

uint64_t __48__CSCoverSheetViewController_accessoryAttached___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "Accessory attached: %@", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 1064) screenStateProvider];
  v5 = [v4 screenIsOn];

  [*(*(a1 + 40) + 1320) addObject:*(a1 + 32)];
  return [*(a1 + 40) _transitionAccessoryViewToVisible:1 accessory:*(a1 + 32) animated:v5];
}

- (void)accessoryDetached:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CSCoverSheetViewController_accessoryDetached___block_invoke;
  v6[3] = &unk_27838B838;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __48__CSCoverSheetViewController_accessoryDetached___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "Accessory detached: %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 40) + 1320);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__CSCoverSheetViewController_accessoryDetached___block_invoke_804;
  v21[3] = &unk_27838C3C0;
  v22 = *(a1 + 32);
  v5 = [v4 bs_filter:v21];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = SBLogDashBoard();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 32) description];
          *buf = v16;
          v25 = v13;
          _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "Removing accessory: %@", buf, 0xCu);
        }

        [*(*(a1 + 40) + 1320) removeObject:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [*(*(a1 + 40) + 1064) screenStateProvider];
  v15 = [v14 screenIsOn];

  [*(a1 + 40) _transitionAccessoryViewToVisible:0 accessory:*(a1 + 32) animated:v15];
}

uint64_t __48__CSCoverSheetViewController_accessoryDetached___block_invoke_804(uint64_t a1, void *a2)
{
  v3 = [a2 endpointUUID];
  v4 = [*(a1 + 32) endpointUUID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)accessoryAnimationStatusChanged:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__CSCoverSheetViewController_accessoryAnimationStatusChanged___block_invoke;
  v3[3] = &unk_27838BC70;
  v4 = a3;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __62__CSCoverSheetViewController_accessoryAnimationStatusChanged___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "Accessory animation status changed, isAnimationsAllowed: %{BOOL}u", v4, 8u);
  }

  *(*(a1 + 32) + 1328) = *(a1 + 40);
}

- (void)_updateAccessoryAnimationPresenting:(BOOL)a3 userInteractionDisabled:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__CSCoverSheetViewController__updateAccessoryAnimationPresenting_userInteractionDisabled___block_invoke;
  v4[3] = &unk_27838C3E8;
  v5 = a3;
  v6 = a4;
  v4[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __90__CSCoverSheetViewController__updateAccessoryAnimationPresenting_userInteractionDisabled___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 != 1)
  {
    v4 = a1 + 32;
    result = *(a1 + 32);
    if (v2 == *(result + 1852))
    {
      goto LABEL_11;
    }

    v5 = 0;
    goto LABEL_7;
  }

  v4 = a1 + 32;
  result = *(a1 + 32);
  v5 = *(v4 + 9);
  if (*(result + 1852) != 1)
  {
LABEL_7:
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 41);
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Update accessoryAnimationPresenting: %{BOOL}u userInteractionDisabled: %{BOOL}u for accessory animation", v10, 0xEu);
    }

    *(*(a1 + 32) + 1852) = *(a1 + 40);
    result = *(a1 + 32);
    if (v5)
    {
      [*(result + 2104) setRestrictedCapabilities:{objc_msgSend(result, "_accessoryAnimationRestrictions")}];
      v9 = @"AccessoryAnimationPresentationWillStart";
      return [*v4 _updateActiveBehaviorsForReason:v9];
    }

LABEL_11:
    result = [*(result + 2104) restrictedCapabilities];
    if (!result)
    {
      return result;
    }

    [*(*v4 + 2104) setRestrictedCapabilities:0];
    v9 = @"AccessoryAnimationPresentationDidEnd";
    return [*v4 _updateActiveBehaviorsForReason:v9];
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

- (BOOL)attachedAccessoriesContainsAccessoryType:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_attachedAccessories;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)_isAccessoryAnimationAllowedForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self activeBehavior];
  v6 = [v5 areRestrictedCapabilities:0x100000];

  if (v6)
  {
    v7 = 0;
  }

  else if (self->_isAccessoryAnimationAllowed && ![(CSCoverSheetViewController *)self _isShowingNonStaticAccessoryBlockingUI])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 hasStaticView];
  }

  return v7;
}

- (void)_transitionAccessoryViewToVisible:(BOOL)a3 accessory:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(CSCoverSheetViewController *)self _showingAccessoryView];
  v10 = v9;
  if (v6 && v9)
  {
    v11 = SBLogDashBoard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSMagSafeAccessoryViewController *)self->_accessoryViewController accessory];
      v13 = [v12 description];
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "Showing an accessory view already: %@.", buf, 0xCu);
    }

LABEL_5:

    goto LABEL_6;
  }

  if (v6)
  {
    if (![(CSCoverSheetViewController *)self _isAccessoryAnimationAllowedForAccessory:v8])
    {
      v11 = SBLogDashBoard();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(CSMagSafeAccessoryViewController *)self->_accessoryViewController accessory];
        v21 = [v20 description];
        *buf = 138412290;
        v37 = v21;
        _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "Accessory animation is not allowed. Not showing accessory animation for accessory: %@", buf, 0xCu);
      }

      goto LABEL_5;
    }

    if (v8)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0 && [(CSCoverSheetViewController *)self _appearState]== 2)
    {
      if ([(CSCoverSheetViewController *)self isMainPageVisible])
      {
        [(CSCoverSheetViewController *)self _animateAccessory:v8 toVisibleAnimated:v5];
      }

      else
      {
        v22 = [v8 type];
        v23 = [(CSCoverSheetViewController *)self visiblePageViewController];
        v24 = [(CSCoverSheetViewController *)self mainPageContentViewController];

        v25 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
        if (v25)
        {
          v26 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
          [v26 presentationProgress];
          IsZero = BSFloatIsZero();
        }

        else
        {
          IsZero = 1;
        }

        v28 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
        if (v28)
        {
          v29 = [(CSCoverSheetViewController *)self overlayControllerIfExists];
          [v29 presentationProgress];
          v30 = BSFloatLessThanFloat();
        }

        else
        {
          v30 = 0;
        }

        v31 = v23 == v24;

        if (v22 == 6 || (v31 & IsZero & 1) != 0 || v30)
        {
          v32 = [(CSCoverSheetViewController *)self _indexOfMainPage];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __83__CSCoverSheetViewController__transitionAccessoryViewToVisible_accessory_animated___block_invoke;
          v33[3] = &unk_27838C410;
          v33[4] = self;
          v34 = v8;
          v35 = v5;
          [(CSCoverSheetViewController *)self activatePage:v32 animated:0 withCompletion:v33];
        }
      }
    }
  }

  else
  {
    v15 = [(CSMagSafeAccessoryViewController *)self->_accessoryViewController accessory];
    v16 = [v15 endpointUUID];
    v17 = [v8 endpointUUID];

    if (v16 == v17)
    {
      [(BSAbsoluteMachTimer *)self->_accessoryViewControllerTimer invalidate];
      accessoryViewControllerTimer = self->_accessoryViewControllerTimer;
      self->_accessoryViewControllerTimer = 0;

      accessoryViewControllerTimerHandler = self->_accessoryViewControllerTimerHandler;
      self->_accessoryViewControllerTimerHandler = 0;

      [(CSCoverSheetViewController *)self _dismissAccessoryViewController:self->_accessoryViewController animated:v5];
    }
  }

LABEL_6:
}

- (void)_animateAccessory:(id)a3 toVisibleAnimated:(BOOL)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CSCoverSheetContextProviding *)self->_coverSheetContext reachabilityController];
  [v7 deactivateReachability];

  v8 = [(CSCoverSheetViewController *)self isShowingModalView];
  v9 = [v6 shouldLockScreenWhenAttached];
  v10 = SBLogDashBoard();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 description];
    *buf = 138412290;
    v35 = v11;
    _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Presenting accessory (%@) view.", buf, 0xCu);
  }

  v12 = [v6 type];
  if (v12 <= 0xB)
  {
    if (((1 << v12) & 0x8BC) != 0)
    {
      if (v8)
      {
LABEL_6:
        accessoryViewController = self->_accessoryViewController;
        self->_accessoryViewController = 0;
        goto LABEL_14;
      }

      v14 = CSMagSafeAccessoryTrayViewController;
    }

    else
    {
      if (v12 == 6)
      {
        v16 = [[CSMagSafeAccessorySleeveViewController alloc] initWithAccessory:v6];
        v17 = [(CSCoverSheetContextProviding *)self->_coverSheetContext dateProvider];
        [(CSMagSafeAccessorySleeveViewController *)v16 setDateProvider:v17];

        [v6 visibleScreenCoordinates];
        [(CSMagSafeAccessorySleeveViewController *)v16 setVisibleBounds:?];
        v18 = [(CSCoverSheetViewController *)self activeAppearance];
        [v18 legibilitySettings];
        v19 = v27 = a4;
        [(CSMagSafeAccessorySleeveViewController *)v16 setLegibilitySettings:v19];

        accessoryViewController = [(SBFLockScreenDateViewController *)self->_dateViewController dateView];
        v20 = [accessoryViewController customTimeFont];
        v21 = [accessoryViewController textColor];
        v22 = [accessoryViewController vibrancyConfiguration];
        v23 = [accessoryViewController customTimeNumberingSystem];
        [(CSMagSafeAccessorySleeveViewController *)v16 updateFont:v20 textColor:v21 vibrancyConfiguration:v22 numberingSystem:v23];

        a4 = v27;
        v24 = self->_accessoryViewController;
        self->_accessoryViewController = &v16->super;

LABEL_14:
        if (self->_accessoryViewController)
        {
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke;
          v30[3] = &unk_27838C410;
          v31 = v6;
          v32 = self;
          v33 = a4;
          v25 = MEMORY[0x223D698D0](v30);
          v26 = v25;
          if ((v9 & v8) != 0)
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_823;
            v28[3] = &unk_27838BB18;
            v29 = v25;
            [(CSCoverSheetViewController *)self dismissModalPresentationAnimated:1 completion:v28];
          }

          else
          {
            v25[2](v25);
          }
        }

        goto LABEL_19;
      }

      if (v12 != 8)
      {
        goto LABEL_19;
      }

      if (v8)
      {
        goto LABEL_6;
      }

      v14 = CSMagSafeAccessoryWalletViewController;
    }

    v15 = [[v14 alloc] initWithAccessory:v6];
    accessoryViewController = self->_accessoryViewController;
    self->_accessoryViewController = v15;
    goto LABEL_14;
  }

LABEL_19:
}

void __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ACCESSORY_UI_FADE_IN", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  v3 = [*(a1 + 32) shouldDelayAnimation];
  [*(a1 + 40) _updateAccessoryAnimationPresenting:1 userInteractionDisabled:v3];
  v4 = 0.0;
  if (v3)
  {
    [*(a1 + 32) attachAnimationDelay];
    v4 = v5;
    *(*(a1 + 40) + 1272) = v5 > 0.0;
  }

  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v4;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Accessory animation delay in seconds: %f", buf, 0xCu);
  }

  v7 = dispatch_time(0, (v4 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_815;
  block[3] = &unk_27838C410;
  v12 = *(a1 + 48);
  v9 = *(a1 + 32);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

void __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_815(uint64_t a1)
{
  if ([*(a1 + 32) _isShowingChargingModal])
  {
    v2 = SBLogDashBoard();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "Accessory animation cancelled because charing UI showed up in race", buf, 2u);
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 1280);
    *(v3 + 1280) = 0;
  }

  else
  {
    *(*(a1 + 32) + 1272) = 0;
    objc_initWeak(buf, *(a1 + 32));
    v5 = *(a1 + 32);
    v6 = v5[160];
    v7 = *(a1 + 48);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_2;
    v26[3] = &unk_27838C438;
    objc_copyWeak(&v29, buf);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v27 = v8;
    v28 = v9;
    [v5 _presentModalViewController:v6 animated:v7 completion:v26];
    if (([*(a1 + 40) hasStaticView] & 1) == 0)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_816;
      v23[3] = &unk_27838C460;
      objc_copyWeak(&v25, buf);
      v24 = *(a1 + 40);
      v10 = MEMORY[0x223D698D0](v23);
      v11 = *(a1 + 32);
      v12 = *(v11 + 1296);
      *(v11 + 1296) = v10;

      [*(*(a1 + 32) + 1288) invalidate];
      v13 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSCoverSheetViewController.accessoryViewControllerTimer"];
      v14 = *(a1 + 32);
      v15 = *(v14 + 1288);
      *(v14 + 1288) = v13;

      v16 = *(a1 + 32);
      v17 = *(v16 + 1288);
      [*(v16 + 1280) animationDurationBeforeDismissal];
      v19 = v18;
      v20 = MEMORY[0x277D85CD0];
      v21 = MEMORY[0x277D85CD0];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_2_821;
      v22[3] = &unk_27838C488;
      v22[4] = *(a1 + 32);
      [v17 scheduleWithFireInterval:v20 leewayInterval:v22 queue:v19 handler:0.0];

      objc_destroyWeak(&v25);
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }
}

void __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_2(uint64_t a1)
{
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_ACCESSORY_UI_FADE_IN", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) isWindowed])
  {
    v4 = [WeakRetained delegate];
    [v4 coverSheetWindowedAccessoryViewControllerDidPresent:*(a1 + 40)];
  }
}

void __66__CSCoverSheetViewController__animateAccessory_toVisibleAnimated___block_invoke_816(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _transitionAccessoryViewToVisible:0 accessory:*(a1 + 32) animated:{objc_msgSend(WeakRetained, "isViewLoaded")}];
  if (WeakRetained)
  {
    [WeakRetained[161] invalidate];
    v2 = WeakRetained[161];
    WeakRetained[161] = 0;

    v3 = WeakRetained[162];
    WeakRetained[162] = 0;
  }
}

- (void)_dismissAccessoryViewController:(id)a3 animated:(BOOL)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(CSPresentationViewController *)self->_modalPresentationController presentedViewControllers];
    v8 = [v7 containsObject:v6];

    v9 = SBLogDashBoard();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v6 accessory];
        v12 = [v11 description];
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Dismissing accessory (%@) UI.", buf, 0xCu);
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__CSCoverSheetViewController__dismissAccessoryViewController_animated___block_invoke;
      v15[3] = &unk_27838C410;
      v15[4] = self;
      v16 = v6;
      v17 = a4;
      [v16 performDismissalAnimationWithCompletionHandler:v15];
    }

    else
    {
      if (v10)
      {
        v13 = [v6 accessory];
        v14 = [v13 description];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Dismissing non-presented accessory (%@) UI.", buf, 0xCu);
      }

      [(CSCoverSheetViewController *)self _handleDismissalForAccessoryViewController:v6 animated:0];
    }
  }
}

- (void)_handleDismissalForAccessoryViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = SBLogDashBoardTelemetrySignposts();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21EB05000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ACCESSORY_UI_FADE_OUT", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
    }

    kdebug_trace();
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__CSCoverSheetViewController__handleDismissalForAccessoryViewController_animated___block_invoke;
  v9[3] = &unk_27838C410;
  v11 = v4;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(CSCoverSheetViewController *)self _dismissModalViewController:v8 animated:v4 completion:v9];
}

void __82__CSCoverSheetViewController__handleDismissalForAccessoryViewController_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = SBLogDashBoardTelemetrySignposts();
    if (os_signpost_enabled(v2))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_ACCESSORY_UI_FADE_OUT", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
    }

    kdebug_trace();
  }

  [*(a1 + 32) _updateAccessoryAnimationPresenting:0 userInteractionDisabled:0];
  v3 = [*(a1 + 32) delegate];
  v4 = [*(a1 + 40) accessory];
  if ([v4 isWindowed])
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [v3 coverSheetWindowedAccessoryViewControllerDidDismiss:*(a1 + 32)];
    }
  }

  else
  {
  }
}

- (void)_powerStatusChangedToConnectedState:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (![(CSCoverSheetViewController *)self _isWakeAnimationInProgress])
  {
    v5 = [(CSCoverSheetContextProviding *)self->_coverSheetContext screenStateProvider];
    v6 = [v5 screenIsOn];

    [(CSPowerChangeObserver *)self->_powerChangeObserver update];
    if ([(CSCoverSheetViewController *)self _showingAccessoryView]&& [(CSMagSafeAccessoryViewController *)self->_accessoryViewController hasChargingAnimation])
    {
      v7 = [(CSMagSafeAccessoryViewController *)self->_accessoryViewController showingChargingAnimation];
      v8 = v7;
      if (v3 && !v7)
      {
        v9 = [CSAction actionWithType:3];
        [(CSCoverSheetViewController *)self handleAction:v9 fromSender:self];
      }

      if (!v3 || !v8)
      {

        [(CSCoverSheetViewController *)self _transitionAccessoryChargingViewToVisible:v3];
      }
    }

    else
    {
      v10 = SBLogDashBoard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109376;
        v15 = v3;
        v16 = 1024;
        v17 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
        _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "[Charge UI][Power Status] visible YES, showBattery %d – isAlreadyShowingChargingModal: %d", &v14, 0xEu);
      }

      if (self->_blockingPowerStatusTriggeredChargingUI || [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory]|| self->_suppressChargingUIForAmbient)
      {
        if (self->_suppressChargingUIForAmbient)
        {
          v11 = SBLogDashBoard();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[Charge UI][Suppressed] visible NO, suppressed for ambient presentation!", &v14, 2u);
          }
        }
      }

      else
      {
        [(CSCoverSheetViewController *)self _transitionChargingViewToVisible:1 showBattery:v3 animated:v6];
      }

      v12 = SBLogDashBoard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
        v14 = 67109120;
        v15 = v13;
        _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[Charge UI][Power Status] – endedShowingChargingModal: %d", &v14, 8u);
      }
    }
  }
}

- (BOOL)_transitionPrototypeChargingViewToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v7 = [(CSLockScreenSettings *)self->_prototypeSettings chargingSettings];
  if (![v7 showWirelessAndAccessoryAnimations])
  {
    goto LABEL_12;
  }

  if (!self->_accessoryViewController)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_7:
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__CSCoverSheetViewController__transitionPrototypeChargingViewToVisible_animated___block_invoke;
    v15[3] = &unk_27838C4B0;
    objc_copyWeak(&v18, &location);
    v10 = v7;
    v16 = v10;
    v17 = self;
    v19 = a4;
    v11 = MEMORY[0x223D698D0](v15);
    if ([(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToQiPower]|| [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory]|| [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalCharger])
    {
      v12 = [v10 wirelessChargingAnimationType];
      if (v12 == 1)
      {
LABEL_11:

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
        goto LABEL_12;
      }
    }

    else
    {
      v12 = [v10 wiredChargingAnimationType];
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    v11[2](v11, v5, v12);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
LABEL_14:
    v13 = 1;
    goto LABEL_15;
  }

  v8 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v9 = [v8 containsObject:self->_accessoryViewController];

  if (v9 != v5)
  {
    goto LABEL_7;
  }

  if (v9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v13 = 0;
LABEL_15:

  return v13;
}

void __81__CSCoverSheetViewController__transitionPrototypeChargingViewToVisible_animated___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [*(a1 + 32) accessoryTypeForAnimationType:a3];
  if (a3 == 4)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }
  v7 = ;
  v8 = [MEMORY[0x277D75348] systemRedColor];
  v9 = [CSMagSafeAccessory accessoryWithType:v6 primaryColor:v7 secondoryColor:v8];

  if (![*(*(a1 + 40) + 1280) isStatic] || (a2 & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 1344), "sb_deviceInternalBattery"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isCharging"), v10, (v11 & 1) == 0))
  {
    [WeakRetained _transitionAccessoryViewToVisible:a2 accessory:v9 animated:*(a1 + 56)];
  }
}

- (void)_transitionAccessoryChargingViewToVisible:(BOOL)a3
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_accessoryViewController)
  {
    v3 = a3;
    v5 = [(CSCoverSheetViewController *)self _chargingInfo];
    v6 = [(CSCoverSheetViewController *)self _batteryCenterInternalBattery];
    [v5 setInternalBatteryDevice:v6];

    if (v3)
    {
      v7 = [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalCharger];
      if ([(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory])
      {
        v8 = [v5 externalBatteryDevice];

        if (v8)
        {
          goto LABEL_22;
        }
      }

      [(CSCoverSheetViewController *)self _connectedExternalChargers];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v9 = v33 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v10)
      {
        v11 = *v33;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v32 + 1) + 8 * i);
            if ([v13 isPowerSource] && -[CSCoverSheetViewController _isAppleMagSafePack:](self, "_isAppleMagSafePack:", v13))
            {
              [v5 setChargingWithInternalWirelessAccessory:1];
              [v5 setExternalBatteryDevice:v13];

              goto LABEL_22;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v32 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      if (v7)
      {
LABEL_22:
        v18 = [CSAction actionWithType:3];
        [(CSCoverSheetViewController *)self handleAction:v18 fromSender:self];

        v19 = SBLogDashBoard();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "Showing accessory charging UI", &buf, 2u);
        }

        [(CSMagSafeAccessoryViewController *)self->_accessoryViewController transitionChargingViewVisible:1 chargingInfo:v5];
        objc_initWeak(&buf, self);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __72__CSCoverSheetViewController__transitionAccessoryChargingViewToVisible___block_invoke;
        v30[3] = &unk_27838B748;
        objc_copyWeak(&v31, &buf);
        v20 = MEMORY[0x223D698D0](v30);
        accessoryViewControllerChargingTimerHandler = self->_accessoryViewControllerChargingTimerHandler;
        self->_accessoryViewControllerChargingTimerHandler = v20;

        v22 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSCoverSheetViewController.accessoryViewControllerChargingTimer"];
        accessoryViewControllerChargingTimer = self->_accessoryViewControllerChargingTimer;
        self->_accessoryViewControllerChargingTimer = v22;

        v24 = self->_accessoryViewControllerChargingTimer;
        [(CSMagSafeAccessoryViewController *)self->_accessoryViewController chargingAnimationDuration];
        v26 = v25;
        v27 = MEMORY[0x277D85CD0];
        v28 = MEMORY[0x277D85CD0];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __72__CSCoverSheetViewController__transitionAccessoryChargingViewToVisible___block_invoke_2;
        v29[3] = &unk_27838C488;
        v29[4] = self;
        [(BSAbsoluteMachTimer *)v24 scheduleWithFireInterval:v27 leewayInterval:v29 queue:v26 handler:0.0];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&buf);
      }

      else
      {
        v14 = SBLogDashBoard();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          buf = 67109376;
          v37 = 1024;
          v38 = 0;
          _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "Suppressing accessory charging UI when isChargerConnected: %{BOOL}u, isAccessoryConnected: %{BOOL}u", &buf, 0xEu);
        }
      }
    }

    else
    {
      v15 = SBLogDashBoard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEFAULT, "Dismissing accessory charging UI.", &buf, 2u);
      }

      [(BSAbsoluteMachTimer *)self->_accessoryViewControllerChargingTimer invalidate];
      v16 = self->_accessoryViewControllerChargingTimerHandler;
      self->_accessoryViewControllerChargingTimerHandler = 0;

      v17 = self->_accessoryViewControllerChargingTimer;
      self->_accessoryViewControllerChargingTimer = 0;

      [(CSMagSafeAccessoryViewController *)self->_accessoryViewController transitionChargingViewVisible:0 chargingInfo:v5];
    }
  }
}

void __72__CSCoverSheetViewController__transitionAccessoryChargingViewToVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionAccessoryChargingViewToVisible:0];
  if (WeakRetained)
  {
    [WeakRetained[163] invalidate];
    v1 = WeakRetained[163];
    WeakRetained[163] = 0;

    v2 = WeakRetained[164];
    WeakRetained[164] = 0;
  }

  [WeakRetained _updateDateSubtitleAppearanceForBattery:0 animated:objc_msgSend(WeakRetained chargingVisible:{"isViewLoaded"), 0}];
}

- (id)_batteryCenterInternalBattery
{
  v2 = [(BCBatteryDeviceController *)self->_batteryDeviceController connectedDevices];
  v3 = [v2 bs_filter:&__block_literal_global_833];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_connectedExternalChargers
{
  v2 = [(BCBatteryDeviceController *)self->_batteryDeviceController connectedDevices];
  v3 = [v2 bs_filter:&__block_literal_global_835];

  return v3;
}

BOOL __56__CSCoverSheetViewController__connectedExternalChargers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isPowerSource] && (objc_msgSend(v2, "isInternal") & 1) == 0 && objc_msgSend(v2, "accessoryCategory") == 4;

  return v3;
}

- (id)_chargingInfo
{
  v3 = objc_opt_new();
  v4 = [(BCBatteryDeviceController *)self->_batteryDeviceController sb_deviceInternalBattery];
  [v3 setInternalBatteryDevice:v4];

  v5 = [(CSCoverSheetViewController *)self _connectedExternalChargers];
  v6 = [v5 firstObject];
  [v3 setExternalBatteryDevice:v6];

  v7 = [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory]|| [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalCharger];
  [v3 setChargingWithInternalWirelessAccessory:v7];

  return v3;
}

- (void)_transitionChargingViewToVisible:(BOOL)a3 suppressedByPack:(BOOL)a4 showBattery:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a3;
  v73 = *MEMORY[0x277D85DE8];
  v10 = !a3;
  if ((!a3 || !a4 || ![(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory]) && ![(CSCoverSheetViewController *)self _transitionPrototypeChargingViewToVisible:v7 animated:v6])
  {
    v57 = v7;
    v11 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
    if (!v10 && v11)
    {
      v12 = SBLogDashBoard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v56 = self->_chargingViewController != 0;
        v13 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
        v14 = [v13 containsObject:self->_chargingViewController];
        v15 = [(NSMutableSet *)self->_pendingModalViewControllers containsObject:self->_chargingViewController];
        LODWORD(buf) = 67109632;
        HIDWORD(buf) = v56;
        v69 = 1024;
        v70 = v14;
        v71 = 1024;
        v72 = v15;
        _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "Refusing to present charging UI. hasChargingViewController: %d, chargingViewControllerIsPresented: %d, presentingChargingViewController: %d", &buf, 0x14u);
      }
    }

    if (v10 || v11)
    {
      if (!v8 && v11)
      {
        v16 = SBLogDashBoard();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEFAULT, "Dismissing charging UI.", &buf, 2u);
        }

        [(CSCoverSheetViewController *)self _clearChargingModalTimerPerformingHandler:0];
        chargingViewController = self->_chargingViewController;
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_843;
        v58[3] = &unk_27838BC70;
        v58[4] = self;
        v59 = v6;
        [(CSChargingViewController *)chargingViewController performDismissalAnimationWithCompletionHandler:v58];
      }
    }

    else
    {
      v18 = SBLogDashBoard();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "Presenting charging UI.", &buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = [WeakRetained coverSheetViewControllerIsShowingSecureApp:self];

      v21 = [(CSCoverSheetViewController *)self _appearState]== 2;
      v22 = [(CSCoverSheetViewController *)self isMainPageVisible];
      v23 = [(CSCoverSheetViewController *)self isShowingModalView];
      v24 = v21 & (v20 ^ 1);
      if (v23 || (v24 & v22 & 1) == 0)
      {
        v25 = SBLogDashBoard();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109632;
          HIDWORD(buf) = v24;
          v69 = 1024;
          v70 = v22;
          v71 = 1024;
          v72 = v23;
          _os_log_impl(&dword_21EB05000, v25, OS_LOG_TYPE_DEFAULT, "Refused to create charging VC because of factors: visible: %d, mainPage: %d, showingModal: %d", &buf, 0x14u);
        }
      }

      else
      {
        v26 = [CSAction actionWithType:3];
        [(CSCoverSheetViewController *)self handleAction:v26 fromSender:self];

        v25 = [(CSCoverSheetViewController *)self _chargingInfo];
        v27 = self->_chargingViewController;
        v28 = SBSIsSystemApertureAvailable();
        if ([(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalCharger]|| [(CSPowerChangeObserver *)self->_powerChangeObserver isConnectedToWirelessInternalChargingAccessory])
        {
          v29 = 0;
        }

        else
        {
          v30 = [v25 externalBatteryDevice];
          v31 = v30;
          v29 = !v30 || [v30 accessoryCategory] != 4 || objc_msgSend(v31, "vendor") != 1;
        }

        if (!v27 && v57 && (v28 & v29 & 1) == 0)
        {
          v32 = SBLogDashBoard();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = self->_chargingViewController != 0;
            v34 = [(CSCoverSheetViewController *)self _isShowingChargingModal];
            LODWORD(buf) = 67109376;
            HIDWORD(buf) = v33;
            v69 = 1024;
            v70 = v34;
            _os_log_impl(&dword_21EB05000, v32, OS_LOG_TYPE_DEFAULT, "Creating charging VC. alreadyExisted: %d alreadyPresented: %d", &buf, 0xEu);
          }

          v35 = [[CSChargingViewController alloc] initWithChargingInfo:v25];
          v36 = self->_chargingViewController;
          self->_chargingViewController = v35;

          v37 = SBLogDashBoardTelemetrySignposts();
          if (os_signpost_enabled(v37))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_21EB05000, v37, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CHARGING_UI_FADE_IN", " enableTelemetry=YES  isAnimation=YES ", &buf, 2u);
          }

          kdebug_trace();
          v38 = self->_chargingViewController;
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke;
          v67[3] = &unk_27838B770;
          v67[4] = self;
          [(CSCoverSheetViewController *)self _presentModalViewController:v38 animated:v6 completion:v67];
        }

        v39 = SBLogDashBoard();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        if (v57)
        {
          if (v40)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_21EB05000, v39, OS_LOG_TYPE_DEFAULT, "Check if the charging estimate needs to be shown", &buf, 2u);
          }

          objc_initWeak(&buf, self);
          v41 = [(CSCoverSheetContextProviding *)self->_coverSheetContext powerStatusProvider];
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_838;
          v63[3] = &unk_27838C4F8;
          objc_copyWeak(&v66, &buf);
          v42 = v41;
          v64 = v42;
          v65 = self;
          [v42 fetchFormattedChargeTimeEstimateWithCompletion:v63];

          objc_destroyWeak(&v66);
          objc_destroyWeak(&buf);
        }

        else
        {
          if (v40)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_21EB05000, v39, OS_LOG_TYPE_DEFAULT, "About to create date subtitle for charge.", &buf, 2u);
          }

          [(CSCoverSheetViewController *)self _updateDateSubtitleAppearanceForBattery:0 animated:v6 chargingVisible:1];
        }
      }

      if (self->_chargingViewTimerHandler || self->_chargingViewControllerTimer)
      {
        v43 = SBLogDashBoard();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = self->_chargingViewControllerTimer != 0;
          v45 = self->_chargingViewTimerHandler != 0;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v44;
          v69 = 1024;
          v70 = v45;
          _os_log_impl(&dword_21EB05000, v43, OS_LOG_TYPE_DEFAULT, "Overwriting timer or handler: timerExists: %d, handlerExists: %d", &buf, 0xEu);
        }
      }

      objc_initWeak(&buf, self);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_842;
      v61[3] = &unk_27838B748;
      objc_copyWeak(&v62, &buf);
      v46 = MEMORY[0x223D698D0](v61);
      chargingViewTimerHandler = self->_chargingViewTimerHandler;
      self->_chargingViewTimerHandler = v46;

      v48 = *MEMORY[0x277D66EE0];
      v49 = self->_chargingViewController;
      if (v49 && v57)
      {
        [(CSChargingViewController *)v49 durationBeforeDismissal];
        v48 = v50;
      }

      [(BSAbsoluteMachTimer *)self->_chargingViewControllerTimer invalidate];
      v51 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSCoverSheetViewController.chargingViewControllerTimer"];
      chargingViewControllerTimer = self->_chargingViewControllerTimer;
      self->_chargingViewControllerTimer = v51;

      v53 = self->_chargingViewControllerTimer;
      v54 = MEMORY[0x277D85CD0];
      v55 = MEMORY[0x277D85CD0];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_2;
      v60[3] = &unk_27838C488;
      v60[4] = self;
      [(BSAbsoluteMachTimer *)v53 scheduleWithFireInterval:v54 leewayInterval:v60 queue:v48 handler:0.0];

      objc_destroyWeak(&v62);
      objc_destroyWeak(&buf);
    }
  }
}

void __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v5[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CHARGING_UI_FADE_IN", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) _isShowingChargingModal];
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Finished adding charging VC. presented: %d", v5, 8u);
  }
}

void __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_838(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained isInScreenOffMode] & 1) == 0)
    {
      v6 = [*(a1 + 32) isOnAC];
      if (v3)
      {
        if (v6)
        {
          v7 = SBLogDashBoard();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "About to create date subtitle for the charging estimate .", buf, 2u);
          }

          v8 = [CSAction actionWithType:3];
          [v5 handleAction:v8 fromSender:v5];

          v9 = *MEMORY[0x277D66EE0];
          v10 = [*(*(a1 + 40) + 1072) chargingSettings];
          [v10 extendedSubtitleStringTimeoutMultiplier];
          v12 = v9 * v11;

          v13 = [*(*(a1 + 40) + 1344) sb_deviceInternalBattery];
          v14 = CSChargePercentageLabelForBattery(v13);

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ · %@", v14, v3];
          [v5 _updateChargingSubtitleWithString:v15 timeout:v12];
        }
      }
    }
  }
}

void __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_842(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionChargingViewToVisible:0 showBattery:0 animated:{objc_msgSend(WeakRetained, "isViewLoaded")}];
  [WeakRetained _clearChargingModalTimerPerformingHandler:0];
  [WeakRetained _updateDateSubtitleAppearanceForBattery:0 animated:objc_msgSend(WeakRetained chargingVisible:{"isViewLoaded"), 0}];
}

uint64_t __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_843(uint64_t a1)
{
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CHARGING_UI_FADE_OUT", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  v3 = *(a1 + 32);
  v4 = [v3[167] coverSheetIdentifier];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_844;
  v7[3] = &unk_27838B770;
  v7[4] = *(a1 + 32);
  [v3 _dismissModalViewControllersWithIdentifier:v4 animated:v5 completion:v7];

  return [*(a1 + 32) _updateDateSubtitleAppearanceForBattery:0 animated:*(a1 + 40) chargingVisible:0];
}

void __101__CSCoverSheetViewController__transitionChargingViewToVisible_suppressedByPack_showBattery_animated___block_invoke_844(uint64_t a1)
{
  v2 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21EB05000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CHARGING_UI_FADE_OUT", " enableTelemetry=YES  isAnimation=YES ", v5, 2u);
  }

  kdebug_trace();
  v3 = *(a1 + 32);
  v4 = *(v3 + 1336);
  *(v3 + 1336) = 0;
}

- (void)_clearChargingModalTimerPerformingHandler:(BOOL)a3
{
  v3 = a3;
  [(BSAbsoluteMachTimer *)self->_chargingViewControllerTimer invalidate];
  if (v3)
  {
    chargingViewTimerHandler = self->_chargingViewTimerHandler;
    if (chargingViewTimerHandler)
    {
      chargingViewTimerHandler[2]();
    }
  }

  chargingViewControllerTimer = self->_chargingViewControllerTimer;
  self->_chargingViewControllerTimer = 0;

  v7 = self->_chargingViewTimerHandler;
  self->_chargingViewTimerHandler = 0;
}

- (void)_updateDateSubtitleAppearanceForBattery:(BOOL)a3 animated:(BOOL)a4 chargingVisible:(BOOL)a5
{
  if (!a3)
  {
    v5 = a5;
    if ([(CSCoverSheetViewController *)self _isMainPageShowing])
    {
      if (v5)
      {
        v7 = *MEMORY[0x277D66EE0];

        [(CSCoverSheetViewController *)self _showChargingSubtitleWithTimeout:v7];
      }
    }
  }
}

- (void)_showChargingSubtitleWithTimeout:(double)a3
{
  v5 = [(BCBatteryDeviceController *)self->_batteryDeviceController sb_deviceInternalBattery];
  v6 = CSChargePercentageLabelForBattery(v5);

  if (CSFeatureEnabled(10) && ([MEMORY[0x277D75418] currentDevice], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, (v8 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v9 = [(CSCoverSheetContextProviding *)self->_coverSheetContext powerStatusProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__CSCoverSheetViewController__showChargingSubtitleWithTimeout___block_invoke;
    v11[3] = &unk_27838C520;
    v12 = v9;
    v15 = a3;
    v13 = v6;
    v14 = self;
    v10 = v9;
    [v10 fetchFormattedChargeTimeEstimateWithCompletion:v11];
  }

  else
  {
    [(CSCoverSheetViewController *)self _updateChargingSubtitleWithString:v6 timeout:a3];
  }
}

void __63__CSCoverSheetViewController__showChargingSubtitleWithTimeout___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) isOnAC];
  v4 = *(a1 + 56);
  if (v8 && v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ · %@", *(a1 + 40), v8];
    v6 = [*(*(a1 + 48) + 1072) chargingSettings];
    [v6 extendedSubtitleStringTimeoutMultiplier];
    v4 = v4 * v7;
  }

  else
  {
    v5 = *(a1 + 40);
  }

  [*(a1 + 48) _updateChargingSubtitleWithString:v5 timeout:v4];
}

- (void)_updateChargingSubtitleWithString:(id)a3 timeout:(double)a4
{
  v6 = a3;
  [(SBFLockScreenDateViewController *)self->_dateViewController setCustomSubtitle:v6 withPriority:0 withTimeout:a4];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__CSCoverSheetViewController__updateChargingSubtitleWithString_timeout___block_invoke;
  v15[3] = &unk_27838B748;
  objc_copyWeak(&v16, &location);
  v7 = [v15 copy];
  chargingViewTimerHandler = self->_chargingViewTimerHandler;
  self->_chargingViewTimerHandler = v7;

  [(BSAbsoluteMachTimer *)self->_chargingViewControllerTimer invalidate];
  v9 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSCoverSheetViewController.chargingViewControllerTimer.subtitleOnly"];
  chargingViewControllerTimer = self->_chargingViewControllerTimer;
  self->_chargingViewControllerTimer = v9;

  v11 = self->_chargingViewControllerTimer;
  v12 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__CSCoverSheetViewController__updateChargingSubtitleWithString_timeout___block_invoke_2;
  v14[3] = &unk_27838C488;
  v14[4] = self;
  [(BSAbsoluteMachTimer *)v11 scheduleWithFireInterval:v12 leewayInterval:v14 queue:a4 handler:a4 * 0.15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__CSCoverSheetViewController__updateChargingSubtitleWithString_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearChargingModalTimerPerformingHandler:0];
}

- (void)_transitionChargingDateSubtitleToVisible:(BOOL)a3 animated:(BOOL)a4 force:(BOOL)a5
{
  v5 = a4;
  v6 = a3;
  if (a5 || (-[CSCoverSheetViewController localAppearance](self, "localAppearance"), v8 = objc_claimAutoreleasedReturnValue(), [v8 componentForType:1 identifier:@"ChargingView"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, (((v9 == 0) ^ v6) & 1) == 0))
  {
    if (v5)
    {
      v10 = [MEMORY[0x277CF0B70] settingsWithDuration:0.4];
    }

    else
    {
      v10 = 0;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__CSCoverSheetViewController__transitionChargingDateSubtitleToVisible_animated_force___block_invoke;
    v11[3] = &unk_27838C548;
    v11[4] = self;
    v12 = @"ChargingView";
    v13 = v6;
    [(CSCoverSheetViewController *)self _updateLocalAppearanceForRequester:@"ChargingView" animationSettings:v10 actions:v11 completion:0];
    if (v5)
    {
    }
  }
}

id __86__CSCoverSheetViewController__transitionChargingDateSubtitleToVisible_animated_force___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) localAppearance];
  [v2 removeAllComponentsWithIdentifier:*(a1 + 40)];

  if (*(a1 + 48) == 1)
  {
    v3 = objc_alloc(MEMORY[0x277D65EA8]);
    v4 = [*(*(a1 + 32) + 1344) sb_deviceInternalBattery];
    v5 = CSChargePercentageLabelForBattery(v4);
    v6 = [v3 initWithString:v5 accessoryView:0];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1672);
    *(v7 + 1672) = v6;

    v9 = +[CSComponent dateView];
    v10 = [v9 view:*(*(a1 + 32) + 1672)];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_isMainPageShowing
{
  if ([(CSCoverSheetViewController *)self _appearState]!= 2)
  {
    return 0;
  }

  return [(CSCoverSheetViewController *)self isMainPageVisible];
}

- (void)_displayWillTurnOnWhileOnCoverSheet:(id)a3
{
  v3 = [(CSCoverSheetViewController *)self coverSheetView];
  [v3 resetScrollViewToMainPageAnimated:0 withCompletion:0];
}

- (void)_managedConfigurationEffectiveSettingsDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CSCoverSheetViewController__managedConfigurationEffectiveSettingsDidChange___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__CSCoverSheetViewController__managedConfigurationEffectiveSettingsDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = [MEMORY[0x277D262A0] sharedConnection];
  if (([WeakRetained isSpotlightAllowed] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 1776);

    if (!v2)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 2008));
    [WeakRetained dismissSpotlightAnimated:1];
  }
}

- (void)_updateForGlassLegibilitySetting
{
  if (UIViewGlassGetLegibilitySetting() || UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = +[CSComponent notificationDimmingLayer];
    v4 = [v3 identifier:@"GlassLegibilitySetting"];
    v5 = [v4 priority:80];
    v6 = [v5 hidden:1];

    [(CSAppearance *)self->_localAppearance addComponent:v6];
  }

  else
  {
    [(CSAppearance *)self->_localAppearance removeAllComponentsWithIdentifier:@"GlassLegibilitySetting"];
  }

  [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"GlassLegibilitySetting"];
}

- (void)publisher:(id)a3 didUpdateLayout:(id)a4 withTransition:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24 = a5;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy_;
  v51[4] = __Block_byref_object_dispose_;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v10 = [v9 elements];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __71__CSCoverSheetViewController_publisher_didUpdateLayout_withTransition___block_invoke;
  v30[3] = &unk_27838C570;
  v30[4] = &v45;
  v30[5] = v51;
  v30[6] = v39;
  v30[7] = &v41;
  v30[8] = v37;
  v30[9] = &v31;
  [v10 enumerateObjectsWithOptions:2 usingBlock:v30];

  v11 = [v46[5] identifier];
  [CSCoverSheetViewController _setHasContentAboveCoverSheet:"_setHasContentAboveCoverSheet:opaque:isSignificantUserInteraction:" opaque:? isSignificantUserInteraction:?];
  self->_contentAboveIsControlCenter = [v11 isEqualToString:*MEMORY[0x277D0AB88]];
  v12 = v32[5];
  v13 = [v11 isEqualToString:*MEMORY[0x277D0ABC0]];
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    v15 = 1;
  }

  else if ([v11 isEqualToString:*MEMORY[0x277D66F50]])
  {
    v16 = [MEMORY[0x277D75418] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    v15 = (v17 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v15 = 0;
  }

  v23 = v8;
  self->_contentAboveIsSiriOrNotFullScreenOniPad = v15;
  self->_standByPresentedAboveCoverSheet = *(v42 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CSCoverSheetViewController_publisher_didUpdateLayout_withTransition___block_invoke_2;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(NSHashTable *)self->_observers copy];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v53 count:16];
  if (v19)
  {
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v22 coverSheetViewController:self didUpdateLayout:v9];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v25 objects:v53 count:16];
    }

    while (v19);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(v51, 8);
}

void __71__CSCoverSheetViewController_publisher_didUpdateLayout_withTransition___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v31 = a2;
  if ([v31 layoutRole] == 6)
  {
    v7 = [v31 identifier];
    v8 = [v7 rangeOfString:@"com.apple.VisualIntelligenceCamera"];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_storeStrong((*(a1[9] + 8) + 40), a2);
    }
  }

  else
  {
    v9 = *(a1[4] + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a2);
    }

    v12 = [v31 identifier];
    v13 = [v12 rangeOfString:*MEMORY[0x277D0ABA0] options:1];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
    }

    v14 = [v31 identifier];
    v15 = [v14 rangeOfString:*MEMORY[0x277D0AB88] options:1];

    v16 = v15 != 0x7FFFFFFFFFFFFFFFLL;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v17 = [MEMORY[0x277D75418] currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v19 = [v31 identifier];
      v20 = [v19 rangeOfString:*MEMORY[0x277D66F50]];

      v16 = v20 != 0x7FFFFFFFFFFFFFFFLL || v15 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v22 = [v31 identifier];
    v23 = [v22 rangeOfString:*MEMORY[0x277D66F68]];

    v24 = [v31 identifier];
    v25 = [v24 rangeOfString:*MEMORY[0x277D0ABC0] options:1];

    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      v26 = [v31 identifier];
      v27 = [v26 isEqualToString:*MEMORY[0x277D66F60]];

      if (v27)
      {
        *(*(a1[7] + 8) + 24) = 1;
      }
    }

    v30 = v13 != 0x7FFFFFFFFFFFFFFFLL || v25 != 0x7FFFFFFFFFFFFFFFLL || v23 != 0x7FFFFFFFFFFFFFFFLL;
    if (!v30 && !v16)
    {
      *(*(a1[8] + 8) + 24) = 1;
    }
  }

  if (*(*(a1[5] + 8) + 40) && *(*(a1[4] + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t __71__CSCoverSheetViewController_publisher_didUpdateLayout_withTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateActiveBehaviorsForReason:@"CSCSVC – displayLayoutDidUpdateLayout"];
  v2 = *(a1 + 32);

  return [v2 _updateActiveAppearanceForReason:@"CSCSVC – displayLayoutDidUpdateLayout"];
}

- (void)_setHasContentAboveCoverSheet:(BOOL)a3 opaque:(BOOL)a4 isSignificantUserInteraction:(BOOL)a5
{
  v5 = a4;
  v27 = *MEMORY[0x277D85DE8];
  if (self->_hasContentAboveCoverSheet == a3)
  {
    goto LABEL_19;
  }

  v7 = a5;
  self->_hasContentAboveCoverSheet = a3;
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBOOL();
    *buf = 138543618;
    v24 = v9;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "Display layout did change - has content above coversheet? %{public}@ [ isSignificantUserInteraction:%{BOOL}d ]", buf, 0x12u);
  }

  if (self->_hasContentAboveCoverSheet)
  {
    [(CSCoverSheetViewController *)self _handleEventType:10];
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [(CSCoverSheetViewController *)self _handleEventType:11];
  if (v7)
  {
LABEL_8:
    v10 = [CSAction actionWithType:4];
    [(CSCoverSheetViewController *)self handleAction:v10 fromSender:self];
  }

LABEL_9:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 coverSheetViewController:self didChangeHasContentAbove:self->_hasContentAboveCoverSheet];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

LABEL_19:
  if (self->_hasOpaqueContentAboveCoverSheet != v5)
  {
    self->_hasOpaqueContentAboveCoverSheet = v5;
    v17 = [(CSCoverSheetViewController *)self traitOverrides];
    [v17 setNSIntegerValue:v5 - 1 forTrait:objc_opt_class()];
  }
}

- (void)_updateModalPresentationControllerVisibility:(id)a3
{
  v4 = [a3 hasContent];

  [(CSCoverSheetViewController *)self _setModalPresentationControllerVisibility:v4 cancelTouches:1];
}

- (void)_setModalPresentationControllerVisibility:(BOOL)a3 cancelTouches:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  modalPresentationController = self->_modalPresentationController;
  if (a3)
  {
    v6 = a4;
    [(CSCoverSheetViewControllerBase *)self->_modalPresentationController setPresenter:self];
    v7 = self->_modalPresentationController;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__CSCoverSheetViewController__setModalPresentationControllerVisibility_cancelTouches___block_invoke;
    v19[3] = &unk_27838B798;
    v19[4] = self;
    if ([(CSCoverSheetViewController *)self bs_addChildViewController:v7 animated:0 transitionBlock:v19])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [(NSHashTable *)self->_observers copy];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v13 coverSheetViewControllerDidPresentModalView:self];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v10);
      }

      if (v6)
      {
        BKSHIDServicesCancelTouchesOnMainDisplay();
      }
    }
  }

  else if (modalPresentationController)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__CSCoverSheetViewController__setModalPresentationControllerVisibility_cancelTouches___block_invoke_2;
    v14[3] = &unk_27838B798;
    v14[4] = self;
    [(CSCoverSheetViewController *)self bs_removeChildViewController:modalPresentationController animated:0 transitionBlock:v14];
    [(CSCoverSheetViewControllerBase *)self->_modalPresentationController setPresenter:0];
    [(CSCoverSheetViewController *)self _updateActiveBehaviorsForReason:@"DismissedModalPresentationController"];
    [(CSCoverSheetViewController *)self _updateActiveAppearanceForReason:@"DismissedModalPresentationController"];
  }
}

void __86__CSCoverSheetViewController__setModalPresentationControllerVisibility_cancelTouches___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 coverSheetView];
  v5 = [*(*(a1 + 32) + 1264) view];
  [v4 setModalPresentationView:v5];

  v6[2]();
}

void __86__CSCoverSheetViewController__setModalPresentationControllerVisibility_cancelTouches___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 coverSheetView];
  [v3 setModalPresentationView:0];

  v4[2]();
}

- (BOOL)_isPresentingModalViewControllerWithIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v22 + 1) + 8 * v9) coverSheetIdentifier];
      v11 = BSEqualStrings();

      if (v11)
      {
        goto LABEL_18;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_pendingModalViewControllers;
  v12 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = *v19;
LABEL_11:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v15 = [*(*(&v18 + 1) + 8 * v14) coverSheetIdentifier];
      v16 = BSEqualStrings();

      if (v16)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v12) = 1;
  }

LABEL_19:

  return v12;
}

- (id)_presentedModalViewControllerWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 coverSheetIdentifier];
        v11 = BSEqualStrings();

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_presentModalViewController:(id)a3 shouldDismissOverlays:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 appearanceIdentifier];
    v14 = [v13 containsString:@"SBDashBoardEmergencyDialerViewController"];

    if (v14)
    {
      v15 = [(CSCoverSheetViewController *)self delegate];
      [v15 coverSheetViewController:self requestsTransientOverlaysDismissedAnimated:v7];
    }

    [(NSMutableSet *)self->_pendingModalViewControllers addObject:v10];
    v16 = [CSAction actionWithType:3];
    [(CSCoverSheetViewController *)self handleAction:v16 fromSender:self];

    v17 = [CSAction actionWithType:13 animated:v7];
    [(CSCoverSheetViewController *)self handleAction:v17 fromSender:self];

    -[CSCoverSheetViewController _setModalPresentationControllerVisibility:cancelTouches:](self, "_setModalPresentationControllerVisibility:cancelTouches:", 1, [v10 presentationCancelsTouches]);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __100__CSCoverSheetViewController__presentModalViewController_shouldDismissOverlays_animated_completion___block_invoke;
    v26 = &unk_27838C5C0;
    v27 = self;
    v30 = v7;
    v28 = v10;
    v29 = v12;
    v31 = a4;
    v18 = MEMORY[0x223D698D0](&v23);
    v19 = [(CSCoverSheetViewController *)self overlayControllerIfExists:v23];
    if (v19 && (v20 = v19, -[CSCoverSheetViewController overlayControllerIfExists](self, "overlayControllerIfExists"), v21 = objc_claimAutoreleasedReturnValue(), [v21 presentationProgress], IsZero = BSFloatIsZero(), v21, v20, (IsZero & 1) == 0))
    {
      [(CSCoverSheetViewController *)self deactivateTodayViewWithCompletion:v18];
    }

    else
    {
      v18[2](v18);
    }
  }

  else if (v11)
  {
    (*(v11 + 2))(v11);
  }
}

void __100__CSCoverSheetViewController__presentModalViewController_shouldDismissOverlays_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1264) hasContent];
  v3 = v2 ^ 1;
  v4 = [*(a1 + 32) pageViewControllerAtIndex:*(*(a1 + 32) + 2048)];
  if ((v2 & 1) == 0)
  {
    [*(a1 + 32) bs_beginAppearanceTransitionForChildViewController:v4 toVisible:0 animated:*(a1 + 56)];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v5 + 1264);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__CSCoverSheetViewController__presentModalViewController_shouldDismissOverlays_animated_completion___block_invoke_2;
  v10[3] = &unk_27838C598;
  v10[4] = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v14 = v3;
  v9 = v4;
  v12 = v9;
  [v7 presentContentViewController:v11 animated:v8 completion:v10];
  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) dismissOverlays:-1 animated:*(a1 + 56)];
  }
}

uint64_t __100__CSCoverSheetViewController__presentModalViewController_shouldDismissOverlays_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 2216) removeObject:*(a1 + 40)];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) bs_endAppearanceTransitionForChildViewController:*(a1 + 48)];
  }

  v3 = *(a1 + 32);

  return [v3 _handleEventType:40];
}

- (void)_dismissModalViewControllersWithIdentifier:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v17 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v18 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 coverSheetIdentifier];
        v16 = BSEqualStrings();

        if (v16)
        {
          [(CSCoverSheetViewController *)self _dismissModalViewController:v14 animated:v17 completion:v18];
          v11 = 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (v18 && (v11 & 1) == 0)
  {
    v18[2]();
  }
}

- (void)_dismissAllModalViewControllersExcept:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
  v11 = [v10 mutableCopy];

  [v11 removeObject:v8];
  if ([v11 count])
  {
    v12 = MEMORY[0x277CF0BA0];
    v13 = [v11 count];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __88__CSCoverSheetViewController__dismissAllModalViewControllersExcept_animated_completion___block_invoke;
    v27[3] = &unk_27838C5E8;
    v28 = v9;
    v14 = [v12 sentinelWithSignalCount:v13 + 1 signalHandler:v27];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v11;
    v15 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __88__CSCoverSheetViewController__dismissAllModalViewControllersExcept_animated_completion___block_invoke_2;
          v21[3] = &unk_27838B838;
          v21[4] = v19;
          v22 = v14;
          [(CSCoverSheetViewController *)self _dismissModalViewController:v19 animated:v6 completion:v21];
        }

        v16 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v16);
    }

    [v14 signal];
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

void __88__CSCoverSheetViewController__dismissAllModalViewControllersExcept_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailed])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"some modal view controller dismissal did not call its completion block", 0}];
  }

  else if ([v3 isComplete] && *(a1 + 32))
  {
    BSDispatchMain();
  }
}

void __88__CSCoverSheetViewController__dismissAllModalViewControllersExcept_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 noteDidDismissProgrammatically];
  }

  [*(a1 + 40) signal];
}

- (void)_dismissModalViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    [(NSMutableSet *)self->_pendingModalViewControllers removeObject:v8];
    v11 = [CSAction actionWithType:3];
    [(CSCoverSheetViewController *)self handleAction:v11 fromSender:self];

    v12 = [CSAction actionWithType:13 animated:v6];
    [(CSCoverSheetViewController *)self handleAction:v12 fromSender:self];

    v13 = [(CSPresentationViewController *)self->_modalPresentationController presentedViewControllers];
    if ([v13 containsObject:v8])
    {
      v14 = [(CSPresentationViewController *)self->_modalPresentationController contentViewControllers];
      v15 = [v14 count] == 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(CSCoverSheetViewController *)self pageViewControllerAtIndex:self->_lastSettledPageIndex];
    if (v15)
    {
      [(CSCoverSheetViewController *)self bs_beginAppearanceTransitionForChildViewController:v16 toVisible:1 animated:v6];
    }

    modalPresentationController = self->_modalPresentationController;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__CSCoverSheetViewController__dismissModalViewController_animated_completion___block_invoke;
    v19[3] = &unk_27838BE68;
    v22 = v15;
    v19[4] = self;
    v20 = v16;
    v21 = v10;
    v18 = v16;
    [(CSPresentationViewController *)modalPresentationController dismissContentViewController:v8 animated:v6 completion:v19];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

uint64_t __78__CSCoverSheetViewController__dismissModalViewController_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) bs_endAppearanceTransitionForChildViewController:*(a1 + 40)];
  }

  [*(a1 + 32) _updateModalPresentationControllerVisibility:*(*(a1 + 32) + 1264)];
  [*(a1 + 32) _handleEventType:41];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_dismissToMainPageFromPageViewController:(id)a3
{
  v7 = a3;
  v4 = [v7 requestedDismissalType];
  if (v4 == 1)
  {
    v5 = [v7 requestedDismissalSettings];
    v6 = [(CSCoverSheetViewController *)self coverSheetView];
    [v6 resetScrollViewToMainPageAnimated:1 withAnimationSettings:v5 withCompletion:0];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [(CSCoverSheetViewController *)self coverSheetView];
    [v5 resetScrollViewToMainPageAnimated:1 withCompletion:0];
  }

LABEL_6:
}

- (void)_migrateNotificationsToHistory
{
  v2 = [(CSMainPageContentViewController *)self->_mainPageContentViewController combinedListViewController];
  [v2 migrateIncomingNotificationsToNotificationCenter];
}

- (void)_addOrRemoveThermalTrapViewIfNecessaryAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(SBFLockOutStatusProvider *)self->_lockOutController isThermallyBlocked]& 1) != 0 || [(CSLockScreenSettings *)self->_prototypeSettings showThermalTrap])
  {
    v5 = +[(CSCoverSheetViewControllerBase *)CSTemperatureWarningViewController];
    v6 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v5];

    if (v6)
    {
      return;
    }

    v7 = [CSTemperatureWarningViewController alloc];
    v9 = [(CSCoverSheetContextProviding *)self->_coverSheetContext thermalStatusProvider];
    v8 = [(CSTemperatureWarningViewController *)v7 initWithThermalStatusProvider:?];
    [(CSCoverSheetViewController *)self _presentModalViewController:v8 animated:v3 completion:0];
  }

  else
  {
    v9 = +[(CSCoverSheetViewControllerBase *)CSTemperatureWarningViewController];
    [CSCoverSheetViewController _dismissModalViewControllersWithIdentifier:"_dismissModalViewControllersWithIdentifier:animated:completion:" animated:? completion:?];
  }
}

- (void)_addOrRemoveBlockedViewIfNecessaryAnimated:(BOOL)a3
{
  if ([(SBFLockOutStatusProvider *)self->_lockOutController isBlocked]&& ![(SBFLockOutStatusProvider *)self->_lockOutController isThermallyBlocked]|| [(CSLockScreenSettings *)self->_prototypeSettings showBlockedUI])
  {
    v4 = +[(CSCoverSheetViewControllerBase *)CSDeviceBlockViewController];
    v5 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v4];

    if (v5)
    {
      return;
    }

    v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext mediaController];
    [v6 stopMediaPlaybackForSource:1];

    v7 = [[CSDeviceBlockViewController alloc] initWithDeviceBlockStatusProvider:self->_lockOutController];
    [CSCoverSheetViewController _presentModalViewController:"_presentModalViewController:animated:completion:" animated:? completion:?];
  }

  else
  {
    v7 = +[(CSCoverSheetViewControllerBase *)CSDeviceBlockViewController];
    [CSCoverSheetViewController _dismissModalViewControllersWithIdentifier:"_dismissModalViewControllersWithIdentifier:animated:completion:" animated:? completion:?];
  }
}

- (void)_addOrRemoveResetRestoreViewIfNecessaryAnimated:(BOOL)a3
{
  v3 = a3;
  v8 = [(CSCoverSheetContextProviding *)self->_coverSheetContext resetRestoreStatusProvider];
  if (([v8 isRestoring] & 1) != 0 || (objc_msgSend(v8, "isResetting") & 1) != 0 || -[CSLockScreenSettings showResetRestore](self->_prototypeSettings, "showResetRestore"))
  {
    v5 = +[(CSCoverSheetViewControllerBase *)CSResetRestoreViewController];
    v6 = [(CSCoverSheetViewController *)self _isPresentingModalViewControllerWithIdentifier:v5];

    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [[CSResetRestoreViewController alloc] initWithStatusProvider:v8];
    [(CSCoverSheetViewController *)self _presentModalViewController:v7 animated:v3 completion:0];
  }

  else
  {
    v7 = +[(CSCoverSheetViewControllerBase *)CSResetRestoreViewController];
    [(CSCoverSheetViewController *)self _dismissModalViewControllersWithIdentifier:v7 animated:v3 completion:0];
  }

LABEL_8:
}

- (void)dismissOverlays:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CSCoverSheetContextProviding *)self->_coverSheetContext dismissableOverlaysOutOf:a3, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) dismissOverlayForDashBoardAnimated:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)userPresenceDetectedRecentlyDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 coverSheetViewControllerDidChangeUserPresence:{objc_msgSend(v4, "userPresenceDetectedRecently")}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (CSNotificationDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

- (CSWallpaperColorProvider)wallpaperColorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  return WeakRetained;
}

- (CGRect)posterPreferredSalientContentRectangle
{
  x = self->_posterPreferredSalientContentRectangle.origin.x;
  y = self->_posterPreferredSalientContentRectangle.origin.y;
  width = self->_posterPreferredSalientContentRectangle.size.width;
  height = self->_posterPreferredSalientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CSEmergencyCalling)emergencyCaller
{
  WeakRetained = objc_loadWeakRetained(&self->_emergencyCaller);

  return WeakRetained;
}

- (CSIdleTimerControlling)idleTimerController
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerController);

  return WeakRetained;
}

- (CSApplicationLaunching)applicationLauncher
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationLauncher);

  return WeakRetained;
}

- (CSWidgetURLHandling)widgetURLHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetURLHandler);

  return WeakRetained;
}

- (void)_preferredContentSizeDidChange
{
  v3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  self->_wantsAccessibilityContentSizes = UIContentSizeCategoryIsAccessibilityCategory(v3);

  self->_needsAccessibilityContentSizesUpdate = self->_wantsAccessibilityContentSizes;
}

- (void)_updateAccessibilityContentSizesIfNeeded
{
  if (self->_wantsAccessibilityContentSizes && self->_needsAccessibilityContentSizesUpdate)
  {
    [MEMORY[0x277D65EB0] timeFontMetrics];
    self->_accessibilityTimeLabelBaselineY = v3 + 95.0;
    [MEMORY[0x277D65EA8] labelFontMetrics];
    self->_accessibilityTimeSubtitleBaselineY = v4;
    self->_needsAccessibilityContentSizesUpdate = 0;
  }
}

- (double)windowedAccessoryInset
{
  v3 = __sb__runningInSpringBoard();
  v4 = &CSWindowedAccessoryInset;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v127 = [MEMORY[0x277D75418] currentDevice];
    if ([v127 userInterfaceIdiom] != 1)
    {
      v5 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  v6 = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    v5 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v28 == *(MEMORY[0x277D66E30] + 288) && v27 == *(MEMORY[0x277D66E30] + 296))
    {
      v156 = v7 ^ 1;
      v157 = v6;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v154 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v155 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96AB0;
      goto LABEL_67;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_10:
  v8 = __sb__runningInSpringBoard();
  v156 = v5;
  v157 = v6;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v126 = [MEMORY[0x277D75418] currentDevice];
    if ([v126 userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    v9 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 440))
    {
      v154 = v7 ^ 1;
      v155 = v10;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96AD8;
      goto LABEL_67;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_19:
  v11 = __sb__runningInSpringBoard();
  v154 = v9;
  v155 = v10;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v125 = [MEMORY[0x277D75418] currentDevice];
    if ([v125 userInterfaceIdiom] != 1)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_28;
    }
  }

  v13 = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v116 = [MEMORY[0x277D759A0] mainScreen];
      [v116 _referenceBounds];
    }

    v12 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 376))
    {
      v152 = v7 ^ 1;
      v153 = v13;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96AC8;
      goto LABEL_67;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_28:
  v14 = __sb__runningInSpringBoard();
  v152 = v12;
  v153 = v13;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v2 = 0;
      v15 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v124 = [MEMORY[0x277D75418] currentDevice];
    if ([v124 userInterfaceIdiom] != 1)
    {
      v2 = 0;
      v15 = 1;
      goto LABEL_37;
    }
  }

  v15 = v14 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v121 = [MEMORY[0x277D759A0] mainScreen];
    [v121 _referenceBounds];
  }

  v2 = v7 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 280))
  {
    v150 = v7 ^ 1;
    v151 = v15;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v148 = 0uLL;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    v149 = 0;
    v133 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AD0;
    goto LABEL_67;
  }

LABEL_37:
  v17 = __sb__runningInSpringBoard();
  v150 = v2;
  v151 = v15;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v148) = 0;
      v4 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v123 = [MEMORY[0x277D75418] currentDevice];
    if ([v123 userInterfaceIdiom] != 1)
    {
      HIDWORD(v148) = 0;
      v4 = 1;
      goto LABEL_47;
    }
  }

  v4 = v17 ^ 1u;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v119 = [MEMORY[0x277D759A0] mainScreen];
    [v119 _referenceBounds];
  }

  HIDWORD(v148) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v25 >= *(MEMORY[0x277D66E30] + 264))
  {
    v149 = v4;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    *&v148 = 0;
    v137 = 0;
    v136 = 0;
    DWORD2(v148) = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AC0;
    goto LABEL_67;
  }

LABEL_47:
  v26 = __sb__runningInSpringBoard();
  v149 = v4;
  if (v26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v148 + 4) = 0;
      goto LABEL_186;
    }
  }

  else
  {
    v122 = [MEMORY[0x277D75418] currentDevice];
    if ([v122 userInterfaceIdiom] != 1)
    {
      *(&v148 + 4) = 0x100000000;
      goto LABEL_186;
    }
  }

  DWORD2(v148) = v26 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v115 = [MEMORY[0x277D759A0] mainScreen];
    [v115 _referenceBounds];
  }

  DWORD1(v148) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v34 >= *(MEMORY[0x277D66E30] + 248))
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    LODWORD(v148) = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AB8;
    goto LABEL_67;
  }

LABEL_186:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_188;
    }

LABEL_194:
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AA8;
    LODWORD(v148) = v7 ^ 1;
    goto LABEL_67;
  }

  v120 = [MEMORY[0x277D75418] currentDevice];
  if ([v120 userInterfaceIdiom] == 1)
  {
    goto LABEL_194;
  }

LABEL_188:
  LODWORD(v148) = v7 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_192:
    v147 = 0;
    goto LABEL_202;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom])
    {
      v147 = 0x100000000;
      goto LABEL_202;
    }
  }

  HIDWORD(v147) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v106 = [MEMORY[0x277D759A0] mainScreen];
      [v106 _referenceBounds];
    }

    LODWORD(v147) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 200))
    {
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A88;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

LABEL_202:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v146 = 0;
      goto LABEL_212;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom])
    {
      v146 = 0x100000000;
      goto LABEL_212;
    }
  }

  HIDWORD(v146) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v109 = [MEMORY[0x277D759A0] mainScreen];
      [v109 _referenceBounds];
    }

    LODWORD(v146) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_216;
    }
  }

  else
  {
    LODWORD(v146) = 0;
  }

LABEL_212:
  if (_SBF_Private_IsD94Like())
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A90;
    goto LABEL_67;
  }

LABEL_216:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_220:
    v145 = 0;
    goto LABEL_230;
  }

  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    v110 = [MEMORY[0x277D75418] currentDevice];
    if ([v110 userInterfaceIdiom])
    {
      v145 = 0x100000000;
      goto LABEL_230;
    }
  }

  HIDWORD(v145) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v101 = [MEMORY[0x277D759A0] mainScreen];
      [v101 _referenceBounds];
    }

    LODWORD(v145) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 136))
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A98;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v145) = 0;
  }

LABEL_230:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v144 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom])
    {
      v144 = 0x100000000;
      goto LABEL_240;
    }
  }

  HIDWORD(v144) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v105 = [MEMORY[0x277D759A0] mainScreen];
      [v105 _referenceBounds];
    }

    LODWORD(v144) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_244;
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

LABEL_240:
  if (_SBF_Private_IsD64Like())
  {
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96AA0;
    goto LABEL_67;
  }

LABEL_244:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v143 = 0;
      goto LABEL_254;
    }
  }

  else
  {
    v111 = [MEMORY[0x277D75418] currentDevice];
    if ([v111 userInterfaceIdiom])
    {
      v143 = 0x100000000;
      goto LABEL_254;
    }
  }

  HIDWORD(v143) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v102 = [MEMORY[0x277D759A0] mainScreen];
      [v102 _referenceBounds];
    }

    v7 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v143) = v7;
    if (v42 >= *(MEMORY[0x277D66E30] + 136))
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A78;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v143) = 0;
  }

LABEL_254:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v142 = 0;
      goto LABEL_264;
    }
  }

  else
  {
    v108 = [MEMORY[0x277D75418] currentDevice];
    if ([v108 userInterfaceIdiom])
    {
      v142 = 0x100000000;
      goto LABEL_264;
    }
  }

  HIDWORD(v142) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    LODWORD(v142) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_264:
  if (_SBF_Private_IsD54())
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A80;
    goto LABEL_67;
  }

LABEL_274:
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v141 = 0;
      goto LABEL_284;
    }
  }

  else
  {
    v107 = [MEMORY[0x277D75418] currentDevice];
    if ([v107 userInterfaceIdiom])
    {
      v141 = 0x100000000;
      goto LABEL_284;
    }
  }

  HIDWORD(v141) = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    v7 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v141) = v7;
    if (v47 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A38;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_284:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v140 = 0;
      goto LABEL_294;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_294;
    }
  }

  HIDWORD(v140) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    LODWORD(v140) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_303;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_294:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A40;
    goto LABEL_67;
  }

LABEL_303:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_307:
    v139 = 0;
    goto LABEL_314;
  }

  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_307;
    }
  }

  else
  {
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_314;
    }
  }

  HIDWORD(v139) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    LODWORD(v139) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 184))
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A28;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_314:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v138 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_324;
    }
  }

  HIDWORD(v138) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v93 = [MEMORY[0x277D759A0] mainScreen];
      [v93 _referenceBounds];
    }

    LODWORD(v138) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_328;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_324:
  if (_SBF_Private_IsD93Like())
  {
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A30;
    goto LABEL_67;
  }

LABEL_328:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_332:
    v137 = 0;
    goto LABEL_342;
  }

  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_332;
    }
  }

  else
  {
    v95 = [MEMORY[0x277D75418] currentDevice];
    if ([v95 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_342;
    }
  }

  HIDWORD(v137) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    LODWORD(v137) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A58;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_342:
  v53 = __sb__runningInSpringBoard();
  if (v53)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v136) = 0;
      v7 = 0;
      goto LABEL_352;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      v7 = 0;
      HIDWORD(v136) = 1;
      goto LABEL_352;
    }
  }

  HIDWORD(v136) = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v89 = [MEMORY[0x277D759A0] mainScreen];
      [v89 _referenceBounds];
    }

    v7 = v54 ^ 1u;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_356;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_352:
  if (_SBF_Private_IsD63Like())
  {
    v135 = 0;
    LODWORD(v136) = v7;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A60;
    goto LABEL_67;
  }

LABEL_356:
  LODWORD(v136) = v7;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_360:
    v135 = 0;
    HIDWORD(v134) = 0;
    goto LABEL_370;
  }

  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_360;
    }
  }

  else
  {
    v91 = [MEMORY[0x277D75418] currentDevice];
    if ([v91 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      v135 = 1;
      goto LABEL_370;
    }
  }

  v135 = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v82 = [MEMORY[0x277D759A0] mainScreen];
      [v82 _referenceBounds];
    }

    HIDWORD(v134) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A68;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_370:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_380;
    }
  }

  else
  {
    v94 = [MEMORY[0x277D75418] currentDevice];
    if ([v94 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_380;
    }
  }

  LODWORD(v134) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v85 = [MEMORY[0x277D759A0] mainScreen];
      [v85 _referenceBounds];
    }

    HIDWORD(v133) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_384;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_380:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A70;
    goto LABEL_67;
  }

LABEL_384:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    v92 = [MEMORY[0x277D75418] currentDevice];
    if ([v92 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_394;
    }
  }

  LODWORD(v133) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    HIDWORD(v132) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v132) = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A48;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_394:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_404;
    }
  }

  else
  {
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_404;
    }
  }

  LODWORD(v132) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v81 = [MEMORY[0x277D759A0] mainScreen];
      [v81 _referenceBounds];
    }

    HIDWORD(v131) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_414;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_404:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A50;
    goto LABEL_67;
  }

LABEL_414:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      HIDWORD(v130) = 0;
      goto LABEL_424;
    }
  }

  else
  {
    v87 = [MEMORY[0x277D75418] currentDevice];
    if ([v87 userInterfaceIdiom])
    {
      HIDWORD(v130) = 0;
      LODWORD(v131) = 1;
      goto LABEL_424;
    }
  }

  LODWORD(v131) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    HIDWORD(v130) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v130) = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A18;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v130) = 0;
  }

LABEL_424:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v130) = 0;
      v7 = 0;
      goto LABEL_434;
    }
  }

  else
  {
    v84 = [MEMORY[0x277D75418] currentDevice];
    if ([v84 userInterfaceIdiom])
    {
      v7 = 0;
      LODWORD(v130) = 1;
      goto LABEL_434;
    }
  }

  LODWORD(v130) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v65 = __sb__runningInSpringBoard();
    if (v65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v79 = [MEMORY[0x277D759A0] mainScreen];
      [v79 _referenceBounds];
    }

    v7 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_441;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_434:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v129) = v7;
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A20;
    goto LABEL_67;
  }

LABEL_441:
  HIDWORD(v129) = v7;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969F8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96A00;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969E8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969F0;
    goto LABEL_67;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v129) = 0;
      v128 = 0;
      goto LABEL_461;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      v128 = 0;
      LODWORD(v129) = 1;
      goto LABEL_461;
    }
  }

  LODWORD(v129) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    v128 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 88))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A08;
      goto LABEL_67;
    }
  }

  else
  {
    v128 = 0;
  }

LABEL_461:
  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    v77 = [MEMORY[0x277D75418] currentDevice];
    if ([v77 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_471;
    }
  }

  v18 = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
    }

    v19 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 72))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96A10;
      goto LABEL_67;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_471:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
      v21 = 0;
      v20 = 1;
      goto LABEL_481;
    }
  }

  v20 = v7 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 _referenceBounds];
  }

  v21 = v7 ^ 1;
  BSSizeRoundForScale();
  if (v70 >= *(MEMORY[0x277D66E30] + 56))
  {
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC969E0;
    goto LABEL_67;
  }

LABEL_481:
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
LABEL_498:
      v24 = &CSWindowedAccessoryInset;
      goto LABEL_67;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_498;
    }
  }

  v22 = v2 ^ 1;
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  v23 = v73 ^ 1;
  BSSizeRoundForScale();
  if (v74 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_498;
  }

  v24 = &qword_21EC969D8;
LABEL_67:
  v32 = *v24;
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v128)
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (DWORD1(v148))
  {
  }

  if (DWORD2(v148))
  {
  }

  if (HIDWORD(v148))
  {

    if (!v149)
    {
      goto LABEL_163;
    }
  }

  else if (!v149)
  {
LABEL_163:
    if (v150)
    {
      goto LABEL_164;
    }

    goto LABEL_174;
  }

  if (v150)
  {
LABEL_164:

    if (!v151)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v151)
  {
LABEL_165:
    if (v152)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v152)
  {
LABEL_166:

    if (!v153)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v153)
  {
LABEL_167:
    if (v154)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v154)
  {
LABEL_168:

    if (!v155)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v155)
  {
LABEL_169:
    if (v156)
    {
      goto LABEL_170;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (v156)
  {
LABEL_170:

    if (!v157)
    {
      return v32;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v157)
  {
LABEL_181:
  }

  return v32;
}

- (double)timeToSubtitleLabelBaselineDifferenceY
{
  if (self->_wantsAccessibilityContentSizes)
  {
    [(CSCoverSheetViewController *)self _updateAccessibilityContentSizesIfNeeded];
    return self->_accessibilityTimeSubtitleBaselineY;
  }

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = (v6 & 0xFFFFFFFFFFFFFFFBLL);
  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v7 == 1)
  {
    if (v8)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v10 = 0x4044000000000000;
        return *&v10;
      }

      goto LABEL_13;
    }

    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom] == 1)
    {
LABEL_13:
      v11 = __sb__runningInSpringBoard();
      v12 = v11;
      if (v11)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v15 = v14 < *(MEMORY[0x277D66E30] + 280);
      v16 = 40.0;
      v17 = 46.0;
      goto LABEL_25;
    }

    v13 = 0x4044000000000000;
LABEL_18:
    v4 = *&v13;
LABEL_31:

    return v4;
  }

  if (v8)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v10 = 0x4041000000000000;
      return *&v10;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom])
    {
      v13 = 0x4041000000000000;
      goto LABEL_18;
    }
  }

  v18 = __sb__runningInSpringBoard();
  v12 = v18;
  if (v18)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v15 = v19 < *(MEMORY[0x277D66E30] + 40);
  v16 = 34.0;
  v17 = 37.0;
LABEL_25:
  if (v15)
  {
    v4 = v16;
  }

  else
  {
    v4 = v17;
  }

  if ((v12 & 1) == 0)
  {
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

  return v4;
}

- (double)timeLabelOffsetForScrollPercent:(double)a3
{
  v5 = [(CSCoverSheetViewController *)self mainPageContentViewController];
  [(CSCoverSheetViewController *)self _timeLabelScrollPercentForDateTimeLayout:[(CSCoverSheetViewController *)self _dateTimeLayoutForPage:v5]];
  v7 = v6;
  if ((BSFloatIsZero() & 1) == 0)
  {
    v8 = [(CSCoverSheetViewController *)self _allowedPageViewControllers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(CSCoverSheetViewController *)self _pageForScrollPercent:a3];
      [(CSCoverSheetViewController *)self _timeLabelScrollPercentForDateTimeLayout:[(CSCoverSheetViewController *)self _dateTimeLayoutForPage:v10]];
      v12 = -a3;
      if (a3 >= 0.0)
      {
        v12 = a3;
      }

      v7 = v7 + v12 * (v11 - v7);
    }
  }

  return v7;
}

- (double)_timeLabelScrollPercentForDateTimeLayout:(unint64_t)a3
{
  if (a3 == 3)
  {
    v4 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    result = 1.0;
    v5 = -1.0;
  }

  else
  {
    result = 0.0;
    if (a3 != 2)
    {
      return result;
    }

    v4 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    result = -1.0;
    v5 = 1.0;
  }

  if (v4)
  {
    return v5;
  }

  return result;
}

void __62__CSCoverSheetViewController_Layout__prominentBaselineToListY__block_invoke()
{
  v2 = __sb__runningInSpringBoard();
  v3 = &CSProminentBaselineToListY;
  if (v2)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v120 = [MEMORY[0x277D75418] currentDevice];
    if ([v120 userInterfaceIdiom] != 1)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_10;
    }
  }

  v5 = v2 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v121 = [MEMORY[0x277D759A0] mainScreen];
      [v121 _referenceBounds];
    }

    v4 = v6 ^ 1;
    BSSizeRoundForScale();
    if (v25 == *(MEMORY[0x277D66E30] + 288) && v24 == *(MEMORY[0x277D66E30] + 296))
    {
      v149 = v6 ^ 1;
      v150 = v5;
      v137 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v139 = 0;
      v140 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v141 = 0uLL;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v142 = 0;
      v143 = 0;
      v126 = 0;
      v125 = 0;
      v144 = 0;
      v145 = 0;
      v124 = 0;
      v123 = 0;
      v146 = 0;
      v147 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v148 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96890;
      goto LABEL_67;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_10:
  v7 = __sb__runningInSpringBoard();
  v149 = v4;
  v150 = v5;
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v8 = 0;
      v0 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v119 = [MEMORY[0x277D75418] currentDevice];
    if ([v119 userInterfaceIdiom] != 1)
    {
      v8 = 0;
      v0 = 1;
      goto LABEL_19;
    }
  }

  v0 = v7 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v111 = [MEMORY[0x277D759A0] mainScreen];
      [v111 _referenceBounds];
    }

    v8 = v6 ^ 1;
    BSSizeRoundForScale();
    if (v27 >= *(MEMORY[0x277D66E30] + 440))
    {
      v147 = v6 ^ 1;
      v148 = v0;
      v137 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v139 = 0;
      v140 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v141 = 0uLL;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v142 = 0;
      v143 = 0;
      v126 = 0;
      v125 = 0;
      v144 = 0;
      v145 = 0;
      v124 = 0;
      v123 = 0;
      v146 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC968B8;
      goto LABEL_67;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_19:
  v9 = __sb__runningInSpringBoard();
  v147 = v8;
  v148 = v0;
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v1 = 0;
      v10 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v118 = [MEMORY[0x277D75418] currentDevice];
    if ([v118 userInterfaceIdiom] != 1)
    {
      v1 = 0;
      v10 = 1;
      goto LABEL_28;
    }
  }

  v10 = v9 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v110 = [MEMORY[0x277D759A0] mainScreen];
      [v110 _referenceBounds];
    }

    v1 = v6 ^ 1;
    BSSizeRoundForScale();
    if (v28 >= *(MEMORY[0x277D66E30] + 376))
    {
      v145 = v6 ^ 1;
      v146 = v10;
      v137 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v139 = 0;
      v140 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v141 = 0uLL;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v142 = 0;
      v143 = 0;
      v126 = 0;
      v125 = 0;
      v144 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC968A8;
      goto LABEL_67;
    }
  }

  else
  {
    v1 = 0;
  }

LABEL_28:
  v11 = __sb__runningInSpringBoard();
  v145 = v1;
  v146 = v10;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v3 = 0;
      v12 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v117 = [MEMORY[0x277D75418] currentDevice];
    if ([v117 userInterfaceIdiom] != 1)
    {
      v3 = 0;
      v12 = 1;
      goto LABEL_37;
    }
  }

  v12 = v11 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v114 = [MEMORY[0x277D759A0] mainScreen];
    [v114 _referenceBounds];
  }

  v3 = v6 ^ 1;
  BSSizeRoundForScale();
  if (v13 >= *(MEMORY[0x277D66E30] + 280))
  {
    v143 = v6 ^ 1;
    v144 = v12;
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v139 = 0;
    v140 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v141 = 0uLL;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v142 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC968B0;
    goto LABEL_67;
  }

LABEL_37:
  v14 = __sb__runningInSpringBoard();
  v143 = v3;
  v144 = v12;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v141) = 0;
      v15 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom] != 1)
    {
      HIDWORD(v141) = 0;
      v15 = 1;
      goto LABEL_47;
    }
  }

  v15 = v14 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v112 = [MEMORY[0x277D759A0] mainScreen];
    [v112 _referenceBounds];
  }

  HIDWORD(v141) = v6 ^ 1;
  BSSizeRoundForScale();
  if (v22 >= *(MEMORY[0x277D66E30] + 264))
  {
    v142 = v15;
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v139 = 0;
    v140 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    *&v141 = 0;
    v129 = 0;
    v130 = 0;
    DWORD2(v141) = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC968A0;
    goto LABEL_67;
  }

LABEL_47:
  v23 = __sb__runningInSpringBoard();
  v142 = v15;
  if (v23)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v141 + 4) = 0;
      goto LABEL_187;
    }
  }

  else
  {
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom] != 1)
    {
      *(&v141 + 4) = 0x100000000;
      goto LABEL_187;
    }
  }

  DWORD2(v141) = v23 ^ 1;
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v109 = [MEMORY[0x277D759A0] mainScreen];
    [v109 _referenceBounds];
  }

  DWORD1(v141) = v6 ^ 1;
  BSSizeRoundForScale();
  if (v29 >= *(MEMORY[0x277D66E30] + 248))
  {
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v139 = 0;
    v140 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v141) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96898;
    goto LABEL_67;
  }

LABEL_187:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_189;
    }

LABEL_195:
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v139 = 0;
    v140 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96888;
    LODWORD(v141) = v6 ^ 1;
    goto LABEL_67;
  }

  v113 = [MEMORY[0x277D75418] currentDevice];
  if ([v113 userInterfaceIdiom] == 1)
  {
    goto LABEL_195;
  }

LABEL_189:
  LODWORD(v141) = v6 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_193:
    v140 = 0;
    goto LABEL_203;
  }

  v30 = __sb__runningInSpringBoard();
  if (v30)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_193;
    }
  }

  else
  {
    v107 = [MEMORY[0x277D75418] currentDevice];
    if ([v107 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_203;
    }
  }

  HIDWORD(v140) = v30 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    LODWORD(v140) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 200))
    {
      v137 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v139 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v127 = 0;
      v128 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96868;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_203:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v139 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v108 = [MEMORY[0x277D75418] currentDevice];
    if ([v108 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_213;
    }
  }

  HIDWORD(v139) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v103 = [MEMORY[0x277D759A0] mainScreen];
      [v103 _referenceBounds];
    }

    LODWORD(v139) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_217;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_213:
  if (_SBF_Private_IsD94Like())
  {
    v137 = 0;
    v138 = 0;
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96870;
    goto LABEL_67;
  }

LABEL_217:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_221:
    v138 = 0;
    goto LABEL_231;
  }

  v32 = __sb__runningInSpringBoard();
  if (v32)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_221;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_231;
    }
  }

  HIDWORD(v138) = v32 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v95 = [MEMORY[0x277D759A0] mainScreen];
      [v95 _referenceBounds];
    }

    LODWORD(v138) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 136))
    {
      v136 = 0;
      v137 = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v128 = 0;
      v129 = 0;
      v127 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96878;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_231:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v137 = 0;
      goto LABEL_241;
    }
  }

  else
  {
    v106 = [MEMORY[0x277D75418] currentDevice];
    if ([v106 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_241;
    }
  }

  HIDWORD(v137) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v99 = [MEMORY[0x277D759A0] mainScreen];
      [v99 _referenceBounds];
    }

    LODWORD(v137) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_245;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_241:
  if (_SBF_Private_IsD64Like())
  {
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96880;
    goto LABEL_67;
  }

LABEL_245:
  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v136 = 0;
      goto LABEL_255;
    }
  }

  else
  {
    v105 = [MEMORY[0x277D75418] currentDevice];
    if ([v105 userInterfaceIdiom])
    {
      v136 = 0x100000000;
      goto LABEL_255;
    }
  }

  HIDWORD(v136) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v36 = __sb__runningInSpringBoard();
    if (v36)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    v6 = v36 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v136) = v6;
    if (v37 >= *(MEMORY[0x277D66E30] + 136))
    {
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v128 = 0;
      v129 = 0;
      v127 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96858;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v136) = 0;
  }

LABEL_255:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v135 = 0;
      goto LABEL_265;
    }
  }

  else
  {
    v102 = [MEMORY[0x277D75418] currentDevice];
    if ([v102 userInterfaceIdiom])
    {
      v135 = 0x100000000;
      goto LABEL_265;
    }
  }

  HIDWORD(v135) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v94 = [MEMORY[0x277D759A0] mainScreen];
      [v94 _referenceBounds];
    }

    LODWORD(v135) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_275;
    }
  }

  else
  {
    LODWORD(v135) = 0;
  }

LABEL_265:
  if (_SBF_Private_IsD54())
  {
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96860;
    goto LABEL_67;
  }

LABEL_275:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v134 = 0;
      goto LABEL_285;
    }
  }

  else
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      v134 = 0x100000000;
      goto LABEL_285;
    }
  }

  HIDWORD(v134) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    v6 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v134) = v6;
    if (v42 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v128 = 0;
      v129 = 0;
      v127 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96818;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v134) = 0;
  }

LABEL_285:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v133 = 0;
      goto LABEL_295;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      v133 = 0x100000000;
      goto LABEL_295;
    }
  }

  HIDWORD(v133) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    LODWORD(v133) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_304;
    }
  }

  else
  {
    LODWORD(v133) = 0;
  }

LABEL_295:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96820;
    goto LABEL_67;
  }

LABEL_304:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_308:
    v132 = 0;
    goto LABEL_315;
  }

  v44 = __sb__runningInSpringBoard();
  if (v44)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_308;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      v132 = 0x100000000;
      goto LABEL_315;
    }
  }

  HIDWORD(v132) = v44 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v84 = [MEMORY[0x277D759A0] mainScreen];
      [v84 _referenceBounds];
    }

    LODWORD(v132) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v47 >= *(MEMORY[0x277D66E30] + 184))
    {
      v130 = 0;
      v131 = 0;
      v128 = 0;
      v129 = 0;
      v127 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96808;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v132) = 0;
  }

LABEL_315:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v131 = 0;
      goto LABEL_325;
    }
  }

  else
  {
    v97 = [MEMORY[0x277D75418] currentDevice];
    if ([v97 userInterfaceIdiom])
    {
      v131 = 0x100000000;
      goto LABEL_325;
    }
  }

  HIDWORD(v131) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v87 = [MEMORY[0x277D759A0] mainScreen];
      [v87 _referenceBounds];
    }

    LODWORD(v131) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v45 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_329;
    }
  }

  else
  {
    LODWORD(v131) = 0;
  }

LABEL_325:
  if (_SBF_Private_IsD93Like())
  {
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96810;
    goto LABEL_67;
  }

LABEL_329:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_333:
    v130 = 0;
    goto LABEL_343;
  }

  v46 = __sb__runningInSpringBoard();
  if (v46)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_333;
    }
  }

  else
  {
    v89 = [MEMORY[0x277D75418] currentDevice];
    if ([v89 userInterfaceIdiom])
    {
      v130 = 0x100000000;
      goto LABEL_343;
    }
  }

  HIDWORD(v130) = v46 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    LODWORD(v130) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 104))
    {
      v128 = 0;
      v129 = 0;
      v127 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96838;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v130) = 0;
  }

LABEL_343:
  v48 = __sb__runningInSpringBoard();
  if (v48)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v129) = 0;
      v6 = 0;
      goto LABEL_353;
    }
  }

  else
  {
    v92 = [MEMORY[0x277D75418] currentDevice];
    if ([v92 userInterfaceIdiom])
    {
      v6 = 0;
      HIDWORD(v129) = 1;
      goto LABEL_353;
    }
  }

  HIDWORD(v129) = v48 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v49 = __sb__runningInSpringBoard();
    if (v49)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    v6 = v49 ^ 1u;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_357;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_353:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v129) = v6;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96840;
    goto LABEL_67;
  }

LABEL_357:
  LODWORD(v129) = v6;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_361:
    v128 = 0;
    goto LABEL_371;
  }

  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_361;
    }
  }

  else
  {
    v85 = [MEMORY[0x277D75418] currentDevice];
    if ([v85 userInterfaceIdiom])
    {
      v128 = 0x100000000;
      goto LABEL_371;
    }
  }

  HIDWORD(v128) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    LODWORD(v128) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 216))
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96848;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v128) = 0;
  }

LABEL_371:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v127 = 0;
      goto LABEL_381;
    }
  }

  else
  {
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      v127 = 0x100000000;
      goto LABEL_381;
    }
  }

  HIDWORD(v127) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v79 = [MEMORY[0x277D759A0] mainScreen];
      [v79 _referenceBounds];
    }

    LODWORD(v127) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v53 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_385;
    }
  }

  else
  {
    LODWORD(v127) = 0;
  }

LABEL_381:
  if (_SBF_Private_IsD23Like())
  {
    v125 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96850;
    goto LABEL_67;
  }

LABEL_385:
  v54 = __sb__runningInSpringBoard();
  if (v54)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v126 = 0;
      goto LABEL_395;
    }
  }

  else
  {
    v86 = [MEMORY[0x277D75418] currentDevice];
    if ([v86 userInterfaceIdiom])
    {
      v126 = 0x100000000;
      goto LABEL_395;
    }
  }

  HIDWORD(v126) = v54 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v77 = [MEMORY[0x277D759A0] mainScreen];
      [v77 _referenceBounds];
    }

    LODWORD(v126) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 120))
    {
      v124 = 0;
      v125 = 0;
      v122 = 0;
      v123 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC96828;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v126) = 0;
  }

LABEL_395:
  v6 = __sb__runningInSpringBoard();
  if (v6)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v125 = 0;
      goto LABEL_405;
    }
  }

  else
  {
    v82 = [MEMORY[0x277D75418] currentDevice];
    if ([v82 userInterfaceIdiom])
    {
      v125 = 0x100000000;
      goto LABEL_405;
    }
  }

  HIDWORD(v125) = v6 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
    }

    LODWORD(v125) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_415;
    }
  }

  else
  {
    LODWORD(v125) = 0;
  }

LABEL_405:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v123 = 0;
    v124 = 0;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96830;
    goto LABEL_67;
  }

LABEL_415:
  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v124 = 0;
      goto LABEL_425;
    }
  }

  else
  {
    v81 = [MEMORY[0x277D75418] currentDevice];
    if ([v81 userInterfaceIdiom])
    {
      v124 = 0x100000000;
      goto LABEL_425;
    }
  }

  HIDWORD(v124) = v58 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v74 = [MEMORY[0x277D759A0] mainScreen];
      [v74 _referenceBounds];
    }

    LODWORD(v124) = v6 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 104))
    {
      v122 = 0;
      v123 = 0;
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC967F8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v124) = 0;
  }

LABEL_425:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v123) = 0;
      v6 = 0;
      goto LABEL_435;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      v6 = 0;
      HIDWORD(v123) = 1;
      goto LABEL_435;
    }
  }

  HIDWORD(v123) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v60 = __sb__runningInSpringBoard();
    if (v60)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v73 = [MEMORY[0x277D759A0] mainScreen];
      [v73 _referenceBounds];
    }

    v6 = v60 ^ 1u;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_442;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_435:
  if (_SBF_Private_IsD53())
  {
    LODWORD(v123) = v6;
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC96800;
    goto LABEL_67;
  }

LABEL_442:
  LODWORD(v123) = v6;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC967D8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC967E0;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC967C8;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    v122 = 0;
    v151 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC967D0;
    goto LABEL_67;
  }

  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v122 = 0;
      goto LABEL_462;
    }
  }

  else
  {
    v72 = [MEMORY[0x277D75418] currentDevice];
    if ([v72 userInterfaceIdiom])
    {
      v122 = 0x100000000;
      goto LABEL_462;
    }
  }

  HIDWORD(v122) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v70 = [MEMORY[0x277D759A0] mainScreen];
      [v70 _referenceBounds];
    }

    LODWORD(v122) = v5 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 88))
    {
      v151 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC967E8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v122) = 0;
  }

LABEL_462:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v151 = 0;
      v16 = 0;
      goto LABEL_472;
    }
  }

  else
  {
    v71 = [MEMORY[0x277D75418] currentDevice];
    if ([v71 userInterfaceIdiom])
    {
      v16 = 0;
      v151 = 1;
      goto LABEL_472;
    }
  }

  v151 = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v5 = __sb__runningInSpringBoard();
    if (v5)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 _referenceBounds];
    }

    v16 = v5 ^ 1;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 72))
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = &qword_21EC967F0;
      goto LABEL_67;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_472:
  v5 = __sb__runningInSpringBoard();
  if (v5)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_482;
    }
  }

  else
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    if ([v0 userInterfaceIdiom])
    {
      v18 = 0;
      v17 = 1;
      goto LABEL_482;
    }
  }

  v17 = v5 ^ 1;
  v1 = __sb__runningInSpringBoard();
  if (v1)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 _referenceBounds];
  }

  v18 = v1 ^ 1;
  BSSizeRoundForScale();
  if (v65 >= *(MEMORY[0x277D66E30] + 56))
  {
    v19 = 0;
    v20 = 0;
    v21 = &qword_21EC967C0;
    goto LABEL_67;
  }

LABEL_482:
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v19 = 0;
      v20 = 0;
LABEL_499:
      v21 = &CSProminentBaselineToListY;
      goto LABEL_67;
    }
  }

  else
  {
    v1 = [MEMORY[0x277D75418] currentDevice];
    if ([v1 userInterfaceIdiom])
    {
      v20 = 0;
      v19 = 1;
      goto LABEL_499;
    }
  }

  v19 = v3 ^ 1;
  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  v20 = v68 ^ 1;
  BSSizeRoundForScale();
  if (v69 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_499;
  }

  v21 = &qword_21EC967B8;
LABEL_67:
  prominentBaselineToListY_prominentBaselineToListY = *v21;
  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v17)
  {
  }

  if (v16)
  {
  }

  if (v151)
  {
  }

  if (v122)
  {
  }

  if (HIDWORD(v122))
  {
  }

  if (v123)
  {
  }

  if (HIDWORD(v123))
  {
  }

  if (v124)
  {
  }

  if (HIDWORD(v124))
  {
  }

  if (v125)
  {
  }

  if (HIDWORD(v125))
  {
  }

  if (v126)
  {
  }

  if (HIDWORD(v126))
  {
  }

  if (v127)
  {
  }

  if (HIDWORD(v127))
  {
  }

  if (v128)
  {
  }

  if (HIDWORD(v128))
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (HIDWORD(v135))
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (DWORD1(v141))
  {
  }

  if (DWORD2(v141))
  {
  }

  if (HIDWORD(v141))
  {

    if (!v142)
    {
      goto LABEL_163;
    }
  }

  else if (!v142)
  {
LABEL_163:
    if (v143)
    {
      goto LABEL_164;
    }

    goto LABEL_174;
  }

  if (v143)
  {
LABEL_164:

    if (!v144)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v144)
  {
LABEL_165:
    if (v145)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v145)
  {
LABEL_166:

    if (!v146)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v146)
  {
LABEL_167:
    if (v147)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v147)
  {
LABEL_168:

    if (!v148)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v148)
  {
LABEL_169:
    if (v149)
    {
      goto LABEL_170;
    }

LABEL_180:
    if (!v150)
    {
      return;
    }

    goto LABEL_181;
  }

LABEL_179:

  if (!v149)
  {
    goto LABEL_180;
  }

LABEL_170:

  if (!v150)
  {
    return;
  }

LABEL_181:
}

- (double)dateTimeMostExtremeLeadingX
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self view];
  [v3 bounds];
  MidX = CGRectGetMidX(v26);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(CSCoverSheetViewController *)self pageViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([(CSCoverSheetViewController *)self _dateTimeLayoutForPage:v10]== 2)
        {
          v11 = [MEMORY[0x277D75418] currentDevice];
          v12 = [v11 userInterfaceIdiom];

          if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [MEMORY[0x277D67DA0] idealSearchPlatterWidth];
            v14 = v13;
            v15 = [(CSCoverSheetViewController *)self view];
            [v15 bounds];
            v16 = (CGRectGetWidth(v27) - v14) * 0.5;

            [(CSCoverSheetViewController *)self _dateTimeInsetXForPage:v10];
            v18 = v16 + v17;
          }

          else
          {
            [(CSCoverSheetViewController *)self _dateTimeInsetXForPage:v10];
          }

          if (MidX >= v18)
          {
            MidX = v18;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return MidX;
}

- (double)dateTimeMostExtremeTrailingX
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(CSCoverSheetViewController *)self view];
  [v3 bounds];
  MidX = CGRectGetMidX(v26);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(CSCoverSheetViewController *)self pageViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([(CSCoverSheetViewController *)self _dateTimeLayoutForPage:v10]== 3)
        {
          v11 = [MEMORY[0x277D75418] currentDevice];
          v12 = [v11 userInterfaceIdiom];

          if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [MEMORY[0x277D67DA0] idealSearchPlatterWidth];
            v14 = v13;
            v15 = [(CSCoverSheetViewController *)self view];
            [v15 bounds];
            v16 = (CGRectGetWidth(v27) - v14) * 0.5;

            [(CSCoverSheetViewController *)self _dateTimeInsetXForPage:v10];
            v18 = v16 + v17;
          }

          else
          {
            [(CSCoverSheetViewController *)self _dateTimeInsetXForPage:v10];
          }

          if (MidX >= v18)
          {
            MidX = v18;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return MidX;
}

- (BOOL)containsCenteredDateTimeLayout
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CSCoverSheetViewController *)self pageViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(CSCoverSheetViewController *)self _dateTimeLayoutForPage:*(*(&v10 + 1) + 8 * i)]== 1)
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (double)_dateTimeInsetXForPage:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewController *)self view];
  [v5 bounds];
  MidX = CGRectGetMidX(v9);

  if (objc_opt_respondsToSelector())
  {
    [v4 dateTimeInsetX];
    MidX = v7;
  }

  return MidX;
}

- (double)_listInsetXForPage:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 listInsetX];
    v4 = v5;
  }

  return v4;
}

- (double)_minDateListSpacingForPage:(id)a3
{
  v3 = a3;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 minimumDateToListSpacing];
    v4 = v5;
  }

  return v4;
}

- (id)_pageForScrollPercent:(double)a3
{
  v5 = [(CSCoverSheetViewController *)self pageViewControllers];
  v6 = [(CSCoverSheetViewController *)self _indexOfMainPage];
  v7 = [(CSCoverSheetViewController *)self pageViewControllers];
  v8 = [v7 objectAtIndex:v6];

  if (BSFloatIsZero())
  {
    v9 = v8;
  }

  else
  {
    v10 = [v5 count] - 1;
    if (a3 >= 0.0)
    {
      v11 = a3;
    }

    else
    {
      v11 = -a3;
    }

    v12 = BSFloatLessThanFloat();
    v13 = ceil(v11);
    v14 = round(v11);
    if (!v12)
    {
      v13 = v14;
    }

    v15 = v13;
    if (BSFloatGreaterThanFloat())
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    v17 = v16 + v6;
    if (v10 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v10;
    }

    v9 = [v5 objectAtIndex:v18];
  }

  v19 = v9;

  return v19;
}

- (unint64_t)_dateTimeLayoutForPage:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 dateTimeLayout];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithPageViewControllers:mainPageContentViewController:context:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __98__CSCoverSheetViewController_activateCameraWithHostableEntity_animated_sendingActions_completion___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21EB05000, v0, OS_LOG_TYPE_ERROR, "Camera presentation failed with reason %@", v1, 0xCu);
}

- (void)isUnlockDisabled
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finishUIUnlockFromSource:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[[self activeBehavior] areRestrictedCapabilities:CSCapabilityUnlock] == NO", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_scrollPanGestureChanged:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createHomeButtonShowPasscodeRecognizerForHomeButtonPress
{
  OUTLINED_FUNCTION_7();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateBehaviorForController:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277CF0C00] descriptionForObject:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9(v2, v3, v4, v5, v6);
}

- (void)updateBehaviorForController:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAppearanceForController:(uint64_t)a1 withAnimationSettings:completion:.cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277CF0C00] descriptionForObject:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9(v2, v3, v4, v5, v6);
}

- (void)wouldHandleButtonEvent:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v9 = NSStringFromCoverSheetEventType([a2 type]);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);
}

- (void)transitionSource:willBeginWithType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:@"type != CSCoverSheetTransitionTypeNone" object:? file:? lineNumber:? description:?];
}

- (void)transitionSource:willBeginWithType:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_removeAllowedPageViewController:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _allowedPageViewControllers];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)_updateVisibilityForPageViewControllersWithVisiblePageViewController:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"newPageIndex != NSNotFound", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_updateVisibilityForPageViewControllersWithVisiblePageViewController:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"![self isTransitioning]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)__currentDesiredAppearanceWithStartIndex:targetIndex:targetAppearance:targetPresentation:modalAppearance:proudLockAppearance:poseidonAppearance:backgroundContentAppearance:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)__currentDesiredAppearanceWithStartIndex:(void *)a1 targetIndex:targetAppearance:targetPresentation:modalAppearance:proudLockAppearance:poseidonAppearance:backgroundContentAppearance:.cold.2(void *a1)
{
  v2 = [a1 pageViewControllers];
  v3 = [a1 _allowedPageViewControllers];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x20u);
}

- (void)__currentDesiredAppearanceWithStartIndex:(void *)a1 targetIndex:targetAppearance:targetPresentation:modalAppearance:proudLockAppearance:poseidonAppearance:backgroundContentAppearance:.cold.3(void *a1)
{
  v2 = [a1 pageViewControllers];
  v3 = [a1 _allowedPageViewControllers];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x20u);
}

- (void)_updateActiveAppearanceForReason:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateActiveAppearanceForReason:(__CFString *)a1 .cold.2(__CFString *a1, NSObject *a2)
{
  v3 = a1;
  v8 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 count])
  {
    if ([(__CFString *)v3 count]== 1)
    {
      v3 = [(__CFString *)v3 anyObject];
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v3 = @"(none)";
  }

  v6 = 138412290;
  v7 = v3;
  OUTLINED_FUNCTION_9(&dword_21EB05000, a2, v4, "Added: %@", &v6);
  if (v5)
  {
  }
}

- (void)_updateActiveAppearanceForReason:(__CFString *)a1 .cold.3(__CFString *a1, NSObject *a2)
{
  v3 = a1;
  v8 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 count])
  {
    if ([(__CFString *)v3 count]== 1)
    {
      v3 = [(__CFString *)v3 anyObject];
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v3 = @"(none)";
  }

  v6 = 138412290;
  v7 = v3;
  OUTLINED_FUNCTION_9(&dword_21EB05000, a2, v4, "Removed: %@", &v6);
  if (v5)
  {
  }
}

@end