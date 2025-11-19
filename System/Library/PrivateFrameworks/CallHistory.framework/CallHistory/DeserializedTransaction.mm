@interface DeserializedTransaction
- (DeserializedTransaction)initWithCall:(id)a3 andType:(unint64_t)a4;
@end

@implementation DeserializedTransaction

- (DeserializedTransaction)initWithCall:(id)a3 andType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DeserializedTransaction;
  v8 = [(DeserializedTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_call, a3);
    v9->_type = a4;
  }

  return v9;
}

@end