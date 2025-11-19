@interface _CNSortsByPositionInAuxiliaryArray
+ (id)comparatorForSortingAccordingToAuxiliaryValues:(id)a3 transform:(id)a4;
- (_CNSortsByPositionInAuxiliaryArray)initWithAuxiliaryValues:(id)a3 transform:(id)a4;
- (id)comparator;
- (id)rankForObject:(id)a3;
- (void)prepareRankingIndex;
@end

@implementation _CNSortsByPositionInAuxiliaryArray

+ (id)comparatorForSortingAccordingToAuxiliaryValues:(id)a3 transform:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAuxiliaryValues:v7 transform:v6];

  v9 = [v8 comparator];

  return v9;
}

- (_CNSortsByPositionInAuxiliaryArray)initWithAuxiliaryValues:(id)a3 transform:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _CNSortsByPositionInAuxiliaryArray;
  v8 = [(_CNSortsByPositionInAuxiliaryArray *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    auxiliaryValues = v8->_auxiliaryValues;
    v8->_auxiliaryValues = v9;

    v11 = [v7 copy];
    transform = v8->_transform;
    v8->_transform = v11;

    [(_CNSortsByPositionInAuxiliaryArray *)v8 prepareRankingIndex];
    v13 = v8;
  }

  return v8;
}

- (void)prepareRankingIndex
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  auxiliaryValues = self->_auxiliaryValues;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57___CNSortsByPositionInAuxiliaryArray_prepareRankingIndex__block_invoke;
  v8[3] = &unk_1E6ED7898;
  v9 = v3;
  v5 = v3;
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

- (id)rankForObject:(id)a3
{
  v4 = a3;
  v5 = [(_CNSortsByPositionInAuxiliaryArray *)self ranks];
  v6 = [(_CNSortsByPositionInAuxiliaryArray *)self transform];
  v7 = (v6)[2](v6, v4);

  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(_CNSortsByPositionInAuxiliaryArray *)self auxiliaryValues];
    v10 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  }

  return v10;
}

@end