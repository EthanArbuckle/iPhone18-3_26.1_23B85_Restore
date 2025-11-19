@interface GDLocation
- (GDLocation)initWithTriplesIterator:(id)a3;
- (id)description;
@end

@implementation GDLocation

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(GDLocation *)self entityIdentifier];
  v6 = [(GDLocation *)self names];
  if (v6)
  {
    v2 = [(GDLocation *)self names];
    v7 = [v2 componentsJoinedByString:@"|"];
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  v8 = [(GDLocation *)self addresses];
  v9 = [v8 count];
  v10 = [(GDLocation *)self addresses];
  v11 = v10;
  if (v9 == 1)
  {
    v12 = [v10 firstObject];
LABEL_8:
    v13 = v12;
    v14 = [v4 stringWithFormat:@"<GDLocation id:%@ n:%@ a:%@>", v5, v7, v12];

    goto LABEL_9;
  }

  if ([v10 count])
  {
    v12 = [(GDLocation *)self addresses];
    goto LABEL_8;
  }

  v14 = [v4 stringWithFormat:@"<GDLocation id:%@ n:%@ a:%@>", v5, v7, &stru_1F20A2CD8];
LABEL_9:

  if (v6)
  {
  }

  return v14;
}

- (GDLocation)initWithTriplesIterator:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v30 = v4;
    v6 = v4;
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
            v13 = [v11 subject];
            v14 = [(GDEntityIdentifier *)v12 initWithString:v13];
            entityIdentifier = v5->_entityIdentifier;
            v5->_entityIdentifier = v14;
          }

          v16 = [v11 predicate];
          if ([v16 isEqual:@"PS33"])
          {
            v17 = [v11 object];
            v18 = v32;
            goto LABEL_11;
          }

          if ([v16 isEqual:@"PS317"])
          {
            v17 = [v11 relationshipPredicate];
            if (![(GDLocationAddress *)v17 isEqual:@"PS1"])
            {
              goto LABEL_12;
            }

            v19 = [v11 object];
            v20 = [v19 isEqual:@"CS97"];

            if (v20)
            {
              v21 = [GDLocationAddress alloc];
              v22 = [v6 relationshipIdIterator];
              v17 = [(GDLocationAddress *)v21 initWithRelationshipIdTriplesIterator:v22];

              if (v17)
              {
                v18 = v31;
LABEL_11:
                [v18 addObject:v17];
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
      v4 = v30;
      goto LABEL_26;
    }

    v23 = [v32 copy];
    names = v5->_names;
    v5->_names = v23;

    v25 = [v31 copy];
    addresses = v5->_addresses;
    v5->_addresses = v25;

    v4 = v30;
  }

  v27 = v5;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

@end