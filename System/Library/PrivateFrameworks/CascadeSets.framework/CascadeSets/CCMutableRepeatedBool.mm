@interface CCMutableRepeatedBool
+ (id)new;
- (CCMutableRepeatedBool)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CCMutableRepeatedBool

- (CCMutableRepeatedBool)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedBool;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedBool;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CCRepeatedBool allocWithZone:?];
  v6 = [(CCRepeatedFieldValue *)self values];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end