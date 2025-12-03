@interface DMCProfilePayloadSection
- (DMCProfilePayloadSection)init;
- (DMCProfilePayloadSection)initWithCoder:(id)coder;
- (DMCProfilePayloadSection)initWithSectionTitle:(id)title footer:(id)footer payloadViewModels:(id)models;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMCProfilePayloadSection

- (DMCProfilePayloadSection)init
{
  v6.receiver = self;
  v6.super_class = DMCProfilePayloadSection;
  v2 = [(DMCProfilePayloadSection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    payloadViewModels = v2->_payloadViewModels;
    v2->_payloadViewModels = v3;
  }

  return v2;
}

- (DMCProfilePayloadSection)initWithSectionTitle:(id)title footer:(id)footer payloadViewModels:(id)models
{
  titleCopy = title;
  footerCopy = footer;
  modelsCopy = models;
  v17.receiver = self;
  v17.super_class = DMCProfilePayloadSection;
  v12 = [(DMCProfilePayloadSection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionTitle, title);
    objc_storeStrong(&v13->_sectionFooter, footer);
    v14 = [modelsCopy mutableCopy];
    payloadViewModels = v13->_payloadViewModels;
    v13->_payloadViewModels = v14;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sectionTitle = [(DMCProfilePayloadSection *)self sectionTitle];
  [coderCopy encodeObject:sectionTitle forKey:@"sectionTitle"];

  sectionFooter = [(DMCProfilePayloadSection *)self sectionFooter];
  [coderCopy encodeObject:sectionFooter forKey:@"sectionFooter"];

  payloadViewModels = [(DMCProfilePayloadSection *)self payloadViewModels];
  [coderCopy encodeObject:payloadViewModels forKey:@"payloadViewModels"];
}

- (DMCProfilePayloadSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DMCProfilePayloadSection;
  v5 = [(DMCProfilePayloadSection *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"sectionTitle"];
    sectionTitle = v5->_sectionTitle;
    v5->_sectionTitle = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"payloadViewModels"];
    payloadViewModels = v5->_payloadViewModels;
    v5->_payloadViewModels = v15;
  }

  return v5;
}

@end