@interface PKPassUpgradePrecursorPassGenericReprovisionAction
- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithCoder:(id)coder;
- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithDictionary:(id)dictionary;
- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithSubtype:(unint64_t)subtype deviceProvisioningDataExpected:(BOOL)expected;
- (void)_dictionaryRepresentationInto:(id)into;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpgradePrecursorPassGenericReprovisionAction

- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v8 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"subtype"];
    v5->_subtype = PKPassUpgradePrecursorPassActionGenericReprovisionSubTypeFromString(v6);
    v5->_deviceProvisioningDataExpected = [dictionaryCopy PKBoolForKey:@"deviceProvisioningDataExpected"];
  }

  return v5;
}

- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithSubtype:(unint64_t)subtype deviceProvisioningDataExpected:(BOOL)expected
{
  v7.receiver = self;
  v7.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  result = [(PKPassUpgradePrecursorPassAction *)&v7 _initWithType:3];
  if (result)
  {
    result->_subtype = subtype;
    result->_deviceProvisioningDataExpected = expected;
  }

  return result;
}

- (void)_dictionaryRepresentationInto:(id)into
{
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  intoCopy = into;
  [(PKPassUpgradePrecursorPassAction *)&v8 _dictionaryRepresentationInto:intoCopy];
  v5 = self->_subtype - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D9DD8[v5];
  }

  [intoCopy setObject:v6 forKeyedSubscript:{@"subtype", v8.receiver, v8.super_class}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceProvisioningDataExpected];
  [intoCopy setObject:v7 forKeyedSubscript:@"deviceProvisioningDataExpected"];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  coderCopy = coder;
  [(PKPassUpgradePrecursorPassAction *)&v7 encodeWithCoder:coderCopy];
  v5 = self->_subtype - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D9DD8[v5];
  }

  [coderCopy encodeObject:v6 forKey:{@"subtype", v7.receiver, v7.super_class}];
  [coderCopy encodeBool:self->_deviceProvisioningDataExpected forKey:@"deviceProvisioningDataExpected"];
}

- (PKPassUpgradePrecursorPassGenericReprovisionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPassUpgradePrecursorPassGenericReprovisionAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v5->_subtype = PKPassUpgradePrecursorPassActionGenericReprovisionSubTypeFromString(v6);
    v5->_deviceProvisioningDataExpected = [coderCopy decodeBoolForKey:@"deviceProvisioningDataExpected"];
  }

  return v5;
}

@end