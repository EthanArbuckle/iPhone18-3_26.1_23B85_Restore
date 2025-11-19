@interface FIAllTagsNode
+ (int)colorForTagName:(id)a3;
+ (void)setCurrentTagsColorMappings:(id)a3;
@end

@implementation FIAllTagsNode

+ (int)colorForTagName:(id)a3
{
  v3 = a3;
  v8.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v8, v3);

  v5 = TFSInfo::LabelColorForTagName(&v8, v4);
  v6 = v5 & (v5 << 15 >> 31);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);

  return v6;
}

+ (void)setCurrentTagsColorMappings:(id)a3
{
  v3 = Copy<NSMutableArray<FILocalAppContainerNode *>>(a3);
  TFSInfo::SetUserTagsMap(v3);
}

@end