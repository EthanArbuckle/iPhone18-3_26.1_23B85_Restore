@interface GDSoftwareLink
- (GDSoftwareLink)initWithRelationshipIdTriplesIterator:(id)a3;
@end

@implementation GDSoftwareLink

- (GDSoftwareLink)initWithRelationshipIdTriplesIterator:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v26 = v4;
  v6 = v4;
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
        v13 = [v11 relationshipId];
        v14 = [(GDRelationshipIdentifier *)v12 initWithString:v13];
        relationshipIdentifier = v5->_relationshipIdentifier;
        v5->_relationshipIdentifier = v14;
      }

      v16 = [v11 relationshipPredicate];
      if ([v16 isEqual:@"nm_softwareIdentifier"])
      {
        v17 = [GDEntityIdentifier alloc];
        conversationIdentifier = [v11 object];
        v19 = [(GDEntityIdentifier *)v17 initWithString:conversationIdentifier];
        softwareEntityIdentifier = v5->_softwareEntityIdentifier;
        v5->_softwareEntityIdentifier = v19;
      }

      else if ([v16 isEqual:@"PS69"])
      {
        v21 = [v11 object];
        conversationIdentifier = v5->_conversationIdentifier;
        v5->_conversationIdentifier = v21;
      }

      else
      {
        if (![v16 isEqual:@"PS396"])
        {
          goto LABEL_16;
        }

        v22 = [v11 object];
        conversationIdentifier = v5->_identifierType;
        v5->_identifierType = v22;
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
    v4 = v26;
    if (v5->_softwareEntityIdentifier)
    {
      goto LABEL_20;
    }

    v23 = 0;
  }

  else
  {
    v23 = 0;
    v4 = v26;
  }

LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

@end