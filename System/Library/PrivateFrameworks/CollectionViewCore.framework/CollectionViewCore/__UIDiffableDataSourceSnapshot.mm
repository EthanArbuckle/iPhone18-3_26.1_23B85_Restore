@interface __UIDiffableDataSourceSnapshot
- (BOOL)isEqual:(id)a3;
- (NSArray)reconfiguredItemIdentifiers;
- (NSArray)reloadedItemIdentifiers;
- (NSArray)reloadedSectionIdentifiers;
- (NSString)description;
- (__UIDiffableDataSourceSnapshot)init;
- (__UIDiffableDataSourceSnapshot)initWithState:(id)a3;
- (id)_identifiersForSectionsOrItems:(BOOL)a3 reconfiguredOrReloaded:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_commitUpdateAtomic:(id)a3;
- (void)_validateReloadUpdateThrowingIfNeeded:(id)a3;
- (void)appendItemsWithIdentifiers:(id)a3 intoSectionWithIdentifier:(id)a4;
- (void)appendSectionWithIdentifier:(id)a3;
- (void)appendSectionsWithIdentifiers:(id)a3;
- (void)deleteAllItems;
- (void)deleteItemsWithIdentifiers:(id)a3;
- (void)deleteSectionsWithIdentifiers:(id)a3;
- (void)insertItemsWithIdentifiers:(id)a3 afterItemWithIdentifier:(id)a4;
- (void)insertItemsWithIdentifiers:(id)a3 beforeItemWithIdentifier:(id)a4;
- (void)insertSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4;
- (void)insertSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4;
- (void)insertSectionsWithIdentifiers:(id)a3 afterSectionWithIdentifier:(id)a4;
- (void)insertSectionsWithIdentifiers:(id)a3 beforeSectionWithIdentifier:(id)a4;
- (void)moveItemWithIdentifier:(id)a3 afterItemWithIdentifier:(id)a4;
- (void)moveItemWithIdentifier:(id)a3 beforeItemWithIdentifier:(id)a4;
- (void)moveSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4;
- (void)moveSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4;
- (void)reconfigureItemsWithIdentifiers:(id)a3;
- (void)reloadItemsWithIdentifiers:(id)a3;
- (void)reloadSectionsWithIdentifiers:(id)a3;
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
  v3 = [v2 array];

  return v3;
}

- (NSArray)reconfiguredItemIdentifiers
{
  v2 = [(__UIDiffableDataSourceSnapshot *)self _identifiersForSectionsOrItems:0 reconfiguredOrReloaded:1];
  v3 = [v2 array];

  return v3;
}

- (NSArray)reloadedSectionIdentifiers
{
  v2 = [(__UIDiffableDataSourceSnapshot *)self _identifiersForSectionsOrItems:1 reconfiguredOrReloaded:0];
  v3 = [v2 array];

  return v3;
}

- (void)deleteAllItems
{
  v3 = +[_UIDiffableDataSourceUpdate updateDeleteAll];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v3];
}

- (__UIDiffableDataSourceSnapshot)initWithState:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = __UIDiffableDataSourceSnapshot;
  v5 = [(__UIDiffableDataSourceSnapshot *)&v11 init];
  if (v5)
  {
    v6 = [[_UIDiffableDataSourceState alloc] initWithState:v4];
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
  v6 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
  v7 = [(_UIDiffableDataSourceState *)self->_state sections];
  v8 = [(_UIDiffableDataSourceState *)self->_state identifiers];
  v9 = [v3 stringWithFormat:@"<%@ %p: sectionCounts=%@ sections=[%p]; identifiers=[%p]>", v5, self, v6, v7, v8];;

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(__UIDiffableDataSourceSnapshot *)self state];
  v6 = [v4 initWithState:v5];

  if (v6)
  {
    v7 = [(NSMutableArray *)self->_pendingSnapshotUpdates mutableCopy];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(__UIDiffableDataSourceSnapshot *)self numberOfItems];
      if (v6 == [(__UIDiffableDataSourceSnapshot *)v5 numberOfItems]&& (v7 = [(__UIDiffableDataSourceSnapshot *)self numberOfSections], v7 == [(__UIDiffableDataSourceSnapshot *)v5 numberOfSections]))
      {
        v8 = [(__UIDiffableDataSourceSnapshot *)self state];
        v9 = [(__UIDiffableDataSourceSnapshot *)v5 state];
        v10 = [v8 dataSourceSnapshot];
        v11 = [v9 dataSourceSnapshot];
        v12 = [v10 isEqual:v11];

        if (v12 && ([v8 sections], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "sections"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToOrderedSet:", v14), v14, v13, v15))
        {
          v16 = [v8 identifiers];
          v17 = [v9 identifiers];
          v18 = [v16 isEqualToOrderedSet:v17];
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

- (id)_identifiersForSectionsOrItems:(BOOL)a3 reconfiguredOrReloaded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
        if ([v13 isSectionOperation] == v5 && objc_msgSend(v13, "action") == 2 && objc_msgSend(v13, "shouldReconfigure") == v4)
        {
          v14 = [v13 identifiers];
          [v7 unionOrderedSet:v14];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)appendItemsWithIdentifiers:(id)a3 intoSectionWithIdentifier:(id)a4
{
  state = self->_state;
  v8 = a4;
  v9 = a3;
  v10 = [(_UIDiffableDataSourceState *)state dataSourceSnapshot];
  v11 = [v10 numberOfSections];

  if (v11 <= 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:169 description:@"There are currently no sections in the data source. Please add a section first."];
  }

  v13 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:v9 appendingToDestinationSectionIdentifier:v8];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v13];
}

- (void)insertItemsWithIdentifiers:(id)a3 beforeItemWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:v11 action:0 destinationIdentifier:v7 relativePosition:0];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)insertItemsWithIdentifiers:(id)a3 afterItemWithIdentifier:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"destinationIdentifier"}];

