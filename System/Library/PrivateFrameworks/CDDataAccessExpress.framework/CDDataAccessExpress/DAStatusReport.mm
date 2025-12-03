@interface DAStatusReport
- (DAStatusReport)init;
- (DAStatusReport)initWithDictionaryRepresentation:(id)representation;
- (NSNumber)timeSpan;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeStatusReport:(id)report;
- (void)noteFailedNetworkRequest;
- (void)noteFailedProtocolRequest;
- (void)noteFalseMoreAvailableResponse;
- (void)noteNewHBIDataPoint:(int)point;
- (void)noteSuccessfulRequestWithNumDownloadedElements:(int)elements numUploadedElements:(int)uploadedElements;
- (void)noteTimeSpentInNetworking:(double)networking;
@end

@implementation DAStatusReport

- (DAStatusReport)init
{
  v5.receiver = self;
  v5.super_class = DAStatusReport;
  v2 = [(DAStatusReport *)&v5 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(DAStatusReport *)v2 setCreationDate:date];
  }

  return v2;
}

- (DAStatusReport)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v26.receiver = self;
  v26.super_class = DAStatusReport;
  v5 = [(DAStatusReport *)&v26 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:kDAStatusReportPersistentUUID];
    [(DAStatusReport *)v5 setPersistentUUID:v6];

    v7 = [representationCopy objectForKeyedSubscript:kDAStatusReportDisplayName];
    [(DAStatusReport *)v5 setDisplayName:v7];

    v8 = [representationCopy objectForKeyedSubscript:kDAStatusReportAccountType];
    [(DAStatusReport *)v5 setAccountType:v8];

    v9 = [representationCopy objectForKeyedSubscript:kDAStatusReportTimeSpan];
    [(DAStatusReport *)v5 setTimeSpan:v9];

    v10 = [representationCopy objectForKeyedSubscript:kDAStatusReportTimeInNetworking];
    [(DAStatusReport *)v5 setTimeInNetworking:v10];

    v11 = [representationCopy objectForKeyedSubscript:kDAStatusReportAverageHBI];
    [(DAStatusReport *)v5 setAverageHBI:v11];

    v12 = [representationCopy objectForKeyedSubscript:kDAStatusReportSuccessfulRequests];
    [(DAStatusReport *)v5 setSuccessfulRequests:v12];

    v13 = [representationCopy objectForKeyedSubscript:kDAStatusReportFailedNetworkRequests];
    [(DAStatusReport *)v5 setFailedNetworkRequests:v13];

    v14 = [representationCopy objectForKeyedSubscript:kDAStatusReportFailedProtocolRequests];
    [(DAStatusReport *)v5 setFailedProtocolRequests:v14];

    v15 = [representationCopy objectForKeyedSubscript:kDAStatusReportDownloadedElements];
    [(DAStatusReport *)v5 setDownloadedElements:v15];

    v16 = [representationCopy objectForKeyedSubscript:kDAStatusReportUploadedElements];
    [(DAStatusReport *)v5 setUploadedElements:v16];

    v17 = [representationCopy objectForKeyedSubscript:kDAStatusReportFalseMoreAvailableCount];
    [(DAStatusReport *)v5 setFalseMoreAvailableCount:v17];

    v18 = [representationCopy objectForKeyedSubscript:kDAStatusReportProtocolVersion];
    [(DAStatusReport *)v5 setProtocolVersion:v18];

    v19 = [representationCopy objectForKeyedSubscript:kDAStatusReportSyncingAllowed];
    v20 = v19;
    if (v19)
    {
      bOOLValue = [v19 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(DAStatusReport *)v5 setSyncingAllowed:bOOLValue];
    v22 = [representationCopy objectForKeyedSubscript:kDAStatusReportLastSuccessDate];
    [(DAStatusReport *)v5 setLastSuccessDate:v22];

    v23 = [representationCopy objectForKeyedSubscript:kDAStatusReportLastFailureDate];
    [(DAStatusReport *)v5 setLastFailureDate:v23];

    v24 = [representationCopy objectForKeyedSubscript:kDAStatusReportIsDelegate];
    [(DAStatusReport *)v5 setIsDelegate:v24];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  persistentUUID = [(DAStatusReport *)self persistentUUID];

  if (persistentUUID)
  {
    persistentUUID2 = [(DAStatusReport *)self persistentUUID];
    [dictionary setObject:persistentUUID2 forKeyedSubscript:kDAStatusReportPersistentUUID];
  }

  displayName = [(DAStatusReport *)self displayName];

  if (displayName)
  {
    displayName2 = [(DAStatusReport *)self displayName];
    [dictionary setObject:displayName2 forKeyedSubscript:kDAStatusReportDisplayName];
  }

  accountType = [(DAStatusReport *)self accountType];

  if (accountType)
  {
    accountType2 = [(DAStatusReport *)self accountType];
    [dictionary setObject:accountType2 forKeyedSubscript:kDAStatusReportAccountType];
  }

  timeSpan = [(DAStatusReport *)self timeSpan];

  if (timeSpan)
  {
    timeSpan2 = [(DAStatusReport *)self timeSpan];
    [dictionary setObject:timeSpan2 forKeyedSubscript:kDAStatusReportTimeSpan];
  }

  timeInNetworking = [(DAStatusReport *)self timeInNetworking];

  if (timeInNetworking)
  {
    timeInNetworking2 = [(DAStatusReport *)self timeInNetworking];
    [dictionary setObject:timeInNetworking2 forKeyedSubscript:kDAStatusReportTimeInNetworking];
  }

  averageHBI = [(DAStatusReport *)self averageHBI];

  if (averageHBI)
  {
    averageHBI2 = [(DAStatusReport *)self averageHBI];
    [dictionary setObject:averageHBI2 forKeyedSubscript:kDAStatusReportAverageHBI];
  }

  successfulRequests = [(DAStatusReport *)self successfulRequests];

  if (successfulRequests)
  {
    successfulRequests2 = [(DAStatusReport *)self successfulRequests];
    [dictionary setObject:successfulRequests2 forKeyedSubscript:kDAStatusReportSuccessfulRequests];
  }

  failedNetworkRequests = [(DAStatusReport *)self failedNetworkRequests];

  if (failedNetworkRequests)
  {
    failedNetworkRequests2 = [(DAStatusReport *)self failedNetworkRequests];
    [dictionary setObject:failedNetworkRequests2 forKeyedSubscript:kDAStatusReportFailedNetworkRequests];
  }

  failedProtocolRequests = [(DAStatusReport *)self failedProtocolRequests];

  if (failedProtocolRequests)
  {
    failedProtocolRequests2 = [(DAStatusReport *)self failedProtocolRequests];
    [dictionary setObject:failedProtocolRequests2 forKeyedSubscript:kDAStatusReportFailedProtocolRequests];
  }

  downloadedElements = [(DAStatusReport *)self downloadedElements];

  if (downloadedElements)
  {
    downloadedElements2 = [(DAStatusReport *)self downloadedElements];
    [dictionary setObject:downloadedElements2 forKeyedSubscript:kDAStatusReportDownloadedElements];
  }

  uploadedElements = [(DAStatusReport *)self uploadedElements];

  if (uploadedElements)
  {
    uploadedElements2 = [(DAStatusReport *)self uploadedElements];
    [dictionary setObject:uploadedElements2 forKeyedSubscript:kDAStatusReportUploadedElements];
  }

  protocolVersion = [(DAStatusReport *)self protocolVersion];

  if (protocolVersion)
  {
    protocolVersion2 = [(DAStatusReport *)self protocolVersion];
    [dictionary setObject:protocolVersion2 forKeyedSubscript:kDAStatusReportProtocolVersion];
  }

  falseMoreAvailableCount = [(DAStatusReport *)self falseMoreAvailableCount];

  if (falseMoreAvailableCount)
  {
    falseMoreAvailableCount2 = [(DAStatusReport *)self falseMoreAvailableCount];
    [dictionary setObject:falseMoreAvailableCount2 forKeyedSubscript:kDAStatusReportFalseMoreAvailableCount];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAStatusReport syncingAllowed](self, "syncingAllowed")}];
  [dictionary setObject:v30 forKeyedSubscript:kDAStatusReportSyncingAllowed];

  lastSuccessDate = [(DAStatusReport *)self lastSuccessDate];

  if (lastSuccessDate)
  {
    lastSuccessDate2 = [(DAStatusReport *)self lastSuccessDate];
    [dictionary setObject:lastSuccessDate2 forKeyedSubscript:kDAStatusReportLastSuccessDate];
  }

  lastFailureDate = [(DAStatusReport *)self lastFailureDate];

  if (lastFailureDate)
  {
    lastFailureDate2 = [(DAStatusReport *)self lastFailureDate];
    [dictionary setObject:lastFailureDate2 forKeyedSubscript:kDAStatusReportLastFailureDate];
  }

  isDelegate = [(DAStatusReport *)self isDelegate];

  if (isDelegate)
  {
    isDelegate2 = [(DAStatusReport *)self isDelegate];
    [dictionary setObject:isDelegate2 forKeyedSubscript:kDAStatusReportIsDelegate];
  }

  return dictionary;
}

