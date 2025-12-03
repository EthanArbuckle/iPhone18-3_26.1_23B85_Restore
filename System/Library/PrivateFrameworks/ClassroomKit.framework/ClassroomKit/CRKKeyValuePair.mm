@interface CRKKeyValuePair
- (CRKKeyValuePair)initWithKey:(id)key value:(id)value;
@end

@implementation CRKKeyValuePair

- (CRKKeyValuePair)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = CRKKeyValuePair;
  v9 = [(CRKKeyValuePair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end