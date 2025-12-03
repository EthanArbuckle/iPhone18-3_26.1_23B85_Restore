@interface GDLocation
- (GDLocation)initWithTriplesIterator:(id)iterator;
- (id)description;
@end

@implementation GDLocation

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  entityIdentifier = [(GDLocation *)self entityIdentifier];
  names = [(GDLocation *)self names];
  if (names)
  {
    names2 = [(GDLocation *)self names];
    v7 = [names2 componentsJoinedByString:@"|"];
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  addresses = [(GDLocation *)self addresses];
  v9 = [addresses count];
  addresses2 = [(GDLocation *)self addresses];
  v11 = addresses2;
  if (v9 == 1)
  {
    firstObject = [addresses2 firstObject];
LABEL_8:
    v13 = firstObject;
    v14 = [v4 stringWithFormat:@"<GDLocation id:%@ n:%@ a:%@>", entityIdentifier, v7, firstObject];

    goto LABEL_9;
  }

  if ([addresses2 count])
  {
    firstObject = [(GDLocation *)self addresses];
    goto LABEL_8;
  }

  v14 = [v4 stringWithFormat:@"<GDLocation id:%@ n:%@ a:%@>", entityIdentifier, v7, &stru_1F20A2CD8];
LABEL_9:

  if (names)
  {
  }

  return v14;
}

- (GDLocation)initWithTriplesIterator:(id)iterator
{
  v39 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v37.receiver = self;
  v37.super_class = GDLocation;
  v5 = [(GDLocation *)&v37 init];
  if (v5)
  {
    v31 = objc_opt_new();
    v32 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = iteratorCopy;
    v6 = iteratorCopy;
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * v10);
          if (!v5->_entityIdentifier)
          {
            v12 = [GDEntityIdentifier alloc];
            subject = [v11 subject];
            v14 = [(GDEntityIdentifier *)v12 initWithString:subject];
            entityIdentifier = v5->_entityIdentifier;
            v5->_entityIdentifier = v14;
          }

          predicate = [v11 predicate];
          if ([predicate isEqual:@"PS33"])
          {
            object = [v11 object];
            v18 = v32;
            goto LABEL_11;
          }

          if ([predicate isEqual:@"PS317"])
          {
            object = [v11 relationshipPredicate];
            if (![(GDLocationAddress *)object isEqual:@"PS1"])
            {
              goto LABEL_12;
            }

            object2 = [v11 object];
            v20 = [object2 isEqual:@"CS97"];

            if (v20)
            {
              v21 = [GDLocationAddress alloc];
              relationshipIdIterator = [v6 relationshipIdIterator];
              object = [(GDLocationAddress *)v21 initWithRelationshipIdTriplesIterator:relationshipIdIterator];

              if (object)
              {
                v18 = v31;
LABEL_11:
                [v18 addObject:object];
              }

LABEL_12:
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }

    if (!v5->_entityIdentifier || ![v32 count] && !objc_msgSend(v31, "count"))
    {

      v27 = 0;
      iteratorCopy = v30;
      goto LABEL_26;
    }

    v23 = [v32 copy];
    names = v5->_names;
    v5->_names = v23;

    v25 = [v31 copy];
    addresses = v5->_addresses;
    v5->_addresses = v25;

    iteratorCopy = v30;
  }

  v27 = v5;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

@end