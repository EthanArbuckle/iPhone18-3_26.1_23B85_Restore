@interface IDSDaemonResponseHandler
- (IDSDaemonResponseHandler)initWithBlock:(id)a3 queue:(id)a4 isSync:(BOOL)a5;
@end

@implementation IDSDaemonResponseHandler

- (IDSDaemonResponseHandler)initWithBlock:(id)a3 queue:(id)a4 isSync:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = IDSDaemonResponseHandler;
  v10 = [(IDSDaemonResponseHandler *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a4);
    v12 = [v8 copy];
    block = v11->_block;
    v11->_block = v12;

    v11->_isSync = a5;
  }

  return v11;
}

@end