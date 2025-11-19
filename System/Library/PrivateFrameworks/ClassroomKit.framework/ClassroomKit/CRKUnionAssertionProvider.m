@interface CRKUnionAssertionProvider
+ (id)activeIDSClassSessionAssertionProviderWithPrefix:(id)a3;
- (CRKUnionAssertionProvider)initWithAssertionProviders:(id)a3;
- (id)acquireAssertion;
@end

@implementation CRKUnionAssertionProvider

+ (id)activeIDSClassSessionAssertionProviderWithPrefix:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.active-ids-class-session", a3];
  v4 = [CRKUnionAssertionProvider alloc];
  v5 = objc_opt_new();
  v12[0] = v5;
  v6 = [CRKOSTransactionAssertionProvider alloc];
  v7 = objc_opt_new();
  v8 = [(CRKOSTransactionAssertionProvider *)v6 initWithReverseDNSReason:v3 primitives:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [(CRKUnionAssertionProvider *)v4 initWithAssertionProviders:v9];

  return v10;
}

- (CRKUnionAssertionProvider)initWithAssertionProviders:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKUnionAssertionProvider;
  v5 = [(CRKUnionAssertionProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assertionProviders = v5->_assertionProviders;
    v5->_assertionProviders = v6;
  }

  return v5;
}

- (id)acquireAssertion
{
  v2 = [(CRKUnionAssertionProvider *)self assertionProviders];
  v3 = [v2 crk_mapUsingBlock:&__block_literal_global_81];

  v4 = [objc_alloc(MEMORY[0x277CF9528]) initWithCancellables:v3];

  return v4;
}

@end