@interface OspreyConnectionMetrics
- (NSString)connectionMethod;
- (NSURL)requestURL;
- (OspreyConnectionMetrics)initWithMetrics:(id)a3;
- (double)connectionEstablishmentTime;
- (double)dnsResolutionTime;
- (double)fetchStartToDomainLookupStartTime;
- (double)fetchStartToFirstByteTime;
- (double)secureConnectionTime;
- (double)tcpConnectTime;
@end

@implementation OspreyConnectionMetrics

- (OspreyConnectionMetrics)initWithMetrics:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = OspreyConnectionMetrics;
  v5 = [(OspreyConnectionMetrics *)&v17 init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 transactionMetrics];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 _localCache] & 1) == 0)
          {
            objc_storeStrong(&v5->_metrics, v11);
            v5->_connectionState = [(NSURLSessionTaskTransactionMetrics *)v5->_metrics isReusedConnection];
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  v3 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];
  v7 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (double)dnsResolutionTime
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupEndDate];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupEndDate];
  v7 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics domainLookupStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (double)connectionEstablishmentTime
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectEndDate];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectEndDate];
  v7 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (double)tcpConnectTime
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];
  v7 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics connectStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (double)secureConnectionTime
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionEndDate];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionEndDate];
  v7 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics secureConnectionStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (double)fetchStartToFirstByteTime
{
  v3 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics _firstByteReceivedDate];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics _firstByteReceivedDate];
  v7 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics fetchStartDate];
  [v6 timeIntervalSinceDate:v7];
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
  v2 = [(NSURLSessionTaskTransactionMetrics *)self->_metrics request];
  v3 = [v2 URL];

  return v3;
}

@end