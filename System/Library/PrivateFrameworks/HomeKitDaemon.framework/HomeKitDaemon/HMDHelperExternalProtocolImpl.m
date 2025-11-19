@interface HMDHelperExternalProtocolImpl
- (HMDHelperExternalProtocolImpl)init;
- (id)createAFSecurityConnection;
@end

@implementation HMDHelperExternalProtocolImpl

- (id)createAFSecurityConnection
{
  v2 = objc_alloc_init(MEMORY[0x277CEF388]);

  return v2;
}

- (HMDHelperExternalProtocolImpl)init
{
  v3.receiver = self;
  v3.super_class = HMDHelperExternalProtocolImpl;
  return [(HMDHelperExternalProtocolImpl *)&v3 init];
}

@end