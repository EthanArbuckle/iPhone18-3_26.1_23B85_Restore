@interface PARUsageEventMigration
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
@end

@implementation PARUsageEventMigration

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  selfCopy = self;
  sub_25DF82704(instanceCopy, mappingCopy, managerCopy);

  return 1;
}

@end