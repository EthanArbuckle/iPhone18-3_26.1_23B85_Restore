@interface HDSQLiteTrigger
- (HDSQLiteTrigger)init;
- (HDSQLiteTrigger)initWithEntity:(Class)a3 name:(id)a4 triggerEvent:(int64_t)a5 predicateString:(id)a6 triggerString:(id)a7;
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

- (HDSQLiteTrigger)initWithEntity:(Class)a3 name:(id)a4 triggerEvent:(int64_t)a5 predicateString:(id)a6 triggerString:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = HDSQLiteTrigger;
  v15 = [(HDSQLiteTrigger *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entityClass, a3);
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    v16->_event = a5;
    v19 = [v13 copy];
    predicateString = v16->_predicateString;
    v16->_predicateString = v19;

    v21 = [v14 copy];
    triggerString = v16->_triggerString;
    v16->_triggerString = v21;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HDSQLiteTrigger *)self creationSQL];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (id)creationSQL
{
  predicateString = self->_predicateString;
  if (predicateString)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"WHEN %@ ", predicateString];
  }

  else
  {
    v4 = &stru_28637B800;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HDSQLiteTrigger *)self disambiguatedName];
  if (self->_event)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull NSStringFromTriggerEvent(HDSQLiteTriggerEvent)"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteTrigger.m" lineNumber:73 description:@"Unreachable code has been executed"];

    v9 = &stru_28637B800;
  }

  else
  {
    v9 = @"DELETE";
  }

  v10 = [(objc_class *)self->_entityClass databaseTable];
  v11 = [v5 stringWithFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER %@ ON %@ FOR EACH ROW %@BEGIN %@ END", v6, v9, v10, v4, self->_triggerString];;

  return v11;
}

- (id)disambiguatedName
{
  v3 = [(objc_class *)self->_entityClass databaseName];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(objc_class *)self->_entityClass databaseTable];
  v6 = v5;
  name = self->_name;
  if (v3)
  {
    [v4 stringWithFormat:@"%@.%@_%@", v3, v5, name];
  }

  else
  {
    [v4 stringWithFormat:@"%@_%@", v5, name, v10];
  }
  v8 = ;

  return v8;
}

@end