@interface HideMyEmailContactHeaderViewModel
- (HideMyEmailContactHeaderViewModel)initWithAddress:(id)address;
- (id)contactsCustomViewConfiguration;
- (void)infoButtonPressed;
@end

@implementation HideMyEmailContactHeaderViewModel

- (HideMyEmailContactHeaderViewModel)initWithAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = HideMyEmailContactHeaderViewModel;
  v6 = [(HideMyEmailContactHeaderViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_address, address);
  }

  return v7;
}

- (id)contactsCustomViewConfiguration
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  title = [(HideMyEmailContactHeaderViewModel *)self title];
  v5 = [v3 initWithString:title];

  v6 = [objc_alloc(MEMORY[0x277CBDC10]) initWithAttributedTitle:v5];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  body = [(HideMyEmailContactHeaderViewModel *)self body];
  v9 = [v7 initWithString:body];
  [v6 setBody:v9];

  [v6 setTrailingDisclosureAccesoryWithSystemImageName:*MEMORY[0x277CD67B8] target:self selector:sel_infoButtonPressed];

  return v6;
}

- (void)infoButtonPressed
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  hideMyEmailURL = [MEMORY[0x277CD68A0] hideMyEmailURL];
  [defaultWorkspace openSensitiveURL:hideMyEmailURL withOptions:0];
}

@end