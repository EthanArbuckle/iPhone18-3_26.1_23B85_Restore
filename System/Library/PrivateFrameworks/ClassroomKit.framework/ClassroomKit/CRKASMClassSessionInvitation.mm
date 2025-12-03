@interface CRKASMClassSessionInvitation
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKASMClassSessionInvitation)initWithInvitationIdentifier:(id)identifier instructorIdentifier:(id)instructorIdentifier sessionIdentifier:(id)sessionIdentifier;
- (CRKASMClassSessionInvitation)initWithSessionIdentifier:(id)identifier instructorIdentifier:(id)instructorIdentifier;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKASMClassSessionInvitation

- (CRKASMClassSessionInvitation)initWithInvitationIdentifier:(id)identifier instructorIdentifier:(id)instructorIdentifier sessionIdentifier:(id)sessionIdentifier
{
  identifierCopy = identifier;
  instructorIdentifierCopy = instructorIdentifier;
  sessionIdentifierCopy = sessionIdentifier;
  v17.receiver = self;
  v17.super_class = CRKASMClassSessionInvitation;
  v12 = [(CRKASMClassSessionInvitation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_invitationIdentifier, identifier);
    v14 = [instructorIdentifierCopy copy];
    instructorIdentifier = v13->_instructorIdentifier;
    v13->_instructorIdentifier = v14;

    objc_storeStrong(&v13->_sessionIdentifier, sessionIdentifier);
  }

  return v13;
}

- (CRKASMClassSessionInvitation)initWithSessionIdentifier:(id)identifier instructorIdentifier:(id)instructorIdentifier
{
  v6 = MEMORY[0x277CCAD78];
  instructorIdentifierCopy = instructorIdentifier;
  identifierCopy = identifier;
  uUID = [v6 UUID];
  v10 = [(CRKASMClassSessionInvitation *)self initWithInvitationIdentifier:uUID instructorIdentifier:instructorIdentifierCopy sessionIdentifier:identifierCopy];

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"SessionIdentifier";
  sessionIdentifier = [(CRKASMClassSessionInvitation *)self sessionIdentifier];
  stringValue = [sessionIdentifier stringValue];
  v11[0] = stringValue;
  v10[1] = @"InstructorIdentifier";
  instructorIdentifier = [(CRKASMClassSessionInvitation *)self instructorIdentifier];
  v11[1] = instructorIdentifier;
  v10[2] = @"InvitationIdentifier";
  invitationIdentifier = [(CRKASMClassSessionInvitation *)self invitationIdentifier];
  uUIDString = [invitationIdentifier UUIDString];
  v11[2] = uUIDString;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"SessionIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"InstructorIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"InvitationIdentifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = 0;
  if (v7 && v13 && v10)
  {
    v15 = [objc_alloc(MEMORY[0x277D04C08]) initWithString:v7];
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
    v17 = v16;
    v14 = 0;
    if (v15 && v16)
    {
      v14 = [[self alloc] initWithInvitationIdentifier:v16 instructorIdentifier:v10 sessionIdentifier:v15];
    }
  }

  return v14;
}

@end