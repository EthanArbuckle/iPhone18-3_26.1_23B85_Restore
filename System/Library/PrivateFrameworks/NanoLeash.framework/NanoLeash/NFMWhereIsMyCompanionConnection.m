@interface NFMWhereIsMyCompanionConnection
+ (id)sharedDeviceConnection;
- (NFMWhereIsMyCompanionConnection)init;
- (id)serverConnection;
- (uint64_t)playSoundAndLEDCompletion;
- (uint64_t)playSoundCompletion;
- (void)_cleanUpServerConnection:(id)a3;
- (void)applicationIdentifierWithReply:(id)a3;
- (void)dealloc;
- (void)playNearbySoundOnPhone;
- (void)playSoundAndLightsOnCompanionWithCompletion:(id)a3;
- (void)playSoundOnCompanionWithCompletion:(id)a3;
- (void)setPlaySoundAndLEDCompletion:(void *)a1;
- (void)setPlaySoundCompletion:(void *)a1;
- (void)setServerConnection:(uint64_t)a1;
- (void)startRangingOnPhone;
- (void)stopRangingOnPhone;
@end

@implementation NFMWhereIsMyCompanionConnection

+ (id)sharedDeviceConnection
{
  notify_post("com.apple.nanofindlocallyd.shouldlaunch");
  if (sharedDeviceConnection_onceToken != -1)
  {
    +[NFMWhereIsMyCompanionConnection sharedDeviceConnection];
  }

  v2 = sharedDeviceConnection___sharedDeviceConnection;

  return v2;
}

uint64_t __57__NFMWhereIsMyCompanionConnection_sharedDeviceConnection__block_invoke()
{
  sharedDeviceConnection___sharedDeviceConnection = objc_alloc_init(NFMWhereIsMyCompanionConnection);

  return MEMORY[0x2821F96F8]();
}

- (NFMWhereIsMyCompanionConnection)init
{
  v6.receiver = self;
  v6.super_class = NFMWhereIsMyCompanionConnection;
  v2 = [(NFMWhereIsMyCompanionConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NFMWhereIsMyCompanionConnection *)&v2->super.isa serverConnection];
  }

  return v3;
}

- (id)serverConnection
{
  v1 = a1;
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = objc_alloc(MEMORY[0x277CCAE80]);
      v4 = [v3 initWithMachServiceName:NFMFindLocalDeviceServerName options:4096];
      v5 = v1[1];
      v1[1] = v4;

      v6 = v1[1];
      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C6B8F0];
      [v6 setRemoteObjectInterface:v7];

      v8 = v1[1];
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C67E20];
      [v8 setExportedInterface:v9];

      [v1[1] setExportedObject:v1];
      [v1[1] resume];
      v10 = nfm_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = NFMFindLocalDeviceServerName;
        v24 = 2080;
        v25 = "[NFMWhereIsMyCompanionConnection serverConnection]";
        _os_log_impl(&dword_25B17F000, v10, OS_LOG_TYPE_DEFAULT, "########### XPC Connection created: %@ at %s", buf, 0x16u);
      }

      objc_initWeak(buf, v1);
      objc_initWeak(&location, v1[1]);
      v11 = v1[1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke;
      v18[3] = &unk_279933840;
      objc_copyWeak(&v19, buf);
      objc_copyWeak(&v20, &location);
      [v11 setInterruptionHandler:v18];
      v12 = v1[1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke_60;
      v15[3] = &unk_279933840;
      objc_copyWeak(&v16, buf);
      objc_copyWeak(&v17, &location);
      [v12 setInvalidationHandler:v15];
      v1 = v1[1];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)dealloc
{
  [(NFMWhereIsMyCompanionConnection *)self _cleanUpServerConnection:self->_serverConnection];
  v3.receiver = self;
  v3.super_class = NFMWhereIsMyCompanionConnection;
  [(NFMWhereIsMyCompanionConnection *)&v3 dealloc];
}

void __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [WeakRetained _cleanUpServerConnection:v3];
  }

  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = NFMFindLocalDeviceServerName;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### XPC Connection interrupted: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __51__NFMWhereIsMyCompanionConnection_serverConnection__block_invoke_60(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [WeakRetained _cleanUpServerConnection:v3];
  }

  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = NFMFindLocalDeviceServerName;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### XPC Connection invalidated: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpServerConnection:(id)a3
{
  [a3 invalidate];

  [(NFMWhereIsMyCompanionConnection *)self setServerConnection:?];
}

- (void)playSoundOnCompanionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Triggered Play Sound", v10, 2u);
  }

  v6 = [v4 copy];
  playSoundCompletion = self->_playSoundCompletion;
  self->_playSoundCompletion = v6;

  v8 = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  v9 = [v8 remoteObjectProxy];
  [v9 playSoundRemotely];
}

- (void)playSoundAndLightsOnCompanionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Triggered Play Light and Sound", v10, 2u);
  }

  v6 = [v4 copy];
  playSoundAndLEDCompletion = self->_playSoundAndLEDCompletion;
  self->_playSoundAndLEDCompletion = v6;

  v8 = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  v9 = [v8 remoteObjectProxy];
  [v9 playSoundAndFlashRemotely];
}

- (void)startRangingOnPhone
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Start Ranging on Phone", v6, 2u);
  }

  v4 = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  v5 = [v4 remoteObjectProxy];
  [v5 startRangingOnPhone];
}

- (void)stopRangingOnPhone
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Stop Ranging on Phone", v6, 2u);
  }

  v4 = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  v5 = [v4 remoteObjectProxy];
  [v5 stopRangingOnPhone];
}

- (void)playNearbySoundOnPhone
{
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Play Nearby sound on Phone", v6, 2u);
  }

  v4 = [(NFMWhereIsMyCompanionConnection *)&self->super.isa serverConnection];
  v5 = [v4 remoteObjectProxy];
  [v5 playNearbySoundOnPhone];
}

- (void)applicationIdentifierWithReply:(id)a3
{
  v5 = a3;
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"nobundleID-%d", getpid()];
  }

  v5[2](v5, v4);
}

- (void)setServerConnection:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (uint64_t)playSoundCompletion
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setPlaySoundCompletion:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 16);
  }
}

- (uint64_t)playSoundAndLEDCompletion
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setPlaySoundAndLEDCompletion:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 24);
  }
}

@end