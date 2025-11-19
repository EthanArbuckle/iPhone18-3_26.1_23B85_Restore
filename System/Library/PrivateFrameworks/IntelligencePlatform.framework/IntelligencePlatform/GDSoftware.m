@interface GDSoftware
- (GDSoftware)initWithTriplesIterator:(id)a3;
- (id)description;
@end

@implementation GDSoftware

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDSoftware *)self entityIdentifier];
  v5 = [(GDSoftware *)self bundleIdentifiers];
  v6 = [v5 componentsJoinedByString:@"|"];
  v7 = [v3 stringWithFormat:@"<GDSoftware id:%@ bs:%@>", v4, v6];

  return v7;
}

- (GDSoftware)initWithTriplesIterator:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = GDSoftware;
  v5 = [(GDSoftware *)&v29 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          if (!v5->_entityIdentifier)
          {
            v13 = [GDEntityIdentifier alloc];
            v14 = [v12 subject];
            v15 = [(GDEntityIdentifier *)v13 initWithString:v14];
            entityIdentifier = v5->_entityIdentifier;
            v5->_entityIdentifier = v15;
          }

          v17 = [v12 predicate];
          if ([v17 isEqual:@"nm_bundleID"])
          {
            v18 = [v12 object];
            [v6 addObject:v18];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    if (!v5->_entityIdentifier || ![v6 count])
    {

      v21 = 0;
      v4 = v24;
      goto LABEL_18;
    }

    v19 = [v6 copy];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v19;

    v4 = v24;
  }

  v21 = v5;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

@end