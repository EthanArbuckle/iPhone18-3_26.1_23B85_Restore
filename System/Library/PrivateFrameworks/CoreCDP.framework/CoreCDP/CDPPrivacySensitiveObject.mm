@interface CDPPrivacySensitiveObject
+ (id)sensitiveObjectWrappingObject:(id)object;
- (CDPPrivacySensitiveObject)initWithObject:(id)object;
@end

@implementation CDPPrivacySensitiveObject

- (CDPPrivacySensitiveObject)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = CDPPrivacySensitiveObject;
  v6 = [(CDPPrivacySensitiveObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedObject, object);
  }

  return v7;
}

+ (id)sensitiveObjectWrappingObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithObject:objectCopy];

  return v4;
}

@end