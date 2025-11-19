@interface BIMIVerifiedDomainContactHeaderViewModel
- (BIMIVerifiedDomainContactHeaderViewModel)initWithDomain:(id)a3 mailProviderDisplayName:(id)a4;
- (NSString)body;
- (id)contactsCustomViewConfiguration;
- (void)learnMoreButtonPressed;
@end

@implementation BIMIVerifiedDomainContactHeaderViewModel

- (BIMIVerifiedDomainContactHeaderViewModel)initWithDomain:(id)a3 mailProviderDisplayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BIMIVerifiedDomainContactHeaderViewModel;
  v9 = [(BIMIVerifiedDomainContactHeaderViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_domain, a3);
    objc_storeStrong(&v10->_mailProviderDisplayName, a4);
  }

  return v10;
}

- (NSString)body
{
  v3 = [(BIMIVerifiedDomainContactHeaderViewModel *)self mailProviderDisplayName];

  v4 = MEMORY[0x277CCACA8];
  _EFLocalizedString();
  if (v3)
    v5 = {;
    v6 = [(BIMIVerifiedDomainContactHeaderViewModel *)self mailProviderDisplayName];
    v7 = [(BIMIVerifiedDomainContactHeaderViewModel *)self domain];
    v8 = [v4 stringWithFormat:v5, v6, v7];
  }

  else
    v5 = {;
    v6 = [(BIMIVerifiedDomainContactHeaderViewModel *)self domain];
    v8 = [v4 stringWithFormat:v5, v6];
  }

  return v8;
}

- (void)learnMoreButtonPressed
{
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = _EFLocalizedString();
  v4 = [v2 URLWithString:v3];
  [v5 openURL:v4 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)contactsCustomViewConfiguration
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  v4 = [(BIMIVerifiedDomainContactHeaderViewModel *)self title];
  v5 = [v3 initWithString:v4];

  v6 = [objc_alloc(MEMORY[0x277CBDC10]) initWithAttributedTitle:v5];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v8 = [(BIMIVerifiedDomainContactHeaderViewModel *)self body];
  v9 = [v7 initWithString:v8];
  [v6 setBody:v9];

  v10 = MEMORY[0x277CBDC00];
  v11 = [(BIMIVerifiedDomainContactHeaderViewModel *)self learnMoreTitle];
  v12 = [v10 contactActionWithTitle:v11 target:self selector:sel_learnMoreButtonPressed];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v6 setActions:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

@end