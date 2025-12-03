@interface DSSharingType(DigitalSeparationUI)
- (id)iconForDetail;
- (id)iconForTable;
@end

@implementation DSSharingType(DigitalSeparationUI)

- (id)iconForTable
{
  v1 = MEMORY[0x277D054C0];
  source = [self source];
  name = [source name];
  v4 = [v1 sourceDescriptorForSource:name];
  iconForTable = [v4 iconForTable];

  return iconForTable;
}

- (id)iconForDetail
{
  v1 = MEMORY[0x277D054C0];
  source = [self source];
  name = [source name];
  v4 = [v1 sourceDescriptorForSource:name];
  iconForDetail = [v4 iconForDetail];

  return iconForDetail;
}

@end