@interface MFOSXServerSMTPAccount
- (BOOL)usesSSL;
- (NSDictionary)parentAccountMailProperties;
- (id)hostname;
- (unsigned)portNumber;
- (void)dealloc;
@end

@implementation MFOSXServerSMTPAccount

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOSXServerSMTPAccount;
  [(SMTPAccount *)&v3 dealloc];
}

- (NSDictionary)parentAccountMailProperties
{
  v2 = [(ACAccount *)[(MFAccount *)self->_mailAccount persistentAccount] parentAccount];
  v3 = *MEMORY[0x277CB9150];

  return [v2 propertiesForDataclass:v3];
}

- (BOOL)usesSSL
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CB8B40]];

  return [v3 BOOLValue];
}

- (id)hostname
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = *MEMORY[0x277CB8B30];

  return [(NSDictionary *)v2 objectForKeyedSubscript:v3];
}

- (unsigned)portNumber
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CB8B38]];

  return [v3 unsignedIntValue];
}

@end