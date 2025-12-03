@interface HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface
- (id)copyMRAVEndpointOutputDevices:(id)devices;
- (id)createAssistantConnection;
- (id)createAssistantDiscovery;
- (id)getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint:(id)endpoint outputDeviceUID:(id)d queue:(id)queue;
- (id)setMRAVOutputDeviceVolume:(float)volume endpoint:(id)endpoint outputDeviceUID:(id)d queue:(id)queue;
@end

@implementation HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface

- (id)getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint:(id)endpoint outputDeviceUID:(id)d queue:(id)queue
{
  endpointCopy = endpoint;
  dCopy = d;
  queueCopy = queue;
  v10 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __154__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint_outputDeviceUID_queue___block_invoke;
  v16[3] = &unk_2797240C0;
  v17 = endpointCopy;
  v18 = dCopy;
  v19 = queueCopy;
  v11 = queueCopy;
  v12 = dCopy;
  v13 = endpointCopy;
  v14 = [v10 futureWithCompletionHandlerAdapterBlock:v16];

  return v14;
}

void __154__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint_outputDeviceUID_queue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) mravEndpoint];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v6 = v3;
  MRAVEndpointGetOutputDeviceUIDVolumeControlCapabilities();
}

void __154__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint_outputDeviceUID_queue___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  (*(v4 + 16))(v4, v5, a3);
}

- (id)setMRAVOutputDeviceVolume:(float)volume endpoint:(id)endpoint outputDeviceUID:(id)d queue:(id)queue
{
  endpointCopy = endpoint;
  dCopy = d;
  queueCopy = queue;
  v12 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __122__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_setMRAVOutputDeviceVolume_endpoint_outputDeviceUID_queue___block_invoke;
  v18[3] = &unk_279724070;
  v19 = endpointCopy;
  v20 = dCopy;
  volumeCopy = volume;
  v21 = queueCopy;
  v13 = queueCopy;
  v14 = dCopy;
  v15 = endpointCopy;
  v16 = [v12 futureWithErrorOnlyHandlerAdapterBlock:v18];

  return v16;
}

void __122__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_setMRAVOutputDeviceVolume_endpoint_outputDeviceUID_queue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) mravEndpoint];
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v7 = v3;
  MRAVEndpointSetOutputDeviceUIDVolume();
}

- (id)copyMRAVEndpointOutputDevices:(id)devices
{
  mravEndpoint = [devices mravEndpoint];

  return MEMORY[0x282185598](mravEndpoint);
}

- (id)createAssistantConnection
{
  v2 = objc_alloc_init(MEMORY[0x277D27830]);

  return v2;
}

- (id)createAssistantDiscovery
{
  v2 = objc_alloc_init(MEMORY[0x277D27838]);

  return v2;
}

@end