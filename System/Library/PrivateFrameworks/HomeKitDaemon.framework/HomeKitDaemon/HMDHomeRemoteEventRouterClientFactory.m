@interface HMDHomeRemoteEventRouterClientFactory
- (id)primaryResidentClientWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12;
- (id)residentClientWithAccessoryUUID:(id)a3 homeUUID:(id)a4 queue:(id)a5 dataSource:(id)a6 messageDispatcher:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 storeReadHandle:(id)a12 storeWriteHandle:(id)a13;
@end

@implementation HMDHomeRemoteEventRouterClientFactory

- (id)residentClientWithAccessoryUUID:(id)a3 homeUUID:(id)a4 queue:(id)a5 dataSource:(id)a6 messageDispatcher:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 storeReadHandle:(id)a12 storeWriteHandle:(id)a13
{
  v34 = a13;
  v33 = a12;
  v32 = a11;
  v31 = a10;
  v29 = a9;
  v30 = a8;
  v35 = a7;
  v28 = a6;
  v25 = a5;
  v23 = a4;
  v18 = a3;
  v19 = [v18 UUIDString];
  v20 = [@"RemoteEventRouter.Resident.Client." stringByAppendingString:v19];

  v21 = [HMDRemoteEventRouterResidentClient alloc];
  v27 = +[HMDRemoteEventRouterClientRetryIntervals retryIntervalsForResidentClient];
  v24 = -[HMDRemoteEventRouterResidentClient initWitAccessoryUUID:homeUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:retryIntervalProvider:logCategory:](v21, "initWitAccessoryUUID:homeUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:retryIntervalProvider:logCategory:", v18, v23, v25, v28, v35, v30, v29, v31, v32, v33, v34, v27, [v20 UTF8String]);

  return v24;
}

- (id)primaryResidentClientWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12
{
  v18 = a12;
  v19 = a11;
  v31 = a10;
  v29 = a9;
  v30 = a8;
  v28 = a7;
  v20 = a6;
  v21 = a5;
  v26 = a4;
  v22 = a3;
  v23 = [v22 UUIDString];
  v24 = [@"RemoteEventRouter.Primary.Client." stringByAppendingString:v23];

  v27 = -[HMDRemoteEventRouterClient initWithMessageTargetUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:logCategory:]([HMDRemoteEventRouterPrimaryResidentClient alloc], "initWithMessageTargetUUID:queue:dataSource:messageDispatcher:notificationCenter:requestMessageName:updateMessageName:multiHopFetchResponseMessageName:storeReadHandle:storeWriteHandle:logCategory:", v22, v26, v21, v20, v28, v30, v29, v31, v19, v18, [v24 UTF8String]);

  return v27;
}

@end