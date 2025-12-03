@interface DATransaction
- (DATransaction)initWithLabel:(id)label;
- (void)dealloc;
@end

@implementation DATransaction

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[DATransactionMonitor sharedTransactionMonitor];
  [v3 decrementTransactionCountForTransaction:self->_transactionId];

  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    transactionId = [(DATransaction *)self transactionId];
    *buf = 138412290;
    v10 = transactionId;
    _os_log_impl(&dword_24844D000, v4, v5, "DATransaction exiting, ID: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = DATransaction;
  [(DATransaction *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (DATransaction)initWithLabel:(id)label
{
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = DATransaction;
  v5 = [(DATransaction *)&v15 init];
  if (v5)
  {
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    transactionId = v5->_transactionId;
    v5->_transactionId = da_newGUID;

    v8 = labelCopy;
    if (!labelCopy)
    {
      v8 = v5->_transactionId;
    }

    v9 = v8;
    label = v5->_label;
    v5->_label = v9;

    [(NSString *)v5->_label UTF8String];
    v11 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v11;

    v13 = +[DATransactionMonitor sharedTransactionMonitor];
    [v13 incrementTransactionCountForTransaction:v5->_transactionId];
  }

  return v5;
}

@end