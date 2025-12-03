@interface UIViewController(DOCDeprecated)
- (uint64_t)doc_deprecated_interfaceOrientation;
- (void)doc_deprecated_interfaceOrientation;
@end

@implementation UIViewController(DOCDeprecated)

- (uint64_t)doc_deprecated_interfaceOrientation
{
  viewIfLoaded = [self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  if (screen && ([screen _isEmbeddedScreen] & 1) == 0)
  {
    [UIViewController(DOCDeprecated) doc_deprecated_interfaceOrientation];
  }

  interfaceOrientation = [self interfaceOrientation];

  return interfaceOrientation;
}

- (void)doc_deprecated_interfaceOrientation
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"on external monitors, decisions should not be made using interfaceOrientation (which is always Portrait)"];
  v1 = DOCLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 136315138;
    uTF8String = [v0 UTF8String];
    _os_log_fault_impl(&dword_249CE0000, v1, OS_LOG_TYPE_FAULT, "%s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end