- (void)mergeStatusReport:(id)report
{
  v111 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  persistentUUID = [reportCopy persistentUUID];
  if (persistentUUID)
  {
    v6 = persistentUUID;
    persistentUUID2 = [reportCopy persistentUUID];
    persistentUUID3 = [(DAStatusReport *)self persistentUUID];
    v9 = [persistentUUID2 isEqualToString:persistentUUID3];

    if ((v9 & 1) == 0)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v107 = 138412546;
        selfCopy2 = self;
        v109 = 2112;
        v110 = reportCopy;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Why are we combining status reports for different accounts? %@ vs. %@", &v107, 0x16u);
      }
    }
  }

  displayName = [reportCopy displayName];
  if (displayName)
  {
    v12 = displayName;
    displayName2 = [(DAStatusReport *)self displayName];

    if (!displayName2)
    {
      displayName3 = [reportCopy displayName];
      [(DAStatusReport *)self setDisplayName:displayName3];
    }
  }

  accountType = [reportCopy accountType];
  if (accountType)
  {
    v16 = accountType;
    accountType2 = [reportCopy accountType];
    accountType3 = [(DAStatusReport *)self accountType];
    v19 = [accountType2 isEqualToString:accountType3];

    if ((v19 & 1) == 0)
    {
      v20 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v107 = 138412546;
        selfCopy2 = self;
        v109 = 2112;
        v110 = reportCopy;
        _os_log_impl(&dword_242505000, v20, OS_LOG_TYPE_ERROR, "Why are we combining status reports for different accounts? %@ vs. %@", &v107, 0x16u);
      }
    }
  }

  timeSpan = [reportCopy timeSpan];
  intValue = [timeSpan intValue];
  timeSpan2 = [(DAStatusReport *)self timeSpan];
  intValue2 = [timeSpan2 intValue];

  if (intValue > intValue2)
  {
    timeSpan3 = [reportCopy timeSpan];
    [(DAStatusReport *)self setTimeSpan:timeSpan3];
  }

  timeInNetworking = [(DAStatusReport *)self timeInNetworking];
  if (timeInNetworking)
  {

LABEL_19:
    v28 = MEMORY[0x277CCABB0];
    timeInNetworking2 = [(DAStatusReport *)self timeInNetworking];
    [timeInNetworking2 doubleValue];
    v31 = v30;
    timeInNetworking3 = [reportCopy timeInNetworking];
    [timeInNetworking3 doubleValue];
    v34 = [v28 numberWithDouble:v31 + v33];
    [(DAStatusReport *)self setTimeInNetworking:v34];

    goto LABEL_20;
  }

  timeInNetworking4 = [reportCopy timeInNetworking];

  if (timeInNetworking4)
  {
    goto LABEL_19;
  }

