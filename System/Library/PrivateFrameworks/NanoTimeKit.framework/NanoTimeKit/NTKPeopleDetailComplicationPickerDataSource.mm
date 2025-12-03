@interface NTKPeopleDetailComplicationPickerDataSource
+ (CNContactFormatter)sharedFormatter;
+ (id)_descriptorForRequiredKeysWithDescription:(id)description;
+ (id)_newDataSourceWithName:(id)name;
- (BOOL)_itemIsSelectedAtIndexPath:(id)path;
- (NSIndexPath)selectedIndexPath;
- (NTKPeopleDetailComplicationPickerDataSource)initWithTableView:(id)view detailConfiguration:(id)configuration;
- (id)_contactAtIndexPath:(id)path;
- (id)_sectionIndexTitles;
- (id)complicationItemForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_contactIndexForIdentifier:(id)identifier inContactList:(id)list;
- (int64_t)_favoritesSectionIndex;
- (int64_t)_firstAllContactsSectionIndex;
- (int64_t)_myCardSectionIndex;
- (int64_t)_numberOfItemsInSection:(int64_t)section;
- (int64_t)_sectionTypeForSectionIndex:(int64_t)index;
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

- (NTKPeopleDetailComplicationPickerDataSource)initWithTableView:(id)view detailConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = NTKPeopleDetailComplicationPickerDataSource;
  v9 = [(NTKPeopleDetailComplicationPickerDataSource *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableView, view);
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = [objc_opt_class() _newDataSourceWithName:@"NTKPeopleComplicationPickerViewController:allContacts"];
    allContactsDataSource = v10->_allContactsDataSource;
    v10->_allContactsDataSource = v11;

    _allFavoriteContactsSorted = [(NTKPeopleDetailComplicationPickerDataSource *)v10 _allFavoriteContactsSorted];
    allFavoriteContacts = v10->_allFavoriteContacts;
    v10->_allFavoriteContacts = _allFavoriteContactsSorted;

    _myCard = [(NTKPeopleDetailComplicationPickerDataSource *)v10 _myCard];
    myCard = v10->_myCard;
    v10->_myCard = _myCard;

    listProvider = [configurationCopy listProvider];
    v18 = [[NTKCFaceDetailComplicationCellProvider alloc] initWithTableView:viewCopy listProvider:listProvider];
    pickerCellProvider = v10->_pickerCellProvider;
    v10->_pickerCellProvider = v18;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__contactStoreChanged_ name:*MEMORY[0x277CBD140] object:0];
    [defaultCenter addObserver:v10 selector:sel__favoritesChanged_ name:*MEMORY[0x277CBD1C8] object:0];
  }

  return v10;
}

- (NSIndexPath)selectedIndexPath
{
  configuration = [(NTKPeopleDetailComplicationPickerDataSource *)self configuration];
  listProvider = [configuration listProvider];
  pickerSelectedItem = [listProvider pickerSelectedItem];

  ntk_contactIdentifier = [pickerSelectedItem ntk_contactIdentifier];
  if (!ntk_contactIdentifier)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v7 = +[NTKPeopleComplicationContactsCache sharedCache];
  v8 = [v7 contactForId:ntk_contactIdentifier];

  if (self->_myCard)
  {
    _myCardSectionIndex = [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex];
    if (_myCardSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = _myCardSectionIndex;
      v17 = MEMORY[0x277CCAA70];
      v18 = 0;
LABEL_10:
      v15 = [v17 indexPathForItem:v18 inSection:v16];
      goto LABEL_11;
    }
  }

  allFavoriteContacts = [(NTKPeopleDetailComplicationPickerDataSource *)self allFavoriteContacts];
  v11 = [allFavoriteContacts indexOfObject:v8];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _favoritesSectionIndex = [(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionIndex];
    if (_favoritesSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = _favoritesSectionIndex;
      v17 = MEMORY[0x277CCAA70];
      v18 = v11;
      goto LABEL_10;
    }
  }

  allContactsDataSource = [(NTKPeopleDetailComplicationPickerDataSource *)self allContactsDataSource];
  v14 = [allContactsDataSource indexPathForContact:v8];

  v15 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v14 inSection:{"item"), objc_msgSend(v14, "section") + 1}];

LABEL_11:
LABEL_12:

  return v15;
}

- (id)complicationItemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NTKPeopleDetailComplicationPickerDataSource *)self _contactAtIndexPath:pathCopy];
  v6 = [(NTKPeopleDetailComplicationPickerDataSource *)self _isMyCardAtIndexPath:pathCopy]|| [(NTKPeopleDetailComplicationPickerDataSource *)self _isFavoriteAtIndexPath:pathCopy];
  v7 = [NTKPeopleComplication complicationForContact:v5 forPromotedSection:v6];

  return v7;
}

