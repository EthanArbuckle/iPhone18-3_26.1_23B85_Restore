@interface CCMutableRepeatedUInt32
+ (id)new;
- (CCMutableRepeatedUInt32)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CCMutableRepeatedUInt32

- (CCMutableRepeatedUInt32)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedUInt32;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedUInt32;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CCRepeatedUInt32 allocWithZone:?];
  v6 = [(CCRepeatedFieldValue *)self values];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end