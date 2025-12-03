@interface FIReduction
+ (id)reductionWithObject:(id)object;
- (FIReduction)initWithObject:(id)object;
@end

@implementation FIReduction

- (FIReduction)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = FIReduction;
  v6 = [(FIReduction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

+ (id)reductionWithObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(FIReduction);
  object = v4->_object;
  v4->_object = objectCopy;

  return v4;
}

@end