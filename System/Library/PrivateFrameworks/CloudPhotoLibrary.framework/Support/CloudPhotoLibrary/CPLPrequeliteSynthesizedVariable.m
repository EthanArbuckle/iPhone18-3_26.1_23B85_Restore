@interface CPLPrequeliteSynthesizedVariable
+ (void)initialize;
- (id)valueWithConstructor:(id)a3;
@end

@implementation CPLPrequeliteSynthesizedVariable

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(NSObject);
    v3 = qword_1002D2BC0;
    qword_1002D2BC0 = v2;
  }
}

- (id)valueWithConstructor:(id)a3
{
  v4 = a3;
  if ([(CPLPrequeliteVariable *)self hasCachedValueForIdentifier:qword_1002D2BC0])
  {
    v5 = [(CPLPrequeliteVariable *)self cachedValueForIdentifier:qword_1002D2BC0];
  }

  else
  {
    v5 = v4[2](v4);
    [(CPLPrequeliteVariable *)self setCachedValue:v5 forIdentifier:qword_1002D2BC0];
  }

  return v5;
}

@end