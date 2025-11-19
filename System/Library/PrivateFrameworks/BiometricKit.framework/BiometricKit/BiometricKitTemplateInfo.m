@interface BiometricKitTemplateInfo
- (BiometricKitTemplateInfo)init;
- (void)dealloc;
@end

@implementation BiometricKitTemplateInfo

- (BiometricKitTemplateInfo)init
{
  v7.receiver = self;
  v7.super_class = BiometricKitTemplateInfo;
  v2 = [(BiometricKitTemplateInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    topology = v2->_topology;
    v2->_topology = 0;

    details = v3->_details;
    v3->_details = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(BiometricKitTemplateInfo *)self setTopology:0];
  [(BiometricKitTemplateInfo *)self setDetails:0];
  v3.receiver = self;
  v3.super_class = BiometricKitTemplateInfo;
  [(BiometricKitTemplateInfo *)&v3 dealloc];
}

@end