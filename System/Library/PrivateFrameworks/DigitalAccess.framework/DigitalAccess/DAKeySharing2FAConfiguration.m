@interface DAKeySharing2FAConfiguration
- (DAKeySharing2FAConfiguration)initWithCoder:(id)a3;
- (id)description;
- (id)initForBringOtherKey;
- (id)initForDeviceVerifiedPasscode:(id)a3 maxRetries:(unint64_t)a4;
- (id)initForSecondFactorNone;
- (id)initForServerVerifiedPasscode:(id)a3;
- (id)initForVehicleVerifiedPasscode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAKeySharing2FAConfiguration

- (id)initForSecondFactorNone
{
  v6.receiver = self;
  v6.super_class = DAKeySharing2FAConfiguration;
  v2 = [(DAKeySharing2FAConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    passcode = v2->_passcode;
    v2->_type = 0;
    v2->_passcode = 0;

    v3->_maxRetriesAllowed = 0;
  }

  return v3;
}

- (id)initForDeviceVerifiedPasscode:(id)a3 maxRetries:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DAKeySharing2FAConfiguration;
  v8 = [(DAKeySharing2FAConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    objc_storeStrong(&v8->_passcode, a3);
    v9->_maxRetriesAllowed = a4;
  }

  return v9;
}

- (id)initForBringOtherKey
{
  v6.receiver = self;
  v6.super_class = DAKeySharing2FAConfiguration;
  v2 = [(DAKeySharing2FAConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    passcode = v2->_passcode;
    v2->_type = 2;
    v2->_passcode = 0;

    v3->_maxRetriesAllowed = 0;
  }

  return v3;
}

- (id)initForVehicleVerifiedPasscode
{
  v6.receiver = self;
  v6.super_class = DAKeySharing2FAConfiguration;
  v2 = [(DAKeySharing2FAConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    passcode = v2->_passcode;
    v2->_type = 3;
    v2->_passcode = 0;

    v3->_maxRetriesAllowed = 0;
  }

  return v3;
}

- (id)initForServerVerifiedPasscode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAKeySharing2FAConfiguration;
  v6 = [(DAKeySharing2FAConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 4;
    objc_storeStrong(&v6->_passcode, a3);
    v7->_maxRetriesAllowed = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[DAKeySharing2FAConfiguration type](self forKey:{"type"), @"type"}];
  v4 = [(DAKeySharing2FAConfiguration *)self passcode];
  [v5 encodeObject:v4 forKey:@"passcode"];

  [v5 encodeInteger:-[DAKeySharing2FAConfiguration maxRetriesAllowed](self forKey:{"maxRetriesAllowed"), @"maxRetriesAllowed"}];
}

- (DAKeySharing2FAConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAKeySharing2FAConfiguration;
  v5 = [(DAKeySharing2FAConfiguration *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
    passcode = v5->_passcode;
    v5->_passcode = v6;

    v5->_maxRetriesAllowed = [v4 decodeIntegerForKey:@"maxRetriesAllowed"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type              : %ld\n", self->_type];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Passcode Length   : %ld\n", -[NSString length](self->_passcode, "length")];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"MaxRetries        : %ld\n", self->_maxRetriesAllowed];
  [v3 appendString:v6];

  return v3;
}

@end