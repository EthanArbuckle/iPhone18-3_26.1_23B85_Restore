@interface CPLPrequeliteSynthesizedVariable
+ (void)initialize;
- (id)valueWithConstructor:(id)constructor;
@end

@implementation CPLPrequeliteSynthesizedVariable

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(NSObject);
    v3 = qword_1002D2BC0;
    qword_1002D2BC0 = v2;
  }
}

- (id)valueWithConstructor:(id)constructor
{
  constructorCopy = constructor;
  if ([(CPLPrequeliteVariable *)self hasCachedValueForIdentifier:qword_1002D2BC0])
  {
    v5 = [(CPLPrequeliteVariable *)self cachedValueForIdentifier:qword_1002D2BC0];
  }

  else
  {
    v5 = constructorCopy[2](constructorCopy);
    [(CPLPrequeliteVariable *)self setCachedValue:v5 forIdentifier:qword_1002D2BC0];
  }

  return v5;
}

@end