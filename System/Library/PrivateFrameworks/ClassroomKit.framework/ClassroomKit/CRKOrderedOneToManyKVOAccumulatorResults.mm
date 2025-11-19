@interface CRKOrderedOneToManyKVOAccumulatorResults
- (BOOL)isEmpty;
- (id)description;
- (id)resultsByExcludingLocalDeletions:(id)a3;
- (int64_t)netCountChange;
@end

@implementation CRKOrderedOneToManyKVOAccumulatorResults

- (BOOL)isEmpty
{
  v3 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self replacements];
      if ([v6 count])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self moves];
        v4 = [v7 count] == 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  v5 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
  v6 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self replacements];
  v7 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self moves];
  v8 = [v3 stringWithFormat:@"insertions: %@\ndeletions: %@\nreplacements: %@\nmoves: %@", v4, v5, v6, v7];

  return v8;
}

- (int64_t)netCountChange
{
  v3 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  v4 = [v3 count];
  v5 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
  v6 = v4 - [v5 count];

  return v6;
}

- (id)resultsByExcludingLocalDeletions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
  v7 = [v6 mutableCopy];

  [v7 removeIndexes:v4];
  v8 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  [v5 setInsertions:v8];

  v9 = [v7 copy];
  [v5 setDeletions:v9];

  v10 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self replacements];
  [v5 setReplacements:v10];

  v11 = [(CRKOrderedOneToManyKVOAccumulatorResults *)self moves];
  [v5 setMoves:v11];

  return v5;
}

@end