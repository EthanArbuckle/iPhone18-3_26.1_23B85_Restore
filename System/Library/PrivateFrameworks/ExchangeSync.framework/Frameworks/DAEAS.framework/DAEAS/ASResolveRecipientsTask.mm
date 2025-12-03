@interface ASResolveRecipientsTask
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)_roundDownTo30MinuteBoundary:(id)boundary;
- (id)_roundUpTo30MinuteBoundary:(id)boundary;
- (id)initForCertificatesWithEmailAddresses:(id)addresses;
- (id)initFreeBusyQueryWithStartDate:(id)date endDate:(id)endDate emailAddresses:(id)addresses;
- (id)requestBody;
- (int64_t)availabilityStatusForExchangeStatus:(int)status;
- (int64_t)certStatusForExchangeStatus:(int)status;
- (int64_t)responseStatusForExchangeStatus:(int)status;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
@end

@implementation ASResolveRecipientsTask

- (id)_roundDownTo30MinuteBoundary:(id)boundary
{
  v3 = MEMORY[0x277CBEA80];
  boundaryCopy = boundary;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
  v7 = [v6 components:252 fromDate:boundaryCopy];

  [v7 setSecond:0];
  if ([v7 minute] >= 30)
  {
    v8 = 30;
  }

  else
  {
    v8 = 0;
  }

  [v7 setMinute:v8];
  v9 = [v6 dateFromComponents:v7];

  return v9;
}

- (id)_roundUpTo30MinuteBoundary:(id)boundary
{
  v3 = MEMORY[0x277CBEA80];
  boundaryCopy = boundary;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
  v7 = [v6 components:252 fromDate:boundaryCopy];

  [v7 setSecond:0];
  if ([v7 minute] > 29)
  {
    [v7 setMinute:0];
    v9 = MEMORY[0x277CBEAA8];
    v10 = [v6 dateFromComponents:v7];
    v8 = [v9 dateWithTimeInterval:v10 sinceDate:3600.0];
  }

  else
  {
    [v7 setMinute:30];
    v8 = [v6 dateFromComponents:v7];
  }

  return v8;
}

- (id)initForCertificatesWithEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  v11.receiver = self;
  v11.super_class = ASResolveRecipientsTask;
  v6 = [(ASTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_emailAddresses, addresses);
    v7->_retrieveCertificates = 1;
    v7->_retrieveAvailability = 0;
    startTime = v7->_startTime;
    v7->_startTime = 0;

    endTime = v7->_endTime;
    v7->_endTime = 0;
  }

  return v7;
}

- (id)initFreeBusyQueryWithStartDate:(id)date endDate:(id)endDate emailAddresses:(id)addresses
{
  dateCopy = date;
  endDateCopy = endDate;
  addressesCopy = addresses;
  v18.receiver = self;
  v18.super_class = ASResolveRecipientsTask;
  v11 = [(ASTask *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_emailAddresses, addresses);
    v12->_retrieveCertificates = 0;
    v12->_retrieveAvailability = 1;
    v13 = [(ASResolveRecipientsTask *)v12 _roundDownTo30MinuteBoundary:dateCopy];
    startTime = v12->_startTime;
    v12->_startTime = v13;

    v15 = [(ASResolveRecipientsTask *)v12 _roundUpTo30MinuteBoundary:endDateCopy];
    endTime = v12->_endTime;
    v12->_endTime = v15;
  }

  return v12;
}

