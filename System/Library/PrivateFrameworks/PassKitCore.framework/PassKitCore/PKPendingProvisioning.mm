@interface PKPendingProvisioning
- (BOOL)isEqual:(id)equal;
- (PKPendingProvisioning)initWithCoder:(id)coder;
- (PKPendingProvisioning)initWithUniqueIdentifier:(id)identifier status:(int64_t)status;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingProvisioning

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPendingProvisioning;
  return [(PKPendingProvisioning *)&v3 init];
}

- (PKPendingProvisioning)initWithUniqueIdentifier:(id)identifier status:(int64_t)status
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PKPendingProvisioning;
  v7 = [(PKPendingProvisioning *)&v13 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v8;

    v7->_status = status;
    date = [MEMORY[0x1E695DF00] date];
    createdAt = v7->_createdAt;
    v7->_createdAt = date;

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

  type = [(PKPendingProvisioning *)self type];
  [v6 appendFormat:@"type: '%@'; ", type];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    type = [(PKPendingProvisioning *)self type];
    type2 = [v5 type];
    v7 = type;
    v13 = type2;
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

- (PKPendingProvisioning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPendingProvisioning;
  v5 = [(PKPendingProvisioning *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPendingProvisioningStatusFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdAt_timeIntervalSince1970"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v9;

    v5->_shouldAutoProvision = [coderCopy decodeBoolForKey:@"shouldAutoProvision"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningState"];
    provisioningState = v5->_provisioningState;
    v5->_provisioningState = v11;

    v5->_provisioningAttemptCounter = [coderCopy decodeIntegerForKey:@"provisioningAttemptCounter"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  v5 = self->_status - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CEE10[v5];
  }

  [coderCopy encodeObject:v6 forKey:@"status"];
  [coderCopy encodeObject:self->_createdAt forKey:@"createdAt_timeIntervalSince1970"];
  [coderCopy encodeBool:self->_shouldAutoProvision forKey:@"shouldAutoProvision"];
  [coderCopy encodeObject:self->_provisioningState forKey:@"provisioningState"];
  [coderCopy encodeInteger:self->_provisioningAttemptCounter forKey:@"provisioningAttemptCounter"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [objc_alloc(objc_opt_class()) _init];
  [(PKPendingProvisioning *)self _copyIntoPendingProvision:_init];
  return _init;
}

- (void)_copyIntoPendingProvision:(id)provision
{
  uniqueIdentifier = self->_uniqueIdentifier;
  provisionCopy = provision;
  v6 = [(NSString *)uniqueIdentifier copy];
  v7 = provisionCopy[2];
  provisionCopy[2] = v6;

  provisionCopy[3] = self->_status;
  v8 = [(NSDate *)self->_createdAt copy];
  v9 = provisionCopy[4];
  provisionCopy[4] = v8;

  *(provisionCopy + 8) = self->_shouldAutoProvision;
  provisionCopy[5] = self->_provisioningAttemptCounter;
  createDivergentState = [(PKSecureElementProvisioningState *)self->_provisioningState createDivergentState];
  v11 = provisionCopy[6];
  provisionCopy[6] = createDivergentState;
}

@end