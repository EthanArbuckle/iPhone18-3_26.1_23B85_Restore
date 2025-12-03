@interface HLPHelpLocale
- (HLPHelpLocale)initWithDictionary:(id)dictionary;
- (id)debugDescription;
@end

@implementation HLPHelpLocale

- (HLPHelpLocale)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = HLPHelpLocale;
  v5 = [(HLPHelpLocale *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"folder"];
    [(HLPHelpLocale *)v5 setPath:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isoCodes"];
    [(HLPHelpLocale *)v5 setIsoCodes:v7];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_2864756F0];
  path = [(HLPHelpLocale *)self path];
  [v3 appendFormat:@"path: %@\n", path];

  isoCodes = [(HLPHelpLocale *)self isoCodes];
  [v3 appendFormat:@"isoCodes: %@\n", isoCodes];

  return v3;
}

@end