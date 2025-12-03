@interface HMDCameraSnapshotManagerDataSource
- (id)createSnapshotLocalWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate snapshotRequestHandler:(id)handler;
- (id)createSnapshotRemoteRelayReceiverWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)self0;
@end

@implementation HMDCameraSnapshotManagerDataSource

- (id)createSnapshotRemoteRelayReceiverWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate uniqueIdentifier:(id)identifier snapshotRequestHandler:(id)handler residentMessageHandler:(id)messageHandler remoteDevice:(id)self0
{
  deviceCopy = device;
  messageHandlerCopy = messageHandler;
  handlerCopy = handler;
  identifierCopy = identifier;
  delegateCopy = delegate;
  accessoryCopy = accessory;
  queueCopy = queue;
  dCopy = d;
  v24 = [[HMDCameraSnapshotRemoteRelayReceiver alloc] initWithSessionID:dCopy workQueue:queueCopy accessory:accessoryCopy delegate:delegateCopy uniqueIdentifier:identifierCopy snapshotRequestHandler:handlerCopy residentMessageHandler:messageHandlerCopy remoteDevice:deviceCopy];

  return v24;
}

- (id)createSnapshotLocalWithSessionID:(id)d workQueue:(id)queue accessory:(id)accessory delegate:(id)delegate snapshotRequestHandler:(id)handler
{
  handlerCopy = handler;
  delegateCopy = delegate;
  accessoryCopy = accessory;
  queueCopy = queue;
  dCopy = d;
  v16 = [[HMDCameraSnapshotLocal alloc] initWithSessionID:dCopy workQueue:queueCopy accessory:accessoryCopy delegate:delegateCopy snapshotRequestHandler:handlerCopy];

  return v16;
}

@end