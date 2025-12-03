@interface HDDatabaseMigrationStep
+ (id)migrationStepFrom:(int64_t)from to:(int64_t)to handler:(id)handler;
+ (id)migrationStepWithForeignKeysDisabledFrom:(int64_t)from to:(int64_t)to handler:(id)handler;
- (id)description;
- (id)initForSchema:(id)schema toVersion:(int64_t)version requiringVersion:(int64_t)requiringVersion foreignKeys:(int64_t)keys handler:(id)handler;
@end

@implementation HDDatabaseMigrationStep

+ (id)migrationStepFrom:(int64_t)from to:(int64_t)to handler:(id)handler
{
  handlerCopy = handler;
  v7 = [HDDatabaseMigrationStep alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HDDatabaseMigrationStep_migrationStepFrom_to_handler___block_invoke;
  v11[3] = &unk_278623610;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(HDDatabaseMigrationStep *)v7 initForSchema:0 toVersion:to requiringVersion:-1 foreignKeys:0 handler:v11];

  return v9;
}

+ (id)migrationStepWithForeignKeysDisabledFrom:(int64_t)from to:(int64_t)to handler:(id)handler
{
  handlerCopy = handler;
  v7 = [HDDatabaseMigrationStep alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HDDatabaseMigrationStep_migrationStepWithForeignKeysDisabledFrom_to_handler___block_invoke;
  v11[3] = &unk_278623610;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(HDDatabaseMigrationStep *)v7 initForSchema:0 toVersion:to requiringVersion:-1 foreignKeys:1 handler:v11];

  return v9;
}

- (id)initForSchema:(id)schema toVersion:(int64_t)version requiringVersion:(int64_t)requiringVersion foreignKeys:(int64_t)keys handler:(id)handler
{
  schemaCopy = schema;
  handlerCopy = handler;
  if (!schemaCopy && requiringVersion != -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrationStep.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"(schemaName != nil) || (requiredPrimarySchemaVersion == HDSQLiteRequiredPrimarySchemaVersionAny)"}];
  }

  v22.receiver = self;
  v22.super_class = HDDatabaseMigrationStep;
  v15 = [(HDDatabaseMigrationStep *)&v22 init];
  if (v15)
  {
    v16 = [schemaCopy copy];
    schemaName = v15->_schemaName;
    v15->_schemaName = v16;

    v15->_requiredPrimarySchemaVersion = requiringVersion;
    v15->_finalSchemaVersion = version;
    v15->_foreignKeyStatus = keys;
    v18 = [handlerCopy copy];
    migrationHandler = v15->_migrationHandler;
    v15->_migrationHandler = v18;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = HDDatabaseMigrationStep;
  v4 = [(HDDatabaseMigrationStep *)&v12 description];
  v5 = v4;
  schemaName = &stru_283BF39C8;
  if (self->_schemaName)
  {
    schemaName = self->_schemaName;
  }

  foreignKeyStatus = self->_foreignKeyStatus;
  v8 = @"<UNKNOWN>";
  if (foreignKeyStatus == 1)
  {
    v8 = @"disabled";
  }

  if (foreignKeyStatus)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"enabled";
  }

  v10 = [v3 stringWithFormat:@"<%@ %@: -> %ld (requiring: %ld) foreign keys %@>", v4, schemaName, self->_finalSchemaVersion, self->_requiredPrimarySchemaVersion, v9];

  return v10;
}

@end