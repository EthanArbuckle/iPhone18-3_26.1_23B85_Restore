@interface HKOrganDonationBaseViewController
- (HKOrganDonationBaseViewController)initWithMedicalIDData:(id)data;
@end

@implementation HKOrganDonationBaseViewController

- (HKOrganDonationBaseViewController)initWithMedicalIDData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HKOrganDonationBaseViewController;
  v6 = [(HKTitledBuddyViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_medicalIDData, data);
  }

  return v7;
}

@end