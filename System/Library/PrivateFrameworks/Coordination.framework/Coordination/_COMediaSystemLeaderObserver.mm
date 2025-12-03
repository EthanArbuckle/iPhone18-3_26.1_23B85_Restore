@interface _COMediaSystemLeaderObserver
- (_COMediaSystemLeaderObserver)initWithDispatchQueue:(id)queue block:(id)block;
@end

@implementation _COMediaSystemLeaderObserver

- (_COMediaSystemLeaderObserver)initWithDispatchQueue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _COMediaSystemLeaderObserver;
  v9 = [(_COMediaSystemLeaderObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    v11 = [blockCopy copy];
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end