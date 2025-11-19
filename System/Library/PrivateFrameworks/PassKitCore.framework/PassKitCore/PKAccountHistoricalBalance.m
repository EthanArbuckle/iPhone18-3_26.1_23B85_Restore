@interface PKAccountHistoricalBalance
- (PKAccountHistoricalBalance)initWithBalance:(id)a3 date:(id)a4;
- (PKAccountHistoricalBalance)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountHistoricalBalance

- (PKAccountHistoricalBalance)initWithBalance:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKAccountHistoricalBalance;
  v9 = [(PKAccountHistoricalBalance *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_balance, a3);
    objc_storeStrong(&v10->_date, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  balance = self->_balance;
  v5 = a3;
  [v5 encodeObject:balance forKey:@"balance"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (PKAccountHistoricalBalance)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountHistoricalBalance;
  v5 = [(PKAccountHistoricalBalance *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDate *)self->_date copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDecimalNumber *)self->_balance copyWithZone:a3];
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