@interface EnergyWindowNotifications
- (EnergyWindowNotifications)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation EnergyWindowNotifications

- (EnergyWindowNotifications)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return EnergyWindowNotifications.init(entity:insertInto:)(entity, context);
}

@end