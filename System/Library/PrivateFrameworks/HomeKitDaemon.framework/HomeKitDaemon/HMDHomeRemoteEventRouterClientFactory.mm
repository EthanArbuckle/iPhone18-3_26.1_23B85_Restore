@interface HMDHomeRemoteEventRouterClientFactory
- (id)primaryResidentClientWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2;
- (id)residentClientWithAccessoryUUID:(id)d homeUUID:(id)iD queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 storeReadHandle:(id)self2 storeWriteHandle:(id)self3;
@end

@implementation HMDHomeRemoteEventRouterClientFactory

- (id)residentClientWithAccessoryUUID:(id)d homeUUID:(id)iD queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 storeReadHandle:(id)self2 storeWriteHandle:(id)self3
{
  writeHandleCopy = writeHandle;
  handleCopy = handle;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v20 = [@"RemoteEventRouter.Resident.Client." stringByAppendingString:uUIDString];

  v21 = [HMDRemoteEventRouterResidentClient alloc];
  v27 = +[HMDRemoteEventRouterClientRetryIntervals retryIntervalsForResidentClient];
  v24 = -[HMDRemoteEventRouterResidentClient initWitAccessoryUUID:homeUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:retryIntervalProvider:logCategory:](v21, "initWitAccessoryUUID:homeUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:retryIntervalProvider:logCategory:", dCopy, iDCopy, queueCopy, sourceCopy, dispatcherCopy, centerCopy, nameCopy, messageNameCopy, responseMessageNameCopy, handleCopy, writeHandleCopy, v27, [v20 UTF8String]);

  return v24;
}

- (id)primaryResidentClientWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2
{
  writeHandleCopy = writeHandle;
  handleCopy = handle;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  queueCopy = queue;
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v24 = [@"RemoteEventRouter.Primary.Client." stringByAppendingString:uUIDString];

  v27 = -[HMDRemoteEventRouterClient initWithMessageTargetUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:logCategory:]([HMDRemoteEventRouterPrimaryResidentClient alloc], "initWithMessageTargetUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:logCategory:", dCopy, queueCopy, sourceCopy, dispatcherCopy, centerCopy, nameCopy, messageNameCopy, responseMessageNameCopy, handleCopy, writeHandleCopy, [v24 UTF8String]);

  return v27;
}

@end