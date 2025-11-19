@interface CRKDictionaryRowTableEntries
- (CRKDictionaryRowTableEntries)initWithDictionaryObjects:(id)a3 keys:(id)a4;
- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4;
@end

@implementation CRKDictionaryRowTableEntries

- (CRKDictionaryRowTableEntries)initWithDictionaryObjects:(id)a3 keys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKDictionaryRowTableEntries initWithDictionaryObjects:a2 keys:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CRKDictionaryRowTableEntries initWithDictionaryObjects:a2 keys:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = CRKDictionaryRowTableEntries;
  v10 = [(CRKDictionaryRowTableEntries *)&v16 init];
  if (v10)
  {
    v11 = [v7 copy];
    mObjects = v10->mObjects;
    v10->mObjects = v11;

    v13 = [v9 copy];
    mKeys = v10->mKeys;
    v10->mKeys = v13;
  }

  return v10;
}

- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  v6 = [(NSArray *)self->mKeys objectAtIndexedSubscript:a4];
  v7 = [(NSArray *)self->mObjects objectAtIndexedSubscript:a3];
  v8 = [CRKRightPaddingTableEntry alloc];
  v9 = [v7 valueForKeyPath:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &unk_2856728B0;
  }

  v12 = [(CRKRightPaddingTableEntry *)v8 initWithObject:v11];

  return v12;
}

- (void)initWithDictionaryObjects:(uint64_t)a1 keys:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKDictionaryRowTableEntries.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"objects"}];
}

- (void)initWithDictionaryObjects:(uint64_t)a1 keys:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKDictionaryRowTableEntries.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"keys"}];
}

@end