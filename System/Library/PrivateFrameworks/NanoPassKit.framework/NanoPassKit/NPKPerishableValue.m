@interface NPKPerishableValue
- (NPKPerishableValue)initWithValue:(id)a3 isStale:(BOOL)a4;
@end

@implementation NPKPerishableValue

- (NPKPerishableValue)initWithValue:(id)a3 isStale:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NPKPerishableValue;
  v8 = [(NPKPerishableValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    v9->_isStale = a4;
  }

  return v9;
}

@end