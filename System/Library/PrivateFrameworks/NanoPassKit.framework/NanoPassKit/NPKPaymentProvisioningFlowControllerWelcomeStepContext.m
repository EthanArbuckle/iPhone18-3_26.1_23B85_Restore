@interface NPKPaymentProvisioningFlowControllerWelcomeStepContext
- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithRequestContext:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerWelcomeStepContext

- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerWelcomeStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerWelcomeStepContext *)self heroImages];
  v6 = [v3 stringWithFormat:@"<%@ images %@>", v4, v5];

  return v6;
}

- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerWelcomeStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"heroImages"];
    heroImages = v5->_heroImages;
    v5->_heroImages = v9;

    v5->_defaultImagesUsed = [v4 decodeBoolForKey:@"defaultImagesUsed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerWelcomeStepContext;
  v4 = a3;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_heroImages forKey:{@"heroImages", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_defaultImagesUsed forKey:@"defaultImagesUsed"];
}

@end