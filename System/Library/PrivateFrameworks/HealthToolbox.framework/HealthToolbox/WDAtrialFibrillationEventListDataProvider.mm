@interface WDAtrialFibrillationEventListDataProvider
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)viewControllerForItemAtIndexPath:(id)path;
@end

@implementation WDAtrialFibrillationEventListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v6[0] = atrialFibrillationEventType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  objectCopy = object;
  v10 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"CellIdentifier"];
  }

  v11 = WDBundle();
  v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_EVENT_CELL_LABEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
  textLabel = [v10 textLabel];
  [textLabel setText:v12];

  endDate = [objectCopy endDate];

  v15 = HKLocalizedStringForDateAndTemplate();
  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setText:v15];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  detailTextLabel2 = [v10 detailTextLabel];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  hasDetailViewController = [(WDSampleListDataProvider *)self hasDetailViewController];
  if (hasDetailViewController)
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v10 setAccessoryType:hasDetailViewController];
  [v10 setSelectionStyle:v20];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"AFibEvent.%ld", objc_msgSend(pathCopy, "item")];
  v22 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v21];
  [v10 setAccessibilityIdentifier:v22];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"AFibEvent.%ld.AtrialFibrillation", objc_msgSend(pathCopy, "item")];
  v24 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v23];
  textLabel2 = [v10 textLabel];
  [textLabel2 setAccessibilityIdentifier:v24];

  v26 = MEMORY[0x277CCACA8];
  item = [pathCopy item];

  v28 = [v26 stringWithFormat:@"AFibEvent.%ld.Timestamp", item];
  v29 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:v28];
  detailTextLabel3 = [v10 detailTextLabel];
  [detailTextLabel3 setAccessibilityIdentifier:v29];

  return v10;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(WDSampleListDataProvider *)self hasDetailViewController])
  {
    v5 = -[WDSampleListDataProvider objectAtIndex:forSection:](self, "objectAtIndex:forSection:", [pathCopy row], objc_msgSend(pathCopy, "section"));
    v6 = [[WDAtrialFibrillationEventMetadataViewController alloc] initWithEvent:v5 delegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end