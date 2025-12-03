@interface PKPendingProvisioningReceipt
+ (id)failedReceiptWithPendingProvisioning:(id)provisioning error:(id)error;
+ (id)remoteSuccessReceiptWithPendingProvisioning:(id)provisioning;
+ (id)successReceiptWithPendingProvisioning:(id)provisioning passUniqueID:(id)d;
- (PKPendingProvisioningReceipt)initWithCoder:(id)coder;
- (id)_initWithPendingProvisioning:(id)provisioning type:(int64_t)type passUniqueID:(id)d error:(id)error;
- (id)description;
- (id)initForDatabase;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingProvisioningReceipt

+ (id)failedReceiptWithPendingProvisioning:(id)provisioning error:(id)error
{
  errorCopy = error;
  provisioningCopy = provisioning;
  v7 = [[PKPendingProvisioningReceipt alloc] _initWithPendingProvisioning:provisioningCopy type:2 passUniqueID:0 error:errorCopy];

  return v7;
}

+ (id)successReceiptWithPendingProvisioning:(id)provisioning passUniqueID:(id)d
{
  dCopy = d;
  provisioningCopy = provisioning;
  v7 = [[PKPendingProvisioningReceipt alloc] _initWithPendingProvisioning:provisioningCopy type:1 passUniqueID:dCopy error:0];

  return v7;
}

+ (id)remoteSuccessReceiptWithPendingProvisioning:(id)provisioning
{
  provisioningCopy = provisioning;
  v4 = [[PKPendingProvisioningReceipt alloc] _initWithPendingProvisioning:provisioningCopy type:1 passUniqueID:0 error:0];

  return v4;
}

- (id)_initWithPendingProvisioning:(id)provisioning type:(int64_t)type passUniqueID:(id)d error:(id)error
{
  provisioningCopy = provisioning;
  dCopy = d;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = PKPendingProvisioningReceipt;
  v13 = [(PKPendingProvisioningReceipt *)&v26 init];
  if (v13)
  {
    provisioningState = [provisioningCopy provisioningState];
    v15 = [provisioningState sid];
    v16 = v15;
    if (v15)
    {
      uniqueIdentifier = v15;
    }

    else
    {
      uniqueIdentifier = [provisioningCopy uniqueIdentifier];
    }

    identifier = v13->_identifier;
    v13->_identifier = uniqueIdentifier;

    v13->_type = type;
    objc_storeStrong(&v13->_passUniqueID, d);
    objc_storeStrong(&v13->_error, error);
    v13->_createdAt = CFAbsoluteTimeGetCurrent();
    v19 = [provisioningCopy copy];
    pendingProvisioning = v13->_pendingProvisioning;
    v13->_pendingProvisioning = v19;

    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = v13->_identifier;
    uniqueIdentifier2 = [(PKPendingProvisioning *)v13->_pendingProvisioning uniqueIdentifier];
    v24 = [v21 initWithFormat:@"Receipt-%@-%@", v22, uniqueIdentifier2];

    [(PKPendingProvisioning *)v13->_pendingProvisioning setUniqueIdentifier:v24];
    [(PKPendingProvisioning *)v13->_pendingProvisioning setStatus:4];
  }

  return v13;
}

- (id)initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPendingProvisioningReceipt;
  return [(PKPendingProvisioningReceipt *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"id: '%@'; ", self->_identifier];
  type = self->_type;
  v8 = &stru_1F227FD28;
  if (type == 2)
  {
    v8 = @"failed";
  }

  if (type == 1)
  {
    v9 = @"provisioned";
  }

  else
  {
    v9 = v8;
  }

  [v6 appendFormat:@"type: '%@'; ", v9];
  if (self->_passUniqueID)
  {
    [v6 appendFormat:@"passUniqueID: '%@'; ", self->_passUniqueID];
  }

  if (self->_error)
  {
    [v6 appendFormat:@"error: '%@'; ", self->_error];
  }

  [v6 appendFormat:@"createdAt: '%lu'; ", self->_createdAt];
  [v6 appendFormat:@"pending: '%@'; ", self->_pendingProvisioning];
  [v6 appendFormat:@">"];
  v10 = [v6 copy];

  return v10;
}

- (PKPendingProvisioningReceipt)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKPendingProvisioningReceipt;
  v5 = [(PKPendingProvisioningReceipt *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPendingProvisioningReceiptTypeFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdAt"];
    [v13 doubleValue];
    v5->_createdAt = v14;

    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v15 initWithObjects:{v16, v17, v18, v19, v20, v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"pendingProvisioning"];
    pendingProvisioning = v5->_pendingProvisioning;
    v5->_pendingProvisioning = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  type = self->_type;
  v6 = &stru_1F227FD28;
  if (type == 2)
  {
    v6 = @"failed";
  }

  if (type == 1)
  {
    v7 = @"provisioned";
  }

  else
  {
    v7 = v6;
  }

  [coderCopy encodeObject:v7 forKey:@"type"];
  [coderCopy encodeObject:self->_passUniqueID forKey:@"passUniqueID"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_createdAt];
  [coderCopy encodeObject:v8 forKey:@"createdAt"];

  [coderCopy encodeObject:self->_pendingProvisioning forKey:@"pendingProvisioning"];
}

@end