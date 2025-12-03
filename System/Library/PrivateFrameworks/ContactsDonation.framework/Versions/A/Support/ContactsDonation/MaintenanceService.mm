@interface MaintenanceService
- (void)dealloc;
@end

@implementation MaintenanceService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent18MaintenanceService_logger);
  selfCopy = self;
  [v2 maintenanceServiceWillStop];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for MaintenanceService();
  [(MaintenanceService *)&v4 dealloc];
}

@end