@interface PKAccountReport
- (BOOL)isEqual:(id)equal;
- (PKAccountReport)initWithAccountIdentifier:(id)identifier reportType:(unint64_t)type;
- (PKAccountReport)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountReport

- (PKAccountReport)initWithAccountIdentifier:(id)identifier reportType:(unint64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKAccountReport;
  v8 = [(PKAccountReport *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountIdentifier, identifier);
    v9->_reportType = type;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  reportType = self->_reportType;
  if (reportType > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CCBA0[reportType];
  }

  [v3 safelySetObject:v6 forKey:@"reportType"];
  [v4 safelySetObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  v7 = [v4 copy];

  return v7;
}

- (PKAccountReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAccountReport;
  v5 = [(PKAccountReport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v5->_reportType = [coderCopy decodeIntegerForKey:@"reportType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeInteger:self->_reportType forKey:@"reportType"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = equalCopy[1];
  v6 = self->_accountIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v10 = self->_reportType == equalCopy[2];
LABEL_11:

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_accountIdentifier];
  v4 = PKCombinedHash(17, array);
  v5 = self->_reportType - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  reportType = self->_reportType;
  if (reportType > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CCBA0[reportType];
  }

  [v3 appendFormat:@"reportType: '%@'; ", v5];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_reportType;
  return v5;
}

@end