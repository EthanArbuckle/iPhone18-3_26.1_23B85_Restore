@interface CalDAVScheduleResponseItem
- (id)copyParseRules;
- (id)description;
- (void)addNewTopLevelItem:(id)item;
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

- (void)addNewTopLevelItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277CFDC18]2 = itemCopy;
    responses = [(CalDAVScheduleResponseItem *)self responses];

    if (!responses)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [(CalDAVScheduleResponseItem *)self setResponses:v7];
    }

    responses2 = [(CalDAVScheduleResponseItem *)self responses];
    [responses2 addObject:mEMORY[0x277CFDC18]2];

    recipientHREF = [mEMORY[0x277CFDC18]2 recipientHREF];
    href = [recipientHREF href];
    payloadAsString = [href payloadAsString];
    v12 = [payloadAsString length];

    if (v12)
    {
      requestStatus = [mEMORY[0x277CFDC18]2 requestStatus];
      payloadAsString2 = [requestStatus payloadAsString];

      if (([payloadAsString2 hasPrefix:@"2."] & 1) != 0 || objc_msgSend(payloadAsString2, "hasPrefix:", @"1."))
      {
        calendarData = [mEMORY[0x277CFDC18]2 calendarData];

        if (!calendarData)
        {
LABEL_23:

          goto LABEL_24;
        }

        successfulICS = [(CalDAVScheduleResponseItem *)self successfulICS];

        if (!successfulICS)
        {
          v17 = [MEMORY[0x277CBEB58] set];
          [(CalDAVScheduleResponseItem *)self setSuccessfulICS:v17];
        }

        successfulICS2 = [(CalDAVScheduleResponseItem *)self successfulICS];
        calendarData2 = [mEMORY[0x277CFDC18]2 calendarData];
        [successfulICS2 addObject:calendarData2];
      }

      else
      {
        failedResponseItems = [(CalDAVScheduleResponseItem *)self failedResponseItems];

        if (!failedResponseItems)
        {
          v25 = [MEMORY[0x277CBEB58] set];
          [(CalDAVScheduleResponseItem *)self setFailedResponseItems:v25];
        }

        successfulICS2 = [(CalDAVScheduleResponseItem *)self failedResponseItems];
        [successfulICS2 addObject:mEMORY[0x277CFDC18]2];
      }

      goto LABEL_23;
    }

    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    v22 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
    v23 = v22;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = mEMORY[0x277CFDC18]2;
      _os_log_impl(&dword_242742000, v23, OS_LOG_TYPE_DEBUG, "Ignoring strange response item with no parsed recipient %@", &v27, 0xCu);
    }
  }

  else
  {
    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v20 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:0];
    mEMORY[0x277CFDC18] = v20;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = itemCopy;
      _os_log_impl(&dword_242742000, mEMORY[0x277CFDC18], OS_LOG_TYPE_DEBUG, "Dropping unexpected child %@", &v27, 0xCu);
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