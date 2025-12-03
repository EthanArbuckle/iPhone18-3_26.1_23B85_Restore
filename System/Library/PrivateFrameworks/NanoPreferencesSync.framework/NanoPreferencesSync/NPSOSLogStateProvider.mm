@interface NPSOSLogStateProvider
- (NPSOSLogStateProvider)initWithName:(id)name maxStringLength:(int64_t)length block:(id)block;
- (void)registerOSLogStateHandlerName:(id)name block:(id)block;
@end

@implementation NPSOSLogStateProvider

- (NPSOSLogStateProvider)initWithName:(id)name maxStringLength:(int64_t)length block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v10 = [(NPSOSLogStateProvider *)self init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.nanoprefsyncd.dump", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    if (length >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [NSString stringWithFormat:@"%@.%ld", nameCopy, v14];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100023530;
        v19[3] = &unk_10003D428;
        v16 = v10;
        v20 = v16;
        v21 = v15;
        v22 = blockCopy;
        v23 = v14;
        v17 = v15;
        [(NPSOSLogStateProvider *)v16 registerOSLogStateHandlerName:v17 block:v19];

        ++v14;
        v13 += 15872;
      }

      while (v13 < length);
    }
  }

  return v10;
}

- (void)registerOSLogStateHandlerName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  queue = self->_queue;
  v11 = nameCopy;
  v12 = blockCopy;
  v9 = nameCopy;
  v10 = blockCopy;
  os_state_add_handler();
}

@end