LABEL_20:
  averageHBI = [reportCopy averageHBI];
  if (averageHBI)
  {
    v36 = averageHBI;
    averageHBI2 = [(DAStatusReport *)self averageHBI];

    if (!averageHBI2)
    {
      averageHBI3 = [reportCopy averageHBI];
      [(DAStatusReport *)self setAverageHBI:averageHBI3];
    }
  }

  successfulRequests = [(DAStatusReport *)self successfulRequests];
  if (successfulRequests)
  {
  }

  else
  {
    successfulRequests2 = [reportCopy successfulRequests];

    if (!successfulRequests2)
    {
      goto LABEL_27;
    }
  }

  v41 = MEMORY[0x277CCABB0];
  successfulRequests3 = [(DAStatusReport *)self successfulRequests];
  intValue3 = [successfulRequests3 intValue];
  successfulRequests4 = [reportCopy successfulRequests];
  v45 = [v41 numberWithInt:{objc_msgSend(successfulRequests4, "intValue") + intValue3}];
  [(DAStatusReport *)self setSuccessfulRequests:v45];

LABEL_27:
  failedNetworkRequests = [(DAStatusReport *)self failedNetworkRequests];
  if (failedNetworkRequests)
  {
  }

  else
  {
    failedNetworkRequests2 = [reportCopy failedNetworkRequests];

    if (!failedNetworkRequests2)
    {
      goto LABEL_31;
    }
  }

  v48 = MEMORY[0x277CCABB0];
  failedNetworkRequests3 = [(DAStatusReport *)self failedNetworkRequests];
  intValue4 = [failedNetworkRequests3 intValue];
  failedNetworkRequests4 = [reportCopy failedNetworkRequests];
  v52 = [v48 numberWithInt:{objc_msgSend(failedNetworkRequests4, "intValue") + intValue4}];
  [(DAStatusReport *)self setFailedNetworkRequests:v52];

