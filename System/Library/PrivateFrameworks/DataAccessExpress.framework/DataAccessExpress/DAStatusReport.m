@interface DAStatusReport
- (DAStatusReport)init;
- (DAStatusReport)initWithDictionaryRepresentation:(id)a3;
- (NSNumber)timeSpan;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeStatusReport:(id)a3;
- (void)noteFailedNetworkRequest;
- (void)noteFailedProtocolRequest;
- (void)noteFalseMoreAvailableResponse;
- (void)noteNewHBIDataPoint:(int)a3;
- (void)noteSuccessfulRequestWithNumDownloadedElements:(int)a3 numUploadedElements:(int)a4;
- (void)noteTimeSpentInNetworking:(double)a3;
@end

@implementation DAStatusReport

- (DAStatusReport)init
{
  v5.receiver = self;
  v5.super_class = DAStatusReport;
  v2 = [(DAStatusReport *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [(DAStatusReport *)v2 setCreationDate:v3];
  }

  return v2;
}

- (DAStatusReport)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DAStatusReport;
  v5 = [(DAStatusReport *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:kDAStatusReportPersistentUUID];
    [(DAStatusReport *)v5 setPersistentUUID:v6];

    v7 = [v4 objectForKeyedSubscript:kDAStatusReportDisplayName];
    [(DAStatusReport *)v5 setDisplayName:v7];

    v8 = [v4 objectForKeyedSubscript:kDAStatusReportAccountType];
    [(DAStatusReport *)v5 setAccountType:v8];

    v9 = [v4 objectForKeyedSubscript:kDAStatusReportTimeSpan];
    [(DAStatusReport *)v5 setTimeSpan:v9];

    v10 = [v4 objectForKeyedSubscript:kDAStatusReportTimeInNetworking];
    [(DAStatusReport *)v5 setTimeInNetworking:v10];

    v11 = [v4 objectForKeyedSubscript:kDAStatusReportAverageHBI];
    [(DAStatusReport *)v5 setAverageHBI:v11];

    v12 = [v4 objectForKeyedSubscript:kDAStatusReportSuccessfulRequests];
    [(DAStatusReport *)v5 setSuccessfulRequests:v12];

    v13 = [v4 objectForKeyedSubscript:kDAStatusReportFailedNetworkRequests];
    [(DAStatusReport *)v5 setFailedNetworkRequests:v13];

    v14 = [v4 objectForKeyedSubscript:kDAStatusReportFailedProtocolRequests];
    [(DAStatusReport *)v5 setFailedProtocolRequests:v14];

    v15 = [v4 objectForKeyedSubscript:kDAStatusReportDownloadedElements];
    [(DAStatusReport *)v5 setDownloadedElements:v15];

    v16 = [v4 objectForKeyedSubscript:kDAStatusReportUploadedElements];
    [(DAStatusReport *)v5 setUploadedElements:v16];

    v17 = [v4 objectForKeyedSubscript:kDAStatusReportFalseMoreAvailableCount];
    [(DAStatusReport *)v5 setFalseMoreAvailableCount:v17];

    v18 = [v4 objectForKeyedSubscript:kDAStatusReportProtocolVersion];
    [(DAStatusReport *)v5 setProtocolVersion:v18];

    v19 = [v4 objectForKeyedSubscript:kDAStatusReportSyncingAllowed];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 BOOLValue];
    }

    else
    {
      v21 = 1;
    }

    [(DAStatusReport *)v5 setSyncingAllowed:v21];
    v22 = [v4 objectForKeyedSubscript:kDAStatusReportLastSuccessDate];
    [(DAStatusReport *)v5 setLastSuccessDate:v22];

    v23 = [v4 objectForKeyedSubscript:kDAStatusReportLastFailureDate];
    [(DAStatusReport *)v5 setLastFailureDate:v23];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(DAStatusReport *)self persistentUUID];

  if (v4)
  {
    v5 = [(DAStatusReport *)self persistentUUID];
    [v3 setObject:v5 forKeyedSubscript:kDAStatusReportPersistentUUID];
  }

  v6 = [(DAStatusReport *)self displayName];

  if (v6)
  {
    v7 = [(DAStatusReport *)self displayName];
    [v3 setObject:v7 forKeyedSubscript:kDAStatusReportDisplayName];
  }

  v8 = [(DAStatusReport *)self accountType];

  if (v8)
  {
    v9 = [(DAStatusReport *)self accountType];
    [v3 setObject:v9 forKeyedSubscript:kDAStatusReportAccountType];
  }

  v10 = [(DAStatusReport *)self timeSpan];

  if (v10)
  {
    v11 = [(DAStatusReport *)self timeSpan];
    [v3 setObject:v11 forKeyedSubscript:kDAStatusReportTimeSpan];
  }

  v12 = [(DAStatusReport *)self timeInNetworking];

  if (v12)
  {
    v13 = [(DAStatusReport *)self timeInNetworking];
    [v3 setObject:v13 forKeyedSubscript:kDAStatusReportTimeInNetworking];
  }

  v14 = [(DAStatusReport *)self averageHBI];

  if (v14)
  {
    v15 = [(DAStatusReport *)self averageHBI];
    [v3 setObject:v15 forKeyedSubscript:kDAStatusReportAverageHBI];
  }

  v16 = [(DAStatusReport *)self successfulRequests];

  if (v16)
  {
    v17 = [(DAStatusReport *)self successfulRequests];
    [v3 setObject:v17 forKeyedSubscript:kDAStatusReportSuccessfulRequests];
  }

  v18 = [(DAStatusReport *)self failedNetworkRequests];

  if (v18)
  {
    v19 = [(DAStatusReport *)self failedNetworkRequests];
    [v3 setObject:v19 forKeyedSubscript:kDAStatusReportFailedNetworkRequests];
  }

  v20 = [(DAStatusReport *)self failedProtocolRequests];

  if (v20)
  {
    v21 = [(DAStatusReport *)self failedProtocolRequests];
    [v3 setObject:v21 forKeyedSubscript:kDAStatusReportFailedProtocolRequests];
  }

  v22 = [(DAStatusReport *)self downloadedElements];

  if (v22)
  {
    v23 = [(DAStatusReport *)self downloadedElements];
    [v3 setObject:v23 forKeyedSubscript:kDAStatusReportDownloadedElements];
  }

  v24 = [(DAStatusReport *)self uploadedElements];

  if (v24)
  {
    v25 = [(DAStatusReport *)self uploadedElements];
    [v3 setObject:v25 forKeyedSubscript:kDAStatusReportUploadedElements];
  }

  v26 = [(DAStatusReport *)self protocolVersion];

  if (v26)
  {
    v27 = [(DAStatusReport *)self protocolVersion];
    [v3 setObject:v27 forKeyedSubscript:kDAStatusReportProtocolVersion];
  }

  v28 = [(DAStatusReport *)self falseMoreAvailableCount];

  if (v28)
  {
    v29 = [(DAStatusReport *)self falseMoreAvailableCount];
    [v3 setObject:v29 forKeyedSubscript:kDAStatusReportFalseMoreAvailableCount];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[DAStatusReport syncingAllowed](self, "syncingAllowed")}];
  [v3 setObject:v30 forKeyedSubscript:kDAStatusReportSyncingAllowed];

  v31 = [(DAStatusReport *)self lastSuccessDate];

  if (v31)
  {
    v32 = [(DAStatusReport *)self lastSuccessDate];
    [v3 setObject:v32 forKeyedSubscript:kDAStatusReportLastSuccessDate];
  }

  v33 = [(DAStatusReport *)self lastFailureDate];

  if (v33)
  {
    v34 = [(DAStatusReport *)self lastFailureDate];
    [v3 setObject:v34 forKeyedSubscript:kDAStatusReportLastFailureDate];
  }

  return v3;
}

