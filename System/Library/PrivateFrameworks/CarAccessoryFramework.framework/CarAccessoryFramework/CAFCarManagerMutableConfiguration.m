@interface CAFCarManagerMutableConfiguration
- (CAFCarManagerMutableConfiguration)initWithASCTree:(id)a3;
- (CAFCarManagerMutableConfiguration)initWithIdentifier:(id)a3;
- (CAFCarManagerMutableConfiguration)initWithRegistrationDictionary:(id)a3;
- (CAFCarManagerMutableConfiguration)initWithRegistrationFilePath:(id)a3;
- (void)setRegistrationFilePath:(id)a3;
- (void)setRegistrationsDictionary:(id)a3;
@end

@implementation CAFCarManagerMutableConfiguration

- (CAFCarManagerMutableConfiguration)initWithIdentifier:(id)a3
{
  v4 = [CAFRegistrations registrationDictionaryForIdentifier:a3];
  v5 = [(CAFCarManagerMutableConfiguration *)self initWithRegistrationDictionary:v4];

  return v5;
}

- (CAFCarManagerMutableConfiguration)initWithRegistrationFilePath:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a3];
  v5 = [(CAFCarManagerMutableConfiguration *)self initWithRegistrationDictionary:v4];

  return v5;
}

- (CAFCarManagerMutableConfiguration)initWithRegistrationDictionary:(id)a3
{
  v4 = a3;
  v5 = [[CAFASCTree alloc] initWithDictionary:v4];

  v6 = [(CAFCarManagerMutableConfiguration *)self initWithASCTree:v5];
  return v6;
}

- (CAFCarManagerMutableConfiguration)initWithASCTree:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAFCarManagerMutableConfiguration;
  v5 = [(CAFCarManagerConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CAFCarManagerConfiguration *)v5 setRegistrations:v4];
  }

  return v6;
}

- (void)setRegistrationFilePath:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a3];
  [(CAFCarManagerMutableConfiguration *)self setRegistrationsDictionary:v4];
}

- (void)setRegistrationsDictionary:(id)a3
{
  v4 = a3;
  v5 = [[CAFASCTree alloc] initWithDictionary:v4];

  [(CAFCarManagerConfiguration *)self setRegistrations:v5];
}

@end