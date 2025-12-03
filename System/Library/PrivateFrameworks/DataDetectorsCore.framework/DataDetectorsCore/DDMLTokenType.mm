@interface DDMLTokenType
- (DDMLTokenType)initWithClassification:(int)classification beginning:(BOOL)beginning;
- (id)debugDescription;
@end

@implementation DDMLTokenType

- (DDMLTokenType)initWithClassification:(int)classification beginning:(BOOL)beginning
{
  v7.receiver = self;
  v7.super_class = DDMLTokenType;
  result = [(DDMLTokenType *)&v7 init];
  if (result)
  {
    result->_classification = classification;
    result->_beginning = beginning;
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

    classification = [(DDMLTokenType *)self classification];
    if (classification > 0xA)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_1E8001DD8[classification];
    }

    v8 = v7;
    v3 = [v4 stringWithFormat:@"%@-%@", v5, v8];
  }

  return v3;
}

@end