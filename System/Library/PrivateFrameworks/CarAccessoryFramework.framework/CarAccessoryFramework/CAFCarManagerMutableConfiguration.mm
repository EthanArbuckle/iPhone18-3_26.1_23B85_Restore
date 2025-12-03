@interface CAFCarManagerMutableConfiguration
- (CAFCarManagerMutableConfiguration)initWithASCTree:(id)tree;
- (CAFCarManagerMutableConfiguration)initWithIdentifier:(id)identifier;
- (CAFCarManagerMutableConfiguration)initWithRegistrationDictionary:(id)dictionary;
- (CAFCarManagerMutableConfiguration)initWithRegistrationFilePath:(id)path;
- (void)setRegistrationFilePath:(id)path;
- (void)setRegistrationsDictionary:(id)dictionary;
@end

@implementation CAFCarManagerMutableConfiguration

- (CAFCarManagerMutableConfiguration)initWithIdentifier:(id)identifier
{
  v4 = [CAFRegistrations registrationDictionaryForIdentifier:identifier];
  v5 = [(CAFCarManagerMutableConfiguration *)self initWithRegistrationDictionary:v4];

  return v5;
}

- (CAFCarManagerMutableConfiguration)initWithRegistrationFilePath:(id)path
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:path];
  v5 = [(CAFCarManagerMutableConfiguration *)self initWithRegistrationDictionary:v4];

  return v5;
}

- (CAFCarManagerMutableConfiguration)initWithRegistrationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[CAFASCTree alloc] initWithDictionary:dictionaryCopy];

  v6 = [(CAFCarManagerMutableConfiguration *)self initWithASCTree:v5];
  return v6;
}

- (CAFCarManagerMutableConfiguration)initWithASCTree:(id)tree
{
  treeCopy = tree;
  v8.receiver = self;
  v8.super_class = CAFCarManagerMutableConfiguration;
  v5 = [(CAFCarManagerConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CAFCarManagerConfiguration *)v5 setRegistrations:treeCopy];
  }

  return v6;
}

- (void)setRegistrationFilePath:(id)path
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:path];
  [(CAFCarManagerMutableConfiguration *)self setRegistrationsDictionary:v4];
}

- (void)setRegistrationsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[CAFASCTree alloc] initWithDictionary:dictionaryCopy];

  [(CAFCarManagerConfiguration *)self setRegistrations:v5];
}

@end