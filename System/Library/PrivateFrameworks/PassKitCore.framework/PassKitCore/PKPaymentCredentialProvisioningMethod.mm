@interface PKPaymentCredentialProvisioningMethod
- (PKPaymentCredentialProvisioningMethod)initWithCoder:(id)coder;
- (PKPaymentCredentialProvisioningMethod)initWithDictionary:(id)dictionary;
- (PKPaymentCredentialProvisioningMethod)initWithSupportsFrictionlessProvisioning:(BOOL)provisioning actions:(id)actions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentCredentialProvisioningMethod

- (PKPaymentCredentialProvisioningMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPaymentCredentialProvisioningMethod;
  v5 = [(PKPaymentCredentialProvisioningMethod *)&v12 init];
  if (v5 && (v5->_supportsFrictionlessProvisioning = [dictionaryCopy PKBoolForKey:@"supportsFrictionlessProvisioning"], objc_msgSend(dictionaryCopy, "PKArrayContaining:forKey:", objc_opt_class(), @"actions"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "pk_arrayBySafelyApplyingBlock:", &__block_literal_global_87), v7 = objc_claimAutoreleasedReturnValue(), actions = v5->_actions, v5->_actions = v7, actions, v9 = -[NSArray count](v5->_actions, "count"), v6, !v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (PKPaymentCredentialProvisioningMethod)initWithSupportsFrictionlessProvisioning:(BOOL)provisioning actions:(id)actions
{
  actionsCopy = actions;
  v11.receiver = self;
  v11.super_class = PKPaymentCredentialProvisioningMethod;
  v8 = [(PKPaymentCredentialProvisioningMethod *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_supportsFrictionlessProvisioning = provisioning;
    objc_storeStrong(&v8->_actions, actions);
  }

  return v9;
}

- (PKPaymentCredentialProvisioningMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPaymentCredentialProvisioningMethod;
  v5 = [(PKPaymentCredentialProvisioningMethod *)&v16 init];
  if (v5)
  {
    v5->_supportsFrictionlessProvisioning = [coderCopy decodeBoolForKey:@"supportsFrictionlessProvisioning"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  supportsFrictionlessProvisioning = self->_supportsFrictionlessProvisioning;
  coderCopy = coder;
  [coderCopy encodeBool:supportsFrictionlessProvisioning forKey:@"supportsFrictionlessProvisioning"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
}

@end