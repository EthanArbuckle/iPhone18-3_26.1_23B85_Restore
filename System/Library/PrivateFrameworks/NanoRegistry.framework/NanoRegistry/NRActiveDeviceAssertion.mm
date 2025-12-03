@interface NRActiveDeviceAssertion
- (BOOL)isActive;
- (NRDevice)device;
- (id)description;
- (id)initWithDevice:(void *)device identifier:;
- (void)_invalidate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NRActiveDeviceAssertion

- (id)initWithDevice:(void *)device identifier:
{
  v6 = a2;
  deviceCopy = device;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = NRActiveDeviceAssertion;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, device);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.nanoregistry.activeDeviceAssertion.%p", self];
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create([v9 UTF8String], v10);
      v12 = self[3];
      self[3] = v11;
    }
  }

  return self;
}

- (void)dealloc
{
  [(NRActiveDeviceAssertion *)self _invalidate];
  v3.receiver = self;
  v3.super_class = NRActiveDeviceAssertion;
  [(NRActiveDeviceAssertion *)&v3 dealloc];
}

- (void)_invalidate
{
  if (self)
  {
    v2 = +[NRPairedDeviceRegistry sharedInstance];
    [v2 _invalidateActiveDeviceAssertionWithIdentifier:*(self + 16)];
  }
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__NRActiveDeviceAssertion_description__block_invoke;
  v5[3] = &unk_1E86DAE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__NRActiveDeviceAssertion_description__block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 8) valueForProperty:@"pairingID"];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p identifier = %@; pairingID = %@>", objc_opt_class(), v2, *(v2 + 16), v6];;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isActive
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  LOBYTE(self) = [v3 isAssertionActive:self->_identifier];

  return self;
}

- (NRDevice)device
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NRActiveDeviceAssertion_device__block_invoke;
  v5[3] = &unk_1E86DB8F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NRActiveDeviceAssertion_invalidate__block_invoke;
  block[3] = &unk_1E86DAE98;
  block[4] = self;
  dispatch_async(queue, block);
}

@end