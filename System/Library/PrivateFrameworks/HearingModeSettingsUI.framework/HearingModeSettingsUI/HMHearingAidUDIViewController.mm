@interface HMHearingAidUDIViewController
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation HMHearingAidUDIViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HMHearingAidUDIViewController;
  [(HMHearingAidUDIViewController *)&v2 viewDidLoad];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D3FAD8];
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v6 = [v4 preferenceSpecifierNamed:userInfo target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v3 addObject:v6];

  v7 = *MEMORY[0x277D3FC48];
  v8 = *(&self->super.super.super.super.super.isa + v7);
  *(&self->super.super.super.super.super.isa + v7) = v3;
  v9 = v3;

  v10 = *(&self->super.super.super.super.super.isa + v7);
  v11 = v10;

  return v10;
}

@end