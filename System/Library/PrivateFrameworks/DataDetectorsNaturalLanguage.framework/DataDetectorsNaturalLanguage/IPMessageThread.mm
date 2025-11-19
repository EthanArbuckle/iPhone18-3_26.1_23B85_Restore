@interface IPMessageThread
- (id)orderedMessageUnits;
- (void)appendUnit:(id)a3 inResponseToUnit:(id)a4;
@end

@implementation IPMessageThread

- (void)appendUnit:(id)a3 inResponseToUnit:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    if (v6)
    {
      [v6 addFollowup:v14];
    }

    else
    {
      threadRoots = self->_threadRoots;
      if (threadRoots)
      {
        [(NSMutableArray *)threadRoots addObject:v14];
      }

      else
      {
        v8 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
        v9 = self->_threadRoots;
        self->_threadRoots = v8;
      }
    }

    allUnits = self->_allUnits;
    if (!allUnits)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->_allUnits;
      self->_allUnits = v11;

      allUnits = self->_allUnits;
    }

    [(NSMutableArray *)allUnits addObject:v14];
    allUnitsSorted = self->_allUnitsSorted;
    self->_allUnitsSorted = 0;
  }
}

- (id)orderedMessageUnits
{
  allUnitsSorted = self->_allUnitsSorted;
  if (!allUnitsSorted)
  {
    v4 = [(NSMutableArray *)self->_allUnits sortedArrayUsingComparator:&__block_literal_global];
    v5 = self->_allUnitsSorted;
    self->_allUnitsSorted = v4;

    allUnitsSorted = self->_allUnitsSorted;
  }

  return allUnitsSorted;
}

uint64_t __38__IPMessageThread_orderedMessageUnits__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 originalMessage];
  v7 = [v6 dateSent];
  v8 = [v5 originalMessage];
  v9 = [v8 dateSent];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = [v4 indexInOriginalMessage];
    v12 = [v5 indexInOriginalMessage];
    v13 = -1;
    if (v11 >= v12)
    {
      v13 = 1;
    }

    if (v11 != v12)
    {
      v10 = v13;
    }
  }

  return v10;
}

@end