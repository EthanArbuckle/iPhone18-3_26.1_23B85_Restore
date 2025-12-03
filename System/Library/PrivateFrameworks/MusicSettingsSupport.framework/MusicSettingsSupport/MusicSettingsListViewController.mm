@interface MusicSettingsListViewController
- (id)_sectionedCollectionRepresentation;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
- (id)specifiers;
- (void)_configureCell:(id)cell forIndexPath:(id)path;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateVisibleSpecifiers;
@end

@implementation MusicSettingsListViewController

- (id)_sectionedCollectionRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CD5FD0]);
  numberOfGroups = [(MusicSettingsListViewController *)self numberOfGroups];
  if (numberOfGroups >= 1)
  {
    v5 = numberOfGroups;
    v6 = 0;
    v7 = MEMORY[0x277D3FC48];
    do
    {
      v8 = [(MusicSettingsListViewController *)self specifierAtIndex:[(MusicSettingsListViewController *)self indexOfGroup:v6]];
      [v3 appendSection:v8];
      identifier = [v8 identifier];
      v10 = [(MusicSettingsListViewController *)self rangeOfSpecifiersInGroupID:identifier];
      v12 = v11;

      v13 = [*(&self->super.super.super.super.super.isa + *v7) subarrayWithRange:{v10 + 1, v12 - 1}];
      [v3 appendItems:v13];

      ++v6;
    }

    while (v5 != v6);
  }

  return v3;
}

- (void)_configureCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(MusicSettingsListViewController *)self specifierAtIndexPath:pathCopy];
    [cellCopy setSpecifier:v7];
    [cellCopy refreshCellContentsWithSpecifier:v7];
  }
}

- (void)updateVisibleSpecifiers
{
  v2 = *MEMORY[0x277D3FC48];
  if (*(&self->super.super.super.super.super.isa + v2))
  {
    _sectionedCollectionRepresentation = [(MusicSettingsListViewController *)self _sectionedCollectionRepresentation];
    v5 = _MSS_resolvedSpecifiers(self);
    v6 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v5;

    [(MusicSettingsListViewController *)self prepareSpecifiersMetadata];
    _sectionedCollectionRepresentation2 = [(MusicSettingsListViewController *)self _sectionedCollectionRepresentation];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke;
    v26[3] = &unk_279926210;
    v27 = _sectionedCollectionRepresentation;
    v28 = _sectionedCollectionRepresentation2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_2;
    v23[3] = &unk_279926210;
    v8 = v27;
    v24 = v8;
    v9 = v28;
    v25 = v9;
    v10 = [v8 changeDetailsToSectionedCollection:v9 isEqualBlock:v26 isUpdatedBlock:v23];
    table = [(MusicSettingsListViewController *)self table];
    [(MusicSettingsListViewController *)self setCachesCells:0];
    [(MusicSettingsListViewController *)self setCachesCells:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_3;
    v20[3] = &unk_279926238;
    v12 = table;
    v21 = v12;
    selfCopy = self;
    v13 = MEMORY[0x25F856670](v20);
    v14 = v13;
    if (v10)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_4;
      v17[3] = &unk_279926238;
      v18 = v12;
      v19 = v10;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_7;
      v15[3] = &unk_2799262B0;
      v16 = v14;
      [v18 performBatchUpdates:v17 completion:v15];
    }

    else
    {
      (*(v13 + 16))(v13);
    }
  }
}

uint64_t __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 length];
  v8 = *(a1 + 32);
  if (v7 == 1)
  {
    v9 = [v6 section];

    v10 = [v8 sectionAtIndex:v9];
    v11 = [v10 identifier];

    v12 = *(a1 + 40);
    v13 = [v5 section];

    v14 = [v12 sectionAtIndex:v13];
  }

  else
  {
    v15 = [*(a1 + 32) itemAtIndexPath:v6];

    v11 = [v15 identifier];

    v14 = [*(a1 + 40) itemAtIndexPath:v5];
  }

  v16 = [v14 identifier];

  v17 = [v11 isEqualToString:v16];
  return v17;
}

uint64_t __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 length];
  v8 = *(a1 + 32);
  if (v7 == 1)
  {
    v9 = [v6 section];

    v10 = [v8 sectionAtIndex:v9];
    v11 = *(a1 + 40);
    v12 = [v5 section];

    v13 = [v11 sectionAtIndex:v12];
  }

  else
  {
    v10 = [*(a1 + 32) itemAtIndexPath:v6];

    v13 = [*(a1 + 40) itemAtIndexPath:v5];
  }

  v14 = [v10 music_areDisplayValuesEqual:v13];

  return v14 ^ 1u;
}

void __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) indexPathsForVisibleRows];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) cellForRowAtIndexPath:v7];
        [v8 _configureCell:v9 forIndexPath:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) insertedSections];
  [v2 insertSections:v3 withRowAnimation:0];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deletedSections];
  [v4 deleteSections:v5 withRowAnimation:0];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) updatedSections];
  [v6 reloadSections:v7 withRowAnimation:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_5;
  v18[3] = &unk_279926260;
  v8 = *(a1 + 40);
  v19 = *(a1 + 32);
  [v8 enumerateSectionMovesUsingBlock:v18];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) insertedItemIndexPaths];
  [v9 insertRowsAtIndexPaths:v10 withRowAnimation:0];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) deletedItemIndexPaths];
  [v11 deleteRowsAtIndexPaths:v12 withRowAnimation:0];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) updatedItemIndexPaths];
  [v13 reloadRowsAtIndexPaths:v14 withRowAnimation:0];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__MusicSettingsListViewController_updateVisibleSpecifiers__block_invoke_6;
  v16[3] = &unk_279926288;
  v15 = *(a1 + 40);
  v17 = *(a1 + 32);
  [v15 enumerateItemMovesUsingBlock:v16];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    v11.receiver = self;
    v11.super_class = MusicSettingsListViewController;
    [(MusicSettingsListViewController *)&v11 tableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  }

  [(MusicSettingsListViewController *)self _configureCell:cellCopy forIndexPath:pathCopy];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = _MSS_resolvedSpecifiers(self);
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    name = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) name];
    [(MusicSettingsListViewController *)self setTitle:name];

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = MusicSettingsListViewController;
  [(MusicSettingsListViewController *)&v6 setPreferenceValue:value specifier:specifier];
  [(MusicSettingsListViewController *)self updateVisibleSpecifiers];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained updateVisibleSpecifiers];
  }
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  objc_storeStrong(&self->_stringsTable, name);
  nameCopy = name;
  bundleCopy = bundle;
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = MusicSettingsListViewController;
  v12 = [(MusicSettingsListViewController *)&v14 loadSpecifiersFromPlistName:nameCopy target:targetCopy bundle:bundleCopy];

  return v12;
}

@end