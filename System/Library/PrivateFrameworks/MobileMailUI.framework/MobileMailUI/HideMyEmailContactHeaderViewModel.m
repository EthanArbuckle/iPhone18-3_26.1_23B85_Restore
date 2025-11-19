@interface HideMyEmailContactHeaderViewModel
- (HideMyEmailContactHeaderViewModel)initWithAddress:(id)a3;
- (id)contactsCustomViewConfiguration;
- (void)infoButtonPressed;
@end

@implementation HideMyEmailContactHeaderViewModel

- (HideMyEmailContactHeaderViewModel)initWithAddress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HideMyEmailContactHeaderViewModel;
  v6 = [(HideMyEmailContactHeaderViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_address, a3);
  }

  return v7;
}

- (id)contactsCustomViewConfiguration
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [(HideMyEmailContactHeaderViewModel *)self title];
  v5 = [v3 initWithString:v4];

  v6 = [objc_alloc(MEMORY[0x277CBDC10]) initWithAttributedTitle:v5];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v8 = [(HideMyEmailContactHeaderViewModel *)self body];
  v9 = [v7 initWithString:v8];
  [v6 setBody:v9];

  [v6 setTrailingDisclosureAccesoryWithSystemImageName:*MEMORY[0x277CD67B8] target:self selector:sel_infoButtonPressed];

  return v6;
}

- (void)infoButtonPressed
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CD68A0] hideMyEmailURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end