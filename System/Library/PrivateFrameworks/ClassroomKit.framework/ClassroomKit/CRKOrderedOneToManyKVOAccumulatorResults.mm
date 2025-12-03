@interface CRKOrderedOneToManyKVOAccumulatorResults
- (BOOL)isEmpty;
- (id)description;
- (id)resultsByExcludingLocalDeletions:(id)deletions;
- (int64_t)netCountChange;
@end

@implementation CRKOrderedOneToManyKVOAccumulatorResults

- (BOOL)isEmpty
{
  insertions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  if ([insertions count])
  {
    v4 = 0;
  }

  else
  {
    deletions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
    if ([deletions count])
    {
      v4 = 0;
    }

    else
    {
      replacements = [(CRKOrderedOneToManyKVOAccumulatorResults *)self replacements];
      if ([replacements count])
      {
        v4 = 0;
      }

      else
      {
        moves = [(CRKOrderedOneToManyKVOAccumulatorResults *)self moves];
        v4 = [moves count] == 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  insertions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  deletions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
  replacements = [(CRKOrderedOneToManyKVOAccumulatorResults *)self replacements];
  moves = [(CRKOrderedOneToManyKVOAccumulatorResults *)self moves];
  v8 = [v3 stringWithFormat:@"insertions: %@\ndeletions: %@\nreplacements: %@\nmoves: %@", insertions, deletions, replacements, moves];

  return v8;
}

- (int64_t)netCountChange
{
  insertions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  v4 = [insertions count];
  deletions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
  v6 = v4 - [deletions count];

  return v6;
}

- (id)resultsByExcludingLocalDeletions:(id)deletions
{
  deletionsCopy = deletions;
  v5 = objc_opt_new();
  deletions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self deletions];
  v7 = [deletions mutableCopy];

  [v7 removeIndexes:deletionsCopy];
  insertions = [(CRKOrderedOneToManyKVOAccumulatorResults *)self insertions];
  [v5 setInsertions:insertions];

  v9 = [v7 copy];
  [v5 setDeletions:v9];

  replacements = [(CRKOrderedOneToManyKVOAccumulatorResults *)self replacements];
  [v5 setReplacements:replacements];

  moves = [(CRKOrderedOneToManyKVOAccumulatorResults *)self moves];
  [v5 setMoves:moves];

  return v5;
}

@end