- (id)requestBody
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 switchToCodePage:10];
  [v3 openTag:5];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = self->_emailAddresses;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([v9 hasPrefix:{@"mailto:", v28}])
        {
          v10 = [v9 substringFromIndex:{objc_msgSend(@"mailto:", "length")}];
          [v3 appendTag:16 withStringContent:v10];
        }

        else
        {
          [v3 appendTag:16 withStringContent:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [v3 openTag:15];
  [v3 appendTag:20 withIntContent:0];
  if ([(ASResolveRecipientsTask *)self retrieveCertificates])
  {
    [v3 appendTag:17 withIntContent:2];
  }

  if ([(ASResolveRecipientsTask *)self retrieveAvailability])
  {
    startTime = [(ASResolveRecipientsTask *)self startTime];
    if (startTime)
    {
      v12 = startTime;
      endTime = [(ASResolveRecipientsTask *)self endTime];

      if (endTime)
      {
        if (!requestBody_dateFormatter)
        {
          v14 = objc_opt_new();
          v15 = requestBody_dateFormatter;
          requestBody_dateFormatter = v14;

          v16 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
          [requestBody_dateFormatter setLocale:v16];
          [requestBody_dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'.000Z'"];
          v17 = requestBody_dateFormatter;
          v18 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
          [v17 setTimeZone:v18];
        }

        [v3 openTag:22];
        v19 = requestBody_dateFormatter;
        startTime2 = [(ASResolveRecipientsTask *)self startTime];
        v21 = [v19 stringFromDate:startTime2];
        [v3 appendTag:23 withStringContent:v21];

        v22 = requestBody_dateFormatter;
        endTime2 = [(ASResolveRecipientsTask *)self endTime];
        v24 = [v22 stringFromDate:endTime2];
        [v3 appendTag:24 withStringContent:v24];

        [v3 closeTag:22];
      }
    }
  }

  [v3 closeTag:15];
  [v3 closeTag:5];
  data = [v3 data];

  v26 = *MEMORY[0x277D85DE8];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 10;
  *token = 5;
  *statusToken = 7;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([contextCopy currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to resolve recipients code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASResolveRecipientsTask.m", 160, objc_msgSend(contextCopy, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 10)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to resolve recipients code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASResolveRecipientsTask.m", 160, objc_msgSend(contextCopy, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:10];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v10];

      goto LABEL_2;
    }

    if (![contextCopy hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([contextCopy currentByte] & 0x3F) == 5)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected resolve recipients response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASResolveRecipientsTask.m", 161, objc_msgSend(contextCopy, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v12];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v16 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    curOffset = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v16 = 0;
LABEL_31:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)finishWithError:(id)error
{
  v96 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (!errorCopy)
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    v8 = currentlyParsingItem;
    if (currentlyParsingItem && [currentlyParsingItem parsingState]== 2)
    {
      v15 = DALoggingwithCategory();
      type = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v15, type))
      {
        *buf = 138412546;
        selfCopy2 = objc_opt_class();
        v92 = 2112;
        *v93 = v8;
        v16 = selfCopy2;
        _os_log_impl(&dword_24A0AC000, v15, type, "%@ Parsed response of %@", buf, 0x16u);
      }

      easStatus = [v8 easStatus];
      v13 = -[ASResolveRecipientsTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [easStatus intValue]);

      if (v13 != 2)
      {
        v12 = 0;
        goto LABEL_58;
      }

      v18 = MEMORY[0x277CBEB38];
      responses = [v8 responses];
      v12 = [v18 dictionaryWithCapacity:{objc_msgSend(responses, "count")}];

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      responses2 = [v8 responses];
      v64 = [responses2 countByEnumeratingWithState:&v85 objects:v95 count:16];
      if (v64)
      {
        v59 = v8;
        v60 = 0;
        v63 = *v86;
        selfCopy = self;
        v61 = responses2;
        v62 = v12;
        do
        {
          v21 = 0;
          do
          {
            if (*v86 != v63)
            {
              objc_enumerationMutation(responses2);
            }

            v66 = v21;
            v22 = *(*(&v85 + 1) + 8 * v21);
            emailAddress = [v22 emailAddress];
            v24 = objc_opt_new();
            v65 = emailAddress;
            [v12 setObject:v24 forKeyedSubscript:emailAddress];
            easStatus2 = [v22 easStatus];
            [v24 setStatus:{-[ASResolveRecipientsTask responseStatusForExchangeStatus:](self, "responseStatusForExchangeStatus:", objc_msgSend(easStatus2, "intValue"))}];

            if ([v24 status] == 2)
            {
              v83 = 0u;
              v84 = 0u;
              v81 = 0u;
              v82 = 0u;
              obj = [v22 recipients];
              v26 = [obj countByEnumeratingWithState:&v81 objects:v94 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v82;
                v69 = *v82;
                do
                {
                  v29 = 0;
                  v70 = v27;
                  do
                  {
                    if (*v82 != v28)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v30 = *(*(&v81 + 1) + 8 * v29);
                    emailAddress2 = [v30 emailAddress];
                    certificates = [v30 certificates];
                    v33 = certificates;
                    if (certificates)
                    {
                      [certificates easStatus];
                      v35 = v34 = v33;
                      [v24 setCertificatesStatus:{-[ASResolveRecipientsTask certStatusForExchangeStatus:](self, "certStatusForExchangeStatus:", objc_msgSend(v35, "intValue"))}];

                      if ([v24 certificatesStatus] == 2)
                      {
                        recipientCount = [v34 recipientCount];
                        intValue = [recipientCount intValue];
                        v72 = v34;
                        certCount = [v34 certCount];
                        intValue2 = [certCount intValue];

                        if (intValue > intValue2)
                        {
                          v40 = DALoggingwithCategory();
                          if (os_log_type_enabled(v40, type))
                          {
                            recipientCount2 = [v72 recipientCount];
                            intValue3 = [recipientCount2 intValue];
                            certCount2 = [v72 certCount];
                            intValue4 = [certCount2 intValue];
                            *buf = 138412802;
                            selfCopy2 = emailAddress2;
                            v92 = 1024;
                            *v93 = intValue3;
                            *&v93[4] = 1024;
                            *&v93[6] = intValue4;
                            _os_log_impl(&dword_24A0AC000, v40, type, "for email address %@, we have %d recipients, but only %d certs", buf, 0x18u);
                          }

                          [v24 setCertificatesStatus:66];
                        }

                        v79 = 0u;
                        v80 = 0u;
                        v77 = 0u;
                        v78 = 0u;
                        certificates2 = [v72 certificates];
                        v46 = [certificates2 countByEnumeratingWithState:&v77 objects:v89 count:16];
                        if (v46)
                        {
                          v47 = v46;
                          v48 = *v78;
                          do
                          {
                            for (i = 0; i != v47; ++i)
                            {
                              if (*v78 != v48)
                              {
                                objc_enumerationMutation(certificates2);
                              }

                              v50 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:*(*(&v77 + 1) + 8 * i) options:0];
                              [v24 addCert:v50 forEmailAddress:emailAddress2];
                            }

                            v47 = [certificates2 countByEnumeratingWithState:&v77 objects:v89 count:16];
                          }

                          while (v47);
                        }

                        self = selfCopy;
                        v28 = v69;
                        v27 = v70;
                        v33 = v72;
                      }

                      else
                      {
                        v33 = v34;
                        if ([(ASResolveRecipientsTask *)self retrieveCertificates]&& ![(ASResolveRecipientsTask *)self retrieveAvailability])
                        {
                          [v24 setStatus:66];
                        }
                      }
                    }

                    else
                    {
                      [v24 setCertificatesStatus:10];
                    }

                    availability = [v30 availability];
                    v52 = availability;
                    if (availability)
                    {
                      easStatus3 = [availability easStatus];
                      [v24 setAvailabilityStatus:{-[ASResolveRecipientsTask availabilityStatusForExchangeStatus:](self, "availabilityStatusForExchangeStatus:", objc_msgSend(easStatus3, "intValue"))}];

                      if ([v24 availabilityStatus] == 2)
                      {
                        mergedFreeBusy = [v52 mergedFreeBusy];
                        [v24 setMergedFreeBusy:mergedFreeBusy];
                      }
                    }

                    else
                    {
                      [v24 setAvailabilityStatus:10];
                    }

                    ++v29;
                  }

                  while (v29 != v27);
                  v27 = [obj countByEnumeratingWithState:&v81 objects:v94 count:16];
                }

                while (v27);
              }

              responses2 = v61;
              v12 = v62;
            }

            v21 = v66 + 1;
          }

          while (v66 + 1 != v64);
          v64 = [responses2 countByEnumeratingWithState:&v85 objects:v95 count:16];
        }

        while (v64);
        v8 = v59;
        errorCopy = v60;
      }

      v13 = 2;
    }

    else
    {
      responses2 = DALoggingwithCategory();
      v55 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(responses2, v55))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_24A0AC000, responses2, v55, "%@ Parse error: no resolve recipients response!", buf, 0xCu);
      }

      v12 = 0;
      v13 = 1;
    }

    goto LABEL_58;
  }

  v6 = v5;
  v7 = DALoggingwithCategory();
  v8 = v7;
  if (v6 == -1)
  {
    v56 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v56))
    {
      *buf = 138412290;
      selfCopy2 = objc_opt_class();
      v57 = selfCopy2;
      _os_log_impl(&dword_24A0AC000, v8, v56, "%@ cancelled", buf, 0xCu);
    }

    v12 = 0;
    v13 = -1;
  }

  else
  {
    v9 = v6;
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v10))
    {
      *buf = 138412546;
      selfCopy2 = objc_opt_class();
      v92 = 2112;
      *v93 = errorCopy;
      v11 = selfCopy2;
      _os_log_impl(&dword_24A0AC000, v8, v10, "%@ failed: %@", buf, 0x16u);
    }

    v12 = 0;
    v13 = v9;
  }

