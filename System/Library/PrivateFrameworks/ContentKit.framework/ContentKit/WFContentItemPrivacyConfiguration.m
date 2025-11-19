@interface WFContentItemPrivacyConfiguration
+ (id)configurationWithOrigin:(id)a3 disclosureLevel:(unint64_t)a4;
+ (id)configurationWithOrigin:(id)a3 disclosureLevel:(unint64_t)a4 disclosureWarnings:(id)a5;
- (WFContentItemPrivacyConfiguration)initWithOrigin:(id)a3 disclosureLevel:(unint64_t)a4 disclosureWarnings:(id)a5;
@end

@implementation WFContentItemPrivacyConfiguration

- (WFContentItemPrivacyConfiguration)initWithOrigin:(id)a3 disclosureLevel:(unint64_t)a4 disclosureWarnings:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = WFContentItemPrivacyConfiguration;
  v11 = [(WFContentItemPrivacyConfiguration *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_origin, a3);
    v12->_disclosureLevel = a4;
    v13 = [MEMORY[0x277CBEB70] orderedSetWithArray:v10];
    disclosureWarnings = v12->_disclosureWarnings;
    v12->_disclosureWarnings = v13;

    v15 = v12;
  }

  return v12;
}

+ (id)configurationWithOrigin:(id)a3 disclosureLevel:(unint64_t)a4 disclosureWarnings:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithOrigin:v9 disclosureLevel:a4 disclosureWarnings:v8];

  return v10;
}

+ (id)configurationWithOrigin:(id)a3 disclosureLevel:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [v7 initWithOrigin:v6 disclosureLevel:a4 disclosureWarnings:MEMORY[0x277CBEBF8]];

  return v8;
}

@end