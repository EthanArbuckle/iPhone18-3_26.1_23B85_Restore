@interface HFItemManager
- (BOOL)_isUsingOnlyItemModules;
- (BOOL)_requiresNotificationsForCharacteristic:(id)a3;
- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate;
- (BOOL)_shouldHideServiceItem:(id)a3 containedInServiceGroupItem:(id)a4;
- (BOOL)_shouldPerformUpdateOnMainThread;
- (BOOL)disableExternalUpdatesWithReason:(id)a3;
- (BOOL)endDisableExternalUpdatesWithReason:(id)a3;
- (BOOL)itemIsBeingDisplayed:(id)a3;
- (HFItemManager)init;
- (HFItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HFItemManagerDelegate)delegate;
- (NSSet)allDisplayedItems;
- (NSSet)allItems;
- (id)_allDisplayedItemsIncludingInternalItems;
- (id)_allItemsIncludingInternalItems;
- (id)_allSuppressedCharacteristics;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_cameraForCameraControl:(id)a3;
- (id)_cameraForCameraStream:(id)a3;
- (id)_cameraForUserSettings:(id)a3;
- (id)_debug_itemDescriptions;
- (id)_debug_itemManagerDescription;
- (id)_debug_itemProviderDescriptions;
- (id)_dependentHomeKitObjectsOfClass:(Class)a3 inHomeKitObjects:(id)a4;
- (id)_directItemDependenciesForHomeKitObjects:(id)a3 class:(Class)a4;
- (id)_homeFuture;
- (id)_indexPathForItem:(id)a3 inDisplayedItemsArray:(id)a4;
- (id)_internalItems;
- (id)_invalidationReasonsForAddedOrRemovedAccessory:(id)a3;
- (id)_invalidationReasonsForAddedOrRemovedMediaSystem:(id)a3;
- (id)_itemsFilteredToExisting:(id)a3;
- (id)_itemsOfClass:(Class)a3 inItems:(id)a4 allowTransformedItems:(BOOL)a5;
- (id)_itemsToHideInSet:(id)a3;
- (id)_itemsToUpdateForAccessorySettingChange:(id)a3;
- (id)_itemsToUpdateForAccessorySettingChanges:(id)a3;
- (id)_itemsToUpdateForAllowAccessWhileLockedSettingChange;
- (id)_itemsToUpdateForCurrentHomeChange;
- (id)_itemsToUpdateForHomeKitKeyPaths:(id)a3 forHomeKitObjectIdentifiers:(id)a4;
- (id)_itemsToUpdateForHomeKitSettingsChange:(id)a3;
- (id)_itemsToUpdateForIncomingInvitation:(id)a3;
- (id)_itemsToUpdateForLightProfiles:(id)a3;
- (id)_itemsToUpdateForMediaObjectChange:(id)a3;
- (id)_itemsToUpdateForMediaProfileContainer:(id)a3;
- (id)_itemsToUpdateForMediaSessionChange:(id)a3;
- (id)_itemsToUpdateForMediaSystemChange:(id)a3;
- (id)_itemsToUpdateForModifiedAccessCodes:(id)a3;
- (id)_itemsToUpdateForModifiedAccessories:(id)a3;
- (id)_itemsToUpdateForModifiedActionSets:(id)a3;
- (id)_itemsToUpdateForModifiedActions:(id)a3;
- (id)_itemsToUpdateForModifiedCameras:(id)a3;
- (id)_itemsToUpdateForModifiedCharacteristics:(id)a3 includeSuppressedCharacteristics:(BOOL)a4;
- (id)_itemsToUpdateForModifiedEvents:(id)a3;
- (id)_itemsToUpdateForModifiedHomePersonManagerSettings:(id)a3;
- (id)_itemsToUpdateForModifiedMetadataForHomes:(id)a3;
- (id)_itemsToUpdateForModifiedMetadataForMediaDestinationController:(id)a3;
- (id)_itemsToUpdateForModifiedNetworkConfigurationProfiles:(id)a3;
- (id)_itemsToUpdateForModifiedNetworkProtectionGroups:(id)a3;
- (id)_itemsToUpdateForModifiedPersonManagers:(id)a3;
- (id)_itemsToUpdateForModifiedPersons:(id)a3;
- (id)_itemsToUpdateForModifiedResidentDevices:(id)a3;
- (id)_itemsToUpdateForModifiedRooms:(id)a3;
- (id)_itemsToUpdateForModifiedServiceGroups:(id)a3;
- (id)_itemsToUpdateForModifiedServiceTypes:(id)a3;
- (id)_itemsToUpdateForModifiedServices:(id)a3;
- (id)_itemsToUpdateForModifiedSharingDevices:(id)a3;
- (id)_itemsToUpdateForModifiedSignificantEvents:(id)a3;
- (id)_itemsToUpdateForModifiedSoftwareUpdateControllers:(id)a3;
- (id)_itemsToUpdateForModifiedSoftwareUpdates:(id)a3;
- (id)_itemsToUpdateForModifiedTriggers:(id)a3;
- (id)_itemsToUpdateForModifiedUUIDs:(id)a3;
- (id)_itemsToUpdateForModifiedUsers:(id)a3;
- (id)_itemsToUpdateForModifiedWalletKeyDeviceState:(id)a3;
- (id)_itemsToUpdateForModifiedZones:(id)a3;
- (id)_itemsToUpdateForOutgoingInvitation:(id)a3;
- (id)_itemsToUpdateForRemoteAccessChange;
- (id)_itemsToUpdateForSiriEndpointProfileObjectChange:(id)a3;
- (id)_itemsToUpdateForSoftwareUpdateV2ChangeToAccessory:(id)a3;
- (id)_itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory:(id)a3;
- (id)_itemsToUpdateForTelevisionProfiles:(id)a3;
- (id)_itemsWithDependenciesPassingTest:(id)a3 forItems:(id)a4;
- (id)_legacy_buildSectionsWithDisplayedItems:(id)a3;
- (id)_performUpdateForChildItemsOfItem:(id)a3 withContext:(id)a4 isInternal:(BOOL)a5;
- (id)_processBatchUpdateForFutureWrappers:(id)a3 removedItems:(id)a4 logger:(id)a5;
- (id)_reloadAllItemProvidersFromSenderSelector:(SEL)a3;
- (id)_reloadAndUpdateItemsForProviders:(id)a3 updateItems:(id)a4 senderSelector:(SEL)a5;
- (id)_reloadItemProviders:(id)a3 updateItems:(id)a4 shouldUpdateExistingItems:(BOOL)a5 senderSelector:(SEL)a6 readPolicy:(id)a7 fastInitialUpdatePromise:(id)a8;
- (id)_serviceGroupItemForServiceGroup:(id)a3 inItems:(id)a4;
- (id)_serviceItemsToHideInSet:(id)a3 allServiceGroupItems:(id)a4;
- (id)_sortedItems:(id)a3 forSectionIdentifier:(id)a4;
- (id)_updateResultsForItems:(id)a3 context:(id)a4;
- (id)_updateResultsForItems:(id)a3 removedItems:(id)a4 context:(id)a5 allowDelaying:(BOOL)a6;
- (id)applySnapshotForUpdatedExternalItems:(id)a3 removedItems:(id)a4 logger:(id)a5;
- (id)attributedFooterTitleForSection:(unint64_t)a3;
- (id)attributedTitleForSection:(unint64_t)a3;
- (id)childItemsForItem:(id)a3;
- (id)childItemsForItem:(id)a3 ofClass:(Class)a4;
- (id)childItemsForItem:(id)a3 ofClass:(Class)a4 conformingToProtocol:(id)a5;
- (id)diffableDataItemManagerDelegate;
- (id)displayedItemAtIndexPath:(id)a3;
- (id)displayedItemsInSection:(unint64_t)a3;
- (id)displayedItemsInSectionWithIdentifier:(id)a3;
- (id)displayedSectionIdentifierForSectionIndex:(unint64_t)a3;
- (id)footerTitleForSection:(unint64_t)a3;
- (id)generateSnapshotInfo;
- (id)hf_stateDumpBuilderWithContext:(id)a3;
- (id)indexPathForItem:(id)a3;
- (id)itemSectionForSectionIndex:(unint64_t)a3;
- (id)itemsToUpdateForMatterSnapshotChange;
- (id)matchingItemForHomeKitObject:(id)a3;
- (id)moveItemFromIndexPath:(id)a3 toIndexPath:(id)a4;
- (id)performItemUpdateRequest:(id)a3;
- (id)reloadAndUpdateAllItemsFromSenderSelector:(SEL)a3;
- (id)reloadAndUpdateItemsForProviders:(id)a3 senderSelector:(SEL)a4;
- (id)titleForSection:(unint64_t)a3;
- (id)updateResultsForItems:(id)a3 senderSelector:(SEL)a4;
- (unint64_t)_loadingStateForItem:(id)a3;
- (unint64_t)_sectionForItem:(id)a3 assertOnNotFound:(BOOL)a4;
- (unint64_t)numberOfSections;
- (unint64_t)sectionIndexForDisplayedSectionIdentifier:(id)a3;
- (void)_applyReloadSnapshot:(id)a3 withAnimation:(BOOL)a4;
- (void)_batchItemUpdateFutureWrappers:(id)a3 removedItems:(id)a4 batchingIntervals:(id)a5 logger:(id)a6;
- (void)_debug_registerForStateDump;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3;
- (void)_notifyDelegateOfChangesFromDiff:(id)a3 logger:(id)a4;
- (void)_notifyDelegateOfItemOperations:(id)a3 logger:(id)a4;
- (void)_notifyDelegateOfSectionOperations:(id)a3 logger:(id)a4;
- (void)_prefetchResourcesIfNeededForItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_removeDelegateNotifications;
- (void)_setDisplayFilter:(id)a3 recalculateVisibility:(BOOL)a4;
- (void)_setupDelegateNotifications;
- (void)_unregisterForExternalUpdates;
- (void)_updateExternalUpdatesEnabled:(BOOL)a3 reloadItems:(BOOL)a4;
- (void)_updateLoadingStateAndNotifyDelegateForItems:(id)a3 canFinishTransaction:(BOOL)a4;
- (void)_updateOverallLoadingStateAndNotifyDelegate;
- (void)_updateRepresentationForExternalItemsWithUpdatedOrAddedItems:(id)a3 removedItems:(id)a4 logger:(id)a5;
- (void)_updateRepresentationForInternalItemsWithUpdatedItems:(id)a3;
- (void)_updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:(id)a3 removedItems:(id)a4 logger:(id)a5;
- (void)accessory:(id)a3 didAddControlTarget:(id)a4;
- (void)accessory:(id)a3 didAddProfile:(id)a4;
- (void)accessory:(id)a3 didAddSymptomsHandler:(id)a4;
- (void)accessory:(id)a3 didRemoveControlTarget:(id)a4;
- (void)accessory:(id)a3 didRemoveProfile:(id)a4;
- (void)accessory:(id)a3 didUpdateApplicationDataForService:(id)a4;
- (void)accessory:(id)a3 didUpdateAssociatedServiceTypeForService:(id)a4;
- (void)accessory:(id)a3 didUpdateBundleID:(id)a4;
- (void)accessory:(id)a3 didUpdateConfigurationStateForService:(id)a4;
- (void)accessory:(id)a3 didUpdateConfiguredNameForService:(id)a4;
- (void)accessory:(id)a3 didUpdateDefaultNameForService:(id)a4;
- (void)accessory:(id)a3 didUpdateFirmwareUpdateAvailable:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateFirmwareVersion:(id)a4;
- (void)accessory:(id)a3 didUpdateHH1EOLEnabled:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateHasAuthorizationDataForCharacteristic:(id)a4;
- (void)accessory:(id)a3 didUpdateLastKnownOperatingStateResponseForService:(id)a4;
- (void)accessory:(id)a3 didUpdateLastKnownSleepDiscoveryModeForService:(id)a4;
- (void)accessory:(id)a3 didUpdateLoggedInAccount:(id)a4;
- (void)accessory:(id)a3 didUpdateNameForService:(id)a4;
- (void)accessory:(id)a3 didUpdateServiceSubtypeForService:(id)a4;
- (void)accessory:(id)a3 didUpdateSoftwareVersion:(id)a4;
- (void)accessory:(id)a3 didUpdateStoreID:(id)a4;
- (void)accessory:(id)a3 didUpdateSupportsWalletKey:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateUserNotifiedOfSoftwareUpdate:(BOOL)a4;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)accessoryDidRemoveSymptomsHandler:(id)a3;
- (void)accessoryDidUpdateAdditionalSetupRequired:(id)a3;
- (void)accessoryDidUpdateApplicationData:(id)a3;
- (void)accessoryDidUpdateAudioDestination:(id)a3;
- (void)accessoryDidUpdateAudioDestinationController:(id)a3;
- (void)accessoryDidUpdateCalibrationStatus:(id)a3;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)a3;
- (void)accessoryDidUpdateName:(id)a3;
- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)a3;
- (void)accessoryDidUpdatePreferredMediaUser:(id)a3;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateReachableTransports:(id)a3;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)accessoryDidUpdateTargetControlSupport:(id)a3;
- (void)audioControl:(id)a3 didUpdateMuted:(BOOL)a4;
- (void)audioControl:(id)a3 didUpdateVolume:(float)a4;
- (void)beginFirstFullUpdateWithTimeoutFutureIfNeeded;
- (void)beginSuppressingUpdatesForCharacteristics:(id)a3 withReason:(id)a4;
- (void)cameraSnapshotControl:(id)a3 didTakeSnapshot:(id)a4 error:(id)a5;
- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)a3;
- (void)cameraStream:(id)a3 didUpdateAudioStreamSettingWithError:(id)a4;
- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4;
- (void)cameraStreamControlDidStartStream:(id)a3;
- (void)cameraStreamControlDidUpdateManagerState:(id)a3;
- (void)cameraStreamControlDidUpdateStreamState:(id)a3;
- (void)cameraUserSettingsDidUpdate:(id)a3;
- (void)clipManager:(id)a3 didRemoveSignificantEventsWithUUIDs:(id)a4;
- (void)clipManager:(id)a3 didUpdateSignificantEvents:(id)a4;
- (void)dealloc;
- (void)deregisterMatterDelegates;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4;
- (void)didUpdateDemoModeStateForAccessory:(id)a3;
- (void)endSuppressingUpdatesForCharacteristicsWithReason:(id)a3 updateAffectedItems:(BOOL)a4;
- (void)executionEnvironmentDidBecomeActive:(id)a3;
- (void)executionEnvironmentDidEnterBackground:(id)a3;
- (void)executionEnvironmentWillEnterForeground:(id)a3;
- (void)executionEnvironmentWillResignActive:(id)a3;
- (void)fixSessionDidChangeForAccessory:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddAccessoryNetworkProtectionGroup:(id)a4;
- (void)home:(id)a3 didAddActionSet:(id)a4;
- (void)home:(id)a3 didAddMediaSystem:(id)a4;
- (void)home:(id)a3 didAddResidentDevice:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5;
- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5;
- (void)home:(id)a3 didAddServiceGroup:(id)a4;
- (void)home:(id)a3 didAddTrigger:(id)a4;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didAddZone:(id)a4;
- (void)home:(id)a3 didEncounterError:(id)a4 forAccessory:(id)a5;
- (void)home:(id)a3 didExecuteActionSets:(id)a4 failedActionSets:(id)a5;
- (void)home:(id)a3 didReadValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessoryNetworkProtectionGroup:(id)a4;
- (void)home:(id)a3 didRemoveActionSet:(id)a4;
- (void)home:(id)a3 didRemoveMediaSystem:(id)a4;
- (void)home:(id)a3 didRemoveResidentDevice:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4 fromZone:(id)a5;
- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5;
- (void)home:(id)a3 didRemoveServiceGroup:(id)a4;
- (void)home:(id)a3 didRemoveTrigger:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)home:(id)a3 didRemoveZone:(id)a4;
- (void)home:(id)a3 didUnblockAccessory:(id)a4;
- (void)home:(id)a3 didUpdateAccesoryInvitationsForUser:(id)a4;
- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4;
- (void)home:(id)a3 didUpdateAccessoryNetworkProtectionGroup:(id)a4;
- (void)home:(id)a3 didUpdateActionsForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForServiceGroup:(id)a4;
- (void)home:(id)a3 didUpdateAreBulletinNotificationsSupported:(BOOL)a4;
- (void)home:(id)a3 didUpdateAudioAnalysisClassifierOptions:(unint64_t)a4;
- (void)home:(id)a3 didUpdateMediaSystem:(id)a4;
- (void)home:(id)a3 didUpdateNameForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateNameForRoom:(id)a4;
- (void)home:(id)a3 didUpdateNameForServiceGroup:(id)a4;
- (void)home:(id)a3 didUpdateNameForTrigger:(id)a4;
- (void)home:(id)a3 didUpdateNameForZone:(id)a4;
- (void)home:(id)a3 didUpdateOnboardAudioAnalysis:(BOOL)a4;
- (void)home:(id)a3 didUpdatePersonManagerSettings:(id)a4;
- (void)home:(id)a3 didUpdateReprovisionStateForAccessory:(id)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)home:(id)a3 didUpdateSiriPhraseOptions:(unint64_t)a4;
- (void)home:(id)a3 didUpdateSiriTriggerPhraseOptions:(unint64_t)a4;
- (void)home:(id)a3 didUpdateStateForOutgoingInvitations:(id)a4;
- (void)home:(id)a3 didUpdateTrigger:(id)a4;
- (void)home:(id)a3 didWriteValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5;
- (void)home:(id)a3 remoteAccessStateDidChange:(unint64_t)a4;
- (void)home:(id)a3 willExecuteActionSets:(id)a4;
- (void)home:(id)a3 willReadValuesForCharacteristics:(id)a4;
- (void)home:(id)a3 willWriteValuesForCharacteristics:(id)a4;
- (void)homeDidAddWalletKey:(id)a3;
- (void)homeDidRemoveWalletKey:(id)a3;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)a3;
- (void)homeDidUpdateHomeLocationStatus:(id)a3;
- (void)homeDidUpdateName:(id)a3;
- (void)homeDidUpdateNetworkRouterSupport:(id)a3;
- (void)homeDidUpdateProtectionMode:(id)a3;
- (void)homeDidUpdateSoundCheck:(id)a3;
- (void)homeDidUpdateToROAR:(id)a3;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4;
- (void)homeManager:(id)a3 residentProvisioningStatusChanged:(unint64_t)a4;
- (void)homeManagerDidEndBatchNotifications:(id)a3;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3;
- (void)homeManagerDidFinishUnknownChange:(id)a3;
- (void)homeManagerDidUpdateCurrentHome:(id)a3;
- (void)homeManagerDidUpdateDataSyncState:(id)a3;
- (void)homeManagerWillStartBatchNotifications:(id)a3;
- (void)lightProfile:(id)a3 didUpdateSettings:(id)a4;
- (void)mediaDestinationController:(id)a3 didUpdateDestination:(id)a4;
- (void)mediaDestinationControllerDidUpdateAvailableDestinations:(id)a3;
- (void)mediaObject:(id)a3 didUpdateMediaSession:(id)a4;
- (void)mediaObject:(id)a3 didUpdateSettings:(id)a4;
- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4;
- (void)mediaSession:(id)a3 failedToUpdatePlaybackStateWithError:(id)a4;
- (void)mediaSession:(id)a3 willUpdatePlaybackState:(int64_t)a4;
- (void)mediaSessionDidUpdate:(id)a3;
- (void)mediaSystem:(id)a3 didUpdateComponents:(id)a4;
- (void)mediaSystem:(id)a3 didUpdateConfiguredName:(id)a4;
- (void)mediaSystem:(id)a3 didUpdateName:(id)a4;
- (void)personManager:(id)a3 didRemoveFaceCropsWithUUIDs:(id)a4;
- (void)personManager:(id)a3 didRemovePersonsWithUUIDs:(id)a4;
- (void)personManager:(id)a3 didUpdatePersonFaceCrops:(id)a4;
- (void)personManager:(id)a3 didUpdatePersons:(id)a4;
- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4;
- (void)profileDidUpdateAccessViolation:(id)a3;
- (void)profileDidUpdateAllowedHosts:(id)a3;
- (void)profileDidUpdateMediaSourceDisplayOrder:(id)a3;
- (void)profileDidUpdateNetworkProtectionMode:(id)a3;
- (void)profileDidUpdateWiFiCredentialType:(id)a3;
- (void)profileDidUpdateWiFiReconfigurationSupport:(id)a3;
- (void)recalculateVisibilityAndSortAllItems;
- (void)registerMatterDelegates;
- (void)resetItemProvidersAndModules;
- (void)residentDevice:(id)a3 didUpdateCapabilities:(unint64_t)a4;
- (void)residentDevice:(id)a3 didUpdateEnabled:(BOOL)a4;
- (void)residentDevice:(id)a3 didUpdateName:(id)a4;
- (void)residentDevice:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)restrictedGuestAllowedPeriodEnded:(id)a3;
- (void)restrictedGuestAllowedPeriodStarted:(id)a3;
- (void)setDiffableDataSource:(id)a3;
- (void)setHome:(id)a3;
- (void)setItemModules:(id)a3;
- (void)setReadPolicy:(id)a3;
- (void)setSourceItem:(id)a3;
- (void)setUpCustomDiffableDataSource;
- (void)settings:(id)a3 didUpdateForIdentifier:(id)a4 keyPath:(id)a5;
- (void)settings:(id)a3 didWriteValueForSettings:(id)a4 failedSettings:(id)a5 homeKitObjectIdentifiers:(id)a6;
- (void)settings:(id)a3 willWriteValueForSettings:(id)a4;
- (void)settingsInvalidatedForNotificationCenter:(id)a3;
- (void)siriEndpointProfile:(id)a3 didUpdateAssistants:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateCurrentAssistant:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateMultifunctionButton:(int64_t)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSessionHubIdentifier:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSessionState:(int64_t)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSiriEngineVersion:(id)a4;
- (void)softwareUpdate:(id)a3 didUpdateDocumentation:(id)a4;
- (void)softwareUpdate:(id)a3 didUpdateDocumentationAvailable:(BOOL)a4;
- (void)softwareUpdate:(id)a3 didUpdateNeedsAttentionReasons:(unint64_t)a4;
- (void)softwareUpdate:(id)a3 didUpdateState:(int64_t)a4;
- (void)softwareUpdateController:(id)a3 didUpdateAvailableUpdate:(id)a4;
- (void)softwareUpdateV2DidUpdateForAccessory:(id)a3;
- (void)softwareUpdateV2DidUpdateProgressForAccessory:(id)a3;
- (void)symptomsHandler:(id)a3 didUpdateSymptoms:(id)a4;
- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4 accessoryIdentifier:(id)a5;
- (void)user:(id)a3 didUpdateAssistantAccessControl:(id)a4 forHome:(id)a5;
- (void)user:(id)a3 didUpdateMediaContentProfileAccessControl:(id)a4 forHome:(id)a5;
- (void)user:(id)a3 didUpdatePhotosPersonManagerSettings:(id)a4;
- (void)walletKeyDeviceStateUpdated:(id)a3 inHome:(id)a4;
@end

