@interface PKPendingProvisioningChange
- (PKPendingProvisioningChange)initWithCoder:(id)a3;
- (PKPendingProvisioningChange)initWithType:(unint64_t)a3 pendingProvisioning:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingProvisioningChange

- (PKPendingProvisioningChange)initWithType:(unint64_t)a3 pendingProvisioning:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKPendingProvisioningChange;
  v8 = [(PKPendingProvisioningChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_pendingProvisioning, a4);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  type = self->_type;
  if (type > 3)
  {
    v8 = &stru_1F227FD28;
  }

  else
  {
    v8 = off_1E79D00E8[type];
  }

  [v6 appendFormat:@"type: '%@'; ", v8];
  [v6 appendFormat:@"pending: '%@'; ", self->_pendingProvisioning];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (PKPendingProvisioningChange)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PKPendingProvisioningChange;
  v5 = [(PKPendingProvisioningChange *)&v33 init];
  if (v5)
  {
    v32 = v4;
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7 = v6;
    if (v6 != @"addition")
    {
      if (v6)
      {
        v8 = [(__CFString *)v6 isEqualToString:@"addition"];

        if (v8)
        {
          goto LABEL_5;
        }

        v10 = v7;
        if (v10 != @"update")
        {
          v11 = v10;
          v12 = [(__CFString *)v10 isEqualToString:@"update"];

          if ((v12 & 1) == 0)
          {
            v26 = v11;
            if (v26 == @"removeSuccess" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"removeSuccess"], v27, (v28 & 1) != 0))
            {
              v9 = 2;
              goto LABEL_9;
            }

            v29 = v27;
            if (v29 == @"removeFailure" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"removeFailure"], v30, v31))
            {
              v9 = 3;
              goto LABEL_9;
            }
          }
        }
      }

      v9 = 1;
      goto LABEL_9;
    }

LABEL_5:
    v9 = 0;
LABEL_9:

    v5->_type = v9;
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v13 initWithObjects:{v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v4 = v32;
    v23 = [v32 decodeObjectOfClasses:v22 forKey:@"pendingProvisioning"];
    pendingProvisioning = v5->_pendingProvisioning;
    v5->_pendingProvisioning = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  if (type > 3)
  {
    v5 = &stru_1F227FD28;
  }

  else
  {
    v5 = off_1E79D00E8[type];
  }

  v6 = a3;
  [v6 encodeObject:v5 forKey:@"type"];
  [v6 encodeObject:self->_pendingProvisioning forKey:@"pendingProvisioning"];
}

@end