@interface XRFollowUpBlock
- (XRFollowUpBlock)initWithBlock:(id)block operation:(id)operation;
- (void)go;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation XRFollowUpBlock

- (XRFollowUpBlock)initWithBlock:(id)block operation:(id)operation
{
  blockCopy = block;
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = XRFollowUpBlock;
  v8 = [(XRFollowUpBlock *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x24C1C5B20](blockCopy);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_op, operation);
  }

  return v8;
}

- (void)go
{
  objc_storeStrong(&self->_myselfOrNil, self);
  v8 = self->_op;
  objc_msgSend_addObserver_forKeyPath_options_context_(v8, v3, self, @"isFinished", 1, qword_27EE85EC0);
  if (objc_msgSend_isFinished(v8, v4, v5, v6, v7))
  {
    sub_24808D308(self);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (qword_27EE85EC0 == context)
  {
    v14 = objectCopy;
    v9 = objectCopy;
    if (objc_msgSend_isFinished(v9, v10, v11, v12, v13))
    {
      sub_24808D308(self);
    }

    objectCopy = v14;
  }
}

@end