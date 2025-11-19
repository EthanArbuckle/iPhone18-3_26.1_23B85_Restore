@interface HKMedicationsScoredMercuryId
- (BOOL)isEqual:(id)a3;
- (HKMedicationsScoredMercuryId)initWithMercuryId:(id)a3 score:(id)a4;
@end

@implementation HKMedicationsScoredMercuryId

- (HKMedicationsScoredMercuryId)initWithMercuryId:(id)a3 score:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKMedicationsScoredMercuryId;
  v8 = [(HKMedicationsScoredMercuryId *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKMedicationsScoredMercuryId *)v8 setMercuryId:v6];
    [(HKMedicationsScoredMercuryId *)v9 setScore:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      mercuryId = self->_mercuryId;
      v7 = [(HKMedicationsScoredMercuryId *)v5 mercuryId];
      if ([(NSNumber *)mercuryId isEqual:v7])
      {
        score = self->_score;
        v9 = [(HKMedicationsScoredMercuryId *)v5 score];
        v10 = [(NSNumber *)score isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end