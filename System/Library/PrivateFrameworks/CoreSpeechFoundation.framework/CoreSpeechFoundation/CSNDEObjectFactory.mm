@interface CSNDEObjectFactory
+ (id)sharedInstance;
- (CSNDEObjectFactory)init;
- (void)createNDEObject:(id)object;
- (void)destoryNDEObject:(void *)object;
@end

@implementation CSNDEObjectFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)destoryNDEObject:(void *)object
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CSNDEObjectFactory_destoryNDEObject___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = object;
  dispatch_async_and_wait(queue, block);
}

uint64_t __39__CSNDEObjectFactory_destoryNDEObject___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return MEMORY[0x1EEE50848]();
  }

  return result;
}

- (void)createNDEObject:(id)object
{
  objectCopy = object;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CSNDEObjectFactory_createNDEObject___block_invoke;
  v9[3] = &unk_1E865C880;
  v10 = objectCopy;
  v11 = &v12;
  v6 = objectCopy;
  dispatch_async_and_wait(queue, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __38__CSNDEObjectFactory_createNDEObject___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bytes];
  [*(a1 + 32) length];
  result = nde_create();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CSNDEObjectFactory)init
{
  v6.receiver = self;
  v6.super_class = CSNDEObjectFactory;
  v2 = [(CSNDEObjectFactory *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSNDEObjectFactory", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

uint64_t __36__CSNDEObjectFactory_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(CSNDEObjectFactory);

  return MEMORY[0x1EEE66BB8]();
}

@end