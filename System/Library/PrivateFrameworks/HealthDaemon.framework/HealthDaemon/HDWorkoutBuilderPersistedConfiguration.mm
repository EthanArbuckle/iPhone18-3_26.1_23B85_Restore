@interface HDWorkoutBuilderPersistedConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDWorkoutBuilderPersistedConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![(NSUUID *)self->_builderIdentifier isEqual:*(v4 + 2)])
  {
    goto LABEL_12;
  }

  if (![(HKWorkoutConfiguration *)self->_workoutConfiguration isEqual:*(v4 + 3)])
  {
    goto LABEL_12;
  }

  v5 = [(HDSQLiteEntity *)self->_sourceEntity persistentID];
  if (v5 != [*(v4 + 4) persistentID])
  {
    goto LABEL_12;
  }

  v6 = [(HDSQLiteEntity *)self->_deviceEntity persistentID];
  if (v6 != [*(v4 + 6) persistentID])
  {
    goto LABEL_12;
  }

  sourceVersion = self->_sourceVersion;
  v8 = *(v4 + 5);
  if (sourceVersion != v8 && (!v8 || ![(NSString *)sourceVersion isEqual:?]))
  {
    goto LABEL_12;
  }

  if (self->_goalType != *(v4 + 7))
  {
    goto LABEL_12;
  }

  goal = self->_goal;
  v10 = *(v4 + 8);
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

- (id)copyWithZone:(_NSZone *)a3
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