- (void)mergeStatusReport:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 persistentUUID];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 persistentUUID];
    v8 = [(DAStatusReport *)self persistentUUID];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v103 = 138412546;
        v104 = self;
        v105 = 2112;
        v106 = v4;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "Why are we combining status reports for different accounts? %@ vs. %@", &v103, 0x16u);
      }
    }
  }

  v11 = [v4 displayName];
  if (v11)
  {
    v12 = v11;
    v13 = [(DAStatusReport *)self displayName];

    if (!v13)
    {
      v14 = [v4 displayName];
      [(DAStatusReport *)self setDisplayName:v14];
    }
  }

  v15 = [v4 accountType];
  if (v15)
  {
    v16 = v15;
    v17 = [v4 accountType];
    v18 = [(DAStatusReport *)self accountType];
    v19 = [v17 isEqualToString:v18];

    if ((v19 & 1) == 0)
    {
      v20 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v103 = 138412546;
        v104 = self;
        v105 = 2112;
        v106 = v4;
        _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_ERROR, "Why are we combining status reports for different accounts? %@ vs. %@", &v103, 0x16u);
      }
    }
  }

  v21 = [v4 timeSpan];
  v22 = [v21 intValue];
  v23 = [(DAStatusReport *)self timeSpan];
  v24 = [v23 intValue];

  if (v22 > v24)
  {
    v25 = [v4 timeSpan];
    [(DAStatusReport *)self setTimeSpan:v25];
  }

  v26 = [(DAStatusReport *)self timeInNetworking];
  if (v26)
  {

LABEL_19:
    v28 = MEMORY[0x277CCABB0];
    v29 = [(DAStatusReport *)self timeInNetworking];
    [v29 doubleValue];
    v31 = v30;
    v32 = [v4 timeInNetworking];
    [v32 doubleValue];
    v34 = [v28 numberWithDouble:v31 + v33];
    [(DAStatusReport *)self setTimeInNetworking:v34];

    goto LABEL_20;
  }

  v27 = [v4 timeInNetworking];

  if (v27)
  {
    goto LABEL_19;
  }