LABEL_31:
  failedProtocolRequests = [(DAStatusReport *)self failedProtocolRequests];
  if (failedProtocolRequests)
  {
  }

  else
  {
    failedProtocolRequests2 = [reportCopy failedProtocolRequests];

    if (!failedProtocolRequests2)
    {
      goto LABEL_35;
    }
  }

  v55 = MEMORY[0x277CCABB0];
  failedProtocolRequests3 = [(DAStatusReport *)self failedProtocolRequests];
  intValue5 = [failedProtocolRequests3 intValue];
  failedProtocolRequests4 = [reportCopy failedProtocolRequests];
  v59 = [v55 numberWithInt:{objc_msgSend(failedProtocolRequests4, "intValue") + intValue5}];
  [(DAStatusReport *)self setFailedProtocolRequests:v59];

LABEL_35:
  downloadedElements = [(DAStatusReport *)self downloadedElements];
  if (downloadedElements)
  {
  }

  else
  {
    downloadedElements2 = [reportCopy downloadedElements];

    if (!downloadedElements2)
    {
      goto LABEL_39;
    }
  }

  v62 = MEMORY[0x277CCABB0];
  downloadedElements3 = [(DAStatusReport *)self downloadedElements];
  intValue6 = [downloadedElements3 intValue];
  downloadedElements4 = [reportCopy downloadedElements];
  v66 = [v62 numberWithInt:{objc_msgSend(downloadedElements4, "intValue") + intValue6}];
  [(DAStatusReport *)self setDownloadedElements:v66];

