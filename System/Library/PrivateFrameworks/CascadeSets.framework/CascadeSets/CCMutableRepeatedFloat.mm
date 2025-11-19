@interface CCMutableRepeatedFloat
+ (id)new;
- (CCMutableRepeatedFloat)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendFloatValue:(float)a3;
@end

@implementation CCMutableRepeatedFloat

- (CCMutableRepeatedFloat)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedFloat;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedFloat;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendFloatValue:(float)a3
{
  v7 = [(CCRepeatedFieldValue *)self values];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = a3;
  v6 = [v4 initWithFloat:v5];
  [v7 addObject:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CCRepeatedFloat allocWithZone:?];
  v6 = [(CCRepeatedFieldValue *)self values];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end