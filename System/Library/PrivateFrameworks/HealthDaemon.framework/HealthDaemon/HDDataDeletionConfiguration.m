@interface HDDataDeletionConfiguration
- (HDDataDeletionConfiguration)init;
- (HDDataDeletionConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDDataDeletionConfiguration

- (HDDataDeletionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HDDataDeletionConfiguration;
  result = [(HDDataDeletionConfiguration *)&v3 init];
  if (result)
  {
    *&result->_generateDeletedObjects = 65793;
    result->_preserveExactStartAndEndDates = 0;
  }

  return result;
}

- (HDDataDeletionConfiguration)initWithCoder:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HDDataDeletionConfiguration;
  v6 = [(HDDataDeletionConfiguration *)&v15 init];
  if (v6)
  {
    v6->_generateDeletedObjects = [v5 decodeBoolForKey:@"generate_deleted"];
    v6->_failIfNotFound = [v5 decodeBoolForKey:@"fail_not_found"];
    v6->_notifyObservers = [v5 decodeBoolForKey:@"notify_observers"];
    v6->_secureDelete = [v5 decodeBoolForKey:@"secure_delete"];
    v6->_preserveExactStartAndEndDates = [v5 decodeBoolForKey:@"preserve_dates"];
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"source_bundle"];
    restrictedSourceBundleIdentifier = v6->_restrictedSourceBundleIdentifier;
    v6->_restrictedSourceBundleIdentifier = v7;

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"entity_class"];
    v10 = v9;
    if (v9)
    {
      v11 = NSClassFromString(v9);
      entityClass = v6->_entityClass;
      v6->_entityClass = v11;

      if (!v6->_entityClass)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        [v14 handleFailureInMethod:a2 object:v6 file:@"HDDataManager.m" lineNumber:1514 description:{@"Failed to load entity class '%@' when handling deletion configuration entry.", v10}];
      }
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:self->_generateDeletedObjects forKey:@"generate_deleted"];
  [v6 encodeBool:self->_failIfNotFound forKey:@"fail_not_found"];
  [v6 encodeBool:self->_notifyObservers forKey:@"notify_observers"];
  [v6 encodeBool:self->_secureDelete forKey:@"secure_delete"];
  [v6 encodeBool:self->_preserveExactStartAndEndDates forKey:@"preserve_dates"];
  [v6 encodeObject:self->_restrictedSourceBundleIdentifier forKey:@"source_bundle"];
  entityClass = self->_entityClass;
  if (entityClass)
  {
    v5 = NSStringFromClass(entityClass);
    [v6 encodeObject:v5 forKey:@"entity_class"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HDDataDeletionConfiguration allocWithZone:?]];
  [(HDDataDeletionConfiguration *)v4 setGenerateDeletedObjects:self->_generateDeletedObjects];
  [(HDDataDeletionConfiguration *)v4 setFailIfNotFound:self->_failIfNotFound];
  [(HDDataDeletionConfiguration *)v4 setNotifyObservers:self->_notifyObservers];
  [(HDDataDeletionConfiguration *)v4 setSecureDelete:self->_secureDelete];
  [(HDDataDeletionConfiguration *)v4 setPreserveExactStartAndEndDates:self->_preserveExactStartAndEndDates];
  [(HDDataDeletionConfiguration *)v4 setEntityClass:self->_entityClass];
  [(HDDataDeletionConfiguration *)v4 setRestrictedSourceBundleIdentifier:self->_restrictedSourceBundleIdentifier];
  return v4;
}

@end