LABEL_39:
  uploadedElements = [(DAStatusReport *)self uploadedElements];
  if (uploadedElements)
  {
  }

  else
  {
    uploadedElements2 = [reportCopy uploadedElements];

    if (!uploadedElements2)
    {
      goto LABEL_43;
    }
  }

  v69 = MEMORY[0x277CCABB0];
  uploadedElements3 = [(DAStatusReport *)self uploadedElements];
  intValue7 = [uploadedElements3 intValue];
  uploadedElements4 = [reportCopy uploadedElements];
  v73 = [v69 numberWithInt:{objc_msgSend(uploadedElements4, "intValue") + intValue7}];
  [(DAStatusReport *)self setUploadedElements:v73];

LABEL_43:
  falseMoreAvailableCount = [(DAStatusReport *)self falseMoreAvailableCount];
  if (falseMoreAvailableCount)
  {

LABEL_46:
    v76 = MEMORY[0x277CCABB0];
    falseMoreAvailableCount2 = [(DAStatusReport *)self falseMoreAvailableCount];
    intValue8 = [falseMoreAvailableCount2 intValue];
    falseMoreAvailableCount3 = [reportCopy falseMoreAvailableCount];
    v80 = [v76 numberWithInt:{objc_msgSend(falseMoreAvailableCount3, "intValue") + intValue8}];
    [(DAStatusReport *)self setFalseMoreAvailableCount:v80];

    goto LABEL_47;
  }

  falseMoreAvailableCount4 = [reportCopy falseMoreAvailableCount];

  if (falseMoreAvailableCount4)
  {
    goto LABEL_46;
  }

LABEL_47:
  protocolVersion = [reportCopy protocolVersion];
  if (protocolVersion)
  {
    v82 = protocolVersion;
    protocolVersion2 = [reportCopy protocolVersion];
    protocolVersion3 = [(DAStatusReport *)self protocolVersion];
    v85 = [protocolVersion2 isEqualToString:protocolVersion3];

    if ((v85 & 1) == 0)
    {
      v86 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        protocolVersion4 = [reportCopy protocolVersion];
        v107 = 138412290;
        selfCopy2 = protocolVersion4;
        _os_log_impl(&dword_242505000, v86, OS_LOG_TYPE_INFO, "Protocol version is updated to %@", &v107, 0xCu);
      }

      protocolVersion5 = [reportCopy protocolVersion];
      [(DAStatusReport *)self setProtocolVersion:protocolVersion5];
    }
  }

  if ([(DAStatusReport *)self syncingAllowed])
  {
    syncingAllowed = [reportCopy syncingAllowed];
  }

  else
  {
    syncingAllowed = 0;
  }

  [(DAStatusReport *)self setSyncingAllowed:syncingAllowed];
  lastSuccessDate = [reportCopy lastSuccessDate];
  if (lastSuccessDate)
  {
    v91 = lastSuccessDate;
    lastSuccessDate2 = [reportCopy lastSuccessDate];
    lastSuccessDate3 = [(DAStatusReport *)self lastSuccessDate];
    v94 = [lastSuccessDate2 isEqualToDate:lastSuccessDate3];

    if ((v94 & 1) == 0)
    {
      lastSuccessDate4 = [reportCopy lastSuccessDate];
      [(DAStatusReport *)self setLastSuccessDate:lastSuccessDate4];
    }
  }

  lastFailureDate = [reportCopy lastFailureDate];
  if (lastFailureDate)
  {
    v97 = lastFailureDate;
    lastFailureDate2 = [reportCopy lastFailureDate];
    lastFailureDate3 = [(DAStatusReport *)self lastFailureDate];
    v100 = [lastFailureDate2 isEqualToDate:lastFailureDate3];

    if ((v100 & 1) == 0)
    {
      lastFailureDate4 = [reportCopy lastFailureDate];
      [(DAStatusReport *)self setLastFailureDate:lastFailureDate4];
    }
  }

  isDelegate = [reportCopy isDelegate];
  if (isDelegate)
  {
    v103 = isDelegate;
    isDelegate2 = [(DAStatusReport *)self isDelegate];

    if (!isDelegate2)
    {
      isDelegate3 = [reportCopy isDelegate];
      [(DAStatusReport *)self setIsDelegate:isDelegate3];
    }
  }

  v106 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dictionaryRepresentation = [(DAStatusReport *)self dictionaryRepresentation];
  v7 = [v3 stringWithFormat:@"%@ %p: %@", v5, self, dictionaryRepresentation];

  return v7;
}

