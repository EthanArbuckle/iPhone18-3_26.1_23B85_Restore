@interface CRKTableEntriesWithAddedRow
- (CRKTableEntriesWithAddedRow)initWithOrigin:(id)origin index:(unint64_t)index entries:(id)entries;
- (id)entryAtRow:(unint64_t)row column:(unint64_t)column;
@end

@implementation CRKTableEntriesWithAddedRow

- (CRKTableEntriesWithAddedRow)initWithOrigin:(id)origin index:(unint64_t)index entries:(id)entries
{
  originCopy = origin;
  entriesCopy = entries;
  v11 = entriesCopy;
  if (originCopy)
  {
    if (entriesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKTableEntriesWithAddedRow initWithOrigin:index:entries:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [CRKTableEntriesWithAddedRow initWithOrigin:index:entries:];
LABEL_3:
  if ([originCopy rowCount] < index)
  {
    [CRKTableEntriesWithAddedRow initWithOrigin:index index:? entries:?];
  }

  columnCount = [originCopy columnCount];
  if (columnCount != [v11 count])
  {
    [CRKTableEntriesWithAddedRow initWithOrigin:v11 index:originCopy entries:?];
  }

  v18.receiver = self;
  v18.super_class = CRKTableEntriesWithAddedRow;
  v13 = [(CRKTableEntriesWithAddedRow *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mOrigin, origin);
    v14->mIndex = index;
    v15 = [v11 copy];
    mEntries = v14->mEntries;
    v14->mEntries = v15;
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
      v6 = [(NSArray *)self->mEntries objectAtIndexedSubscript:column];
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

- (void)initWithOrigin:index:entries:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"origin" object:? file:? lineNumber:? description:?];
}

- (void)initWithOrigin:index:entries:.cold.2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"entries" object:? file:? lineNumber:? description:?];
}

- (void)initWithOrigin:(uint64_t)a1 index:entries:.cold.3(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_1();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)initWithOrigin:(void *)a1 index:(void *)a2 entries:.cold.4(void *a1, void *a2)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "columnCount")}];
  OUTLINED_FUNCTION_0_1();
  [v6 handleFailureInMethod:v4 object:v5 file:? lineNumber:? description:?];
}

@end