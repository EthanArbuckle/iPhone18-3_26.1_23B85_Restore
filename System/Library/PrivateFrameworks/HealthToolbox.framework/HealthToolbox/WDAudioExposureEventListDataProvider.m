@interface WDAudioExposureEventListDataProvider
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDAudioExposureEventListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD0C0] environmentalAudioExposureEventType];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5
{
  v7 = a3;
  v8 = [a5 dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v8)
  {
    v8 = [[WDDataTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"CellIdentifier"];
  }

  v9 = [v7 sampleType];
  v10 = [(WDSampleListDataProvider *)self unitController];
  v11 = [v9 hk_formatPrimaryMetadataValueForObject:v7 unitPreferencesController:v10];

  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
      v13 = [(WDSampleListDataProvider *)self displayTypeController];
      v14 = [v12 sampleType];
      v15 = [v13 displayTypeForObjectType:v14];
      v16 = [v15 hk_enumeratedValueLabels];

      v17 = MEMORY[0x277CCABB0];
      v18 = [v12 value];

      v19 = [v17 numberWithInteger:v18];
      v11 = [v16 objectForKeyedSubscript:v19];
    }

    else
    {
      v11 = 0;
    }
  }

  [(WDDataTableViewCell *)v8 setDisplayValue:v11];
  [(WDDataTableViewCell *)v8 setAccessoryType:1];
  v20 = [v7 endDate];
  v21 = HKFormattedStringForDate();
  [(WDDataTableViewCell *)v8 setDateString:v21];

  return v8;
}

- (id)titleForSection:(unint64_t)a3
{
  v4 = [(WDSampleListDataProvider *)self samples];
  v5 = [v4 count];

  if (v5 < 1)
  {
    v9 = &stru_28641D9B8;
  }

  else
  {
    v6 = [(WDSampleListDataProvider *)self samples];
    v7 = [v6 sampleAtIndex:0];
    v8 = [v7 sampleType];
    v9 = [v8 hk_localizedName];
  }

  return v9;
}

@end