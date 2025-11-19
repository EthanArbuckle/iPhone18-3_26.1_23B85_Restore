@interface NTKPeopleDetailComplicationPickerDataSource
+ (CNContactFormatter)sharedFormatter;
+ (id)_descriptorForRequiredKeysWithDescription:(id)a3;
+ (id)_newDataSourceWithName:(id)a3;
- (BOOL)_itemIsSelectedAtIndexPath:(id)a3;
- (NSIndexPath)selectedIndexPath;
- (NTKPeopleDetailComplicationPickerDataSource)initWithTableView:(id)a3 detailConfiguration:(id)a4;
- (id)_contactAtIndexPath:(id)a3;
- (id)_sectionIndexTitles;
- (id)complicationItemForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_contactIndexForIdentifier:(id)a3 inContactList:(id)a4;
- (int64_t)_favoritesSectionIndex;
- (int64_t)_firstAllContactsSectionIndex;
- (int64_t)_myCardSectionIndex;
- (int64_t)_numberOfItemsInSection:(int64_t)a3;
- (int64_t)_sectionTypeForSectionIndex:(int64_t)a3;
- (int64_t)_totalSectionCount;
@end

@implementation NTKPeopleDetailComplicationPickerDataSource

+ (CNContactFormatter)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    +[NTKPeopleDetailComplicationPickerDataSource sharedFormatter];
  }

  v3 = sharedFormatter_formatter;

  return v3;
}

uint64_t __62__NTKPeopleDetailComplicationPickerDataSource_sharedFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedFormatter_formatter;
  sharedFormatter_formatter = v0;

  [sharedFormatter_formatter setStyle:0];
  [sharedFormatter_formatter setEmphasizesPrimaryNameComponent:1];
  v2 = sharedFormatter_formatter;

  return [v2 setFallbackStyle:-1];
}

- (NTKPeopleDetailComplicationPickerDataSource)initWithTableView:(id)a3 detailConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKPeopleDetailComplicationPickerDataSource;
  v9 = [(NTKPeopleDetailComplicationPickerDataSource *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableView, a3);
    objc_storeStrong(&v10->_configuration, a4);
    v11 = [objc_opt_class() _newDataSourceWithName:@"NTKPeopleComplicationPickerViewController:allContacts"];
    allContactsDataSource = v10->_allContactsDataSource;
    v10->_allContactsDataSource = v11;

    v13 = [(NTKPeopleDetailComplicationPickerDataSource *)v10 _allFavoriteContactsSorted];
    allFavoriteContacts = v10->_allFavoriteContacts;
    v10->_allFavoriteContacts = v13;

    v15 = [(NTKPeopleDetailComplicationPickerDataSource *)v10 _myCard];
    myCard = v10->_myCard;
    v10->_myCard = v15;

    v17 = [v8 listProvider];
    v18 = [[NTKCFaceDetailComplicationCellProvider alloc] initWithTableView:v7 listProvider:v17];
    pickerCellProvider = v10->_pickerCellProvider;
    v10->_pickerCellProvider = v18;

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v10 selector:sel__contactStoreChanged_ name:*MEMORY[0x277CBD140] object:0];
    [v20 addObserver:v10 selector:sel__favoritesChanged_ name:*MEMORY[0x277CBD1C8] object:0];
  }

  return v10;
}

- (NSIndexPath)selectedIndexPath
{
  v3 = [(NTKPeopleDetailComplicationPickerDataSource *)self configuration];
  v4 = [v3 listProvider];
  v5 = [v4 pickerSelectedItem];

  v6 = [v5 ntk_contactIdentifier];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v7 = +[NTKPeopleComplicationContactsCache sharedCache];
  v8 = [v7 contactForId:v6];

  if (self->_myCard)
  {
    v9 = [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v9;
      v17 = MEMORY[0x277CCAA70];
      v18 = 0;
LABEL_10:
      v15 = [v17 indexPathForItem:v18 inSection:v16];
      goto LABEL_11;
    }
  }

  v10 = [(NTKPeopleDetailComplicationPickerDataSource *)self allFavoriteContacts];
  v11 = [v10 indexOfObject:v8];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionIndex];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v12;
      v17 = MEMORY[0x277CCAA70];
      v18 = v11;
      goto LABEL_10;
    }
  }

  v13 = [(NTKPeopleDetailComplicationPickerDataSource *)self allContactsDataSource];
  v14 = [v13 indexPathForContact:v8];

  v15 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v14 inSection:{"item"), objc_msgSend(v14, "section") + 1}];

