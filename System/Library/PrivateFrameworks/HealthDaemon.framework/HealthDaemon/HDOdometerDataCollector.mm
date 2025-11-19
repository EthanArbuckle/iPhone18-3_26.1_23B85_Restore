@interface HDOdometerDataCollector
- (HDOdometerDataCollector)initWithProfile:(id)a3 collectedDistanceType:(id)a4;
- (double)queue_differenceFromDatum:(id)a3 toDatum:(id)a4 type:(id)a5;
- (id)queue_newDataSource;
- (unint64_t)queue_targetCollectionTypeForRequestedCollectionType:(unint64_t)a3;
@end

@implementation HDOdometerDataCollector

- (HDOdometerDataCollector)initWithProfile:(id)a3 collectedDistanceType:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HDOdometerDataCollector;
  v7 = [(HDCoreMotionDataCollector *)&v11 initWithProfile:a3];
  if (v7)
  {
    v8 = [v6 copy];
    distanceType = v7->_distanceType;
    v7->_distanceType = v8;
  }

  return v7;
}

- (id)queue_newDataSource
{
  v2 = objc_alloc_init(MEMORY[0x277CC1CF0]);

  return v2;
}

- (double)queue_differenceFromDatum:(id)a3 toDatum:(id)a4 type:(id)a5
{
  v9 = a3;
  v10 = a4;
  if (([a5 isEqual:self->_distanceType] & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HDOdometerDataCollector.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"[type isEqual:_distanceType]"}];
  }

  v11 = [v10 hd_epochDatestamp];
  v12 = [v9 hd_epochDatestamp];
  v13 = [v11 isEqualToDate:v12];

  v14 = [v9 hd_epochDatestamp];
  v15 = [v9 hd_datestamp];
  if ([v14 isEqualToDate:v15])
  {
  }

  else
  {
    v16 = [v10 hd_epochDatestamp];
    v17 = [v10 hd_datestamp];
    v18 = [v16 isEqualToDate:v17];

    if (((v13 | v18) & 1) == 0)
    {
      [v10 deltaDistance];
      v23 = v24;
      goto LABEL_10;
    }
  }

  [v10 deltaDistance];
  v20 = v19;
  [v9 deltaDistance];
  v22 = v20 - v21;
  if (v22 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

LABEL_10:

  return v23;
}

- (unint64_t)queue_targetCollectionTypeForRequestedCollectionType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_22916E4F0[a3];
  }
}

@end