@interface BCSCoalesceObjectData
- (BCSCoalesceObjectData)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4;
@end

@implementation BCSCoalesceObjectData

- (BCSCoalesceObjectData)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectData;
  v8 = [(BCSCoalesceObjectData *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    dataCompletionBlock = v8->_dataCompletionBlock;
    v8->_dataCompletionBlock = v9;

    v11 = [v7 copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end