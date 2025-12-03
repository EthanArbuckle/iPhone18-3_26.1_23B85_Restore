@interface GDVisualIdentifier
- (GDVisualIdentifier)initWithRelationshipIdTriplesIterator:(id)iterator;
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

  suggestedName = [v3 initWithFormat:@"<GDVisualIdentifier id:%@ vid:%@ ar:%@ sn:%@>", *&self->_relationshipIdentifier, self->_associationReason, suggestedName];

  return suggestedName;
}

- (GDVisualIdentifier)initWithRelationshipIdTriplesIterator:(id)iterator
{
  v30 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v28.receiver = self;
  v28.super_class = GDVisualIdentifier;
  v5 = [(GDVisualIdentifier *)&v28 init];
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
          p_visualIdentifier = &v5->_visualIdentifier;
          if ([relationshipPredicate isEqual:@"nm_visualIdentifier"] & 1) != 0 || (p_visualIdentifier = &v5->_associationReason, (objc_msgSend(relationshipPredicate, "isEqual:", @"nm_associationReason")) || (p_visualIdentifier = &v5->_suggestedName, objc_msgSend(relationshipPredicate, "isEqual:", @"nm_suggestedName")))
          {
            object = [v10 object];
            v18 = *p_visualIdentifier;
            *p_visualIdentifier = object;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    if (!v5->_relationshipIdentifier || !v5->_visualIdentifier)
    {
      v19 = 0;
      iteratorCopy = v22;
      goto LABEL_20;
    }

    iteratorCopy = v22;
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