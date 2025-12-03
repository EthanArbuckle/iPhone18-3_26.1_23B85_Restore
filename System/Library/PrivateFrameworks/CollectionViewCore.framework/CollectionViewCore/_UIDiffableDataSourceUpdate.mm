@interface _UIDiffableDataSourceUpdate
+ (id)updateDeleteAll;
- (_UIDiffableDataSourceUpdate)initWithIdentifiers:(id)identifiers sectionIdentifiers:(id)sectionIdentifiers action:(int64_t)action desinationIdentifier:(id)identifier relativePosition:(int64_t)position destinationIsSection:(BOOL)section;
- (_UIDiffableDataSourceUpdate)initWithItemIdentifiers:(id)identifiers appendingToDestinationSectionIdentifier:(id)identifier;
- (_UIDiffableDataSourceUpdate)initWithReconfiguredItemIdentifiers:(id)identifiers;
- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)identifiers action:(int64_t)action;
- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)identifiers action:(int64_t)action destinationIdentifier:(id)identifier relativePosition:(int64_t)position;
- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)identifiers appendingToDestinationSectionIdentifier:(id)identifier;
- (id)description;
- (void)_throwIfInvalid;
@end

@implementation _UIDiffableDataSourceUpdate

- (void)_throwIfInvalid
{
  action = self->_action;
  if (action == 3)
  {
    isSectionOperation = self->_isSectionOperation;
    v7 = [(NSOrderedSet *)self->_identifiers containsObject:self->_destinationIdentifier];
    if (isSectionOperation)
    {
      if (!v7)
      {
        return;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:174 description:{@"Invalid update: destination for section move is the same as the source [%@] for update: %@.", self->_destinationIdentifier, self}];
    }

    else
    {
      if (!v7)
      {
        return;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:176 description:{@"Invalid update: destination for item move is the same as the source [%@] for update: %@.", self->_destinationIdentifier, self}];
    }
  }

  else
  {
    if (action)
    {
      return;
    }

    destinationIdentifier = self->_destinationIdentifier;
    if (self->_isSectionOperation)
    {
      if (!destinationIdentifier || ![(NSOrderedSet *)self->_identifiers containsObject:?])
      {
        return;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:165 description:{@"Invalid update: destination for section operation [%@] is in the inserted section list for update: %@", self->_destinationIdentifier, self}];
    }

    else
    {
      if (!destinationIdentifier || self->_destinationIdentifierIsSectionIdentifier || ![(NSOrderedSet *)self->_identifiers containsObject:?])
      {
        return;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:169 description:{@"Invalid update: destination for insertion operation [%@] is in the insertion identifier list for update: %@.", self->_destinationIdentifier, self}];
    }
  }
}

+ (id)updateDeleteAll
{
  v2 = [[self alloc] initWithIdentifiers:0 sectionIdentifiers:0 action:1 desinationIdentifier:0 relativePosition:2 destinationIsSection:1];
  v2[11] = 1;

  return v2;
}

