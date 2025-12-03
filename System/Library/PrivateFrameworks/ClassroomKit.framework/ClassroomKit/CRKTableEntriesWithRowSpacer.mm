@interface CRKTableEntriesWithRowSpacer
- (CRKTableEntriesWithRowSpacer)initWithOrigin:(id)origin index:(unint64_t)index spacerEntry:(id)entry;
- (id)entryAtRow:(unint64_t)row column:(unint64_t)column;
@end

@implementation CRKTableEntriesWithRowSpacer

- (CRKTableEntriesWithRowSpacer)initWithOrigin:(id)origin index:(unint64_t)index spacerEntry:(id)entry
{
  originCopy = origin;
  entryCopy = entry;
  v12 = entryCopy;
  if (originCopy)
  {
    if (entryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKTableEntriesWithRowSpacer initWithOrigin:a2 index:self spacerEntry:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [CRKTableEntriesWithRowSpacer initWithOrigin:a2 index:self spacerEntry:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = CRKTableEntriesWithRowSpacer;
  v13 = [(CRKTableEntriesWithRowSpacer *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mOrigin, origin);
    v14->mIndex = index;
    objc_storeStrong(&v14->mSpacerEntry, entry);
  }

  return v14;
}

- (id)entryAtRow:(unint64_t)row column:(unint64_t)column
{
  mIndex = self->mIndex;
  if (mIndex <= row)
  {
    if (mIndex == row)
    {
      v6 = self->mSpacerEntry;
      goto LABEL_7;
    }

    mOrigin = self->mOrigin;
    --row;
  }

  else
  {
    mOrigin = self->mOrigin;
  }

  v6 = [(CRKTableEntries *)mOrigin entryAtRow:row column:column];
LABEL_7:

  return v6;
}

- (void)initWithOrigin:(uint64_t)a1 index:(uint64_t)a2 spacerEntry:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKTableEntriesWithRowSpacer.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"origin"}];
}

- (void)initWithOrigin:(uint64_t)a1 index:(uint64_t)a2 spacerEntry:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKTableEntriesWithRowSpacer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"spacerEntry"}];
}

@end