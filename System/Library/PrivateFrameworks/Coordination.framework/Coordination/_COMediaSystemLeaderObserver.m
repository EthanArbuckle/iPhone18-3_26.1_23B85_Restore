@interface _COMediaSystemLeaderObserver
- (_COMediaSystemLeaderObserver)initWithDispatchQueue:(id)a3 block:(id)a4;
@end

@implementation _COMediaSystemLeaderObserver

- (_COMediaSystemLeaderObserver)initWithDispatchQueue:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _COMediaSystemLeaderObserver;
  v9 = [(_COMediaSystemLeaderObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    v11 = [v8 copy];
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

@end