@interface PKProvisioningRequirementsContainer
- (PKProvisioningRequirementsContainer)initWithCoder:(id)a3;
- (PKProvisioningRequirementsContainer)initWithContainer:(id)a3;
- (id)requirementsByRemovingRequirements:(id)a3;
@end

@implementation PKProvisioningRequirementsContainer

- (PKProvisioningRequirementsContainer)initWithContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKProvisioningRequirementsContainer;
  v6 = [(PKProvisioningRequirementsContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
  }

  return v7;
}

- (id)requirementsByRemovingRequirements:(id)a3
{
  v3 = [self->_container containerMinus:*(a3 + 1)];
  v4 = [[PKProvisioningRequirementsContainer alloc] initWithContainer:v3];

  return v4;
}

- (PKProvisioningRequirementsContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKProvisioningRequirementsContainer;
  v5 = [(PKProvisioningRequirementsContainer *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    container = v5->_container;
    v5->_container = v6;
  }

  return v5;
}

@end