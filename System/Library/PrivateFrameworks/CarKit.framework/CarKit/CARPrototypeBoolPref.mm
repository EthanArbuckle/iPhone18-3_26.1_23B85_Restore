@interface CARPrototypeBoolPref
+ (CARPrototypeBoolPref)prefWithDomain:(id)domain key:(id)key title:(id)title invertValueForState:(BOOL)state valueChangedBlock:(id)block;
- (BOOL)cachedValueBool;
- (BOOL)invertValueForState;
- (BOOL)valueBool;
- (id)description;
- (void)setCachedState:(BOOL)state;
- (void)setState:(BOOL)state;
@end

@implementation CARPrototypeBoolPref

- (BOOL)valueBool
{
  valueOrDefault = [(CARPrototypePref *)self valueOrDefault];
  bOOLValue = [valueOrDefault BOOLValue];

  return bOOLValue;
}

+ (CARPrototypeBoolPref)prefWithDomain:(id)domain key:(id)key title:(id)title invertValueForState:(BOOL)state valueChangedBlock:(id)block
{
  stateCopy = state;
  v12 = MEMORY[0x1E696AD98];
  blockCopy = block;
  titleCopy = title;
  keyCopy = key;
  domainCopy = domain;
  v17 = [v12 numberWithBool:stateCopy];
  v18 = [self prefWithDomain:domainCopy key:keyCopy title:titleCopy defaultValue:v17 valueChangedBlock:blockCopy];

  return v18;
}

- (BOOL)invertValueForState
{
  defaultValue = [(CARPrototypePref *)self defaultValue];
  bOOLValue = [defaultValue BOOLValue];

  return bOOLValue;
}

- (BOOL)cachedValueBool
{
  cachedValueOrDefault = [(CARPrototypePref *)self cachedValueOrDefault];
  bOOLValue = [cachedValueOrDefault BOOLValue];

  return bOOLValue;
}

- (void)setState:(BOOL)state
{
  stateCopy = state;
  invertValueForState = [(CARPrototypeBoolPref *)self invertValueForState];
  stateCopy = [MEMORY[0x1E696AD98] numberWithBool:invertValueForState ^ stateCopy];
  [(CARPrototypePref *)self setValue:stateCopy];
}

- (void)setCachedState:(BOOL)state
{
  stateCopy = state;
  invertValueForState = [(CARPrototypeBoolPref *)self invertValueForState];
  stateCopy = [MEMORY[0x1E696AD98] numberWithBool:invertValueForState ^ stateCopy];
  [(CARPrototypePref *)self setCachedValue:stateCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  domain = [(CARPrototypePref *)self domain];
  v6 = [(CARPrototypePref *)self key];
  if ([(CARPrototypeBoolPref *)self valueBool])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(CARPrototypeBoolPref *)self invertValueForState])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CARPrototypeBoolPref *)self state])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p %@-%@=%@ invertValueForState=%@ state=%@>", v4, self, domain, v6, v7, v8, v9];

  return v10;
}

@end