@interface CalDAVContainerMultiGetTask
- (id)copyAdditionalPropElements;
- (void)setAdditionalProperties:(id)properties onDataItem:(id)item;
@end

@implementation CalDAVContainerMultiGetTask

- (id)copyAdditionalPropElements
{
  v3 = objc_opt_new();
  if ([(CalDAVContainerMultiGetTask *)self getScheduleTags])
  {
    [v3 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDDC0] name:@"schedule-tag" parseClass:objc_opt_class()];
  }

  getScheduleChanges = [(CalDAVContainerMultiGetTask *)self getScheduleChanges];
  v5 = *MEMORY[0x277CFDE90];
  if (getScheduleChanges)
  {
    [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"schedule-changes" parseClass:objc_opt_class()];
  }

  [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"created-by" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"updated-by" parseClass:objc_opt_class()];
  return v3;
}

- (void)setAdditionalProperties:(id)properties onDataItem:(id)item
{
  itemCopy = item;
  v5 = *MEMORY[0x277CFDDC0];
  propertiesCopy = properties;
  v7 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:@"schedule-tag"];
  payloadAsString = [v7 payloadAsString];

  [itemCopy setScheduleTag:payloadAsString];
  v9 = *MEMORY[0x277CFDE90];
  v10 = [propertiesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"schedule-changes"];
  [itemCopy setScheduleChanges:v10];
  v11 = [propertiesCopy CDVObjectForKeyWithNameSpace:v9 andName:@"created-by"];
  [itemCopy setCreatedBy:v11];

  v12 = [propertiesCopy CDVObjectForKeyWithNameSpace:v9 andName:@"updated-by"];

  [itemCopy setUpdatedBy:v12];
}

@end