LABEL_3:
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:v11 action:0 destinationIdentifier:v7 relativePosition:1];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)deleteItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:v4 action:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)moveItemWithIdentifier:(id)a3 beforeItemWithIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [_UIDiffableDataSourceUpdate alloc];
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v10 = [(_UIDiffableDataSourceUpdate *)v8 initWithItemIdentifiers:v9 action:3 destinationIdentifier:v6 relativePosition:0];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v10];
}

- (void)moveItemWithIdentifier:(id)a3 afterItemWithIdentifier:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [_UIDiffableDataSourceUpdate alloc];
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v10 = [(_UIDiffableDataSourceUpdate *)v8 initWithItemIdentifiers:v9 action:3 destinationIdentifier:v6 relativePosition:1];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v10];
}

- (void)reloadItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithItemIdentifiers:v4 action:2];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)reconfigureItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithReconfiguredItemIdentifiers:v4];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)appendSectionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:v4 appendingToDestinationSectionIdentifier:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)insertSectionsWithIdentifiers:(id)a3 beforeSectionWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:v7 action:0 destinationIdentifier:v6 relativePosition:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)insertSectionsWithIdentifiers:(id)a3 afterSectionWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:v7 action:0 destinationIdentifier:v6 relativePosition:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)deleteSectionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:v4 action:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)moveSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:3 destinationIdentifier:v9 relativePosition:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)moveSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"fromSectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:3 destinationIdentifier:v9 relativePosition:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)reloadSectionsWithIdentifiers:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifiers"}];
  }

  v5 = [[_UIDiffableDataSourceUpdate alloc] initWithSectionIdentifiers:v7 action:2];
  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v5];
}

- (void)appendSectionWithIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];
  }

  v6 = [_UIDiffableDataSourceUpdate alloc];
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [(_UIDiffableDataSourceUpdate *)v6 initWithSectionIdentifiers:v7 appendingToDestinationSectionIdentifier:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v8];
}

- (void)insertSectionWithIdentifier:(id)a3 beforeSectionWithIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:0 destinationIdentifier:v9 relativePosition:0];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)insertSectionWithIdentifier:(id)a3 afterSectionWithIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"toSectionIdentifier"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [_UIDiffableDataSourceUpdate alloc];
  v15[0] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(_UIDiffableDataSourceUpdate *)v10 initWithSectionIdentifiers:v11 action:0 destinationIdentifier:v9 relativePosition:1];

  [(__UIDiffableDataSourceSnapshot *)self _commitUpdateAtomic:v12];
}

- (void)_commitUpdateAtomic:(id)a3
{
  v5 = a3;
  pendingSnapshotUpdates = self->_pendingSnapshotUpdates;
  v23 = v5;
  if (!pendingSnapshotUpdates)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"_pendingSnapshotUpdates"}];

    v5 = v23;
    pendingSnapshotUpdates = self->_pendingSnapshotUpdates;
  }

  [(NSMutableArray *)pendingSnapshotUpdates addObject:v5];
  v7 = [v23 action];
  if (v7 == 2)
  {
    [(__UIDiffableDataSourceSnapshot *)self _validateReloadUpdateThrowingIfNeeded:v23];
  }

  else
  {
    v8 = v7;
    v9 = [(_UIDiffableDataSourceState *)self->_state identifiers];
    v10 = [v9 mutableCopy];

    v11 = [(_UIDiffableDataSourceState *)self->_state sections];
    v12 = [v11 mutableCopy];

    v13 = [(_UIDiffableDataSourceState *)self->_state dataSourceSnapshot];
    v14 = [_UIDataSourceSnapshotter snapshotterForSnapshot:v13];

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
    v19 = [(_UIDiffableDataSourceState *)self->_state generationID];
    v20 = [(_UIDiffableDataSourceState *)v18 initWithGenerationID:v19 identifiers:v10 sections:v12 dataSourceSnapshot:v14];
    state = self->_state;
    self->_state = v20;
  }
}

- (void)_validateReloadUpdateThrowingIfNeeded:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 action] != 2)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"update.action == _CVCCollectionUpdateActionReload"}];
  }

  v6 = [v5 isSectionOperation];
  v7 = [v5 identifiers];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        state = self->_state;
        if (v6)
        {
          if ([(_UIDiffableDataSourceState *)state containsSectionIdentifier:v13])
          {
            goto LABEL_14;
          }

          v15 = [*(v10 + 2192) currentHandler];
          v16 = [v5 shouldReconfigure];
          v17 = @"reload";
          if (v16)
          {
            v17 = @"reconfigure";
          }

          v23 = v13;
          v18 = a2;
          [v15 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:374 description:{@"Attempted to %@ section identifier that does not exist in the snapshot: %@", v17, v23}];
        }

        else
        {
          if ([(_UIDiffableDataSourceState *)state containsItemIdentifier:v13])
          {
            goto LABEL_14;
          }

          v15 = [*(v10 + 2192) currentHandler];
          v19 = [v5 shouldReconfigure];
          v20 = @"reload";
          if (v19)
          {
            v20 = @"reconfigure";
          }

          v24 = v13;
          v18 = a2;
          [v15 handleFailureInMethod:a2 object:self file:@"__UIDiffableDataSourceSnapshot.m" lineNumber:377 description:{@"Attempted to %@ item identifier that does not exist in the snapshot: %@", v20, v24}];
        }

        v10 = 0x277CCA000;
        a2 = v18;
LABEL_14:
        ++v12;
      }

      while (v9 != v12);
      v21 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v9 = v21;
    }

    while (v21);
  }
}

@end