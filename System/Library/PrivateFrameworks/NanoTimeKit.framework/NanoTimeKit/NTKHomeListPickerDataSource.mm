@interface NTKHomeListPickerDataSource
+ (BOOL)shouldShowTopLevelMoreButton;
+ (id)_titleForHeaderSectionType:(int64_t)type;
+ (id)topLevelItemsForComplicationFamily:(int64_t)family sectionIdentifier:(id)identifier;
- (BOOL)_itemIsSelectedAtIndexPath:(id)path;
- (NTKHomeListPickerDataSource)initWithTableView:(id)view detailConfiguration:(id)configuration;
- (id)_titleForHeaderInSection:(int64_t)section;
- (id)pickerItemForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_numberOfItemsInSection:(int64_t)section;
- (int64_t)_totalSectionCount;
- (int64_t)_upperComplicationsSectionIndex;
- (void)_refreshHomeList;
- (void)dealloc;
@end

@implementation NTKHomeListPickerDataSource

- (NTKHomeListPickerDataSource)initWithTableView:(id)view detailConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = NTKHomeListPickerDataSource;
  v9 = [(NTKHomeListPickerDataSource *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableView, view);
    objc_storeStrong(&v10->_configuration, configuration);
    listProvider = [configurationCopy listProvider];
    v12 = [[NTKCFaceDetailComplicationCellProvider alloc] initWithTableView:viewCopy listProvider:listProvider];
    pickerCellProvider = v10->_pickerCellProvider;
    v10->_pickerCellProvider = v12;

    pickerComplicationFamily = [listProvider pickerComplicationFamily];
    v15 = [NTKHomeListPickerDataSource _titleForHeaderSectionType:0];
    v16 = [NTKHomeListPickerDataSource topLevelItemsForComplicationFamily:pickerComplicationFamily sectionIdentifier:v15];
    upperComplicationsItems = v10->_upperComplicationsItems;
    v10->_upperComplicationsItems = v16;

    [(NTKHomeListPickerDataSource *)v10 _refreshHomeList];
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addHomeManagerObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] removeHomeManagerObserver:self];

  v4.receiver = self;
  v4.super_class = NTKHomeListPickerDataSource;
  [(NTKHomeListPickerDataSource *)&v4 dealloc];
}

+ (id)topLevelItemsForComplicationFamily:(int64_t)family sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if ([MEMORY[0x277D2B978] currentLocationEnergyForecastEnabled])
  {
    v7 = [_TtC11NanoTimeKit28NTKNanoHomeWidgetItemFactory currentLocationEnergyWidgetItemWithComplicationFamily:family sectionIdentifier:identifierCopy];
    if (v7)
    {
      [v6 addObject:v7];
    }
  }

  v8 = [_TtC11NanoTimeKit28NTKNanoHomeWidgetItemFactory smartStackWidgetItemWithComplicationFamily:family sectionIdentifier:identifierCopy];
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = [_TtC11NanoTimeKit28NTKNanoHomeWidgetItemFactory launcherWidgetItemWithComplicationFamily:family sectionIdentifier:identifierCopy];
  if (v9)
  {
    [v6 addObject:v9];
  }

  return v6;
}

+ (BOOL)shouldShowTopLevelMoreButton
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  homes = [homeManager homes];
  v5 = [homes count] != 0;

  return v5;
}

- (id)pickerItemForIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NTKHomeListPickerDataSource _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [pathCopy section]);
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    v7 = 16;
  }

  else
  {
    v7 = 8;
  }

  v3 = [*(&self->super.isa + v7) objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
LABEL_6:

  return v3;
}

- (int64_t)_numberOfItemsInSection:(int64_t)section
{
  result = [(NTKHomeListPickerDataSource *)self _sectionTypeForSectionIndex:section];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v5 = 8;
  }

  v6 = *(&self->super.isa + v5);

  return [v6 count];
}

