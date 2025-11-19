@interface HKMedicationsResolverResult
- (id)description;
@end

@implementation HKMedicationsResolverResult

- (id)description
{
  v3 = [(HKMedicationsResolverResult *)self looksGeneric];
  v4 = @"Not Generic";
  if (v3)
  {
    v4 = @"Generic";
  }

  v11.receiver = self;
  v11.super_class = HKMedicationsResolverResult;
  v5 = v4;
  v6 = [(HKMedicationsResolverResult *)&v11 description];
  v7 = [(HKMedicationsResolverResult *)self resolvedIds];
  v8 = [(HKMedicationsResolverResult *)self usedNgrams];
  v9 = [v6 stringByAppendingFormat:@" %@ %@ %@", v5, v7, v8];

  return v9;
}

@end