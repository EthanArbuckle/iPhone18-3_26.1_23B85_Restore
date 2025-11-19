@interface FAFamilySetupBuddyMLRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FAFamilySetupBuddyMLRequest

- (id)urlString
{
  v2 = [MEMORY[0x277CEC860] urlConfiguration];
  v3 = [v2 familySetupUIURL];

  return v3;
}

- (id)urlRequest
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = FAFamilySetupBuddyMLRequest;
  v3 = [(AAFamilyRequest *)&v11 urlRequest];
  v4 = [v3 mutableCopy];

  if (self->_iTunesAccount)
  {
    [v4 fam_addiTunesHeadersWithAccount:?];
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "No iTunes account provided to family setup UI request.", v10, 2u);
    }
  }

  inviteCode = self->_inviteCode;
  if (inviteCode)
  {
    v12 = @"invite-code";
    v13[0] = inviteCode;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v4 aa_setBodyWithParameters:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

@end