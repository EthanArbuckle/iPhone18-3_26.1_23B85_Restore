@interface HAP2CoAPIOThreadQueueEntry
- (id)initWithConsumer:(void *)a3 operationType:(void *)a4 sessionBlock:(void *)a5 timeout:(double)a6 activity:;
- (int64_t)compare:(id)a3;
@end

@implementation HAP2CoAPIOThreadQueueEntry

- (id)initWithConsumer:(void *)a3 operationType:(void *)a4 sessionBlock:(void *)a5 timeout:(double)a6 activity:
{
  v12 = a2;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = HAP2CoAPIOThreadQueueEntry;
    v15 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      a1[2] = a3;
      v16 = MEMORY[0x231885210](v13);
      v17 = a1[3];
      a1[3] = v16;

      *(a1 + 4) = a6;
      objc_storeStrong(a1 + 5, a5);
    }
  }

  return a1;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  timeout = 0.0;
  if (self)
  {
    timeout = self->_timeout;
  }

  if (v4)
  {
    v5 = v4[4];
  }

  if (timeout >= v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end