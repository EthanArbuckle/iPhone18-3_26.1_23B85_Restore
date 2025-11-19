@interface CDPPrivacySensitiveObject
+ (id)sensitiveObjectWrappingObject:(id)a3;
- (CDPPrivacySensitiveObject)initWithObject:(id)a3;
@end

@implementation CDPPrivacySensitiveObject

- (CDPPrivacySensitiveObject)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDPPrivacySensitiveObject;
  v6 = [(CDPPrivacySensitiveObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedObject, a3);
  }

  return v7;
}

+ (id)sensitiveObjectWrappingObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithObject:v3];

  return v4;
}

@end