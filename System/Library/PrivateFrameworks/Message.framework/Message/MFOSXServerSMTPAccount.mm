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
  persistentAccount = [(MFAccount *)self->_mailAccount persistentAccount];
  parentAccount = [persistentAccount parentAccount];
  v4 = [parentAccount propertiesForDataclass:*MEMORY[0x1E6959B28]];

  return v4;
}

- (BOOL)shouldUseAuthentication
{
  parentAccountMailProperties = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [parentAccountMailProperties objectForKeyedSubscript:@"OutgoingMailServerAuthentication"];

  LOBYTE(parentAccountMailProperties) = [v3 isEqualToString:@"EmailAuthNone"];
  return parentAccountMailProperties ^ 1;
}

- (BOOL)usesSSL
{
  parentAccountMailProperties = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [parentAccountMailProperties objectForKeyedSubscript:*MEMORY[0x1E69597C8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)hostname
{
  parentAccountMailProperties = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [parentAccountMailProperties objectForKeyedSubscript:*MEMORY[0x1E69597B8]];

  return v3;
}

- (unsigned)portNumber
{
  parentAccountMailProperties = [(MFOSXServerSMTPAccount *)self parentAccountMailProperties];
  v3 = [parentAccountMailProperties objectForKeyedSubscript:*MEMORY[0x1E69597C0]];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

@end