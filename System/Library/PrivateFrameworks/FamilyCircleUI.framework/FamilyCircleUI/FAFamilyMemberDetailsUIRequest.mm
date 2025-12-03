@interface FAFamilyMemberDetailsUIRequest
- (id)_queryString;
- (void)URLRequestWithCompletion:(id)completion;
- (void)_queryString;
@end

@implementation FAFamilyMemberDetailsUIRequest

- (id)_queryString
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  if (self->_memberEmail)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"invitedEmail" value:self->_memberEmail];
    v14[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v3 setQueryItems:v5];
LABEL_5:

    goto LABEL_6;
  }

  if (self->_memberDSID)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD18]);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", -[NSNumber unsignedLongLongValue](self->_memberDSID, "unsignedLongLongValue")];
    v5 = [v6 initWithName:@"memberId" value:v4];
    v13 = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v3 setQueryItems:v7];

    goto LABEL_5;
  }

  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Error: no member DSID or email. This will go badly.", buf, 2u);
  }

LABEL_6:

  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(FAFamilyMemberDetailsUIRequest *)v3 _queryString];
  }

  query = [v3 query];

  v10 = *MEMORY[0x277D85DE8];

  return query;
}

- (void)URLRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__FAFamilyMemberDetailsUIRequest_URLRequestWithCompletion___block_invoke;
  v7[3] = &unk_2782F4478;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = FAFamilyMemberDetailsUIRequest;
  v5 = completionCopy;
  [(FAFamilyRequest *)&v6 URLRequestWithCompletion:v7];
}

void __59__FAFamilyMemberDetailsUIRequest_URLRequestWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v9 = [a2 mutableCopy];
    [v9 setHTTPMethod:@"POST"];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [MEMORY[0x277D082E8] addMessageEligibilityToPayload:v6];
    [v9 aa_setBodyWithParameters:v6];
    v7 = *(a1 + 32);
    v8 = [v9 copy];
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)_queryString
{
  v6 = *MEMORY[0x277D85DE8];
  query = [self query];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Query string %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end