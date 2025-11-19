@interface OADFormula
- (OADFormula)initWithType:(int)a3 arg0:(OADFormulaArg)a4 arg1:(OADFormulaArg)a5 arg2:(OADFormulaArg)a6;
- (id)description;
@end

@implementation OADFormula

- (OADFormula)initWithType:(int)a3 arg0:(OADFormulaArg)a4 arg1:(OADFormulaArg)a5 arg2:(OADFormulaArg)a6
{
  v11.receiver = self;
  v11.super_class = OADFormula;
  result = [(OADFormula *)&v11 init];
  if (result)
  {
    result->mType = a3;
    result->mArgs[0] = a4;
    result->mArgs[1] = a5;
    result->mArgs[2] = a6;
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