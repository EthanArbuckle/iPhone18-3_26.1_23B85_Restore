@interface NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext
- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithRequestContext:(id)a3;
- (NSArray)credentials;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext

- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (NSArray)credentials
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifierToCredential];
        v11 = [v10 objectForKey:v9];

        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifiers];
  v6 = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifierToCredential];
  v7 = [v6 allValues];
  v8 = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self allowsManualEntry];
  v9 = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self product];
  v10 = [v3 stringWithFormat:@"<%@ ordered flow identifiers %@ credentials %@ allows manual entry %d product %@>", v4, v5, v7, v8, v9];

  return v10;
}

- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"flowIdentifierToCredential"];
    flowIdentifierToCredential = v5->_flowIdentifierToCredential;
    v5->_flowIdentifierToCredential = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"flowIdentifiers"];
    flowIdentifiers = v5->_flowIdentifiers;
    v5->_flowIdentifiers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentials"];
    credentials = v5->_credentials;
    v5->_credentials = v16;

    v5->_allowsManualEntry = [v4 decodeBoolForKey:@"allowsManualEntry"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_flowIdentifierToCredential forKey:{@"flowIdentifierToCredential", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_flowIdentifiers forKey:@"flowIdentifiers"];
  [v4 encodeObject:self->_credentials forKey:@"credentials"];
  [v4 encodeBool:self->_allowsManualEntry forKey:@"allowsManualEntry"];
  [v4 encodeObject:self->_product forKey:@"product"];
}

@end