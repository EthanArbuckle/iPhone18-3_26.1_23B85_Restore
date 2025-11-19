@interface WDCardioFitnessEventListDataProvider
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDCardioFitnessEventListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
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

  v9 = [(WDSampleListDataProvider *)self displayType];
  v10 = [v9 hk_enumeratedValueLabels];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "value")}];
  v12 = [v10 objectForKeyedSubscript:v11];
  [(WDDataTableViewCell *)v8 setDisplayValue:v12];

  v13 = [v7 endDate];

  v14 = HKFormattedStringForDate();
  [(WDDataTableViewCell *)v8 setDateString:v14];

  [(WDDataTableViewCell *)v8 setAccessoryType:1];

  return v8;
}

- (id)titleForSection:(unint64_t)a3
{
  v3 = [(WDSampleListDataProvider *)self samples];
  if ([v3 count] < 1)
  {
    v5 = &stru_28641D9B8;
  }

  else
  {
    v4 = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
    v5 = [v4 hk_localizedName];
  }

  return v5;
}

@end