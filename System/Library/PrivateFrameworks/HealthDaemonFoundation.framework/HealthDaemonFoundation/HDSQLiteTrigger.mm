@interface HDSQLiteTrigger
- (HDSQLiteTrigger)init;
- (HDSQLiteTrigger)initWithEntity:(Class)entity name:(id)name triggerEvent:(int64_t)event predicateString:(id)string triggerString:(id)triggerString;
- (id)creationSQL;
- (id)description;
- (id)disambiguatedName;
@end

@implementation HDSQLiteTrigger

- (HDSQLiteTrigger)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSQLiteTrigger)initWithEntity:(Class)entity name:(id)name triggerEvent:(int64_t)event predicateString:(id)string triggerString:(id)triggerString
{
  nameCopy = name;
  stringCopy = string;
  triggerStringCopy = triggerString;
  v24.receiver = self;
  v24.super_class = HDSQLiteTrigger;
  v15 = [(HDSQLiteTrigger *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entityClass, entity);
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v16->_event = event;
    v19 = [stringCopy copy];
    predicateString = v16->_predicateString;
    v16->_predicateString = v19;

    v21 = [triggerStringCopy copy];
    triggerString = v16->_triggerString;
    v16->_triggerString = v21;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  creationSQL = [(HDSQLiteTrigger *)self creationSQL];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, creationSQL];

  return v6;
}

- (id)creationSQL
{
  predicateString = self->_predicateString;
  if (predicateString)
  {
    predicateString = [MEMORY[0x277CCACA8] stringWithFormat:@"WHEN %@ ", predicateString];
  }

  else
  {
    predicateString = &stru_28637B800;
  }

  v5 = MEMORY[0x277CCACA8];
  disambiguatedName = [(HDSQLiteTrigger *)self disambiguatedName];
  if (self->_event)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull NSStringFromTriggerEvent(HDSQLiteTriggerEvent)"];
    [currentHandler handleFailureInFunction:v8 file:@"HDSQLiteTrigger.m" lineNumber:73 description:@"Unreachable code has been executed"];

    v9 = &stru_28637B800;
  }

  else
  {
    v9 = @"DELETE";
  }

  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  v11 = [v5 stringWithFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER %@ ON %@ FOR EACH ROW %@BEGIN %@ END", disambiguatedName, v9, databaseTable, predicateString, self->_triggerString];;

  return v11;
}

- (id)disambiguatedName
{
  databaseName = [(objc_class *)self->_entityClass databaseName];
  v4 = MEMORY[0x277CCACA8];
  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  v6 = databaseTable;
  name = self->_name;
  if (databaseName)
  {
    [v4 stringWithFormat:@"%@.%@_%@", databaseName, databaseTable, name];
  }

  else
  {
    [v4 stringWithFormat:@"%@_%@", databaseTable, name, v10];
  }
  v8 = ;

  return v8;
}

@end