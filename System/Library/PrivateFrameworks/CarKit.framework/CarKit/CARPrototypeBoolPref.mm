@interface CARPrototypeBoolPref
+ (CARPrototypeBoolPref)prefWithDomain:(id)a3 key:(id)a4 title:(id)a5 invertValueForState:(BOOL)a6 valueChangedBlock:(id)a7;
- (BOOL)cachedValueBool;
- (BOOL)invertValueForState;
- (BOOL)valueBool;
- (id)description;
- (void)setCachedState:(BOOL)a3;
- (void)setState:(BOOL)a3;
@end

@implementation CARPrototypeBoolPref

- (BOOL)valueBool
{
  v2 = [(CARPrototypePref *)self valueOrDefault];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (CARPrototypeBoolPref)prefWithDomain:(id)a3 key:(id)a4 title:(id)a5 invertValueForState:(BOOL)a6 valueChangedBlock:(id)a7
{
  v7 = a6;
  v12 = MEMORY[0x1E696AD98];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v12 numberWithBool:v7];
  v18 = [a1 prefWithDomain:v16 key:v15 title:v14 defaultValue:v17 valueChangedBlock:v13];

  return v18;
}

- (BOOL)invertValueForState
{
  v2 = [(CARPrototypePref *)self defaultValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)cachedValueBool
{
  v2 = [(CARPrototypePref *)self cachedValueOrDefault];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setState:(BOOL)a3
{
  v3 = a3;
  v5 = [(CARPrototypeBoolPref *)self invertValueForState];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5 ^ v3];
  [(CARPrototypePref *)self setValue:v6];
}

- (void)setCachedState:(BOOL)a3
{
  v3 = a3;
  v5 = [(CARPrototypeBoolPref *)self invertValueForState];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5 ^ v3];
  [(CARPrototypePref *)self setCachedValue:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CARPrototypePref *)self domain];
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

  v10 = [v3 stringWithFormat:@"<%@: %p %@-%@=%@ invertValueForState=%@ state=%@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end