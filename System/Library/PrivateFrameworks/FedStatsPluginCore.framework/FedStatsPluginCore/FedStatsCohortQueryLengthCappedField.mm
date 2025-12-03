@interface FedStatsCohortQueryLengthCappedField
+ (id)cohortQueryFieldWithKey:(id)key cap:(unint64_t)cap;
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
- (id)initQueryFieldWithKey:(id)key cap:(unint64_t)cap;
- (id)padCohortValue:(id)value;
@end

@implementation FedStatsCohortQueryLengthCappedField

- (id)initQueryFieldWithKey:(id)key cap:(unint64_t)cap
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = FedStatsCohortQueryLengthCappedField;
  v8 = [(FedStatsCohortQueryLengthCappedField *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyName, key);
    v9->_cap = cap;
  }

  return v9;
}

+ (id)cohortQueryFieldWithKey:(id)key cap:(unint64_t)cap
{
  if (key)
  {
    keyCopy = key;
    v6 = [[FedStatsCohortQueryLengthCappedField alloc] initQueryFieldWithKey:keyCopy cap:cap];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)padCohortValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy stringByPaddingToLength:-[FedStatsCohortQueryLengthCappedField cap](self withString:"cap") startingAtIndex:{@"X", 0}];

  return v5;
}

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  parametersCopy = parameters;
  keyName = [(FedStatsCohortQueryLengthCappedField *)self keyName];
  v8 = [parametersCopy objectForKey:keyName];

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
    v10 = [(FedStatsCohortQueryLengthCappedField *)self padCohortValue:v9];
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277D08460];
      v12 = MEMORY[0x277CCACA8];
      keyName2 = [(FedStatsCohortQueryLengthCappedField *)self keyName];
      v14 = [v12 stringWithFormat:@"The data should have a value for key %@", keyName2];
      *error = [v11 errorWithCode:100 description:v14];
    }

    v10 = [(FedStatsCohortQueryLengthCappedField *)self padCohortValue:&stru_285E133E0];
  }

  return v10;
}

@end