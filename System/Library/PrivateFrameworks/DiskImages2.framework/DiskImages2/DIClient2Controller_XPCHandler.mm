@interface DIClient2Controller_XPCHandler
- (BOOL)GUIAskForPassphraseWithEncryptionFrontend:(id)a3 usage:(int64_t)a4 error:(id *)a5;
- (BOOL)connectWithError:(id *)a3;
- (BOOL)createAndStoreInSystemKeychainWithCreator:(id)a3 account:(id)a4 error:(id *)a5;
- (BOOL)keychainUnlockWithEncryptionUnlocker:(id)a3 error:(id *)a4;
- (id)newAttachWithParams:(id)a3 error:(id *)a4;
@end

@implementation DIClient2Controller_XPCHandler

- (BOOL)connectWithError:(id *)a3
{
  v7.receiver = self;
  v7.super_class = DIClient2Controller_XPCHandler;
  v5 = [(DIBaseXPCHandler *)&v7 connectWithError:?];
  if (v5)
  {
    if (DIForwardLogs())
    {
      LOBYTE(v5) = [(DIBaseXPCHandler *)self dupStderrWithError:a3];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)newAttachWithParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(DIController2ClientDelegate);
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285C13438];
  v9 = [(DIBaseXPCHandler *)self connection];
  [v9 setExportedInterface:v8];

  v10 = [(DIBaseXPCHandler *)self connection];
  [v10 setExportedObject:v7];

  v11 = [(DIBaseXPCHandler *)self remoteProxy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __60__DIClient2Controller_XPCHandler_newAttachWithParams_error___block_invoke;
  v17 = &unk_278F80AA0;
  objc_copyWeak(&v18, &location);
  [v11 attachWithParams:v6 reply:&v14];

  if ([(DIBaseXPCHandler *)self completeCommandWithError:a4, v14, v15, v16, v17])
  {
    v12 = [(DIController2ClientDelegate *)v7 deviceHandle];
  }

  else
  {
    v12 = 0;
  }

  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
  return v12;
}

- (BOOL)keychainUnlockWithEncryptionUnlocker:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(DIBaseXPCHandler *)self remoteProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__DIClient2Controller_XPCHandler_keychainUnlockWithEncryptionUnlocker_error___block_invoke;
  v10[3] = &unk_278F80B10;
  objc_copyWeak(&v12, &location);
  v8 = v6;
  v11 = v8;
  [v7 keychainUnlockWithEncryptionUnlocker:v8 reply:v10];

  LOBYTE(a4) = [(DIBaseXPCHandler *)self completeCommandWithError:a4];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return a4;
}

- (BOOL)GUIAskForPassphraseWithEncryptionFrontend:(id)a3 usage:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [(DIBaseXPCHandler *)self remoteProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__DIClient2Controller_XPCHandler_GUIAskForPassphraseWithEncryptionFrontend_usage_error___block_invoke;
  v12[3] = &unk_278F80B10;
  objc_copyWeak(&v14, &location);
  v10 = v8;
  v13 = v10;
  [v9 GUIAskForPassphraseWithEncryptionFrontend:v10 usage:a4 reply:v12];

  LOBYTE(a5) = [(DIBaseXPCHandler *)self completeCommandWithError:a5];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return a5;
}

- (BOOL)createAndStoreInSystemKeychainWithCreator:(id)a3 account:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = [(DIBaseXPCHandler *)self remoteProxy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__DIClient2Controller_XPCHandler_createAndStoreInSystemKeychainWithCreator_account_error___block_invoke;
  v13[3] = &unk_278F80B38;
  objc_copyWeak(&v15, &location);
  v11 = v8;
  v14 = v11;
  [v10 createAndStoreInSystemKeychainWithCreator:v11 account:v9 reply:v13];

  LOBYTE(a5) = [(DIBaseXPCHandler *)self completeCommandWithError:a5];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return a5;
}

@end