@interface DSIODeviceIdentifier
+ (id)identifierForAccessoryModel:(unint64_t)model;
+ (id)identifierForIOHIDDevice:(__IOHIDDevice *)device;
- (DSIODeviceIdentifier)initWithAccessoryModel:(unint64_t)model usagePage:(unsigned int)page usage:(unsigned int)usage vendorID:(unsigned int)d productID:(unsigned int)iD;
@end

@implementation DSIODeviceIdentifier

- (DSIODeviceIdentifier)initWithAccessoryModel:(unint64_t)model usagePage:(unsigned int)page usage:(unsigned int)usage vendorID:(unsigned int)d productID:(unsigned int)iD
{
  v13.receiver = self;
  v13.super_class = DSIODeviceIdentifier;
  result = [(DSIODeviceIdentifier *)&v13 init];
  if (result)
  {
    result->_accessoryModel = model;
    result->_usagePage = page;
    result->_usage = usage;
    result->_vendorID = d;
    result->_productID = iD;
  }

  return result;
}

+ (id)identifierForAccessoryModel:(unint64_t)model
{
  switch(model)
  {
    case 0uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 0;
      v7 = 133;
      v8 = 46;
      v9 = 1452;
      v10 = 5013;
      goto LABEL_25;
    case 1uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 1;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 5016;
      goto LABEL_25;
    case 2uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 2;
      v7 = 133;
      v8 = 46;
      v9 = 1452;
      v10 = 5017;
      goto LABEL_25;
    case 3uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 3;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 546;
      goto LABEL_25;
    case 4uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 4;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 332;
      goto LABEL_25;
    case 5uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 5;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 482;
      goto LABEL_25;
    case 6uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 6;
      v7 = 65280;
      v8 = 11;
      v9 = 76;
      v10 = 1106;
      goto LABEL_25;
    case 7uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 7;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 616;
      goto LABEL_25;
    case 8uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 8;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 618;
      goto LABEL_25;
    case 9uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 9;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 619;
      goto LABEL_25;
    case 0xAuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 10;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 658;
      goto LABEL_25;
    case 0xBuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 11;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 659;
      goto LABEL_25;
    case 0xCuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 12;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 622;
      goto LABEL_25;
    case 0xDuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 13;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 623;
      goto LABEL_25;
    case 0xEuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 14;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1105;
      goto LABEL_25;
    case 0xFuLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 15;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1104;
      goto LABEL_25;
    case 0x10uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 16;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1108;
      goto LABEL_25;
    case 0x11uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 17;
      v7 = 65280;
      v8 = 11;
      v9 = 1452;
      v10 = 1109;
      goto LABEL_25;
    case 0x12uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 18;
      v7 = 65309;
      v8 = 45;
      v9 = 0;
      v10 = 0;
      goto LABEL_25;
    case 0x13uLL:
      v5 = [DSIODeviceIdentifier alloc];
      v6 = 19;
      v7 = 65280;
      v8 = 88;
      v9 = 1452;
      v10 = 30723;
LABEL_25:
      v11 = [(DSIODeviceIdentifier *)v5 initWithAccessoryModel:v6 usagePage:v7 usage:v8 vendorID:v9 productID:v10, v3];

      break;
    default:
      v11 = 0;

      break;
  }

  return v11;
}

+ (id)identifierForIOHIDDevice:(__IOHIDDevice *)device
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = IOHIDDeviceGetProperty(device, @"DeviceUsagePairs");
  v24 = IOHIDDeviceGetProperty(device, @"VendorID");
  IOHIDDeviceGetProperty(device, @"ProductID");
  v23 = v22 = v4;
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v27 = v6;
    v28 = v6;
    v25 = v6;
    v26 = v6;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"DeviceUsagePage"];
          v14 = [v12 objectForKeyedSubscript:@"DeviceUsage"];
          v15 = [DSIODeviceIdentifier identifierForAccessoryModel:v5];
          usagePage = [v15 usagePage];
          if (usagePage == [v13 unsignedIntValue])
          {
            usage = [v15 usage];
            if (usage == [v14 unsignedIntValue])
            {
              vendorID = [v15 vendorID];
              if (vendorID == [v24 unsignedIntValue])
              {
                productID = [v15 productID];
                if (productID == [v23 unsignedIntValue])
                {

                  goto LABEL_16;
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    ++v5;
    v4 = v22;
    v6 = 0uLL;
  }

  while (v5 != 20);
  v15 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

@end