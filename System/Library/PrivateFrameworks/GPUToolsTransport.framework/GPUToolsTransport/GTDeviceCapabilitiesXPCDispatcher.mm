@interface GTDeviceCapabilitiesXPCDispatcher
- (GTDeviceCapabilitiesXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)daemonDeviceCapabilities:(id)capabilities replyConnection:(id)connection;
- (void)deviceCompatibilityCapabilitiesWithHeapDescriptors_:(id)descriptors_ replyConnection:(id)connection;
- (void)gpuToolsVersionQuery:(id)query replyConnection:(id)connection;
- (void)inferiorEnvironment_:(id)environment_ replyConnection:(id)connection;
@end

@implementation GTDeviceCapabilitiesXPCDispatcher

- (GTDeviceCapabilitiesXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v11.receiver = self;
  v11.super_class = GTDeviceCapabilitiesXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:protocolMethods];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (void)daemonDeviceCapabilities:(id)capabilities replyConnection:(id)connection
{
  service = self->_service;
  connectionCopy = connection;
  capabilitiesCopy = capabilities;
  daemonDeviceCapabilities = [(GTDeviceCapabilities *)service daemonDeviceCapabilities];
  v8 = gt_xpc_dictionary_create_reply(capabilitiesCopy);

  xpc_dictionary_set_nsobject(v8, "returnValue", daemonDeviceCapabilities);
  [connectionCopy sendMessage:v8];
}

- (void)gpuToolsVersionQuery:(id)query replyConnection:(id)connection
{
  service = self->_service;
  connectionCopy = connection;
  queryCopy = query;
  gpuToolsVersionQuery = [(GTDeviceCapabilities *)service gpuToolsVersionQuery];
  v8 = gt_xpc_dictionary_create_reply(queryCopy);

  xpc_dictionary_set_nsobject(v8, "returnValue", gpuToolsVersionQuery);
  [connectionCopy sendMessage:v8];
}

- (void)inferiorEnvironment_:(id)environment_ replyConnection:(id)connection
{
  connectionCopy = connection;
  environment_Copy = environment_;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(environment_Copy, "launchDictionary");
  v8 = [(GTDeviceCapabilities *)self->_service inferiorEnvironment:nsdictionary_any];
  v9 = gt_xpc_dictionary_create_reply(environment_Copy);

  xpc_dictionary_set_nsobject(v9, "environment", v8);
  [connectionCopy sendMessage:v9];
}

- (void)deviceCompatibilityCapabilitiesWithHeapDescriptors_:(id)descriptors_ replyConnection:(id)connection
{
  connectionCopy = connection;
  descriptors_Copy = descriptors_;
  nsdictionary_any = xpc_dictionary_get_nsdictionary_any(descriptors_Copy, "heapDescriptors");
  v8 = [(GTDeviceCapabilities *)self->_service deviceCompatibilityCapabilitiesWithHeapDescriptors:nsdictionary_any];
  v9 = gt_xpc_dictionary_create_reply(descriptors_Copy);

  xpc_dictionary_set_nsobject(v9, "returnValue", v8);
  [connectionCopy sendMessage:v9];
}

@end