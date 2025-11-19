@interface EFDevice
+ (EFDevice)currentDevice;
+ (OS_os_log)log;
+ (void)setCurrentDevice:(id)a3;
- (BOOL)isPad;
- (BOOL)isPhone;
- (BOOL)isRealityDevice;
- (BOOL)isRunningNative;
- (BOOL)isVirtualMachine;
- (BOOL)supportsGenerativeModelSystems;
- (NSUUID)identifier;
- (id)_init;
@end

@implementation EFDevice

+ (EFDevice)currentDevice
{
  if (currentDeviceOnceToken != -1)
  {
    +[EFDevice currentDevice];
  }

  v3 = sCurrentDevice;

  return v3;
}

void __25__EFDevice_currentDevice__block_invoke()
{
  v0 = [[EFDevice alloc] _init];
  v1 = sCurrentDevice;
  sCurrentDevice = v0;
}

- (id)_init
{
  v4.receiver = self;
  v4.super_class = EFDevice;
  v2 = [(EFDevice *)&v4 init];
  if (v2)
  {
    [(EFDevice *)v2 setIsInternal:os_variant_has_internal_diagnostics()];
    [(EFDevice *)v2 setAreInternalSecurityPoliciesAllowed:os_variant_allows_internal_security_policies()];
  }

  return v2;
}

- (BOOL)supportsGenerativeModelSystems
{
  if (supportsGenerativeModelSystems_onceToken != -1)
  {
    [EFDevice supportsGenerativeModelSystems];
  }

  return supportsGenerativeModelSystems_supportsGenerativeModelSystems;
}

uint64_t __42__EFDevice_supportsGenerativeModelSystems__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsGenerativeModelSystems_supportsGenerativeModelSystems = result;
  return result;
}

- (BOOL)isPhone
{
  if (isPhone_onceToken != -1)
  {
    [EFDevice isPhone];
  }

  return isPhone_isPhone;
}

void __19__EFDevice_isPhone__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      isPhone_isPhone = 1;
    }

    CFRelease(v1);
  }
}

- (BOOL)isPad
{
  if (isPad_onceToken != -1)
  {
    [EFDevice isPad];
  }

  return isPad_isPad;
}

void __17__EFDevice_isPad__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPad"))
    {
      isPad_isPad = 1;
    }

    CFRelease(v1);
  }
}

- (NSUUID)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.mail"];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"group.com.apple.mail"];
    }

    else
    {
      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    v7 = v6;
    v8 = [v6 stringForKey:@"DeviceIdentifier"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
      v10 = self->_identifier;
      self->_identifier = v9;
    }

    if (!self->_identifier)
    {
      v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v12 = self->_identifier;
      self->_identifier = v11;

      v13 = [(NSUUID *)self->_identifier UUIDString];
      [v7 setObject:v13 forKey:@"DeviceIdentifier"];
    }

    identifier = self->_identifier;
  }

  return identifier;
}

void __27__EFDevice_isRealityDevice__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"RealityDevice"))
    {
      isRealityDevice_isRealityDevice = 1;
    }

    CFRelease(v1);
  }
}

- (BOOL)isRealityDevice
{
  if (isRealityDevice_onceToken != -1)
  {
    [EFDevice isRealityDevice];
  }

  return isRealityDevice_isRealityDevice;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__EFDevice_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __15__EFDevice_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

+ (void)setCurrentDevice:(id)a3
{
  v4 = a3;
  if (currentDeviceOnceToken == -1)
  {
    if (v4)
    {
LABEL_3:
      v5 = v4;
      objc_storeStrong(&sCurrentDevice, a3);
      v4 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = v4;
    +[EFDevice setCurrentDevice:];
    v4 = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  currentDeviceOnceToken = 0;
LABEL_6:
}

- (BOOL)isRunningNative
{
  v5 = 0;
  v4 = 4;
  if (sysctlbyname("sysctl.proc_native", &v5, &v4, 0, 0) == -1)
  {
    return *__error() == 2;
  }

  else
  {
    return v5 == 1;
  }
}

- (BOOL)isVirtualMachine
{
  if (isVirtualMachine_onceToken != -1)
  {
    [EFDevice isVirtualMachine];
  }

  return isVirtualMachine_result;
}

uint64_t __28__EFDevice_isVirtualMachine__block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    isVirtualMachine_result = v2 != 0;
  }

  return result;
}

@end