@interface FIReduction
+ (id)reductionWithObject:(id)a3;
- (FIReduction)initWithObject:(id)a3;
@end

@implementation FIReduction

- (FIReduction)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIReduction;
  v6 = [(FIReduction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

+ (id)reductionWithObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FIReduction);
  object = v4->_object;
  v4->_object = v3;

  return v4;
}

@end