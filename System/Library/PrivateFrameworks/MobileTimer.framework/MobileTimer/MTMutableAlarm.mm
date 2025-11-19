@interface MTMutableAlarm
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyChangesFromChangeSet:(id)a3;
@end

@implementation MTMutableAlarm

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTAlarm allocWithZone:a3];
  v5 = [(MTAlarm *)self alarmID];
  v6 = [(MTAlarm *)v4 initWithIdentifier:v5];

  [(MTAlarm *)self _copyStateOntoAlarm:v6];
  return v6;
}

- (void)applyChangesFromChangeSet:(id)a3
{
  v4 = a3;
  v7 = [MTChangeSet changeSetWithChangesFromObject:0 toObject:self];
  v5 = [v7 changeSetByAddingChangeSet:v4];

  v6 = [v5 _deserializer];
  [(MTAlarm *)self _updatePropertiesFromDeserializer:v6];
}

@end