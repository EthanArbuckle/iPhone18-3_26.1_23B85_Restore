@interface GDLazyGraphTripleRow
- (NSString)object;
- (NSString)predicate;
- (NSString)relationshipId;
- (NSString)relationshipPredicate;
- (NSString)sourceDuplicates;
- (NSString)sources;
- (NSString)subject;
- (double)confidence;
- (double)timestamp;
@end

@implementation GDLazyGraphTripleRow

- (NSString)subject
{
  subject = self->_subject;
  if (!subject)
  {
    subjectOverride = self->_subjectOverride;
    if (subjectOverride)
    {
      v6 = subjectOverride;
    }

    else
    {
      v6 = sub_1ABF07B74(self->_cursor, 0);
    }

    v7 = self->_subject;
    self->_subject = v6;

    v8 = [[GDEntityIdentifier alloc] initWithString:self->_subject];
    stringValue = [(GDEntityIdentifier *)v8 stringValue];
    v10 = self->_subject;
    self->_subject = stringValue;

    subject = self->_subject;
    if (!subject)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"_subject"}];

      subject = self->_subject;
    }
  }

  return subject;
}

- (NSString)predicate
{
  predicate = self->_predicate;
  if (!predicate)
  {
    v5 = sub_1ABF07B74(self->_cursor, 1);
    v6 = self->_predicate;
    self->_predicate = v5;

    predicate = self->_predicate;
    if (!predicate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"_predicate"}];

      predicate = self->_predicate;
    }
  }

  return predicate;
}

- (NSString)relationshipPredicate
{
  relationshipPredicate = self->_relationshipPredicate;
  if (!relationshipPredicate)
  {
    v5 = sub_1ABF07B74(self->_cursor, 3);
    v6 = self->_relationshipPredicate;
    self->_relationshipPredicate = v5;

    relationshipPredicate = self->_relationshipPredicate;
    if (!relationshipPredicate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"_relationshipPredicate"}];

      relationshipPredicate = self->_relationshipPredicate;
    }
  }

  return relationshipPredicate;
}

- (NSString)object
{
  object = self->_object;
  if (!object)
  {
    v5 = sub_1ABF07B74(self->_cursor, 4);
    v6 = self->_object;
    self->_object = v5;

    object = self->_object;
    if (!object)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"_object"}];

      object = self->_object;
    }
  }

  return object;
}

- (NSString)relationshipId
{
  relationshipId = self->_relationshipId;
  if (!relationshipId)
  {
    v5 = sub_1ABF07B74(self->_cursor, 2);
    v6 = self->_relationshipId;
    self->_relationshipId = v5;

    relationshipId = self->_relationshipId;
    if (!relationshipId)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"_relationshipId"}];

      relationshipId = self->_relationshipId;
    }
  }

  return relationshipId;
}

- (double)timestamp
{
  timestamp = self->_timestamp;
  if (!timestamp)
  {
    v5 = sub_1ABF07A44(self->_cursor, 8);
    v6 = self->_timestamp;
    self->_timestamp = v5;

    timestamp = self->_timestamp;
    if (!timestamp)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"_timestamp != nil"}];

      timestamp = self->_timestamp;
    }
  }

  [(NSNumber *)timestamp doubleValue];
  return result;
}

- (NSString)sourceDuplicates
{
  sourceDuplicates = self->_sourceDuplicates;
  if (!sourceDuplicates)
  {
    v5 = sub_1ABF07B74(self->_cursor, 7);
    v6 = self->_sourceDuplicates;
    self->_sourceDuplicates = v5;

    sourceDuplicates = self->_sourceDuplicates;
    if (!sourceDuplicates)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"_sourceDuplicates"}];

      sourceDuplicates = self->_sourceDuplicates;
    }
  }

  return sourceDuplicates;
}

- (double)confidence
{
  confidence = self->_confidence;
  if (!confidence)
  {
    v5 = sub_1ABF07A44(self->_cursor, 6);
    v6 = self->_confidence;
    self->_confidence = v5;

    confidence = self->_confidence;
    if (!confidence)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"_confidence != nil"}];

      confidence = self->_confidence;
    }
  }

  [(NSNumber *)confidence doubleValue];
  return result;
}

- (NSString)sources
{
  sources = self->_sources;
  if (!sources)
  {
    v5 = sub_1ABF07B74(self->_cursor, 5);
    v6 = self->_sources;
    self->_sources = v5;

    sources = self->_sources;
    if (!sources)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GDSQLTripleRowIterator.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"_sources"}];

      sources = self->_sources;
    }
  }

  return sources;
}

@end