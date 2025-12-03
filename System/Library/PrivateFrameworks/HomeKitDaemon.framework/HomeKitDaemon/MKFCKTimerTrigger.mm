@interface MKFCKTimerTrigger
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKTimerTrigger

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v6.receiver = self;
  v6.super_class = MKFCKTimerTrigger;
  return [(MKFCKTrigger *)&v6 exportFromLocalModel:model updatedProperties:properties context:context];
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v6.receiver = self;
  v6.super_class = MKFCKTimerTrigger;
  return [(MKFCKTrigger *)&v6 importIntoLocalModel:model updatedProperties:properties context:context];
}

@end