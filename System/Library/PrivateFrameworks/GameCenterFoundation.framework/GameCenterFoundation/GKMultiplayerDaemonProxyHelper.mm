@interface GKMultiplayerDaemonProxyHelper
- (id)multiplayerService;
- (id)utilityService;
- (void)completeGameRecording;
- (void)completeMatchRecording:(id)a3 matchType:(id)a4;
- (void)emitMultiplayerMessage:(id)a3;
- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)a3 descriptionAddition:(id)a4 handler:(id)a5;
- (void)getMultiPlayerGroups:(id)a3;
- (void)initiateRelayRequest:(id)a3 completionHandler:(id)a4;
- (void)removeInviteSession;
- (void)revokePseudonym:(id)a3 completionHandler:(id)a4;
- (void)sendInvitationUpdate:(id)a3 handler:(id)a4;
- (void)sendReconnectInvitation:(id)a3 toPlayer:(id)a4 connectionData:(id)a5 sessionToken:(id)a6 pushToken:(id)a7 handler:(id)a8;
- (void)updateRelayRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation GKMultiplayerDaemonProxyHelper

- (id)multiplayerService
{
  v2 = +[GKDaemonProxy proxyForLocalPlayer];
  v3 = [v2 multiplayerService];

  return v3;
}

- (id)utilityService
{
  v2 = +[GKDaemonProxy proxyForLocalPlayer];
  v3 = [v2 utilityService];

  return v3;
}

- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)a3 descriptionAddition:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v11 fileMultiplayerTTRWithCallBackIdentifier:v10 descriptionAddition:v9 handler:v8];
}

- (void)getMultiPlayerGroups:(id)a3
{
  v4 = a3;
  v5 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v5 getMultiPlayerGroups:v4];
}

- (void)initiateRelayRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v8 initiateRelayRequest:v7 handler:v6];
}

- (void)removeInviteSession
{
  v2 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v2 removeInviteSession];
}

- (void)revokePseudonym:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v8 revokePseudonym:v7 withCompletionHandler:v6];
}

- (void)sendInvitationUpdate:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v8 sendInvitationUpdate:v7 handler:v6];
}

- (void)sendReconnectInvitation:(id)a3 toPlayer:(id)a4 connectionData:(id)a5 sessionToken:(id)a6 pushToken:(id)a7 handler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v20 sendReconnectInvitation:v19 toPlayer:v18 connectionData:v17 sessionToken:v16 pushToken:v15 handler:v14];
}

- (void)updateRelayRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [v8 updateRelayRequest:v7 handler:v6];
}

- (void)completeGameRecording
{
  v2 = [(GKMultiplayerDaemonProxyHelper *)self utilityService];
  [v2 completeGameRecording];
}

- (void)completeMatchRecording:(id)a3 matchType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMultiplayerDaemonProxyHelper *)self utilityService];
  [v8 completeMatchRecording:v7 matchType:v6];
}

- (void)emitMultiplayerMessage:(id)a3
{
  v4 = a3;
  v5 = [(GKMultiplayerDaemonProxyHelper *)self utilityService];
  [v5 emitMultiplayerMessage:v4];
}

@end