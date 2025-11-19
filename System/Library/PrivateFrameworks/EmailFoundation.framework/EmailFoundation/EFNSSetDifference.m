@interface EFNSSetDifference
- (BOOL)hasChanges;
- (EFNSSetDifference)initWithInsertedObjects:(id)a3 removedObjects:(id)a4;
@end

@implementation EFNSSetDifference

- (EFNSSetDifference)initWithInsertedObjects:(id)a3 removedObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EFNSSetDifference;
  v8 = [(EFNSSetDifference *)&v14 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFD8] set];
    }

    insertions = v8->_insertions;
    v8->_insertions = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = [MEMORY[0x1E695DFD8] set];
    }

    removals = v8->_removals;
    v8->_removals = v11;
  }

  return v8;
}

- (BOOL)hasChanges
{
  v3 = [(EFNSSetDifference *)self insertions];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EFNSSetDifference *)self removals];
    v4 = [v5 count] != 0;
  }

  return v4;
}

@end