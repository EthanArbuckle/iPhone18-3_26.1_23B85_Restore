@interface CCMutableRepeatedUInt64
+ (id)new;
- (CCMutableRepeatedUInt64)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendUInt64Value:(unint64_t)a3;
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
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedUInt64;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendUInt64Value:(unint64_t)a3
{
  v5 = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a3];
  [v5 addObject:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CCRepeatedUInt64 allocWithZone:?];
  v6 = [(CCRepeatedFieldValue *)self values];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end