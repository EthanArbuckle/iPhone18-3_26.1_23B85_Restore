@interface NSCoder
- (id)bds_decodeArrayOfObjectsOfClass:(Class)class forKey:(id)key;
@end

@implementation NSCoder

- (id)bds_decodeArrayOfObjectsOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  v7 = [NSSet setWithObjects:objc_opt_class(), class, 0];
  v8 = [(NSCoder *)self decodeObjectOfClasses:v7 forKey:keyCopy];

  objc_opt_class();
  v9 = BUDynamicCast();

  return v9;
}

@end