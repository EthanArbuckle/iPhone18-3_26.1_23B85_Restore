@interface LACDTOEvent
- (BOOL)isEqual:(id)equal;
- (LACDTOEvent)initWithRawValue:(int64_t)value optionalValue:(id)optionalValue;
- (id)description;
@end

@implementation LACDTOEvent

- (LACDTOEvent)initWithRawValue:(int64_t)value optionalValue:(id)optionalValue
{
  optionalValueCopy = optionalValue;
  v11.receiver = self;
  v11.super_class = LACDTOEvent;
  v8 = [(LACDTOEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rawValue = value;
    objc_storeStrong(&v8->_value, optionalValue);
  }

  return v9;
}

- (id)description
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  rawValue = [(LACDTOEvent *)self rawValue];
  if ((rawValue - 1) > 2)
  {
    v7 = @"LADTOEventRawValueRatchetStateDidChange";
  }

  else
  {
    v7 = off_1E7A95EA8[rawValue - 1];
  }

  v8 = [v5 stringWithFormat:@"rawValue: %@", v7];
  v17[0] = v8;
  v9 = MEMORY[0x1E696AEC0];
  value = [(LACDTOEvent *)self value];
  v11 = [v9 stringWithFormat:@"value: %@", value];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v12 componentsJoinedByString:@" "];;
  v14 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v13];;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    rawValue = [v5 rawValue];
    if (rawValue == [(LACDTOEvent *)self rawValue])
    {
      value = [v5 value];
      value2 = [(LACDTOEvent *)self value];
      v9 = [value isEqual:value2];

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end