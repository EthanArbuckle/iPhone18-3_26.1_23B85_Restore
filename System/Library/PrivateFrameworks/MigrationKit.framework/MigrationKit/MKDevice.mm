@interface MKDevice
- (MKDevice)init;
@end

@implementation MKDevice

- (MKDevice)init
{
  v35 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = MKDevice;
  v2 = [(MKDevice *)&v33 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_286AAD350];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    if (userInterfaceIdiom)
    {
      if (userInterfaceIdiom != 1)
      {
        goto LABEL_13;
      }

      v6 = +[_TtC12MigrationKit5Model humanReadableName];
      if ([v6 containsString:@"Pro"])
      {
        v7 = 167;
      }

      else
      {
        v7 = 152;
      }
    }

    else
    {
      v6 = +[_TtC12MigrationKit5Model humanReadableName];
      if ([v4 containsObject:v6])
      {
        v7 = 120;
      }

      else if ([v6 rangeOfString:@"SE"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 180;
      }

      else
      {
        v7 = 120;
      }
    }

    [(MKDevice *)v2 setIconSize:v7];

LABEL_13:
    systemName = [currentDevice systemName];
    [(MKDevice *)v2 setSystemName:systemName];

    systemVersion = [currentDevice systemVersion];
    [(MKDevice *)v2 setSystemVersion:systemVersion];

    name = [currentDevice name];
    [(MKDevice *)v2 setDeviceName:name];

    v11 = +[_TtC12MigrationKit5Model humanReadableName];
    [(MKDevice *)v2 setDeviceModel:v11];

    model = [currentDevice model];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [&unk_286AAD368 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v28 = v4;
      v15 = *v30;
      v16 = @"Unknown";
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(&unk_286AAD368);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if ([model rangeOfString:v18] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v18;
            goto LABEL_23;
          }
        }

        v14 = [&unk_286AAD368 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_23:
      v4 = v28;
    }

    else
    {
      v16 = @"Unknown";
    }

    [(MKDevice *)v2 setDeviceFamily:v16];
    v19 = [&unk_286AAD368 objectAtIndexedSubscript:0];
    v20 = [(__CFString *)v16 isEqualToString:v19];

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v22 = [&unk_286AAD368 objectAtIndexedSubscript:1];
      v23 = [(__CFString *)v16 isEqualToString:v22];

      if (v23)
      {
        v21 = 2;
      }

      else
      {
        v24 = [&unk_286AAD368 objectAtIndexedSubscript:2];
        v25 = [(__CFString *)v16 isEqualToString:v24];

        if (!v25)
        {
LABEL_32:

          goto LABEL_33;
        }

        v21 = 3;
      }
    }

    [(MKDevice *)v2 setType:v21];
    goto LABEL_32;
  }

LABEL_33:
  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

@end