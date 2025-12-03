@interface CRKConcreteOSTransactionPrimitives
- (id)transactionWithReverseDNSReason:(id)reason;
@end

@implementation CRKConcreteOSTransactionPrimitives

- (id)transactionWithReverseDNSReason:(id)reason
{
  reasonCopy = reason;
  [(CRKConcreteOSTransactionPrimitives *)self incrementCount];
  objc_initWeak(&location, self);
  v5 = [CRKOSTransactionToken alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CRKConcreteOSTransactionPrimitives_transactionWithReverseDNSReason___block_invoke;
  v8[3] = &unk_278DC1870;
  objc_copyWeak(&v9, &location);
  v6 = [(CRKOSTransactionToken *)v5 initWithReason:reasonCopy completionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __70__CRKConcreteOSTransactionPrimitives_transactionWithReverseDNSReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained decrementCount];
}

@end