@implementation HFItemManager

- (void)registerMatterDelegates
{
  sub_20DD63C84();
  v3 = self;
  sub_20DD63C24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844918, &qword_20DD96070);
  sub_20DA6776C();
  v4 = sub_20DD64D04();

  [(HFItemManager *)v3 setMatterSnapshotObserverCancelable:v4];
}

- (void)deregisterMatterDelegates
{
  v2 = self;
  HFItemManager.deregisterMatterDelegates()();
}

- (id)itemsToUpdateForMatterSnapshotChange
{
  v2 = self;
  sub_20DA6888C();

  sub_20DA65948();
  sub_20DA65994();
  v3 = sub_20DD651C4();

  return v3;
}

- (void)_debug_registerForStateDump
{
  v3 = +[_HFItemManagerDebugStateDumpController sharedInstance];
  [v3 registerItemManager:self];
}

- (id)_debug_itemProviderDescriptions
{
  v2 = [(HFItemManager *)self itemProviders];
  v3 = [v2 na_map:&__block_literal_global_8];

  return v3;
}

- (id)_debug_itemDescriptions
{
  v3 = objc_opt_new();
  if ([(HFItemManager *)self numberOfSections])
  {
    v4 = 0;
    do
    {
      v5 = [(HFItemManager *)self displayedItemsInSection:v4];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __53__HFItemManager_HFDebugging___debug_itemDescriptions__block_invoke;
      v7[3] = &unk_277DF3640;
      v9 = v4;
      v8 = v3;
      [v5 enumerateObjectsUsingBlock:v7];

      ++v4;
    }

    while (v4 < [(HFItemManager *)self numberOfSections]);
  }

  return v3;
}

void __53__HFItemManager_HFDebugging___debug_itemDescriptions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = [v6 numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [v5 stringWithFormat:@"[%@, %@]", v9, v10];

  v11 = [v8 debugDescription];

  [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
}

- (id)hf_stateDumpBuilderWithContext:(id)a3
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  v6 = [(HFItemManager *)self _debug_itemManagerDescription];
  [v5 setObject:v6 forKeyedSubscript:@"itemManager"];

  v7 = [v4 detailLevel];
  if (v7 == 2)
  {
    v8 = [(HFItemManager *)self _debug_itemProviderDescriptions];
    [v5 setObject:v8 forKeyedSubscript:@"itemProviders"];

    v9 = [(HFItemManager *)self _debug_itemDescriptions];
    [v5 setObject:v9 forKeyedSubscript:@"items"];
  }

  return v5;
}

- (void)_setupDelegateNotifications
{
  v3 = +[HFExecutionEnvironment sharedInstance];
  [v3 addObserver:self];
}

- (void)_removeDelegateNotifications
{
  v3 = +[HFExecutionEnvironment sharedInstance];
  [v3 removeObserver:self];
}

- (void)executionEnvironmentWillEnterForeground:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "executionEnvironmentWillEnterForeground", &v13, 2u);
  }

  v6 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  v7 = [v6 isFinished];

  if (v7)
  {
    v8 = [(HFItemManager *)self allItems];
    v9 = [(HFItemManager *)self updateResultsForItems:v8 senderSelector:a2];
  }

  else
  {
    v8 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = [(HFItemManager *)self identifier];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@-%@ ignoring executionEnvironmentWillEnterForeground because first full update isn't done", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)executionEnvironmentDidEnterBackground:(id)a3
{
  v4 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "executionEnvironmentDidEnterBackground", v8, 2u);
  }

  v5 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  [v5 finishWithNoResult];

  v6 = [(HFItemManager *)self home];
  v7 = [v6 hf_characteristicValueManager];
  [v7 invalidateAllCachedErrors];
}

- (void)executionEnvironmentDidBecomeActive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@) executionEnvironmentDidBecomeActive", &v13, 0xCu);
  }

  v6 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  v7 = [v6 isFinished];

  if (v7)
  {
    v8 = [(HFItemManager *)self _itemsToUpdateWhenApplicationDidBecomeActive];
    v9 = [(HFItemManager *)self updateResultsForItems:v8 senderSelector:a2];
  }

  else
  {
    v8 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = [(HFItemManager *)self identifier];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@-%@ ignoring executionEnvironmentDidBecomeActive because first full update isn't done", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)executionEnvironmentWillResignActive:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@) executionEnvironmentWillResignActive", &v9, 0xCu);
  }

  v6 = [(HFItemManager *)self _itemsToUpdateForApplicationResignActive];
  v7 = [(HFItemManager *)self updateResultsForItems:v6 senderSelector:a2];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_cameraForCameraControl:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 accessories];

  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v24 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 cameraProfiles];
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          v25 = v8;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * j);
              v18 = [v17 streamControl];
              v19 = v18;
              if (v18 == v4)
              {

LABEL_20:
                v21 = v17;

                goto LABEL_21;
              }

              v20 = [v17 snapshotControl];

              if (v20 == v4)
              {
                goto LABEL_20;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            v9 = v24;
            v8 = v25;
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v21 = 0;
    }

    while (v8);
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_cameraForCameraStream:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 accessories];

  v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v7 = *v28;
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 cameraProfiles];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              v16 = [v15 streamControl];
              v17 = [v16 cameraStream];

              if (v17 == v4)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v21;
      }

      v18 = 0;
      v22 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_cameraForUserSettings:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(HFItemManager *)self home];
  v6 = [v5 accessories];

  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v22 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = [v11 cameraProfiles];
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              v18 = [v17 userSettings];

              if (v18 == v4)
              {
                v19 = v17;

                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v22;
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v19 = 0;
    }

    while (v8);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)homeManagerWillStartBatchNotifications:(id)a3
{
  v4 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  [v4 beginBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest"];

  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  [v5 beginBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest"];
}

- (void)homeManagerDidEndBatchNotifications:(id)a3
{
  v5 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [v5 commitBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest" senderSelector:a2];

  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v8 commitBatchWithReason:@"HFItemManagerBatchingDelegateReasonHomeManagerRequest" senderSelector:a2];
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v7 = a4;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([v7 homes], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeKitDispatcher:manager:didChangeHome:) as this is an internal unit test -tearDown", v12, 2u);
    }
  }

  else
  {
    v10 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3
{
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v5 home];
  [(HFItemManager *)self setHome:v4];
}

- (void)homeManagerDidFinishUnknownChange:(id)a3
{
  v5 = a3;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([v5 homes], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v9 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeManagerDidFinishUnknownChange:) as this is an internal unit test -tearDown", v10, 2u);
    }
  }

  else
  {
    v8 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
  }
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v13[0] = @"home";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([v7 homes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeManager:didRemoveHome:) as this is an internal unit test -tearDown", v17, 2u);
    }
  }

  else
  {
    v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v8];
    v13 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v12];
    v18[0] = @"home";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v15 = [v11 requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:0 senderSelector:a2];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)homeManagerDidUpdateCurrentHome:(id)a3
{
  v5 = a3;
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([v5 homes], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v11 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Skipping reload (for -homeManagerDidUpdateCurrentHome:) as this is an internal unit test -tearDown", v12, 2u);
    }
  }

  else
  {
    v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v9 = [(HFItemManager *)self _itemsToUpdateForCurrentHomeChange];
    v10 = [v8 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
  }
}

- (void)homeManager:(id)a3 residentProvisioningStatusChanged:(unint64_t)a4
{
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:a3];
  v6 = [(HFItemManager *)self _itemsToUpdateForRemoteAccessChange];
  v7 = [v8 requestUpdateForItems:v6 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)homeManagerDidUpdateDataSyncState:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 dataSyncState] == 1)
  {
    v6 = [(HFItemManager *)self home];
    v7 = [v6 hf_characteristicValueManager];
    [v7 invalidateAllCachedErrors];

    v8 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v9 = MEMORY[0x277CBEB98];
    v10 = [v5 homes];
    v11 = [v9 setWithArray:v10];
    v12 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v11];
    v16[0] = @"home";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v14 = [v8 requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:0 senderSelector:a2];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[HFItemManager(HomeKitDelegates) homeManager:didUpdateHH2State:]";
    v20 = 2112;
    v21 = v7;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%s) homeManager = %@ | didUpdateHH2State = %{BOOL}d", buf, 0x1Cu);
  }

  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = MEMORY[0x277CBEB98];
  v11 = [v7 homes];
  v12 = [v10 setWithArray:v11];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v12];
  v17 = @"home";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15 = [v9 requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:0 senderSelector:a2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)homeDidUpdateName:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v12[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v5 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = [v14 hf_characteristicValueManager];
  [v8 invalidateCachedValuesForAccessory:v7];

  v9 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v12 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedAccessory:v7];

  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v14 senderSelector:a2];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v13 = a3;
  v7 = a4;
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v9];
  v11 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedAccessory:v7];

  v12 = [v8 requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:v13 senderSelector:a2];
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v15[0] = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v15[0] = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)homeDidUpdateHomeLocationStatus:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v5];

  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v12[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [v7 mutableCopy];

  v9 = MEMORY[0x277CBEB98];
  v10 = [v5 currentUser];
  v11 = [v9 na_setWithSafeObject:v10];
  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v11];
  [v8 unionSet:v12];

  v13 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v17[0] = @"home";
  v17[1] = @"user";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v13 requestUpdateForItems:v8 itemProviderInvalidationReasons:v14 modifiedHome:v5 senderSelector:a2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = MEMORY[0x277CBEB98];
  v11 = a5;
  v12 = [v10 na_setWithSafeObject:a4];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v15];
  [v14 unionSet:v16];

  v17 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v21[0] = @"room";
  v21[1] = @"accessory";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [v17 requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:v9 senderSelector:a2];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v15[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v15[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateNameForRoom:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v15[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddZone:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v10];
  v15[0] = @"zone";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveZone:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v10];
  v15[0] = @"zone";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateNameForZone:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v10];
  v15[0] = @"zone";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = MEMORY[0x277CBEB98];
  v11 = a5;
  v12 = [v10 na_setWithSafeObject:a4];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v15];
  [v14 unionSet:v16];

  v17 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v21[0] = @"room";
  v21[1] = @"zone";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [v17 requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:v9 senderSelector:a2];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveRoom:(id)a4 fromZone:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = MEMORY[0x277CBEB98];
  v11 = a5;
  v12 = [v10 na_setWithSafeObject:a4];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedZones:v15];
  [v14 unionSet:v16];

  v17 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v21[0] = @"room";
  v21[1] = @"zone";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [v17 requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:v9 senderSelector:a2];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddServiceGroup:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v15[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveServiceGroup:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v15[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateNameForServiceGroup:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v15[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = MEMORY[0x277CBEB98];
  v11 = a5;
  v12 = [v10 na_setWithSafeObject:a4];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v15];
  [v14 unionSet:v16];

  v17 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v21[0] = @"service";
  v21[1] = @"serviceGroup";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [v17 requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:v9 senderSelector:a2];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = MEMORY[0x277CBEB98];
  v11 = a5;
  v12 = [v10 na_setWithSafeObject:a4];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v12];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];

  v16 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v15];
  [v14 unionSet:v16];

  v17 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v21[0] = @"service";
  v21[1] = @"serviceGroup";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19 = [v17 requestUpdateForItems:v14 itemProviderInvalidationReasons:v18 modifiedHome:v9 senderSelector:a2];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUnblockAccessory:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 hf_characteristicValueManager];
  [v9 invalidateCachedValuesForAccessory:v8];

  v10 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
  v16[0] = @"accessory";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v10 requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v7 senderSelector:a2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didEncounterError:(id)a4 forAccessory:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [(HFItemManager *)self home];

  if (v9 == v14)
  {
    v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];
    v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
    v13 = [v10 requestUpdateForItems:v12 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v14 senderSelector:a2];
  }
}

- (void)home:(id)a3 didAddActionSet:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v10];
  v15[0] = @"actionSet";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveActionSet:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self home];
  v10 = [v9 hf_characteristicValueManager];
  [v10 invalidateCachedErrorForExecutionOfActionSet:v8];

  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v12];
  v17[0] = @"actionSet";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = [v11 requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:v7 senderSelector:a2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateNameForActionSet:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v10];
  v15[0] = @"actionSet";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateActionsForActionSet:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self home];
  v10 = [v9 hf_characteristicValueManager];
  [v10 invalidateCachedErrorForExecutionOfActionSet:v8];

  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v12];
  v17[0] = @"actionSet";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v15 = [v11 requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:v7 senderSelector:a2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddTrigger:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v15[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveTrigger:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v15[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateNameForTrigger:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v15[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateTrigger:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedTriggers:v10];
  v15[0] = @"trigger";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v12[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v5 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v10];
  v15[0] = @"room";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateApplicationDataForActionSet:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v10];
  v15[0] = @"actionSet";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateApplicationDataForServiceGroup:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceGroups:v10];
  v15[0] = @"serviceGroup";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateStateForOutgoingInvitations:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForOutgoingInvitation:v10];
  v15[0] = @"outgoinginvitations";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateAccesoryInvitationsForUser:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v15[0] = @"pendingAccessories";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v7 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];

  v9 = [(HFItemManager *)self _itemsToUpdateForIncomingInvitation:v8];
  v13[0] = @"incominginvitations";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v9];

  v11 = [v7 currentUser];
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB98] setWithObject:v7];
    v14 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v13];
    v15 = [v10 setByAddingObjectsFromSet:v14];

    v10 = v15;
  }

  v16 = [v7 currentUser];
  if (v16 == v8)
  {
    v21 = [v7 homeAccessControlForUser:v8];
    v22 = [v21 isRemoteAccessAllowed];

    if (v22)
    {
      goto LABEL_5;
    }

    v16 = [v8 announceUserSettings];
    if ([v16 deviceNotificationMode] == 3)
    {
      v23 = HFLogForCategory(0x27uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
        v25 = MEMORY[0x277CCABB0];
        v26 = [v7 homeAccessControlForUser:v8];
        v27 = [v25 numberWithBool:{objc_msgSend(v26, "isRemoteAccessAllowed")}];
        *buf = 138412546;
        v32 = v24;
        v33 = 2112;
        v34 = v27;
        _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Now Updating Announce notification setting to HMAnnounceDeviceNotificationModeAtHome -  currentNotificationMode = [%@] isRemoteAccessAllowed = [%@]", buf, 0x16u);
      }

      v28 = [objc_alloc(MEMORY[0x277CD1810]) initWithDeviceNotificationMode:2];
      v29 = [v7 currentUser];
      [v29 updateAnnounceUserSettings:v28 forHome:v7 completionHandler:&__block_literal_global_59];
    }
  }

LABEL_5:
  v17 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v30 = @"user";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v19 = [v17 requestUpdateForItems:v10 itemProviderInvalidationReasons:v18 modifiedHome:v7 senderSelector:a2];

  v20 = *MEMORY[0x277D85DE8];
}

void __70__HFItemManager_HomeKitDelegates__home_didUpdateAccessControlForUser___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Error updating Announce notification setting - [%@]", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddResidentDevice:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a4];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];

  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v14[0] = @"residentDevice";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [v10 requestUpdateForItems:v9 itemProviderInvalidationReasons:v11 modifiedHome:v7 senderSelector:a2];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveResidentDevice:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a4];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];

  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v14[0] = @"residentDevice";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [v10 requestUpdateForItems:v9 itemProviderInvalidationReasons:v11 modifiedHome:v7 senderSelector:a2];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 remoteAccessStateDidChange:(unint64_t)a4
{
  v9 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [(HFItemManager *)self _itemsToUpdateForRemoteAccessChange];
  v8 = [v6 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)homeDidUpdateProtectionMode:(id)a3
{
  v9 = a3;
  v5 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)homeDidUpdateNetworkRouterSupport:(id)a3
{
  v9 = a3;
  v5 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)home:(id)a3 didAddAccessoryNetworkProtectionGroup:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v6 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didRemoveAccessoryNetworkProtectionGroup:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v6 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateAccessoryNetworkProtectionGroup:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v7];

  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkProtectionGroups:v9];
  v11 = [v8 requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v12 senderSelector:a2];
}

- (void)home:(id)a3 didUpdatePersonManagerSettings:(id)a4
{
  v6 = [MEMORY[0x277CBEB98] setWithObject:a4];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedHomePersonManagerSettings:v6];

  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)homeDidAddWalletKey:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hf_fetchWalletKeyDeviceStateForCurrentDevice];
  v7 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v5 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeDidRemoveWalletKey:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hf_fetchWalletKeyDeviceStateForCurrentDevice];
  v7 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v5];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v13[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v5 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)homeDidUpdateToROAR:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v12[0] = @"home";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v5 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)homeDidUpdateSoundCheck:(id)a3
{
  v9 = a3;
  v5 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v6];
  v8 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)home:(id)a3 didUpdateAudioAnalysisClassifierOptions:(unint64_t)a4
{
  v10 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)home:(id)a3 didUpdateOnboardAudioAnalysis:(BOOL)a4
{
  v10 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)home:(id)a3 didUpdateAreBulletinNotificationsSupported:(BOOL)a4
{
  v10 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v10];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)home:(id)a3 didUpdateSiriTriggerPhraseOptions:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v8];
  v13[0] = @"home";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v6 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateSiriPhraseOptions:(unint64_t)a4
{
  v10 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v7];
  v9 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)homeDidUpdateHomeEnergyManagerEnabled:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x24uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 name];
    *buf = 138412802;
    v16 = self;
    v17 = 2080;
    v18 = "[HFItemManager(HomeKitDelegates) homeDidUpdateHomeEnergyManagerEnabled:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%@ %s) HFItemManager Delegates ~~> Dispatching onto onto main. home name: %@", buf, 0x20u);
  }

  v8 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForHomes:v9];
  v14 = @"homeEnergy";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v12 = [v8 requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:v5 senderSelector:a2];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateName:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateNameForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateAssociatedServiceTypeForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateHH1EOLEnabled:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 uniqueIdentifier];
    *buf = 136315906;
    v19 = "[HFItemManager(HomeKitDelegates) accessory:didUpdateHH1EOLEnabled:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2114;
    v23 = v9;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%s) accessory %@ (uniqueIdentifier: %{public}@) | hh1EOLEnabled = %{BOOL}d", buf, 0x26u);
  }

  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];
  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
  v17 = @"accessory";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v14 = [v7 home];
  v15 = [v10 requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v14 senderSelector:a2];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateServices:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 home];
  v7 = [v6 hf_characteristicValueManager];
  [v7 invalidateCachedValuesForAccessory:v5];

  v8 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v9];
  v15[0] = @"service";
  v15[1] = @"accessory";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v12 = [v5 home];

  v13 = [v8 requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:v12 senderSelector:a2];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v14 = a3;
  v5 = [v14 home];
  v6 = [(HFItemManager *)self home];

  if (v5 == v6)
  {
    if (![v14 hf_supportsSuspendedState] || (objc_msgSend(v14, "isReachable") & 1) == 0)
    {
      v7 = [v14 home];
      v8 = [v7 hf_characteristicValueManager];
      [v8 invalidateCachedValuesForAccessory:v14];
    }

    v9 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v14];
    v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
    v12 = [v14 home];
    v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v12 senderSelector:a2];
  }
}

- (void)accessoryDidUpdateReachableTransports:(id)a3
{
  v12 = a3;
  v5 = [v12 home];
  v6 = [(HFItemManager *)self home];

  if (v5 == v6)
  {
    v7 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v12];
    v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
    v10 = [v12 home];
    v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
  }
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HFItemManager_HomeKitDelegates__accessory_service_didUpdateValueForCharacteristic___block_invoke;
  aBlock[3] = &unk_277DF7750;
  objc_copyWeak(v23, &location);
  v23[1] = a2;
  v12 = _Block_copy(aBlock);
  v13 = [v11 value];

  if (v13)
  {
    v14 = [v9 home];
    v15 = [v14 hf_characteristicValueManager];
    [v15 invalidateCachedErrorForCharacteristic:v11];
  }

  v16 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v17 = [v16 hasUncommittedBatchingReasons];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
    v12[2](v12, v18);
  }

  else
  {
    v19 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v18 = [v19 batchCoordinator];

    v20 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
    v21 = [v9 home];
    [v18 batchedValuesDidUpdateForCharacteristics:v20 inHome:v21 sender:a2];
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __85__HFItemManager_HomeKitDelegates__accessory_service_didUpdateValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _itemsToUpdateForModifiedCharacteristics:v3];
  v6 = [v3 na_map:&__block_literal_global_10_1];
  if ([v6 count] != 1)
  {
    v7 = NSStringFromSelector(*(a1 + 40));
    NSLog(&cfstr_ExpectedExactl.isa, v7, v3);
  }

  v8 = [v6 anyObject];
  if (+[HFUtilities hasInternalDiagnostics])
  {
    v9 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 hf_prettyDescription];
      *buf = 138413058;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Requesting %@ to update items %@ for characteristic updates %@ for home: %@", buf, 0x2Au);
    }
  }

  v11 = [WeakRetained batchedDelegateAdapterDisallowingReads];
  v12 = [v11 requestUpdateForItems:v5 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:*(a1 + 40)];

  v13 = *MEMORY[0x277D85DE8];
}

id __85__HFItemManager_HomeKitDelegates__accessory_service_didUpdateValueForCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 home];

  return v3;
}

- (void)accessoryDidUpdateApplicationData:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateCalibrationStatus:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateApplicationDataForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateAdditionalSetupRequired:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 home];
  v7 = [v6 hf_characteristicValueManager];
  [v7 invalidateCachedValuesForAccessory:v5];

  v8 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v9 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v9];
  v15[0] = @"accessory";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [v5 home];

  v13 = [v8 requestUpdateForItems:v10 itemProviderInvalidationReasons:v11 modifiedHome:v12 senderSelector:a2];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateHasAuthorizationDataForCharacteristic:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [v8 home];
  v10 = [v9 hf_characteristicValueManager];
  [v10 invalidateCachedValuesForAccessory:v8];

  v11 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v12];
  v18[0] = @"accessory";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [v8 home];

  v16 = [v11 requestUpdateForItems:v13 itemProviderInvalidationReasons:v14 modifiedHome:v15 senderSelector:a2];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateBundleID:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateStoreID:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateFirmwareUpdateAvailable:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = @"firmwareUpdate";
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v15 count:1];
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:v15];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v12 = [v7 home];

  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v8 modifiedHome:v12 senderSelector:a2];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateFirmwareVersion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = @"firmwareUpdate";
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v15 count:1];
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads:v15];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v12 = [v7 home];

  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v8 modifiedHome:v12 senderSelector:a2];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateSoftwareVersion:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateLoggedInAccount:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [v9 batchCoordinator];

  v10 = [v8 home];
  [v11 batchedAccessory:v8 didUpdateLoggedInAccount:v7 inHome:v10 sender:a2];
}

- (void)accessory:(id)a3 didAddProfile:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didRemoveProfile:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v6 batchCoordinator];

  v7 = [v5 home];
  [v8 batchedDidUpdateControllableAccessory:v5 inHome:v7 sender:a2];
}

