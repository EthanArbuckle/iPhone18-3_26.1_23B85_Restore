@interface FAInviteFamilyMemberRequest
- (id)_queryString;
- (void)_queryString;
@end

@implementation FAInviteFamilyMemberRequest

- (id)_queryString
{
  v3 = [MEMORY[0x277CCAB50] URLQueryAllowedCharacterSet];
  v4 = [v3 mutableCopy];

  [v4 removeCharactersInString:@"+"];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(NSString *)self->_inviteeEmail stringByAddingPercentEncodingWithAllowedCharacters:v4];
  v7 = [v5 stringWithFormat:@"inviteeEmail=%@", v6];

  inviteeShortName = self->_inviteeShortName;
  v9 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v10 = [(NSString *)inviteeShortName stringByAddingPercentEncodingWithAllowedCharacters:v9];

  if (v10)
  {
    v11 = [v7 stringByAppendingFormat:@"&inviteeShortName=%@", v10];

    v7 = v11;
  }

  inviteeCompositeName = self->_inviteeCompositeName;
  v13 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v14 = [(NSString *)inviteeCompositeName stringByAddingPercentEncodingWithAllowedCharacters:v13];

  if (v14)
  {
    v15 = [v7 stringByAppendingFormat:@"&inviteeCompositeName=%@", v14];

    v7 = v15;
  }

  v16 = _FALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FAInviteFamilyMemberRequest _queryString];
  }

  return v7;
}

- (void)_queryString
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21BB35000, v0, OS_LOG_TYPE_DEBUG, "Query string %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end