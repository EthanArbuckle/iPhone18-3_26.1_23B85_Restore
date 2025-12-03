@interface HDWorkoutBuilderPersistedConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDWorkoutBuilderPersistedConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![(NSUUID *)self->_builderIdentifier isEqual:*(equalCopy + 2)])
  {
    goto LABEL_12;
  }

  if (![(HKWorkoutConfiguration *)self->_workoutConfiguration isEqual:*(equalCopy + 3)])
  {
    goto LABEL_12;
  }

  persistentID = [(HDSQLiteEntity *)self->_sourceEntity persistentID];
  if (persistentID != [*(equalCopy + 4) persistentID])
  {
    goto LABEL_12;
  }

  persistentID2 = [(HDSQLiteEntity *)self->_deviceEntity persistentID];
  if (persistentID2 != [*(equalCopy + 6) persistentID])
  {
    goto LABEL_12;
  }

  sourceVersion = self->_sourceVersion;
  v8 = *(equalCopy + 5);
  if (sourceVersion != v8 && (!v8 || ![(NSString *)sourceVersion isEqual:?]))
  {
    goto LABEL_12;
  }

  if (self->_goalType != *(equalCopy + 7))
  {
    goto LABEL_12;
  }

  goal = self->_goal;
  v10 = *(equalCopy + 8);
  if (goal == v10)
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v10)
  {
    v11 = [(HKQuantity *)goal isEqual:?];
  }

  else
  {
LABEL_12:
    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HDWorkoutBuilderPersistedConfiguration);
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setBuilderIdentifier:self->_builderIdentifier];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setWorkoutConfiguration:self->_workoutConfiguration];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setSourceEntity:self->_sourceEntity];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setSourceVersion:self->_sourceVersion];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setDeviceEntity:self->_deviceEntity];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setGoalType:self->_goalType];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setGoal:self->_goal];
  [(HDWorkoutBuilderPersistedConfiguration *)v4 setShouldCollectWorkoutEvents:self->_shouldCollectWorkoutEvents];
  return v4;
}

@end