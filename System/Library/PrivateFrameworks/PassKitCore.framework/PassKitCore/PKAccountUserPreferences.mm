@interface PKAccountUserPreferences
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountUserPreferences:(id)a3;
- (PKAccountUserPreferences)initWithAccountUserPreferences:(id)a3;
- (PKAccountUserPreferences)initWithCoder:(id)a3;
- (PKAccountUserPreferences)initWithDictionary:(id)a3;
- (id)jsonRepresentationForAccountUserAccessLevel:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountUserPreferences

- (PKAccountUserPreferences)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountUserPreferences;
  v5 = [(PKAccountUserPreferences *)&v11 init];
  if (v5)
  {
    v5->_spendingEnabled = [v4 PKBoolForKey:@"spendingEnabled"];
    v5->_showAvailableCredit = [v4 PKBoolForKey:@"showAvailableCredit"];
    v5->_transactionSpendLimitEnabled = [v4 PKBoolForKey:@"transactionLimitEnabled"];
    v6 = [v4 PKDecimalNumberFromStringForKey:@"transactionLimitAmount"];
    transactionSpendLimitAmount = v5->_transactionSpendLimitAmount;
    v5->_transactionSpendLimitAmount = v6;

    v5->_monthlySpendLimitEnabled = [v4 PKBoolForKey:@"monthlySpendLimitEnabled"];
    v8 = [v4 PKDecimalNumberFromStringForKey:@"monthlySpendLimitAmount"];
    monthlySpendLimitAmount = v5->_monthlySpendLimitAmount;
    v5->_monthlySpendLimitAmount = v8;
  }

  return v5;
}

- (PKAccountUserPreferences)initWithAccountUserPreferences:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountUserPreferences;
  v5 = [(PKAccountUserPreferences *)&v11 init];
  if (v5)
  {
    v5->_spendingEnabled = [v4 spendingEnabled];
    v5->_showAvailableCredit = [v4 showAvailableCredit];
    v5->_transactionSpendLimitEnabled = [v4 transactionSpendLimitEnabled];
    v6 = [v4 transactionSpendLimitAmount];
    transactionSpendLimitAmount = v5->_transactionSpendLimitAmount;
    v5->_transactionSpendLimitAmount = v6;

    v5->_monthlySpendLimitEnabled = [v4 monthlySpendLimitEnabled];
    v8 = [v4 monthlySpendLimitAmount];
    monthlySpendLimitAmount = v5->_monthlySpendLimitAmount;
    v5->_monthlySpendLimitAmount = v8;
  }

  return v5;
}

- (id)jsonRepresentationForAccountUserAccessLevel:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3 == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_spendingEnabled];
    [v5 setObject:v6 forKeyedSubscript:@"spendingEnabled"];

    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_showAvailableCredit];
    [v5 setObject:v7 forKeyedSubscript:@"showAvailableCredit"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_transactionSpendLimitEnabled];
    [v5 setObject:v8 forKeyedSubscript:@"transactionLimitEnabled"];

    v9 = [(NSDecimalNumber *)self->_transactionSpendLimitAmount stringValue];
    [v5 setObject:v9 forKeyedSubscript:@"transactionLimitAmount"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_monthlySpendLimitEnabled];
  [v5 setObject:v10 forKeyedSubscript:@"monthlySpendLimitEnabled"];

  v11 = [(NSDecimalNumber *)self->_monthlySpendLimitAmount stringValue];
  [v5 setObject:v11 forKeyedSubscript:@"monthlySpendLimitAmount"];

  v12 = [v5 copy];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountUserPreferences *)self isEqualToAccountUserPreferences:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountUserPreferences:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_spendingEnabled != v4[8] || self->_showAvailableCredit != v4[9] || self->_transactionSpendLimitEnabled != v4[10])
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PKMutableAccountUserPreferences allocWithZone:a3];

  return [(PKAccountUserPreferences *)v4 initWithAccountUserPreferences:self];
}

- (PKAccountUserPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountUserPreferences;
  v5 = [(PKAccountUserPreferences *)&v11 init];
  if (v5)
  {
    v5->_spendingEnabled = [v4 decodeBoolForKey:@"spendingEnabled"];
    v5->_showAvailableCredit = [v4 decodeBoolForKey:@"showAvailableCredit"];
    v5->_transactionSpendLimitEnabled = [v4 decodeBoolForKey:@"transactionLimitEnabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionLimitAmount"];
    transactionSpendLimitAmount = v5->_transactionSpendLimitAmount;
    v5->_transactionSpendLimitAmount = v6;

    v5->_monthlySpendLimitEnabled = [v4 decodeBoolForKey:@"monthlySpendLimitEnabled"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"monthlySpendLimitAmount"];
    monthlySpendLimitAmount = v5->_monthlySpendLimitAmount;
    v5->_monthlySpendLimitAmount = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  spendingEnabled = self->_spendingEnabled;
  v5 = a3;
  [v5 encodeBool:spendingEnabled forKey:@"spendingEnabled"];
  [v5 encodeBool:self->_showAvailableCredit forKey:@"showAvailableCredit"];
  [v5 encodeBool:self->_transactionSpendLimitEnabled forKey:@"transactionLimitEnabled"];
  [v5 encodeObject:self->_transactionSpendLimitAmount forKey:@"transactionLimitAmount"];
  [v5 encodeBool:self->_monthlySpendLimitEnabled forKey:@"monthlySpendLimitEnabled"];
  [v5 encodeObject:self->_monthlySpendLimitAmount forKey:@"monthlySpendLimitAmount"];
}

@end