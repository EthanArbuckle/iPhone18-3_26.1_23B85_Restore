@interface CRKASMClassSessionInvitation
+ (id)instanceWithDictionary:(id)a3;
- (CRKASMClassSessionInvitation)initWithInvitationIdentifier:(id)a3 instructorIdentifier:(id)a4 sessionIdentifier:(id)a5;
- (CRKASMClassSessionInvitation)initWithSessionIdentifier:(id)a3 instructorIdentifier:(id)a4;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKASMClassSessionInvitation

- (CRKASMClassSessionInvitation)initWithInvitationIdentifier:(id)a3 instructorIdentifier:(id)a4 sessionIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CRKASMClassSessionInvitation;
  v12 = [(CRKASMClassSessionInvitation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_invitationIdentifier, a3);
    v14 = [v10 copy];
    instructorIdentifier = v13->_instructorIdentifier;
    v13->_instructorIdentifier = v14;

    objc_storeStrong(&v13->_sessionIdentifier, a5);
  }

  return v13;
}

- (CRKASMClassSessionInvitation)initWithSessionIdentifier:(id)a3 instructorIdentifier:(id)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(CRKASMClassSessionInvitation *)self initWithInvitationIdentifier:v9 instructorIdentifier:v7 sessionIdentifier:v8];

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"SessionIdentifier";
  v3 = [(CRKASMClassSessionInvitation *)self sessionIdentifier];
  v4 = [v3 stringValue];
  v11[0] = v4;
  v10[1] = @"InstructorIdentifier";
  v5 = [(CRKASMClassSessionInvitation *)self instructorIdentifier];
  v11[1] = v5;
  v10[2] = @"InvitationIdentifier";
  v6 = [(CRKASMClassSessionInvitation *)self invitationIdentifier];
  v7 = [v6 UUIDString];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"SessionIdentifier"];
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

  v8 = [v4 objectForKeyedSubscript:@"InstructorIdentifier"];
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

  v11 = [v4 objectForKeyedSubscript:@"InvitationIdentifier"];

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
      v14 = [[a1 alloc] initWithInvitationIdentifier:v16 instructorIdentifier:v10 sessionIdentifier:v15];
    }
  }

  return v14;
}

@end