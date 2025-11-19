@interface CCUIContentModulePresentationContext
+ (id)defaultAlertPresentationContext;
+ (id)defaultControlCenterPresentationContext;
+ (id)defaultControlCenterPresentationContextProtectingSensitiveUI;
- (CCUIContentModulePresentationContext)initWithEnvironment:(int64_t)a3;
@end

@implementation CCUIContentModulePresentationContext

+ (id)defaultControlCenterPresentationContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CCUIContentModulePresentationContext_defaultControlCenterPresentationContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultControlCenterPresentationContext_onceToken != -1)
  {
    dispatch_once(&defaultControlCenterPresentationContext_onceToken, block);
  }

  v2 = defaultControlCenterPresentationContext_defaultControlCenterPresentationContext;

  return v2;
}

uint64_t __79__CCUIContentModulePresentationContext_defaultControlCenterPresentationContext__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithEnvironment:0];
  v2 = defaultControlCenterPresentationContext_defaultControlCenterPresentationContext;
  defaultControlCenterPresentationContext_defaultControlCenterPresentationContext = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)defaultControlCenterPresentationContextProtectingSensitiveUI
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__CCUIContentModulePresentationContext_defaultControlCenterPresentationContextProtectingSensitiveUI__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultControlCenterPresentationContextProtectingSensitiveUI_onceToken != -1)
  {
    dispatch_once(&defaultControlCenterPresentationContextProtectingSensitiveUI_onceToken, block);
  }

  v2 = defaultControlCenterPresentationContextProtectingSensitiveUI_defaultControlCenterPresentationContextProtectingSensitiveUI;

  return v2;
}

uint64_t __100__CCUIContentModulePresentationContext_defaultControlCenterPresentationContextProtectingSensitiveUI__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithEnvironment:1];
  v2 = defaultControlCenterPresentationContextProtectingSensitiveUI_defaultControlCenterPresentationContextProtectingSensitiveUI;
  defaultControlCenterPresentationContextProtectingSensitiveUI_defaultControlCenterPresentationContextProtectingSensitiveUI = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)defaultAlertPresentationContext
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CCUIContentModulePresentationContext_defaultAlertPresentationContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultAlertPresentationContext_onceToken[0] != -1)
  {
    dispatch_once(defaultAlertPresentationContext_onceToken, block);
  }

  v2 = defaultAlertPresentationContext_defaultTransientOverlayPresentationContext;

  return v2;
}

uint64_t __71__CCUIContentModulePresentationContext_defaultAlertPresentationContext__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithEnvironment:2];
  v2 = defaultAlertPresentationContext_defaultTransientOverlayPresentationContext;
  defaultAlertPresentationContext_defaultTransientOverlayPresentationContext = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (CCUIContentModulePresentationContext)initWithEnvironment:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CCUIContentModulePresentationContext;
  result = [(CCUIContentModulePresentationContext *)&v5 init];
  if (result)
  {
    result->_environment = a3;
  }

  return result;
}

@end