@interface _CNSortsByPositionInAuxiliaryArray
+ (id)comparatorForSortingAccordingToAuxiliaryValues:(id)values transform:(id)transform;
- (_CNSortsByPositionInAuxiliaryArray)initWithAuxiliaryValues:(id)values transform:(id)transform;
- (id)comparator;
- (id)rankForObject:(id)object;
- (void)prepareRankingIndex;
@end

@implementation _CNSortsByPositionInAuxiliaryArray

+ (id)comparatorForSortingAccordingToAuxiliaryValues:(id)values transform:(id)transform
{
  transformCopy = transform;
  valuesCopy = values;
  v8 = [[self alloc] initWithAuxiliaryValues:valuesCopy transform:transformCopy];

  comparator = [v8 comparator];

  return comparator;
}

- (_CNSortsByPositionInAuxiliaryArray)initWithAuxiliaryValues:(id)values transform:(id)transform
{
  valuesCopy = values;
  transformCopy = transform;
  v15.receiver = self;
  v15.super_class = _CNSortsByPositionInAuxiliaryArray;
  v8 = [(_CNSortsByPositionInAuxiliaryArray *)&v15 init];
  if (v8)
  {
    v9 = [valuesCopy copy];
    auxiliaryValues = v8->_auxiliaryValues;
    v8->_auxiliaryValues = v9;

    v11 = [transformCopy copy];
    transform = v8->_transform;
    v8->_transform = v11;

    [(_CNSortsByPositionInAuxiliaryArray *)v8 prepareRankingIndex];
    v13 = v8;
  }

  return v8;
}

- (void)prepareRankingIndex
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  auxiliaryValues = self->_auxiliaryValues;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57___CNSortsByPositionInAuxiliaryArray_prepareRankingIndex__block_invoke;
  v8[3] = &unk_1E6ED7898;
  v9 = dictionary;
  v5 = dictionary;
  [(NSArray *)auxiliaryValues enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];
  ranks = self->_ranks;
  self->_ranks = v6;
}

- (id)comparator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48___CNSortsByPositionInAuxiliaryArray_comparator__block_invoke;
  v4[3] = &unk_1E6ED78C0;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

- (id)rankForObject:(id)object
{
  objectCopy = object;
  ranks = [(_CNSortsByPositionInAuxiliaryArray *)self ranks];
  transform = [(_CNSortsByPositionInAuxiliaryArray *)self transform];
  v7 = (transform)[2](transform, objectCopy);

  v8 = [ranks objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E696AD98];
    auxiliaryValues = [(_CNSortsByPositionInAuxiliaryArray *)self auxiliaryValues];
    v10 = [v11 numberWithUnsignedInteger:{objc_msgSend(auxiliaryValues, "count")}];
  }

  return v10;
}

@end