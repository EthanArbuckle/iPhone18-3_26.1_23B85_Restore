@interface MTMutableAlarm
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyChangesFromChangeSet:(id)set;
@end

@implementation MTMutableAlarm

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTAlarm allocWithZone:zone];
  alarmID = [(MTAlarm *)self alarmID];
  v6 = [(MTAlarm *)v4 initWithIdentifier:alarmID];

  [(MTAlarm *)self _copyStateOntoAlarm:v6];
  return v6;
}

- (void)applyChangesFromChangeSet:(id)set
{
  setCopy = set;
  v7 = [MTChangeSet changeSetWithChangesFromObject:0 toObject:self];
  v5 = [v7 changeSetByAddingChangeSet:setCopy];

  _deserializer = [v5 _deserializer];
  [(MTAlarm *)self _updatePropertiesFromDeserializer:_deserializer];
}

@end