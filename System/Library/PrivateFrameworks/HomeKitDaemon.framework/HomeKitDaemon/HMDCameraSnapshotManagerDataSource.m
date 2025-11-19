@interface HMDCameraSnapshotManagerDataSource
- (id)createSnapshotLocalWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 snapshotRequestHandler:(id)a7;
- (id)createSnapshotRemoteRelayReceiverWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 uniqueIdentifier:(id)a7 snapshotRequestHandler:(id)a8 residentMessageHandler:(id)a9 remoteDevice:(id)a10;
@end

@implementation HMDCameraSnapshotManagerDataSource

- (id)createSnapshotRemoteRelayReceiverWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 uniqueIdentifier:(id)a7 snapshotRequestHandler:(id)a8 residentMessageHandler:(id)a9 remoteDevice:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[HMDCameraSnapshotRemoteRelayReceiver alloc] initWithSessionID:v23 workQueue:v22 accessory:v21 delegate:v20 uniqueIdentifier:v19 snapshotRequestHandler:v18 residentMessageHandler:v17 remoteDevice:v16];

  return v24;
}

- (id)createSnapshotLocalWithSessionID:(id)a3 workQueue:(id)a4 accessory:(id)a5 delegate:(id)a6 snapshotRequestHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[HMDCameraSnapshotLocal alloc] initWithSessionID:v15 workQueue:v14 accessory:v13 delegate:v12 snapshotRequestHandler:v11];

  return v16;
}

@end