@interface HDOdometerDataCollector
- (HDOdometerDataCollector)initWithProfile:(id)profile collectedDistanceType:(id)type;
- (double)queue_differenceFromDatum:(id)datum toDatum:(id)toDatum type:(id)type;
- (id)queue_newDataSource;
- (unint64_t)queue_targetCollectionTypeForRequestedCollectionType:(unint64_t)type;
@end

@implementation HDOdometerDataCollector

- (HDOdometerDataCollector)initWithProfile:(id)profile collectedDistanceType:(id)type
{
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = HDOdometerDataCollector;
  v7 = [(HDCoreMotionDataCollector *)&v11 initWithProfile:profile];
  if (v7)
  {
    v8 = [typeCopy copy];
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

- (double)queue_differenceFromDatum:(id)datum toDatum:(id)toDatum type:(id)type
{
  datumCopy = datum;
  toDatumCopy = toDatum;
  if (([type isEqual:self->_distanceType] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDOdometerDataCollector.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"[type isEqual:_distanceType]"}];
  }

  hd_epochDatestamp = [toDatumCopy hd_epochDatestamp];
  hd_epochDatestamp2 = [datumCopy hd_epochDatestamp];
  v13 = [hd_epochDatestamp isEqualToDate:hd_epochDatestamp2];

  hd_epochDatestamp3 = [datumCopy hd_epochDatestamp];
  hd_datestamp = [datumCopy hd_datestamp];
  if ([hd_epochDatestamp3 isEqualToDate:hd_datestamp])
  {
  }

  else
  {
    hd_epochDatestamp4 = [toDatumCopy hd_epochDatestamp];
    hd_datestamp2 = [toDatumCopy hd_datestamp];
    v18 = [hd_epochDatestamp4 isEqualToDate:hd_datestamp2];

    if (((v13 | v18) & 1) == 0)
    {
      [toDatumCopy deltaDistance];
      v23 = v24;
      goto LABEL_10;
    }
  }

  [toDatumCopy deltaDistance];
  v20 = v19;
  [datumCopy deltaDistance];
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

- (unint64_t)queue_targetCollectionTypeForRequestedCollectionType:(unint64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_22916E4F0[type];
  }
}

@end