- (NSNumber)timeSpan
{
  timeSpan = self->_timeSpan;
  if (!timeSpan)
  {
    v4 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_creationDate];
    v6 = [v4 numberWithDouble:?];
    [(DAStatusReport *)self setTimeSpan:v6];

    timeSpan = self->_timeSpan;
  }

  return timeSpan;
}

- (void)noteSuccessfulRequestWithNumDownloadedElements:(int)elements numUploadedElements:(int)uploadedElements
{
  date = [MEMORY[0x277CBEAA8] date];
  [(DAStatusReport *)self setLastSuccessDate:date];

  v8 = MEMORY[0x277CCABB0];
  successfulRequests = [(DAStatusReport *)self successfulRequests];
  v10 = [v8 numberWithInt:{objc_msgSend(successfulRequests, "intValue") + 1}];
  [(DAStatusReport *)self setSuccessfulRequests:v10];

  if (elements)
  {
    v11 = MEMORY[0x277CCABB0];
    downloadedElements = [(DAStatusReport *)self downloadedElements];
    v13 = [v11 numberWithInt:{objc_msgSend(downloadedElements, "intValue") + elements}];
    [(DAStatusReport *)self setDownloadedElements:v13];
  }

  if (uploadedElements)
  {
    v14 = MEMORY[0x277CCABB0];
    uploadedElements = [(DAStatusReport *)self uploadedElements];
    v15 = [v14 numberWithInt:{objc_msgSend(uploadedElements, "intValue") + uploadedElements}];
    [(DAStatusReport *)self setUploadedElements:v15];
  }
}

- (void)noteFailedNetworkRequest
{
  date = [MEMORY[0x277CBEAA8] date];
  [(DAStatusReport *)self setLastFailureDate:date];

  v4 = MEMORY[0x277CCABB0];
  failedNetworkRequests = [(DAStatusReport *)self failedNetworkRequests];
  v5 = [v4 numberWithInt:{objc_msgSend(failedNetworkRequests, "intValue") + 1}];
  [(DAStatusReport *)self setFailedNetworkRequests:v5];
}

- (void)noteFailedProtocolRequest
{
  v3 = MEMORY[0x277CCABB0];
  failedProtocolRequests = [(DAStatusReport *)self failedProtocolRequests];
  v4 = [v3 numberWithInt:{objc_msgSend(failedProtocolRequests, "intValue") + 1}];
  [(DAStatusReport *)self setFailedProtocolRequests:v4];
}

- (void)noteNewHBIDataPoint:(int)point
{
  averageHBI = [(DAStatusReport *)self averageHBI];
  [averageHBI doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:(point + v7 * self->_numHBIDataPoints) / (self->_numHBIDataPoints + 1)];
  [(DAStatusReport *)self setAverageHBI:v8];
}

- (void)noteTimeSpentInNetworking:(double)networking
{
  v5 = MEMORY[0x277CCABB0];
  timeInNetworking = [(DAStatusReport *)self timeInNetworking];
  [timeInNetworking doubleValue];
  networking = [v5 numberWithDouble:v6 + networking];
  [(DAStatusReport *)self setTimeInNetworking:networking];
}

- (void)noteFalseMoreAvailableResponse
{
  v3 = MEMORY[0x277CCABB0];
  falseMoreAvailableCount = [(DAStatusReport *)self falseMoreAvailableCount];
  v4 = [v3 numberWithInt:{objc_msgSend(falseMoreAvailableCount, "intValue") + 1}];
  [(DAStatusReport *)self setFalseMoreAvailableCount:v4];
}

@end