@interface PKAccountUserPreferences
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountUserPreferences:(id)preferences;
- (PKAccountUserPreferences)initWithAccountUserPreferences:(id)preferences;
- (PKAccountUserPreferences)initWithCoder:(id)coder;
- (PKAccountUserPreferences)initWithDictionary:(id)dictionary;
- (id)jsonRepresentationForAccountUserAccessLevel:(unint64_t)level;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountUserPreferences

- (PKAccountUserPreferences)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKAccountUserPreferences;
  v5 = [(PKAccountUserPreferences *)&v11 init];
  if (v5)
  {
    v5->_spendingEnabled = [dictionaryCopy PKBoolForKey:@"spendingEnabled"];
    v5->_showAvailableCredit = [dictionaryCopy PKBoolForKey:@"showAvailableCredit"];
    v5->_transactionSpendLimitEnabled = [dictionaryCopy PKBoolForKey:@"transactionLimitEnabled"];
    v6 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"transactionLimitAmount"];
    transactionSpendLimitAmount = v5->_transactionSpendLimitAmount;
    v5->_transactionSpendLimitAmount = v6;

    v5->_monthlySpendLimitEnabled = [dictionaryCopy PKBoolForKey:@"monthlySpendLimitEnabled"];
    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"monthlySpendLimitAmount"];
    monthlySpendLimitAmount = v5->_monthlySpendLimitAmount;
    v5->_monthlySpendLimitAmount = v8;
  }

  return v5;
}

- (PKAccountUserPreferences)initWithAccountUserPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v11.receiver = self;
  v11.super_class = PKAccountUserPreferences;
  v5 = [(PKAccountUserPreferences *)&v11 init];
  if (v5)
  {
    v5->_spendingEnabled = [preferencesCopy spendingEnabled];
    v5->_showAvailableCredit = [preferencesCopy showAvailableCredit];
    v5->_transactionSpendLimitEnabled = [preferencesCopy transactionSpendLimitEnabled];
    transactionSpendLimitAmount = [preferencesCopy transactionSpendLimitAmount];
    transactionSpendLimitAmount = v5->_transactionSpendLimitAmount;
    v5->_transactionSpendLimitAmount = transactionSpendLimitAmount;

    v5->_monthlySpendLimitEnabled = [preferencesCopy monthlySpendLimitEnabled];
    monthlySpendLimitAmount = [preferencesCopy monthlySpendLimitAmount];
    monthlySpendLimitAmount = v5->_monthlySpendLimitAmount;
    v5->_monthlySpendLimitAmount = monthlySpendLimitAmount;
  }

  return v5;
}

- (id)jsonRepresentationForAccountUserAccessLevel:(unint64_t)level
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (level == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_spendingEnabled];
    [v5 setObject:v6 forKeyedSubscript:@"spendingEnabled"];

    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_showAvailableCredit];
    [v5 setObject:v7 forKeyedSubscript:@"showAvailableCredit"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_transactionSpendLimitEnabled];
    [v5 setObject:v8 forKeyedSubscript:@"transactionLimitEnabled"];

    stringValue = [(NSDecimalNumber *)self->_transactionSpendLimitAmount stringValue];
    [v5 setObject:stringValue forKeyedSubscript:@"transactionLimitAmount"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_monthlySpendLimitEnabled];
  [v5 setObject:v10 forKeyedSubscript:@"monthlySpendLimitEnabled"];

  stringValue2 = [(NSDecimalNumber *)self->_monthlySpendLimitAmount stringValue];
  [v5 setObject:stringValue2 forKeyedSubscript:@"monthlySpendLimitAmount"];

  v12 = [v5 copy];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountUserPreferences *)self isEqualToAccountUserPreferences:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountUserPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = preferencesCopy;
  if (!preferencesCopy || self->_spendingEnabled != preferencesCopy[8] || self->_showAvailableCredit != preferencesCopy[9] || self->_transactionSpendLimitEnabled != preferencesCopy[10])
  {
    goto LABEL_14;
  }

  transactionSpendLimitAmount = self->_transactionSpendLimitAmount;
  v7 = *(v5 + 2);
  if (transactionSpendLimitAmount && v7)
  {
    if (([(NSDecimalNumber *)transactionSpendLimitAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (transactionSpendLimitAmount != v7)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (self->_monthlySpendLimitEnabled != v5[11])
  {
    goto LABEL_14;
  }

  monthlySpendLimitAmount = self->_monthlySpendLimitAmount;
  v9 = *(v5 + 3);
  if (monthlySpendLimitAmount && v9)
  {
    v10 = [(NSDecimalNumber *)monthlySpendLimitAmount isEqual:?];
  }

  else
  {
    v10 = monthlySpendLimitAmount == v9;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transactionSpendLimitAmount];
  [v3 safelyAddObject:self->_monthlySpendLimitAmount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_spendingEnabled - v4 + 32 * v4;
  v6 = self->_showAvailableCredit - v5 + 32 * v5;
  v7 = self->_transactionSpendLimitEnabled - v6 + 32 * v6;
  v8 = self->_monthlySpendLimitEnabled - v7 + 32 * v7;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PKMutableAccountUserPreferences allocWithZone:zone];

  return [(PKAccountUserPreferences *)v4 initWithAccountUserPreferences:self];
}

- (PKAccountUserPreferences)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountUserPreferences;
  v5 = [(PKAccountUserPreferences *)&v11 init];
  if (v5)
  {
    v5->_spendingEnabled = [coderCopy decodeBoolForKey:@"spendingEnabled"];
    v5->_showAvailableCredit = [coderCopy decodeBoolForKey:@"showAvailableCredit"];
    v5->_transactionSpendLimitEnabled = [coderCopy decodeBoolForKey:@"transactionLimitEnabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionLimitAmount"];
    transactionSpendLimitAmount = v5->_transactionSpendLimitAmount;
    v5->_transactionSpendLimitAmount = v6;

    v5->_monthlySpendLimitEnabled = [coderCopy decodeBoolForKey:@"monthlySpendLimitEnabled"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monthlySpendLimitAmount"];
    monthlySpendLimitAmount = v5->_monthlySpendLimitAmount;
    v5->_monthlySpendLimitAmount = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  spendingEnabled = self->_spendingEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:spendingEnabled forKey:@"spendingEnabled"];
  [coderCopy encodeBool:self->_showAvailableCredit forKey:@"showAvailableCredit"];
  [coderCopy encodeBool:self->_transactionSpendLimitEnabled forKey:@"transactionLimitEnabled"];
  [coderCopy encodeObject:self->_transactionSpendLimitAmount forKey:@"transactionLimitAmount"];
  [coderCopy encodeBool:self->_monthlySpendLimitEnabled forKey:@"monthlySpendLimitEnabled"];
  [coderCopy encodeObject:self->_monthlySpendLimitAmount forKey:@"monthlySpendLimitAmount"];
}

@end