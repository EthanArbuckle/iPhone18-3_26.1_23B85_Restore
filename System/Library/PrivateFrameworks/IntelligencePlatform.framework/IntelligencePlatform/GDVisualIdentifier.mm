@interface GDVisualIdentifier
- (GDVisualIdentifier)initWithRelationshipIdTriplesIterator:(id)a3;
- (id)description;
@end

@implementation GDVisualIdentifier

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  associationReason = self->_associationReason;
  suggestedName = self->_suggestedName;
  if (!suggestedName)
  {
    suggestedName = @"nil";
  }

  v6 = [v3 initWithFormat:@"<GDVisualIdentifier id:%@ vid:%@ ar:%@ sn:%@>", *&self->_relationshipIdentifier, self->_associationReason, suggestedName];

  return v6;
}

- (GDVisualIdentifier)initWithRelationshipIdTriplesIterator:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = GDVisualIdentifier;
  v5 = [(GDVisualIdentifier *)&v28 init];
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v4;
    obj = v4;
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
            v12 = [v10 relationshipId];
            v13 = [(GDRelationshipIdentifier *)v11 initWithString:v12];
            relationshipIdentifier = v5->_relationshipIdentifier;
            v5->_relationshipIdentifier = v13;
          }

          v15 = [v10 relationshipPredicate];
          p_visualIdentifier = &v5->_visualIdentifier;
          if ([v15 isEqual:@"nm_visualIdentifier"] & 1) != 0 || (p_visualIdentifier = &v5->_associationReason, (objc_msgSend(v15, "isEqual:", @"nm_associationReason")) || (p_visualIdentifier = &v5->_suggestedName, objc_msgSend(v15, "isEqual:", @"nm_suggestedName")))
          {
            v17 = [v10 object];
            v18 = *p_visualIdentifier;
            *p_visualIdentifier = v17;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    if (!v5->_relationshipIdentifier || !v5->_visualIdentifier)
    {
      v19 = 0;
      v4 = v22;
      goto LABEL_20;
    }

    v4 = v22;
    if (!v5->_associationReason)
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