@interface GDSQLEntityIterator
- (GDSQLEntityIterator)initWithColumns:(unint64_t)columns statement:(id)statement;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation GDSQLEntityIterator

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!state->var0)
  {
    state->var0 = 1;
    state->var1 = &self->_innerIterator;
    state->var2 = self;
  }

  innerIterator = self->_innerIterator;
  if (innerIterator)
  {
    if (innerIterator->_iterateSubjectValue)
    {
      while (1)
      {
        lazyTripleRow = innerIterator->_lazyTripleRow;
        if (lazyTripleRow)
        {
          cursor = lazyTripleRow->_cursor;
          if (cursor)
          {
            if (cursor->_done)
            {
              break;
            }
          }
        }

        subject = [(GDLazyGraphTripleRow *)lazyTripleRow subject];
        v10 = [subject isEqualToString:innerIterator->_iterateSubjectValue];

        if (!v10)
        {
          break;
        }

        sub_1ABAAEE98(innerIterator->_lazyTripleRow);
      }
    }

    else
    {
      sub_1ABAAEE98(innerIterator->_lazyTripleRow);
    }

    v11 = innerIterator->_lazyTripleRow;
    if (!v11 || (v12 = v11->_cursor) == 0 || !v12->_done)
    {
      subject2 = [(GDLazyGraphTripleRow *)v11 subject];
      iterateSubjectValue = innerIterator->_iterateSubjectValue;
      innerIterator->_iterateSubjectValue = subject2;
    }
  }

  v15 = self->_lazyTripleRow;
  return !v15 || (v16 = v15->_cursor) == 0 || !v16->_done;
}

- (GDSQLEntityIterator)initWithColumns:(unint64_t)columns statement:(id)statement
{
  columnsCopy = columns;
  statementCopy = statement;
  v14.receiver = self;
  v14.super_class = GDSQLEntityIterator;
  v7 = [(GDSQLEntityIterator *)&v14 init];
  if (v7)
  {
    v8 = sub_1ABF081D8([GDLazyGraphTripleRowCursor alloc], columnsCopy, statementCopy);
    v9 = sub_1ABF07EF4([GDLazyGraphTripleRow alloc], v8, 0);
    lazyTripleRow = v7->_lazyTripleRow;
    v7->_lazyTripleRow = v9;

    v11 = sub_1ABF08294([GDSQLTripleRowIterator alloc], v7->_lazyTripleRow);
    innerIterator = v7->_innerIterator;
    v7->_innerIterator = v11;
  }

  return v7;
}

@end