- (_UIDiffableDataSourceUpdate)initWithIdentifiers:(id)identifiers sectionIdentifiers:(id)sectionIdentifiers action:(int64_t)action desinationIdentifier:(id)identifier relativePosition:(int64_t)position destinationIsSection:(BOOL)section
{
  v52 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  sectionIdentifiersCopy = sectionIdentifiers;
  identifierCopy = identifier;
  if (identifiersCopy && sectionIdentifiersCopy)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v38 = v37 = identifierCopy;
    [v38 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"!(itemIdentifiers && sectionIdentifiers)"}];

    identifierCopy = v37;
  }

  v50.receiver = self;
  v50.super_class = _UIDiffableDataSourceUpdate;
  v18 = [(_UIDiffableDataSourceUpdate *)&v50 init];
  if (v18)
  {
    v45 = a2;
    if (identifiersCopy)
    {
      v19 = identifiersCopy;
    }

    else
    {
      v19 = sectionIdentifiersCopy;
    }

    v20 = v19;
    v21 = [MEMORY[0x277CBEB70] orderedSetWithArray:v20];
    identifiers = v18->_identifiers;
    v18->_identifiers = v21;

    v23 = [(NSOrderedSet *)v18->_identifiers count];
    if (v23 != [v20 count])
    {
      v39 = identifierCopy;
      actionCopy = action;
      identifierCopy2 = identifier;
      v42 = sectionIdentifiersCopy;
      positionCopy = position;
      sectionCopy = section;
      v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v25 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = v20;
      v27 = [v26 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v47;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v47 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v46 + 1) + 8 * i);
            if ([v24 containsObject:v31])
            {
              v32 = v25;
            }

            else
            {
              v32 = v24;
            }

            [v32 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v28);
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v34 = currentHandler;
      v35 = @"section";
      if (identifiersCopy)
      {
        v35 = @"item";
      }

      [currentHandler handleFailureInMethod:v45 object:v18 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:81 description:{@"Fatal: supplied %@ identifiers are not unique. Duplicate identifiers: %@", v35, v25}];

      section = sectionCopy;
      sectionIdentifiersCopy = v42;
      position = positionCopy;
      action = actionCopy;
      identifier = identifierCopy2;
      identifierCopy = v39;
    }

    v18->_action = action;
    v18->_isSectionOperation = sectionIdentifiersCopy != 0;
    objc_storeStrong(&v18->_destinationIdentifier, identifier);
    v18->_relativePosition = position;
    v18->_destinationIdentifierIsSectionIdentifier = section;
    [(_UIDiffableDataSourceUpdate *)v18 _throwIfInvalid];
  }

  return v18;
}

- (_UIDiffableDataSourceUpdate)initWithReconfiguredItemIdentifiers:(id)identifiers
{
  v3 = [(_UIDiffableDataSourceUpdate *)self initWithItemIdentifiers:identifiers action:2];
  v4 = v3;
  if (v3)
  {
    v3->_shouldReconfigure = 1;
  }

  return v4;
}

- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)identifiers action:(int64_t)action
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v8 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:0 sectionIdentifiers:identifiersCopy action:action desinationIdentifier:0 relativePosition:2 destinationIsSection:0];

  return v8;
}

- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)identifiers action:(int64_t)action destinationIdentifier:(id)identifier relativePosition:(int64_t)position
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v13 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:0 sectionIdentifiers:identifiersCopy action:action desinationIdentifier:identifierCopy relativePosition:position destinationIsSection:0];

  return v13;
}

- (_UIDiffableDataSourceUpdate)initWithItemIdentifiers:(id)identifiers appendingToDestinationSectionIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifiers"}];
  }

  v9 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:identifiersCopy sectionIdentifiers:0 action:0 desinationIdentifier:identifierCopy relativePosition:1 destinationIsSection:1];

  return v9;
}

- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)identifiers appendingToDestinationSectionIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v9 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:0 sectionIdentifiers:identifiersCopy action:0 desinationIdentifier:identifierCopy relativePosition:1 destinationIsSection:1];

  return v9;
}

- (id)description
{
  action = self->_action;
  v4 = @"<unknown>";
  if (action <= 1)
  {
    v5 = @"INS";
    if (action == 1)
    {
      v4 = @"DEL";
    }

    v6 = action == 0;
  }

  else
  {
    if (action == 2)
    {
      if (self->_shouldReconfigure)
      {
        v17 = @"REC";
      }

      else
      {
        v17 = @"REL";
      }

      v7 = v17;
      goto LABEL_12;
    }

    v5 = @"MOV";
    if (action == 4)
    {
      v4 = @"NOOP";
    }

    v6 = action == 3;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

LABEL_12:
  array = [(NSOrderedSet *)self->_identifiers array];
  v9 = [array componentsJoinedByString:{@", "}];

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  destinationIdentifier = self->_destinationIdentifier;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_destinationIdentifierIsSectionIdentifier];
  v15 = [v10 stringWithFormat:@"<%@ %p - action: %@ destinationIdentifier:%@; destIsSection: %@; identifiers: [%@]>", v12, self, v7, destinationIdentifier, v14, v9];;

  return v15;
}

@end