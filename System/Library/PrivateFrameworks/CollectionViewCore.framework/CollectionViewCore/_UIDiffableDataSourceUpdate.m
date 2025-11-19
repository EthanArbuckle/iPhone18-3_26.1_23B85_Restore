@interface _UIDiffableDataSourceUpdate
+ (id)updateDeleteAll;
- (_UIDiffableDataSourceUpdate)initWithIdentifiers:(id)a3 sectionIdentifiers:(id)a4 action:(int64_t)a5 desinationIdentifier:(id)a6 relativePosition:(int64_t)a7 destinationIsSection:(BOOL)a8;
- (_UIDiffableDataSourceUpdate)initWithItemIdentifiers:(id)a3 appendingToDestinationSectionIdentifier:(id)a4;
- (_UIDiffableDataSourceUpdate)initWithReconfiguredItemIdentifiers:(id)a3;
- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)a3 action:(int64_t)a4;
- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)a3 action:(int64_t)a4 destinationIdentifier:(id)a5 relativePosition:(int64_t)a6;
- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)a3 appendingToDestinationSectionIdentifier:(id)a4;
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

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:174 description:{@"Invalid update: destination for section move is the same as the source [%@] for update: %@.", self->_destinationIdentifier, self}];
    }

    else
    {
      if (!v7)
      {
        return;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:176 description:{@"Invalid update: destination for item move is the same as the source [%@] for update: %@.", self->_destinationIdentifier, self}];
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

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:165 description:{@"Invalid update: destination for section operation [%@] is in the inserted section list for update: %@", self->_destinationIdentifier, self}];
    }

    else
    {
      if (!destinationIdentifier || self->_destinationIdentifierIsSectionIdentifier || ![(NSOrderedSet *)self->_identifiers containsObject:?])
      {
        return;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:169 description:{@"Invalid update: destination for insertion operation [%@] is in the insertion identifier list for update: %@.", self->_destinationIdentifier, self}];
    }
  }
}

+ (id)updateDeleteAll
{
  v2 = [[a1 alloc] initWithIdentifiers:0 sectionIdentifiers:0 action:1 desinationIdentifier:0 relativePosition:2 destinationIsSection:1];
  v2[11] = 1;

  return v2;
}

- (_UIDiffableDataSourceUpdate)initWithIdentifiers:(id)a3 sectionIdentifiers:(id)a4 action:(int64_t)a5 desinationIdentifier:(id)a6 relativePosition:(int64_t)a7 destinationIsSection:(BOOL)a8
{
  v52 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  if (v15 && v16)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v38 = v37 = v17;
    [v38 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"!(itemIdentifiers && sectionIdentifiers)"}];

    v17 = v37;
  }

  v50.receiver = self;
  v50.super_class = _UIDiffableDataSourceUpdate;
  v18 = [(_UIDiffableDataSourceUpdate *)&v50 init];
  if (v18)
  {
    v45 = a2;
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19;
    v21 = [MEMORY[0x277CBEB70] orderedSetWithArray:v20];
    identifiers = v18->_identifiers;
    v18->_identifiers = v21;

    v23 = [(NSOrderedSet *)v18->_identifiers count];
    if (v23 != [v20 count])
    {
      v39 = v17;
      v40 = a5;
      v41 = a6;
      v42 = v16;
      v43 = a7;
      v44 = a8;
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

      v33 = [MEMORY[0x277CCA890] currentHandler];
      v34 = v33;
      v35 = @"section";
      if (v15)
      {
        v35 = @"item";
      }

      [v33 handleFailureInMethod:v45 object:v18 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:81 description:{@"Fatal: supplied %@ identifiers are not unique. Duplicate identifiers: %@", v35, v25}];

      a8 = v44;
      v16 = v42;
      a7 = v43;
      a5 = v40;
      a6 = v41;
      v17 = v39;
    }

    v18->_action = a5;
    v18->_isSectionOperation = v16 != 0;
    objc_storeStrong(&v18->_destinationIdentifier, a6);
    v18->_relativePosition = a7;
    v18->_destinationIdentifierIsSectionIdentifier = a8;
    [(_UIDiffableDataSourceUpdate *)v18 _throwIfInvalid];
  }

  return v18;
}

- (_UIDiffableDataSourceUpdate)initWithReconfiguredItemIdentifiers:(id)a3
{
  v3 = [(_UIDiffableDataSourceUpdate *)self initWithItemIdentifiers:a3 action:2];
  v4 = v3;
  if (v3)
  {
    v3->_shouldReconfigure = 1;
  }

  return v4;
}

- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)a3 action:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v8 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:0 sectionIdentifiers:v7 action:a4 desinationIdentifier:0 relativePosition:2 destinationIsSection:0];

  return v8;
}

- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)a3 action:(int64_t)a4 destinationIdentifier:(id)a5 relativePosition:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v13 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:0 sectionIdentifiers:v11 action:a4 desinationIdentifier:v12 relativePosition:a6 destinationIsSection:0];

  return v13;
}

- (_UIDiffableDataSourceUpdate)initWithItemIdentifiers:(id)a3 appendingToDestinationSectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifiers"}];
  }

  v9 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:v7 sectionIdentifiers:0 action:0 desinationIdentifier:v8 relativePosition:1 destinationIsSection:1];

  return v9;
}

- (_UIDiffableDataSourceUpdate)initWithSectionIdentifiers:(id)a3 appendingToDestinationSectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIDiffableDataSourceUpdate.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v9 = [(_UIDiffableDataSourceUpdate *)self initWithIdentifiers:0 sectionIdentifiers:v7 action:0 desinationIdentifier:v8 relativePosition:1 destinationIsSection:1];

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
  v8 = [(NSOrderedSet *)self->_identifiers array];
  v9 = [v8 componentsJoinedByString:{@", "}];

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  destinationIdentifier = self->_destinationIdentifier;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_destinationIdentifierIsSectionIdentifier];
  v15 = [v10 stringWithFormat:@"<%@ %p - action: %@ destinationIdentifier:%@; destIsSection: %@; identifiers: [%@]>", v12, self, v7, destinationIdentifier, v14, v9];;

  return v15;
}

@end