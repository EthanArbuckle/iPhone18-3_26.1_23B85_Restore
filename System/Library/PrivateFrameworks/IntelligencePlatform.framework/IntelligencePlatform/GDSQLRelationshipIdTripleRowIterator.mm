@interface GDSQLRelationshipIdTripleRowIterator
- (GDSQLRelationshipIdTripleRowIterator)initWithLazyTripleRow:(id)row;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation GDSQLRelationshipIdTripleRowIterator

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    sub_1ABAAEE98(self->_lazyTripleRow);
  }

  else
  {
    state->var0 = 1;
    state->var1 = &self->_lazyTripleRow;
    state->var2 = self;
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

  subject = [(GDLazyGraphTripleRow *)lazyTripleRow subject];
  if (![subject isEqualToString:self->_iterateSubjectValue])
  {
    goto LABEL_12;
  }

  predicate = [(GDLazyGraphTripleRow *)self->_lazyTripleRow predicate];
  if (([predicate isEqualToString:self->_iteratePredicateValue] & 1) == 0)
  {

LABEL_12:
    return 0;
  }

  relationshipId = [(GDLazyGraphTripleRow *)self->_lazyTripleRow relationshipId];
  v11 = [relationshipId isEqualToString:self->_iterateRelationshipIdValue];

  return (v11 & 1) != 0;
}

- (GDSQLRelationshipIdTripleRowIterator)initWithLazyTripleRow:(id)row
{
  rowCopy = row;
  v15.receiver = self;
  v15.super_class = GDSQLRelationshipIdTripleRowIterator;
  v6 = [(GDSQLRelationshipIdTripleRowIterator *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lazyTripleRow, row);
    subject = [rowCopy subject];
    iterateSubjectValue = v7->_iterateSubjectValue;
    v7->_iterateSubjectValue = subject;

    predicate = [rowCopy predicate];
    iteratePredicateValue = v7->_iteratePredicateValue;
    v7->_iteratePredicateValue = predicate;

    relationshipId = [rowCopy relationshipId];
    iterateRelationshipIdValue = v7->_iterateRelationshipIdValue;
    v7->_iterateRelationshipIdValue = relationshipId;
  }

  return v7;
}

@end