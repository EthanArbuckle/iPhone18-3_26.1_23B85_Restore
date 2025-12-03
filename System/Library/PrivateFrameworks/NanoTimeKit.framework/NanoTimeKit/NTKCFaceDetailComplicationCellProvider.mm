@interface NTKCFaceDetailComplicationCellProvider
- (NTKCFaceDetailComplicationCellProvider)initWithTableView:(id)view listProvider:(id)provider;
- (id)cellForItem:(id)item atIndexPath:(id)path;
@end

@implementation NTKCFaceDetailComplicationCellProvider

- (NTKCFaceDetailComplicationCellProvider)initWithTableView:(id)view listProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailComplicationCellProvider;
  v9 = [(NTKCFaceDetailComplicationCellProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableView, view);
    objc_storeStrong(&v10->_listProvider, provider);
  }

  return v10;
}

- (id)cellForItem:(id)item atIndexPath:(id)path
{
  v37[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  tableView = [(NTKCFaceDetailComplicationCellProvider *)self tableView];
  ntk_itemType = [itemCopy ntk_itemType];
  if (ntk_itemType > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278785090[ntk_itemType];
  }

  v9 = [tableView dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v8];
  }

  ntk_itemType2 = [itemCopy ntk_itemType];
  if (ntk_itemType2 <= 3)
  {
    if ((ntk_itemType2 - 1) >= 2)
    {
      if (ntk_itemType2)
      {
        if (ntk_itemType2 != 3)
        {
          goto LABEL_25;
        }

        homeLocalizedName = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_COMPLICATIONS_COMPANION_MORE", @"More…");
        goto LABEL_23;
      }

      textLabel = [v9 textLabel];
      [textLabel setText:&stru_284110E98];
LABEL_21:

      v26 = v9;
      v27 = 0;
LABEL_24:
      [v26 setAccessoryType:v27];
      goto LABEL_25;
    }

    textLabel = [(NTKCFaceDetailComplicationCellProvider *)self listProvider];
    textLabel4 = [itemCopy ntk_localizedNameWithOptions:1 forRichComplicationSlot:{objc_msgSend(textLabel, "pickerListProviderSlotIsRich")}];
    textLabel2 = [v9 textLabel];
    [textLabel2 setText:textLabel4];

LABEL_16:
    goto LABEL_21;
  }

  if (ntk_itemType2 != 4)
  {
    if (ntk_itemType2 == 5)
    {
      homeLocalizedName = [itemCopy homeLocalizedName];
LABEL_23:
      v28 = homeLocalizedName;
      textLabel3 = [v9 textLabel];
      [textLabel3 setText:v28];

      v26 = v9;
      v27 = 1;
      goto LABEL_24;
    }

    if (ntk_itemType2 != 6)
    {
      goto LABEL_25;
    }

    textLabel = [itemCopy localizedName];
    textLabel4 = [v9 textLabel];
    [textLabel4 setText:textLabel];
    goto LABEL_16;
  }

  ntk_contactIdentifier = [itemCopy ntk_contactIdentifier];
  v16 = +[NTKPeopleComplicationContactsCache sharedCache];
  v17 = [v16 contactForId:ntk_contactIdentifier];

  textLabel5 = [v9 textLabel];
  font = [textLabel5 font];

  v20 = +[NTKPeopleDetailComplicationPickerDataSource sharedFormatter];
  v36 = *MEMORY[0x277D740A8];
  v37[0] = font;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v22 = [v20 attributedStringFromContact:v17 defaultAttributes:v21];

  if (![v22 length])
  {
    v23 = NTKClockFaceLocalizedString(@"COMPLICATION_PICKER_PEOPLE_NO_NAME", @"No Name");
    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23];

    v22 = v24;
  }

  textLabel6 = [v9 textLabel];
  [textLabel6 setAttributedText:v22];

  [v9 setAccessoryType:0];
LABEL_25:
  ntk_identifier = [itemCopy ntk_identifier];
  listProvider = [(NTKCFaceDetailComplicationCellProvider *)self listProvider];
  pickerSelectedItem = [listProvider pickerSelectedItem];
  ntk_identifier2 = [pickerSelectedItem ntk_identifier];
  v34 = [ntk_identifier isEqualToString:ntk_identifier2];

  [v9 ntk_setPickerSelected:v34];

  return v9;
}

@end