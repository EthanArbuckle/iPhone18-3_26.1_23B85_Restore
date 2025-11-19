@interface NTKCFaceDetailComplicationCellProvider
- (NTKCFaceDetailComplicationCellProvider)initWithTableView:(id)a3 listProvider:(id)a4;
- (id)cellForItem:(id)a3 atIndexPath:(id)a4;
@end

@implementation NTKCFaceDetailComplicationCellProvider

- (NTKCFaceDetailComplicationCellProvider)initWithTableView:(id)a3 listProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailComplicationCellProvider;
  v9 = [(NTKCFaceDetailComplicationCellProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tableView, a3);
    objc_storeStrong(&v10->_listProvider, a4);
  }

  return v10;
}

- (id)cellForItem:(id)a3 atIndexPath:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NTKCFaceDetailComplicationCellProvider *)self tableView];
  v7 = [v5 ntk_itemType];
  if (v7 > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278785090[v7];
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v8];
  }

  v10 = [v5 ntk_itemType];
  if (v10 <= 3)
  {
    if ((v10 - 1) >= 2)
    {
      if (v10)
      {
        if (v10 != 3)
        {
          goto LABEL_25;
        }

        v11 = NTKCompanionClockFaceLocalizedString(@"EDIT_MODE_LABEL_COMPLICATIONS_COMPANION_MORE", @"More…");
        goto LABEL_23;
      }

      v12 = [v9 textLabel];
      [v12 setText:&stru_284110E98];
LABEL_21:

      v26 = v9;
      v27 = 0;
LABEL_24:
      [v26 setAccessoryType:v27];
      goto LABEL_25;
    }

    v12 = [(NTKCFaceDetailComplicationCellProvider *)self listProvider];
    v13 = [v5 ntk_localizedNameWithOptions:1 forRichComplicationSlot:{objc_msgSend(v12, "pickerListProviderSlotIsRich")}];
    v14 = [v9 textLabel];
    [v14 setText:v13];

LABEL_16:
    goto LABEL_21;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v11 = [v5 homeLocalizedName];
LABEL_23:
      v28 = v11;
      v29 = [v9 textLabel];
      [v29 setText:v28];

      v26 = v9;
      v27 = 1;
      goto LABEL_24;
    }

    if (v10 != 6)
    {
      goto LABEL_25;
    }

    v12 = [v5 localizedName];
    v13 = [v9 textLabel];
    [v13 setText:v12];
    goto LABEL_16;
  }

  v15 = [v5 ntk_contactIdentifier];
  v16 = +[NTKPeopleComplicationContactsCache sharedCache];
  v17 = [v16 contactForId:v15];

  v18 = [v9 textLabel];
  v19 = [v18 font];

  v20 = +[NTKPeopleDetailComplicationPickerDataSource sharedFormatter];
  v36 = *MEMORY[0x277D740A8];
  v37[0] = v19;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v22 = [v20 attributedStringFromContact:v17 defaultAttributes:v21];

  if (![v22 length])
  {
    v23 = NTKClockFaceLocalizedString(@"COMPLICATION_PICKER_PEOPLE_NO_NAME", @"No Name");
    v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23];

    v22 = v24;
  }

  v25 = [v9 textLabel];
  [v25 setAttributedText:v22];

  [v9 setAccessoryType:0];
LABEL_25:
  v30 = [v5 ntk_identifier];
  v31 = [(NTKCFaceDetailComplicationCellProvider *)self listProvider];
  v32 = [v31 pickerSelectedItem];
  v33 = [v32 ntk_identifier];
  v34 = [v30 isEqualToString:v33];

  [v9 ntk_setPickerSelected:v34];

  return v9;
}

@end