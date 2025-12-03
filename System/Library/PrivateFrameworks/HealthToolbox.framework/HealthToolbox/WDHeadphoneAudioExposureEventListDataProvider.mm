@interface WDHeadphoneAudioExposureEventListDataProvider
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDHeadphoneAudioExposureEventListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  headphoneAudioExposureEventType = [MEMORY[0x277CCD0C0] headphoneAudioExposureEventType];
  v6[0] = headphoneAudioExposureEventType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
{
  objectCopy = object;
  v8 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v8)
  {
    v8 = [[WDDataTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"CellIdentifier"];
  }

  sampleType = [objectCopy sampleType];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v11 = [sampleType hk_formatPrimaryMetadataValueForObject:objectCopy unitPreferencesController:unitController];

  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objectCopy;
      displayTypeController = [(WDSampleListDataProvider *)self displayTypeController];
      sampleType2 = [v12 sampleType];
      v15 = [displayTypeController displayTypeForObjectType:sampleType2];
      hk_enumeratedValueLabels = [v15 hk_enumeratedValueLabels];

      v17 = MEMORY[0x277CCABB0];
      value = [v12 value];

      v19 = [v17 numberWithInteger:value];
      v11 = [hk_enumeratedValueLabels objectForKeyedSubscript:v19];
    }

    else
    {
      v11 = 0;
    }
  }

  [(WDDataTableViewCell *)v8 setDisplayValue:v11];
  [(WDDataTableViewCell *)v8 setAccessoryType:1];
  endDate = [objectCopy endDate];
  v21 = HKFormattedStringForDate();
  [(WDDataTableViewCell *)v8 setDateString:v21];

  return v8;
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  v5 = [samples count];

  if (v5 < 1)
  {
    hk_localizedName = &stru_28641D9B8;
  }

  else
  {
    samples2 = [(WDSampleListDataProvider *)self samples];
    v7 = [samples2 sampleAtIndex:0];
    sampleType = [v7 sampleType];
    hk_localizedName = [sampleType hk_localizedName];
  }

  return hk_localizedName;
}

@end