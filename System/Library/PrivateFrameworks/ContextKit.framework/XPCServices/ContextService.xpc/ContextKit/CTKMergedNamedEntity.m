@interface CTKMergedNamedEntity
- (CTKMergedNamedEntity)initWithEntity:(id)a3;
- (int64_t)descendingScoreCompare:(id)a3;
- (void)mergeWith:(id)a3;
@end

@implementation CTKMergedNamedEntity

- (CTKMergedNamedEntity)initWithEntity:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTKMergedNamedEntity;
  v5 = [(CTKMergedNamedEntity *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    sourceNamedEntities = v5->_sourceNamedEntities;
    v5->_sourceNamedEntities = v6;

    [(NSMutableSet *)v5->_sourceNamedEntities addObject:v4];
    v8 = [v4 name];
    name = v5->_name;
    v5->_name = v8;

    v5->_firstOccurrence = [v4 firstOccurrence];
    v5->_count = [v4 count];
    [v4 score];
    v5->_score = v10;
  }

  return v5;
}

- (void)mergeWith:(id)a3
{
  v8 = a3;
  if (([(NSMutableSet *)self->_sourceNamedEntities containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_sourceNamedEntities addObject:v8];
    firstOccurrence = self->_firstOccurrence;
    v5 = [v8 firstOccurrence];
    if (firstOccurrence >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = firstOccurrence;
    }

    self->_firstOccurrence = v6;
    [v8 score];
    self->_score = v7 + self->_score;
    self->_count += [v8 count];
  }
}

- (int64_t)descendingScoreCompare:(id)a3
{
  v4 = a3;
  score = self->_score;
  [v4 score];
  if (score <= v6)
  {
    v8 = self->_score;
    [v4 score];
    v7 = v8 < v9;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end