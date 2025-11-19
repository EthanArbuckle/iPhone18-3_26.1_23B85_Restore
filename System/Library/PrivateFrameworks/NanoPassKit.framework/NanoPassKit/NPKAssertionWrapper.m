@interface NPKAssertionWrapper
- (BOOL)invalidateAssertionExpected:(BOOL)a3;
- (NPKAssertionWrapper)initWithAssertion:(id)a3 invalidator:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation NPKAssertionWrapper

- (NPKAssertionWrapper)initWithAssertion:(id)a3 invalidator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NPKAssertionWrapper;
  v9 = [(NPKAssertionWrapper *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    wrapperUUID = v9->_wrapperUUID;
    v9->_wrapperUUID = v10;

    objc_storeStrong(&v9->_assertion, a3);
    v12 = _Block_copy(v8);
    assertionInvalidator = v9->_assertionInvalidator;
    v9->_assertionInvalidator = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(NPKAssertionWrapper *)self invalidateAssertionExpected:0];
  v3.receiver = self;
  v3.super_class = NPKAssertionWrapper;
  [(NPKAssertionWrapper *)&v3 dealloc];
}

- (BOOL)invalidateAssertionExpected:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  assertion = self->_assertion;
  if (assertion)
  {
    if (!a3)
    {
      v5 = pk_General_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v7 = pk_General_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_assertion;
          v14 = 138412290;
          v15 = v8;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected invalidation of assertion:%@", &v14, 0xCu);
        }
      }
    }

    v9 = self->_assertion;
    (*(self->_assertionInvalidator + 2))();
    v10 = self->_assertion;
    self->_assertion = 0;

    assertionInvalidator = self->_assertionInvalidator;
    self->_assertionInvalidator = 0;
  }

  result = assertion != 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  assertion = self->_assertion;
  if (assertion)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", assertion:%@", assertion];
  }

  else
  {
    v4 = &stru_286C934F8;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p> {UUID:%@%@}", objc_opt_class(), self, self->_wrapperUUID, v4];

  return v5;
}

@end