@interface IMPurgableObject
- (IMPurgableObject)initWithSetupBlock:(id)block cleanupBlock:(id)cleanupBlock queue:(id)queue;
- (id)instance;
- (void)_cleanupInstance;
- (void)_setupInstance;
- (void)dealloc;
@end

@implementation IMPurgableObject

- (IMPurgableObject)initWithSetupBlock:(id)block cleanupBlock:(id)cleanupBlock queue:(id)queue
{
  blockCopy = block;
  cleanupBlockCopy = cleanupBlock;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = IMPurgableObject;
  v13 = [(IMPurgableObject *)&v21 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(cleanupBlockCopy, v11, v12);
    cleanupBlock = v13->_cleanupBlock;
    v13->_cleanupBlock = v14;

    v18 = objc_msgSend_copy(blockCopy, v16, v17);
    setupBlock = v13->_setupBlock;
    v13->_setupBlock = v18;

    if (queueCopy)
    {
      objc_storeStrong(&v13->_queue, queue);
    }
  }

  return v13;
}

- (void)dealloc
{
  objc_msgSend__cleanupInstance(self, a2, v2);
  v4.receiver = self;
  v4.super_class = IMPurgableObject;
  [(IMPurgableObject *)&v4 dealloc];
}

- (void)_setupInstance
{
  if (!self->_instanceObject)
  {
    setupBlock = self->_setupBlock;
    if (setupBlock)
    {
      v4 = setupBlock[2](setupBlock, a2);
      instanceObject = self->_instanceObject;
      self->_instanceObject = v4;

      MEMORY[0x1EEE66BB8]();
    }
  }
}

- (void)_cleanupInstance
{
  if (self->_instanceObject)
  {
    if (self->_cleanupBlock)
    {
      queue = self->_queue;
      if (queue)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1959CE188;
        block[3] = &unk_1E7438888;
        block[4] = self;
        dispatch_sync(queue, block);
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = sub_1959CE1A0;
        v5[3] = &unk_1E7438888;
        v5[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v5);
      }
    }

    instanceObject = self->_instanceObject;
    self->_instanceObject = 0;
  }
}

- (id)instance
{
  objc_msgSend__setupInstance(self, a2, v2);
  instanceObject = self->_instanceObject;

  return instanceObject;
}

@end