@interface CalDAVScheduleResponseItem
- (id)copyParseRules;
- (id)description;
- (void)addNewTopLevelItem:(id)a3;
@end

@implementation CalDAVScheduleResponseItem

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDDC0];
  v4 = *MEMORY[0x277CFDFE8];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDDC0] elementName:*MEMORY[0x277CFDFE8] objectClass:objc_opt_class() setterMethod:sel_addNewTopLevelItem_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v7 = [v2 initWithObjectsAndKeys:{v5, v6, 0}];

  return v7;
}

- (void)addNewTopLevelItem:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CalDAVScheduleResponseItem *)self responses];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [(CalDAVScheduleResponseItem *)self setResponses:v7];
    }

    v8 = [(CalDAVScheduleResponseItem *)self responses];
    [v8 addObject:v5];

    v9 = [v5 recipientHREF];
    v10 = [v9 href];
    v11 = [v10 payloadAsString];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v5 requestStatus];
      v14 = [v13 payloadAsString];

      if (([v14 hasPrefix:@"2."] & 1) != 0 || objc_msgSend(v14, "hasPrefix:", @"1."))
      {
        v15 = [v5 calendarData];

        if (!v15)
        {
LABEL_23:

          goto LABEL_24;
        }

        v16 = [(CalDAVScheduleResponseItem *)self successfulICS];

        if (!v16)
        {
          v17 = [MEMORY[0x277CBEB58] set];
          [(CalDAVScheduleResponseItem *)self setSuccessfulICS:v17];
        }

        v18 = [(CalDAVScheduleResponseItem *)self successfulICS];
        v19 = [v5 calendarData];
        [v18 addObject:v19];
      }

      else
      {
        v24 = [(CalDAVScheduleResponseItem *)self failedResponseItems];

        if (!v24)
        {
          v25 = [MEMORY[0x277CBEB58] set];
          [(CalDAVScheduleResponseItem *)self setFailedResponseItems:v25];
        }

        v18 = [(CalDAVScheduleResponseItem *)self failedResponseItems];
        [v18 addObject:v5];
      }

      goto LABEL_23;
    }

    v21 = [MEMORY[0x277CFDC18] sharedLogging];
    v22 = [v21 logHandleForAccountInfoProvider:0];
    v23 = v22;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = v5;
      _os_log_impl(&dword_242742000, v23, OS_LOG_TYPE_DEBUG, "Ignoring strange response item with no parsed recipient %@", &v27, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CFDC18] sharedLogging];
    v20 = [v5 logHandleForAccountInfoProvider:0];
    v21 = v20;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = v4;
      _os_log_impl(&dword_242742000, v21, OS_LOG_TYPE_DEBUG, "Dropping unexpected child %@", &v27, 0xCu);
    }
  }

LABEL_24:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  failedResponseItems = self->_failedResponseItems;
  v7 = [v3 stringWithFormat:@"%@ %p: FailedAttendees:\n%@\nSuccessfulICS:\n%@", v5, self, failedResponseItems, self->_successfulICS];

  return v7;
}

@end