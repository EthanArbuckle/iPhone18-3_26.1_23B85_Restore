@interface OspreyConnectionMetrics
- (NSString)connectionMethod;
- (NSURL)requestURL;
- (OspreyConnectionMetrics)initWithMetrics:(id)metrics;
- (double)connectionEstablishmentTime;
- (double)dnsResolutionTime;
- (double)fetchStartToDomainLookupStartTime;
- (double)fetchStartToFirstByteTime;
- (double)secureConnectionTime;
- (double)tcpConnectTime;
@end

@implementation OspreyConnectionMetrics

- (OspreyConnectionMetrics)initWithMetrics:(id)metrics
{
  v19 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v17.receiver = self;
  v17.super_class = OspreyConnectionMetrics;
  v5 = [(OspreyConnectionMetrics *)&v17 init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    transactionMetrics = [metricsCopy transactionMetrics];
    v7 = [transactionMetrics countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(transactionMetrics);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 _localCache] & 1) == 0)
          {
            objc_storeStrong(&v5->_metrics, v11);
            v5->_connectionState = [(NSURLSessionTaskTransactionMetrics *)v5->_metrics isReusedConnection];
            goto LABEL_12;
          }
        }

        v8 = [transactionMetrics countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

- (double)fetchStartToDomainLookupStartTime
{
  fetchStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  if (!fetchStartDate)
  {
    return 0.0;
  }

  v4 = fetchStartDate;
  domainLookupStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];

  if (!domainLookupStartDate)
  {
    return 0.0;
  }

  domainLookupStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];
  fetchStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  [domainLookupStartDate2 timeIntervalSinceDate:fetchStartDate2];
  v9 = v8;

  return v9;
}

- (double)dnsResolutionTime
{
  domainLookupStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];
  if (!domainLookupStartDate)
  {
    return 0.0;
  }

  v4 = domainLookupStartDate;
  domainLookupEndDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupEndDate];

  if (!domainLookupEndDate)
  {
    return 0.0;
  }

  domainLookupEndDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupEndDate];
  domainLookupStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];
  [domainLookupEndDate2 timeIntervalSinceDate:domainLookupStartDate2];
  v9 = v8;

  return v9;
}

- (double)connectionEstablishmentTime
{
  connectStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  if (!connectStartDate)
  {
    return 0.0;
  }

  v4 = connectStartDate;
  connectEndDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectEndDate];

  if (!connectEndDate)
  {
    return 0.0;
  }

  connectEndDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectEndDate];
  connectStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  [connectEndDate2 timeIntervalSinceDate:connectStartDate2];
  v9 = v8;

  return v9;
}

- (double)tcpConnectTime
{
  connectStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  if (!connectStartDate)
  {
    return 0.0;
  }

  v4 = connectStartDate;
  secureConnectionStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];

  if (!secureConnectionStartDate)
  {
    return 0.0;
  }

  secureConnectionStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];
  connectStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  [secureConnectionStartDate2 timeIntervalSinceDate:connectStartDate2];
  v9 = v8;

  return v9;
}

- (double)secureConnectionTime
{
  secureConnectionStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];
  if (!secureConnectionStartDate)
  {
    return 0.0;
  }

  v4 = secureConnectionStartDate;
  secureConnectionEndDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionEndDate];

  if (!secureConnectionEndDate)
  {
    return 0.0;
  }

  secureConnectionEndDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionEndDate];
  secureConnectionStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];
  [secureConnectionEndDate2 timeIntervalSinceDate:secureConnectionStartDate2];
  v9 = v8;

  return v9;
}

- (double)fetchStartToFirstByteTime
{
  fetchStartDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  if (!fetchStartDate)
  {
    return 0.0;
  }

  v4 = fetchStartDate;
  _firstByteReceivedDate = [(NSURLSessionTaskTransactionMetrics *)self->_metrics _firstByteReceivedDate];

  if (!_firstByteReceivedDate)
  {
    return 0.0;
  }

  _firstByteReceivedDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics _firstByteReceivedDate];
  fetchStartDate2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  [_firstByteReceivedDate2 timeIntervalSinceDate:fetchStartDate2];
  v9 = v8;

  return v9;
}

- (NSString)connectionMethod
{
  if ([(NSURLSessionTaskTransactionMetrics *)self->_metrics isCellular])
  {
    v2 = @"Cellular";
  }

  else
  {
    v2 = @"Wifi";
  }

  return v2;
}

- (NSURL)requestURL
{
  request = [(NSURLSessionTaskTransactionMetrics *)self->_metrics request];
  v3 = [request URL];

  return v3;
}

@end