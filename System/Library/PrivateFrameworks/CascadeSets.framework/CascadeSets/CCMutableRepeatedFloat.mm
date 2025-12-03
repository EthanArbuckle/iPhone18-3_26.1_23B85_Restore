@interface CCMutableRepeatedFloat
+ (id)new;
- (CCMutableRepeatedFloat)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendFloatValue:(float)value;
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
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedFloat;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendFloatValue:(float)value
{
  values = [(CCRepeatedFieldValue *)self values];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = value;
  v6 = [v4 initWithFloat:v5];
  [values addObject:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedFloat allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end