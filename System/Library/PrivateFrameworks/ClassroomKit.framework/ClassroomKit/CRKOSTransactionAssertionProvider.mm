@interface CRKOSTransactionAssertionProvider
- (CRKOSTransactionAssertionProvider)initWithReverseDNSReason:(id)a3 primitives:(id)a4;
- (id)acquireAssertion;
@end

@implementation CRKOSTransactionAssertionProvider

- (CRKOSTransactionAssertionProvider)initWithReverseDNSReason:(id)a3 primitives:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRKOSTransactionAssertionProvider;
  v8 = [(CRKOSTransactionAssertionProvider *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    reason = v8->_reason;
    v8->_reason = v9;

    objc_storeStrong(&v8->_primitives, a4);
  }

  return v8;
}

- (id)acquireAssertion
{
  v3 = [(CRKOSTransactionAssertionProvider *)self primitives];
  v4 = [(CRKOSTransactionAssertionProvider *)self reason];
  v5 = [v3 transactionWithReverseDNSReason:v4];

  v6 = objc_alloc(MEMORY[0x277CF9528]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__CRKOSTransactionAssertionProvider_acquireAssertion__block_invoke;
  v10[3] = &unk_278DC10F0;
  v11 = v5;
  v7 = v5;
  v8 = [v6 initWithCancellationBlock:v10];

  return v8;
}

@end