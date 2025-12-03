@interface PKProvisioningRequirementsContainer
- (PKProvisioningRequirementsContainer)initWithCoder:(id)coder;
- (PKProvisioningRequirementsContainer)initWithContainer:(id)container;
- (id)requirementsByRemovingRequirements:(id)requirements;
@end

@implementation PKProvisioningRequirementsContainer

- (PKProvisioningRequirementsContainer)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = PKProvisioningRequirementsContainer;
  v6 = [(PKProvisioningRequirementsContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
  }

  return v7;
}

- (id)requirementsByRemovingRequirements:(id)requirements
{
  v3 = [self->_container containerMinus:*(requirements + 1)];
  v4 = [[PKProvisioningRequirementsContainer alloc] initWithContainer:v3];

  return v4;
}

- (PKProvisioningRequirementsContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKProvisioningRequirementsContainer;
  v5 = [(PKProvisioningRequirementsContainer *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

@end