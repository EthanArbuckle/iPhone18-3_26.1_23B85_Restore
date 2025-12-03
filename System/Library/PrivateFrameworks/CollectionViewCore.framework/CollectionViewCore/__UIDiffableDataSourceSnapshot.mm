@interface __UIDiffableDataSourceSnapshot
- (BOOL)isEqual:(id)equal;
- (NSArray)reconfiguredItemIdentifiers;
- (NSArray)reloadedItemIdentifiers;
- (NSArray)reloadedSectionIdentifiers;
- (NSString)description;
- (__UIDiffableDataSourceSnapshot)init;
- (__UIDiffableDataSourceSnapshot)initWithState:(id)state;
- (id)_identifiersForSectionsOrItems:(BOOL)items reconfiguredOrReloaded:(BOOL)reloaded;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_commitUpdateAtomic:(id)atomic;
- (void)_validateReloadUpdateThrowingIfNeeded:(id)needed;
- (void)appendItemsWithIdentifiers:(id)identifiers intoSectionWithIdentifier:(id)identifier;
- (void)appendSectionWithIdentifier:(id)identifier;
- (void)appendSectionsWithIdentifiers:(id)identifiers;
- (void)deleteAllItems;
- (void)deleteItemsWithIdentifiers:(id)identifiers;
- (void)deleteSectionsWithIdentifiers:(id)identifiers;
- (void)insertItemsWithIdentifiers:(id)identifiers afterItemWithIdentifier:(id)identifier;
- (void)insertItemsWithIdentifiers:(id)identifiers beforeItemWithIdentifier:(id)identifier;
- (void)insertSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier;
- (void)insertSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier;
- (void)insertSectionsWithIdentifiers:(id)identifiers afterSectionWithIdentifier:(id)identifier;
- (void)insertSectionsWithIdentifiers:(id)identifiers beforeSectionWithIdentifier:(id)identifier;
- (void)moveItemWithIdentifier:(id)identifier afterItemWithIdentifier:(id)withIdentifier;
- (void)moveItemWithIdentifier:(id)identifier beforeItemWithIdentifier:(id)withIdentifier;
- (void)moveSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier;
- (void)moveSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier;
- (void)reconfigureItemsWithIdentifiers:(id)identifiers;
- (void)reloadItemsWithIdentifiers:(id)identifiers;
- (void)reloadSectionsWithIdentifiers:(id)identifiers;
@end

@implementation __UIDiffableDataSourceSnapshot

- (__UIDiffableDataSourceSnapshot)init
{
  v3 = objc_alloc_init(_UIDiffableDataSourceState);
  v4 = [(__UIDiffableDataSourceSnapshot *)self initWithState:v3];

  return v4;
}

- (NSArray)reloadedItemIdentifiers
{
  v2 = [(__UIDiffableDataSourceSnapshot *)self _identifiersForSectionsOrItems:0 reconfiguredOrReloaded:0];
  array = [v2 array];

  return array;
}

- (NSArray)reconfiguredItemIdentifiers
{
  v2 = [(__UIDiffableDataSourceSnapshot *)self _identifiersForSectionsOrItems:0 reconfiguredOrReloaded:1];
  array = [v2 array];

  return array;
}

- (NSArray)reloadedSectionIdentifiers
{
  v2 = [(__UIDiffableDataSourceSnapshot *)self _identifiersForSectionsOrItems:1 reconfiguredOrReloaded:0];
  array = [v2 array];

  return array;
}

- (void)deleteAllItems
{
  v3 = +[_UIDiffableDataSourceUpdate updateDeleteAll];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v3];
}

