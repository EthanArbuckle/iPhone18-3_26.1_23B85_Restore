@interface PKPaymentBalanceReminder
- (PKPaymentBalanceReminder)initWithCoder:(id)coder;
- (PKPaymentBalanceReminder)initWithThreshold:(id)threshold isEnabled:(BOOL)enabled;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentBalanceReminder

- (PKPaymentBalanceReminder)initWithThreshold:(id)threshold isEnabled:(BOOL)enabled
{
  thresholdCopy = threshold;
  v11.receiver = self;
  v11.super_class = PKPaymentBalanceReminder;
  v8 = [(PKPaymentBalanceReminder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_threshold, threshold);
    v9->_enabled = enabled;
  }

  return v9;
}

- (PKPaymentBalanceReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentBalanceReminder;
  v5 = [(PKPaymentBalanceReminder *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v6;

    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  threshold = self->_threshold;
  coderCopy = coder;
  [coderCopy encodeObject:threshold forKey:@"threshold"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
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