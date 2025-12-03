@interface NTKPromise
+ (id)metalPipelinePromiseNamed:(id)named withBlock:(id)block;
+ (id)promiseNamed:(id)named withBackgroundPriority:(unsigned int)priority foregroundPriority:(unsigned int)foregroundPriority block:(id)block;
+ (id)promiseNamed:(id)named withBlock:(id)block;
- (NTKPromise)initWithName:(id)name backgroundPriority:(unsigned int)priority foregroundPriority:(unsigned int)foregroundPriority block:(id)block;
- (id)object;
- (void)_beginLoadingBlock:(id)block;
@end

@implementation NTKPromise

+ (id)promiseNamed:(id)named withBlock:(id)block
{
  blockCopy = block;
  namedCopy = named;
  v7 = [[NTKPromise alloc] initWithName:namedCopy block:blockCopy];

  return v7;
}

+ (id)promiseNamed:(id)named withBackgroundPriority:(unsigned int)priority foregroundPriority:(unsigned int)foregroundPriority block:(id)block
{
  v6 = *&foregroundPriority;
  v7 = *&priority;
  blockCopy = block;
  namedCopy = named;
  v11 = [[NTKPromise alloc] initWithName:namedCopy backgroundPriority:v7 foregroundPriority:v6 block:blockCopy];

  return v11;
}

+ (id)metalPipelinePromiseNamed:(id)named withBlock:(id)block
{
  blockCopy = block;
  namedCopy = named;
  v7 = [[NTKPromise alloc] initWithName:namedCopy backgroundPriority:25 foregroundPriority:33 block:blockCopy];

  return v7;
}

- (NTKPromise)initWithName:(id)name backgroundPriority:(unsigned int)priority foregroundPriority:(unsigned int)foregroundPriority block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = NTKPromise;
  v13 = [(NTKPromise *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    v14->_bgPriority = priority;
    v14->_fgPriority = foregroundPriority;
    v14->_lock_promiseState = 0;
    v14->_lock._os_unfair_lock_opaque = 0;
    [(NTKPromise *)v14 _beginLoadingBlock:blockCopy];
  }

  return v14;
}

- (void)_beginLoadingBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_promiseState)
  {
    self->_lock_promiseState = 1;
    objc_initWeak(&location, self);
    bgPriority = self->_bgPriority;
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__NTKPromise__beginLoadingBlock___block_invoke;
    v15 = &unk_278781070;
    objc_copyWeak(&v17, &location);
    v16 = blockCopy;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, bgPriority, 0, &block);
    loaderQueue = self->_loaderQueue;
    if (!loaderQueue)
    {
      v8 = dispatch_queue_attr_make_with_qos_class(0, self->_bgPriority, 0);
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"NTKPromise Queue - %@", self->_name, block, v13, v14, v15];
      v10 = dispatch_queue_create([v9 cStringUsingEncoding:4], v8);
      v11 = self->_loaderQueue;
      self->_loaderQueue = v10;

      loaderQueue = self->_loaderQueue;
    }

    dispatch_async(loaderQueue, v6);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __33__NTKPromise__beginLoadingBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  kdebug_trace();

  v6 = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6[3];
    v6[3] = v3;
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  kdebug_trace();
}

- (id)object
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_promiseState == 1)
  {
    fgPriority = self->_fgPriority;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__NTKPromise_object__block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, fgPriority, 0, block);
    kdebug_trace();
    dispatch_sync(self->_loaderQueue, v4);
    loaderQueue = self->_loaderQueue;
    self->_loaderQueue = 0;
  }

  v6 = self->_lock_loadedObject;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

void __20__NTKPromise_object__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(*(a1 + 32) + 48) = 2;
}

@end