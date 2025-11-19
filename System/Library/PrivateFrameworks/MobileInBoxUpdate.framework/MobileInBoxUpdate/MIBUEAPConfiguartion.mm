@interface MIBUEAPConfiguartion
- (MIBUEAPConfiguartion)init;
@end

@implementation MIBUEAPConfiguartion

- (MIBUEAPConfiguartion)init
{
  v6.receiver = self;
  v6.super_class = MIBUEAPConfiguartion;
  v2 = [(MIBUEAPConfiguartion *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_tlsKey = 0;
    v4 = objc_opt_new();
    [(MIBUEAPConfiguartion *)v3 setTlsCertificateChain:v4];
  }

  return v3;
}

@end