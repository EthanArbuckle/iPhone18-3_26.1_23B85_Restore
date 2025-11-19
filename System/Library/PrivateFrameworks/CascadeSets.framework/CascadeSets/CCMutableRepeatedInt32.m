@interface CCMutableRepeatedInt32
+ (id)new;
- (CCMutableRepeatedInt32)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CCMutableRepeatedInt32

- (CCMutableRepeatedInt32)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedInt32;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedInt32;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CCRepeatedInt32 allocWithZone:?];
  v6 = [(CCRepeatedFieldValue *)self values];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end