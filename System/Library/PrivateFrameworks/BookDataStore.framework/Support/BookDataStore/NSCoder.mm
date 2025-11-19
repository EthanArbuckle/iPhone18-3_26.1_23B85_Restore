@interface NSCoder
- (id)bds_decodeArrayOfObjectsOfClass:(Class)a3 forKey:(id)a4;
@end

@implementation NSCoder

- (id)bds_decodeArrayOfObjectsOfClass:(Class)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [NSSet setWithObjects:objc_opt_class(), a3, 0];
  v8 = [(NSCoder *)self decodeObjectOfClasses:v7 forKey:v6];

  objc_opt_class();
  v9 = BUDynamicCast();

  return v9;
}

@end