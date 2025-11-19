@interface HKMedicationsMercuryIdGroup
- (id)description;
@end

@implementation HKMedicationsMercuryIdGroup

- (id)description
{
  v3 = [(HKMedicationsMercuryIdGroup *)self ingredientMatched];
  v4 = @"no match";
  if (v3)
  {
    v4 = @"ingredient matched";
  }

  v11.receiver = self;
  v11.super_class = HKMedicationsMercuryIdGroup;
  v5 = v4;
  v6 = [(HKMedicationsMercuryIdGroup *)&v11 description];
  v7 = [(HKMedicationsMercuryIdGroup *)self primaryHgId];
  [(HKMedicationsMercuryIdGroup *)self maxJaccardSimilarity];
  v9 = [v6 stringByAppendingFormat:@" %d %f %@", v7, v8, v5];

  return v9;
}

@end