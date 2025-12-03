@interface HDCloudSyncShardPredicate
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncShardPredicate)initWithCodableShardPredicate:(id)predicate;
- (id)codablePredicate;
- (id)description;
- (id)initForShardType:(int)type startDate:(id)date endDate:(id)endDate;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HDCloudSyncShardPredicate

- (id)initForShardType:(int)type startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v17.receiver = self;
  v17.super_class = HDCloudSyncShardPredicate;
  v10 = [(HDCloudSyncShardPredicate *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [dateCopy copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [endDateCopy copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;
  }

  return v11;
}

- (HDCloudSyncShardPredicate)initWithCodableShardPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ([predicateCopy hasStartDate])
  {
    v5 = MEMORY[0x277CBEAA8];
    [predicateCopy startDate];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6 = 0;
  }

  if ([predicateCopy hasEndDate])
  {
    v7 = MEMORY[0x277CBEAA8];
    [predicateCopy endDate];
    v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = -[HDCloudSyncShardPredicate initForShardType:startDate:endDate:](self, "initForShardType:startDate:endDate:", [predicateCopy type], v6, v8);

  return v9;
}

- (id)codablePredicate
{
  v3 = objc_alloc_init(HDCloudSyncCodableShardPredicate);
  [(HDCloudSyncCodableShardPredicate *)v3 setType:self->_type];
  startDate = self->_startDate;
  if (startDate)
  {
    [(NSDate *)startDate timeIntervalSinceReferenceDate];
    [(HDCloudSyncCodableShardPredicate *)v3 setStartDate:?];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [(NSDate *)endDate timeIntervalSinceReferenceDate];
    [(HDCloudSyncCodableShardPredicate *)v3 setEndDate:?];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (self->_type != equalCopy[2])
  {
    goto LABEL_9;
  }

  startDate = self->_startDate;
  v6 = *(equalCopy + 2);
  if (startDate != v6 && (!v6 || ![(NSDate *)startDate isEqual:?]))
  {
    goto LABEL_9;
  }

  endDate = self->_endDate;
  v8 = *(equalCopy + 3);
  if (endDate == v8)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = [(NSDate *)endDate isEqual:?];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSDate *)self->_startDate hash]^ type;
  return v4 ^ [(NSDate *)self->_endDate hash];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncStore.m" lineNumber:1022 description:{@"Invalid parameter not satisfying: %@", @"[other isKindOfClass:HDCloudSyncShardPredicate.class]"}];
  }

  type = self->_type;
  if (type == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (type == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  type = [compareCopy type];
  if (type == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (type == 1)
  {
    v10 = 3;
  }

  if (v8 < v10)
  {
    v11 = -1;
    goto LABEL_25;
  }

  if (v8 > v10)
  {
LABEL_18:
    v11 = 1;
    goto LABEL_25;
  }

  endDate = self->_endDate;
  endDate = [compareCopy endDate];

  if (endDate)
  {
    if (endDate)
    {
      endDate2 = [compareCopy endDate];
      v11 = [endDate2 compare:self->_endDate];

      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (endDate)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

LABEL_25:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = self->_type;
  if (type >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_2786264D0[type];
  }

  v6 = [(NSDate *)self->_startDate description];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"(Distant Past)";
  }

  v9 = [(NSDate *)self->_endDate description];
  v10 = v9;
  v11 = @"(Distant Future)";
  if (v9)
  {
    v11 = v9;
  }

  v12 = [v3 stringWithFormat:@"<%@ %@ - %@>", v5, v8, v11];

  return v12;
}

@end