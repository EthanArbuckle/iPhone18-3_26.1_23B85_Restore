@interface KVFieldValue
- (KVFieldValue)initWithFieldType:(int64_t)type value:(id)value;
@end

@implementation KVFieldValue

- (KVFieldValue)initWithFieldType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = KVFieldValue;
  v8 = [(KVFieldValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_fieldType = type;
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

@end