- (void)accessory:(id)a3 didUpdateConfiguredNameForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateDefaultNameForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateServiceSubtypeForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateConfigurationStateForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didAddSymptomsHandler:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidRemoveSymptomsHandler:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateTargetControlSupport:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didAddControlTarget:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didRemoveControlTarget:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didUpdateReprovisionStateForAccessory:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 home];
  v8 = [(HFItemManager *)self home];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
    v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
    v12 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v11];
    v17[0] = @"accessory";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v14 = [v6 home];
    v15 = [v10 requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v14 senderSelector:a2];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateLastKnownSleepDiscoveryModeForService:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v7];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v10];
  v16[0] = @"service";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [v8 home];

  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateAudioDestinationController:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateAudioDestination:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateLastKnownOperatingStateResponseForService:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateUserNotifiedOfSoftwareUpdate:(BOOL)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  v14[0] = @"accessory";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessory:(id)a3 didUpdateSupportsWalletKey:(BOOL)a4
{
  v6 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v9 = [v6 home];

  v10 = [v11 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];
  v13[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [v5 home];

  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:v9 modifiedHome:v10 senderSelector:a2];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)a3
{
  v5 = a3;
  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v6];
  v8 = [v5 home];

  v9 = [v10 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:a2];
}

- (void)residentDevice:(id)a3 didUpdateName:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v14[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)residentDevice:(id)a3 didUpdateCapabilities:(unint64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v14[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)residentDevice:(id)a3 didUpdateEnabled:(BOOL)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v14[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)residentDevice:(id)a3 didUpdateStatus:(unint64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedResidentDevices:v8];
  v14[0] = @"residentDevice";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v6 home];

  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:v11 senderSelector:a2];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)cameraSnapshotControl:(id)a3 didTakeSnapshot:(id)a4 error:(id)a5
{
  v13 = [(HFItemManager *)self _cameraForCameraControl:a3, a4, a5];
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v13];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v8];
  v10 = [v13 accessory];
  v11 = [v10 home];
  v12 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v11 senderSelector:a2];
}

- (void)cameraSnapshotControlDidUpdateMostRecentSnapshot:(id)a3
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:a3];
  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  v8 = [v11 accessory];
  v9 = [v8 home];
  v10 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStreamControlDidStartStream:(id)a3
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:a3];
  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  v8 = [v11 accessory];
  v9 = [v8 home];
  v10 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4
{
  v12 = [(HFItemManager *)self _cameraForCameraControl:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v12];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v7];
  v9 = [v12 accessory];
  v10 = [v9 home];
  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)cameraStreamControlDidUpdateStreamState:(id)a3
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:a3];
  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  v8 = [v11 accessory];
  v9 = [v8 home];
  v10 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStreamControlDidUpdateManagerState:(id)a3
{
  v11 = [(HFItemManager *)self _cameraForCameraControl:a3];
  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  v8 = [v11 accessory];
  v9 = [v8 home];
  v10 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)cameraStream:(id)a3 didUpdateAudioStreamSettingWithError:(id)a4
{
  v12 = [(HFItemManager *)self _cameraForCameraStream:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v12];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v7];
  v9 = [v12 accessory];
  v10 = [v9 home];
  v11 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)cameraUserSettingsDidUpdate:(id)a3
{
  v11 = [(HFItemManager *)self _cameraForUserSettings:a3];
  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v11];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedCameras:v6];
  v8 = [v11 accessory];
  v9 = [v8 home];
  v10 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)clipManager:(id)a3 didUpdateSignificantEvents:(id)a4
{
  v6 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedSignificantEvents:v6];

  v8 = [v9 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)clipManager:(id)a3 didRemoveSignificantEventsWithUUIDs:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)softwareUpdateController:(id)a3 didUpdateAvailableUpdate:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB98];
  v8 = a4;
  v9 = [v7 na_setWithSafeObject:a3];
  v10 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdateControllers:v9];
  v11 = [v10 mutableCopy];

  v12 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];

  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v12];
  [v11 unionSet:v13];

  v14 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v18[0] = @"softwareUpdate";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = [v14 requestUpdateForItems:v11 itemProviderInvalidationReasons:v15 modifiedHome:0 senderSelector:a2];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdate:(id)a3 didUpdateState:(int64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v13[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdate:(id)a3 didUpdateDocumentation:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v13[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdate:(id)a3 didUpdateDocumentationAvailable:(BOOL)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v13[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdate:(id)a3 didUpdateNeedsAttentionReasons:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v6];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedSoftwareUpdates:v8];
  v13[0] = @"softwareUpdate";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:v10 modifiedHome:0 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdateV2DidUpdateForAccessory:(id)a3
{
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 batchCoordinator];

  [v7 batchedSoftwareUpdateV2DidUpdateForAccessory:v5 sender:a2];
}

- (void)softwareUpdateV2DidUpdateProgressForAccessory:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [(HFItemManager *)self _itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory:a3];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10[0] = @"softwareUpdate";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [v6 requestUpdateForItems:v5 itemProviderInvalidationReasons:v7 modifiedHome:0 senderSelector:a2];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)user:(id)a3 didUpdateAssistantAccessControl:(id)a4 forHome:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v9];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v11];
  v16[0] = @"user";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v10 requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v8 senderSelector:a2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)user:(id)a3 didUpdateMediaContentProfileAccessControl:(id)a4 forHome:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v9];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v11];
  v16[0] = @"user";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v10 requestUpdateForItems:v12 itemProviderInvalidationReasons:v13 modifiedHome:v8 senderSelector:a2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)user:(id)a3 didUpdatePhotosPersonManagerSettings:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB98] setWithObject:{a3, a4}];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v6];

  v8 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v12[0] = @"user";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v8 requestUpdateForItems:v7 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)restrictedGuestAllowedPeriodStarted:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 hf_prettyDescription];
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period started for user: %@.", buf, 0x20u);
  }

  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v15 = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:0 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)restrictedGuestAllowedPeriodEnded:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 hf_prettyDescription];
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@ Restricted Guest allowed period ended for user: %@.", buf, 0x20u);
  }

  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedUsers:v10];
  v15 = @"user";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:0 senderSelector:a2];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)settings:(id)a3 willWriteValueForSettings:(id)a4
{
  v6 = a4;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [(HFItemManager *)self _itemsToUpdateForAccessorySettingChanges:v6];

  v8 = [v9 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)settings:(id)a3 didWriteValueForSettings:(id)a4 failedSettings:(id)a5 homeKitObjectIdentifiers:(id)a6
{
  v18 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v18;
  if (!v18)
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v19 = v12;
  v13 = [v12 setByAddingObjectsFromSet:v10];
  v14 = [v13 na_map:&__block_literal_global_17_4];
  v15 = [(HFItemManager *)self _itemsToUpdateForHomeKitKeyPaths:v14 forHomeKitObjectIdentifiers:v11];
  v16 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v17 = [v16 requestUpdateForItems:v15 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)symptomsHandler:(id)a3 didUpdateSymptoms:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManager *)self home];
  v8 = [v7 hf_accessoryForSymptomsHandler:v6];

  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v8];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  v16[0] = @"mediaSystem";
  v16[1] = @"accessory";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v8 home];
  v14 = [v9 requestUpdateForItems:v11 itemProviderInvalidationReasons:v12 modifiedHome:v13 senderSelector:a2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fixSessionDidChangeForAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFItemManager accessory: %@", &v13, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:v5];
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v7];

  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [v5 home];
  v11 = [v9 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)profileDidUpdateNetworkProtectionMode:(id)a3
{
  v5 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v11 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateAllowedHosts:(id)a3
{
  v5 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v11 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateAccessViolation:(id)a3
{
  v5 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v11 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateWiFiReconfigurationSupport:(id)a3
{
  v5 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v11 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateWiFiCredentialType:(id)a3
{
  v5 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedNetworkConfigurationProfiles:v6];
  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v11 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)profileDidUpdateMediaSourceDisplayOrder:(id)a3
{
  v5 = a3;
  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v5];
  v7 = [(HFItemManager *)self _itemsToUpdateForTelevisionProfiles:v6];
  v8 = [v5 accessory];

  v9 = [v8 home];
  v10 = [v11 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v9 senderSelector:a2];
}

- (void)mediaDestinationController:(id)a3 didUpdateDestination:(id)a4
{
  v6 = a3;
  v10 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForMediaDestinationController:v7];
  v9 = [v10 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaDestinationControllerDidUpdateAvailableDestinations:(id)a3
{
  v5 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v5];

  v7 = [(HFItemManager *)self _itemsToUpdateForModifiedMetadataForMediaDestinationController:v6];
  v8 = [v9 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)lightProfile:(id)a3 didUpdateSettings:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [v9 batchCoordinator];

  [v10 batchedLightProfileUpdate:v8 settings:v7 sender:a2];
}

- (void)walletKeyDeviceStateUpdated:(id)a3 inHome:(id)a4
{
  v11 = a4;
  v7 = a3;
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedWalletKeyDeviceState:v7];

  v10 = [v8 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v11 senderSelector:a2];
}

- (void)home:(id)a3 willReadValuesForCharacteristics:(id)a4
{
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:a4];
  [(HFItemManager *)self _updateLoadingStateAndNotifyDelegateForItems:v5 canFinishTransaction:1];
}

- (void)home:(id)a3 willWriteValuesForCharacteristics:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v7];

  v10 = [v8 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v11 senderSelector:a2];
}

- (void)home:(id)a3 willExecuteActionSets:(id)a4
{
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:a4];
  [(HFItemManager *)self _updateLoadingStateAndNotifyDelegateForItems:v5 canFinishTransaction:1];
}

- (void)home:(id)a3 didReadValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5
{
  v14 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v11 = [v9 setByAddingObjectsFromSet:v10];
  v12 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13 = [v12 batchCoordinator];

  [v13 batchedValuesDidUpdateForCharacteristics:v11 inHome:v14 sender:a2];
}

- (void)home:(id)a3 didWriteValuesForCharacteristics:(id)a4 failedCharacteristics:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v11 = [v9 setByAddingObjectsFromSet:v10];
  v12 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v11];
  v14 = [v12 requestUpdateForItems:v13 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v15 senderSelector:a2];
}

- (void)home:(id)a3 didExecuteActionSets:(id)a4 failedActionSets:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v11 = [v9 setByAddingObjectsFromSet:v10];
  v12 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v13 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v11];
  v14 = [v12 requestUpdateForItems:v13 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v15 senderSelector:a2];
}

- (void)mediaSession:(id)a3 willUpdatePlaybackState:(int64_t)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaSession:(id)a3 failedToUpdatePlaybackStateWithError:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaSessionDidUpdate:(id)a3
{
  v7 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:a3];
  v5 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v6 = [v5 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)mediaObject:(id)a3 didUpdateMediaSession:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self _itemsToUpdateForMediaObjectChange:v8];
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:v7];

  v14 = [v9 setByAddingObjectsFromSet:v10];

  v11 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12 = [v8 hf_home];

  v13 = [v11 requestUpdateForItems:v14 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v12 senderSelector:a2];
}

- (void)mediaObject:(id)a3 didUpdateSettings:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [v9 batchCoordinator];

  v10 = [v8 hf_home];
  [v11 batchedMediaObjectDidUpdate:v8 settings:v7 inHome:v10 sender:a2];
}

- (void)settings:(id)a3 didUpdateForIdentifier:(id)a4 keyPath:(id)a5
{
  if (a4)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = a4;
    v10 = [v8 setWithObject:a5];
    v11 = [MEMORY[0x277CBEB98] setWithObject:v9];

    v14 = [(HFItemManager *)self _itemsToUpdateForHomeKitKeyPaths:v10 forHomeKitObjectIdentifiers:v11];

    v12 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
    v13 = [v12 requestUpdateForItems:v14 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
  }
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_initWeak(&location, self);
  v9 = [(HFItemManager *)self firstFastUpdateFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke;
  v13[3] = &unk_277DF77E0;
  objc_copyWeak(v16, &location);
  v10 = v8;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  v16[1] = a2;
  v12 = [v9 addCompletionBlock:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [*(a1 + 32) na_map:&__block_literal_global_20_2];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v9 = [WeakRetained itemProviders];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke_3;
  v22[3] = &unk_277DF77B8;
  v10 = v8;
  v23 = v10;
  v25 = &v26;
  v24 = *(a1 + 32);
  [v9 na_each:v22];

  if (*(v27 + 24) == 1)
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    v13 = [WeakRetained _itemsToUpdateForHomeKitKeyPaths:v11 forHomeKitObjectIdentifiers:v12];

    v14 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138413058;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "didReceiveSettingsUpdatesForAccessoryWithIdentifier = [%@] settings = [%@] keyPaths = [%@]. Now reloading items: %@", buf, 0x2Au);
    }

    if ([v13 count])
    {
      v17 = [WeakRetained batchedDelegateAdapterDisallowingReads];
      v18 = [v17 requestUpdateForItems:v13 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:*(a1 + 56)];
    }
  }

  else
  {
    v13 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138412802;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "didReceiveSettingsUpdatesForAccessoryWithIdentifier = [%@] settings = [%@] keyPaths = [%@]. Not reloading items since no new data", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v26, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __96__HFItemManager_HomeKitDelegates__didReceiveSettingsUpdatesForAccessoryWithIdentifier_settings___block_invoke_3(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2825307D0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5 && [v5 shouldUpdateForKeyPaths:a1[4]])
  {
    v7 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Calling HFHomeKitSettingItemProviderProtocol to check if a update is needed for [%@]", &v10, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = [v3 updateSettings:a1[5]];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4 accessoryIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x277CBEB98];
  v12 = a5;
  v13 = [v11 setWithObject:v10];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v12];

  v15 = [(HFItemManager *)self _itemsToUpdateForHomeKitKeyPaths:v13 forHomeKitObjectIdentifiers:v14];

  if ([v15 count])
  {
    v16 = [(HFItemManager *)self itemProviders];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke;
    v22[3] = &unk_277DF7808;
    v17 = v15;
    v23 = v17;
    v24 = v9;
    v25 = v10;
    [v16 na_each:v22];

    v18 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke_2;
    v19[3] = &unk_277DF37C0;
    v19[4] = self;
    v20 = v17;
    v21 = a2;
    [v18 performBlock:v19];
  }
}

void __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_2825307D0])
  {
    v3 = [v5 items];
    v4 = [v3 intersectsSet:a1[4]];

    if (v4)
    {
      [v5 updateSettingValue:a1[5] forKeyPath:a1[6]];
    }
  }
}

void __85__HFItemManager_HomeKitDelegates__updateSettingValue_forKeyPath_accessoryIdentifier___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) batchedDelegateAdapterDisallowingReads];
  v2 = [v3 requestUpdateForItems:*(a1 + 40) itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:*(a1 + 48)];
}

- (void)home:(id)a3 didAddMediaSystem:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v7];
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedMediaSystem:v7];

  v11 = [v9 requestUpdateForItems:v8 itemProviderInvalidationReasons:v10 modifiedHome:v12 senderSelector:a2];
}

- (void)home:(id)a3 didRemoveMediaSystem:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v7];
  v9 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v10 = [(HFItemManager *)self _invalidationReasonsForAddedOrRemovedMediaSystem:v7];

  v11 = [v9 requestUpdateForItems:v8 itemProviderInvalidationReasons:v10 modifiedHome:v12 senderSelector:a2];
}

- (void)home:(id)a3 didUpdateMediaSystem:(id)a4
{
  v10 = a3;
  v7 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:a4];
  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v9 = [v8 requestUpdateForItems:v7 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v10 senderSelector:a2];
}

- (void)mediaSystem:(id)a3 didUpdateComponents:(id)a4
{
  v6 = a3;
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v6];
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v6 hf_home];

  v9 = [v7 requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:a2];
}

- (void)mediaSystem:(id)a3 didUpdateName:(id)a4
{
  v6 = a3;
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v6];
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v6 hf_home];

  v9 = [v7 requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:a2];
}

- (void)mediaSystem:(id)a3 didUpdateConfiguredName:(id)a4
{
  v6 = a3;
  v10 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v6];
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v6 hf_home];

  v9 = [v7 requestUpdateForItems:v10 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:v8 senderSelector:a2];
}

- (void)audioControl:(id)a3 didUpdateVolume:(float)a4
{
  v6 = [a3 mediaSession];
  v9 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:v6];

  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)audioControl:(id)a3 didUpdateMuted:(BOOL)a4
{
  v6 = [a3 mediaSession];
  v9 = [(HFItemManager *)self _itemsToUpdateForMediaSessionChange:v6];

  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v8 = [v7 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSessionState:(int64_t)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSessionHubIdentifier:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSiriEngineVersion:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)a3 didUpdateMultifunctionButton:(int64_t)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)a3 didUpdateCurrentAssistant:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)siriEndpointProfile:(id)a3 didUpdateAssistants:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForSiriEndpointProfileObjectChange:a3, a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)personManager:(id)a3 didUpdatePersons:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedPersons:a4];
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11[0] = @"person";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v7 requestUpdateForItems:v6 itemProviderInvalidationReasons:v8 modifiedHome:0 senderSelector:a2];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)personManager:(id)a3 didRemovePersonsWithUUIDs:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:a4];
  v7 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11[0] = @"person";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [v7 requestUpdateForItems:v6 itemProviderInvalidationReasons:v8 modifiedHome:0 senderSelector:a2];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)personManager:(id)a3 didUpdatePersonFaceCrops:(id)a4
{
  v6 = a4;
  v12 = [v6 na_map:&__block_literal_global_32];
  v7 = [v6 na_map:&__block_literal_global_34_0];

  v8 = [v12 setByAddingObjectsFromSet:v7];
  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:v8];
  v10 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v11 = [v10 requestUpdateForItems:v9 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)personManager:(id)a3 didRemoveFaceCropsWithUUIDs:(id)a4
{
  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:a4];
  v6 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v7 = [v6 requestUpdateForItems:v8 itemProviderInvalidationReasons:MEMORY[0x277CBEBF8] modifiedHome:0 senderSelector:a2];
}

- (void)didUpdateDemoModeStateForAccessory:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v5];
  v7 = [v6 mutableCopy];

  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12[0] = @"accessory";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v8 requestUpdateForItems:v7 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)pinCodeManagerDidUpdate:(id)a3 pinCodes:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessCodes:a4];
  v7 = [v6 mutableCopy];

  v8 = [(HFItemManager *)self batchedDelegateAdapterDisallowingReads];
  v12[0] = @"user";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [v8 requestUpdateForItems:v7 itemProviderInvalidationReasons:v9 modifiedHome:0 senderSelector:a2];

  v11 = *MEMORY[0x277D85DE8];
}

- (HFItemManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDelegate_sourceItem_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:200 description:{@"%s is unavailable; use %@ instead", "-[HFItemManager init]", v5}];

  return 0;
}

- (HFItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v52.receiver = self;
  v52.super_class = HFItemManager;
  v8 = [(HFItemManager *)&v52 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_sourceItem, a4);
    itemModules = v9->_itemModules;
    v11 = MEMORY[0x277CBEBF8];
    v9->_itemModules = MEMORY[0x277CBEBF8];

    itemProviders = v9->_itemProviders;
    v9->_itemProviders = v11;

    identifier = v9->_identifier;
    v9->_identifier = @"--";

    v9->_diffableDataSourceDisabled = _os_feature_enabled_impl() ^ 1;
    v14 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    childItemsByParentItem = v9->_childItemsByParentItem;
    v9->_childItemsByParentItem = v14;

    v16 = objc_alloc_init(HFStandardReadPolicy);
    readPolicy = v9->_readPolicy;
    v9->_readPolicy = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    disableUpdateReasons = v9->_disableUpdateReasons;
    v9->_disableUpdateReasons = v18;

    v20 = [MEMORY[0x277CBEB38] dictionary];
    suppressedCharacteristicUpdatesByReason = v9->_suppressedCharacteristicUpdatesByReason;
    v9->_suppressedCharacteristicUpdatesByReason = v20;

    v22 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstFastUpdateFuture = v9->_firstFastUpdateFuture;
    v9->_firstFastUpdateFuture = v22;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstFullUpdateFuture = v9->_firstFullUpdateFuture;
    v9->_firstFullUpdateFuture = v24;

    v26 = objc_alloc_init(MEMORY[0x277D2C900]);
    UIDiffableDataInitializationFuture = v9->_UIDiffableDataInitializationFuture;
    v9->_UIDiffableDataInitializationFuture = v26;

    v28 = [MEMORY[0x277D2C900] futureWithNoResult];
    latestSnapshotGenerationFuture = v9->_latestSnapshotGenerationFuture;
    v9->_latestSnapshotGenerationFuture = v28;

    v30 = objc_alloc_init(MEMORY[0x277D2C900]);
    firstFullUpdateWithTimeoutFuture = v9->_firstFullUpdateWithTimeoutFuture;
    v9->_firstFullUpdateWithTimeoutFuture = v30;

    v9->_hasBegunFirstFullUpdateFutureTimeout = 0;
    v32 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v33 = dispatch_queue_create("com.apple.Home.DiffableDataSourceItemManager", v32);
    diffableDataSourceQueue = v9->_diffableDataSourceQueue;
    v9->_diffableDataSourceQueue = v33;

    v35 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:v9->_diffableDataSourceQueue];
    diffableDataSourceScheduler = v9->_diffableDataSourceScheduler;
    v9->_diffableDataSourceScheduler = v35;

    v37 = [HFItemManagerBatchedDelegateAdapter alloc];
    v38 = [(HFItemManager *)v9 readPolicy];
    v39 = [(HFItemManagerBatchedDelegateAdapter *)v37 initWithItemManager:v9 readPolicy:v38];
    batchedDelegateAdapterAllowingReads = v9->_batchedDelegateAdapterAllowingReads;
    v9->_batchedDelegateAdapterAllowingReads = v39;

    v41 = [HFItemManagerBatchedDelegateAdapter alloc];
    v42 = [HFStaticReadPolicy policyWithDecision:0];
    v43 = [(HFItemManagerBatchedDelegateAdapter *)v41 initWithItemManager:v9 readPolicy:v42];
    batchedDelegateAdapterDisallowingReads = v9->_batchedDelegateAdapterDisallowingReads;
    v9->_batchedDelegateAdapterDisallowingReads = v43;

    [(HFItemManager *)v9 _updateExternalUpdatesEnabled:1 reloadItems:0];
    objc_initWeak(&location, v9);
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __45__HFItemManager_initWithDelegate_sourceItem___block_invoke;
    v49 = &unk_277DF4460;
    objc_copyWeak(&v50, &location);
    dispatch_async(MEMORY[0x277D85CD0], &v46);
    [(HFItemManager *)v9 _debug_registerForStateDump:v46];
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __45__HFItemManager_initWithDelegate_sourceItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _homeFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HFItemManager_initWithDelegate_sourceItem___block_invoke_2;
  v5[3] = &unk_277DFB7B0;
  objc_copyWeak(&v6, (a1 + 32));
  v4 = [v3 addSuccessBlock:v5];

  objc_destroyWeak(&v6);
}

void __45__HFItemManager_initWithDelegate_sourceItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHome:v3];
}

