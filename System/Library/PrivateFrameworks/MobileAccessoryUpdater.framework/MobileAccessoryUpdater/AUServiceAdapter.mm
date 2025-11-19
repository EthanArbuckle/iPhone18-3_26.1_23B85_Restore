@interface AUServiceAdapter
+ (id)sharedInstance;
- (id)_init;
- (void)accessoryDisconnected:(id)a3;
- (void)applyFirmwareWithOptions:(id)a3;
- (void)bootstrapWithOptions:(id)a3;
- (void)deviceClassAttached:(id)a3 options:(id)a4 withReply:(id)a5;
- (void)downloadFirmwareWithOptions:(id)a3;
- (void)finishWithOptions:(id)a3;
- (void)issueNotification:(id)a3;
- (void)personalizationRequest:(id)a3;
- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5;
- (void)prepareFirmwareWithOptions:(id)a3;
- (void)progress:(double)a3;
- (void)queryDeviceList:(id)a3;
- (void)reportAnalytics:(id)a3 info:(id)a4;
@end

@implementation AUServiceAdapter

- (id)_init
{
  v5.receiver = self;
  v5.super_class = AUServiceAdapter;
  v2 = [(AUServiceAdapter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_activeConnection = 0;
  }

  else
  {
    NSLog(&cfstr_SErrorCouldNot.isa, "[AUServiceAdapter _init]");
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AUServiceAdapter_sharedInstance__block_invoke;
  block[3] = &unk_2798E3658;
  block[4] = a1;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  return sharedInstance_sharedInstance;
}

uint64_t __34__AUServiceAdapter_sharedInstance__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _init];
  sharedInstance_sharedInstance = result;
  return result;
}

- (void)deviceClassAttached:(id)a3 options:(id)a4 withReply:(id)a5
{
  v12 = 0;
  v9 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (([(objc_class *)v9 conformsToProtocol:&unk_286AB9150]& 1) != 0)
  {
    updater = [[v9 alloc] initWithDeviceClass:a3 delegate:self info:&v12 options:a4];
    self->_updater = updater;
    v11 = v12;
  }

  else
  {
    NSLog(&cfstr_SErrorPrincipa.isa, "[AUServiceAdapter deviceClassAttached:options:withReply:]");
    v11 = 0;
    updater = self->_updater;
  }

  (*(a5 + 2))(a5, updater != 0, v11);
}

- (void)bootstrapWithOptions:(id)a3
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater bootstrapWithOptions:a3];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, a3, "[AUServiceAdapter bootstrapWithOptions:]");
  }
}

- (void)downloadFirmwareWithOptions:(id)a3
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater downloadFirmwareWithOptions:a3];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, a3, "[AUServiceAdapter downloadFirmwareWithOptions:]");
  }
}

- (void)prepareFirmwareWithOptions:(id)a3
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater prepareFirmwareWithOptions:a3];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, a3, "[AUServiceAdapter prepareFirmwareWithOptions:]");
  }
}

- (void)applyFirmwareWithOptions:(id)a3
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater applyFirmwareWithOptions:a3];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, a3, "[AUServiceAdapter applyFirmwareWithOptions:]");
  }
}

- (void)finishWithOptions:(id)a3
{
  updater = self->_updater;
  if (updater)
  {

    [(FudPlugin *)updater finishWithOptions:a3];
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, a3, "[AUServiceAdapter finishWithOptions:]");
  }
}

- (void)queryDeviceList:(id)a3
{
  v8 = 0;
  updater = self->_updater;
  if (!updater)
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, "[AUServiceAdapter queryDeviceList:]");
LABEL_7:
    v7 = 0;
    goto LABEL_4;
  }

  if (([(FudPlugin *)updater conformsToProtocol:&unk_286AB91B0]& 1) == 0)
  {
    NSLog(&cfstr_SPluginDoesSup.isa, v6, "[AUServiceAdapter queryDeviceList:]");
    goto LABEL_7;
  }

  [(FudPlugin *)self->_updater queryDeviceList:&v8];
  v7 = v8;
LABEL_4:
  (*(a3 + 2))(a3, v7);
}

- (void)personalizationResponse:(id)a3 response:(id)a4 status:(id)a5
{
  updater = self->_updater;
  if (updater)
  {
    if (([(FudPlugin *)updater conformsToProtocol:&unk_286AB9210]& 1) != 0)
    {
      v14 = self->_updater;

      [(FudPlugin *)v14 personalizationResponse:a3 response:a4 status:a5];
    }

    else
    {
      NSLog(&cfstr_SPluginDoesSup_0.isa, v10, v11, v12, v13, "[AUServiceAdapter personalizationResponse:response:status:]");
    }
  }

  else
  {
    NSLog(&cfstr_SPluginNotLoad.isa, a2, a3, a4, a5, "[AUServiceAdapter personalizationResponse:response:status:]");
  }
}

- (void)accessoryDisconnected:(id)a3
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global];

  [v4 accessoryDisconnected:a3];
}

- (void)personalizationRequest:(id)a3
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_183];

  [v4 personalizationRequest:a3];
}

- (void)progress:(double)a3
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_185];

  [v4 progress:a3];
}

- (void)reportAnalytics:(id)a3 info:(id)a4
{
  v6 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_187];

  [v6 reportAnalytics:a3 info:a4];
}

- (void)issueNotification:(id)a3
{
  v4 = [(NSXPCConnection *)self->_activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_189];

  [v4 issueNotification:a3];
}

@end