@interface HKMedicationsResolverResult
- (id)description;
@end

@implementation HKMedicationsResolverResult

- (id)description
{
  looksGeneric = [(HKMedicationsResolverResult *)self looksGeneric];
  v4 = @"Not Generic";
  if (looksGeneric)
  {
    v4 = @"Generic";
  }

  v11.receiver = self;
  v11.super_class = HKMedicationsResolverResult;
  v5 = v4;
  v6 = [(HKMedicationsResolverResult *)&v11 description];
  resolvedIds = [(HKMedicationsResolverResult *)self resolvedIds];
  usedNgrams = [(HKMedicationsResolverResult *)self usedNgrams];
  v9 = [v6 stringByAppendingFormat:@" %@ %@ %@", v5, resolvedIds, usedNgrams];

  return v9;
}

@end