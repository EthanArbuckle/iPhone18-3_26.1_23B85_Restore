@interface PKPendingProvisioning
- (BOOL)isEqual:(id)a3;
- (PKPendingProvisioning)initWithCoder:(id)a3;
- (PKPendingProvisioning)initWithUniqueIdentifier:(id)a3 status:(int64_t)a4;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingProvisioning

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPendingProvisioning;
  return [(PKPendingProvisioning *)&v3 init];
}

- (PKPendingProvisioning)initWithUniqueIdentifier:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PKPendingProvisioning;
  v7 = [(PKPendingProvisioning *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v8;

    v7->_status = a4;
    v10 = [MEMORY[0x1E695DF00] date];
    createdAt = v7->_createdAt;
    v7->_createdAt = v10;

    v7->_shouldAutoProvision = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(PKPendingProvisioning *)self type];
  [v6 appendFormat:@"type: '%@'; ", v7];

  [v6 appendFormat:@"id: '%@'; ", self->_uniqueIdentifier];
  v8 = self->_status - 1;
  if (v8 > 4)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E79CEE10[v8];
  }

  [v6 appendFormat:@"status: '%@'; ", v9];
  [v6 appendFormat:@"provisioningAttemptCounter: '%lu'; ", self->_provisioningAttemptCounter];
  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[2];
    v7 = self->_uniqueIdentifier;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    v11 = [(PKPendingProvisioning *)self type];
    v12 = [v5 type];
    v7 = v11;
    v13 = v12;
    v9 = v13;
    if (v7 == v13)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
      if (v7 && v13)
      {
        LOBYTE(v10) = [(NSString *)v7 isEqualToString:v13];
      }
    }

    goto LABEL_15;
  }

  LOBYTE(v10) = 0;
LABEL_17:

  return v10;
}

- (PKPendingProvisioning)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPendingProvisioning;
  v5 = [(PKPendingProvisioning *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPendingProvisioningStatusFromString(v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdAt_timeIntervalSince1970"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v9;

    v5->_shouldAutoProvision = [v4 decodeBoolForKey:@"shouldAutoProvision"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningState"];
    provisioningState = v5->_provisioningState;
    v5->_provisioningState = v11;

    v5->_provisioningAttemptCounter = [v4 decodeIntegerForKey:@"provisioningAttemptCounter"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v7 = a3;
  [v7 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  v5 = self->_status - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CEE10[v5];
  }

  [v7 encodeObject:v6 forKey:@"status"];
  [v7 encodeObject:self->_createdAt forKey:@"createdAt_timeIntervalSince1970"];
  [v7 encodeBool:self->_shouldAutoProvision forKey:@"shouldAutoProvision"];
  [v7 encodeObject:self->_provisioningState forKey:@"provisioningState"];
  [v7 encodeInteger:self->_provisioningAttemptCounter forKey:@"provisioningAttemptCounter"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) _init];
  [(PKPendingProvisioning *)self _copyIntoPendingProvision:v4];
  return v4;
}

- (void)_copyIntoPendingProvision:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  v6 = [(NSString *)uniqueIdentifier copy];
  v7 = v5[2];
  v5[2] = v6;

  v5[3] = self->_status;
  v8 = [(NSDate *)self->_createdAt copy];
  v9 = v5[4];
  v5[4] = v8;

  *(v5 + 8) = self->_shouldAutoProvision;
  v5[5] = self->_provisioningAttemptCounter;
  v10 = [(PKSecureElementProvisioningState *)self->_provisioningState createDivergentState];
  v11 = v5[6];
  v5[6] = v10;
}

@end