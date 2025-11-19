@interface FMSystemInfo_osx
- (id)deviceModelName;
- (id)deviceUDID;
- (id)osVersion;
- (id)productName;
- (id)productType;
@end

@implementation FMSystemInfo_osx

- (id)productType
{
  v2 = productType__productType;
  if (!productType__productType)
  {
    size = 0;
    sysctlbyname("hw.model", 0, &size, 0, 0);
    v3 = malloc_type_malloc(size, 0x60F3C5FEuLL);
    sysctlbyname("hw.model", v3, &size, 0, 0);
    if (v3)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:4];
      v5 = productType__productType;
      productType__productType = v4;
    }

    free(v3);
    v2 = productType__productType;
  }

  return v2;
}

- (id)productName
{
  if (productName_onceToken_0 != -1)
  {
    [FMSystemInfo_osx productName];
  }

  v3 = productName__value_0;

  return v3;
}

- (id)deviceUDID
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = deviceUDID__deviceUDID;
  if (!deviceUDID__deviceUDID)
  {
    memset(v9, 0, sizeof(v9));
    v8 = xmmword_24A307560;
    if (gethostuuid(v9, &v8))
    {
      v3 = LogCategory_Unspecified();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [(FMSystemInfo_osx *)v3 deviceUDID];
      }
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v9 length:16];
      v4 = [v3 fm_hexString];
      v5 = deviceUDID__deviceUDID;
      deviceUDID__deviceUDID = v4;
    }

    v2 = deviceUDID__deviceUDID;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)osVersion
{
  v2 = osVersion__osVersion;
  if (!osVersion__osVersion)
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = v3;
    if (v3)
    {
      [v3 operatingSystemVersion];
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu", 0, 0, v8];
    v6 = osVersion__osVersion;
    osVersion__osVersion = v5;

    v2 = osVersion__osVersion;
  }

  return v2;
}

- (id)deviceModelName
{
  v3 = deviceModelName__deviceModelName;
  if (!deviceModelName__deviceModelName)
  {
    v4 = [(FMSystemInfo_osx *)self productType];
    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"0123456789, "}];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = deviceModelName__deviceModelName;
    deviceModelName__deviceModelName = v6;

    v3 = deviceModelName__deviceModelName;
  }

  return v3;
}

@end