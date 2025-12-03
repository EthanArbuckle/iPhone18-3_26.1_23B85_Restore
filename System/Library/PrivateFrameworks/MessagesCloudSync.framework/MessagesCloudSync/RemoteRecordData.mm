@interface RemoteRecordData
- (RemoteRecordData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation RemoteRecordData

- (RemoteRecordData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(RemoteRecordData *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end