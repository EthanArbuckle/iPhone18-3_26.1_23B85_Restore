@interface XRFrameActivityBlockAgent
- (XRFrameActivityBlockAgent)initWithBlock:(id)a3;
- (id)operationRepresentation;
- (void)dealloc;
- (void)executeStopOnItinerary:(id)a3;
@end

@implementation XRFrameActivityBlockAgent

- (XRFrameActivityBlockAgent)initWithBlock:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = XRFrameActivityBlockAgent;
  v9 = [(XRFrameActivityBlockAgent *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    block = v9->_block;
    v9->_block = v10;
  }

  return v9;
}

- (void)dealloc
{
  p_opPtr = &self->_opPtr;
  v4 = -1;
  atomic_compare_exchange_strong(&self->_opPtr, &v4, v4);
  if (v4 != -1)
  {
    do
    {
      if (v4)
      {
        if (v4 == -1)
        {
          sub_2480B459C();
        }
      }

      v5 = v4;
      atomic_compare_exchange_strong(p_opPtr, &v5, 0xFFFFFFFFFFFFFFFFLL);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }

  v7.receiver = self;
  v7.super_class = XRFrameActivityBlockAgent;
  [(XRFrameActivityBlockAgent *)&v7 dealloc];
}

- (void)executeStopOnItinerary:(id)a3
{
  v4 = a3;
  v13 = objc_msgSend_mode(self, v5, v6, v7, v8);
  if (v13 == @"Activating")
  {
    if (objc_msgSend_movementType(self, v9, v10, v11, v12) == 1)
    {
      v29.receiver = self;
      v29.super_class = XRFrameActivityBlockAgent;
      [(XRMobileAgent *)&v29 executeStopOnItinerary:v4];
    }

    if (atomic_load_explicit(self->_yieldNow, memory_order_acquire))
    {
      objc_msgSend_revisit(v4, v14, v15, v16, v17);
    }

    else
    {
      yieldNow = self->_yieldNow;
      (*(self->_block + 2))();
      v22 = 0;
      atomic_compare_exchange_strong(&self->_opPtr, &v22, 0xFFFFFFFFFFFFFFFFLL);
      if (v22)
      {
        if (v22 == -1)
        {
          __assert_rtn("[XRFrameActivityBlockAgent executeStopOnItinerary:]", "XRFrameActivityBlockAgent.m", 81, "current != FINISHED_OPERATION");
        }

        v23 = v22;
        objc_msgSend_start(v23, v24, v25, v26, v27);
      }

      objc_msgSend_finishedWithMode_(v4, v19, @"Finished", v20, v21);
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = XRFrameActivityBlockAgent;
    [(XRMobileAgent *)&v28 executeStopOnItinerary:v4];
  }
}

- (id)operationRepresentation
{
  v3 = objc_opt_new();
  v8 = v3;
  v9 = 0;
  atomic_compare_exchange_strong(&self->_opPtr, &v9, v3);
  if (v9)
  {
    if (v9 == -1)
    {
      objc_msgSend_start(v3, v4, v5, v6, v7);
    }

    else
    {
      v10 = v9;

      v8 = v10;
    }
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

@end