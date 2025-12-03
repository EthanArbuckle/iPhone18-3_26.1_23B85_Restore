@interface _CSDBThreadObject
- (_CSDBThreadObject)initWithIdentifier:(id)identifier qosClass:(unsigned __int16)class;
- (void)dealloc;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block afterDelay:(double)delay;
- (void)performBlock:(id)block waitUntilDone:(BOOL)done;
@end

@implementation _CSDBThreadObject

- (_CSDBThreadObject)initWithIdentifier:(id)identifier qosClass:(unsigned __int16)class
{
  classCopy = class;
  v22.receiver = self;
  v22.super_class = _CSDBThreadObject;
  v7 = [(_CSDBThreadObject *)&v22 init];
  if (v7)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"_CSDBThreadObjectQueue-%@", identifier);
    if (classCopy)
    {
      v11 = objc_msgSend_UTF8String(v8, v9, v10);
      v12 = dispatch_queue_attr_make_with_qos_class(0, classCopy, 0);
      v13 = v11;
    }

    else
    {
      v13 = objc_msgSend_UTF8String(v8, v9, v10);
      v12 = 0;
    }

    v7->_queue = dispatch_queue_create(v13, v12);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_msgSend_initWithFormat_(v14, v15, @"%s-%@", "_CSDBThreadObjectQueueContext", identifier);
    v7->_queueContext = v16;
    queue = v7->_queue;
    v20 = objc_msgSend_UTF8String(v16, v18, v19);
    dispatch_queue_set_specific(queue, v20, 1, 0);
    v7->_identifier = identifier;
  }

  return v7;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = _CSDBThreadObject;
  [(_CSDBThreadObject *)&v4 dealloc];
}

- (void)performBlock:(id)block
{
  if (block)
  {
    dispatch_async(self->_queue, block);
  }
}

- (void)performBlock:(id)block afterDelay:(double)delay
{
  if (block)
  {
    v6 = dispatch_time(0, (delay * 1000000000.0));
    queue = self->_queue;

    dispatch_after(v6, queue, block);
  }
}

- (void)performBlock:(id)block waitUntilDone:(BOOL)done
{
  if (done)
  {
    if (block)
    {
      v6 = objc_msgSend_UTF8String(self->_queueContext, a2, block);
      if (dispatch_get_specific(v6))
      {
        v7 = *(block + 2);

        v7(block);
      }

      else
      {
        queue = self->_queue;

        dispatch_sync(queue, block);
      }
    }
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_performBlock_, block);
  }
}

@end