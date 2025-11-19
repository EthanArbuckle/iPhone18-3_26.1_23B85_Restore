@interface HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface
- (id)copyMRAVEndpointOutputDevices:(id)a3;
- (id)createAssistantConnection;
- (id)createAssistantDiscovery;
- (id)getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5;
- (id)setMRAVOutputDeviceVolume:(float)a3 endpoint:(id)a4 outputDeviceUID:(id)a5 queue:(id)a6;
@end

@implementation HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface

- (id)getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __154__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_getMRAVEndpointOutputDeviceUIDVolumeControlCapabilitiesForEndpoint_outputDeviceUID_queue___block_invoke;
  v16[3] = &unk_2786723E0;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
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

- (id)setMRAVOutputDeviceVolume:(float)a3 endpoint:(id)a4 outputDeviceUID:(id)a5 queue:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277D2C900];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __122__HMDMRSetEndpointVolumeOperationDefaultExternalObjectInterface_setMRAVOutputDeviceVolume_endpoint_outputDeviceUID_queue___block_invoke;
  v18[3] = &unk_278672390;
  v19 = v9;
  v20 = v10;
  v22 = a3;
  v21 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
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

- (id)copyMRAVEndpointOutputDevices:(id)a3
{
  v3 = [a3 mravEndpoint];

  return MEMORY[0x282185598](v3);
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