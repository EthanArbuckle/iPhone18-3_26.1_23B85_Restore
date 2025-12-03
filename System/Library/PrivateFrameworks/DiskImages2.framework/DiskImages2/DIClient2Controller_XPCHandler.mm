@interface DIClient2Controller_XPCHandler
- (BOOL)GUIAskForPassphraseWithEncryptionFrontend:(id)frontend usage:(int64_t)usage error:(id *)error;
- (BOOL)connectWithError:(id *)error;
- (BOOL)createAndStoreInSystemKeychainWithCreator:(id)creator account:(id)account error:(id *)error;
- (BOOL)keychainUnlockWithEncryptionUnlocker:(id)unlocker error:(id *)error;
- (id)newAttachWithParams:(id)params error:(id *)error;
@end

@implementation DIClient2Controller_XPCHandler

- (BOOL)connectWithError:(id *)error
{
  v7.receiver = self;
  v7.super_class = DIClient2Controller_XPCHandler;
  v5 = [(DIBaseXPCHandler *)&v7 connectWithError:?];
  if (v5)
  {
    if (DIForwardLogs())
    {
      LOBYTE(v5) = [(DIBaseXPCHandler *)self dupStderrWithError:error];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)newAttachWithParams:(id)params error:(id *)error
{
  paramsCopy = params;
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(DIController2ClientDelegate);
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285C13438];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setExportedInterface:v8];

  connection2 = [(DIBaseXPCHandler *)self connection];
  [connection2 setExportedObject:v7];

  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __60__DIClient2Controller_XPCHandler_newAttachWithParams_error___block_invoke;
  v17 = &unk_278F80AA0;
  objc_copyWeak(&v18, &location);
  [remoteProxy attachWithParams:paramsCopy reply:&v14];

  if ([(DIBaseXPCHandler *)self completeCommandWithError:error, v14, v15, v16, v17])
  {
    deviceHandle = [(DIController2ClientDelegate *)v7 deviceHandle];
  }

  else
  {
    deviceHandle = 0;
  }

  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
  return deviceHandle;
}

- (BOOL)keychainUnlockWithEncryptionUnlocker:(id)unlocker error:(id *)error
{
  unlockerCopy = unlocker;
  objc_initWeak(&location, self);
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__DIClient2Controller_XPCHandler_keychainUnlockWithEncryptionUnlocker_error___block_invoke;
  v10[3] = &unk_278F80B10;
  objc_copyWeak(&v12, &location);
  v8 = unlockerCopy;
  v11 = v8;
  [remoteProxy keychainUnlockWithEncryptionUnlocker:v8 reply:v10];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return error;
}

- (BOOL)GUIAskForPassphraseWithEncryptionFrontend:(id)frontend usage:(int64_t)usage error:(id *)error
{
  frontendCopy = frontend;
  objc_initWeak(&location, self);
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DIClient2Controller_XPCHandler_GUIAskForPassphraseWithEncryptionFrontend_usage_error___block_invoke;
  v12[3] = &unk_278F80B10;
  objc_copyWeak(&v14, &location);
  v10 = frontendCopy;
  v13 = v10;
  [remoteProxy GUIAskForPassphraseWithEncryptionFrontend:v10 usage:usage reply:v12];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return error;
}

- (BOOL)createAndStoreInSystemKeychainWithCreator:(id)creator account:(id)account error:(id *)error
{
  creatorCopy = creator;
  accountCopy = account;
  objc_initWeak(&location, self);
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__DIClient2Controller_XPCHandler_createAndStoreInSystemKeychainWithCreator_account_error___block_invoke;
  v13[3] = &unk_278F80B38;
  objc_copyWeak(&v15, &location);
  v11 = creatorCopy;
  v14 = v11;
  [remoteProxy createAndStoreInSystemKeychainWithCreator:v11 account:accountCopy reply:v13];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return error;
}

@end