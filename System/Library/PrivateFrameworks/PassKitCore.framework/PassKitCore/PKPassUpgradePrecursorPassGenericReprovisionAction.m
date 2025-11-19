@interface PKPassUpgradePrecursorPassGenericReprovisionAction
- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithCoder:(id)a3;
- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithDictionary:(id)a3;
- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithSubtype:(unint64_t)a3 deviceProvisioningDataExpected:(BOOL)a4;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradePrecursorPassGenericReprovisionAction

- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v8 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"subtype"];
    v5->_subtype = PKPassUpgradePrecursorPassActionGenericReprovisionSubTypeFromString(v6);
    v5->_deviceProvisioningDataExpected = [v4 PKBoolForKey:@"deviceProvisioningDataExpected"];
  }

  return v5;
}

- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithSubtype:(unint64_t)a3 deviceProvisioningDataExpected:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  result = [(PKPassUpgradePrecursorPassAction *)&v7 _initWithType:3];
  if (result)
  {
    result->_subtype = a3;
    result->_deviceProvisioningDataExpected = a4;
  }

  return result;
}

- (void)_dictionaryRepresentationInto:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v8 _dictionaryRepresentationInto:v4];
  v5 = self->_subtype - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D9DD8[v5];
  }

  [v4 setObject:v6 forKeyedSubscript:{@"subtype", v8.receiver, v8.super_class}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceProvisioningDataExpected];
  [v4 setObject:v7 forKeyedSubscript:@"deviceProvisioningDataExpected"];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v7 encodeWithCoder:v4];
  v5 = self->_subtype - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D9DD8[v5];
  }

  [v4 encodeObject:v6 forKey:{@"subtype", v7.receiver, v7.super_class}];
  [v4 encodeBool:self->_deviceProvisioningDataExpected forKey:@"deviceProvisioningDataExpected"];
}

- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v5->_subtype = PKPassUpgradePrecursorPassActionGenericReprovisionSubTypeFromString(v6);
    v5->_deviceProvisioningDataExpected = [v4 decodeBoolForKey:@"deviceProvisioningDataExpected"];
  }

  return v5;
}

@end