- (__UIDiffableDataSourceSnapshot)initWithState:(id)state
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = __UIDiffableDataSourceSnapshot;
  v5 = [(__UIDiffableDataSourceSnapshot *)&v11 init];
  if (v5)
  {
    v6 = [[_UIDiffableDataSourceState alloc] initWithState:stateCopy];
    state = v5->_state;
    v5->_state = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSnapshotUpdates = v5->_pendingSnapshotUpdates;
    v5->_pendingSnapshotUpdates = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  sections = [(_UIDiffableDataSourceState *)self->_state sections];
  identifiers = [(_UIDiffableDataSourceState *)self->_state identifiers];
  v9 = [v3 stringWithFormat:@"<%@ %p: sectionCounts=%@ sections=[%p]; identifiers=[%p]>", v5, self, dataSourceSnapshot, sections, identifiers];;

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  state = [(__UIDiffableDataSourceSnapshot *)self state];
  v6 = [v4 initWithState:state];

  if (v6)
  {
    v7 = [(NSMutableArray *)self->_pendingSnapshotUpdates mutableCopy];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numberOfItems = [(__UIDiffableDataSourceSnapshot *)self numberOfItems];
      if (numberOfItems == [(__UIDiffableDataSourceSnapshot *)v5 numberOfItems]&& (v7 = [(__UIDiffableDataSourceSnapshot *)self numberOfSections], v7 == [(__UIDiffableDataSourceSnapshot *)v5 numberOfSections]))
      {
        state = [(__UIDiffableDataSourceSnapshot *)self state];
        state2 = [(__UIDiffableDataSourceSnapshot *)v5 state];
        dataSourceSnapshot = [state dataSourceSnapshot];
        dataSourceSnapshot2 = [state2 dataSourceSnapshot];
        v12 = [dataSourceSnapshot isEqual:dataSourceSnapshot2];

        if (v12 && ([state sections], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(state2, "sections"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToOrderedSet:", v14), v14, v13, v15))
        {
          identifiers = [state identifiers];
          identifiers2 = [state2 identifiers];
          v18 = [identifiers isEqualToOrderedSet:identifiers2];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)_identifiersForSectionsOrItems:(BOOL)items reconfiguredOrReloaded:(BOOL)reloaded
{
  reloadedCopy = reloaded;
  itemsCopy = items;
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_pendingSnapshotUpdates;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isSectionOperation] == itemsCopy && objc_msgSend(v13, "action") == 2 && objc_msgSend(v13, "shouldReconfigure") == reloadedCopy)
        {
          identifiers = [v13 identifiers];
          [v7 unionOrderedSet:identifiers];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)appendItemsWithIdentifiers:(id)identifiers intoSectionWithIdentifier:(id)identifier
{
  state = self->_state;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  dataSourceSnapshot = [(_UIDiffableDataSourceState *)state dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];

  if (numberOfSections <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:169 description:@"There are currently no sections in the data source. Please add a section first."];
  }

  v13 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:identifiersCopy appendingToDestinationSectionIdentifier:identifierCopy];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v13];
}

- (void)insertItemsWithIdentifiers:(id)identifiers beforeItemWithIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:identifiersCopy action:0 destinationIdentifier:identifierCopy relativePosition:0];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)insertItemsWithIdentifiers:(id)identifiers afterItemWithIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:identifiersCopy action:0 destinationIdentifier:identifierCopy relativePosition:1];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)deleteItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:identifiersCopy action:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)moveItemWithIdentifier:(id)identifier beforeItemWithIdentifier:(id)withIdentifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  v8 = [_UIDiffableDataSourceUpdate alloc];
  v11[0] = identifierCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v10 = [(_UIDiffableDataSourceUpdate *)v8 initWithItemIdentifiers:v9 action:3 destinationIdentifier:withIdentifierCopy relativePosition:0];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v10];
}

- (void)moveItemWithIdentifier:(id)identifier afterItemWithIdentifier:(id)withIdentifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  v8 = [_UIDiffableDataSourceUpdate alloc];
  v11[0] = identifierCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v10 = [(_UIDiffableDataSourceUpdate *)v8 initWithItemIdentifiers:v9 action:3 destinationIdentifier:withIdentifierCopy relativePosition:1];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v10];
}

