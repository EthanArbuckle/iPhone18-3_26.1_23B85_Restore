@interface CalDAVContainerMultiGetTask
- (id)copyAdditionalPropElements;
- (void)setAdditionalProperties:(id)a3 onDataItem:(id)a4;
@end

@implementation CalDAVContainerMultiGetTask

- (id)copyAdditionalPropElements
{
  v3 = objc_opt_new();
  if ([(CalDAVContainerMultiGetTask *)self getScheduleTags])
  {
    [v3 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDDC0] name:@"schedule-tag" parseClass:objc_opt_class()];
  }

  v4 = [(CalDAVContainerMultiGetTask *)self getScheduleChanges];
  v5 = *MEMORY[0x277CFDE90];
  if (v4)
  {
    [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"schedule-changes" parseClass:objc_opt_class()];
  }

  [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"created-by" parseClass:objc_opt_class()];
  [v3 CDVAddItemParserMappingWithNameSpace:v5 name:@"updated-by" parseClass:objc_opt_class()];
  return v3;
}

- (void)setAdditionalProperties:(id)a3 onDataItem:(id)a4
{
  v13 = a4;
  v5 = *MEMORY[0x277CFDDC0];
  v6 = a3;
  v7 = [v6 CDVObjectForKeyWithNameSpace:v5 andName:@"schedule-tag"];
  v8 = [v7 payloadAsString];

  [v13 setScheduleTag:v8];
  v9 = *MEMORY[0x277CFDE90];
  v10 = [v6 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:@"schedule-changes"];
  [v13 setScheduleChanges:v10];
  v11 = [v6 CDVObjectForKeyWithNameSpace:v9 andName:@"created-by"];
  [v13 setCreatedBy:v11];

  v12 = [v6 CDVObjectForKeyWithNameSpace:v9 andName:@"updated-by"];

  [v13 setUpdatedBy:v12];
}

@end