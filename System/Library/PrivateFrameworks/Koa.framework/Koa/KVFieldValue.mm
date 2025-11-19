@interface KVFieldValue
- (KVFieldValue)initWithFieldType:(int64_t)a3 value:(id)a4;
@end

@implementation KVFieldValue

- (KVFieldValue)initWithFieldType:(int64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = KVFieldValue;
  v8 = [(KVFieldValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_fieldType = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

@end