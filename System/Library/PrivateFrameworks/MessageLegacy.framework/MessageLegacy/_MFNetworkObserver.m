@interface _MFNetworkObserver
- (_MFNetworkObserver)initWithBlock:(id)a3 queue:(id)a4;
@end

@implementation _MFNetworkObserver

- (_MFNetworkObserver)initWithBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _MFNetworkObserver;
  v8 = [(_MFNetworkObserver *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_queue, a4);
  }

  return v8;
}

@end