- (int64_t)_totalSectionCount
{
  _upperComplicationsSectionIsDisplayable = [(NTKHomeListPickerDataSource *)self _upperComplicationsSectionIsDisplayable];
  _homesSectionIsDisplayable = [(NTKHomeListPickerDataSource *)self _homesSectionIsDisplayable];
  v5 = 1;
  if (_upperComplicationsSectionIsDisplayable)
  {
    v5 = 2;
  }

  if (_homesSectionIsDisplayable)
  {
    return v5;
  }

  else
  {
    return _upperComplicationsSectionIsDisplayable;
  }
}

+ (id)_titleForHeaderSectionType:(int64_t)type
{
  if (type == 1)
  {
    v4 = NTKClockFaceLocalizedString(@"COMPLICATION_PICKER_NANOHOME_HOMES_SECTION_NAME", @"Homes");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_titleForHeaderInSection:(int64_t)section
{
  v3 = [(NTKHomeListPickerDataSource *)self _sectionTypeForSectionIndex:section];

  return [NTKHomeListPickerDataSource _titleForHeaderSectionType:v3];
}

- (BOOL)_itemIsSelectedAtIndexPath:(id)path
{
  pathCopy = path;
  configuration = [(NTKHomeListPickerDataSource *)self configuration];
  listProvider = [configuration listProvider];
  pickerSelectedItem = [listProvider pickerSelectedItem];

  v8 = [(NTKHomeListPickerDataSource *)self pickerItemForIndexPath:pathCopy];

  LOBYTE(pathCopy) = [pickerSelectedItem isEqual:v8];
  return pathCopy;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(NTKHomeListPickerDataSource *)self pickerItemForIndexPath:pathCopy];
  pickerCellProvider = [(NTKHomeListPickerDataSource *)self pickerCellProvider];
  v8 = [pickerCellProvider cellForItem:v6 atIndexPath:pathCopy];

  v9 = [(NTKHomeListPickerDataSource *)self _itemIsSelectedAtIndexPath:pathCopy];
  [v8 ntk_setPickerSelected:v9];

  return v8;
}

- (void)_refreshHomeList
{
  v35 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = MEMORY[0x277CBEB18];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  hf_orderedHomes = [homeManager hf_orderedHomes];
  v7 = [v4 arrayWithArray:hf_orderedHomes];

  home = [mEMORY[0x277D146E8] home];

  if (home)
  {
    home2 = [mEMORY[0x277D146E8] home];
    uniqueIdentifier = [home2 uniqueIdentifier];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __47__NTKHomeListPickerDataSource__refreshHomeList__block_invoke;
    v32[3] = &unk_278784C70;
    v33 = uniqueIdentifier;
    v11 = uniqueIdentifier;
    v12 = [v7 indexOfObjectPassingTest:v32];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v7 objectAtIndex:v12];
      [v7 removeObjectAtIndex:v12];
      [v7 insertObject:v13 atIndex:0];
    }
  }

  if ([v7 count])
  {
    selfCopy = self;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v15 = [NTKHomeListPickerDataSource _titleForHeaderSectionType:1];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v7;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = [[NTKHomeListItem alloc] initWithSectionIdentifier:v15];
          uniqueIdentifier2 = [v21 uniqueIdentifier];
          [(NTKHomeListItem *)v22 setHomeID:uniqueIdentifier2];

          name = [v21 name];
          [(NTKHomeListItem *)v22 setHomeLocalizedName:name];

          [(NSArray *)v14 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v18);
    }

    self = selfCopy;
    homeComplicationsItems = selfCopy->_homeComplicationsItems;
    selfCopy->_homeComplicationsItems = v14;

    v7 = v26;
  }

  else
  {
    v15 = self->_homeComplicationsItems;
    self->_homeComplicationsItems = 0;
  }

  [(UITableView *)self->_tableView reloadData];
}

uint64_t __47__NTKHomeListPickerDataSource__refreshHomeList__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (int64_t)_upperComplicationsSectionIndex
{
  if ([(NTKHomeListPickerDataSource *)self _upperComplicationsSectionIsDisplayable])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

@end