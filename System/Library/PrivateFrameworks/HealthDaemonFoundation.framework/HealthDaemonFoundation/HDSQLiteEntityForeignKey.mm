@interface HDSQLiteEntityForeignKey
- (HDSQLiteEntityForeignKey)initWithEntityClass:(Class)class property:(id)property deletionAction:(int64_t)action isDeferred:(BOOL)deferred;
- (id)creationSQL;
@end

@implementation HDSQLiteEntityForeignKey

- (HDSQLiteEntityForeignKey)initWithEntityClass:(Class)class property:(id)property deletionAction:(int64_t)action isDeferred:(BOOL)deferred
{
  propertyCopy = property;
  v16.receiver = self;
  v16.super_class = HDSQLiteEntityForeignKey;
  v11 = [(HDSQLiteEntityForeignKey *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityClass, class);
    v13 = [propertyCopy copy];
    property = v12->_property;
    v12->_property = v13;

    v12->_deletionAction = action;
    v12->_isDeferred = deferred;
  }

  return v12;
}

- (id)creationSQL
{
  v3 = MEMORY[0x277CCACA8];
  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  property = self->_property;
  v6 = HDSQLForForeignKeyDeletionAction(self->_deletionAction);
  v7 = v6;
  if (self->_isDeferred)
  {
    v8 = @" DEFERRABLE INITIALLY DEFERRED";
  }

  else
  {
    v8 = &stru_28637B800;
  }

  v9 = [v3 stringWithFormat:@"REFERENCES %@ (%@) ON DELETE %@%@", databaseTable, property, v6, v8];

  return v9;
}

@end