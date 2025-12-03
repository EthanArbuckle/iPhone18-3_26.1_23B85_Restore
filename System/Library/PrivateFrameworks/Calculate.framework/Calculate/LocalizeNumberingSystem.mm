@interface LocalizeNumberingSystem
- (BOOL)isEqual:(id)equal;
- (BOOL)usesEastArabicDigits;
- (LocalizeNumberingSystem)initWithDigits:(id)digits id:(id)id;
@end

@implementation LocalizeNumberingSystem

- (BOOL)isEqual:(id)equal
{
  id = self->_id;
  v4 = [equal id];
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

- (LocalizeNumberingSystem)initWithDigits:(id)digits id:(id)id
{
  digitsCopy = digits;
  idCopy = id;
  v23.receiver = self;
  v23.super_class = LocalizeNumberingSystem;
  v9 = [(LocalizeNumberingSystem *)&v23 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [digitsCopy length];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__LocalizeNumberingSystem_initWithDigits_id___block_invoke;
    v21[3] = &unk_1E815C178;
    v12 = v10;
    v22 = v12;
    [digitsCopy enumerateSubstringsInRange:0 options:v11 usingBlock:{2, v21}];
    v13 = [v12 copy];
    digits = v9->_digits;
    v9->_digits = v13;

    objc_storeStrong(&v9->_digitsString, digits);
    objc_storeStrong(&v9->_id, id);
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
    usesEastArabicDigits = [(LocalizeNumberingSystem *)v9 usesEastArabicDigits];
    if (usesEastArabicDigits)
    {
      v18 = 1644;
    }

    else
    {
      v18 = 44;
    }

    if (usesEastArabicDigits)
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