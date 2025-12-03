@interface ECHeaderAuthenticationResults
+ (id)authenticationResultsForHeaders:(id)headers;
+ (id)authenticationResultsForRawHeaders:(id)headers;
- (ECHeaderAuthenticationResults)initWithAuthenticationServiceIdentifier:(id)identifier version:(int64_t)version statements:(id)statements;
- (id)firstStatementForMethod:(id)method;
@end

@implementation ECHeaderAuthenticationResults

uint64_t ___ef_log_ECHeaderAuthenticationResults_block_invoke()
{
  _ef_log_ECHeaderAuthenticationResults_log = os_log_create("com.apple.email", "ECHeaderAuthenticationResults");

  return MEMORY[0x2821F96F8]();
}

+ (id)authenticationResultsForHeaders:(id)headers
{
  v3 = [_ECHeaderAuthenticationResultsParser authenticationResultsForHeaders:headers];

  return v3;
}

+ (id)authenticationResultsForRawHeaders:(id)headers
{
  v3 = [_ECHeaderAuthenticationResultsParser authenticationResultsForRawHeaders:headers];

  return v3;
}

- (ECHeaderAuthenticationResults)initWithAuthenticationServiceIdentifier:(id)identifier version:(int64_t)version statements:(id)statements
{
  identifierCopy = identifier;
  statementsCopy = statements;
  v14.receiver = self;
  v14.super_class = ECHeaderAuthenticationResults;
  v11 = [(ECHeaderAuthenticationResults *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_authenticationServiceIdentifier, identifier);
    v12->_version = version;
    objc_storeStrong(&v12->_statements, statements);
  }

  return v12;
}

- (id)firstStatementForMethod:(id)method
{
  methodCopy = method;
  statements = [(ECHeaderAuthenticationResults *)self statements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ECHeaderAuthenticationResults_firstStatementForMethod___block_invoke;
  v9[3] = &unk_27874BAB8;
  v6 = methodCopy;
  v10 = v6;
  v7 = [statements ef_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __57__ECHeaderAuthenticationResults_firstStatementForMethod___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 method];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end