LABEL_20:
  v35 = [v4 averageHBI];
  if (v35)
  {
    v36 = v35;
    v37 = [(DAStatusReport *)self averageHBI];

    if (!v37)
    {
      v38 = [v4 averageHBI];
      [(DAStatusReport *)self setAverageHBI:v38];
    }
  }

  v39 = [(DAStatusReport *)self successfulRequests];
  if (v39)
  {
  }

  else
  {
    v40 = [v4 successfulRequests];

    if (!v40)
    {
      goto LABEL_27;
    }
  }

  v41 = MEMORY[0x277CCABB0];
  v42 = [(DAStatusReport *)self successfulRequests];
  v43 = [v42 intValue];
  v44 = [v4 successfulRequests];
  v45 = [v41 numberWithInt:{objc_msgSend(v44, "intValue") + v43}];
  [(DAStatusReport *)self setSuccessfulRequests:v45];

LABEL_27:
  v46 = [(DAStatusReport *)self failedNetworkRequests];
  if (v46)
  {
  }

  else
  {
    v47 = [v4 failedNetworkRequests];

    if (!v47)
    {
      goto LABEL_31;
    }
  }

  v48 = MEMORY[0x277CCABB0];
  v49 = [(DAStatusReport *)self failedNetworkRequests];
  v50 = [v49 intValue];
  v51 = [v4 failedNetworkRequests];
  v52 = [v48 numberWithInt:{objc_msgSend(v51, "intValue") + v50}];
  [(DAStatusReport *)self setFailedNetworkRequests:v52];

LABEL_31:
  v53 = [(DAStatusReport *)self failedProtocolRequests];
  if (v53)
  {
  }

  else
  {
    v54 = [v4 failedProtocolRequests];

    if (!v54)
    {
      goto LABEL_35;
    }
  }

  v55 = MEMORY[0x277CCABB0];
  v56 = [(DAStatusReport *)self failedProtocolRequests];
  v57 = [v56 intValue];
  v58 = [v4 failedProtocolRequests];
  v59 = [v55 numberWithInt:{objc_msgSend(v58, "intValue") + v57}];
  [(DAStatusReport *)self setFailedProtocolRequests:v59];

LABEL_35:
  v60 = [(DAStatusReport *)self downloadedElements];
  if (v60)
  {
  }

  else
  {
    v61 = [v4 downloadedElements];

    if (!v61)
    {
      goto LABEL_39;
    }
  }

  v62 = MEMORY[0x277CCABB0];
  v63 = [(DAStatusReport *)self downloadedElements];
  v64 = [v63 intValue];
  v65 = [v4 downloadedElements];
  v66 = [v62 numberWithInt:{objc_msgSend(v65, "intValue") + v64}];
  [(DAStatusReport *)self setDownloadedElements:v66];

LABEL_39:
  v67 = [(DAStatusReport *)self uploadedElements];
  if (v67)
  {
  }

  else
  {
    v68 = [v4 uploadedElements];

    if (!v68)
    {
      goto LABEL_43;
    }
  }

  v69 = MEMORY[0x277CCABB0];
  v70 = [(DAStatusReport *)self uploadedElements];
  v71 = [v70 intValue];
  v72 = [v4 uploadedElements];
  v73 = [v69 numberWithInt:{objc_msgSend(v72, "intValue") + v71}];
  [(DAStatusReport *)self setUploadedElements:v73];

LABEL_43:
  v74 = [(DAStatusReport *)self falseMoreAvailableCount];
  if (v74)
  {

LABEL_46:
    v76 = MEMORY[0x277CCABB0];
    v77 = [(DAStatusReport *)self falseMoreAvailableCount];
    v78 = [v77 intValue];
    v79 = [v4 falseMoreAvailableCount];
    v80 = [v76 numberWithInt:{objc_msgSend(v79, "intValue") + v78}];
    [(DAStatusReport *)self setFalseMoreAvailableCount:v80];

    goto LABEL_47;
  }

  v75 = [v4 falseMoreAvailableCount];

  if (v75)
  {
    goto LABEL_46;
  }

