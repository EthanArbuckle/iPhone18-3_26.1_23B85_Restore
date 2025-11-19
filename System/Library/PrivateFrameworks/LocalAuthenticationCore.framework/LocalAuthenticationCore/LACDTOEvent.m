@interface LACDTOEvent
- (BOOL)isEqual:(id)a3;
- (LACDTOEvent)initWithRawValue:(int64_t)a3 optionalValue:(id)a4;
- (id)description;
@end

@implementation LACDTOEvent

- (LACDTOEvent)initWithRawValue:(int64_t)a3 optionalValue:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = LACDTOEvent;
  v8 = [(LACDTOEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rawValue = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (id)description
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LACDTOEvent *)self rawValue];
  if ((v6 - 1) > 2)
  {
    v7 = @"LADTOEventRawValueRatchetStateDidChange";
  }

  else
  {
    v7 = off_1E7A95EA8[v6 - 1];
  }

  v8 = [v5 stringWithFormat:@"rawValue: %@", v7];
  v17[0] = v8;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [(LACDTOEvent *)self value];
  v11 = [v9 stringWithFormat:@"value: %@", v10];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v12 componentsJoinedByString:@" "];;
  v14 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v13];;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 rawValue];
    if (v6 == [(LACDTOEvent *)self rawValue])
    {
      v7 = [v5 value];
      v8 = [(LACDTOEvent *)self value];
      v9 = [v7 isEqual:v8];

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