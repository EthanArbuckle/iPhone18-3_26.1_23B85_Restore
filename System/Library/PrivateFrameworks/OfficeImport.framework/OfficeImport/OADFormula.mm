@interface OADFormula
- (OADFormula)initWithType:(int)type arg0:(OADFormulaArg)arg0 arg1:(OADFormulaArg)arg1 arg2:(OADFormulaArg)arg2;
- (id)description;
@end

@implementation OADFormula

- (OADFormula)initWithType:(int)type arg0:(OADFormulaArg)arg0 arg1:(OADFormulaArg)arg1 arg2:(OADFormulaArg)arg2
{
  v11.receiver = self;
  v11.super_class = OADFormula;
  result = [(OADFormula *)&v11 init];
  if (result)
  {
    result->mType = type;
    result->mArgs[0] = arg0;
    result->mArgs[1] = arg1;
    result->mArgs[2] = arg2;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADFormula;
  v2 = [(OADFormula *)&v4 description];

  return v2;
}

@end