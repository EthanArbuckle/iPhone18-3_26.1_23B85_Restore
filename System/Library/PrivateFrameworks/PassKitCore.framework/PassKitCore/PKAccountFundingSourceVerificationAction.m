@interface PKAccountFundingSourceVerificationAction
- (BOOL)isEqual:(id)a3;
- (PKAccountFundingSourceVerificationAction)initWithCoder:(id)a3;
- (PKAccountFundingSourceVerificationAction)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountFundingSourceVerificationAction

- (PKAccountFundingSourceVerificationAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountFundingSourceVerificationAction;
  v5 = [(PKAccountFundingSourceVerificationAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v5->_type = PKAccountFundingSourceVerificationActionTypeFromString(v6);

    v7 = [v4 PKArrayContaining:objc_opt_class() forKey:@"options"];
    v8 = [v7 pk_arrayByApplyingBlock:&__block_literal_global_165];
    verificationOptions = v5->_verificationOptions;
    v5->_verificationOptions = v8;
  }

  return v5;
}

uint64_t __63__PKAccountFundingSourceVerificationAction_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PKApplyVerificationTypeFromString(a2);

  return [v2 numberWithUnsignedInteger:v3];
}

- (PKAccountFundingSourceVerificationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKAccountFundingSourceVerificationAction;
  v5 = [(PKAccountFundingSourceVerificationAction *)&v12 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"options"];
    verificationOptions = v5->_verificationOptions;
    v5->_verificationOptions = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_verificationOptions forKey:@"options"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  verificationOptions = self->_verificationOptions;
  v6 = v4[2];
  if (!verificationOptions || !v6)
  {
    if (verificationOptions == v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (([(NSArray *)verificationOptions isEqual:?]& 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = self->_type == v4[1];
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_verificationOptions];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  type = self->_type;
  if (type > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79DC380[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v4 appendFormat:@"verificationOptions: '%@'; ", self->_verificationOptions];
  [v4 appendFormat:@">"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKAccountFundingSourceVerificationAction allocWithZone:](PKAccountFundingSourceVerificationAction init];
  v5->_type = self->_type;
  v6 = [(NSArray *)self->_verificationOptions copyWithZone:a3];
  verificationOptions = v5->_verificationOptions;
  v5->_verificationOptions = v6;

  return v5;
}

@end