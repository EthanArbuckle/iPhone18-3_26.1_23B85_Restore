@interface LocalizeNumberingSystem
- (BOOL)isEqual:(id)a3;
- (BOOL)usesEastArabicDigits;
- (LocalizeNumberingSystem)initWithDigits:(id)a3 id:(id)a4;
@end

@implementation LocalizeNumberingSystem

- (BOOL)isEqual:(id)a3
{
  id = self->_id;
  v4 = [a3 id];
  LOBYTE(id) = [(NSString *)id isEqualToString:v4];

  return id;
}

- (BOOL)usesEastArabicDigits
{
  if ([(NSString *)self->_id isEqualToString:@"arab"])
  {
    return 1;
  }

  id = self->_id;

  return [(NSString *)id isEqualToString:@"arabext"];
}

- (LocalizeNumberingSystem)initWithDigits:(id)a3 id:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = LocalizeNumberingSystem;
  v9 = [(LocalizeNumberingSystem *)&v23 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v7 length];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__LocalizeNumberingSystem_initWithDigits_id___block_invoke;
    v21[3] = &unk_1E815C178;
    v12 = v10;
    v22 = v12;
    [v7 enumerateSubstringsInRange:0 options:v11 usingBlock:{2, v21}];
    v13 = [v12 copy];
    digits = v9->_digits;
    v9->_digits = v13;

    objc_storeStrong(&v9->_digitsString, a3);
    objc_storeStrong(&v9->_id, a4);
    v15 = [(NSString *)v9->_digitsString characterAtIndex:0];
    v9->_zero = v15;
    if ((v15 & 0xF800) == 0xD800 || [(NSString *)v9->_id containsString:@"math"]|| [(NSString *)v9->_id isEqualToString:@"hanidec"])
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v16 = ![(NSString *)v9->_id isEqualToString:@"fullwide"];
    }

    v9->_allowForOutput = v16;
    v17 = [(LocalizeNumberingSystem *)v9 usesEastArabicDigits];
    if (v17)
    {
      v18 = 1644;
    }

    else
    {
      v18 = 44;
    }

    if (v17)
    {
      v19 = 1643;
    }

    else
    {
      v19 = 46;
    }

    v9->_suggestedGroupingSeparator = v18;
    v9->_suggestedDecimalSeparator = v19;
  }

  return v9;
}

@end