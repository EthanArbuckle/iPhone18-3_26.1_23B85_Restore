@interface IDSDestinationComposite
- (IDSDestinationComposite)initWithCoder:(id)coder;
- (IDSDestinationComposite)initWithDestinations:(id)destinations;
- (id)description;
- (id)destinationLightweightStatus;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)coder;
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
  destinations = [(IDSDestinationComposite *)self destinations];
  v5 = [destinations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(destinations);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        destinationURIs = [v9 destinationURIs];
        v11 = [destinationURIs count];

        if (v11)
        {
          destinationURIs2 = [v9 destinationURIs];
          [v3 unionSet:destinationURIs2];
        }
      }

      v6 = [destinations countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  destinations = [(IDSDestinationComposite *)self destinations];
  v6 = [v3 stringWithFormat:@"<%@: %p destinations: %@>", v4, self, destinations];

  return v6;
}

- (IDSDestinationComposite)initWithDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v9.receiver = self;
  v9.super_class = IDSDestinationComposite;
  v5 = [(IDSDestinationComposite *)&v9 init];
  if (v5)
  {
    v6 = [destinationsCopy copy];
    destinations = v5->_destinations;
    v5->_destinations = v6;
  }

  return v5;
}

- (IDSDestinationComposite)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFA8];
  coderCopy = coder;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = +[IDSDestination classesForStrictUnarchiving];
  [v6 addObjectsFromArray:v7];

  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"kIDSCompositeDestinationDestinations"];

  v9 = [(IDSDestinationComposite *)self initWithDestinations:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  destinations = [(IDSDestinationComposite *)self destinations];
  [coderCopy encodeObject:destinations forKey:@"kIDSCompositeDestinationDestinations"];
}

- (id)destinationLightweightStatus
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  destinations = [(IDSDestinationComposite *)self destinations];
  v5 = [destinations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(destinations);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          destinationLightweightStatus = [v10 destinationLightweightStatus];

          [v3 addEntriesFromDictionary:destinationLightweightStatus];
          v7 = destinationLightweightStatus;
        }
      }

      v6 = [destinations countByEnumeratingWithState:&v13 objects:v17 count:16];
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