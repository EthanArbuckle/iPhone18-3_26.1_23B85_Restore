@interface GDSQLRelationshipIdTripleRowIterator
- (GDSQLRelationshipIdTripleRowIterator)initWithLazyTripleRow:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation GDSQLRelationshipIdTripleRowIterator

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    sub_1ABAAEE98(self->_lazyTripleRow);
  }

  else
  {
    a3->var0 = 1;
    a3->var1 = &self->_lazyTripleRow;
    a3->var2 = self;
  }

  lazyTripleRow = self->_lazyTripleRow;
  if (lazyTripleRow)
  {
    cursor = lazyTripleRow->_cursor;
    if (cursor)
    {
      if (cursor->_done)
      {
        return 0;
      }
    }
  }

  v8 = [(GDLazyGraphTripleRow *)lazyTripleRow subject];
  if (![v8 isEqualToString:self->_iterateSubjectValue])
  {
    goto LABEL_12;
  }

  v9 = [(GDLazyGraphTripleRow *)self->_lazyTripleRow predicate];
  if (([v9 isEqualToString:self->_iteratePredicateValue] & 1) == 0)
  {

LABEL_12:
    return 0;
  }

  v10 = [(GDLazyGraphTripleRow *)self->_lazyTripleRow relationshipId];
  v11 = [v10 isEqualToString:self->_iterateRelationshipIdValue];

  return (v11 & 1) != 0;
}

- (GDSQLRelationshipIdTripleRowIterator)initWithLazyTripleRow:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = GDSQLRelationshipIdTripleRowIterator;
  v6 = [(GDSQLRelationshipIdTripleRowIterator *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lazyTripleRow, a3);
    v8 = [v5 subject];
    iterateSubjectValue = v7->_iterateSubjectValue;
    v7->_iterateSubjectValue = v8;

    v10 = [v5 predicate];
    iteratePredicateValue = v7->_iteratePredicateValue;
    v7->_iteratePredicateValue = v10;

    v12 = [v5 relationshipId];
    iterateRelationshipIdValue = v7->_iterateRelationshipIdValue;
    v7->_iterateRelationshipIdValue = v12;
  }

  return v7;
}

@end