LABEL_11:
LABEL_12:

  return v15;
}

- (id)complicationItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NTKPeopleDetailComplicationPickerDataSource *)self _contactAtIndexPath:v4];
  v6 = [(NTKPeopleDetailComplicationPickerDataSource *)self _isMyCardAtIndexPath:v4]|| [(NTKPeopleDetailComplicationPickerDataSource *)self _isFavoriteAtIndexPath:v4];
  v7 = [NTKPeopleComplication complicationForContact:v5 forPromotedSection:v6];

  return v7;
}

- (int64_t)_numberOfItemsInSection:(int64_t)a3
{
  v5 = [(NTKPeopleDetailComplicationPickerDataSource *)self _sectionTypeForSectionIndex:?];
  if (v5 == 2)
  {
    v9 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
    if (v9)
    {
      v10 = a3 - [(NTKPeopleDetailComplicationPickerDataSource *)self _firstAllContactsSectionIndex];
      if (v10 >= [v9 count])
      {

        return 0;
      }

      v11 = [v9 objectAtIndexedSubscript:v10];
      [v11 range];
      v6 = v12;
    }

    else
    {
      v11 = [(CNContactStoreDataSource *)self->_allContactsDataSource contacts];
      v6 = [v11 count];
    }

    return v6;
  }

  if (v5 != 1)
  {
    if (!v5)
    {
      return self->_myCard != 0;
    }

    return 0;
  }

  allFavoriteContacts = self->_allFavoriteContacts;

  return [(NSArray *)allFavoriteContacts count];
}

- (int64_t)_totalSectionCount
{
  v3 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
  v4 = [v3 count];

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 + [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionNeeded];
  return v6 + [(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionNeeded];
}

- (BOOL)_itemIsSelectedAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NTKPeopleDetailComplicationPickerDataSource *)self _contactAtIndexPath:v4];
  v6 = [v5 identifier];
  v7 = [(NTKPeopleDetailComplicationPickerDataSource *)self configuration];
  v8 = [v7 listProvider];
  v9 = [v8 pickerSelectedItem];

  v10 = [v9 ntk_contactIdentifier];
  if (-[NTKPeopleDetailComplicationPickerDataSource _isMyCardAtIndexPath:](self, "_isMyCardAtIndexPath:", v4) || -[NTKPeopleDetailComplicationPickerDataSource _isFavoriteAtIndexPath:](self, "_isFavoriteAtIndexPath:", v4) || [v9 ntk_itemType] == 4)
  {
    v11 = [v6 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_sectionIndexTitles
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v2 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) title];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v10 = [v3 copy];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NTKPeopleDetailComplicationPickerDataSource *)self complicationItemForIndexPath:v5];
  v7 = [(NTKPeopleDetailComplicationPickerDataSource *)self pickerCellProvider];
  v8 = [v7 cellForItem:v6 atIndexPath:v5];

  v9 = [(NTKPeopleDetailComplicationPickerDataSource *)self _itemIsSelectedAtIndexPath:v5];
  [v8 ntk_setPickerSelected:v9];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(NTKPeopleDetailComplicationPickerDataSource *)self _sectionTypeForSectionIndex:a4];
  switch(v6)
  {
    case 2:
      v10 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
      if (v10)
      {
        v11 = a4 - [(NTKPeopleDetailComplicationPickerDataSource *)self _firstAllContactsSectionIndex];
        if (v11 < [v10 count])
        {
          v12 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
          v13 = [v12 objectAtIndex:v11];
          v9 = [v13 title];

          goto LABEL_12;
        }
      }

      break;
    case 1:
      v7 = @"COMPLICATION_PICKER_PEOPLE_FAVORITES_SECTION_NAME";
      v8 = @"FAVORITES";
      goto LABEL_6;
    case 0:
      v7 = @"COMPLICATION_PICKER_PEOPLE_MY_CARD_SECTION_NAME";
      v8 = @"MY CARD";
LABEL_6:
      v9 = NTKClockFaceLocalizedString(v7, v8);
      goto LABEL_12;
  }

  v9 = &stru_284110E98;
