@interface IDSDestinationComposite
- (IDSDestinationComposite)initWithCoder:(id)a3;
- (IDSDestinationComposite)initWithDestinations:(id)a3;
- (id)description;
- (id)destinationLightweightStatus;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestinationComposite

- (id)destinationURIs
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(IDSDestinationComposite *)self destinations];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 destinationURIs];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [v9 destinationURIs];
          [v3 unionSet:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSDestinationComposite *)self destinations];
  v6 = [v3 stringWithFormat:@"<%@: %p destinations: %@>", v4, self, v5];

  return v6;
}

- (IDSDestinationComposite)initWithDestinations:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSDestinationComposite;
  v5 = [(IDSDestinationComposite *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    destinations = v5->_destinations;
    v5->_destinations = v6;
  }

  return v5;
}

- (IDSDestinationComposite)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = +[IDSDestination classesForStrictUnarchiving];
  [v6 addObjectsFromArray:v7];

  v8 = [v5 decodeObjectOfClasses:v6 forKey:@"kIDSCompositeDestinationDestinations"];

  v9 = [(IDSDestinationComposite *)self initWithDestinations:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSDestinationComposite *)self destinations];
  [v4 encodeObject:v5 forKey:@"kIDSCompositeDestinationDestinations"];
}

- (id)destinationLightweightStatus
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IDSDestinationComposite *)self destinations];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 destinationLightweightStatus];

          [v3 addEntriesFromDictionary:v11];
          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v3;
}

@end