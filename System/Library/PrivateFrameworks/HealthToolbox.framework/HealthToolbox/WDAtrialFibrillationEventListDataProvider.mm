@interface WDAtrialFibrillationEventListDataProvider
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)sampleTypes;
- (id)viewControllerForItemAtIndexPath:(id)a3;
@end

@implementation WDAtrialFibrillationEventListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"CellIdentifier"];
  }

  v11 = WDBundle();
  v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_EVENT_CELL_LABEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
  v13 = [v10 textLabel];
  [v13 setText:v12];

  v14 = [v9 endDate];

  v15 = HKLocalizedStringForDateAndTemplate();
  v16 = [v10 detailTextLabel];
  [v16 setText:v15];

  v17 = [MEMORY[0x277D75348] secondaryLabelColor];
  v18 = [v10 detailTextLabel];
  [v18 setTextColor:v17];

  v19 = [(WDSampleListDataProvider *)self hasDetailViewController];
  if (v19)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v10 setAccessoryType:v19];
  [v10 setSelectionStyle:v20];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"AFibEvent.%ld", objc_msgSend(v8, "item")];
  v22 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v21];
  [v10 setAccessibilityIdentifier:v22];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"AFibEvent.%ld.AtrialFibrillation", objc_msgSend(v8, "item")];
  v24 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v23];
  v25 = [v10 textLabel];
  [v25 setAccessibilityIdentifier:v24];

  v26 = MEMORY[0x277CCACA8];
  v27 = [v8 item];

  v28 = [v26 stringWithFormat:@"AFibEvent.%ld.Timestamp", v27];
  v29 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v28];
  v30 = [v10 detailTextLabel];
  [v30 setAccessibilityIdentifier:v29];

  return v10;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(WDSampleListDataProvider *)self hasDetailViewController])
  {
    v5 = -[WDSampleListDataProvider objectAtIndex:forSection:](self, "objectAtIndex:forSection:", [v4 row], objc_msgSend(v4, "section"));
    v6 = [[WDAtrialFibrillationEventMetadataViewController alloc] initWithEvent:v5 delegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end