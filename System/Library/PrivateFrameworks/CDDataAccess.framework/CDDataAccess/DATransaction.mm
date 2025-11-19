@interface DATransaction
- (DATransaction)init;
- (DATransaction)initWithLabel:(id)a3;
- (void)dealloc;
@end

@implementation DATransaction

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[DATransactionMonitor sharedTransactionMonitor];
  [v3 decrementTransactionCountForTransaction:self->_transactionId];

  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [(DATransaction *)self transactionId];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_24244C000, v4, v5, "DATransaction exiting, ID: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = DATransaction;
  [(DATransaction *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (DATransaction)init
{
  v7.receiver = self;
  v7.super_class = DATransaction;
  v2 = [(DATransaction *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] da_newGUID];
    transactionId = v2->_transactionId;
    v2->_transactionId = v3;

    objc_storeStrong(&v2->_label, v2->_transactionId);
    v5 = +[DATransactionMonitor sharedTransactionMonitor];
    [v5 incrementTransactionCountForTransaction:v2->_transactionId];
  }

  return v2;
}

- (DATransaction)initWithLabel:(id)a3
{
  v5 = a3;
  v6 = [(DATransaction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, a3);
  }

  return v7;
}

@end