- (int64_t)_numberOfItemsInSection:(int64_t)section
{
  v5 = [(NTKPeopleDetailComplicationPickerDataSource *)self _sectionTypeForSectionIndex:?];
  if (v5 == 2)
  {
    _allContactsSections = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
    if (_allContactsSections)
    {
      v10 = section - [(NTKPeopleDetailComplicationPickerDataSource *)self _firstAllContactsSectionIndex];
      if (v10 >= [_allContactsSections count])
      {

        return 0;
      }

      contacts = [_allContactsSections objectAtIndexedSubscript:v10];
      [contacts range];
      v6 = v12;
    }

    else
    {
      contacts = [(CNContactStoreDataSource *)self->_allContactsDataSource contacts];
      v6 = [contacts count];
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
  _allContactsSections = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
  v4 = [_allContactsSections count];

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

- (BOOL)_itemIsSelectedAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NTKPeopleDetailComplicationPickerDataSource *)self _contactAtIndexPath:pathCopy];
  identifier = [v5 identifier];
  configuration = [(NTKPeopleDetailComplicationPickerDataSource *)self configuration];
  listProvider = [configuration listProvider];
  pickerSelectedItem = [listProvider pickerSelectedItem];

  ntk_contactIdentifier = [pickerSelectedItem ntk_contactIdentifier];
  if (-[NTKPeopleDetailComplicationPickerDataSource _isMyCardAtIndexPath:](self, "_isMyCardAtIndexPath:", pathCopy) || -[NTKPeopleDetailComplicationPickerDataSource _isFavoriteAtIndexPath:](self, "_isFavoriteAtIndexPath:", pathCopy) || [pickerSelectedItem ntk_itemType] == 4)
  {
    v11 = [identifier isEqual:ntk_contactIdentifier];
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
  _allContactsSections = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([_allContactsSections count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = _allContactsSections;
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

          title = [*(*(&v12 + 1) + 8 * i) title];
          [v3 addObject:title];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v10 = [v3 copy];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(NTKPeopleDetailComplicationPickerDataSource *)self complicationItemForIndexPath:pathCopy];
  pickerCellProvider = [(NTKPeopleDetailComplicationPickerDataSource *)self pickerCellProvider];
  v8 = [pickerCellProvider cellForItem:v6 atIndexPath:pathCopy];

  v9 = [(NTKPeopleDetailComplicationPickerDataSource *)self _itemIsSelectedAtIndexPath:pathCopy];
  [v8 ntk_setPickerSelected:v9];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v6 = [(NTKPeopleDetailComplicationPickerDataSource *)self _sectionTypeForSectionIndex:section];
  switch(v6)
  {
    case 2:
      _allContactsSections = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
      if (_allContactsSections)
      {
        v11 = section - [(NTKPeopleDetailComplicationPickerDataSource *)self _firstAllContactsSectionIndex];
        if (v11 < [_allContactsSections count])
        {
          _allContactsSections2 = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
          v13 = [_allContactsSections2 objectAtIndex:v11];
          title = [v13 title];

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
      title = NTKClockFaceLocalizedString(v7, v8);
      goto LABEL_12;
  }

  title = &stru_284110E98;
LABEL_12:

  return title;
}

- (id)_contactAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NTKPeopleDetailComplicationPickerDataSource _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  if (v6 == 2)
  {
    section = [pathCopy section];
    v10 = [pathCopy row];
    _allContactsSections = [(NTKPeopleDetailComplicationPickerDataSource *)self _allContactsSections];
    if (_allContactsSections)
    {
      v12 = section - [(NTKPeopleDetailComplicationPickerDataSource *)self _firstAllContactsSectionIndex];
      if (v12 < [_allContactsSections count])
      {
        v13 = [_allContactsSections objectAtIndexedSubscript:v12];
        range = [v13 range];
        v10 = range + [pathCopy row];
      }
    }

    contacts = [(CNContactStoreDataSource *)self->_allContactsDataSource contacts];
    if (v10 >= [contacts count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [contacts objectAtIndexedSubscript:v10];
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

    v8 = [pathCopy row];
    if (v8 < [(NSArray *)self->_allFavoriteContacts count])
    {
      v7 = -[NSArray objectAtIndexedSubscript:](self->_allFavoriteContacts, "objectAtIndexedSubscript:", [pathCopy row]);
LABEL_7:
      v3 = v7;
      goto LABEL_16;
    }

    v3 = 0;
  }

LABEL_16:

  return v3;
}

- (int64_t)_contactIndexForIdentifier:(id)identifier inContactList:(id)list
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(listCopy);
      }

      identifier = [*(*(&v16 + 1) + 8 * v11) identifier];
      v14 = [identifier isEqualToString:identifierCopy];

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [listCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    _myCardSectionIndex = [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex];
    if (_myCardSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return _myCardSectionIndex + 1;
    }
  }

  return v3;
}

- (int64_t)_firstAllContactsSectionIndex
{
  _favoritesSectionIndex = [(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionIndex];
  if (_favoritesSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    return _favoritesSectionIndex + 1;
  }

  _myCardSectionIndex = [(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex];
  if (_myCardSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return _myCardSectionIndex + 1;
  }
}

- (int64_t)_sectionTypeForSectionIndex:(int64_t)index
{
  if ([(NTKPeopleDetailComplicationPickerDataSource *)self _myCardSectionIndex]== index)
  {
    return 0;
  }

  if ([(NTKPeopleDetailComplicationPickerDataSource *)self _favoritesSectionIndex]== index)
  {
    return 1;
  }

  return 2;
}

+ (id)_newDataSourceWithName:(id)name
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDAC0];
  nameCopy = name;
  v6 = objc_alloc_init(v4);
  v7 = tcc_identity_create();
  [v6 setAssumedIdentity:v7];

  v8 = objc_alloc(MEMORY[0x277CBDC30]);
  v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v6];
  v10 = [v8 initWithStore:v9];

  v11 = [self _descriptorForRequiredKeysWithDescription:nameCopy];

  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v10 setKeysToFetch:v12];

  [v10 setFetchUnified:1];
  return v10;
}

+ (id)_descriptorForRequiredKeysWithDescription:(id)description
{
  descriptionCopy = description;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__NTKPeopleDetailComplicationPickerDataSource__descriptorForRequiredKeysWithDescription___block_invoke;
  block[3] = &unk_27877DB10;
  v10 = descriptionCopy;
  v4 = _descriptorForRequiredKeysWithDescription__cn_once_token_0;
  v5 = descriptionCopy;
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