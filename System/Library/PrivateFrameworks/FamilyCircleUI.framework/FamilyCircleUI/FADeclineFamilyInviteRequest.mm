@interface FADeclineFamilyInviteRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FADeclineFamilyInviteRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  declineFamilyInviteURL = [urlConfiguration declineFamilyInviteURL];

  return declineFamilyInviteURL;
}

- (id)urlRequest
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = FADeclineFamilyInviteRequest;
  urlRequest = [(AAFamilyRequest *)&v9 urlRequest];
  v4 = [urlRequest mutableCopy];

  inviteCode = self->_inviteCode;
  if (inviteCode)
  {
    v10 = @"invite-code";
    v11[0] = inviteCode;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v4 aa_setBodyWithParameters:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end