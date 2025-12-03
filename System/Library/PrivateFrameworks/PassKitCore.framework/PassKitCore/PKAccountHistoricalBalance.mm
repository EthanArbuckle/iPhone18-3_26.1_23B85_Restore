@interface PKAccountHistoricalBalance
- (PKAccountHistoricalBalance)initWithBalance:(id)balance date:(id)date;
- (PKAccountHistoricalBalance)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountHistoricalBalance

- (PKAccountHistoricalBalance)initWithBalance:(id)balance date:(id)date
{
  balanceCopy = balance;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = PKAccountHistoricalBalance;
  v9 = [(PKAccountHistoricalBalance *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_balance, balance);
    objc_storeStrong(&v10->_date, date);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  balance = self->_balance;
  coderCopy = coder;
  [coderCopy encodeObject:balance forKey:@"balance"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (PKAccountHistoricalBalance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountHistoricalBalance;
  v5 = [(PKAccountHistoricalBalance *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDate *)self->_date copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDecimalNumber *)self->_balance copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v5[3] = self->_type;
  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"balance", self->_balance];
  [v3 appendFormat:@"%@: '%@'; ", @"date", self->_date];
  [v3 appendFormat:@"%@: '%lu'; ", @"type", self->_type];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end