- (void)dealloc
{
  v3 = [(HFItemManager *)self firstFastUpdateFuture];
  v4 = [v3 isFinished];

  if ((v4 & 1) == 0)
  {
    v5 = [(HFItemManager *)self firstFastUpdateFuture];
    [v5 cancel];
  }

  v6 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
  v7 = [v6 isFinished];

  if ((v7 & 1) == 0)
  {
    v8 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
    [v8 cancel];
  }

  v9 = [(HFItemManager *)self firstFullUpdateFuture];
  v10 = [v9 isFinished];

  if ((v10 & 1) == 0)
  {
    v11 = [(HFItemManager *)self firstFullUpdateFuture];
    [v11 cancel];
  }

  [(HFItemManager *)self _removeDelegateNotifications];
  [(HFItemManager *)self deregisterMatterDelegates];
  v12.receiver = self;
  v12.super_class = HFItemManager;
  [(HFItemManager *)&v12 dealloc];
}

- (NSSet)allItems
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HFItemManager *)self home];
  if (v4)
  {
  }

  else if (![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    goto LABEL_12;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HFItemManager *)self itemProviders];
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

        v10 = [*(*(&v13 + 1) + 8 * i) items];
        [v3 unionSet:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_internalItems
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFItemManager *)self sourceItem];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (id)_allItemsIncludingInternalItems
{
  v3 = [(HFItemManager *)self allItems];
  v4 = [(HFItemManager *)self _internalItems];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)displayedItemsInSectionWithIdentifier:(id)a3
{
  v4 = [(HFItemManager *)self sectionIndexForDisplayedSectionIdentifier:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [(HFItemManager *)self displayedItemsInSection:v4];
  }

  return v5;
}

- (id)childItemsForItem:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self childItemsByParentItem];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)childItemsForItem:(id)a3 ofClass:(Class)a4
{
  v5 = [(HFItemManager *)self childItemsForItem:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFItemManager_childItemsForItem_ofClass___block_invoke;
  v8[3] = &__block_descriptor_40_e16_B16__0__HFItem_8lu32l8;
  v8[4] = a4;
  v6 = [v5 na_filter:v8];

  return v6;
}

- (id)childItemsForItem:(id)a3 ofClass:(Class)a4 conformingToProtocol:(id)a5
{
  v8 = a5;
  v9 = [(HFItemManager *)self childItemsForItem:a3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HFItemManager_childItemsForItem_ofClass_conformingToProtocol___block_invoke;
  v13[3] = &unk_277DFB7F8;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  v11 = [v9 na_filter:v13];

  return v11;
}

uint64_t __64__HFItemManager_childItemsForItem_ofClass_conformingToProtocol___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
  }

  else if (*(a1 + 32))
  {
    v4 = [v3 conformsToProtocol:?];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)matchingItemForHomeKitObject:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self allDisplayedItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HFItemManager_matchingItemForHomeKitObject___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __46__HFItemManager_matchingItemForHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28252A8F8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 homeKitObject];

  if (v5)
  {
    if ([v6 isEqual:*(a1 + 32)])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 uniqueIdentifier];
      v9 = [*(a1 + 32) uniqueIdentifier];
      v7 = [v8 isEqual:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)disableExternalUpdatesWithReason:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFItemManager *)self disableUpdateReasons];
    v7 = [(HFItemManager *)self disableUpdateReasons];
    v19 = 138413058;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:(DU-D1) Adding reason (%@) to disable updates - all reasons BEFORE (%p): %@", &v19, 0x2Au);
  }

  v8 = [(HFItemManager *)self disableUpdateReasons];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = self;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@:(DU-D1.1) Duplicate request to disable updates for reason %@", &v19, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v12 = [(HFItemManager *)self disableUpdateReasons];
    v13 = [v12 count];
    v11 = v13 == 0;

    if (!v13)
    {
      [(HFItemManager *)self _updateExternalUpdatesEnabled:0 reloadItems:1];
    }

    v14 = [(HFItemManager *)self disableUpdateReasons];
    [v14 addObject:v4];

    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HFItemManager *)self disableUpdateReasons];
      v16 = [(HFItemManager *)self disableUpdateReasons];
      v19 = 138412802;
      v20 = self;
      v21 = 2048;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@:(DU-D2) Added reason to disable updates - all reasons AFTER (%p): %@", &v19, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)endDisableExternalUpdatesWithReason:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFItemManager *)self disableUpdateReasons];
    v7 = [(HFItemManager *)self disableUpdateReasons];
    v22 = 138413058;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    v26 = 2048;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:(DU-R1) Removing reason (%@) to disable updates - all reasons BEFORE (%p): %@", &v22, 0x2Au);
  }

  v8 = [(HFItemManager *)self disableUpdateReasons];
  v9 = [v8 containsObject:v4];

  if ((v9 & 1) == 0)
  {
    v17 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(HFItemManager *)self disableUpdateReasons];
      v19 = [(HFItemManager *)self disableUpdateReasons];
      v22 = 138413058;
      v23 = self;
      v24 = 2112;
      v25 = v4;
      v26 = 2048;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:(DU-R1.1) Removing reason (%@) to disable updates NOT FOUND in all reasons BEFORE (%p): %@. Are multiple items being removed? Is a bridge being removed?", &v22, 0x2Au);
    }

    goto LABEL_11;
  }

  v10 = [(HFItemManager *)self disableUpdateReasons];
  [v10 removeObject:v4];

  v11 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(HFItemManager *)self disableUpdateReasons];
    v13 = [(HFItemManager *)self disableUpdateReasons];
    v22 = 138412802;
    v23 = self;
    v24 = 2048;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@:(DU-R2) Removed reason to disable updates - all reasons AFTER (%p): %@", &v22, 0x20u);
  }

  v14 = [(HFItemManager *)self disableUpdateReasons];
  v15 = [v14 count];

  if (v15)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = 1;
  [(HFItemManager *)self _updateExternalUpdatesEnabled:1 reloadItems:1];
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)beginSuppressingUpdatesForCharacteristics:(id)a3 withReason:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Suppressing updates in %@ for characteristics %@ with reason %@", &v12, 0x20u);
  }

  v9 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v10 = [v9 na_objectForKey:v7 withDefaultValue:&__block_literal_global_193];

  [v10 unionSet:v6];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)endSuppressingUpdatesForCharacteristicsWithReason:(id)a3 updateAffectedItems:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
    v11 = [v10 allKeys];
    NSLog(&cfstr_RequestToEndSu.isa, self, v7, v11);
  }

  v12 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "End suppressing updates in %@ for characteristics with reason %@", buf, 0x16u);
  }

  v13 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v14 = [v13 objectForKeyedSubscript:v7];
  v15 = [v14 mutableCopy];

  v16 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  [v16 removeObjectForKey:v7];

  if (v4)
  {
    v17 = [(HFItemManager *)self _allSuppressedCharacteristics];
    [v15 minusSet:v17];

    if ([v15 count])
    {
      v18 = objc_opt_new();
      [v18 setSenderSelector:a2];
      v19 = [HFStaticReadPolicy policyWithDecision:0];
      [v18 setReadPolicy:v19];

      v20 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v15];
      v21 = [(HFItemManager *)self _updateResultsForItems:v20 context:v18];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setHome:(id)a3
{
  v5 = a3;
  if (self->_home != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_home, a3);
    if (!v10)
    {
      lastUpdatedHome = self->_lastUpdatedHome;
      self->_lastUpdatedHome = 0;
    }

    v7 = [(HFItemManager *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(HFItemManager *)self delegate];
      [v9 itemManager:self didChangeHome:self->_home];
    }

    [(HFItemManager *)self resetItemProvidersAndModules];
    v5 = v10;
  }
}

- (void)setSourceItem:(id)a3
{
  v5 = a3;
  if (self->_sourceItem != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_sourceItem, a3);
    v6 = [(HFItemManager *)self delegate];
    v7 = objc_opt_respondsToSelector();

    v5 = v9;
    if (v7)
    {
      v8 = [(HFItemManager *)self delegate];
      [v8 itemManager:self didChangeSourceItem:self->_sourceItem];

      v5 = v9;
    }
  }
}

- (void)setReadPolicy:(id)a3
{
  objc_storeStrong(&self->_readPolicy, a3);
  v5 = a3;
  v6 = [(HFItemManager *)self batchedDelegateAdapterAllowingReads];
  [v6 setReadPolicy:v5];
}

- (void)setItemModules:(id)a3
{
  v8 = a3;
  if (![(NSArray *)self->_itemModules isEqualToArray:?])
  {
    objc_storeStrong(&self->_itemModules, a3);
    v5 = [(HFItemManager *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(HFItemManager *)self delegate];
      [v7 itemManager:self didUpdateItemModules:v8];
    }
  }
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v5 = [(HFItemManager *)self itemModules];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:506 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemManager _buildItemProvidersForHome:]", objc_opt_class()}];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)_sortedItems:(id)a3 forSectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(HFItemManager *)self _comparatorForSectionIdentifier:a4];
  v8 = [v6 sortedArrayUsingComparator:v7];

  return v8;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self itemModules];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HFItemManager__didFinishUpdateTransactionWithAffectedItems___block_invoke;
  v7[3] = &unk_277DFB820;
  v8 = v4;
  v6 = v4;
  [v5 na_each:v7];
}

- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate
{
  if (+[HFExecutionEnvironment isHomeApp](HFExecutionEnvironment, "isHomeApp") || +[HFExecutionEnvironment isHomeControlService])
  {
    return 1;
  }

  return +[HFExecutionEnvironment isSpringBoard];
}

- (id)_homeFuture
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeFuture];

  return v3;
}

- (BOOL)_requiresNotificationsForCharacteristic:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 characteristicType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCF930]];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 characteristicType];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCF928]];

  if (v7 & 1) != 0 || ([v3 service], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "serviceType"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CD0DD0]), v9, v8, (v10))
  {
LABEL_4:
    v11 = 0;
  }

  else
  {
    v14 = *MEMORY[0x277CCF7D0];
    v18[0] = *MEMORY[0x277CCF780];
    v18[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v16 = [v3 characteristicType];
    v17 = [v15 containsObject:v16];

    v11 = v17 ^ 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_registerForExternalUpdates
{
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  [v6 addHomeManagerObserver:self];
  [v6 addHomeObserver:self];
  [v6 addAccessoryObserver:self];
  [v6 addResidentDeviceObserver:self];
  [v6 addCameraObserver:self];
  [(HFItemManager *)self _setupDelegateNotifications];
  [(HFItemManager *)self registerMatterDelegates];
  v3 = +[HFTemperatureUnitCoordinator sharedCoordinator];
  [v3 registerObserver:self];

  v4 = +[HFUserNotificationCenter sharedInstance];
  [v4 addObserver:self];

  [v6 addMediaSessionObserver:self];
  [v6 addAudioControlObserver:self];
  [v6 addMediaObjectObserver:self];
  [v6 addHomeKitSettingsObserver:self];
  [v6 addNetworkConfigurationObserver:self];
  [v6 addSoftwareUpdateObserver:self];
  [v6 addSoftwareUpdateControllerObserver:self];
  [v6 addSymptomsHandlerObserver:self];
  [v6 addTelevisionObserver:self];
  [v6 addUserObserver:self];
  [v6 addMediaDestinationControllerObserver:self];
  [v6 addSiriEndpointProfileObserver:self];
  [v6 addSymptomFixSessionObserver:self];
  [v6 addHomePersonManagerObserver:self];
  [v6 addLightObserver:self];
  [v6 addWalletKeyDeviceStateObserver:self];
  v5 = [(HFItemManager *)self itemModules];
  [v5 na_each:&__block_literal_global_219_0];
}

- (void)_unregisterForExternalUpdates
{
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  [v6 removeHomeManagerObserver:self];
  [v6 removeHomeObserver:self];
  [v6 removeAccessoryObserver:self];
  [v6 removeResidentDeviceObserver:self];
  [v6 removeCameraObserver:self];
  [(HFItemManager *)self _removeDelegateNotifications];
  [(HFItemManager *)self deregisterMatterDelegates];
  v3 = +[HFTemperatureUnitCoordinator sharedCoordinator];
  [v3 unregisterObserver:self];

  v4 = +[HFUserNotificationCenter sharedInstance];
  [v4 removeObserver:self];

  [v6 removeMediaSessionObserver:self];
  [v6 removeAudioControlObserver:self];
  [v6 removeMediaObjectObserver:self];
  [v6 removeHomeKitSettingsObserver:self];
  [v6 removeNetworkConfigurationObserver:self];
  [v6 removeSoftwareUpdateObserver:self];
  [v6 removeSoftwareUpdateControllerObserver:self];
  [v6 removeSymptomsHandlerObserver:self];
  [v6 removeTelevisionObserver:self];
  [v6 removeUserObserver:self];
  [v6 removeMediaDestinationControllerObserver:self];
  [v6 removeSiriEndpointProfileObserver:self];
  [v6 removeSymptomFixSessionObserver:self];
  [v6 removeHomePersonManagerObserver:self];
  [v6 removeLightObserver:self];
  [v6 removeWalletKeyDeviceStateObserver:self];
  v5 = [(HFItemManager *)self itemModules];
  [v5 na_each:&__block_literal_global_221];
}

- (id)performItemUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 itemsProvidersToReload];
  v6 = [v5 allObjects];
  v7 = [v4 itemsToUpdate];
  v8 = [v4 senderSelector];

  v9 = [(HFItemManager *)self _reloadAndUpdateItemsForProviders:v6 updateItems:v7 senderSelector:v8];

  return v9;
}

- (BOOL)itemIsBeingDisplayed:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self allDisplayedItems];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)reloadAndUpdateAllItemsFromSenderSelector:(SEL)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  if (-[HFItemManager hasRequestedFirstUpdate](self, "hasRequestedFirstUpdate") && (-[HFItemManager firstFastUpdateFuture](self, "firstFastUpdateFuture"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, (v6 & 1) == 0))
  {
    v10 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Request to reloadAndUpdateAllItems for %@, but we're still performing the fast initial update. Once that is done, we'll reload all items anyway, so ignoring this duplicate request", location, 0xCu);
    }

    v9 = [(HFItemManager *)self firstFullUpdateFuture];
  }

  else
  {
    objc_initWeak(location, self);
    v7 = [(HFItemManager *)self _homeFuture];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke;
    v15[3] = &unk_277DFB868;
    objc_copyWeak(v16, location);
    v16[1] = a3;
    v8 = [v7 flatMap:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke_2;
    v13[3] = &unk_277DF5330;
    objc_copyWeak(&v14, location);
    v9 = [v8 recover:v13];
    objc_destroyWeak(&v14);

    objc_destroyWeak(v16);
    objc_destroyWeak(location);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

id __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained lastUpdatedHome];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = [WeakRetained home];
    v8 = [v3 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [WeakRetained setHome:v3];
    }
  }

  else
  {
    v9 = [WeakRetained lastUpdatedHome];

    if (v9)
    {
      [WeakRetained setHome:0];
      v10 = [MEMORY[0x277CBEB98] set];
      v11 = [MEMORY[0x277CBEB98] set];
      [WeakRetained _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v10 removedItems:v11 logger:0];
    }

    [WeakRetained setHome:v3];
    [WeakRetained setLastUpdatedHome:v3];
  }

  v12 = [WeakRetained _reloadAllItemProvidersFromSenderSelector:*(a1 + 40)];

  return v12;
}

id __59__HFItemManager_reloadAndUpdateAllItemsFromSenderSelector___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB98] set];
  v3 = [MEMORY[0x277CBEB98] set];
  [WeakRetained _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v2 removedItems:v3 logger:0];

  [WeakRetained setHome:0];
  [WeakRetained setLastUpdatedHome:0];
  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)_reloadAllItemProvidersFromSenderSelector:(SEL)a3
{
  v47 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__HFItemManager__reloadAllItemProvidersFromSenderSelector___block_invoke;
  aBlock[3] = &unk_277DF3D38;
  aBlock[4] = self;
  v34 = _Block_copy(aBlock);
  v3 = [(HFItemManager *)self itemProviders];
  v37 = [v3 na_filter:&__block_literal_global_226];

  v4 = objc_alloc_init(MEMORY[0x277D2C918]);
  v5 = [v4 future];
  v6 = [(HFItemManager *)self firstFastUpdateFuture];
  v7 = [v6 completionHandlerAdapter];
  v8 = [v5 addCompletionBlock:v7];
  v35 = v4;

  v9 = [(HFItemManager *)self _internalItems];
  v10 = [(HFItemManager *)self readPolicy];
  v36 = [(HFItemManager *)self _reloadItemProviders:v37 updateItems:v9 shouldUpdateExistingItems:1 senderSelector:a3 readPolicy:v10 fastInitialUpdatePromise:v4];

  v11 = [(HFItemManager *)self firstFullUpdateFuture];
  v12 = [v11 completionHandlerAdapter];
  v13 = [v36 addCompletionBlock:v12];

  [(HFItemManager *)self beginFirstFullUpdateWithTimeoutFutureIfNeeded];
  v14 = [v37 count];
  v15 = [(HFItemManager *)self itemProviders];
  LODWORD(v14) = v14 == [v15 count];

  if (v14)
  {
    v16 = v36;
    v17 = v36;
  }

  else
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithObject:v36];
    v19 = [(HFItemManager *)self itemProviders];
    v20 = [v19 mutableCopy];

    [v20 removeObjectsInArray:v37];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v22)
    {
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v45 = *(*(&v40 + 1) + 8 * i);
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
          v26 = [MEMORY[0x277CBEB98] set];
          v27 = [(HFItemManager *)self _reloadAndUpdateItemsForProviders:v25 updateItems:v26 senderSelector:a3];
          [v18 addObject:v27];
        }

        v22 = [v21 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v22);
    }

    v28 = MEMORY[0x277D2C900];
    v29 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v30 = [v28 combineAllFutures:v18 ignoringErrors:1 scheduler:v29];
    v17 = [v30 flatMap:&__block_literal_global_231_1];

    v16 = v36;
  }

  v31 = v34;
  if (v34)
  {
    (*(v34 + 2))();
    v31 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v17;
}

id __59__HFItemManager__reloadAllItemProvidersFromSenderSelector___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 unionSet:{v9, v13}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)reloadAndUpdateItemsForProviders:(id)a3 senderSelector:(SEL)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 set];
  v9 = [(HFItemManager *)self _reloadAndUpdateItemsForProviders:v7 updateItems:v8 senderSelector:a4];

  return v9;
}

- (id)_reloadAndUpdateItemsForProviders:(id)a3 updateItems:(id)a4 senderSelector:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HFItemManager *)self readPolicy];
  v11 = [(HFItemManager *)self _reloadItemProviders:v9 updateItems:v8 shouldUpdateExistingItems:1 senderSelector:a5 readPolicy:v10];

  return v11;
}

- (id)_reloadItemProviders:(id)a3 updateItems:(id)a4 shouldUpdateExistingItems:(BOOL)a5 senderSelector:(SEL)a6 readPolicy:(id)a7 fastInitialUpdatePromise:(id)a8
{
  v69 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v48 = a4;
  v46 = a7;
  v47 = a8;
  v12 = [(HFItemManager *)self home];
  if (v12)
  {
  }

  else if (![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    NSLog(&cfstr_RequestToReloa.isa);
  }

  v13 = [(HFItemManager *)self home];
  if (!v13 && ![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    goto LABEL_28;
  }

  if (![v49 count])
  {
    v14 = [v48 count];

    if (v14)
    {
      goto LABEL_10;
    }

LABEL_28:
    v35 = MEMORY[0x277D2C900];
    v36 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v34 = [v35 futureWithError:v36];

    goto LABEL_30;
  }

LABEL_10:
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([objc_opt_class() _canReloadDuringUnitTests] & 1) == 0)
  {
    v37 = MEMORY[0x277D2C900];
    v38 = [MEMORY[0x277CBEB98] set];
    v34 = [v37 futureWithResult:v38];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = NSStringFromSelector(a6);
    v44 = [v15 stringWithFormat:@"[%@ %@]", self, v16];

    v17 = [[HFUpdateLogger alloc] initWithTimeout:v44 description:15.0];
    v18 = v17;
    if (v17)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v19 = [(HFUpdateLogger *)v17 loggerActivity];
      os_activity_scope_enter(v19, &state);

      v20 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(a6);
        *buf = 138412802;
        v64 = self;
        v65 = 2112;
        v66 = v21;
        v67 = 2112;
        v68 = v49;
        _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "%@: Starting reload for sender: %@. Item providers: %@", buf, 0x20u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v41 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = NSStringFromSelector(a6);
        *buf = 138412802;
        v64 = self;
        v65 = 2112;
        v66 = v42;
        v67 = 2112;
        v68 = v49;
        _os_log_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEFAULT, "%@: Starting reload for sender: %@. Item providers: %@", buf, 0x20u);
      }
    }

    v22 = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v23 = v49;
    v24 = [v23 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v24)
    {
      v25 = *v58;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = [*(*(&v57 + 1) + 8 * i) reloadItems];
          v28 = [v27 recover:&__block_literal_global_242_0];

          if (v28)
          {
            [v22 addObject:v28];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v24);
    }

    v29 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
    if ([v22 count])
    {
      v30 = MEMORY[0x277D2C900];
      v31 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v32 = [v30 combineAllFutures:v22 ignoringErrors:0 scheduler:v31];

      v29 = v32;
    }

    objc_initWeak(buf, self);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_2;
    v50[3] = &unk_277DFB950;
    objc_copyWeak(v55, buf);
    v51 = v48;
    v56 = a5;
    v33 = v18;
    v52 = v33;
    v55[1] = a6;
    v53 = v47;
    v54 = v46;
    v34 = [v29 flatMap:v50];

    objc_destroyWeak(v55);
    objc_destroyWeak(buf);
  }

