@interface CRKTableEntriesWithAddedColumn
- (CRKTableEntriesWithAddedColumn)initWithOrigin:(id)a3 index:(unint64_t)a4 entries:(id)a5;
- (id)entryAtRow:(unint64_t)a3 column:(unint64_t)a4;
@end

@implementation CRKTableEntriesWithAddedColumn

- (CRKTableEntriesWithAddedColumn)initWithOrigin:(id)a3 index:(unint64_t)a4 entries:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKTableEntriesWithAddedColumn initWithOrigin:index:entries:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [CRKTableEntriesWithAddedColumn initWithOrigin:index:entries:];
LABEL_3:
  if ([v9 columnCount] < a4)
  {
    [CRKTableEntriesWithAddedColumn initWithOrigin:a4 index:? entries:?];
  }

  v12 = [v9 rowCount];
  if (v12 != [v11 count])
  {
    [CRKTableEntriesWithAddedColumn initWithOrigin:v11 index:v9 entries:?];
  }

  v18.receiver = self;
  v18.super_class = CRKTableEntriesWithAddedColumn;
  v13 = [(CRKTableEntriesWithAddedColumn *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mOrigin, a3);
    v14->mIndex = a4;
    v15 = [v11 copy];
    mEntries = v14->mEntries;
    v14->mEntries = v15;
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
      v6 = [(NSArray *)self->mEntries objectAtIndexedSubscript:a3];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "rowCount")}];
  OUTLINED_FUNCTION_0_1();
  [v6 handleFailureInMethod:v4 object:v5 file:? lineNumber:? description:?];
}

@end