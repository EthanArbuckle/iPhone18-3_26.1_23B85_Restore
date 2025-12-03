@interface GestaltHlprMobileActivation
+ (id)getSharedInstance;
- (BOOL)getBoolAnswer:(__CFString *)answer;
- (id)copyAnswer:(__CFString *)answer;
- (id)copyDeviceIDInfo:(id *)info;
- (id)copyDeviceInfo:(id *)info;
- (id)copyRegulatoryImagesInfo:(id *)info;
- (void)addAGestaltKey:(__CFString *)key toDictionary:(id)dictionary required:(BOOL)required errors:(id)errors;
- (void)updateRecertInfo:(id)info errors:(id *)errors;
@end

@implementation GestaltHlprMobileActivation

+ (id)getSharedInstance
{
  if (getSharedInstance_once != -1)
  {
    +[GestaltHlprMobileActivation getSharedInstance];
  }

  v3 = getSharedInstance_sharedInstance;

  return v3;
}

void __48__GestaltHlprMobileActivation_getSharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = getSharedInstance_sharedInstance;
  getSharedInstance_sharedInstance = v0;
}

- (id)copyAnswer:(__CFString *)answer
{
  if (!answer)
  {
    return 0;
  }

  v4 = MGCopyAnswer();
  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_allows_internal_security_policies() && is_virtual_machine())
  {
    if (([(__CFString *)answer isEqualToString:@"ProductType"]& 1) != 0)
    {
      v5 = @"iPod5,1";
LABEL_9:

      return v5;
    }

    if ([(__CFString *)answer isEqualToString:@"DeviceClass"])
    {
      v5 = @"iPod";
      goto LABEL_9;
    }
  }

  return v4;
}

- (BOOL)getBoolAnswer:(__CFString *)answer
{
  v3 = [(GestaltHlprMobileActivation *)self copyAnswer:answer];
  v4 = isNSNumber(v3);

  LOBYTE(v3) = [v4 BOOLValue];
  return v3;
}

- (void)addAGestaltKey:(__CFString *)key toDictionary:(id)dictionary required:(BOOL)required errors:(id)errors
{
  requiredCopy = required;
  dictionaryCopy = dictionary;
  errorsCopy = errors;
  v12 = [(GestaltHlprMobileActivation *)self copyAnswer:key];
  v13 = v12;
  if (v12 && ((v14 = isNSString(v12)) == 0 || (v15 = v14, v16 = [v13 length], v15, v16)))
  {
    [dictionaryCopy setObject:v13 forKeyedSubscript:key];
  }

  else if (requiredCopy)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to query required gestalt key: %@", key];
    [errorsCopy addObject:v17];
  }
}

- (id)copyDeviceIDInfo:(id *)info
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"SerialNumber" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (info && v7)
  {
    v8 = v5;
    *info = v5;
  }

  return v6;
}

- (id)copyDeviceInfo:(id *)info
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"DeviceClass" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"ProductType" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"BuildVersion" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"ModelNumber" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"ProductVersion" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"RegionCode" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"RegionInfo" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"RegulatoryModelNumber" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"ReleaseType" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"UniqueChipID" toDictionary:v6 required:1 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:0 errors:v5];
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"SigningFuse" toDictionary:v6 required:0 errors:v5];
  v7 = [(GestaltHlprMobileActivation *)self copyAnswer:@"ProductName"];
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
  if (info && v9)
  {
    v10 = v5;
    *info = v5;
  }

  return v6;
}

- (id)copyRegulatoryImagesInfo:(id *)info
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(GestaltHlprMobileActivation *)self addAGestaltKey:@"DeviceVariant" toDictionary:v6 required:1 errors:v5];
  v7 = [v5 count];
  if (info && v7)
  {
    v8 = v5;
    *info = v5;
  }

  return v6;
}

- (void)updateRecertInfo:(id)info errors:(id *)errors
{
  infoCopy = info;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (infoCopy)
  {
    [(GestaltHlprMobileActivation *)self addAGestaltKey:@"SerialNumber" toDictionary:infoCopy required:0 errors:v7];
    [(GestaltHlprMobileActivation *)self addAGestaltKey:@"DeviceClass" toDictionary:infoCopy required:1 errors:v7];
    [(GestaltHlprMobileActivation *)self addAGestaltKey:@"ProductType" toDictionary:infoCopy required:1 errors:v7];
    [(GestaltHlprMobileActivation *)self addAGestaltKey:@"BuildVersion" toDictionary:infoCopy required:0 errors:v7];
    [(GestaltHlprMobileActivation *)self addAGestaltKey:@"UniqueDeviceID" toDictionary:infoCopy required:0 errors:v7];
    if ([(GestaltHlprMobileActivation *)self getBoolAnswer:@"HasBaseband"])
    {
      [(GestaltHlprMobileActivation *)self addAGestaltKey:@"InternationalMobileEquipmentIdentity" toDictionary:infoCopy required:0 errors:v7];
      v8 = [(GestaltHlprMobileActivation *)self copyAnswer:@"xRyzf9zFE/ycr/wJPweZvQ"];
      if (v8)
      {
        [infoCopy setObject:v8 forKeyedSubscript:@"InternationalMobileEquipmentIdentity2"];
      }

      [(GestaltHlprMobileActivation *)self addAGestaltKey:@"MobileEquipmentIdentifier" toDictionary:infoCopy required:0 errors:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v7 count];
    if (errors && v9)
    {
      v10 = v7;
      *errors = v7;
    }
  }

  else
  {
    v8 = 0;
  }
}

@end