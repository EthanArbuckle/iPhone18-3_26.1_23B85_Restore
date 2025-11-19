@interface CBSDeviceInformationField
+ (id)fieldWithFormat:(unint64_t)a3 value:(id)a4;
- (CBSDeviceInformationField)initWithFormat:(unint64_t)a3 value:(id)a4;
- (NSArray)formattedValuesArray;
- (NSString)formattedTitle;
- (NSString)formattedValue;
- (id)_formattedIMEI:(id)a3;
@end

@implementation CBSDeviceInformationField

+ (id)fieldWithFormat:(unint64_t)a3 value:(id)a4
{
  v5 = a4;
  v6 = [[CBSDeviceInformationField alloc] initWithFormat:a3 value:v5];

  return v6;
}

- (CBSDeviceInformationField)initWithFormat:(unint64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CBSDeviceInformationField;
  v8 = [(CBSDeviceInformationField *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_format = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (NSString)formattedTitle
{
  v2 = [(CBSDeviceInformationField *)self format];
  if (v2 == 2)
  {
    v4 = @"IMEI";
  }

  else if (v2 == 1)
  {
    v4 = @"MEID";
  }

  else if (v2)
  {
    v4 = @"ID";
  }

  else
  {
    v3 = +[FrameworkBundleHelper getBundle];
    v4 = [v3 localizedStringForKey:@"SERIAL_NUMBER" value:&stru_285621EC8 table:0];
  }

  return v4;
}

- (NSString)formattedValue
{
  v3 = [(CBSDeviceInformationField *)self format];
  v4 = [(CBSDeviceInformationField *)self value];
  if (v3 == 2)
  {
    v5 = [(CBSDeviceInformationField *)self _formattedIMEI:v4];

    v4 = v5;
  }

  return v4;
}

- (id)_formattedIMEI:(id)a3
{
  v3 = [a3 mutableCopy];
  if ([v3 length] >= 3)
  {
    [v3 insertString:@" " atIndex:2];
  }

  if ([v3 length] >= 0xA)
  {
    [v3 insertString:@" " atIndex:9];
  }

  if ([v3 length] >= 0x11)
  {
    [v3 insertString:@" " atIndex:16];
  }

  return v3;
}

- (NSArray)formattedValuesArray
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CBSDeviceInformationField *)self value];
  v5 = [v4 componentsSeparatedByString:@""];;

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(CBSDeviceInformationField *)self _formattedIMEI:*(*(&v13 + 1) + 8 * i)];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end