@interface CCMutableRepeatedInt64
+ (id)new;
- (CCMutableRepeatedInt64)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendInt64Value:(int64_t)value;
@end

@implementation CCMutableRepeatedInt64

- (CCMutableRepeatedInt64)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedInt64;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedInt64;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendInt64Value:(int64_t)value
{
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:value];
  [values addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedInt64 allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end