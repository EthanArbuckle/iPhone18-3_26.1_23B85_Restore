@interface CRKListTableEntries
- (CRKListTableEntries)initWithArray:(id)a3;
- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4;
@end

@implementation CRKListTableEntries

- (CRKListTableEntries)initWithArray:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CRKListTableEntries *)a2 initWithArray:?];
  }

  v10.receiver = self;
  v10.super_class = CRKListTableEntries;
  v6 = [(CRKListTableEntries *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    mArray = v6->mArray;
    v6->mArray = v7;
  }

  return v6;
}

- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  v6 = [CRKRightPaddingTableEntry alloc];
  v7 = [(NSArray *)self->mArray objectAtIndexedSubscript:a3];
  v8 = [(CRKRightPaddingTableEntry *)v6 initWithObject:v7];

  return v8;
}

- (void)initWithArray:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKListTableEntries.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"array"}];
}

@end