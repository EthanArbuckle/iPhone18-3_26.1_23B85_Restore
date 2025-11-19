@interface IMNicknameProvider
- (IMNicknameProvider)init;
@end

@implementation IMNicknameProvider

- (IMNicknameProvider)init
{
  v6.receiver = self;
  v6.super_class = IMNicknameProvider;
  v2 = [(IMNicknameProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IMNicknameProvider_Impl);
    swiftImpl = v2->_swiftImpl;
    v2->_swiftImpl = v3;
  }

  return v2;
}

@end