LABEL_30:

  v39 = *MEMORY[0x277D85DE8];

  return v34;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke()
{
  v0 = MEMORY[0x277D2C900];
  v1 = [[HFItemProviderReloadResults alloc] initWithAddedItems:0 removedItems:0 existingItems:0];
  v2 = [v0 futureWithResult:v1];

  return v2;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_2(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  [v6 unionSet:*(a1 + 32)];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v7)
  {
    v8 = *v80;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v80 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v79 + 1) + 8 * i);
        v11 = [v10 addedItems];
        v12 = [v11 count];

        if (v12)
        {
          v13 = [v10 addedItems];
          [v4 unionSet:v13];
        }

        v14 = [v10 removedItems];
        v15 = [v14 count];

        if (v15)
        {
          v16 = [v10 removedItems];
          [v5 unionSet:v16];

          v17 = [v10 removedItems];
          [v6 minusSet:v17];
        }

        v18 = [v10 existingItems];
        v19 = [v18 count];

        if (v19 && *(a1 + 80) == 1)
        {
          v20 = [v10 existingItems];
          [v6 unionSet:v20];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v7);
  }

  v61 = [v4 mutableCopy];
  v21 = [*(a1 + 32) na_filter:&__block_literal_global_245_0];
  [v61 unionSet:v21];

  v22 = MEMORY[0x277D2C900];
  v23 = [MEMORY[0x277CBEB98] set];
  v60 = [v22 futureWithResult:v23];

  v24 = [v4 mutableCopy];
  [v24 unionSet:v6];
  if ([WeakRetained _shouldPerformFastInitialUpdates] && objc_msgSend(v61, "count"))
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v26 = [v25 loggerActivity];
      os_activity_scope_enter(v26, &state);

      v27 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = v61;
        _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "Starting a fast initial update for items: %@", buf, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v58 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v61;
        _os_log_impl(&dword_20D9BF000, v58, OS_LOG_TYPE_DEFAULT, "Starting a fast initial update for items: %@", &state, 0xCu);
      }
    }

    if ([v5 count])
    {
      v28 = *(a1 + 40);
      if (v28)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v29 = [v28 loggerActivity];
        os_activity_scope_enter(v29, &state);

        v30 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v5;
          _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Processing removed items in this fast update: %@", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v59 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v5;
          _os_log_impl(&dword_20D9BF000, v59, OS_LOG_TYPE_DEFAULT, "Processing removed items in this fast update: %@", &state, 0xCu);
        }
      }
    }

    v31 = objc_opt_new();
    [v31 setSenderSelector:*(a1 + 72)];
    [v31 setLogger:*(a1 + 40)];
    v83[0] = HFItemUpdateOptionFastInitialUpdate;
    v83[1] = HFItemUpdateOptionDisableOptionalData;
    v84[0] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "_shouldDisableOptionalDataDuringFastInitialUpdate")}];
    v84[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
    [v31 setUpdateOptions:v33];

    v34 = [HFStaticReadPolicy policyWithDecision:0];
    [v31 setReadPolicy:v34];

    v35 = [WeakRetained _updateResultsForItems:v61 removedItems:v5 context:v31 allowDelaying:1];

    v36 = 1;
    v60 = v35;
  }

  else
  {
    if ([v4 count])
    {
      v37 = *(a1 + 40);
      if (v37)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v38 = [v37 loggerActivity];
        os_activity_scope_enter(v38, &state);

        v39 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v4;
          _os_log_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEFAULT, "Item providers asked to add items: %@", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v56 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v4;
          _os_log_impl(&dword_20D9BF000, v56, OS_LOG_TYPE_DEFAULT, "Item providers asked to add items: %@", &state, 0xCu);
        }
      }
    }

    if ([v5 count])
    {
      v40 = *(a1 + 40);
      if (v40)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v41 = [v40 loggerActivity];
        os_activity_scope_enter(v41, &state);

        v42 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v5;
          _os_log_impl(&dword_20D9BF000, v42, OS_LOG_TYPE_DEFAULT, "Item providers asked to remove items: %@", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v57 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v5;
          _os_log_impl(&dword_20D9BF000, v57, OS_LOG_TYPE_DEFAULT, "Item providers asked to remove items: %@", &state, 0xCu);
        }
      }
    }

    v43 = *(a1 + 48);
    v31 = [MEMORY[0x277CBEB98] set];
    [v43 finishWithResult:v31];
    v36 = 0;
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_248;
  v77[3] = &unk_277DFB8B0;
  objc_copyWeak(&v78, (a1 + 64));
  v44 = [v60 flatMap:v77];
  v45 = objc_alloc_init(MEMORY[0x277D2C900]);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_3_252;
  v67[3] = &unk_277DFB928;
  objc_copyWeak(v74, (a1 + 64));
  v68 = *(a1 + 48);
  v75 = v36;
  v46 = v5;
  v76 = v36;
  v47 = *(a1 + 72);
  v69 = v46;
  v74[1] = v47;
  v70 = *(a1 + 40);
  v71 = *(a1 + 56);
  v72 = *(a1 + 32);
  v48 = v24;
  v73 = v48;
  v49 = [v44 flatMap:v67];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_9;
  v64[3] = &unk_277DF3180;
  v64[4] = WeakRetained;
  v65 = *(a1 + 40);
  v50 = v45;
  v66 = v50;
  v51 = [v49 addCompletionBlock:v64];
  v52 = v66;
  v53 = v50;

  objc_destroyWeak(v74);
  objc_destroyWeak(&v78);

  v54 = *MEMORY[0x277D85DE8];
  return v50;
}

BOOL __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = v2 == 0;

  return v3;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_248(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained latestSnapshotGenerationFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_2_249;
  v9[3] = &unk_277DF2CE0;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_3_252(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [*(a1 + 32) finishWithResult:v3];

  if (*(a1 + 96))
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v6 = v5;
  v7 = MEMORY[0x277D2C938];
  if (*(a1 + 97) == 1)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9 = [v7 schedulerWithDispatchQueue:v8];
  }

  else
  {
    v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_4;
  aBlock[3] = &unk_277DFB8D8;
  v31 = *(a1 + 88);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = WeakRetained;
  v29 = *(a1 + 72);
  v10 = v6;
  v30 = v10;
  v11 = _Block_copy(aBlock);
  v12 = +[HFUtilities isInternalTest];
  v13 = MEMORY[0x277D2C900];
  if (v12)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_6;
    v22[3] = &unk_277DFB900;
    v14 = &v23;
    v23 = v11;
    v15 = v11;
    v16 = [v13 futureWithBlock:v22];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_7;
    v20[3] = &unk_277DFB900;
    v14 = &v21;
    v21 = v11;
    v17 = v11;
    v16 = [v13 futureWithBlock:v20 scheduler:v9];
  }

  v18 = v16;

  return v18;
}

void __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_4(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setSenderSelector:*(a1 + 80)];
  [v4 setLogger:*(a1 + 32)];
  [v4 setReadPolicy:*(a1 + 40)];
  if ([*(a1 + 48) count])
  {
    v12 = HFItemUpdateOptionFullUpdateIndicated;
    v13[0] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v4 setUpdateOptions:v5];
  }

  v6 = [*(a1 + 56) _updateResultsForItems:*(a1 + 64) removedItems:*(a1 + 72) context:v4 allowDelaying:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_5;
  v10[3] = &unk_277DF4FE8;
  v11 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_8;
  v7[3] = &unk_277DF2AD8;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

void __127__HFItemManager__reloadItemProviders_updateItems_shouldUpdateExistingItems_senderSelector_readPolicy_fastInitialUpdatePromise___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 itemModules];
  [v7 na_each:&__block_literal_global_256];

  [*(a1 + 40) finish];
  [*(a1 + 48) finishWithResult:v8 error:v6];
}

- (void)_updateLoadingStateAndNotifyDelegateForItems:(id)a3 canFinishTransaction:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = [(HFItemManager *)self allDisplayedItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v8)
  {

    goto LABEL_22;
  }

  v9 = v8;
  v22 = v4;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      v14 = [v13 _effectiveLoadingStateForSuggestedLoadingState:{-[HFItemManager _loadingStateForItem:](self, "_loadingStateForItem:", v13)}];
      if ([v13 loadingState] != v14)
      {
        [v13 setLoadingState:v14];
        v15 = [(HFItemManager *)self _internalItems];
        v16 = [v15 containsObject:v13];

        v17 = [(HFItemManager *)self delegate];
        if (v16)
        {
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            v17 = [(HFItemManager *)self delegate];
            [v17 itemManager:self didUpdateResultsForSourceItem:v13];
            goto LABEL_14;
          }

LABEL_15:
          v10 = 1;
          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          v19 = [v23 containsObject:v13];

          if (!v19)
          {
            goto LABEL_15;
          }

          v17 = [(HFItemManager *)self indexPathForItem:v13];
          if (v17)
          {
            v20 = [(HFItemManager *)self delegate];
            [v20 itemManager:self didUpdateResultsForItem:v13 atIndexPath:v17];
          }
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v9);

  if (v10)
  {
    [(HFItemManager *)self _updateOverallLoadingStateAndNotifyDelegate];
    if (v22)
    {
      [(HFItemManager *)self _didFinishUpdateTransactionWithAffectedItems:v7];
    }
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_loadingStateForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];

  v7 = [(HFItemManager *)self _dependentHomeKitObjectsOfClass:objc_opt_class() inHomeKitObjects:v6];
  v8 = [(HFItemManager *)self _dependentHomeKitObjectsOfClass:objc_opt_class() inHomeKitObjects:v6];
  v9 = [(HFItemManager *)self home];
  v10 = [v9 hf_characteristicValueManager];

  v11 = [v10 loadingStateForCharacteristics:v7 actionSets:v8];
  if ([v4 conformsToProtocol:&unk_282534210])
  {
    v12 = v4;
    [v12 latestResults];
    v13 = v31 = v7;
    v14 = [v13 objectForKey:@"HFResultHomeKitSettingsVendorKey"];

    v15 = [v14 hf_settingsValueManager];
    v16 = [v12 latestResults];

    v17 = [v16 objectForKeyedSubscript:@"HFAccessorySettingRepresentitiveObjectKey"];
    v18 = [v17 keyPath];

    v19 = [v15 pendingWrites];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __38__HFItemManager__loadingStateForItem___block_invoke;
    v33[3] = &unk_277DF57B0;
    v34 = v18;
    v20 = v18;
    LODWORD(v16) = [v19 na_any:v33];

    if (v16)
    {
      v11 |= 2uLL;
    }

    v7 = v31;
  }

  else
  {
    v21 = [v4 latestResults];
    v22 = [v21 objectForKey:@"HFMediaAccessoryItemSettingsKey"];

    if (v22)
    {
      v32 = v7;
      v23 = [v4 latestResults];
      v24 = [v23 objectForKey:@"HFResultHomeKitSettingsVendorKey"];

      v25 = [v24 hf_settingsValueManager];
      v26 = [v4 latestResults];
      v27 = [v26 objectForKeyedSubscript:@"HFMediaAccessoryItemSettingsKey"];

      if (!v27 || ([v25 pendingWrites], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29))
      {
        v11 |= 2uLL;
      }

      v7 = v32;
    }
  }

  return v11;
}

uint64_t __38__HFItemManager__loadingStateForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateOverallLoadingStateAndNotifyDelegate
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HFItemManager *)self overallLoadingState];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(HFItemManager *)self _allDisplayedItemsIncludingInternalItems];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [*(*(&v14 + 1) + 8 * i) loadingState];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(HFItemManager *)self setOverallLoadingState:v7];
  if (v7 != v3)
  {
    v10 = [(HFItemManager *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(HFItemManager *)self delegate];
      [v12 itemManager:self didChangeOverallLoadingState:v7];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)updateResultsForItems:(id)a3 senderSelector:(SEL)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setSenderSelector:a4];
  v8 = [(HFItemManager *)self readPolicy];
  [v7 setReadPolicy:v8];

  v13 = HFItemUpdateOptionFullUpdateIndicated;
  v14[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v7 setUpdateOptions:v9];

  v10 = [(HFItemManager *)self _updateResultsForItems:v6 context:v7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)resetItemProvidersAndModules
{
  v3 = [(HFItemManager *)self home];
  if (v3)
  {

    goto LABEL_4;
  }

  if ([(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
LABEL_4:
    v4 = [(HFItemManager *)self home];
    v5 = [(HFItemManager *)self _buildItemModulesForHome:v4];
    [(HFItemManager *)self setItemModules:v5];

    v6 = [(HFItemManager *)self disableUpdateReasons];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = [(HFItemManager *)self itemModules];
      [v8 na_each:&__block_literal_global_280];
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = [(HFItemManager *)self itemModules];
    v11 = [v9 setWithArray:v10];
    v12 = [v11 na_flatMap:&__block_literal_global_283];
    [(HFItemManager *)self setModuleItemProviderSet:v12];

    v13 = [(HFItemManager *)self home];

    if (v13)
    {
      v14 = [(HFItemManager *)self home];
      v30 = [(HFItemManager *)self _buildItemProvidersForHome:v14];

      v15 = v30;
      if (v30)
      {
LABEL_9:
        v31 = v15;
        v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
        [(HFItemManager *)self setSubclassItemProviderSet:v16];

        v17 = [(HFItemManager *)self subclassItemProviderSet];
        v18 = [v17 count];
        v19 = [v31 count];

        if (v18 != v19)
        {
          NSLog(&cfstr_DuplicateItemP.isa, self, v31);
        }

        v20 = [(HFItemManager *)self moduleItemProviderSet];
        v21 = [(HFItemManager *)self subclassItemProviderSet];
        v22 = [v20 intersectsSet:v21];

        if (v22)
        {
          v23 = [(HFItemManager *)self moduleItemProviderSet];
          v24 = [(HFItemManager *)self subclassItemProviderSet];
          NSLog(&cfstr_SubclassIsRetu.isa, self, v23, v24);
        }

        v25 = [(HFItemManager *)self subclassItemProviderSet];
        v26 = [(HFItemManager *)self moduleItemProviderSet];
        v27 = [v25 setByAddingObjectsFromSet:v26];
        v28 = [v27 allObjects];
        [(HFItemManager *)self setItemProviders:v28];

        return;
      }
    }

    else
    {
      v15 = [(HFItemManager *)self _buildItemProvidersWithoutHome];
      if (v15)
      {
        goto LABEL_9;
      }
    }

    NSLog(&cfstr_HfitemmanagerA.isa, self);
    v15 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  v29 = MEMORY[0x277CBEBF8];
  [(HFItemManager *)self setItemModules:MEMORY[0x277CBEBF8]];

  [(HFItemManager *)self setItemProviders:v29];
}

- (id)_updateResultsForItems:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(HFItemManager *)self _updateResultsForItems:v8 removedItems:v9 context:v7 allowDelaying:1];

  return v10;
}

- (id)_updateResultsForItems:(id)a3 removedItems:(id)a4 context:(id)a5 allowDelaying:(BOOL)a6
{
  v6 = a6;
  v154 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v114 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v115 = v12;
  v13 = [v12 readPolicy];

  if (!v13)
  {
    v106 = [MEMORY[0x277CCA890] currentHandler];
    [v106 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:1238 description:{@"Invalid parameter not satisfying: %@", @"context.readPolicy != nil"}];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v141 objects:v153 count:16];
  if (v15)
  {
    v16 = *v142;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v142 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v141 + 1) + 8 * i);
        if ([v18 _debug_isChildItem])
        {
          NSLog(&cfstr_AttemptingToEx.isa, v18);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v141 objects:v153 count:16];
    }

    while (v15);
  }

  v19 = [(HFItemManager *)self home];
  if (v19)
  {
  }

  else if (![(HFItemManager *)self _shouldBuildItemProvidersAndModulesForNilHome])
  {
    v21 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v23 = [v21 futureWithError:v22];

    goto LABEL_45;
  }

  if (![v14 count] && !objc_msgSend(v114, "count"))
  {
    v103 = MEMORY[0x277D2C900];
    v104 = [MEMORY[0x277CBEB98] set];
    v23 = [v103 futureWithResult:v104];

    goto LABEL_45;
  }

  if (![(HFItemManager *)self hasRequestedFirstUpdate])
  {
    goto LABEL_22;
  }

  v20 = [(HFItemManager *)self firstFastUpdateFuture];
  if ([v20 isFinished])
  {

LABEL_22:
    if (v6 && [v14 count] && (-[HFItemManager delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_opt_respondsToSelector(), v27, (v28 & 1) != 0))
    {
      v29 = HFLogForCategory(0x35uLL);
      v30 = os_signpost_id_generate(v29);

      v31 = HFLogForCategory(0x35uLL);
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        v33 = [v115 updateOptions];
        v34 = [v33 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
        if ([v34 BOOLValue])
        {
          v35 = @"Initial";
        }

        else
        {
          v35 = @"Normal";
        }

        v36 = [(HFItemManager *)self identifier];
        v37 = objc_opt_class();
        v111 = v37;
        v38 = NSStringFromSelector([v115 senderSelector]);
        *buf = 138544130;
        v146 = v35;
        v147 = 2114;
        v148 = v36;
        v149 = 2114;
        v150 = v37;
        v151 = 2114;
        v152 = v38;
        _os_signpost_emit_with_name_impl(&dword_20D9BF000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "HFFutureToUpdateItems", "%{public}@ Item Update Delayed %{public}@:%{public}@ for sender: %{public}@", buf, 0x2Au);
      }

      v39 = [(HFItemManager *)self delegate];
      v40 = [v115 updateOptions];
      v41 = [v39 itemManager:self futureToUpdateItems:v14 itemUpdateOptions:v40];

      v42 = objc_alloc_init(MEMORY[0x277D2C900]);
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke;
      v135[3] = &unk_277DFB998;
      v135[4] = self;
      v43 = v115;
      v136 = v43;
      v44 = v14;
      v137 = v44;
      v140 = v30;
      v45 = v114;
      v138 = v45;
      v46 = v42;
      v139 = v46;
      v47 = [v41 addFailureBlock:v135];
      v129[0] = MEMORY[0x277D85DD0];
      v129[1] = 3221225472;
      v129[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2;
      v129[3] = &unk_277DFB9C0;
      v134 = v30;
      v129[4] = self;
      v130 = v44;
      v131 = v45;
      v132 = v43;
      v48 = v46;
      v133 = v48;
      v49 = [v41 addSuccessBlock:v129];
      v50 = v133;
      v23 = v48;
    }

    else
    {
      v51 = [v115 logger];

      if (!v51)
      {
        v52 = [HFUpdateLogger alloc];
        v53 = MEMORY[0x277CCACA8];
        v54 = NSStringFromSelector([v115 senderSelector]);
        v55 = [v53 stringWithFormat:@"[%@ %@]", self, v54];
        v56 = [(HFUpdateLogger *)v52 initWithTimeout:v55 description:15.0];
        [v115 setLogger:v56];
      }

      v57 = [v115 logger];
      v58 = v57 == 0;

      if (v58)
      {
        v107 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          v108 = NSStringFromSelector([v115 senderSelector]);
          *buf = 138543618;
          v146 = self;
          v147 = 2114;
          v148 = v108;
          _os_log_impl(&dword_20D9BF000, v107, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting update for sender: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v59 = [v115 logger];
        v60 = [v59 loggerActivity];
        os_activity_scope_enter(v60, &state);

        v61 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = NSStringFromSelector([v115 senderSelector]);
          *buf = 138543618;
          v146 = self;
          v147 = 2114;
          v148 = v62;
          _os_log_impl(&dword_20D9BF000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting update for sender: %{public}@", buf, 0x16u);
        }

        os_activity_scope_leave(&state);
      }

      v63 = HFLogForCategory(0x35uLL);
      spid = os_signpost_id_generate(v63);

      v64 = HFLogForCategory(0x35uLL);
      v65 = v64;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        v66 = [v115 updateOptions];
        v67 = [v66 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
        if ([v67 BOOLValue])
        {
          v68 = @"Initial";
        }

        else
        {
          v68 = @"Normal";
        }

        v69 = [(HFItemManager *)self identifier];
        v70 = objc_opt_class();
        v112 = v70;
        v71 = NSStringFromSelector([v115 senderSelector]);
        *buf = 138544130;
        v146 = v68;
        v147 = 2114;
        v148 = v69;
        v149 = 2114;
        v150 = v70;
        v151 = 2114;
        v152 = v71;
        _os_signpost_emit_with_name_impl(&dword_20D9BF000, v65, OS_SIGNPOST_INTERVAL_BEGIN, spid, "HFItemManagerUpdate", "%{public}@ Item Update Started %{public}@:%{public}@ for sender: %{public}@", buf, 0x2Au);
      }

      v109 = v51 == 0;

      v72 = MEMORY[0x277CCACA8];
      v73 = NSStringFromSelector([v115 senderSelector]);
      v113 = [v72 stringWithFormat:@"%@_%@", @"itemManagerUpdate", v73];

      v74 = [(HFItemManager *)self home];
      v75 = [v74 hf_characteristicValueManager];
      v76 = [v115 readPolicy];
      v77 = [v115 logger];
      [v75 beginTransactionWithReason:v113 readPolicy:v76 logger:v77];

      v78 = [(HFItemManager *)self _internalItems];
      v79 = [v78 na_setByIntersectingWithSet:v14];

      v80 = [v14 na_setByRemovingObjectsFromSet:v79];
      v81 = [MEMORY[0x277CBEB18] array];
      v82 = [v80 allObjects];
      v126[0] = MEMORY[0x277D85DD0];
      v126[1] = 3221225472;
      v126[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_317;
      v126[3] = &unk_277DFB9E8;
      v126[4] = self;
      v83 = v115;
      v127 = v83;
      v84 = [v82 na_map:v126];
      [v81 addObjectsFromArray:v84];

      v85 = [v79 allObjects];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2_320;
      v124[3] = &unk_277DFB9E8;
      v124[4] = self;
      v86 = v83;
      v125 = v86;
      v87 = [v85 na_map:v124];
      [v81 addObjectsFromArray:v87];

      v88 = objc_alloc_init(MEMORY[0x277D2C900]);
      v89 = [(HFItemManager *)self home];
      v90 = [v89 hf_characteristicValueManager];
      [v90 commitTransactionWithReason:v113];

      v91 = [v86 logger];
      [(HFItemManager *)self _batchItemUpdateFutureWrappers:v81 removedItems:v114 batchingIntervals:&unk_2825257F8 logger:v91];

      v92 = MEMORY[0x277D2C900];
      v93 = [_HFItemUpdateFutureWrapper futuresFromWrappers:v81];
      v94 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v95 = [v92 combineAllFutures:v93 ignoringErrors:1 scheduler:v94];

      objc_initWeak(buf, self);
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_329;
      v116[3] = &unk_277DFBA10;
      objc_copyWeak(v122, buf);
      v96 = v79;
      v117 = v96;
      v97 = v80;
      v118 = v97;
      v119 = v114;
      v122[1] = spid;
      v120 = v86;
      v123 = v109;
      v98 = v88;
      v121 = v98;
      v99 = [v95 addCompletionBlock:v116];
      v100 = v121;
      v23 = v98;

      objc_destroyWeak(v122);
      objc_destroyWeak(buf);
    }

    goto LABEL_45;
  }

  v24 = [v115 updateOptions];
  v25 = [v24 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v26 = [v25 BOOLValue];

  if (v26)
  {
    goto LABEL_22;
  }

  v105 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v146 = self;
    v147 = 2112;
    v148 = v14;
    _os_log_impl(&dword_20D9BF000, v105, OS_LOG_TYPE_DEFAULT, "Request to updateResultsForItems for %@, but we're still performing the fast initial update. Once that is done, we'll reload all items anyway, so ignoring this duplicate request. itemsToUpdate: %@", buf, 0x16u);
  }

  v23 = [(HFItemManager *)self firstFullUpdateFuture];
LABEL_45:

  v101 = *MEMORY[0x277D85DE8];

  return v23;
}

void __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) updateOptions];
    v7 = *(a1 + 48);
    *buf = 138412802;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Delegate for %@ has failed its future to update with options: %@ for items: %@; canceling update", buf, 0x20u);
  }

  v8 = HFLogForCategory(0x35uLL);
  v9 = v8;
  v10 = *(a1 + 72);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v19 = v3;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v9, OS_SIGNPOST_INTERVAL_END, v10, "HFFutureToUpdateItems", "Failed with error %@, canceling", buf, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [v11 _updateResultsForItems:v12 removedItems:*(a1 + 56) context:*(a1 + 40) allowDelaying:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_310;
  v16[3] = &unk_277DF4FE8;
  v17 = *(a1 + 64);
  v14 = [v13 addCompletionBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2(uint64_t a1)
{
  v2 = HFLogForCategory(0x35uLL);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v3, OS_SIGNPOST_INTERVAL_END, v4, "HFFutureToUpdateItems", "Starting update", buf, 2u);
  }

  v5 = [*(a1 + 32) _updateResultsForItems:*(a1 + 40) removedItems:*(a1 + 48) context:*(a1 + 56) allowDelaying:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_312;
  v7[3] = &unk_277DF4FE8;
  v8 = *(a1 + 64);
  v6 = [v5 addCompletionBlock:v7];
}

id __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_317(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _performUpdateForItem:v4 withContext:v3 isInternal:0 isChild:0];
  v6 = [_HFItemUpdateFutureWrapper wrapperWithFuture:v5 item:v4 isInternal:0];

  return v6;
}

