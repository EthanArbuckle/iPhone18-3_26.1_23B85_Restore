@interface FIAllTagsNode
+ (int)colorForTagName:(id)name;
+ (void)setCurrentTagsColorMappings:(id)mappings;
@end

@implementation FIAllTagsNode

+ (int)colorForTagName:(id)name
{
  nameCopy = name;
  v8.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v8, nameCopy);

  v5 = TFSInfo::LabelColorForTagName(&v8, v4);
  v6 = v5 & (v5 << 15 >> 31);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);

  return v6;
}

+ (void)setCurrentTagsColorMappings:(id)mappings
{
  v3 = Copy<NSMutableArray<FILocalAppContainerNode *>>(mappings);
  TFSInfo::SetUserTagsMap(v3);
}

@end