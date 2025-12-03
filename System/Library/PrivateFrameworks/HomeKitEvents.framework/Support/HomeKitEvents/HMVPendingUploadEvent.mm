@interface HMVPendingUploadEvent
- (HMVPendingUploadEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation HMVPendingUploadEvent

- (HMVPendingUploadEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PendingUploadEvent();
  return [(HMVPendingUploadEvent *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end