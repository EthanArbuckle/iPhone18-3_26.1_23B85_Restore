@interface WDCardioFitnessEventListDataProvider
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDCardioFitnessEventListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  lowCardioFitnessEventType = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
  v6[0] = lowCardioFitnessEventType;
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

  displayType = [(WDSampleListDataProvider *)self displayType];
  hk_enumeratedValueLabels = [displayType hk_enumeratedValueLabels];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objectCopy, "value")}];
  v12 = [hk_enumeratedValueLabels objectForKeyedSubscript:v11];
  [(WDDataTableViewCell *)v8 setDisplayValue:v12];

  endDate = [objectCopy endDate];

  v14 = HKFormattedStringForDate();
  [(WDDataTableViewCell *)v8 setDateString:v14];

  [(WDDataTableViewCell *)v8 setAccessoryType:1];

  return v8;
}

- (id)titleForSection:(unint64_t)section
{
  samples = [(WDSampleListDataProvider *)self samples];
  if ([samples count] < 1)
  {
    hk_localizedName = &stru_28641D9B8;
  }

  else
  {
    lowCardioFitnessEventType = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
    hk_localizedName = [lowCardioFitnessEventType hk_localizedName];
  }

  return hk_localizedName;
}

@end