@interface PKBankAccountInformation
+ (Class)_classForType:(int64_t)a3;
- (BOOL)isValid;
- (PKBankAccountInformation)init;
- (PKBankAccountInformation)initWithCoder:(id)a3;
- (PKBankAccountInformation)initWithType:(int64_t)a3;
- (id)accountSuffix;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)maskedAccountNumber;
- (void)_commonDeleteAllBankInformation;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountNumber:(id)a3;
- (void)setRoutingNumber:(id)a3;
@end

@implementation PKBankAccountInformation

- (PKBankAccountInformation)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = [(PKBankAccountInformation *)self initWithType:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKBankAccountInformation;
    v4 = [(PKBankAccountInformation *)&v7 init];
  }

  v5 = v4;

  return v5;
}

- (PKBankAccountInformation)initWithType:(int64_t)a3
{
  v4 = objc_alloc_init([objc_opt_class() _classForType:a3]);

  return v4;
}

+ (Class)_classForType:(int64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (PKBankAccountInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if ([v4 containsValueForKey:@"type"])
    {
      v17 = [v4 decodeIntegerForKey:@"type"];
    }

    else
    {
      v17 = 0;
    }

    v6 = [objc_alloc(objc_msgSend(objc_opt_class() _classForType:{v17)), "initWithCoder:", v4}];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PKBankAccountInformation;
    v6 = [(PKBankAccountInformation *)&v19 init];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankName"];
      bankName = v6->_bankName;
      v6->_bankName = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
      v10 = [v9 pk_zString];
      accountNumber = v6->_accountNumber;
      v6->_accountNumber = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
      v13 = [v12 pk_zString];
      routingNumber = v6->_routingNumber;
      v6->_routingNumber = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v15;

      v6->_status = [v4 decodeIntegerForKey:@"status"];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  bankName = self->_bankName;
  v6 = a3;
  [v6 encodeObject:bankName forKey:@"bankName"];
  [v6 encodeObject:self->_routingNumber forKey:@"routingNumber"];
  [v6 encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKBankAccountInformation type](self, "type")}];
  [v6 encodeObject:v5 forKey:@"type"];

  [v6 encodeInteger:self->_status forKey:@"status"];
}

- (void)setAccountNumber:(id)a3
{
  v4 = [a3 pk_zString];
  accountNumber = self->_accountNumber;
  self->_accountNumber = v4;
}

- (void)setRoutingNumber:(id)a3
{
  v4 = [a3 pk_zString];
  routingNumber = self->_routingNumber;
  self->_routingNumber = v4;
}

- (void)_commonDeleteAllBankInformation
{
  bankName = self->_bankName;
  self->_bankName = 0;

  accountNumber = self->_accountNumber;
  self->_accountNumber = 0;

  routingNumber = self->_routingNumber;
  self->_routingNumber = 0;

  identifier = self->_identifier;
  self->_identifier = 0;

  self->_status = 0;
}

- (BOOL)isValid
{
  type = self->_type;
  if (type == 2)
  {
LABEL_4:
    if ([(NSString *)self->_bankName length]&& [(NSString *)self->_accountNumber length])
    {
      v5 = 16;
      return [*(&self->super.isa + v5) length] != 0;
    }

    return 0;
  }

  if (type != 1)
  {
    if (type)
    {
      return v2;
    }

    goto LABEL_4;
  }

  if (![(NSString *)self->_bankName length]|| ![(NSString *)self->_accountNumber length]|| ![(NSString *)self->_routingNumber length])
  {
    v5 = 32;
    return [*(&self->super.isa + v5) length] != 0;
  }

  return 1;
}

- (id)accountSuffix
{
  v3 = self->_accountNumber;
  v4 = v3;
  if (v3 && [(NSString *)v3 length]>= 5)
  {
    [(NSString *)self->_accountNumber length];
    v5 = [v4 substringWithRange:?];

    v4 = v5;
  }

  return v4;
}

- (id)maskedAccountNumber
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PKPANMask();
  v5 = [(PKBankAccountInformation *)self accountSuffix];
  v6 = [v3 stringWithFormat:@"(%@ %@)", v4, v5];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"bankName: '%@'; ", self->_bankName];
  [v3 appendFormat:@"accountNumber: '%@'; ", self->_accountNumber];
  [v3 appendFormat:@"routingNumber: '%@'; ", self->_routingNumber];
  v4 = PKAccountPaymentFundingSourceStatusToString(self->_status);
  [v3 appendFormat:@"status: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_bankName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_accountNumber copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_routingNumber copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v5[5] = self->_status;
  return v5;
}

@end