@interface ECHeaderAuthenticationResults
+ (id)authenticationResultsForHeaders:(id)a3;
+ (id)authenticationResultsForRawHeaders:(id)a3;
- (ECHeaderAuthenticationResults)initWithAuthenticationServiceIdentifier:(id)a3 version:(int64_t)a4 statements:(id)a5;
- (id)firstStatementForMethod:(id)a3;
@end

@implementation ECHeaderAuthenticationResults

uint64_t ___ef_log_ECHeaderAuthenticationResults_block_invoke()
{
  _ef_log_ECHeaderAuthenticationResults_log = os_log_create("com.apple.email", "ECHeaderAuthenticationResults");

  return MEMORY[0x2821F96F8]();
}

+ (id)authenticationResultsForHeaders:(id)a3
{
  v3 = [_ECHeaderAuthenticationResultsParser authenticationResultsForHeaders:a3];

  return v3;
}

+ (id)authenticationResultsForRawHeaders:(id)a3
{
  v3 = [_ECHeaderAuthenticationResultsParser authenticationResultsForRawHeaders:a3];

  return v3;
}

- (ECHeaderAuthenticationResults)initWithAuthenticationServiceIdentifier:(id)a3 version:(int64_t)a4 statements:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ECHeaderAuthenticationResults;
  v11 = [(ECHeaderAuthenticationResults *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_authenticationServiceIdentifier, a3);
    v12->_version = a4;
    objc_storeStrong(&v12->_statements, a5);
  }

  return v12;
}

- (id)firstStatementForMethod:(id)a3
{
  v4 = a3;
  v5 = [(ECHeaderAuthenticationResults *)self statements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ECHeaderAuthenticationResults_firstStatementForMethod___block_invoke;
  v9[3] = &unk_27874BAB8;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __57__ECHeaderAuthenticationResults_firstStatementForMethod___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 method];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end