@interface _CSDBThreadObject
- (_CSDBThreadObject)initWithIdentifier:(id)a3 qosClass:(unsigned __int16)a4;
- (void)dealloc;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 afterDelay:(double)a4;
- (void)performBlock:(id)a3 waitUntilDone:(BOOL)a4;
@end

@implementation _CSDBThreadObject

- (_CSDBThreadObject)initWithIdentifier:(id)a3 qosClass:(unsigned __int16)a4
{
  v4 = a4;
  v22.receiver = self;
  v22.super_class = _CSDBThreadObject;
  v7 = [(_CSDBThreadObject *)&v22 init];
  if (v7)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"_CSDBThreadObjectQueue-%@", a3);
    if (v4)
    {
      v11 = objc_msgSend_UTF8String(v8, v9, v10);
      v12 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
      v13 = v11;
    }

    else
    {
      v13 = objc_msgSend_UTF8String(v8, v9, v10);
      v12 = 0;
    }

    v7->_queue = dispatch_queue_create(v13, v12);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_msgSend_initWithFormat_(v14, v15, @"%s-%@", "_CSDBThreadObjectQueueContext", a3);
    v7->_queueContext = v16;
    queue = v7->_queue;
    v20 = objc_msgSend_UTF8String(v16, v18, v19);
    dispatch_queue_set_specific(queue, v20, 1, 0);
    v7->_identifier = a3;
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

- (void)performBlock:(id)a3
{
  if (a3)
  {
    dispatch_async(self->_queue, a3);
  }
}

- (void)performBlock:(id)a3 afterDelay:(double)a4
{
  if (a3)
  {
    v6 = dispatch_time(0, (a4 * 1000000000.0));
    queue = self->_queue;

    dispatch_after(v6, queue, a3);
  }
}

- (void)performBlock:(id)a3 waitUntilDone:(BOOL)a4
{
  if (a4)
  {
    if (a3)
    {
      v6 = objc_msgSend_UTF8String(self->_queueContext, a2, a3);
      if (dispatch_get_specific(v6))
      {
        v7 = *(a3 + 2);

        v7(a3);
      }

      else
      {
        queue = self->_queue;

        dispatch_sync(queue, a3);
      }
    }
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_performBlock_, a3);
  }
}

@end