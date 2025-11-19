@interface DDUIEndpointPairingInitiator
- (id)initForDeviceTypes:(unsigned int)a3 withTransport:(id)a4;
- (id)pairingSessionForDevice:(id)a3 bundleID:(id)a4 serviceIdentifier:(id)a5 error:(id *)a6;
- (void)beginWithCompletion:(id)a3;
- (void)invalidate;
- (void)setAvailableDevicesChangedHandler:(id)a3;
@end

@implementation DDUIEndpointPairingInitiator

- (id)initForDeviceTypes:(unsigned int)a3 withTransport:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DDUIEndpointPairingInitiator;
  v8 = [(DDUIEndpointPairingInitiator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_acceptedDeviceTypes = a3;
    objc_storeStrong(&v8->_transport, a4);
    v10 = _DDUICoreLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = DDUIDeviceTypeString(a3);
      *buf = 134218498;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_230EF9000, v10, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingInitiator init] {self: %p, deviceTypes: %@, transport: %@}", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setAvailableDevicesChangedHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_availableDevicesChangedHandler != v4)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(v4);
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator set devices changed handler {self: %p, availableDevicesChangedHandler: %@}", &v10, 0x16u);
    }

    v7 = _Block_copy(v4);
    availableDevicesChangedHandler = self->_availableDevicesChangedHandler;
    self->_availableDevicesChangedHandler = v7;

    [(DDUIEndpointPairingBrowsingTransport *)self->_transport setAvailableDevicesChangedHandler:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(v4);
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator beginning {self: %p, completion: %@}", &v8, 0x16u);
  }

  [(DDUIEndpointPairingBrowsingTransport *)self->_transport activateForDeviceTypes:self->_acceptedDeviceTypes withCompletion:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)pairingSessionForDevice:(id)a3 bundleID:(id)a4 serviceIdentifier:(id)a5 error:(id *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  transport = self->_transport;
  v22 = 0;
  v12 = [(DDUIEndpointPairingBrowsingTransport *)transport sessionForDevice:v10 bundleID:a4 serviceIdentifier:a5 error:&v22];
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
      v24 = self;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_230EF9000, v19, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator creating pairing session {self: %p, device: %@}", buf, 0x16u);
    }

    v18 = [[DDUIEndpointPairingSession alloc] initWithTransportSession:v12 mode:0];
  }

  else
  {
    if (a6)
    {
      v16 = v13;
      *a6 = v14;
    }

    v17 = _DDUICoreLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v24 = self;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v10;
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