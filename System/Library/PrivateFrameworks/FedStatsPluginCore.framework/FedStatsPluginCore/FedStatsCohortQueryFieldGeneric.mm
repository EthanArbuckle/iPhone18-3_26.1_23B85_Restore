@interface FedStatsCohortQueryFieldGeneric
+ (id)cohortQueryFieldWithKey:(id)a3;
- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4;
- (id)initQueryFieldWithKey:(id)a3;
@end

@implementation FedStatsCohortQueryFieldGeneric

- (id)initQueryFieldWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryFieldGeneric;
  v6 = [(FedStatsCohortQueryFieldGeneric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cohortName, a3);
  }

  return v7;
}

+ (id)cohortQueryFieldWithKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initQueryFieldWithKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [(FedStatsCohortQueryFieldGeneric *)self cohortName];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
  }

  else
  {
    if (a4)
    {
      v10 = MEMORY[0x277D08460];
      v11 = MEMORY[0x277CCACA8];
      v12 = [(FedStatsCohortQueryFieldGeneric *)self cohortName];
      v13 = [v11 stringWithFormat:@"The data should have a value for key %@", v12];
      *a4 = [v10 errorWithCode:100 description:v13];
    }

    v9 = &stru_285E133E0;
  }

  return v9;
}

@end