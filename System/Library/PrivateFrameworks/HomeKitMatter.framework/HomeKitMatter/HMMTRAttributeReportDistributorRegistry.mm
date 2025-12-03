@interface HMMTRAttributeReportDistributorRegistry
- (HMMTRAttributeReportDistributorRegistry)initWithQueue:(id)queue receiver:(id)receiver;
@end

@implementation HMMTRAttributeReportDistributorRegistry

- (HMMTRAttributeReportDistributorRegistry)initWithQueue:(id)queue receiver:(id)receiver
{
  queueCopy = queue;
  receiverCopy = receiver;
  v14.receiver = self;
  v14.super_class = HMMTRAttributeReportDistributorRegistry;
  v9 = [(HMMTRAttributeReportDistributorRegistry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = MEMORY[0x2318887D0](receiverCopy);
    receiver = v10->_receiver;
    v10->_receiver = v11;
  }

  return v10;
}

@end