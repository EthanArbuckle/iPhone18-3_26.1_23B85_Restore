@interface NPKPerishableValue
- (NPKPerishableValue)initWithValue:(id)value isStale:(BOOL)stale;
@end

@implementation NPKPerishableValue

- (NPKPerishableValue)initWithValue:(id)value isStale:(BOOL)stale
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = NPKPerishableValue;
  v8 = [(NPKPerishableValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_isStale = stale;
  }

  return v9;
}

@end