@interface NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext
- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithRequestContext:(id)context;
- (NSArray)credentials;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext

- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (NSArray)credentials
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  flowIdentifiers = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifiers];
  v5 = [flowIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(flowIdentifiers);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        flowIdentifierToCredential = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifierToCredential];
        v11 = [flowIdentifierToCredential objectForKey:v9];

        if (v11)
        {
          [array addObject:v11];
        }
      }

      v6 = [flowIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  flowIdentifiers = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifiers];
  flowIdentifierToCredential = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self flowIdentifierToCredential];
  allValues = [flowIdentifierToCredential allValues];
  allowsManualEntry = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self allowsManualEntry];
  product = [(NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext *)self product];
  v10 = [v3 stringWithFormat:@"<%@ ordered flow identifiers %@ credentials %@ allows manual entry %d product %@>", _baseFlowStepDescription, flowIdentifiers, allValues, allowsManualEntry, product];

  return v10;
}

- (NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"flowIdentifierToCredential"];
    flowIdentifierToCredential = v5->_flowIdentifierToCredential;
    v5->_flowIdentifierToCredential = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"flowIdentifiers"];
    flowIdentifiers = v5->_flowIdentifiers;
    v5->_flowIdentifiers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentials"];
    credentials = v5->_credentials;
    v5->_credentials = v16;

    v5->_allowsManualEntry = [coderCopy decodeBoolForKey:@"allowsManualEntry"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerChooseCredentialsStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_flowIdentifierToCredential forKey:{@"flowIdentifierToCredential", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_flowIdentifiers forKey:@"flowIdentifiers"];
  [coderCopy encodeObject:self->_credentials forKey:@"credentials"];
  [coderCopy encodeBool:self->_allowsManualEntry forKey:@"allowsManualEntry"];
  [coderCopy encodeObject:self->_product forKey:@"product"];
}

@end