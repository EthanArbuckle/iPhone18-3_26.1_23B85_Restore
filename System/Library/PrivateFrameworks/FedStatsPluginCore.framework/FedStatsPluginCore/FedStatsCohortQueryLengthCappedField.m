@interface FedStatsCohortQueryLengthCappedField
+ (id)cohortQueryFieldWithKey:(id)a3 cap:(unint64_t)a4;
- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4;
- (id)initQueryFieldWithKey:(id)a3 cap:(unint64_t)a4;
- (id)padCohortValue:(id)a3;
@end

@implementation FedStatsCohortQueryLengthCappedField

- (id)initQueryFieldWithKey:(id)a3 cap:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FedStatsCohortQueryLengthCappedField;
  v8 = [(FedStatsCohortQueryLengthCappedField *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyName, a3);
    v9->_cap = a4;
  }

  return v9;
}

+ (id)cohortQueryFieldWithKey:(id)a3 cap:(unint64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [[FedStatsCohortQueryLengthCappedField alloc] initQueryFieldWithKey:v5 cap:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)padCohortValue:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByPaddingToLength:-[FedStatsCohortQueryLengthCappedField cap](self withString:"cap") startingAtIndex:{@"X", 0}];

  return v5;
}

- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [(FedStatsCohortQueryLengthCappedField *)self keyName];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
    v10 = [(FedStatsCohortQueryLengthCappedField *)self padCohortValue:v9];
  }

  else
  {
    if (a4)
    {
      v11 = MEMORY[0x277D08460];
      v12 = MEMORY[0x277CCACA8];
      v13 = [(FedStatsCohortQueryLengthCappedField *)self keyName];
      v14 = [v12 stringWithFormat:@"The data should have a value for key %@", v13];
      *a4 = [v11 errorWithCode:100 description:v14];
    }

    v10 = [(FedStatsCohortQueryLengthCappedField *)self padCohortValue:&stru_285E133E0];
  }

  return v10;
}

@end