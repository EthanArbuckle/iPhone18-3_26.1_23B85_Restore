@interface PKPaymentBalanceReminder
- (PKPaymentBalanceReminder)initWithCoder:(id)a3;
- (PKPaymentBalanceReminder)initWithThreshold:(id)a3 isEnabled:(BOOL)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentBalanceReminder

- (PKPaymentBalanceReminder)initWithThreshold:(id)a3 isEnabled:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentBalanceReminder;
  v8 = [(PKPaymentBalanceReminder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_threshold, a3);
    v9->_enabled = a4;
  }

  return v9;
}

- (PKPaymentBalanceReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentBalanceReminder;
  v5 = [(PKPaymentBalanceReminder *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  threshold = self->_threshold;
  v5 = a3;
  [v5 encodeObject:threshold forKey:@"threshold"];
  [v5 encodeBool:self->_enabled forKey:@"enabled"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_enabled)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; isEnabled: %@; threshold: %@; >", v4, self, v5, self->_threshold];
}

@end