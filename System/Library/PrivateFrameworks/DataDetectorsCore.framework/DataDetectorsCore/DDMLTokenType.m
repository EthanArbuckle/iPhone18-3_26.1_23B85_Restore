@interface DDMLTokenType
- (DDMLTokenType)initWithClassification:(int)a3 beginning:(BOOL)a4;
- (id)debugDescription;
@end

@implementation DDMLTokenType

- (DDMLTokenType)initWithClassification:(int)a3 beginning:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = DDMLTokenType;
  result = [(DDMLTokenType *)&v7 init];
  if (result)
  {
    result->_classification = a3;
    result->_beginning = a4;
  }

  return result;
}

- (id)debugDescription
{
  if ([(DDMLTokenType *)self classification]== 10)
  {
    v3 = @"0";
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    if ([(DDMLTokenType *)self beginning])
    {
      v5 = @"B";
    }

    else
    {
      v5 = @"I";
    }

    v6 = [(DDMLTokenType *)self classification];
    if (v6 > 0xA)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E8001DD8[v6];
    }

    v8 = v7;
    v3 = [v4 stringWithFormat:@"%@-%@", v5, v8];
  }

  return v3;
}

@end