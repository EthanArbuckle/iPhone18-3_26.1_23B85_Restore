@interface HKMedicationsScoredMercuryId
- (BOOL)isEqual:(id)equal;
- (HKMedicationsScoredMercuryId)initWithMercuryId:(id)id score:(id)score;
@end

@implementation HKMedicationsScoredMercuryId

- (HKMedicationsScoredMercuryId)initWithMercuryId:(id)id score:(id)score
{
  idCopy = id;
  scoreCopy = score;
  v11.receiver = self;
  v11.super_class = HKMedicationsScoredMercuryId;
  v8 = [(HKMedicationsScoredMercuryId *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKMedicationsScoredMercuryId *)v8 setMercuryId:idCopy];
    [(HKMedicationsScoredMercuryId *)v9 setScore:scoreCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mercuryId = self->_mercuryId;
      mercuryId = [(HKMedicationsScoredMercuryId *)v5 mercuryId];
      if ([(NSNumber *)mercuryId isEqual:mercuryId])
      {
        score = self->_score;
        score = [(HKMedicationsScoredMercuryId *)v5 score];
        v10 = [(NSNumber *)score isEqual:score];
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