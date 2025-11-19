@interface FLWriteTransaction
- (FLWriteTransaction)init;
- (void)dealloc;
@end

@implementation FLWriteTransaction

- (void)dealloc
{
  [(RBSAssertion *)self->_rbsAssertion invalidate];
  v3.receiver = self;
  v3.super_class = FLWriteTransaction;
  [(FLWriteTransaction *)&v3 dealloc];
}

- (FLWriteTransaction)init
{
  v25[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = FLWriteTransaction;
  v2 = [(FLWriteTransaction *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v4 = flLogForObject(v2);
    log = v3->_log;
    v3->_log = v4;

    v6 = os_transaction_create();
    transaction = v3->_transaction;
    v3->_transaction = v6;

    v8 = [MEMORY[0x277D47008] currentProcess];
    v9 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
    v10 = objc_alloc(MEMORY[0x277D46DB8]);
    v25[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v12 = [v10 initWithExplanation:@"FLLogger" target:v8 attributes:v11];
    rbsAssertion = v3->_rbsAssertion;
    v3->_rbsAssertion = v12;

    v14 = v3->_rbsAssertion;
    v21 = 0;
    [(RBSAssertion *)v14 acquireWithError:&v21];
    v15 = v21;
    if (v15)
    {
      v16 = v3->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = v16;
        v20 = [v15 localizedDescription];
        *buf = 138412290;
        v24 = v20;
        _os_log_error_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_ERROR, "Error acquiring write assertion: %@.", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

@end