LABEL_12:

  return v9;
}

- (id)_contactAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = -[NTKPeopleDetailComplicationPickerDataSource _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v5 section]);
  if (v6 == 2)
  {
    v9 = [v5 section];
    v10 = [v5 row];
    v11 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
    if (v11)
    {
      v12 = v9 - [(NTKPeopleDetailComplicationPickerDataSource *)self _firstAllContactsSectionIndex];
      if (v12 < [v11 count])
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        v14 = [v13 range];
        v10 = v14 + [v5 row];
      }
    }

    v15 = [(CNContactStoreDataSource *)self->_allContactsDataSource contacts];
    if (v10 >= [v15 count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [v15 objectAtIndexedSubscript:v10];
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6)
      {
        goto LABEL_16;
      }

      v7 = self->_myCard;
      goto LABEL_7;
    }

    v8 = [v5 row];
    if (v8 < [(NSArray *)self->_allFavoriteContacts count])
    {
      v7 = -[NSArray objectAtIndexedSubscript:](self->_allFavoriteContacts, "objectAtIndexedSubscript:", [v5 row]);
LABEL_7:
      v3 = v7;
      goto LABEL_16;
    }

    v3 = 0;
  }

LABEL_16:

  return v3;
}

- (int64_t)_contactIndexForIdentifier:(id)a3 inContactList:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v9 += v8;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = [*(*(&v16 + 1) + 8 * v11) identifier];
      v14 = [v13 isEqualToString:v5];

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = -1;
  }

  return v12;
}

- (int64_t)_myCardSectionIndex
{
  if ([(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionNeeded])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)_favoritesSectionIndex
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionNeeded])
  {
    v4 = [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v4 + 1;
    }
  }

  return v3;
}

- (int64_t)_firstAllContactsSectionIndex
{
  v3 = [(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3 + 1;
  }

  v4 = [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v4 + 1;
  }
}

- (int64_t)_sectionTypeForSectionIndex:(int64_t)a3
{
  if ([(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex]== a3)
  {
    return 0;
  }

  if ([(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionIndex]== a3)
  {
    return 1;
  }

  return 2;
}

+ (id)_newDataSourceWithName:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDAC0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = tcc_identity_create();
  [v6 setAssumedIdentity:v7];

  v8 = objc_alloc(MEMORY[0x277CBDC30]);
  v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v6];
  v10 = [v8 initWithStore:v9];

  v11 = [a1 _descriptorForRequiredKeysWithDescription:v5];

  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v10 setKeysToFetch:v12];

  [v10 setFetchUnified:1];
  return v10;
}

+ (id)_descriptorForRequiredKeysWithDescription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__NTKPeopleDetailComplicationPickerDataSource__descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_27877DB10;
  v10 = v3;
  v4 = _descriptorForRequiredKeysWithDescription__cn_once_token_0;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&_descriptorForRequiredKeysWithDescription__cn_once_token_0, block);
  }

  v6 = _descriptorForRequiredKeysWithDescription__cn_once_object_0;
  v7 = _descriptorForRequiredKeysWithDescription__cn_once_object_0;

  return v6;
}

void __89__NTKPeopleDetailComplicationPickerDataSource__descriptorForRequiredKeysWithDescription___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBDA58];
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{1002, v3}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v7 = [v2 descriptorWithKeyDescriptors:v6 description:*(a1 + 32)];
  v8 = _descriptorForRequiredKeysWithDescription__cn_once_object_0;
  _descriptorForRequiredKeysWithDescription__cn_once_object_0 = v7;
}

@end