id __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_2_320(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _performUpdateForItem:v4 withContext:v3 isInternal:1 isChild:0];
  v6 = [_HFItemUpdateFutureWrapper wrapperWithFuture:v5 item:v4 isInternal:1];

  return v6;
}

void __75__HFItemManager__updateResultsForItems_removedItems_context_allowDelaying___block_invoke_329(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 unionSet:*(a1 + 32)];
  [v3 unionSet:*(a1 + 40)];
  [v3 unionSet:*(a1 + 48)];
  v4 = HFLogForCategory(0x35uLL);
  v5 = v4;
  v6 = *(a1 + 80);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v24 = [*(a1 + 56) updateOptions];
    v7 = [v24 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    if ([v7 BOOLValue])
    {
      v8 = @"Initial";
    }

    else
    {
      v8 = @"Normal";
    }

    v9 = [WeakRetained identifier];
    v10 = objc_opt_class();
    v11 = *(a1 + 56);
    v23 = v10;
    v12 = NSStringFromSelector([v11 senderSelector]);
    *buf = 138544130;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v12;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HFItemManagerUpdate", "%{public}@ Item Update Finished %{public}@:%{public}@ for sender: %{public}@", buf, 0x2Au);
  }

  v13 = [*(a1 + 56) logger];

  if (v13)
  {
    *buf = 0;
    *&buf[8] = 0;
    v14 = [*(a1 + 56) logger];
    v15 = [v14 loggerActivity];
    os_activity_scope_enter(v15, buf);

    v16 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "All batch item updates complete.", v25, 2u);
    }

    os_activity_scope_leave(buf);
  }

  else
  {
    v22 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "All batch item updates complete.", buf, 2u);
    }
  }

  [WeakRetained _didFinishUpdateTransactionWithAffectedItems:v3];
  if (*(a1 + 88) == 1)
  {
    v17 = [*(a1 + 56) logger];
    [v17 finish];
  }

  v18 = [WeakRetained delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [WeakRetained delegate];
    [v20 itemManagerDidFinishUpdate:WeakRetained];
  }

  [*(a1 + 64) finishWithResult:v3];

  v21 = *MEMORY[0x277D85DE8];
}

id __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _performUpdateForChildItemsOfItem:*(a1 + 40) withContext:*(a1 + 48) isInternal:*(a1 + 64)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_2;
  v10[3] = &unk_277DFBA38;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v3;
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 65);
  v7 = v3;
  v8 = [v4 flatMap:v10];

  return v8;
}

id __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_2(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) loadingState];
  v5 = [*(a1 + 32) _effectiveLoadingStateForSuggestedLoadingState:{objc_msgSend(*(a1 + 40), "_loadingStateForItem:", *(a1 + 32))}];
  [*(a1 + 32) setLoadingState:v5];
  v6 = *(a1 + 48);
  if (v4 == v5)
  {
    v7 = [v3 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  if (![*(a1 + 48) outcomeType] || v7)
  {
    v8 = [*(a1 + 48) mutableCopy];
    if (v7)
    {
      v9 = 2;
    }

    else
    {
      v10 = [*(a1 + 48) results];
      v11 = [v10 isEqualToDictionary:*(a1 + 56)];

      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    [v8 setOutcomeType:v9];
  }

  else
  {
    v8 = v6;
  }

  v12 = [*(a1 + 40) _transformedUpdateOutcomeForItem:*(a1 + 32) proposedOutcome:v8];
  if (v8 != v12)
  {
    v13 = [*(a1 + 64) logger];

    if (v13)
    {
      v14 = [*(a1 + 64) logger];
      v15 = [v14 loggerActivity];
      os_activity_scope_enter(v15, &v45);

      v16 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        *buf = 138412546;
        v47 = v17;
        v48 = 2112;
        v49 = v18;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEBUG, "Results for item %@ have been transformed by item manager %@", buf, 0x16u);
      }

      os_activity_scope_leave(&v45);
    }

    else
    {
      v38 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 32);
        v40 = *(a1 + 40);
        *buf = 138412546;
        v47 = v39;
        v48 = 2112;
        v49 = v40;
        _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEBUG, "Results for item %@ have been transformed by item manager %@", buf, 0x16u);
      }
    }
  }

  v19 = [v12 results];
  [*(a1 + 32) setLatestResults:v19];

  if ([v12 outcomeType] == 2)
  {
    if (*(a1 + 72))
    {
      v20 = @"Updated";
    }

    else
    {
      v20 = @"Added";
    }

    v21 = v20;
    if (*(a1 + 73))
    {
      v22 = @"child item";
    }

    else
    {
      v22 = @"item";
    }

    v23 = v22;
    v24 = [*(a1 + 64) logger];

    if (v24)
    {
      v45.opaque[0] = 0;
      v45.opaque[1] = 0;
      v25 = [*(a1 + 64) logger];
      v26 = [v25 loggerActivity];
      os_activity_scope_enter(v26, &v45);

      v27 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138412802;
        v47 = v21;
        v48 = 2112;
        v49 = v23;
        v50 = 2112;
        v51 = v28;
        _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "%@ %@: %@", buf, 0x20u);
      }

      os_activity_scope_leave(&v45);
    }

    else
    {
      v41 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 32);
        *buf = 138412802;
        v47 = v21;
        v48 = 2112;
        v49 = v23;
        v50 = 2112;
        v51 = v42;
        _os_log_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEFAULT, "%@ %@: %@", buf, 0x20u);
      }
    }

LABEL_30:
    goto LABEL_38;
  }

  v29 = [*(a1 + 64) logger];

  if (!v29)
  {
    v21 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 32);
      if (*(a1 + 73))
      {
        v44 = @"child item";
      }

      else
      {
        v44 = @"item";
      }

      *buf = 138412546;
      v47 = v44;
      v48 = 2112;
      v49 = v43;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Updated %@, but results did not change: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v45.opaque[0] = 0;
  v45.opaque[1] = 0;
  v30 = [*(a1 + 64) logger];
  v31 = [v30 loggerActivity];
  os_activity_scope_enter(v31, &v45);

  v32 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 32);
    if (*(a1 + 73))
    {
      v34 = @"child item";
    }

    else
    {
      v34 = @"item";
    }

    *buf = 138412546;
    v47 = v34;
    v48 = 2112;
    v49 = v33;
    _os_log_impl(&dword_20D9BF000, v32, OS_LOG_TYPE_DEFAULT, "Updated %@, but results did not change: %@", buf, 0x16u);
  }

  os_activity_scope_leave(&v45);
LABEL_38:
  v35 = [MEMORY[0x277D2C900] futureWithResult:v12];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

id __70__HFItemManager__performUpdateForItem_withContext_isInternal_isChild___block_invoke_353(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 na_isCancelledError] & 1) == 0)
  {
    v4 = [*(a1 + 32) logger];

    if (v4)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v5 = [*(a1 + 32) logger];
      v6 = [v5 loggerActivity];
      os_activity_scope_enter(v6, &state);

      v7 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138412546;
        v23 = v8;
        v24 = 2112;
        v25 = v3;
        _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Update for item %@ failed with error %@. This is a programmer error, as item updates should never fail.", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v19 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 40);
        *buf = 138412546;
        v23 = v20;
        v24 = 2112;
        v25 = v3;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Update for item %@ failed with error %@. This is a programmer error, as item updates should never fail.", buf, 0x16u);
      }
    }

    NSLog(&cfstr_UpdateForItemF.isa, *(a1 + 40), v3);
  }

  v9 = [*(a1 + 40) latestResults];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 40) latestResults];
    v12 = [v11 isEqualToDictionary:*(a1 + 48)];

    if ((v12 & 1) == 0)
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = [v13 latestResults];
      NSLog(&cfstr_AnItemSUpdateW.isa, v13, v14, v15);
    }
  }

  v16 = [MEMORY[0x277D2C900] futureWithError:v3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_performUpdateForChildItemsOfItem:(id)a3 withContext:(id)a4 isInternal:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 latestResults];
  v12 = [v11 objectForKeyedSubscript:@"childItems"];

  v13 = [(HFItemManager *)self childItemsByParentItem];
  v14 = [v13 objectForKey:v9];

  v15 = v12;
  v16 = v14;
  if (v15 == v16)
  {
    v17 = 0;
  }

  else if (v15)
  {
    v17 = [v15 isEqual:v16] ^ 1;
  }

  else
  {
    v17 = 1;
  }

  v18 = [(HFItemManager *)self childItemsByParentItem];
  [v18 setObject:v15 forKey:v9];

  if ([v15 containsObject:v9])
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:1490 description:{@"Detected a case where an item is vending itself as a child item. For the love of all that is holy, please don't do this. Item: <%@:%p>", objc_opt_class(), v9}];
  }

  v19 = MEMORY[0x277D2C900];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v17];
  v21 = [v19 futureWithResult:v20];

  if ([v15 count])
  {
    NSStringFromSelector([v10 senderSelector]);
    v22 = v38 = a5;
    v40 = [@"itemManagerUpdate" stringByAppendingFormat:@"-%@-ChildItems-%p", v22, v9];

    v23 = [(HFItemManager *)self home];
    [v23 hf_characteristicValueManager];
    v24 = v41 = v16;
    [HFStaticReadPolicy policyWithDecision:0];
    v26 = v25 = v10;
    [v25 logger];
    v27 = v39 = v17;
    [v24 beginTransactionWithReason:v40 readPolicy:v26 logger:v27];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke;
    v44[3] = &unk_277DFBA88;
    v44[4] = self;
    v45 = v25;
    v46 = v38;
    v28 = [v15 na_map:v44];
    v29 = MEMORY[0x277D2C900];
    v30 = [v28 allObjects];
    v31 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v32 = [v29 combineAllFutures:v30 ignoringErrors:1 scheduler:v31];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke_2;
    v42[3] = &__block_descriptor_33_e27___NAFuture_16__0__NSArray_8l;
    v43 = v39;
    v33 = [v32 flatMap:v42];

    v34 = [(HFItemManager *)self home];
    v35 = [v34 hf_characteristicValueManager];
    [v35 commitTransactionWithReason:v40];

    v10 = v25;
    v16 = v41;

    v21 = v33;
  }

  return v21;
}

id __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = [a2 na_any:&__block_literal_global_369_0];
  }

  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

BOOL __74__HFItemManager__performUpdateForChildItemsOfItem_withContext_isInternal___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 outcomeType] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateRepresentationForInternalItemsWithUpdatedItems:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _internalItems];
  if ([v5 count] > 1)
  {

    goto LABEL_5;
  }

  v6 = [v4 count];

  if (v6 >= 2)
  {
LABEL_5:
    v7 = [(HFItemManager *)self _internalItems];
    NSLog(&cfstr_ReceivedUnexpe.isa, v7);
  }

  if ([v4 count])
  {
    v8 = [v4 anyObject];
    v9 = [(HFItemManager *)self sourceItem];

    if (v8 != v9)
    {
      v10 = [(HFItemManager *)self sourceItem];
      NSLog(&cfstr_UnknownSourceI.isa, v8, v10);
    }

    v11 = [(HFItemManager *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__HFItemManager__updateRepresentationForInternalItemsWithUpdatedItems___block_invoke;
      v17[3] = &unk_277DF3370;
      v17[4] = self;
      v18 = v8;
      [v13 performBlock:v17];
    }

    v14 = [(HFItemManager *)self _itemForSorting];
    if (v14)
    {
      v15 = [(HFItemManager *)self _internalItems];
      v16 = [v15 containsObject:v14];

      if ((v16 & 1) == 0)
      {
        NSLog(&cfstr_SortingItemIsN.isa, v14);
      }

      if ([v4 containsObject:v14])
      {
        [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
      }
    }
  }
}

void __71__HFItemManager__updateRepresentationForInternalItemsWithUpdatedItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 itemManager:*(a1 + 32) didUpdateResultsForSourceItem:*(a1 + 40)];
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HFItemManager *)self itemModules];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke;
  v13[3] = &unk_277DFBAF0;
  v7 = v4;
  v14 = v7;
  v8 = [v6 na_flatMap:v13];
  [v5 addObjectsFromArray:v8];

  if (![(HFItemManager *)self _isUsingOnlyItemModules])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_2;
    v12[3] = &unk_277DF4B70;
    v12[4] = self;
    v9 = [v7 na_filter:v12];
    v10 = [(HFItemManager *)self _legacy_buildSectionsWithDisplayedItems:v9];
    [v5 addObjectsFromArray:v10];
  }

  return v5;
}

uint64_t __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemModules];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
  v8[3] = &unk_277DFBB18;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6 ^ 1u;
}

uint64_t __50__HFItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_legacy_buildSectionsWithDisplayedItems:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HFItemManager *)self _willUpdateSections];
  v5 = [(HFItemManager *)self currentSectionIdentifiersSnapshot];
  v6 = [v5 count];
  if (!v6)
  {
    v6 = [(HFItemManager *)self _numberOfSections];
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (v5)
      {
        [v5 objectAtIndexedSubscript:i];
      }

      else
      {
        [(HFItemManager *)self _identifierForSection:i];
      }
      v9 = ;
      v10 = [(HFItemSection *)[HFMutableItemSection alloc] initWithIdentifier:v9];
      v11 = [(HFItemManager *)self _titleForSectionWithIdentifier:v9];
      [(HFItemSection *)v10 setHeaderTitle:v11];

      v12 = [(HFItemManager *)self _footerTitleForSectionWithIdentifier:v9];
      [(HFItemSection *)v10 setFooterTitle:v12];

      [v7 addObject:v10];
    }
  }

  v27 = v5;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * j);
        v20 = [(HFItemManager *)self _sectionIdentifierForItem:v19];
        v21 = [v13 na_objectForKey:v20 withDefaultValue:&__block_literal_global_385];
        [v21 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_2;
  v28[3] = &unk_277DFBB88;
  v22 = v26;
  v29 = v22;
  v30 = self;
  [v13 enumerateKeysAndObjectsUsingBlock:v28];
  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

void __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_3;
  v11[3] = &unk_277DFBB60;
  v12 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [v6 na_firstObjectPassingTest:v11];
  v10 = [*(a1 + 40) _sortedItems:v8 forSectionIdentifier:v7];

  [v9 setItems:v10];
}

uint64_t __57__HFItemManager__legacy_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_notifyDelegateOfChangesFromDiff:(id)a3 logger:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    v7 = [[HFUpdateLogger alloc] initWithTimeout:@"HFItemManager diff update" description:1.0];
  }

  v8 = [v10 groupOperations];
  [(HFItemManager *)self _notifyDelegateOfSectionOperations:v8 logger:v7];

  v9 = [v10 itemOperations];
  [(HFItemManager *)self _notifyDelegateOfItemOperations:v9 logger:v7];

  if (!v6)
  {
    [(HFUpdateLogger *)v7 finish];
  }
}

- (void)_notifyDelegateOfSectionOperations:(id)a3 logger:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    v11 = &dword_20D9BF000;
    v43 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        if (v7)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v14 = [v7 loggerActivity];
          os_activity_scope_enter(v14, &state);

          v15 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v13 operationDescription];
            *buf = 138412290;
            v49 = v16;
            _os_log_impl(v11, v15, OS_LOG_TYPE_DEFAULT, "Issuing section update: %@", buf, 0xCu);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v39 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v13 operationDescription];
            LODWORD(state.opaque[0]) = 138412290;
            *(state.opaque + 4) = v40;
            _os_log_impl(v11, v39, OS_LOG_TYPE_DEFAULT, "Issuing section update: %@", &state, 0xCu);
          }
        }

        v17 = [v13 type];
        if (v17 > 1)
        {
          if (v17 == 3)
          {
            v28 = [(HFItemManager *)self delegate];
            v29 = objc_opt_respondsToSelector();

            if ((v29 & 1) == 0)
            {
              goto LABEL_24;
            }

            v22 = [(HFItemManager *)self delegate];
            v30 = [v13 fromIndex];
            v31 = v9;
            v32 = v10;
            v33 = v6;
            v34 = v11;
            v35 = [v30 integerValue];
            v36 = [v13 toIndex];
            v37 = [v36 integerValue];
            v38 = v35;
            v11 = v34;
            v6 = v33;
            v10 = v32;
            v9 = v31;
            v7 = v43;
            [v22 itemManager:self didMoveSection:v38 toSection:v37];

            goto LABEL_23;
          }

          if (v17 == 2)
          {
            v24 = [(HFItemManager *)self delegate];
            v25 = objc_opt_respondsToSelector();

            if (v25)
            {
              v26 = MEMORY[0x277CCAA78];
              v27 = [v13 fromIndex];
              v22 = [v26 indexSetWithIndex:{objc_msgSend(v27, "unsignedIntegerValue")}];

              v23 = [(HFItemManager *)self delegate];
              [v23 itemManager:self didRemoveSections:v22];
LABEL_19:

LABEL_23:
            }
          }
        }

        else
        {
          if (!v17)
          {
            NSLog(&cfstr_SectionReloads.isa);
            goto LABEL_24;
          }

          if (v17 == 1)
          {
            v18 = [(HFItemManager *)self delegate];
            v19 = objc_opt_respondsToSelector();

            if (v19)
            {
              v20 = MEMORY[0x277CCAA78];
              v21 = [v13 toIndex];
              v22 = [v20 indexSetWithIndex:{objc_msgSend(v21, "unsignedIntegerValue")}];

              v23 = [(HFItemManager *)self delegate];
              [v23 itemManager:self didInsertSections:v22];
              goto LABEL_19;
            }
          }
        }

LABEL_24:
        ++v12;
      }

      while (v9 != v12);
      v41 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
      v9 = v41;
    }

    while (v41);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfItemOperations:(id)a3 logger:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      v33 = sel_itemManager_didRemoveItem_atIndexPath_;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        if (v7)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v13 = [v7 loggerActivity];
          os_activity_scope_enter(v13, &state);

          v14 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 operationDescription];
            *buf = 138412290;
            v39 = v15;
            _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Issuing item update: %@", buf, 0xCu);
          }

          os_activity_scope_leave(&state);
        }

        else
        {
          v29 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v12 operationDescription];
            LODWORD(state.opaque[0]) = 138412290;
            *(state.opaque + 4) = v30;
            _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "Issuing item update: %@", &state, 0xCu);
          }
        }

        v16 = [v12 type];
        if (v16 > 1)
        {
          if (v16 == 3)
          {
            v26 = [(HFItemManager *)self delegate];
            v27 = objc_opt_respondsToSelector();

            if ((v27 & 1) == 0)
            {
              goto LABEL_24;
            }

            v19 = [(HFItemManager *)self delegate];
            v20 = [v12 item];
            v21 = [v12 fromIndexPath];
            v28 = [v12 toIndexPath];
            [v19 itemManager:self didMoveItem:v20 fromIndexPath:v21 toIndexPath:v28];

            goto LABEL_23;
          }

          if (v16 == 2)
          {
            v22 = [(HFItemManager *)self delegate];
            v23 = objc_opt_respondsToSelector();

            if (v23)
            {
              v19 = [(HFItemManager *)self delegate];
              v20 = [v12 item];
              v21 = [v12 fromIndexPath];
              [v19 itemManager:self didRemoveItem:v20 atIndexPath:v21];
              goto LABEL_23;
            }
          }
        }

        else
        {
          if (!v16)
          {
            v24 = [(HFItemManager *)self delegate];
            v25 = objc_opt_respondsToSelector();

            if ((v25 & 1) == 0)
            {
              goto LABEL_24;
            }

            v19 = [(HFItemManager *)self delegate];
            v20 = [v12 item];
            v21 = [v12 toIndexPath];
            [v19 itemManager:self didUpdateResultsForItem:v20 atIndexPath:v21];
            goto LABEL_23;
          }

          if (v16 == 1)
          {
            v17 = [(HFItemManager *)self delegate];
            v18 = objc_opt_respondsToSelector();

            if (v18)
            {
              v19 = [(HFItemManager *)self delegate];
              v20 = [v12 item];
              v21 = [v12 toIndexPath];
              [v19 itemManager:self didInsertItem:v20 atIndexPath:v21];
LABEL_23:
            }
          }
        }

LABEL_24:
        ++v11;
      }

      while (v9 != v11);
      v31 = [v6 countByEnumeratingWithState:&v34 objects:v41 count:16];
      v9 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [v4 objectsPassingTest:&__block_literal_global_409];
  [v5 unionSet:v6];
  v7 = [(HFItemManager *)self _displayFilter];

  if (v7)
  {
    v8 = [(HFItemManager *)self _displayFilter];
    v9 = [v4 na_filter:v8];

    v10 = [v4 na_setByRemovingObjectsFromSet:v9];
    [v5 unionSet:v10];
  }

  v11 = [(HFItemManager *)self _itemsOfClass:objc_opt_class() inItems:v4 allowTransformedItems:1];
  v12 = objc_opt_class();
  v13 = [(HFItemManager *)self allItems];
  v14 = [(HFItemManager *)self _itemsOfClass:v12 inItems:v13 allowTransformedItems:1];

  if ([v11 count])
  {
    v15 = [(HFItemManager *)self _serviceItemsToHideInSet:v11 allServiceGroupItems:v14];
    if (v15)
    {
      [v5 unionSet:v15];
    }
  }

  v16 = [(HFItemManager *)self home];
  v17 = [v16 hf_currentUserIsAdministrator];

  if ((v17 & 1) == 0)
  {
    v18 = [v4 na_filter:&__block_literal_global_413_0];
    [v5 unionSet:v18];
  }

  v19 = [(HFItemManager *)self home];
  v20 = [v19 hf_currentUserIsOwner];

  if ((v20 & 1) == 0)
  {
    v21 = [v4 na_filter:&__block_literal_global_415_0];
    [v5 unionSet:v21];
  }

  v22 = [(HFItemManager *)self itemModules];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__HFItemManager__itemsToHideInSet___block_invoke_4;
  v28[3] = &unk_277DFBBD0;
  v29 = v4;
  v23 = v5;
  v30 = v23;
  v24 = v4;
  [v22 na_each:v28];

  v25 = v30;
  v26 = v23;

  return v23;
}

uint64_t __35__HFItemManager__itemsToHideInSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 latestResults];
  if (v3)
  {
    v4 = [v2 latestResults];
    v5 = [v4 objectForKeyedSubscript:@"hidden"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __35__HFItemManager__itemsToHideInSet___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"shouldHideForNonAdminUsers"];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t __35__HFItemManager__itemsToHideInSet___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"shouldHideForNotOwner"];
  v4 = [v3 BOOLValue];

  return v4;
}

