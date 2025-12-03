@interface CCMutableRepeatedDouble
+ (id)new;
- (CCMutableRepeatedDouble)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDoubleValue:(double)value;
@end

@implementation CCMutableRepeatedDouble

- (CCMutableRepeatedDouble)init
{
  v3.receiver = self;
  v3.super_class = CCMutableRepeatedDouble;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableRepeatedDouble;
  return objc_msgSendSuper2(&v3, sel__new);
}

- (void)appendDoubleValue:(double)value
{
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:value];
  [values addObject:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CCRepeatedDouble allocWithZone:?];
  values = [(CCRepeatedFieldValue *)self values];
  v7 = [values mutableCopyWithZone:zone];
  v8 = [(CCRepeatedFieldValue *)v5 initWithMutableArray:v7];

  return v8;
}

@end