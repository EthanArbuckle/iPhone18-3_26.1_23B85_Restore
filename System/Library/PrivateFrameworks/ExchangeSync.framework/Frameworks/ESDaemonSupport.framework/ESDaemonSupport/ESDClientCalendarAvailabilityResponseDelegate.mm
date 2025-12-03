@interface ESDClientCalendarAvailabilityResponseDelegate
- (ESDClientCalendarAvailabilityResponseDelegate)initWithAccountID:(id)d client:(id)client startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses;
- (void)calendarAvailabilityRequestReturnedResults:(id)results;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)performRequest;
@end

@implementation ESDClientCalendarAvailabilityResponseDelegate

- (ESDClientCalendarAvailabilityResponseDelegate)initWithAccountID:(id)d client:(id)client startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses
{
  dateCopy = date;
  endDateCopy = endDate;
  iDCopy = iD;
  addressesCopy = addresses;
  v27.receiver = self;
  v27.super_class = ESDClientCalendarAvailabilityResponseDelegate;
  v18 = [(ESDClientDelegate *)&v27 initWithAccountID:d client:client];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    objc_storeStrong(&v19->_ignoredEventID, iD);
    objc_storeStrong(&v19->_addresses, addresses);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    uTF8String = [v21 UTF8String];

    v23 = dispatch_queue_create(uTF8String, 0);
    queue = v19->_queue;
    v19->_queue = v23;
  }

  return v19;
}

- (void)dealloc
{
  [(ESDClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = ESDClientCalendarAvailabilityResponseDelegate;
  [(ESDClientDelegate *)&v3 dealloc];
}

- (void)finishWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *buf = 138412546;
      v30 = objc_opt_class();
      v31 = 2112;
      v32 = errorCopy;
      v8 = v30;
      _os_log_impl(&dword_24A184000, v5, v7, "[%@] finished with error %@", buf, 0x16u);
    }

    if (self->_requestID)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277D038E0]])
      {
        code = [errorCopy code];

        if (code == -1)
        {
          v11 = +[ESDAgentManager sharedManager];
          accountID = [(ESDClientDelegate *)self accountID];
          v13 = [v11 accountWithAccountID:accountID];

          if (v13)
          {
            [v13 cancelCalendarAvailabilityRequestWithID:self->_requestID];
          }

          else
          {
            v18 = DALoggingwithCategory();
            v19 = *(v6 + 3);
            if (os_log_type_enabled(v18, v19))
            {
              v20 = objc_opt_class();
              v21 = v20;
              accountID2 = [(ESDClientDelegate *)self accountID];
              *buf = 138412546;
              v30 = v20;
              v31 = 2112;
              v32 = accountID2;
              _os_log_impl(&dword_24A184000, v18, v19, "[%@] finished, but could not find an account with the ID %@", buf, 0x16u);
            }
          }

          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    queue = self->_queue;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __65__ESDClientCalendarAvailabilityResponseDelegate_finishWithError___block_invoke;
    v26 = &unk_278FCDB98;
    selfCopy = self;
    v28 = errorCopy;
    dispatch_sync(queue, &v23);

LABEL_12:
    v15 = [(ESDClientDelegate *)self client:v23];
    delegateID = [(ESDClientDelegate *)self delegateID];
    [v15 delegateWithIDIsGoingAway:delegateID];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __65__ESDClientCalendarAvailabilityResponseDelegate_finishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  connection = [v2 rawConnection];

  v3 = connection;
  if (connection)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v4 setObject:*MEMORY[0x277D03A50] forKey:*MEMORY[0x277D03C88]];
    v5 = [*(a1 + 32) delegateID];
    [v4 setObject:v5 forKey:*MEMORY[0x277D03A58]];

    if (*(a1 + 40))
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:?];
      [v4 setObject:v6 forKey:*MEMORY[0x277D03B40]];
    }

    v7 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(connection, v7);

    v3 = connection;
  }
}

- (void)performRequest
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[ESDAgentManager sharedManager];
    accountID = [(ESDClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:accountID];

    if (v5)
    {
      v6 = [v5 requestCalendarAvailabilityForStartDate:self->_startDate endDate:self->_endDate ignoredEventID:self->_ignoredEventID addresses:self->_addresses consumer:self];
      requestID = self->_requestID;
      self->_requestID = v6;
    }

    else
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, v9))
      {
        accountID2 = [(ESDClientDelegate *)self accountID];
        v13 = 138412290;
        v14 = accountID2;
        _os_log_impl(&dword_24A184000, v8, v9, "Could not get an account with the ID [%@]", &v13, 0xCu);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(ESDClientCalendarAvailabilityResponseDelegate *)self finishWithError:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)calendarAvailabilityRequestReturnedResults:(id)results
{
  resultsCopy = results;
  if (resultsCopy && !-[DADisableableObject isDisabled](self, "isDisabled") && [resultsCopy count])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __92__ESDClientCalendarAvailabilityResponseDelegate_calendarAvailabilityRequestReturnedResults___block_invoke;
    v6[3] = &unk_278FCDB98;
    v6[4] = self;
    v7 = resultsCopy;
    dispatch_sync(queue, v6);
  }
}

void __92__ESDClientCalendarAvailabilityResponseDelegate_calendarAvailabilityRequestReturnedResults___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) client];
  v3 = [v2 rawConnection];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 40)];
    v5 = *MEMORY[0x277D03C88];
    v12[0] = *MEMORY[0x277D03A60];
    v6 = *MEMORY[0x277D03A58];
    v11[0] = v5;
    v11[1] = v6;
    v7 = [*(a1 + 32) delegateID];
    v11[2] = *MEMORY[0x277D03A68];
    v12[1] = v7;
    v12[2] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(v3, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end