@interface NSBundle(ControlCenterUIPrototyping)
- (uint64_t)ccui_prototypeModuleSize;
@end

@implementation NSBundle(ControlCenterUIPrototyping)

- (uint64_t)ccui_prototypeModuleSize
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary bs_safeDictionaryForKey:@"_CCModuleSizePROTOTYPE"];

  if (v2)
  {
    v3 = CCUIMakeLayoutSizeFromDictionary(v2, 1);
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

@end