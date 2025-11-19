@interface HLPHelpLocale
- (HLPHelpLocale)initWithDictionary:(id)a3;
- (id)debugDescription;
@end

@implementation HLPHelpLocale

- (HLPHelpLocale)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HLPHelpLocale;
  v5 = [(HLPHelpLocale *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"folder"];
    [(HLPHelpLocale *)v5 setPath:v6];

    v7 = [v4 objectForKeyedSubscript:@"isoCodes"];
    [(HLPHelpLocale *)v5 setIsoCodes:v7];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_2864756F0];
  v4 = [(HLPHelpLocale *)self path];
  [v3 appendFormat:@"path: %@\n", v4];

  v5 = [(HLPHelpLocale *)self isoCodes];
  [v3 appendFormat:@"isoCodes: %@\n", v5];

  return v3;
}

@end