void __35__HFItemManager__itemsToHideInSet___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 conformsToProtocol:&unk_2825BAF78])
  {
    v3 = v10;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 allItems];
    v7 = [v6 na_setByIntersectingWithSet:*(a1 + 32)];

    v8 = *(a1 + 40);
    v9 = [v5 _itemsToHideInSet:v7];
    [v8 unionSet:v9];
  }
}

- (id)_serviceItemsToHideInSet:(id)a3 allServiceGroupItems:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v25 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        objc_opt_class();
        v10 = [v9 homeKitObject];
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v13 = [(HFItemManager *)self home];
        v14 = [v13 hf_serviceGroupsForService:v12];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v28;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [(HFItemManager *)self _serviceGroupItemForServiceGroup:*(*(&v27 + 1) + 8 * j) inItems:v7];
              if (v20 && [(HFItemManager *)self _shouldHideServiceItem:v9 containedInServiceGroupItem:v20])
              {

                [v24 addObject:v9];
                goto LABEL_20;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v26);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)_shouldHideServiceItem:(id)a3 containedInServiceGroupItem:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = [v5 setWithObject:v6];
  v8 = [(HFItemManager *)self _itemsToHideInSet:v7];
  LOBYTE(self) = [v8 containsObject:v6];

  v9 = self ^ 1;
  return v9;
}

- (id)_allSuppressedCharacteristics
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HFItemManager *)self suppressedCharacteristicUpdatesByReason];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 unionSet:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_setDisplayFilter:(id)a3 recalculateVisibility:(BOOL)a4
{
  v4 = a4;
  v6 = _Block_copy(a3);
  displayFilter = self->__displayFilter;
  self->__displayFilter = v6;

  if (v4)
  {

    [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
  }
}

- (void)beginFirstFullUpdateWithTimeoutFutureIfNeeded
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(HFItemManager *)self hasBegunFirstFullUpdateFutureTimeout])
  {
    [(HFItemManager *)self setHasBegunFirstFullUpdateFutureTimeout:1];
    objc_initWeak(&location, self);
    v3 = [(HFItemManager *)self firstFullUpdateFuture];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke;
    v19[3] = &unk_277DFBBF8;
    objc_copyWeak(&v20, &location);
    v4 = [v3 addCompletionBlock:v19];

    v5 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_2;
    v17[3] = &unk_277DF4460;
    objc_copyWeak(&v18, &location);
    v6 = [v5 afterDelay:v17 performBlock:15.0];

    v7 = HFLogForCategory(0x35uLL);
    v8 = os_signpost_id_generate(v7);

    v9 = HFLogForCategory(0x35uLL);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = objc_opt_class();
      v12 = [(HFItemManager *)self identifier];
      *buf = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HFItemManagerFutures", "%@-%@: firstFullUpdateWithTimeoutFuture", buf, 0x16u);
    }

    v13 = [(HFItemManager *)self firstFullUpdateWithTimeoutFuture];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_420;
    v16[3] = &__block_descriptor_40_e28_v24__0__NSNull_8__NSError_16l;
    v16[4] = v8;
    v14 = [v13 addCompletionBlock:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained firstFullUpdateWithTimeoutFuture];
  v2 = [v1 isFinished];

  if ((v2 & 1) == 0)
  {
    v3 = [WeakRetained firstFullUpdateWithTimeoutFuture];
    [v3 finishWithNoResult];
  }
}

void __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained firstFullUpdateWithTimeoutFuture];
  v2 = [v1 isFinished];

  if ((v2 & 1) == 0)
  {
    v3 = [WeakRetained firstFullUpdateWithTimeoutFuture];
    [v3 cancel];
  }
}

void __62__HFItemManager_beginFirstFullUpdateWithTimeoutFutureIfNeeded__block_invoke_420(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x35uLL);
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = "failed";
    if (!v4)
    {
      v8 = "success";
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2082;
    v13 = v8;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v6, OS_SIGNPOST_INTERVAL_END, v7, "HFItemManagerFutures", "Finished with error: %@ (%{public}s)", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isUsingOnlyItemModules
{
  v3 = [(HFItemManager *)self subclassItemProviderSet];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HFItemManager *)self moduleItemProviderSet];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)_itemsOfClass:(Class)a3 inItems:(id)a4 allowTransformedItems:(BOOL)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v13 = [v12 sourceHomeKitItem];
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }
        }

        [v6 addObject:{v12, v17}];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_serviceGroupItemForServiceGroup:(id)a3 inItems:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 uniqueIdentifier];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(HFItemManager *)self _itemsOfClass:objc_opt_class() inItems:v6 allowTransformedItems:1, 0];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 homeKitObject];
        v14 = [v13 uniqueIdentifier];
        v15 = [v14 isEqual:v7];

        if (v15)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)_sectionForItem:(id)a3 assertOnNotFound:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(HFItemManager *)self sections];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __50__HFItemManager__sectionForItem_assertOnNotFound___block_invoke;
  v16 = &unk_277DFBC40;
  v9 = v7;
  v17 = v9;
  v10 = [v8 indexOfObjectPassingTest:&v13];

  if (v4 && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:1898 description:{@"Could not find section for item: %@", v9, v13, v14, v15, v16}];
  }

  return v10;
}

uint64_t __50__HFItemManager__sectionForItem_assertOnNotFound___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_itemsWithDependenciesPassingTest:(id)a3 forItems:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HFItemManager__itemsWithDependenciesPassingTest_forItems___block_invoke;
  v10[3] = &unk_277DFBC68;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a4 na_filter:v10];

  return v8;
}

BOOL __60__HFItemManager__itemsWithDependenciesPassingTest_forItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) childItemsForItem:v3];
    v6 = [*(a1 + 32) _itemsWithDependenciesPassingTest:*(a1 + 40) forItems:v5];
    v4 = [v6 count] != 0;
  }

  return v4;
}

- (id)_dependentHomeKitObjectsOfClass:(Class)a3 inHomeKitObjects:(id)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HFItemManager__dependentHomeKitObjectsOfClass_inHomeKitObjects___block_invoke;
  v6[3] = &__block_descriptor_40_e27_B16__0___HFHomeKitObject__8lu32l8;
  v6[4] = a3;
  v4 = [a4 na_filter:v6];

  return v4;
}

- (id)_itemsFilteredToExisting:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v6 = [v4 na_setByIntersectingWithSet:v5];

  return v6;
}

- (id)_directItemDependenciesForHomeKitObjects:(id)a3 class:(Class)a4
{
  v6 = a3;
  v11 = MEMORY[0x277D85DD0];
  v12 = v6;
  v13 = a4;
  v7 = v6;
  v8 = [(HFItemManager *)self _allItemsIncludingInternalItems:v11];
  v9 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&v11 forItems:v8];

  return v9;
}

uint64_t __64__HFItemManager__directItemDependenciesForHomeKitObjects_class___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v6 = [v5 intersectsSet:*(a1 + 32)];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v3 latestResults];
    v9 = [v8 objectForKeyedSubscript:@"dependentHomeKitClasses"];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(a1 + 40) isSubclassOfClass:*(*(&v16 + 1) + 8 * v13)])
          {
            v7 = 1;
            goto LABEL_13;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_itemsToUpdateForModifiedMetadataForHomes:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedActionSets:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_436];

  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedActions:v8];
  [v6 unionSet:v9];

  return v6;
}

- (id)_itemsToUpdateForModifiedActions:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedServiceGroups:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_441];

  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v8];
  [v6 unionSet:v9];

  v10 = [v8 na_map:&__block_literal_global_444];
  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v10];
  [v6 unionSet:v11];

  return v6;
}

id __56__HFItemManager__itemsToUpdateForModifiedServiceGroups___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 services];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedZones:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_448];

  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedRooms:v8];
  [v6 unionSet:v9];

  return v6;
}

id __48__HFItemManager__itemsToUpdateForModifiedZones___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 rooms];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedRooms:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_452];

  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v8];
  [v6 unionSet:v9];

  return v6;
}

id __48__HFItemManager__itemsToUpdateForModifiedRooms___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 accessories];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForOutgoingInvitation:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForIncomingInvitation:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedUsers:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedTriggers:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_459];
  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedActionSets:v8];
  [v6 unionSet:v9];

  v10 = [v4 na_map:&__block_literal_global_461];

  v11 = [v10 na_setByFlattening];

  v12 = [(HFItemManager *)self _itemsToUpdateForModifiedEvents:v11];
  [v6 unionSet:v12];

  return v6;
}

id __51__HFItemManager__itemsToUpdateForModifiedTriggers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 actionSets];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __51__HFItemManager__itemsToUpdateForModifiedTriggers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [v2 events];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_itemsToUpdateForModifiedEvents:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedAccessories:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_467];

  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedServices:v8];
  [v6 unionSet:v9];

  return v6;
}

id __54__HFItemManager__itemsToUpdateForModifiedAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 services];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedServices:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_469];
  v8 = [v7 na_setByFlattening];

  v9 = [(HFItemManager *)self _itemsToUpdateForModifiedCharacteristics:v8];
  [v6 unionSet:v9];

  v10 = [v4 na_map:&__block_literal_global_471_0];

  v11 = [(HFItemManager *)self _itemsToUpdateForModifiedServiceTypes:v10];
  [v6 unionSet:v11];

  return v6;
}

id __51__HFItemManager__itemsToUpdateForModifiedServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_itemsToUpdateForModifiedServiceTypes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 latestResults];
        v12 = [v11 objectForKeyedSubscript:@"dependentServiceTypes"];
        v13 = [v12 intersectsSet:v4];

        if (v13)
        {
          [v16 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_itemsToUpdateForModifiedCharacteristics:(id)a3 includeSuppressedCharacteristics:(BOOL)a4
{
  v6 = [a3 mutableCopy];
  if (!a4)
  {
    v7 = [(HFItemManager *)self _allSuppressedCharacteristics];
    [v6 minusSet:v7];
  }

  v8 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v6 class:objc_opt_class()];
  v9 = [v8 mutableCopy];

  return v9;
}

- (id)_itemsToUpdateForModifiedResidentDevices:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedCameras:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSignificantEvents:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSharingDevices:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForRemoteAccessChange
{
  v3 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v4 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&__block_literal_global_477 forItems:v3];

  return v4;
}

uint64_t __52__HFItemManager__itemsToUpdateForRemoteAccessChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"remoteAccessDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForCurrentHomeChange
{
  v3 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v4 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&__block_literal_global_479 forItems:v3];

  return v4;
}

uint64_t __51__HFItemManager__itemsToUpdateForCurrentHomeChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"currentHomeDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForAllowAccessWhileLockedSettingChange
{
  v2 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v3 = [v2 na_filter:&__block_literal_global_481];

  return v3;
}

uint64_t __69__HFItemManager__itemsToUpdateForAllowAccessWhileLockedSettingChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"accessWhileLockedSettingDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForMediaSessionChange:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v4];
  v6 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v5 class:objc_opt_class()];
  v7 = [v6 mutableCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(HFItemManager *)self home];
  v9 = [v8 hf_mediaAccessories];

  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 mediaProfile];
        v16 = [v15 mediaSession];

        if (v16 == v4)
        {
          v17 = [MEMORY[0x277CBEB98] setWithObject:v14];
          v18 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v17];
          [v7 unionSet:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [(HFItemManager *)self home];
  v20 = [v19 mediaSystems];

  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * j);
        v26 = [v25 mediaSession];

        if (v26 == v4)
        {
          v27 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v25];
          [v7 unionSet:v27];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v22);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_itemsToUpdateForMediaObjectChange:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  v6 = [MEMORY[0x277CBEB98] set];
  v7 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v6 class:objc_opt_class()];
  v8 = [v5 setByAddingObjectsFromSet:v7];

  return v8;
}

- (id)_itemsToUpdateForSiriEndpointProfileObjectChange:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForHomeKitSettingsChange:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForAccessorySettingChanges:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HFItemManager__itemsToUpdateForAccessorySettingChanges___block_invoke;
  v9[3] = &unk_277DFBD78;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v4 na_each:v9];

  v7 = v6;
  return v6;
}

void __58__HFItemManager__itemsToUpdateForAccessorySettingChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _itemsToUpdateForAccessorySettingChange:a2];
  [v2 unionSet:v3];
}

- (id)_itemsToUpdateForAccessorySettingChange:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSoftwareUpdateControllers:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedSoftwareUpdates:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForSoftwareUpdateV2ChangeToAccessory:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v4];
  v6 = [v5 na_filter:&__block_literal_global_492_0];

  return v6;
}

uint64_t __68__HFItemManager__itemsToUpdateForSoftwareUpdateV2ChangeToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] na_setWithSafeObject:a3];
  v5 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v4];
  v6 = [v5 na_filter:&__block_literal_global_494_0];

  return v6;
}

uint64_t __76__HFItemManager__itemsToUpdateForSoftwareUpdateV2ProgressChangeToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"hasSoftwareUpdateProgressV2Dependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_itemsToUpdateForModifiedNetworkConfigurationProfiles:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForModifiedNetworkProtectionGroups:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  return v5;
}

- (id)_itemsToUpdateForTelevisionProfiles:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HFItemManager__itemsToUpdateForTelevisionProfiles___block_invoke;
  v10[3] = &unk_277DFBDA0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v4 na_each:v10];

  v8 = v7;
  return v7;
}

void __53__HFItemManager__itemsToUpdateForTelevisionProfiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CBEB98];
  v7 = [a2 accessory];
  v5 = [v4 na_setWithSafeObject:v7];
  v6 = [v3 _itemsToUpdateForModifiedAccessories:v5];
  [v2 unionSet:v6];
}

- (id)_itemsToUpdateForLightProfiles:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedWalletKeyDeviceState:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedAccessCodes:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedMetadataForMediaDestinationController:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];

  v6 = [v5 na_filter:&__block_literal_global_504];

  return v6;
}

BOOL __80__HFItemManager__itemsToUpdateForModifiedMetadataForMediaDestinationController___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKey:@"mediaDestinationIdentifier"];
  v4 = v3 != 0;

  return v4;
}

- (id)_itemsToUpdateForModifiedPersonManagers:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedHomePersonManagerSettings:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  return v6;
}

- (id)_itemsToUpdateForModifiedPersons:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v4 class:objc_opt_class()];
  v6 = [v5 mutableCopy];

  v7 = [v4 na_map:&__block_literal_global_510];

  v8 = [(HFItemManager *)self _itemsToUpdateForModifiedUUIDs:v7];
  [v6 unionSet:v8];

  return v6;
}

- (id)_itemsToUpdateForModifiedUUIDs:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HFItemManager__itemsToUpdateForModifiedUUIDs___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = v4;
  v5 = v4;
  v6 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v7 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:v9 forItems:v6];

  return v7;
}

uint64_t __48__HFItemManager__itemsToUpdateForModifiedUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"dependentHomeKitObjects"];

  v5 = [v4 na_map:&__block_literal_global_513];
  v6 = [*(a1 + 32) intersectsSet:v5];

  return v6;
}

id __48__HFItemManager__itemsToUpdateForModifiedUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = v2;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v2 = [v5 hf_linkedAccessory];
  }

  v6 = [v2 conformsToProtocol:&unk_282541CB0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((v6 & 1) != 0 || (isKindOfClass) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [v2 uniqueIdentifier];
  }

  else
  {
    NSLog(&cfstr_ObjectIsListed.isa, v2);
    v8 = 0;
  }

  return v8;
}

- (id)_invalidationReasonsForAddedOrRemovedAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = @"accessory";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v14 count:1];
  v7 = [v5 room];

  v8 = [(HFItemManager *)self home];
  v9 = [v8 roomForEntireHome];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [v6 arrayByAddingObject:@"room"];

    v6 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_invalidationReasonsForAddedOrRemovedMediaSystem:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = @"mediaSystem";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v14 count:1];
  v7 = [v5 hf_parentRoom];

  v8 = [(HFItemManager *)self home];
  v9 = [v8 roomForEntireHome];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = [v6 arrayByAddingObject:@"room"];

    v6 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_itemsToUpdateForMediaSystemChange:(id)a3
{
  v4 = a3;
  v5 = [v4 accessories];
  v6 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v5];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v4];

  v8 = [(HFItemManager *)self _directItemDependenciesForHomeKitObjects:v7 class:objc_opt_class()];
  v9 = [v6 setByAddingObjectsFromSet:v8];

  return v9;
}

- (id)_itemsToUpdateForMediaProfileContainer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HFItemManager *)self _itemsToUpdateForMediaSystemChange:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 accessories];
      v7 = [(HFItemManager *)self _itemsToUpdateForModifiedAccessories:v6];

      goto LABEL_7;
    }

    NSLog(&cfstr_Mediaprofileco_1.isa, v4);
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (id)_itemsToUpdateForHomeKitKeyPaths:(id)a3 forHomeKitObjectIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = MEMORY[0x277D85DD0];
  v14 = v7;
  v15 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [(HFItemManager *)self _allItemsIncludingInternalItems:v13];
  v11 = [(HFItemManager *)self _itemsWithDependenciesPassingTest:&v13 forItems:v10];

  return v11;
}

uint64_t __78__HFItemManager__itemsToUpdateForHomeKitKeyPaths_forHomeKitObjectIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];
  v6 = [v5 intersectsSet:*(a1 + 32)];

  if (v6)
  {
    objc_opt_class();
    v7 = [v3 latestResults];
    v8 = [v7 objectForKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [*(a1 + 40) intersectsSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_allDisplayedItemsIncludingInternalItems
{
  v3 = [(HFItemManager *)self allDisplayedItems];
  v4 = [(HFItemManager *)self _internalItems];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)_indexPathForItem:(id)a3 inDisplayedItemsArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (v8 = -[HFItemManager _sectionForItem:](self, "_sectionForItem:", v6), v9 = [v7 indexOfObjectIdenticalTo:v6], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __66__HFItemManager_temperatureUnitObserver_didChangeTemperatureUnit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"tempreatureUnitDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)settingsInvalidatedForNotificationCenter:(id)a3
{
  v5 = [(HFItemManager *)self _allItemsIncludingInternalItems];
  v7 = [v5 na_filter:&__block_literal_global_532];

  v6 = [(HFItemManager *)self updateResultsForItems:v7 senderSelector:a2];
}

uint64_t __58__HFItemManager_settingsInvalidatedForNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"userNotificationSettingsDependency"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_debug_itemManagerDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFItemManager *)self delegate];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(HFItemManager *)self delegate];
  v10 = [(HFItemManager *)self home];
  v11 = [v10 hf_prettyDescription];
  v12 = [(HFItemManager *)self disableUpdateReasons];
  v13 = [v3 stringWithFormat:@"<%@:%p> delegate: <%@:%p> home: %@ disableUpdateReasons: {%@}", v5, self, v8, v9, v11, v12];

  return v13;
}

- (unint64_t)numberOfSections
{
  v2 = [(HFItemManager *)self diffableDataSource];
  v3 = [v2 snapshot];
  v4 = [v3 numberOfSections];

  return v4;
}

- (id)titleForSection:(unint64_t)a3
{
  v4 = [(HFItemManager *)self diffableDataSource];
  v5 = [v4 snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 headerTitle];

  return v8;
}

- (id)attributedTitleForSection:(unint64_t)a3
{
  v4 = [(HFItemManager *)self diffableDataSource];
  v5 = [v4 snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 attributedHeaderTitle];

  return v8;
}

- (id)footerTitleForSection:(unint64_t)a3
{
  v4 = [(HFItemManager *)self diffableDataSource];
  v5 = [v4 snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 footerTitle];

  return v8;
}

- (id)attributedFooterTitleForSection:(unint64_t)a3
{
  v4 = [(HFItemManager *)self diffableDataSource];
  v5 = [v4 snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 attributedFooterTitle];

  return v8;
}

- (id)displayedItemsInSection:(unint64_t)a3
{
  v5 = [(HFItemManager *)self diffableDataSource];
  v6 = [v5 snapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = [(HFItemManager *)self diffableDataSource];
    v10 = [v9 snapshot];
    v11 = [v10 sectionIdentifiers];
    v12 = [v11 objectAtIndexedSubscript:a3];

    v13 = [(HFItemManager *)self diffableDataSource];
    v14 = [v13 snapshot];
    v15 = [v14 itemIdentifiersInSectionWithIdentifier:v12];
  }

  return v15;
}

- (id)displayedItemAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HFItemManager.m" lineNumber:2524 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v6 = [(HFItemManager *)self diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  return v7;
}

- (unint64_t)sectionIndexForDisplayedSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self diffableDataSource];
  v6 = [v5 snapshot];
  v7 = [v6 sectionIdentifiers];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HFItemManager_sectionIndexForDisplayedSectionIdentifier___block_invoke;
  v11[3] = &unk_277DFBC40;
  v12 = v4;
  v8 = v4;
  v9 = [v7 indexOfObjectPassingTest:v11];

  return v9;
}

uint64_t __59__HFItemManager_sectionIndexForDisplayedSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)displayedSectionIdentifierForSectionIndex:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(HFItemManager *)self diffableDataSource];
  v6 = [v5 snapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v14 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [(HFItemManager *)self diffableDataSource];
      v18 = [v17 snapshot];
      v19 = 136315650;
      v20 = "[HFItemManager displayedSectionIdentifierForSectionIndex:]";
      v21 = 2112;
      v22 = v18;
      v23 = 2048;
      v24 = a3;
      _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "(%s) self.diffableDataSource.snapshot = %@. sectionIndex = %lu", &v19, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    v9 = [(HFItemManager *)self diffableDataSource];
    v10 = [v9 snapshot];
    v11 = [v10 sectionIdentifiers];
    v12 = [v11 objectAtIndexedSubscript:a3];
    v13 = [v12 identifier];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)indexPathForItem:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self diffableDataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  return v6;
}

- (NSSet)allDisplayedItems
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFItemManager *)self diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (id)itemSectionForSectionIndex:(unint64_t)a3
{
  v4 = [(HFItemManager *)self diffableDataSource];
  v5 = [v4 snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a3];

  return v7;
}