- (void)reloadItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:identifiersCopy action:2];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)reconfigureItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithReconfiguredItemIdentifiers:identifiersCopy];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)appendSectionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:identifiersCopy appendingToDestinationSectionIdentifier:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)insertSectionsWithIdentifiers:(id)identifiers beforeSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:identifiersCopy action:0 destinationIdentifier:identifierCopy relativePosition:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)insertSectionsWithIdentifiers:(id)identifiers afterSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:identifiersCopy action:0 destinationIdentifier:identifierCopy relativePosition:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)deleteSectionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:identifiersCopy action:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)moveSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v9 = withIdentifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!withIdentifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = identifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:3 destinationIdentifier:v9 relativePosition:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)moveSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v9 = withIdentifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!withIdentifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = identifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:3 destinationIdentifier:v9 relativePosition:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)reloadSectionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:identifiersCopy action:2];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)appendSectionWithIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  v6 = [_UIDiffableDataSourceUpdate alloc];
  v10[0] = identifierCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(_UIDiffableDataSourceUpdate *)v6 initWithSectionIdentifiers:v7 appendingToDestinationSectionIdentifier:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)insertSectionWithIdentifier:(id)identifier beforeSectionWithIdentifier:(id)withIdentifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v9 = withIdentifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!withIdentifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = identifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:0 destinationIdentifier:v9 relativePosition:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)insertSectionWithIdentifier:(id)identifier afterSectionWithIdentifier:(id)withIdentifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v9 = withIdentifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!withIdentifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = identifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:0 destinationIdentifier:v9 relativePosition:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)_commitUpdateAtomic:(id)atomic
{
  atomicCopy = atomic;
  pendingSnapshotUpdates = self->_pendingSnapshotUpdates;
  v23 = atomicCopy;
  if (!pendingSnapshotUpdates)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"_pendingSnapshotUpdates"}];

    atomicCopy = v23;
    pendingSnapshotUpdates = self->_pendingSnapshotUpdates;
  }

  [(NSMutableArray *)pendingSnapshotUpdates addObject:atomicCopy];
  action = [v23 action];
  if (action == 2)
  {
    [(__UIDiffableDataSourceSnapshot *)self _validateReloadUpdateThrowingIfNeeded:v23];
  }

  else
  {
    v8 = action;
    identifiers = [(_UIDiffableDataSourceState *)self->_state identifiers];
    v10 = [identifiers mutableCopy];

    sections = [(_UIDiffableDataSourceState *)self->_state sections];
    v12 = [sections mutableCopy];

    dataSourceSnapshot = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
    v14 = [_UIDataSourceSnapshotter snapshotterForSnapshot:dataSourceSnapshot];

    switch(v8)
    {
      case 3:
        v17 = _UIDiffableDataSourceApplyMoveUpdate(v23, v12, v10, v14, 0);
        break;
      case 1:
        v16 = _UIDiffableDataSourceApplyDeleteUpdate(v23, v12, v10, v14, 0);
        break;
      case 0:
        v15 = _UIDiffableDataSourceApplyInsertUpdate(v23, v12, v10, v14, 0);
        break;
    }

    v18 = [_UIDiffableDataSourceState alloc];
    generationID = [(_UIDiffableDataSourceState *)self->_state generationID];
    v20 = [(_UIDiffableDataSourceState *)v18 initWithGenerationID:generationID identifiers:v10 sections:v12 dataSourceSnapshot:v14];
    state = self->_state;
    self->_state = v20;
  }
}

- (void)_validateReloadUpdateThrowingIfNeeded:(id)needed
{
  v30 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if ([neededCopy action] != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"update.action == _CVCCollectionUpdateActionReload"}];
  }

  isSectionOperation = [neededCopy isSectionOperation];
  identifiers = [neededCopy identifiers];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [identifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0x277CCA000uLL;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(identifiers);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        state = self->_state;
        if (isSectionOperation)
        {
          if ([(_UIDiffableDataSourceState *)state containsSectionIdentifier:v13])
          {
            goto LABEL_14;
          }

          currentHandler2 = [*(v10 + 2192) currentHandler];
          shouldReconfigure = [neededCopy shouldReconfigure];
          v17 = @"reload";
          if (shouldReconfigure)
          {
            v17 = @"reconfigure";
          }

          v23 = v13;
          v18 = a2;
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:374 description:{@"Attempted to %@ section identifier that does not exist in the snapshot: %@", v17, v23}];
        }

        else
        {
          if ([(_UIDiffableDataSourceState *)state containsItemIdentifier:v13])
          {
            goto LABEL_14;
          }

          currentHandler2 = [*(v10 + 2192) currentHandler];
          shouldReconfigure2 = [neededCopy shouldReconfigure];
          v20 = @"reload";
          if (shouldReconfigure2)
          {
            v20 = @"reconfigure";
          }

          v24 = v13;
          v18 = a2;
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:377 description:{@"Attempted to %@ item identifier that does not exist in the snapshot: %@", v20, v24}];
        }

        v10 = 0x277CCA000;
        a2 = v18;
LABEL_14:
        ++v12;
      }

      while (v9 != v12);
      v21 = [identifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
      v9 = v21;
    }

    while (v21);
  }
}

@end