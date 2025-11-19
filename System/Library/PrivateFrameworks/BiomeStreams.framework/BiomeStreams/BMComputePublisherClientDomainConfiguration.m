@interface BMComputePublisherClientDomainConfiguration
- (BMComputePublisherClientDomainConfiguration)initWithDomain:(unint64_t)a3;
@end

@implementation BMComputePublisherClientDomainConfiguration

- (BMComputePublisherClientDomainConfiguration)initWithDomain:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = BMComputePublisherClientDomainConfiguration;
  v4 = [(BMComputePublisherClientDomainConfiguration *)&v13 init];
  if (v4)
  {
    v5 = *MEMORY[0x1E698E8D0];
    v6 = +[BMDaemon systemComputePublisherStreamName];
    v7 = +[BMDaemon biomedLaunchNotification];
    machServiceName = v4->_machServiceName;
    v4->_domain = a3;
    v4->_machServiceName = v5;

    XPCPublisherStreamName = v4->_XPCPublisherStreamName;
    v4->_XPCPublisherStreamName = v6;
    v10 = v6;

    biomeLaunchNotification = v4->_biomeLaunchNotification;
    v4->_biomeLaunchNotification = v7;
  }

  return v4;
}

@end