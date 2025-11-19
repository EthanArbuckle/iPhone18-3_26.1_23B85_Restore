@interface PKNumericSuggestionLastInput
- (BOOL)wentToMax;
- (NSDecimalNumber)value;
- (PKNumericSuggestionLastInput)initWithPassSerialNumber:(id)a3;
- (void)setValue:(id)a3;
- (void)setWentToMax:(BOOL)a3;
@end

@implementation PKNumericSuggestionLastInput

- (PKNumericSuggestionLastInput)initWithPassSerialNumber:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PKNumericSuggestionLastInput;
  v6 = [(PKNumericSuggestionLastInput *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialNumber, a3);
    v8 = PKNumericSuggestionLastInputForPassSerialNumber(v7->_serialNumber);
    v9 = [v8 mutableCopy];
    passLastInputDictionary = v7->_passLastInputDictionary;
    v7->_passLastInputDictionary = v9;

    if (!v7->_passLastInputDictionary)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = v7->_passLastInputDictionary;
      v7->_passLastInputDictionary = v11;
    }
  }

  return v7;
}

- (NSDecimalNumber)value
{
  v2 = [(NSMutableDictionary *)self->_passLastInputDictionary objectForKey:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = PKCurrencyStorageNumberToCurrencyDecimal(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)wentToMax
{
  v2 = [(NSMutableDictionary *)self->_passLastInputDictionary objectForKey:@"wentToMax"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValue:(id)a3
{
  if (a3)
  {
    v4 = PKCurrencyDecimalToStorageNumber(a3);
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      v6 = [v4 longLongValue];
      v5 = v7;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableDictionary *)self->_passLastInputDictionary setObject:v7 forKey:@"value"];
        v5 = v7;
      }
    }
  }
}

- (void)setWentToMax:(BOOL)a3
{
  passLastInputDictionary = self->_passLastInputDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(NSMutableDictionary *)passLastInputDictionary setObject:v4 forKey:@"wentToMax"];
}

@end