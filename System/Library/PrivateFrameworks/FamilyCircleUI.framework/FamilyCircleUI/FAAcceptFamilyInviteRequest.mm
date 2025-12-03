@interface FAAcceptFamilyInviteRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FAAcceptFamilyInviteRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  acceptFamilyInviteURL = [urlConfiguration acceptFamilyInviteURL];

  return acceptFamilyInviteURL;
}

- (id)urlRequest
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = FAAcceptFamilyInviteRequest;
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

  [v4 setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end