@interface NPSOSLogStateProvider
- (NPSOSLogStateProvider)initWithName:(id)a3 maxStringLength:(int64_t)a4 block:(id)a5;
- (void)registerOSLogStateHandlerName:(id)a3 block:(id)a4;
@end

@implementation NPSOSLogStateProvider

- (NPSOSLogStateProvider)initWithName:(id)a3 maxStringLength:(int64_t)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NPSOSLogStateProvider *)self init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.nanoprefsyncd.dump", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    if (a4 >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [NSString stringWithFormat:@"%@.%ld", v8, v14];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100023530;
        v19[3] = &unk_10003D428;
        v16 = v10;
        v20 = v16;
        v21 = v15;
        v22 = v9;
        v23 = v14;
        v17 = v15;
        [(NPSOSLogStateProvider *)v16 registerOSLogStateHandlerName:v17 block:v19];

        ++v14;
        v13 += 15872;
      }

      while (v13 < a4);
    }
  }

  return v10;
}

- (void)registerOSLogStateHandlerName:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = v6;
  v12 = v7;
  v9 = v6;
  v10 = v7;
  os_state_add_handler();
}

@end