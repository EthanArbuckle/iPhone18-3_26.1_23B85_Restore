@interface GDSQLTripleRowIterator
- (GDSQLTripleRowIterator)initWithColumns:(unint64_t)a3 statement:(id)a4 subjectOverride:(id)a5;
- (id)relationshipIdIterator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation GDSQLTripleRowIterator

- (id)relationshipIdIterator
{
  lazyTripleRow = self->_lazyTripleRow;
  if (lazyTripleRow)
  {
    subject = lazyTripleRow->_subject;
    if (subject || (subject = lazyTripleRow->_subjectOverride) != 0)
    {
      v5 = subject;
    }

    else
    {
      v5 = sub_1ABF07B74(lazyTripleRow->_cursor, 0);
    }

    v6 = lazyTripleRow->_subject;
    lazyTripleRow->_subject = v5;

    v7 = [[GDEntityIdentifier alloc] initWithString:lazyTripleRow->_subject];
    v8 = [(GDEntityIdentifier *)v7 stringValue];
    v9 = lazyTripleRow->_subject;
    lazyTripleRow->_subject = v8;

    predicate = lazyTripleRow->_predicate;
    if (predicate)
    {
      v11 = predicate;
    }

    else
    {
      v11 = sub_1ABF07B74(lazyTripleRow->_cursor, 1);
    }

    v12 = lazyTripleRow->_predicate;
    lazyTripleRow->_predicate = v11;

    relationshipId = lazyTripleRow->_relationshipId;
    if (relationshipId)
    {
      v14 = relationshipId;
    }

    else
    {
      v14 = sub_1ABF07B74(lazyTripleRow->_cursor, 2);
    }

    v15 = lazyTripleRow->_relationshipId;
    lazyTripleRow->_relationshipId = v14;

    relationshipPredicate = lazyTripleRow->_relationshipPredicate;
    if (relationshipPredicate)
    {
      v17 = relationshipPredicate;
    }

    else
    {
      v17 = sub_1ABF07B74(lazyTripleRow->_cursor, 3);
    }

    v18 = lazyTripleRow->_relationshipPredicate;
    lazyTripleRow->_relationshipPredicate = v17;

    object = lazyTripleRow->_object;
    if (object)
    {
      v20 = object;
    }

    else
    {
      v20 = sub_1ABF07B74(lazyTripleRow->_cursor, 4);
    }

    v21 = lazyTripleRow->_object;
    lazyTripleRow->_object = v20;

    sources = lazyTripleRow->_sources;
    if (sources)
    {
      v23 = sources;
    }

    else
    {
      v23 = sub_1ABF07B74(lazyTripleRow->_cursor, 5);
    }

    v24 = lazyTripleRow->_sources;
    lazyTripleRow->_sources = v23;

    confidence = lazyTripleRow->_confidence;
    if (confidence)
    {
      v26 = confidence;
    }

    else
    {
      v26 = sub_1ABF07A44(lazyTripleRow->_cursor, 6);
    }

    v27 = lazyTripleRow->_confidence;
    lazyTripleRow->_confidence = v26;

    sourceDuplicates = lazyTripleRow->_sourceDuplicates;
    if (sourceDuplicates)
    {
      v29 = sourceDuplicates;
    }

    else
    {
      v29 = sub_1ABF07B74(lazyTripleRow->_cursor, 7);
    }

    v30 = lazyTripleRow->_sourceDuplicates;
    lazyTripleRow->_sourceDuplicates = v29;

    timestamp = lazyTripleRow->_timestamp;
    if (timestamp)
    {
      v32 = timestamp;
    }

    else
    {
      v32 = sub_1ABF07A44(lazyTripleRow->_cursor, 8);
    }

    v33 = lazyTripleRow->_timestamp;
    lazyTripleRow->_timestamp = v32;
  }

  v34 = [GDLazyGraphTripleRow alloc];
  v35 = self->_lazyTripleRow;
  if (v35)
  {
    cursor = v35->_cursor;
    subjectOverride = v35->_subjectOverride;
  }

  else
  {
    cursor = 0;
    subjectOverride = 0;
  }

  v38 = cursor;
  v39 = sub_1ABF07EF4(&v34->super.isa, v38, subjectOverride);

  self->_internalIteratorStarted = 1;
  v40 = [[GDSQLRelationshipIdTripleRowIterator alloc] initWithLazyTripleRow:v39];

  return v40;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  p_lazyTripleRow = &self->_lazyTripleRow;
  if (!a3->var0)
  {
    a3->var1 = p_lazyTripleRow;
    a3->var2 = self;
    a3->var0 = 1;
    if (self->_iterateSubjectValue)
    {
      goto LABEL_17;
    }

    lazyTripleRow = *p_lazyTripleRow;
LABEL_13:
    sub_1ABAAEE98(lazyTripleRow);
    goto LABEL_17;
  }

  internalIteratorStarted = self->_internalIteratorStarted;
  lazyTripleRow = self->_lazyTripleRow;
  if (!internalIteratorStarted)
  {
    goto LABEL_13;
  }

  v9 = [(GDLazyGraphTripleRow *)lazyTripleRow subject];
  v10 = [(GDLazyGraphTripleRow *)*p_lazyTripleRow predicate];
  v11 = [(GDLazyGraphTripleRow *)*p_lazyTripleRow relationshipId];
  sub_1ABAAEFEC(*p_lazyTripleRow);
  while (1)
  {
    v12 = *p_lazyTripleRow;
    if (*p_lazyTripleRow)
    {
      cursor = v12->_cursor;
      if (cursor)
      {
        if (cursor->_done)
        {
          break;
        }
      }
    }

    v14 = [(GDLazyGraphTripleRow *)v12 subject];
    if (![v14 isEqualToString:v9])
    {
      goto LABEL_15;
    }

    v15 = [(GDLazyGraphTripleRow *)*p_lazyTripleRow predicate];
    if (([v15 isEqualToString:v10] & 1) == 0)
    {

LABEL_15:
      break;
    }

    v16 = [(GDLazyGraphTripleRow *)*p_lazyTripleRow relationshipId];
    v17 = [v16 isEqualToString:v11];

    if (!v17)
    {
      break;
    }

    sub_1ABAAEE98(*p_lazyTripleRow);
  }

  self->_internalIteratorStarted = 0;

LABEL_17:
  v18 = *p_lazyTripleRow;
  if (*p_lazyTripleRow)
  {
    v19 = v18->_cursor;
    if (v19)
    {
      if (v19->_done)
      {
        return 0;
      }
    }
  }

  iterateSubjectValue = self->_iterateSubjectValue;
  if (!iterateSubjectValue)
  {
    return 1;
  }

  v22 = [(GDLazyGraphTripleRow *)v18 subject];
  v23 = [(NSString *)iterateSubjectValue isEqualToString:v22];

  return v23;
}

- (GDSQLTripleRowIterator)initWithColumns:(unint64_t)a3 statement:(id)a4 subjectOverride:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = sub_1ABF081D8([GDLazyGraphTripleRowCursor alloc], v6, v9);

  v11 = sub_1ABF07EF4([GDLazyGraphTripleRow alloc], v10, v8);
  v12 = sub_1ABF08294(self, v11);

  return v12;
}

@end