LABEL_58:

  if (![(ASTask *)self attemptRetryWithStatus:v13 error:errorCopy])
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __43__ASResolveRecipientsTask_finishWithError___block_invoke;
    v73[3] = &unk_278FC7D70;
    v73[4] = self;
    v76 = v13;
    v74 = errorCopy;
    v75 = v12;
    [(ASTask *)self finishWithError:v74 afterDelegateCallout:v73];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v58 = *MEMORY[0x277D85DE8];
}

void __43__ASResolveRecipientsTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained resolveRecipientsTask:a1[4] completedWithStatus:a1[7] error:a1[5] queriedEmailAddressToRecpient:a1[6]];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  if ((status - 1) > 5)
  {
    return 10;
  }

  else
  {
    return qword_24A14E1C0[status - 1];
  }
}

- (int64_t)responseStatusForExchangeStatus:(int)status
{
  if ((status - 1) > 3)
  {
    return 10;
  }

  else
  {
    return qword_24A14E1F0[status - 1];
  }
}

- (int64_t)certStatusForExchangeStatus:(int)status
{
  v3 = 10;
  if (status == 7)
  {
    v3 = 12;
  }

  if (status == 1)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (int64_t)availabilityStatusForExchangeStatus:(int)status
{
  if (status == 1)
  {
    return 2;
  }

  else
  {
    return 10;
  }
}

@end