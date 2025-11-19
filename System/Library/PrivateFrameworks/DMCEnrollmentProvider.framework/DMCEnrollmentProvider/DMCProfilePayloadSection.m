@interface DMCProfilePayloadSection
- (DMCProfilePayloadSection)init;
- (DMCProfilePayloadSection)initWithCoder:(id)a3;
- (DMCProfilePayloadSection)initWithSectionTitle:(id)a3 footer:(id)a4 payloadViewModels:(id)a5;
- (void)encodeWithCoder:(id)a3;
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

- (DMCProfilePayloadSection)initWithSectionTitle:(id)a3 footer:(id)a4 payloadViewModels:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = DMCProfilePayloadSection;
  v12 = [(DMCProfilePayloadSection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionTitle, a3);
    objc_storeStrong(&v13->_sectionFooter, a4);
    v14 = [v11 mutableCopy];
    payloadViewModels = v13->_payloadViewModels;
    v13->_payloadViewModels = v14;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMCProfilePayloadSection *)self sectionTitle];
  [v4 encodeObject:v5 forKey:@"sectionTitle"];

  v6 = [(DMCProfilePayloadSection *)self sectionFooter];
  [v4 encodeObject:v6 forKey:@"sectionFooter"];

  v7 = [(DMCProfilePayloadSection *)self payloadViewModels];
  [v4 encodeObject:v7 forKey:@"payloadViewModels"];
}

- (DMCProfilePayloadSection)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DMCProfilePayloadSection;
  v5 = [(DMCProfilePayloadSection *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"sectionTitle"];
    sectionTitle = v5->_sectionTitle;
    v5->_sectionTitle = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"payloadViewModels"];
    payloadViewModels = v5->_payloadViewModels;
    v5->_payloadViewModels = v15;
  }

  return v5;
}

@end