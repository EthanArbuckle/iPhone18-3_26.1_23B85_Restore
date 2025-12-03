@interface HMBSQLQueryStatement
- (HMBSQLQueryStatement)initWithContext:(id)context statement:(id)statement;
- (HMBSQLQueryStatement)initWithContext:(id)context statement:(sqlite3_stmt *)statement queryPlans:(id)plans arguments:(id)arguments;
@end

@implementation HMBSQLQueryStatement

- (HMBSQLQueryStatement)initWithContext:(id)context statement:(id)statement
{
  contextCopy = context;
  statementCopy = statement;
  v8 = [objc_opt_class() sqlStatementForContext:contextCopy statement:statementCopy];
  if (v8)
  {
    v9 = v8;
    v18 = [objc_opt_class() queryPlansForContext:contextCopy statement:statementCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    for (i = 0; i <= sqlite3_bind_parameter_count(v9); i = (i + 1))
    {
      v12 = sqlite3_bind_parameter_name(v9, i);
      if (v12)
      {
        v13 = v12;
        if (*v12 != 63)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithInt:i];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13 + 1];
          [dictionary setObject:v14 forKey:v15];
        }
      }
    }

    self = [(HMBSQLQueryStatement *)self initWithContext:contextCopy statement:v9 queryPlans:v18 arguments:dictionary];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMBSQLQueryStatement)initWithContext:(id)context statement:(sqlite3_stmt *)statement queryPlans:(id)plans arguments:(id)arguments
{
  argumentsCopy = arguments;
  v15.receiver = self;
  v15.super_class = HMBSQLQueryStatement;
  v12 = [(HMBSQLStatement *)&v15 initWithContext:context statement:statement queryPlans:plans];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_arguments, arguments);
  }

  return v13;
}

@end