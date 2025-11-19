@interface GDPersonLink
- (GDPersonLink)initWithRelationshipIdTriplesIterator:(id)a3;
@end

@implementation GDPersonLink

- (GDPersonLink)initWithRelationshipIdTriplesIterator:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = GDPersonLink;
  v5 = [(GDPersonLink *)&v30 init];
  if (!v5)
  {
LABEL_18:
    v22 = v5;
    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = v4;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v27;
  do
  {
    v10 = 0;
    do
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      if (!v5->_relationshipIdentifier)
      {
        v12 = [GDRelationshipIdentifier alloc];
        v13 = [v11 relationshipId];
        v14 = [(GDRelationshipIdentifier *)v12 initWithString:v13];
        relationshipIdentifier = v5->_relationshipIdentifier;
        v5->_relationshipIdentifier = v14;
      }

      v16 = [v11 relationshipPredicate];
      if ([v16 isEqual:@"nm_relationshipLabel"])
      {
        v17 = [v11 object];
        relationshipLabel = v5->_relationshipLabel;
        v5->_relationshipLabel = v17;
      }

      else
      {
        if (![v16 isEqual:@"nm_personIdentifier"])
        {
          goto LABEL_14;
        }

        v19 = [GDEntityIdentifier alloc];
        relationshipLabel = [v11 object];
        v20 = [(GDEntityIdentifier *)v19 initWithString:relationshipLabel];
        linkedPersonEntityIdentifier = v5->_linkedPersonEntityIdentifier;
        v5->_linkedPersonEntityIdentifier = v20;
      }

LABEL_14:
      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v8);
LABEL_16:

  if (v5->_relationshipIdentifier)
  {
    v4 = v25;
    if (v5->_linkedPersonEntityIdentifier)
    {
      goto LABEL_18;
    }

    v22 = 0;
  }

  else
  {
    v22 = 0;
    v4 = v25;
  }

LABEL_21:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

@end