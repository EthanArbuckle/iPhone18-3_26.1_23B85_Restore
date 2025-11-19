@interface DataRelayDaemon
+ (id)sharedDataRelayInstance;
- (DataRelayDaemon)init;
- (void)activate;
- (void)handleXPCDisconnected:(unsigned int)a3;
- (void)informDRClientSensorDataAvailable:(id)a3 dataTypes:(unint64_t)a4 connectionID:(unsigned int)a5 completion:(id)a6;
- (void)informDRClientSensorDataUnavailable:(id)a3 dataTypes:(unint64_t)a4 connectionID:(unsigned int)a5 completion:(id)a6;
- (void)invalidate;
@end

@implementation DataRelayDaemon

+ (id)sharedDataRelayInstance
{
  if (sharedDataRelayInstance_dispatchOnce != -1)
  {
    +[DataRelayDaemon sharedDataRelayInstance];
  }

  v3 = sharedDataRelayInstance_sharedInstance;

  return v3;
}

uint64_t __42__DataRelayDaemon_sharedDataRelayInstance__block_invoke()
{
  sharedDataRelayInstance_sharedInstance = objc_alloc_init(DataRelayDaemon);

  return MEMORY[0x2821F96F8]();
}

- (void)activate
{
  dispatchQueue = self->dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DataRelayDaemon_activate__block_invoke;
  block[3] = &unk_278F4EF18;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__DataRelayDaemon_activate__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(DRServerManager);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8]();
}

- (DataRelayDaemon)init
{
  v7.receiver = self;
  v7.super_class = DataRelayDaemon;
  v2 = [(DataRelayDaemon *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.DataRelay.queue", v3);
    dispatchQueue = v2->dispatchQueue;
    v2->dispatchQueue = v4;
  }

  return v2;
}

- (void)handleXPCDisconnected:(unsigned int)a3
{
  dispatchQueue = self->dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__DataRelayDaemon_handleXPCDisconnected___block_invoke;
  v4[3] = &unk_278F4EF40;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)informDRClientSensorDataAvailable:(id)a3 dataTypes:(unint64_t)a4 connectionID:(unsigned int)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  dispatchQueue = self->dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DataRelayDaemon_informDRClientSensorDataAvailable_dataTypes_connectionID_completion___block_invoke;
  block[3] = &unk_278F4EF68;
  block[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v18 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(dispatchQueue, block);
}

- (void)informDRClientSensorDataUnavailable:(id)a3 dataTypes:(unint64_t)a4 connectionID:(unsigned int)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  dispatchQueue = self->dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__DataRelayDaemon_informDRClientSensorDataUnavailable_dataTypes_connectionID_completion___block_invoke;
  block[3] = &unk_278F4EF68;
  block[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v18 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  if (gLogCategory_DataRelayDaemon <= 90 && (gLogCategory_DataRelayDaemon != -1 || _LogCategory_Initialize()))
  {
    [DataRelayDaemon invalidate];
  }
}

@end