@interface HMDCameraStreamControlMessageHandlerDataSource
- (BOOL)isResidentCapable;
- (id)createDynamicActivityAttributionPublisher;
- (id)createLocalStreamControlManagerWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 localNetworkConfig:(id)self1 remoteCapabilities:(id)self2 supportedConfigCache:(id)self3 streamPreference:(id)self4;
- (id)createRemoteStreamControlManagerWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 remoteCapabilities:(id)self1 profileUniqueIdentifier:(id)self2 residentMessageHandler:(id)self3 remoteAccessDevice:(id)self4 streamPreference:(id)self5;
- (id)createStreamManagerSessionWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager setupWaitPeriod:(double)period;
@end

@implementation HMDCameraStreamControlMessageHandlerDataSource

- (id)createDynamicActivityAttributionPublisher
{
  v2 = objc_alloc_init(HMDDynamicActivityAttributionPublisher);

  return v2;
}

- (id)createStreamManagerSessionWithSessionID:(id)d destinationID:(id)iD streamClientConnection:(id)connection streamControlManager:(id)manager setupWaitPeriod:(double)period
{
  managerCopy = manager;
  connectionCopy = connection;
  iDCopy = iD;
  dCopy = d;
  v15 = [[HMDCameraStreamManagerSession alloc] initWithSessionID:dCopy destinationID:iDCopy streamClientConnection:connectionCopy streamControlManager:managerCopy setupWaitPeriod:period];

  return v15;
}

- (id)createRemoteStreamControlManagerWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 remoteCapabilities:(id)self1 profileUniqueIdentifier:(id)self2 residentMessageHandler:(id)self3 remoteAccessDevice:(id)self4 streamPreference:(id)self5
{
  preferenceCopy = preference;
  accessDeviceCopy = accessDevice;
  messageHandlerCopy = messageHandler;
  identifierCopy = identifier;
  capabilitiesCopy = capabilities;
  serviceCopy = service;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  deviceCopy = device;
  handlerCopy = handler;
  queueCopy = queue;
  dCopy = d;
  v22 = deviceCopy;
  v23 = [[HMDCameraRemoteStreamControlManager alloc] initWithSessionID:dCopy workQueue:queueCopy streamSnapshotHandler:handlerCopy reachabilityPath:path device:deviceCopy delegate:delegateCopy accessory:accessoryCopy streamManagementService:serviceCopy remoteCapabilities:capabilitiesCopy profileUniqueIdentifier:identifierCopy residentMessageHandler:messageHandlerCopy remoteAccessDevice:accessDeviceCopy streamPreference:preferenceCopy];

  return v23;
}

- (id)createLocalStreamControlManagerWithSessionID:(id)d workQueue:(id)queue streamSnapshotHandler:(id)handler reachabilityPath:(unint64_t)path device:(id)device delegate:(id)delegate accessory:(id)accessory streamManagementService:(id)self0 localNetworkConfig:(id)self1 remoteCapabilities:(id)self2 supportedConfigCache:(id)self3 streamPreference:(id)self4
{
  preferenceCopy = preference;
  cacheCopy = cache;
  capabilitiesCopy = capabilities;
  configCopy = config;
  serviceCopy = service;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  deviceCopy = device;
  handlerCopy = handler;
  queueCopy = queue;
  dCopy = d;
  v32 = [[HMDCameraLocalStreamControlManager alloc] initWithSessionID:dCopy workQueue:queueCopy streamSnapshotHandler:handlerCopy reachabilityPath:path device:deviceCopy delegate:delegateCopy accessory:accessoryCopy streamManagementService:serviceCopy localNetworkConfig:configCopy remoteCapabilities:capabilitiesCopy supportedConfigCache:cacheCopy streamPreference:preferenceCopy];

  return v32;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
}

@end