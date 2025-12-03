@interface CCMutableRepeatedUInt64
+ (id)new;
- (CCMutableRepeatedUInt64)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendUInt64Value:(unint64_t)value;
@end

@implementation CCMutableRepeatedUInt64

- (CCMutableRepeatedUInt64)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedUInt64;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedUInt64;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendUInt64Value:(unint64_t)value
{
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:value];
  [values addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedUInt64 allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end