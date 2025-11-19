@interface HMHearingAidManufacturerAddressViewController
- (id)getManufactureAddress;
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation HMHearingAidManufacturerAddressViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HMHearingAidManufacturerAddressViewController;
  [(HMHearingAidManufacturerAddressViewController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D3FAD8];
  v5 = [(HMHearingAidManufacturerAddressViewController *)self getManufactureAddress];
  v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  [v3 addObject:v6];
  v7 = *MEMORY[0x277D3FC48];
  v8 = *(&self->super.super.super.super.super.isa + v7);
  *(&self->super.super.super.super.super.isa + v7) = v3;
  v9 = v3;

  v10 = *(&self->super.super.super.super.super.isa + v7);
  v11 = v10;

  return v10;
}

- (id)getManufactureAddress
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Apple Inc.\nOne Apple Park Way\nCupertino value:CA 95014 table:{United States", &stru_28643BDD8, 0}];

  return v3;
}

@end