@interface IMDClientConnectionManager
- (IMDClientConnectionManager)init;
- (IMDaemonListenerAVProtocol)broadcasterForACConferenceListeners;
- (IMDaemonListenerAVProtocol)broadcasterForAVConferenceListeners;
- (IMDaemonListenerAccountsProtocol)broadcasterForAccountListeners;
- (IMDaemonListenerAnyProtocol)broadcasterForAllListeners;
- (IMDaemonListenerChatCountsProtocol)broadcasterForChatCountsListeners;
- (IMDaemonListenerChatDatabaseProtocol)broadcasterForChatDatabaseListeners;
- (IMDaemonListenerChatProtocol)broadcasterForBlackholeChatListeners;
- (IMDaemonListenerChatProtocol)broadcasterForChatListeners;
- (IMDaemonListenerCloudSyncProtocol)broadcasterForCloudSyncListeners;
- (IMDaemonListenerCollaborationProtocol)broadcasterForCollaborationListeners;
- (IMDaemonListenerFileProviderProtocol)broadcasterForFileProviderListeners;
- (IMDaemonListenerFileTransfersProtocol)broadcasterForFileTransferListeners;
- (IMDaemonListenerKeyTransparencyProtocol)broadcasterForKeyTransparencyListeners;
- (IMDaemonListenerRemoteIntentProtocol)broadcasterForRemoteIntentListeners;
- (IMDaemonListenerSyncedSettingsProtocol)broadcasterForSyncedSettingsListeners;
- (id)broadcasterForACConferenceListenersSupportingService:(id)service;
- (id)broadcasterForAVConferenceListenersSupportingService:(id)service;
- (id)broadcasterForBlackholeChatListenersSupportingService:(id)service;
- (id)broadcasterForChatCountsListenersWithAdditionalCapabilities:(unint64_t)capabilities;
- (id)broadcasterForChatListenersSupportingService:(id)service;
- (id)broadcasterForChatListenersUsingBlackholeRegistry:(BOOL)registry;
- (id)broadcasterForCollaborationListenersSupportingService:(id)service;
- (id)broadcasterForListenersSupportingService:(id)service;
- (id)broadcasterForNotificationListenersSupportingService:(id)service;
- (id)broadcasterForSentMessageListenersSupportingService:(id)service;
- (id)broadcasterForVCConferenceListenersSupportingService:(id)service;
@end

@implementation IMDClientConnectionManager

- (IMDaemonListenerCloudSyncProtocol)broadcasterForCloudSyncListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForCloudSyncListeners.getter();

  return v3;
}

- (IMDaemonListenerAnyProtocol)broadcasterForAllListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForAllListeners.getter();

  return v3;
}

- (id)broadcasterForChatListenersUsingBlackholeRegistry:(BOOL)registry
{
  selfCopy = self;
  v5 = ClientConnectionManager.broadcasterForChatListeners(usingBlackholeRegistry:)(registry);

  return v5;
}

- (IMDClientConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (IMDaemonListenerAccountsProtocol)broadcasterForAccountListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForAccountListeners.getter();

  return v3;
}

- (IMDaemonListenerFileTransfersProtocol)broadcasterForFileTransferListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForFileTransferListeners.getter();

  return v3;
}

- (id)broadcasterForListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForListeners(supporting:)(serviceCopy);

  return v6;
}

- (IMDaemonListenerKeyTransparencyProtocol)broadcasterForKeyTransparencyListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForKeyTransparencyListeners.getter();

  return v3;
}

- (IMDaemonListenerChatProtocol)broadcasterForChatListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForChatListeners.getter();

  return v3;
}

- (id)broadcasterForChatListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForChatListeners(supporting:)(serviceCopy);

  return v6;
}

- (id)broadcasterForSentMessageListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForSentMessageListeners(supporting:)(serviceCopy);

  return v6;
}

- (IMDaemonListenerChatProtocol)broadcasterForBlackholeChatListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForBlackholeChatListeners.getter();

  return v3;
}

- (id)broadcasterForBlackholeChatListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForBlackholeChatListeners(supporting:)(serviceCopy);

  return v6;
}

- (IMDaemonListenerChatDatabaseProtocol)broadcasterForChatDatabaseListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForChatDatabaseListeners.getter();

  return v3;
}

- (id)broadcasterForChatCountsListenersWithAdditionalCapabilities:(unint64_t)capabilities
{
  selfCopy = self;
  v5 = ClientConnectionManager.broadcasterForChatCountsListeners(withAdditionalCapabilities:)(capabilities);

  return v5;
}

- (IMDaemonListenerChatCountsProtocol)broadcasterForChatCountsListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForChatCountsListeners.getter();

  return v3;
}

- (IMDaemonListenerFileProviderProtocol)broadcasterForFileProviderListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForFileProviderListeners.getter();

  return v3;
}

- (id)broadcasterForNotificationListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForNotificationListeners(supporting:)(serviceCopy);

  return v6;
}

- (id)broadcasterForAVConferenceListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForAVConferenceListeners(supporting:)(serviceCopy);

  return v6;
}

- (id)broadcasterForACConferenceListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForACConferenceListeners(supporting:)(serviceCopy);

  return v6;
}

- (id)broadcasterForVCConferenceListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForVCConferenceListeners(supporting:)(serviceCopy);

  return v6;
}

- (IMDaemonListenerAVProtocol)broadcasterForAVConferenceListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForAVConferenceListeners.getter();

  return v3;
}

- (IMDaemonListenerAVProtocol)broadcasterForACConferenceListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForACConferenceListeners.getter();

  return v3;
}

- (IMDaemonListenerSyncedSettingsProtocol)broadcasterForSyncedSettingsListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForSyncedSettingsListeners.getter();

  return v3;
}

- (id)broadcasterForCollaborationListenersSupportingService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = ClientConnectionManager.broadcasterForCollaborationListeners(supporting:)(serviceCopy);

  return v6;
}

- (IMDaemonListenerCollaborationProtocol)broadcasterForCollaborationListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForCollaborationListeners.getter();

  return v3;
}

- (IMDaemonListenerRemoteIntentProtocol)broadcasterForRemoteIntentListeners
{
  selfCopy = self;
  v3 = ClientConnectionManager.broadcasterForRemoteIntentListeners.getter();

  return v3;
}

@end