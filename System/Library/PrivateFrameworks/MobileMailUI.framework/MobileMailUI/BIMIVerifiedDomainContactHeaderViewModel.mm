@interface BIMIVerifiedDomainContactHeaderViewModel
- (BIMIVerifiedDomainContactHeaderViewModel)initWithDomain:(id)domain mailProviderDisplayName:(id)name;
- (NSString)body;
- (id)contactsCustomViewConfiguration;
- (void)learnMoreButtonPressed;
@end

@implementation BIMIVerifiedDomainContactHeaderViewModel

- (BIMIVerifiedDomainContactHeaderViewModel)initWithDomain:(id)domain mailProviderDisplayName:(id)name
{
  domainCopy = domain;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = BIMIVerifiedDomainContactHeaderViewModel;
  v9 = [(BIMIVerifiedDomainContactHeaderViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_domain, domain);
    objc_storeStrong(&v10->_mailProviderDisplayName, name);
  }

  return v10;
}

- (NSString)body
{
  mailProviderDisplayName = [(BIMIVerifiedDomainContactHeaderViewModel *)self mailProviderDisplayName];

  v4 = MEMORY[0x277CCACA8];
  _EFLocalizedString();
  if (mailProviderDisplayName)
    v5 = {;
    mailProviderDisplayName2 = [(BIMIVerifiedDomainContactHeaderViewModel *)self mailProviderDisplayName];
    domain = [(BIMIVerifiedDomainContactHeaderViewModel *)self domain];
    v8 = [v4 stringWithFormat:v5, mailProviderDisplayName2, domain];
  }

  else
    v5 = {;
    mailProviderDisplayName2 = [(BIMIVerifiedDomainContactHeaderViewModel *)self domain];
    v8 = [v4 stringWithFormat:v5, mailProviderDisplayName2];
  }

  return v8;
}

- (void)learnMoreButtonPressed
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = _EFLocalizedString();
  v4 = [v2 URLWithString:v3];
  [mEMORY[0x277D75128] openURL:v4 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)contactsCustomViewConfiguration
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  title = [(BIMIVerifiedDomainContactHeaderViewModel *)self title];
  v5 = [v3 initWithString:title];

  v6 = [objc_alloc(MEMORY[0x277CBDC10]) initWithAttributedTitle:v5];
  v7 = objc_alloc(MEMORY[0x277CCA898]);
  body = [(BIMIVerifiedDomainContactHeaderViewModel *)self body];
  v9 = [v7 initWithString:body];
  [v6 setBody:v9];

  v10 = MEMORY[0x277CBDC00];
  learnMoreTitle = [(BIMIVerifiedDomainContactHeaderViewModel *)self learnMoreTitle];
  v12 = [v10 contactActionWithTitle:learnMoreTitle target:self selector:sel_learnMoreButtonPressed];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v6 setActions:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

@end