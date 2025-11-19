@interface DAAdapterAccessory
+ (id)accessoryWithIdentifier:(id)a3 attributes:(id)a4;
- (DAAdapterAccessory)initWithIdentifier:(id)a3 attributes:(id)a4;
- (id)modelNumber;
- (id)serialNumber;
@end

@implementation DAAdapterAccessory

+ (id)accessoryWithIdentifier:(id)a3 attributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 attributes:v6];

  return v8;
}

- (DAAdapterAccessory)initWithIdentifier:(id)a3 attributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = DAAdapterAccessory;
  v9 = [(DAAdapterAccessory *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_attributes, a4);
    if ([v7 isEqualToString:@"Accessory.SmartBatteryCase"])
    {
      v11 = [(DAAdapterAccessory *)v10 attributes];
      v12 = [v11 objectForKeyedSubscript:@"name"];
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
      if ([v7 isEqualToString:@"Accessory.SmartKeyboard"])
      {
        v14 = v10->_name;
        v15 = @"Smart Keyboard";
        goto LABEL_9;
      }

      if ([v7 isEqualToString:@"Accessory.ApplePencil"])
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
  v2 = [(DAAdapterAccessory *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"serialNumber"];

  return v3;
}

- (id)modelNumber
{
  v2 = [(DAAdapterAccessory *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"modelNumber"];

  return v3;
}

@end