@interface DeserializedTransaction
- (DeserializedTransaction)initWithCall:(id)call andType:(unint64_t)type;
@end

@implementation DeserializedTransaction

- (DeserializedTransaction)initWithCall:(id)call andType:(unint64_t)type
{
  callCopy = call;
  v11.receiver = self;
  v11.super_class = DeserializedTransaction;
  v8 = [(DeserializedTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_call, call);
    v9->_type = type;
  }

  return v9;
}

@end