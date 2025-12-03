@interface WFContentItemPrivacyConfiguration
+ (id)configurationWithOrigin:(id)origin disclosureLevel:(unint64_t)level;
+ (id)configurationWithOrigin:(id)origin disclosureLevel:(unint64_t)level disclosureWarnings:(id)warnings;
- (WFContentItemPrivacyConfiguration)initWithOrigin:(id)origin disclosureLevel:(unint64_t)level disclosureWarnings:(id)warnings;
@end

@implementation WFContentItemPrivacyConfiguration

- (WFContentItemPrivacyConfiguration)initWithOrigin:(id)origin disclosureLevel:(unint64_t)level disclosureWarnings:(id)warnings
{
  originCopy = origin;
  warningsCopy = warnings;
  v17.receiver = self;
  v17.super_class = WFContentItemPrivacyConfiguration;
  v11 = [(WFContentItemPrivacyConfiguration *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_origin, origin);
    v12->_disclosureLevel = level;
    v13 = [MEMORY[0x277CBEB70] orderedSetWithArray:warningsCopy];
    disclosureWarnings = v12->_disclosureWarnings;
    v12->_disclosureWarnings = v13;

    v15 = v12;
  }

  return v12;
}

+ (id)configurationWithOrigin:(id)origin disclosureLevel:(unint64_t)level disclosureWarnings:(id)warnings
{
  warningsCopy = warnings;
  originCopy = origin;
  v10 = [[self alloc] initWithOrigin:originCopy disclosureLevel:level disclosureWarnings:warningsCopy];

  return v10;
}

+ (id)configurationWithOrigin:(id)origin disclosureLevel:(unint64_t)level
{
  originCopy = origin;
  v7 = [self alloc];
  v8 = [v7 initWithOrigin:originCopy disclosureLevel:level disclosureWarnings:MEMORY[0x277CBEBF8]];

  return v8;
}

@end