@interface NTKHomeListPickerDataSource
+ (BOOL)shouldShowTopLevelMoreButton;
+ (id)_titleForHeaderSectionType:(int64_t)a3;
+ (id)topLevelItemsForComplicationFamily:(int64_t)a3 sectionIdentifier:(id)a4;
- (BOOL)_itemIsSelectedAtIndexPath:(id)a3;
- (NTKHomeListPickerDataSource)initWithTableView:(id)a3 detailConfiguration:(id)a4;
- (id)_titleForHeaderInSection:(int64_t)a3;
- (id)pickerItemForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_numberOfItemsInSection:(int64_t)a3;
- (int64_t)_totalSectionCount;
- (int64_t)_upperComplicationsSectionIndex;
- (void)_refreshHomeList;
- (void)dealloc;
@end

@implementation NTKHomeListPickerDataSource

- (NTKHomeListPickerDataSource)initWithTableView:(id)a3 detailConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NTKHomeListPickerDataSource;
  v9 = [(NTKHomeListPickerDataSource *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableView, a3);
    objc_storeStrong(&v10->_configuration, a4);
    v11 = [v8 listProvider];
    v12 = [[NTKCFaceDetailComplicationCellProvider alloc] initWithTableView:v7 listProvider:v11];
    pickerCellProvider = v10->_pickerCellProvider;
    v10->_pickerCellProvider = v12;

    v14 = [v11 pickerComplicationFamily];
    v15 = [NTKHomeListPickerDataSource _titleForHeaderSectionType:0];
    v16 = [NTKHomeListPickerDataSource topLevelItemsForComplicationFamily:v14 sectionIdentifier:v15];
    upperComplicationsItems = v10->_upperComplicationsItems;
    v10->_upperComplicationsItems = v16;

    [(NTKHomeListPickerDataSource *)v10 _refreshHomeList];
    v18 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v18 addHomeManagerObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v3 removeHomeManagerObserver:self];

  v4.receiver = self;
  v4.super_class = NTKHomeListPickerDataSource;
  [(NTKHomeListPickerDataSource *)&v4 dealloc];
}

+ (id)topLevelItemsForComplicationFamily:(int64_t)a3 sectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if ([MEMORY[0x277D2B978] currentLocationEnergyForecastEnabled])
  {
    v7 = [_TtC11NanoTimeKit28NTKNanoHomeWidgetItemFactory currentLocationEnergyWidgetItemWithComplicationFamily:a3 sectionIdentifier:v5];
    if (v7)
    {
      [v6 addObject:v7];
    }
  }

  v8 = [_TtC11NanoTimeKit28NTKNanoHomeWidgetItemFactory smartStackWidgetItemWithComplicationFamily:a3 sectionIdentifier:v5];
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = [_TtC11NanoTimeKit28NTKNanoHomeWidgetItemFactory launcherWidgetItemWithComplicationFamily:a3 sectionIdentifier:v5];
  if (v9)
  {
    [v6 addObject:v9];
  }

  return v6;
}

+ (BOOL)shouldShowTopLevelMoreButton
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 homes];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)pickerItemForIndexPath:(id)a3
{
  v5 = a3;
  v6 = -[NTKHomeListPickerDataSource _sectionTypeForSectionIndex:](self, "_sectionTypeForSectionIndex:", [v5 section]);
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

  v3 = [*(&self->super.isa + v7) objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
LABEL_6:

  return v3;
}

- (int64_t)_numberOfItemsInSection:(int64_t)a3
{
  result = [(NTKHomeListPickerDataSource *)self _sectionTypeForSectionIndex:a3];
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
  v3 = [(NTKHomeListPickerDataSource *)self _upperComplicationsSectionIsDisplayable];
  v4 = [(NTKHomeListPickerDataSource *)self _homesSectionIsDisplayable];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

+ (id)_titleForHeaderSectionType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = NTKClockFaceLocalizedString(@"COMPLICATION_PICKER_NANOHOME_HOMES_SECTION_NAME", @"Homes");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_titleForHeaderInSection:(int64_t)a3
{
  v3 = [(NTKHomeListPickerDataSource *)self _sectionTypeForSectionIndex:a3];

  return [NTKHomeListPickerDataSource _titleForHeaderSectionType:v3];
}

- (BOOL)_itemIsSelectedAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NTKHomeListPickerDataSource *)self configuration];
  v6 = [v5 listProvider];
  v7 = [v6 pickerSelectedItem];

  v8 = [(NTKHomeListPickerDataSource *)self pickerItemForIndexPath:v4];

  LOBYTE(v4) = [v7 isEqual:v8];
  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(NTKHomeListPickerDataSource *)self pickerItemForIndexPath:v5];
  v7 = [(NTKHomeListPickerDataSource *)self pickerCellProvider];
  v8 = [v7 cellForItem:v6 atIndexPath:v5];

  v9 = [(NTKHomeListPickerDataSource *)self _itemIsSelectedAtIndexPath:v5];
  [v8 ntk_setPickerSelected:v9];

  return v8;
}

- (void)_refreshHomeList
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v4 = MEMORY[0x277CBEB18];
  v5 = [v3 homeManager];
  v6 = [v5 hf_orderedHomes];
  v7 = [v4 arrayWithArray:v6];

  v8 = [v3 home];

  if (v8)
  {
    v9 = [v3 home];
    v10 = [v9 uniqueIdentifier];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __47__NTKHomeListPickerDataSource__refreshHomeList__block_invoke;
    v32[3] = &unk_278784C70;
    v33 = v10;
    v11 = v10;
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
    v27 = self;
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
          v23 = [v21 uniqueIdentifier];
          [(NTKHomeListItem *)v22 setHomeID:v23];

          v24 = [v21 name];
          [(NTKHomeListItem *)v22 setHomeLocalizedName:v24];

          [(NSArray *)v14 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v18);
    }

    self = v27;
    homeComplicationsItems = v27->_homeComplicationsItems;
    v27->_homeComplicationsItems = v14;

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