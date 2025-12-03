@interface GDSoftwareLink
- (GDSoftwareLink)initWithRelationshipIdTriplesIterator:(id)iterator;
@end

@implementation GDSoftwareLink

- (GDSoftwareLink)initWithRelationshipIdTriplesIterator:(id)iterator
{
  v33 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v31.receiver = self;
  v31.super_class = GDSoftwareLink;
  v5 = [(GDSoftwareLink *)&v31 init];
  if (!v5)
  {
LABEL_20:
    v23 = v5;
    goto LABEL_23;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = iteratorCopy;
  v6 = iteratorCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *v28;
  do
  {
    v10 = 0;
    do
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v27 + 1) + 8 * v10);
      if (!v5->_relationshipIdentifier)
      {
        v12 = [GDRelationshipIdentifier alloc];
        relationshipId = [v11 relationshipId];
        v14 = [(GDRelationshipIdentifier *)v12 initWithString:relationshipId];
        relationshipIdentifier = v5->_relationshipIdentifier;
        v5->_relationshipIdentifier = v14;
      }

      relationshipPredicate = [v11 relationshipPredicate];
      if ([relationshipPredicate isEqual:@"nm_softwareIdentifier"])
      {
        v17 = [GDEntityIdentifier alloc];
        conversationIdentifier = [v11 object];
        v19 = [(GDEntityIdentifier *)v17 initWithString:conversationIdentifier];
        softwareEntityIdentifier = v5->_softwareEntityIdentifier;
        v5->_softwareEntityIdentifier = v19;
      }

      else if ([relationshipPredicate isEqual:@"PS69"])
      {
        object = [v11 object];
        conversationIdentifier = v5->_conversationIdentifier;
        v5->_conversationIdentifier = object;
      }

      else
      {
        if (![relationshipPredicate isEqual:@"PS396"])
        {
          goto LABEL_16;
        }

        object2 = [v11 object];
        conversationIdentifier = v5->_identifierType;
        v5->_identifierType = object2;
      }

LABEL_16:
      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  }

  while (v8);
LABEL_18:

  if (v5->_relationshipIdentifier)
  {
    iteratorCopy = v26;
    if (v5->_softwareEntityIdentifier)
    {
      goto LABEL_20;
    }

    v23 = 0;
  }

  else
  {
    v23 = 0;
    iteratorCopy = v26;
  }

LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

@end