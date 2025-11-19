@interface MFOSXServerSMTPAccount
- (BOOL)shouldUseAuthentication;
- (BOOL)usesSSL;
- (NSDictionary)parentAccountMailProperties;
- (id)hostname;
- (unsigned)portNumber;
@end

@implementation MFOSXServerSMTPAccount

- (NSDictionary)parentAccountMailProperties
{
  v2 = [(MFAccount *)self->_mailAccount persistentAccount];
  v3 = [v2 parentAccount];
  v4 = [v3 propertiesForDataclass:*MEMORY[0x1E6959B28]];

  return v4;
}

- (BOOL)shouldUseAuthentication
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [v2 objectForKeyedSubscript:@"OutgoingMailServerAuthentication"];

  LOBYTE(v2) = [v3 isEqualToString:@"EmailAuthNone"];
  return v2 ^ 1;
}

- (BOOL)usesSSL
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69597C8]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)hostname
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69597B8]];

  return v3;
}

- (unsigned)portNumber
{
  v2 = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69597C0]];
  v4 = [v3 unsignedIntValue];

  return v4;
}

@end