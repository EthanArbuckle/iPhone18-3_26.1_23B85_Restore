@interface WFDisclosureWarning
+ (NSSet)allDisclosureWarningClasses;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedMessage;
- (unint64_t)hash;
@end

@implementation WFDisclosureWarning

- (unint64_t)hash
{
  localizedMessage = [(WFDisclosureWarning *)self localizedMessage];
  v3 = [localizedMessage hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      localizedMessage = [(WFDisclosureWarning *)self localizedMessage];
      localizedMessage2 = [(WFDisclosureWarning *)v6 localizedMessage];
      v9 = [localizedMessage isEqualToString:localizedMessage2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSString)localizedMessage
{
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"+[WFDisclosureWarning localizedMessage] must be overridden"];
  __break(1u);
  return result;
}

+ (NSSet)allDisclosureWarningClasses
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end