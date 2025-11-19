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
- (id)broadcasterForACConferenceListenersSupportingService:(id)a3;
- (id)broadcasterForAVConferenceListenersSupportingService:(id)a3;
- (id)broadcasterForBlackholeChatListenersSupportingService:(id)a3;
- (id)broadcasterForChatCountsListenersWithAdditionalCapabilities:(unint64_t)a3;
- (id)broadcasterForChatListenersSupportingService:(id)a3;
- (id)broadcasterForChatListenersUsingBlackholeRegistry:(BOOL)a3;
- (id)broadcasterForCollaborationListenersSupportingService:(id)a3;
- (id)broadcasterForListenersSupportingService:(id)a3;
- (id)broadcasterForNotificationListenersSupportingService:(id)a3;
- (id)broadcasterForSentMessageListenersSupportingService:(id)a3;
- (id)broadcasterForVCConferenceListenersSupportingService:(id)a3;
@end

@implementation IMDClientConnectionManager

- (IMDaemonListenerCloudSyncProtocol)broadcasterForCloudSyncListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForCloudSyncListeners.getter();

  return v3;
}

- (IMDaemonListenerAnyProtocol)broadcasterForAllListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForAllListeners.getter();

  return v3;
}

- (id)broadcasterForChatListenersUsingBlackholeRegistry:(BOOL)a3
{
  v4 = self;
  v5 = ClientConnectionManager.broadcasterForChatListeners(usingBlackholeRegistry:)(a3);

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
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForAccountListeners.getter();

  return v3;
}

- (IMDaemonListenerFileTransfersProtocol)broadcasterForFileTransferListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForFileTransferListeners.getter();

  return v3;
}

- (id)broadcasterForListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForListeners(supporting:)(v4);

  return v6;
}

- (IMDaemonListenerKeyTransparencyProtocol)broadcasterForKeyTransparencyListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForKeyTransparencyListeners.getter();

  return v3;
}

- (IMDaemonListenerChatProtocol)broadcasterForChatListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForChatListeners.getter();

  return v3;
}

- (id)broadcasterForChatListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForChatListeners(supporting:)(v4);

  return v6;
}

- (id)broadcasterForSentMessageListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForSentMessageListeners(supporting:)(v4);

  return v6;
}

- (IMDaemonListenerChatProtocol)broadcasterForBlackholeChatListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForBlackholeChatListeners.getter();

  return v3;
}

- (id)broadcasterForBlackholeChatListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForBlackholeChatListeners(supporting:)(v4);

  return v6;
}

- (IMDaemonListenerChatDatabaseProtocol)broadcasterForChatDatabaseListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForChatDatabaseListeners.getter();

  return v3;
}

- (id)broadcasterForChatCountsListenersWithAdditionalCapabilities:(unint64_t)a3
{
  v4 = self;
  v5 = ClientConnectionManager.broadcasterForChatCountsListeners(withAdditionalCapabilities:)(a3);

  return v5;
}

- (IMDaemonListenerChatCountsProtocol)broadcasterForChatCountsListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForChatCountsListeners.getter();

  return v3;
}

- (IMDaemonListenerFileProviderProtocol)broadcasterForFileProviderListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForFileProviderListeners.getter();

  return v3;
}

- (id)broadcasterForNotificationListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForNotificationListeners(supporting:)(v4);

  return v6;
}

- (id)broadcasterForAVConferenceListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForAVConferenceListeners(supporting:)(v4);

  return v6;
}

- (id)broadcasterForACConferenceListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForACConferenceListeners(supporting:)(v4);

  return v6;
}

- (id)broadcasterForVCConferenceListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForVCConferenceListeners(supporting:)(v4);

  return v6;
}

- (IMDaemonListenerAVProtocol)broadcasterForAVConferenceListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForAVConferenceListeners.getter();

  return v3;
}

- (IMDaemonListenerAVProtocol)broadcasterForACConferenceListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForACConferenceListeners.getter();

  return v3;
}

- (IMDaemonListenerSyncedSettingsProtocol)broadcasterForSyncedSettingsListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForSyncedSettingsListeners.getter();

  return v3;
}

- (id)broadcasterForCollaborationListenersSupportingService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ClientConnectionManager.broadcasterForCollaborationListeners(supporting:)(v4);

  return v6;
}

- (IMDaemonListenerCollaborationProtocol)broadcasterForCollaborationListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForCollaborationListeners.getter();

  return v3;
}

- (IMDaemonListenerRemoteIntentProtocol)broadcasterForRemoteIntentListeners
{
  v2 = self;
  v3 = ClientConnectionManager.broadcasterForRemoteIntentListeners.getter();

  return v3;
}

@end