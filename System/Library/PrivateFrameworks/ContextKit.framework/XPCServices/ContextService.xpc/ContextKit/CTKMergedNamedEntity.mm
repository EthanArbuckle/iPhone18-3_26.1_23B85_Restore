@interface CTKMergedNamedEntity
- (CTKMergedNamedEntity)initWithEntity:(id)entity;
- (int64_t)descendingScoreCompare:(id)compare;
- (void)mergeWith:(id)with;
@end

@implementation CTKMergedNamedEntity

- (CTKMergedNamedEntity)initWithEntity:(id)entity
{
  entityCopy = entity;
  v12.receiver = self;
  v12.super_class = CTKMergedNamedEntity;
  v5 = [(CTKMergedNamedEntity *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    sourceNamedEntities = v5->_sourceNamedEntities;
    v5->_sourceNamedEntities = v6;

    [(NSMutableSet *)v5->_sourceNamedEntities addObject:entityCopy];
    name = [entityCopy name];
    name = v5->_name;
    v5->_name = name;

    v5->_firstOccurrence = [entityCopy firstOccurrence];
    v5->_count = [entityCopy count];
    [entityCopy score];
    v5->_score = v10;
  }

  return v5;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (([(NSMutableSet *)self->_sourceNamedEntities containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_sourceNamedEntities addObject:withCopy];
    firstOccurrence = self->_firstOccurrence;
    firstOccurrence = [withCopy firstOccurrence];
    if (firstOccurrence >= firstOccurrence)
    {
      v6 = firstOccurrence;
    }

    else
    {
      v6 = firstOccurrence;
    }

    self->_firstOccurrence = v6;
    [withCopy score];
    self->_score = v7 + self->_score;
    self->_count += [withCopy count];
  }
}

- (int64_t)descendingScoreCompare:(id)compare
{
  compareCopy = compare;
  score = self->_score;
  [compareCopy score];
  if (score <= v6)
  {
    v8 = self->_score;
    [compareCopy score];
    v7 = v8 < v9;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end