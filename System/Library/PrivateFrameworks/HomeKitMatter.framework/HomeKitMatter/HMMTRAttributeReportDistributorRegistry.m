@interface HMMTRAttributeReportDistributorRegistry
- (HMMTRAttributeReportDistributorRegistry)initWithQueue:(id)a3 receiver:(id)a4;
@end

@implementation HMMTRAttributeReportDistributorRegistry

- (HMMTRAttributeReportDistributorRegistry)initWithQueue:(id)a3 receiver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMMTRAttributeReportDistributorRegistry;
  v9 = [(HMMTRAttributeReportDistributorRegistry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = MEMORY[0x2318887D0](v8);
    receiver = v10->_receiver;
    v10->_receiver = v11;
  }

  return v10;
}

@end