@interface IRServicePackageAdapterClassification
- (IRServicePackageAdapterClassification)init;
@end

@implementation IRServicePackageAdapterClassification

- (IRServicePackageAdapterClassification)init
{
  v5.receiver = self;
  v5.super_class = IRServicePackageAdapterClassification;
  v2 = [(IRServicePackageAdapterClassification *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IRServicePackageAdapterClassification *)v2 setIsValid:0];
    [(IRServicePackageAdapterClassification *)v3 setDetailedDesc:&stru_286755D18];
  }

  return v3;
}

@end