@interface GDPersonIdentifier
- (GDPersonIdentifier)initWithRelationshipIdTriplesIterator:(id)iterator;
@end

@implementation GDPersonIdentifier

- (GDPersonIdentifier)initWithRelationshipIdTriplesIterator:(id)iterator
{
  v30 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v28.receiver = self;
  v28.super_class = GDPersonIdentifier;
  v5 = [(GDPersonIdentifier *)&v28 init];
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = iteratorCopy;
    obj = iteratorCopy;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          if (!v5->_relationshipIdentifier)
          {
            v11 = [GDRelationshipIdentifier alloc];
            relationshipId = [v10 relationshipId];
            v13 = [(GDRelationshipIdentifier *)v11 initWithString:relationshipId];
            relationshipIdentifier = v5->_relationshipIdentifier;
            v5->_relationshipIdentifier = v13;
          }

          relationshipPredicate = [v10 relationshipPredicate];
          p_type = &v5->_type;
          if ([relationshipPredicate isEqual:@"PS396"] & 1) != 0 || (p_type = &v5->_identifier, (objc_msgSend(relationshipPredicate, "isEqual:", @"PS69")) || (p_type = &v5->_hasProfileImage, objc_msgSend(relationshipPredicate, "isEqual:", @"nm_hasProfileImage")))
          {
            object = [v10 object];
            v18 = *p_type;
            *p_type = object;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    if (!v5->_relationshipIdentifier || !v5->_type)
    {
      v19 = 0;
      iteratorCopy = v22;
      goto LABEL_20;
    }

    iteratorCopy = v22;
    if (!v5->_identifier)
    {
      v19 = 0;
      goto LABEL_20;
    }
  }

  v19 = v5;
LABEL_20:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

@end