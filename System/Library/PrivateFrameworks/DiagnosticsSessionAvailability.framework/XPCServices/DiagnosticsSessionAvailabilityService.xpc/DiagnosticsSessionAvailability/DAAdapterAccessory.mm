@interface DAAdapterAccessory
+ (id)accessoryWithIdentifier:(id)identifier attributes:(id)attributes;
- (DAAdapterAccessory)initWithIdentifier:(id)identifier attributes:(id)attributes;
- (id)modelNumber;
- (id)serialNumber;
@end

@implementation DAAdapterAccessory

+ (id)accessoryWithIdentifier:(id)identifier attributes:(id)attributes
{
  attributesCopy = attributes;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy attributes:attributesCopy];

  return v8;
}

- (DAAdapterAccessory)initWithIdentifier:(id)identifier attributes:(id)attributes
{
  identifierCopy = identifier;
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = DAAdapterAccessory;
  v9 = [(DAAdapterAccessory *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_attributes, attributes);
    if ([identifierCopy isEqualToString:@"Accessory.SmartBatteryCase"])
    {
      attributes = [(DAAdapterAccessory *)v10 attributes];
      v12 = [attributes objectForKeyedSubscript:@"name"];
      name = v10->_name;
      v10->_name = v12;

      v14 = v10->_name;
      if (!v14)
      {
        v15 = @"Smart Battery Case";
LABEL_9:
        v10->_name = &v15->isa;
      }
    }

    else
    {
      if ([identifierCopy isEqualToString:@"Accessory.SmartKeyboard"])
      {
        v14 = v10->_name;
        v15 = @"Smart Keyboard";
        goto LABEL_9;
      }

      if ([identifierCopy isEqualToString:@"Accessory.ApplePencil"])
      {
        v14 = v10->_name;
        v15 = @"Apple Pencil";
        goto LABEL_9;
      }
    }
  }

  return v10;
}

- (id)serialNumber
{
  attributes = [(DAAdapterAccessory *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"serialNumber"];

  return v3;
}

- (id)modelNumber
{
  attributes = [(DAAdapterAccessory *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"modelNumber"];

  return v3;
}

@end