- (void)setDiffableDataSource:(id)a3
{
  v6 = a3;
  if (([(HFDiffableDataSource *)self->_diffableDataSource isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_diffableDataSource, a3);
    v5 = [(HFItemManager *)self UIDiffableDataInitializationFuture];
    [v5 finishWithNoResult];
  }
}

- (void)setUpCustomDiffableDataSource
{
  v3 = [(HFItemManager *)self diffableDataSource];

  if (v3)
  {
    return;
  }

  if (![(HFItemManager *)self useCustomDiffableDataSource])
  {
    v4 = [(HFItemManager *)self delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v5 = [(HFItemManager *)self delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        diffableDataSourceDisabled = 1;
        goto LABEL_8;
      }
    }

    diffableDataSourceDisabled = self->_diffableDataSourceDisabled;
LABEL_8:
    [(HFItemManager *)self setUseCustomDiffableDataSource:diffableDataSourceDisabled];
  }

  if ([(HFItemManager *)self useCustomDiffableDataSource])
  {
    v8 = objc_alloc_init(HFCustomDiffableDataSource);
    diffableDataSource = self->_diffableDataSource;
    self->_diffableDataSource = v8;
  }
}

- (void)recalculateVisibilityAndSortAllItems
{
  v4 = [MEMORY[0x277CBEB98] set];
  v3 = [MEMORY[0x277CBEB98] set];
  [(HFItemManager *)self _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v4 removedItems:v3 logger:0];
}

- (void)_batchItemUpdateFutureWrappers:(id)a3 removedItems:(id)a4 batchingIntervals:(id)a5 logger:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v12 count])
  {
    NSLog(&cfstr_NoBatchingInte.isa);
  }

  if ([v12 count] && (objc_msgSend(v10, "count") || objc_msgSend(v11, "count")))
  {
    if (v13)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v14 = [v13 loggerActivity];
      os_activity_scope_enter(v14, &state);

      v15 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v10 count];
        v17 = [v11 count];
        v18 = [v12 firstObject];
        [v18 floatValue];
        *buf = 67109632;
        *&buf[4] = v16;
        LOWORD(v55) = 1024;
        *(&v55 + 2) = v17;
        HIWORD(v55) = 2048;
        *&v56 = v19;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Requested batched update for %d items (+%d removed). Processing in: %.2f sec...", buf, 0x18u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v35 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v10 count];
        v37 = [v11 count];
        v38 = [v12 firstObject];
        [v38 floatValue];
        *buf = 67109632;
        *&buf[4] = v36;
        LOWORD(v55) = 1024;
        *(&v55 + 2) = v37;
        HIWORD(v55) = 2048;
        *&v56 = v39;
        _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "Requested batched update for %d items (+%d removed). Processing in: %.2f sec...", buf, 0x18u);
      }
    }

    objc_initWeak(&state, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke;
    aBlock[3] = &unk_277DFBDF0;
    objc_copyWeak(&v52, &state);
    v20 = v10;
    v48 = v20;
    v49 = v11;
    v50 = v13;
    v21 = v12;
    v51 = v21;
    v22 = _Block_copy(aBlock);
    [(HFItemManager *)self setUpCustomDiffableDataSource];
    v23 = [MEMORY[0x277D2C938] mainThreadScheduler];
    *buf = 0;
    v55 = buf;
    v56 = 0x2020000000;
    v57 = 0;
    v24 = [v21 firstObject];
    [v24 doubleValue];
    v26 = v25;

    if (v26 >= 0.00000011920929)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_2;
      v44[3] = &unk_277DFBE18;
      v46 = buf;
      v45 = v22;
      v27 = [v23 afterDelay:v44 performBlock:v26];
    }

    else
    {
      v55[24] = 1;
      v22[2](v22);
      v27 = 0;
    }

    v28 = MEMORY[0x277D2C900];
    v29 = [_HFItemUpdateFutureWrapper futuresFromWrappers:v20];
    v30 = [v28 combineAllFutures:v29 ignoringErrors:1 scheduler:v23];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_3;
    v40[3] = &unk_277DFBE40;
    v43 = buf;
    v31 = v27;
    v41 = v31;
    v32 = v22;
    v42 = v32;
    v33 = [v30 addCompletionBlock:v40];

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&state);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained _processBatchUpdateForFutureWrappers:*(a1 + 32) removedItems:*(a1 + 40) logger:*(a1 + 48)];
  v3 = [*(a1 + 56) mutableCopy];
  if ([v3 count] >= 2)
  {
    [v3 removeObjectAtIndex:0];
  }

  v4 = [MEMORY[0x277CBEB98] set];
  [WeakRetained _batchItemUpdateFutureWrappers:v2 removedItems:v4 batchingIntervals:v3 logger:*(a1 + 48)];
}

uint64_t __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __86__HFItemManager__batchItemUpdateFutureWrappers_removedItems_batchingIntervals_logger___block_invoke_3(uint64_t result)
{
  v2 = *(*(result + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    [*(result + 32) cancel];
    v4 = *(*(v3 + 40) + 16);

    return v4();
  }

  return result;
}

- (id)_processBatchUpdateForFutureWrappers:(id)a3 removedItems:(id)a4 logger:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a4;
  v35 = a5;
  v8 = [v7 mutableCopy];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v38 = [MEMORY[0x277CBEB58] set];
  v37 = [MEMORY[0x277CBEB58] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = [v16 future];
        v18 = [v17 isFinished];

        if (v18)
        {
          v19 = [v16 isInternal] ? v9 : v10;
          v20 = [v16 item];
          [v19 addObject:v20];

          [v8 removeObject:v16];
          v21 = [v16 outcome];
          v22 = [v21 outcomeType];

          if (v22 == 2)
          {
            if ([v16 isInternal])
            {
              v23 = v37;
            }

            else
            {
              v23 = v38;
            }

            v24 = [v16 item];
            [v23 addObject:v24];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v13);
  }

  if ([v9 count])
  {
    [(HFItemManager *)self _updateRepresentationForInternalItemsWithUpdatedItems:v37];
  }

  if ([v10 count] || objc_msgSend(v36, "count"))
  {
    [(HFItemManager *)self _updateRepresentationForExternalItemsWithUpdatedOrAddedItems:v38 removedItems:v36 logger:v35];
  }

  if (v35)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v25 = [v35 loggerActivity];
    os_activity_scope_enter(v25, &state);

    v26 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v9 count];
      v28 = [v10 count];
      *buf = 67109120;
      v44 = v28 + v27;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "Processed batch with %d finished items", buf, 8u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v31 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v9 count];
      v33 = [v10 count];
      LODWORD(state.opaque[0]) = 67109120;
      HIDWORD(state.opaque[0]) = v33 + v32;
      _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "Processed batch with %d finished items", &state, 8u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_updateExternalUpdatesEnabled:(BOOL)a3 reloadItems:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v21 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v8 = [(HFItemManager *)self UIDiffableDataInitializationFuture];
    v9 = [v8 isFinished];

    if ((v9 & 1) == 0)
    {
      objc_initWeak(location, self);
      v10 = [(HFItemManager *)self UIDiffableDataInitializationFuture];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__HFItemManager__updateExternalUpdatesEnabled_reloadItems___block_invoke;
      v16[3] = &unk_277DFBE68;
      objc_copyWeak(&v17, location);
      v11 = [v10 addCompletionBlock:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }
  }

  v12 = HFLogForCategory(0x2CuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "Disabling";
    if (v5)
    {
      v13 = "Enabling";
    }

    *location = 138412546;
    *&location[4] = self;
    v19 = 2080;
    v20 = v13;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@: %s updates", location, 0x16u);
  }

  if (v5)
  {
    [(HFItemManager *)self _registerForExternalUpdates];
    if (v4)
    {
      v14 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
    }
  }

  else
  {
    [(HFItemManager *)self _unregisterForExternalUpdates];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__HFItemManager__updateExternalUpdatesEnabled_reloadItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained recalculateVisibilityAndSortAllItems];
}

- (void)_updateRepresentationForExternalItemsWithUpdatedOrAddedItems:(id)a3 removedItems:(id)a4 logger:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  [(HFItemManager *)self setUpCustomDiffableDataSource];
  v10 = [(HFItemManager *)self firstFastUpdateFuture];
  v11 = [v10 isFinished];

  if ((v11 & 1) == 0)
  {
    [(HFItemManager *)self _prefetchResourcesIfNeededForItems:v19];
  }

  if ([(HFItemManager *)self useCustomDiffableDataSource])
  {
    [(HFItemManager *)self _updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:v19 removedItems:v8 logger:v9];
    v12 = MEMORY[0x277D2C900];
    v13 = MEMORY[0x277CBEB98];
    v14 = [(HFItemManager *)self diffableDataSource];
    v15 = [v14 snapshot];
    v16 = [v15 itemIdentifiers];
    v17 = [v13 setWithArray:v16];
    v18 = [v12 futureWithResult:v17];
    [(HFItemManager *)self setLatestSnapshotGenerationFuture:v18];
  }

  else
  {
    v14 = [(HFItemManager *)self _updateRepresentationWithUIDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:v19 removedItems:v8 logger:v9];
    [(HFItemManager *)self setLatestSnapshotGenerationFuture:v14];
  }
}

- (void)_updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems:(id)a3 removedItems:(id)a4 logger:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = [(HFItemManager *)self allItems];
  if ([v9 count])
  {
    v10 = [(HFItemManager *)self _itemsToHideInSet:v9];
    v11 = [v9 na_setByRemovingObjectsFromSet:v10];

    v9 = v11;
  }

  v12 = [(HFItemManager *)self sections];

  v13 = [(HFItemManager *)self sections];
  v14 = [v13 copy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
    v16 = [(HFItemManager *)self _buildSectionsWithDisplayedItems:v17];
  }

  v18 = [(HFItemManager *)self _buildSectionsWithDisplayedItems:v9];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke;
  v47[3] = &unk_277DFBE90;
  v39 = v7;
  v40 = v16;
  v48 = v39;
  v19 = [HFGroupedItemDiff diffFromGroups:v16 toGroups:v18 changeTest:v47];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke_2;
  aBlock[3] = &unk_277DF3370;
  aBlock[4] = self;
  v20 = v18;
  v46 = v20;
  v21 = _Block_copy(aBlock);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke_3;
  v42[3] = &unk_277DF32A8;
  v42[4] = self;
  v22 = v19;
  v43 = v22;
  v23 = v8;
  v44 = v23;
  v24 = _Block_copy(v42);
  v25 = [v22 allOperations];
  v26 = [v25 count];

  if (v26)
  {
    if (v23)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v27 = [v23 loggerActivity];
      os_activity_scope_enter(v27, &state);

      v28 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v22;
        v53 = 1024;
        v54 = v12 == 0;
        _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "%@ processing item diff %@ (initial update: %d)", buf, 0x1Cu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v37 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v22;
        v53 = 1024;
        v54 = v12 == 0;
        _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "%@ processing item diff %@ (initial update: %d)", buf, 0x1Cu);
      }
    }

    v29 = [[HFItemManagerDelegateUpdateRequest alloc] initWithChanges:v22 isInitialUpdate:v12 == 0 applyChangesBlock:v21 issueDelegateMessagesBlock:v24];
    v30 = [(HFItemManager *)self delegate];
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v32 = [(HFItemManager *)self delegate];
      [v32 itemManager:self performUpdateRequest:v29];

      if (![(HFItemManagerDelegateUpdateRequest *)v29 debug_wasPerformed])
      {
        v33 = [(HFItemManager *)self delegate];
        NSLog(&cfstr_TheHfitemmanag.isa, self, v33);
      }
    }

    else
    {
      [(HFItemManagerDelegateUpdateRequest *)v29 performWithOptions:0];
    }
  }

  else
  {
    if (v23)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v34 = [v23 loggerActivity];
      os_activity_scope_enter(v34, &state);

      v35 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v50 = self;
        v51 = 1024;
        LODWORD(v52) = v12 == 0;
        _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "%@ processed item diff, but there are no changes (initial update: %d)", buf, 0x12u);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v38 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v50 = self;
        v51 = 1024;
        LODWORD(v52) = v12 == 0;
        _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEFAULT, "%@ processed item diff, but there are no changes (initial update: %d)", buf, 0x12u);
      }
    }

    v21[2](v21);
  }

  [(HFItemManager *)self _updateOverallLoadingStateAndNotifyDelegate];

  v36 = *MEMORY[0x277D85DE8];
}

void __126__HFItemManager__updateRepresentationWithCustomDiffableDataSourceForExternalItemsWithUpdatedOrAddedItems_removedItems_logger___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSections:*(a1 + 40)];
  objc_opt_class();
  v2 = [*(a1 + 32) diffableDataSource];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 setSections:*(a1 + 40)];
}

- (HFItemManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)moveItemFromIndexPath:(id)a3 toIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 section];
  if (v8 == [v7 section])
  {
    v9 = [(HFItemManager *)self displayedItemAtIndexPath:v6];
    v10 = [(HFItemManager *)self displayedItemAtIndexPath:v7];
    v11 = [v6 section];
    v12 = [(HFItemManager *)self diffableDataSource];
    v13 = [v12 snapshot];

    v14 = [v6 row];
    if (v14 < [v7 row])
    {
      [v13 moveItemWithIdentifier:v9 afterItemWithIdentifier:v10];
    }

    v15 = [v6 row];
    if (v15 > [v7 row])
    {
      [v13 moveItemWithIdentifier:v9 beforeItemWithIdentifier:v10];
    }

    v16 = MEMORY[0x277D2C900];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HFItemManager_DiffableDataSource__moveItemFromIndexPath_toIndexPath___block_invoke;
    v20[3] = &unk_277DF2770;
    v21 = v13;
    v22 = v11;
    v17 = v13;
    v18 = [v16 futureWithBlock:v20];
  }

  else
  {
    v18 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v18;
}

void __71__HFItemManager_DiffableDataSource__moveItemFromIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sectionIdentifiers];
  v7 = [v5 objectAtIndexedSubscript:*(a1 + 40)];

  v6 = [*(a1 + 32) itemIdentifiersInSectionWithIdentifier:v7];
  [v4 finishWithResult:v6];
}

- (void)_applyReloadSnapshot:(id)a3 withAnimation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke;
  aBlock[3] = &unk_277DF3370;
  aBlock[4] = self;
  v7 = v6;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v4)
  {
    v8[2](v8);
  }

  else
  {
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_4;
    v11[3] = &unk_277DFF168;
    v12 = v8;
    [v10 performWithoutAnimation:v11];
  }
}

void __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_2;
  v3[3] = &unk_277DFA878;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 applyWithBlock:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [WeakRetained diffableDataSource];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFItemManager_DiffableDataSource___applyReloadSnapshot_withAnimation___block_invoke_3;
  v8[3] = &unk_277DF3D38;
  v6 = v3;
  v9 = v6;
  [v4 applySnapshot:v5 animatingDifferences:1 completion:v8];

  return v6;
}

- (id)diffableDataItemManagerDelegate
{
  v3 = [(HFItemManager *)self delegate];
  v4 = [v3 conformsToProtocol:&unk_2825BB230];

  if (v4)
  {
    v5 = [(HFItemManager *)self delegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)applySnapshotForUpdatedExternalItems:(id)a3 removedItems:(id)a4 logger:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HFItemManager *)self diffableDataSource];

  if (v11 && ![(HFItemManager *)self isApplyingSnapshot])
  {
    v15 = HFLogForCategory(0x35uLL);
    v16 = os_signpost_id_generate(v15);

    v17 = HFLogForCategory(0x35uLL);
    v18 = v17;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v19 = [(HFItemManager *)self identifier];
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [v10 clientDescription];
      *buf = 138543874;
      v44 = v19;
      v45 = 2114;
      v46 = v20;
      v47 = 2114;
      v48 = v22;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "HFItemManagerSnapshotApply", "%{public}@:%{public}@ | %{public}@", buf, 0x20u);
    }

    v23 = objc_alloc_init(MEMORY[0x277D2C900]);
    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    v25 = [(HFItemManager *)self generateSnapshotInfo];
    v26 = [v25 baseSnapshot];
    objc_initWeak(buf, self);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke;
    v34[3] = &unk_277E00C48;
    objc_copyWeak(v42, buf);
    v27 = v26;
    v35 = v27;
    v36 = v8;
    v28 = v25;
    v37 = v28;
    v38 = v9;
    v42[1] = v16;
    v39 = v10;
    v29 = v23;
    v40 = v29;
    v30 = v24;
    v41 = v30;
    [(HFItemManager *)self applyWithBlock:v34];
    v31 = v41;
    v14 = v29;

    objc_destroyWeak(v42);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v13 = objc_alloc_init(MEMORY[0x277CFB890]);
    v14 = [v12 futureWithResult:v13];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v14;
}

id __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v3 = [WeakRetained diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 numberOfItems];

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [a1[4] itemIdentifiers];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_2;
  v54[3] = &unk_277E00BA8;
  v54[4] = WeakRetained;
  v55 = a1[5];
  v9 = v6;
  v56 = v9;
  v10 = v7;
  v57 = v10;
  [v8 na_each:v54];

  v11 = [a1[6] sectionSnapshots];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_3;
  v50[3] = &unk_277E00BD0;
  v50[4] = WeakRetained;
  v51 = a1[5];
  v12 = v9;
  v52 = v12;
  v13 = v10;
  v53 = v13;
  [v11 na_each:v50];

  v14 = [WeakRetained diffableDataItemManagerDelegate];
  [v14 diffableDataItemManager:WeakRetained willUpdateItems:v12 addItems:v13 removeItems:a1[7] isInitialLoad:v5 == 0];

  v15 = [v12 count] || objc_msgSend(v13, "count") || objc_msgSend(a1[7], "count") != 0;
  v16 = [WeakRetained diffableDataItemManagerDelegate];
  if ([v16 shouldPerformUpdateWithAnimationForDiffableDataItemManager:WeakRetained])
  {
    v17 = (v5 != 0) & v15;
  }

  else
  {
    v17 = 0;
  }

  [WeakRetained setIsApplyingSnapshot:1];
  v18 = objc_opt_new();
  v19 = objc_alloc_init(MEMORY[0x277D2C900]);
  [v18 addObject:v19];
  v20 = [WeakRetained diffableDataSource];
  v21 = a1[4];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_5;
  v48[3] = &unk_277DF3D38;
  v22 = v19;
  v49 = v22;
  [v20 applySnapshot:v21 animatingDifferences:v17 completion:v48];

  v23 = [a1[6] sectionSnapshots];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_6;
  v44[3] = &unk_277E00BF8;
  v24 = v18;
  v45 = v24;
  v46 = WeakRetained;
  v47 = v17;
  [v23 na_each:v44];

  v25 = [MEMORY[0x277D2C900] chainFutures:v24];
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_8;
  v35 = &unk_277E00C20;
  objc_copyWeak(v43, a1 + 11);
  v43[1] = a1[12];
  v36 = a1[8];
  v37 = a1[9];
  v38 = a1[4];
  v26 = v12;
  v39 = v26;
  v27 = v13;
  v40 = v27;
  v41 = a1[7];
  v42 = a1[10];
  v28 = [v25 addCompletionBlock:&v32];

  [WeakRetained setIsApplyingSnapshot:{0, v32, v33, v34, v35}];
  v29 = a1[10];
  v30 = v29;

  objc_destroyWeak(v43);
  return v29;
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    if (![*(a1 + 40) containsObject:v9])
    {
      goto LABEL_6;
    }

    v7 = v9;
    v8 = 48;
  }

  else
  {
    v7 = v9;
    v8 = 56;
  }

  [*(a1 + v8) addObject:v7];
LABEL_6:
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_4;
  v10[3] = &unk_277E00BA8;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 na_each:v10];
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) diffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v6 = [v5 containsObject:v9];

  if (v6)
  {
    if (![*(a1 + 40) containsObject:v9])
    {
      goto LABEL_6;
    }

    v7 = v9;
    v8 = 48;
  }

  else
  {
    v7 = v9;
    v8 = 56;
  }

  [*(a1 + v8) addObject:v7];
LABEL_6:
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D2C900];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  [*(a1 + 32) addObject:v8];
  v9 = [*(a1 + 40) diffableDataSource];
  v10 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_7;
  v12[3] = &unk_277DF3D38;
  v13 = v8;
  v11 = v8;
  [v9 applySnapshot:v6 toSection:v7 animatingDifferences:v10 completion:v12];
}

void __94__HFItemManager_DiffableDataSource__applySnapshotForUpdatedExternalItems_removedItems_logger___block_invoke_8(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = HFLogForCategory(0x35uLL);
  v4 = v3;
  v5 = *(a1 + 96);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = [WeakRetained identifier];
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 clientDescription];
    v13 = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v4, OS_SIGNPOST_INTERVAL_END, v5, "HFItemManagerSnapshotApply", "%{public}@:%{public}@ | %{public}@", &v13, 0x20u);
  }

  [*(a1 + 40) finishWithResult:*(a1 + 48)];
  v11 = [WeakRetained diffableDataItemManagerDelegate];
  [v11 diffableDataItemManager:WeakRetained didUpdateItems:*(a1 + 56) addItems:*(a1 + 64) removeItems:*(a1 + 72)];

  [WeakRetained _updateOverallLoadingStateAndNotifyDelegate];
  [*(a1 + 80) finishWithNoResult];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)generateSnapshotInfo
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HFItemManager *)self allItems];
  v28 = [(HFItemManager *)self _itemsToHideInSet:v3];
  v4 = [v3 hmf_removedObjectsFromSet:?];

  v27 = v4;
  v5 = [(HFItemManager *)self _buildSectionsWithDisplayedItems:v4];
  v6 = objc_alloc_init(MEMORY[0x277CFB890]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __57__HFItemManager_DiffableDataSource__generateSnapshotInfo__block_invoke;
  v33[3] = &unk_277E00C70;
  v7 = v6;
  v34 = v7;
  [v5 na_each:v33];
  v25 = v7;
  v8 = [[HFSnapshotInfo alloc] initWithSnapshot:v7];
  v26 = v5;
  v9 = [(HFItemManager *)self _generateParentChildMappingForSections:v5];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(HFSnapshotInfo *)v8 setSectionSnapshots:v10];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:v16];
        if ([v17 count])
        {
          v18 = [v16 items];
          v19 = [v18 firstObject];

          if (v19)
          {
            v20 = objc_alloc_init(MEMORY[0x277D75070]);
            v35 = v19;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
            [v20 appendItems:v21];

            [v20 appendItems:v17 intoParentItem:v19];
            v22 = [(HFSnapshotInfo *)v8 sectionSnapshots];
            [v22 setObject:v20 forKeyedSubscript:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

void __57__HFItemManager_DiffableDataSource__generateSnapshotInfo__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  [v3 appendSectionsWithIdentifiers:{v6, v10, v11}];

  v7 = *(a1 + 32);
  v8 = [v5 items];
  [v7 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_prefetchResourcesIfNeededForItems:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManager *)self allItems];
  v10 = [v5 setByAddingObjectsFromSet:v4];

  if ([v10 count])
  {
    v6 = [(HFItemManager *)self _itemsToHideInSet:v10];
    v7 = [v10 hmf_removedObjectsFromSet:v6];

    v8 = [(HFItemManager *)self diffableDataItemManagerDelegate];
    [v8 diffableDataItemManager:self prefetchResourcesForItems:v7];

    v9 = v7;
  }

  else
  {
    v9 = v10;
  }
}

- (BOOL)_shouldPerformUpdateOnMainThread
{
  v3 = [(HFItemManager *)self useCustomDiffableDataSource]|| [(HFItemManager *)self diffableDataSourceDisabled];
  v4 = [(HFItemManager *)self mainThreadLoadGroup];
  if (v4)
  {
    v5 = [(HFItemManager *)self mainThreadLoadGroup];
    v6 = dispatch_group_wait(v5, 0) != 0;
  }

  else
  {
    v6 = 1;
  }

  return (v3 | ([(HFItemManager *)self shouldPerformInitialLoadOnMainThread]&& v6)) & 1;
}

@end