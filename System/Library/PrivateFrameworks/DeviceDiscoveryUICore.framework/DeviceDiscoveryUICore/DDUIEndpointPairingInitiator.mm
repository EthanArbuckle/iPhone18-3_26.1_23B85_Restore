@interface DDUIEndpointPairingInitiator
- (id)initForDeviceTypes:(unsigned int)types withTransport:(id)transport;
- (id)pairingSessionForDevice:(id)device bundleID:(id)d serviceIdentifier:(id)identifier error:(id *)error;
- (void)beginWithCompletion:(id)completion;
- (void)invalidate;
- (void)setAvailableDevicesChangedHandler:(id)handler;
@end

@implementation DDUIEndpointPairingInitiator

- (id)initForDeviceTypes:(unsigned int)types withTransport:(id)transport
{
  v21 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  v14.receiver = self;
  v14.super_class = DDUIEndpointPairingInitiator;
  v8 = [(DDUIEndpointPairingInitiator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_acceptedDeviceTypes = types;
    objc_storeStrong(&v8->_transport, transport);
    v10 = _DDUICoreLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = DDUIDeviceTypeString(types);
      *buf = 134218498;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = transportCopy;
      _os_log_impl(&dword_230EF9000, v10, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingInitiator init] {self: %p, deviceTypes: %@, transport: %@}", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setAvailableDevicesChangedHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_availableDevicesChangedHandler != handlerCopy)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(handlerCopy);
      v10 = 134218242;
      selfCopy = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator set devices changed handler {self: %p, availableDevicesChangedHandler: %@}", &v10, 0x16u);
    }

    v7 = _Block_copy(handlerCopy);
    availableDevicesChangedHandler = self->_availableDevicesChangedHandler;
    self->_availableDevicesChangedHandler = v7;

    [(DDUIEndpointPairingBrowsingTransport *)self->_transport setAvailableDevicesChangedHandler:handlerCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(completionCopy);
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator beginning {self: %p, completion: %@}", &v8, 0x16u);
  }

  [(DDUIEndpointPairingBrowsingTransport *)self->_transport activateForDeviceTypes:self->_acceptedDeviceTypes withCompletion:completionCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)pairingSessionForDevice:(id)device bundleID:(id)d serviceIdentifier:(id)identifier error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  transport = self->_transport;
  v22 = 0;
  v12 = [(DDUIEndpointPairingBrowsingTransport *)transport sessionForDevice:deviceCopy bundleID:d serviceIdentifier:identifier error:&v22];
  v13 = v22;
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v19 = _DDUICoreLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v25 = 2112;
      v26 = deviceCopy;
      _os_log_impl(&dword_230EF9000, v19, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator creating pairing session {self: %p, device: %@}", buf, 0x16u);
    }

    v18 = [[DDUIEndpointPairingSession alloc] initWithTransportSession:v12 mode:0];
  }

  else
  {
    if (error)
    {
      v16 = v13;
      *error = v14;
    }

    v17 = _DDUICoreLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = deviceCopy;
      _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator failed to creater a pairing session {self: %p, sessionCreationError: %@, device: %@}", buf, 0x20u);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)invalidate
{
  [(DDUIEndpointPairingBrowsingTransport *)self->_transport invalidate];
  transport = self->_transport;
  self->_transport = 0;
}

@end