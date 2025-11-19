@interface HKOrganDonationBaseViewController
- (HKOrganDonationBaseViewController)initWithMedicalIDData:(id)a3;
@end

@implementation HKOrganDonationBaseViewController

- (HKOrganDonationBaseViewController)initWithMedicalIDData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKOrganDonationBaseViewController;
  v6 = [(HKTitledBuddyViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_medicalIDData, a3);
  }

  return v7;
}

@end