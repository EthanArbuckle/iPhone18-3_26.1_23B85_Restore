@interface GKMultiplayerDaemonProxyHelper
- (id)multiplayerService;
- (id)utilityService;
- (void)completeGameRecording;
- (void)completeMatchRecording:(id)recording matchType:(id)type;
- (void)emitMultiplayerMessage:(id)message;
- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)identifier descriptionAddition:(id)addition handler:(id)handler;
- (void)getMultiPlayerGroups:(id)groups;
- (void)initiateRelayRequest:(id)request completionHandler:(id)handler;
- (void)removeInviteSession;
- (void)revokePseudonym:(id)pseudonym completionHandler:(id)handler;
- (void)sendInvitationUpdate:(id)update handler:(id)handler;
- (void)sendReconnectInvitation:(id)invitation toPlayer:(id)player connectionData:(id)data sessionToken:(id)token pushToken:(id)pushToken handler:(id)handler;
- (void)updateRelayRequest:(id)request completionHandler:(id)handler;
@end

@implementation GKMultiplayerDaemonProxyHelper

- (id)multiplayerService
{
  v2 = +[GKDaemonProxy proxyForLocalPlayer];
  multiplayerService = [v2 multiplayerService];

  return multiplayerService;
}

- (id)utilityService
{
  v2 = +[GKDaemonProxy proxyForLocalPlayer];
  utilityService = [v2 utilityService];

  return utilityService;
}

- (void)fileMultiplayerTTRWithCallBackIdentifier:(id)identifier descriptionAddition:(id)addition handler:(id)handler
{
  handlerCopy = handler;
  additionCopy = addition;
  identifierCopy = identifier;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService fileMultiplayerTTRWithCallBackIdentifier:identifierCopy descriptionAddition:additionCopy handler:handlerCopy];
}

- (void)getMultiPlayerGroups:(id)groups
{
  groupsCopy = groups;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService getMultiPlayerGroups:groupsCopy];
}

- (void)initiateRelayRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService initiateRelayRequest:requestCopy handler:handlerCopy];
}

- (void)removeInviteSession
{
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService removeInviteSession];
}

- (void)revokePseudonym:(id)pseudonym completionHandler:(id)handler
{
  handlerCopy = handler;
  pseudonymCopy = pseudonym;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService revokePseudonym:pseudonymCopy withCompletionHandler:handlerCopy];
}

- (void)sendInvitationUpdate:(id)update handler:(id)handler
{
  handlerCopy = handler;
  updateCopy = update;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService sendInvitationUpdate:updateCopy handler:handlerCopy];
}

- (void)sendReconnectInvitation:(id)invitation toPlayer:(id)player connectionData:(id)data sessionToken:(id)token pushToken:(id)pushToken handler:(id)handler
{
  handlerCopy = handler;
  pushTokenCopy = pushToken;
  tokenCopy = token;
  dataCopy = data;
  playerCopy = player;
  invitationCopy = invitation;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService sendReconnectInvitation:invitationCopy toPlayer:playerCopy connectionData:dataCopy sessionToken:tokenCopy pushToken:pushTokenCopy handler:handlerCopy];
}

- (void)updateRelayRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  multiplayerService = [(GKMultiplayerDaemonProxyHelper *)self multiplayerService];
  [multiplayerService updateRelayRequest:requestCopy handler:handlerCopy];
}

- (void)completeGameRecording
{
  utilityService = [(GKMultiplayerDaemonProxyHelper *)self utilityService];
  [utilityService completeGameRecording];
}

- (void)completeMatchRecording:(id)recording matchType:(id)type
{
  typeCopy = type;
  recordingCopy = recording;
  utilityService = [(GKMultiplayerDaemonProxyHelper *)self utilityService];
  [utilityService completeMatchRecording:recordingCopy matchType:typeCopy];
}

- (void)emitMultiplayerMessage:(id)message
{
  messageCopy = message;
  utilityService = [(GKMultiplayerDaemonProxyHelper *)self utilityService];
  [utilityService emitMultiplayerMessage:messageCopy];
}

@end