LABEL_47:
  v81 = [v4 protocolVersion];
  if (v81)
  {
    v82 = v81;
    v83 = [v4 protocolVersion];
    v84 = [(DAStatusReport *)self protocolVersion];
    v85 = [v83 isEqualToString:v84];

    if ((v85 & 1) == 0)
    {
      v86 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = [v4 protocolVersion];
        v103 = 138412290;
        v104 = v87;
        _os_log_impl(&dword_2243BD000, v86, OS_LOG_TYPE_INFO, "Protocol version is updated to %@", &v103, 0xCu);
      }

      v88 = [v4 protocolVersion];
      [(DAStatusReport *)self setProtocolVersion:v88];
    }
  }

  if ([(DAStatusReport *)self syncingAllowed])
  {
    v89 = [v4 syncingAllowed];
  }

  else
  {
    v89 = 0;
  }

  [(DAStatusReport *)self setSyncingAllowed:v89];
  v90 = [v4 lastSuccessDate];
  if (v90)
  {
    v91 = v90;
    v92 = [v4 lastSuccessDate];
    v93 = [(DAStatusReport *)self lastSuccessDate];
    v94 = [v92 isEqualToDate:v93];

    if ((v94 & 1) == 0)
    {
      v95 = [v4 lastSuccessDate];
      [(DAStatusReport *)self setLastSuccessDate:v95];
    }
  }

  v96 = [v4 lastFailureDate];
  if (v96)
  {
    v97 = v96;
    v98 = [v4 lastFailureDate];
    v99 = [(DAStatusReport *)self lastFailureDate];
    v100 = [v98 isEqualToDate:v99];

    if ((v100 & 1) == 0)
    {
      v101 = [v4 lastFailureDate];
      [(DAStatusReport *)self setLastFailureDate:v101];
    }
  }

  v102 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DAStatusReport *)self dictionaryRepresentation];
  v7 = [v3 stringWithFormat:@"%@ %p: %@", v5, self, v6];

  return v7;
}

- (NSNumber)timeSpan
{
  timeSpan = self->_timeSpan;
  if (!timeSpan)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:self->_creationDate];
    v6 = [v4 numberWithDouble:?];
    [(DAStatusReport *)self setTimeSpan:v6];

    timeSpan = self->_timeSpan;
  }

  return timeSpan;
}

- (void)noteSuccessfulRequestWithNumDownloadedElements:(int)a3 numUploadedElements:(int)a4
{
  v7 = [MEMORY[0x277CBEAA8] date];
  [(DAStatusReport *)self setLastSuccessDate:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(DAStatusReport *)self successfulRequests];
  v10 = [v8 numberWithInt:{objc_msgSend(v9, "intValue") + 1}];
  [(DAStatusReport *)self setSuccessfulRequests:v10];

  if (a3)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [(DAStatusReport *)self downloadedElements];
    v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue") + a3}];
    [(DAStatusReport *)self setDownloadedElements:v13];
  }

  if (a4)
  {
    v14 = MEMORY[0x277CCABB0];
    v16 = [(DAStatusReport *)self uploadedElements];
    v15 = [v14 numberWithInt:{objc_msgSend(v16, "intValue") + a4}];
    [(DAStatusReport *)self setUploadedElements:v15];
  }
}

- (void)noteFailedNetworkRequest
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(DAStatusReport *)self setLastFailureDate:v3];

  v4 = MEMORY[0x277CCABB0];
  v6 = [(DAStatusReport *)self failedNetworkRequests];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(DAStatusReport *)self setFailedNetworkRequests:v5];
}

- (void)noteFailedProtocolRequest
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(DAStatusReport *)self failedProtocolRequests];
  v4 = [v3 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(DAStatusReport *)self setFailedProtocolRequests:v4];
}

- (void)noteNewHBIDataPoint:(int)a3
{
  v5 = [(DAStatusReport *)self averageHBI];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:(a3 + v7 * self->_numHBIDataPoints) / (self->_numHBIDataPoints + 1)];
  [(DAStatusReport *)self setAverageHBI:v8];
}

- (void)noteTimeSpentInNetworking:(double)a3
{
  v5 = MEMORY[0x277CCABB0];
  v8 = [(DAStatusReport *)self timeInNetworking];
  [v8 doubleValue];
  v7 = [v5 numberWithDouble:v6 + a3];
  [(DAStatusReport *)self setTimeInNetworking:v7];
}

- (void)noteFalseMoreAvailableResponse
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(DAStatusReport *)self falseMoreAvailableCount];
  v4 = [v3 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(DAStatusReport *)self setFalseMoreAvailableCount:v4];
}

@end