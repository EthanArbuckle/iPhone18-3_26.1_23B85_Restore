@interface NPKPaymentProvisioningFlowControllerWelcomeStepContext
- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithRequestContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowControllerWelcomeStepContext

- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerWelcomeStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  heroImages = [(NPKPaymentProvisioningFlowControllerWelcomeStepContext *)self heroImages];
  v6 = [v3 stringWithFormat:@"<%@ images %@>", _baseFlowStepDescription, heroImages];

  return v6;
}

- (NPKPaymentProvisioningFlowControllerWelcomeStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowControllerWelcomeStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"heroImages"];
    heroImages = v5->_heroImages;
    v5->_heroImages = v9;

    v5->_defaultImagesUsed = [coderCopy decodeBoolForKey:@"defaultImagesUsed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NPKPaymentProvisioningFlowControllerWelcomeStepContext;
  coderCopy = coder;
  [(NPKPaymentProvisioningFlowStepContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_heroImages forKey:{@"heroImages", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_defaultImagesUsed forKey:@"defaultImagesUsed"];
}

@end