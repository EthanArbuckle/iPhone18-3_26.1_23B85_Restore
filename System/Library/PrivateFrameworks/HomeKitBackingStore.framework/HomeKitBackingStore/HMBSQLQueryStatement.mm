@interface HMBSQLQueryStatement
- (HMBSQLQueryStatement)initWithContext:(id)a3 statement:(id)a4;
- (HMBSQLQueryStatement)initWithContext:(id)a3 statement:(sqlite3_stmt *)a4 queryPlans:(id)a5 arguments:(id)a6;
@end

@implementation HMBSQLQueryStatement

- (HMBSQLQueryStatement)initWithContext:(id)a3 statement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() sqlStatementForContext:v6 statement:v7];
  if (v8)
  {
    v9 = v8;
    v18 = [objc_opt_class() queryPlansForContext:v6 statement:v7];
    v10 = [MEMORY[0x277CBEB38] dictionary];
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
          [v10 setObject:v14 forKey:v15];
        }
      }
    }

    self = [(HMBSQLQueryStatement *)self initWithContext:v6 statement:v9 queryPlans:v18 arguments:v10];

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (HMBSQLQueryStatement)initWithContext:(id)a3 statement:(sqlite3_stmt *)a4 queryPlans:(id)a5 arguments:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HMBSQLQueryStatement;
  v12 = [(HMBSQLStatement *)&v15 initWithContext:a3 statement:a4 queryPlans:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_arguments, a6);
  }

  return v13;
}

@end