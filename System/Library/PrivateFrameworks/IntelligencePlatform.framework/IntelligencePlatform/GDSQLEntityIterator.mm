@interface GDSQLEntityIterator
- (GDSQLEntityIterator)initWithColumns:(unint64_t)a3 statement:(id)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation GDSQLEntityIterator

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (!a3->var0)
  {
    a3->var0 = 1;
    a3->var1 = &self->_innerIterator;
    a3->var2 = self;
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

        v9 = [(GDLazyGraphTripleRow *)lazyTripleRow subject];
        v10 = [v9 isEqualToString:innerIterator->_iterateSubjectValue];

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
      v13 = [(GDLazyGraphTripleRow *)v11 subject];
      iterateSubjectValue = innerIterator->_iterateSubjectValue;
      innerIterator->_iterateSubjectValue = v13;
    }
  }

  v15 = self->_lazyTripleRow;
  return !v15 || (v16 = v15->_cursor) == 0 || !v16->_done;
}

- (GDSQLEntityIterator)initWithColumns:(unint64_t)a3 statement:(id)a4
{
  v4 = a3;
  v6 = a4;
  v14.receiver = self;
  v14.super_class = GDSQLEntityIterator;
  v7 = [(GDSQLEntityIterator *)&v14 init];
  if (v7)
  {
    v8 = sub_1ABF081D8([GDLazyGraphTripleRowCursor alloc], v4, v6);
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