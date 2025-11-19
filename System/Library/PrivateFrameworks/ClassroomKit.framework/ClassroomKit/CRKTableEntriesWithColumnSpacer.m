@interface CRKTableEntriesWithColumnSpacer
- (CRKTableEntriesWithColumnSpacer)initWithOrigin:(id)a3 index:(unint64_t)a4 spacerEntry:(id)a5;
- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4;
@end

@implementation CRKTableEntriesWithColumnSpacer

- (CRKTableEntriesWithColumnSpacer)initWithOrigin:(id)a3 index:(unint64_t)a4 spacerEntry:(id)a5
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKTableEntriesWithColumnSpacer initWithOrigin:a2 index:self spacerEntry:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [CRKTableEntriesWithColumnSpacer initWithOrigin:a2 index:self spacerEntry:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = CRKTableEntriesWithColumnSpacer;
  v13 = [(CRKTableEntriesWithColumnSpacer *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mOrigin, a3);
    v14->mIndex = a4;
    objc_storeStrong(&v14->mSpacerEntry, a5);
  }

  return v14;
}

- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  mIndex = self->mIndex;
  if (mIndex <= a4)
  {
    if (mIndex == a4)
    {
      v6 = self->mSpacerEntry;
      goto LABEL_7;
    }

    mOrigin = self->mOrigin;
    --a4;
  }

  else
  {
    mOrigin = self->mOrigin;
  }

  v6 = [(CRKTableEntries *)mOrigin entryAtRow:a3 column:a4];
LABEL_7:

  return v6;
}

- (void)initWithOrigin:(uint64_t)a1 index:(uint64_t)a2 spacerEntry:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKTableEntriesWithColumnSpacer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"origin"}];
}

- (void)initWithOrigin:(uint64_t)a1 index:(uint64_t)a2 spacerEntry:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKTableEntriesWithColumnSpacer.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"spacerEntry"}];
}

@end