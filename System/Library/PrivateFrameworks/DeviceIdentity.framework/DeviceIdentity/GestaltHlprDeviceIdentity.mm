@interface GestaltHlprDeviceIdentity
+ (id)getSharedInstance;
- (BOOL)getBoolAnswer:(__CFString *)a3;
- (id)copyAnswer:(__CFString *)a3;
- (id)copyDeviceIDInfo:(id *)a3;
- (id)copyDeviceInfo:(id *)a3;
- (id)copyRegulatoryImagesInfo:(id *)a3;
- (void)addAGestaltKey:(__CFString *)a3 toDictionary:(id)a4 required:(BOOL)a5 errors:(id)a6;
- (void)updateRecertInfo:(id)a3 errors:(id *)a4;
@end

@implementation GestaltHlprDeviceIdentity

+ (id)getSharedInstance
{
  if (getSharedInstance_once != -1)
  {
    +[GestaltHlprDeviceIdentity getSharedInstance];
  }

  v3 = getSharedInstance_sharedInstance;

  return v3;
}

uint64_t __46__GestaltHlprDeviceIdentity_getSharedInstance__block_invoke()
{
  getSharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)copyAnswer:(__CFString *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MGCopyAnswer();
  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_allows_internal_security_policies() && is_virtual_machine())
  {
    if (([(__CFString *)a3 isEqualToString:@"ProductType"]& 1) != 0)
    {
      v5 = @"iPod5,1";
LABEL_9:

      return v5;
    }

    if ([(__CFString *)a3 isEqualToString:@"DeviceClass"])
    {
      v5 = @"iPod";
      goto LABEL_9;
    }
  }

  return v4;
}

- (BOOL)getBoolAnswer:(__CFString *)a3
{
  v3 = [(GestaltHlprDeviceIdentity *)self copyAnswer:a3];
  v4 = isNSNumber(v3);

  LOBYTE(v3) = [v4 BOOLValue];
  return v3;
}

- (void)addAGestaltKey:(__CFString *)a3 toDictionary:(id)a4 required:(BOOL)a5 errors:(id)a6
{
  v7 = a5;
  v17 = a4;
  v10 = a6;
  v11 = [(GestaltHlprDeviceIdentity *)self copyAnswer:a3];
  v12 = v11;
  if (v11 && ((isNSString(v11), (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, v15 = [v12 length], v14, v15)))
  {
    [v17 setObject:v12 forKeyedSubscript:a3];
  }

  else if (v7)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to query required gestalt key: %@", a3];
    [v10 addObject:v16];
  }
}

- (id)copyDeviceIDInfo:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"SerialNumber" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (a3 && v7)
  {
    v8 = v5;
    *a3 = v5;
  }

  return v6;
}

- (id)copyDeviceInfo:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"DeviceClass" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"ProductType" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"BuildVersion" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"ModelNumber" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"ProductVersion" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"RegionCode" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"RegionInfo" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"RegulatoryModelNumber" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"ReleaseType" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"UniqueChipID" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"SigningFuse" toDictionary:v6 required:0 errors:v5];
  v7 = [(GestaltHlprDeviceIdentity *)self copyAnswer:@"ProductName"];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"OSType"];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to query required gestalt key: %@", @"ProductName"];
    [v5 addObject:v8];
  }

  v9 = [v5 count];
  if (a3 && v9)
  {
    v10 = v5;
    *a3 = v5;
  }

  return v6;
}

- (id)copyRegulatoryImagesInfo:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (a3 && v7)
  {
    v8 = v5;
    *a3 = v5;
  }

  return v6;
}

- (void)updateRecertInfo:(id)a3 errors:(id *)a4
{
  v11 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v6;
  if (v11)
  {
    [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"SerialNumber" toDictionary:v11 required:0 errors:v6];
    [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"DeviceClass" toDictionary:v11 required:1 errors:v7];
    [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"ProductType" toDictionary:v11 required:1 errors:v7];
    [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"BuildVersion" toDictionary:v11 required:0 errors:v7];
    [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:v11 required:0 errors:v7];
    if ([(GestaltHlprDeviceIdentity *)self getBoolAnswer:@"HasBaseband"])
    {
      [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"InternationalMobileEquipmentIdentity" toDictionary:v11 required:0 errors:v7];
      v8 = [(GestaltHlprDeviceIdentity *)self copyAnswer:@"xRyzf9zFE/ycr/wJPweZvQ"];
      if (v8)
      {
        [v11 setObject:v8 forKeyedSubscript:@"InternationalMobileEquipmentIdentity2"];
      }

      [(GestaltHlprDeviceIdentity *)self addAGestaltKey:@"MobileEquipmentIdentifier" toDictionary:v11 required:0 errors:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v7 count];
    if (a4 && v9)
    {
      v10 = v7;
      *a4 = v7;
    }
  }

  else
  {
    v8 = 0;
  }
}

@end