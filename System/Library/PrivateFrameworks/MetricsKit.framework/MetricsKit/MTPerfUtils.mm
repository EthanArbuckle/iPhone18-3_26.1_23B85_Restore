@interface MTPerfUtils
- (id)DNSServersIPAddresses;
- (id)loadUrlMeasurementWithURLSessionTaskMetrics:(id)metrics;
- (id)loadUrlMeasurementWithURLSessionTaskTransactionMetrics:(id)metrics;
@end

@implementation MTPerfUtils

- (id)DNSServersIPAddresses
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = malloc_type_calloc(1uLL, 0x228uLL, 0x10B2040E67E7BACuLL);
  if (!res_9_ninit(v3))
  {
    v4 = malloc_type_malloc(v3->nscount << 7, 0x1000040AE2C30F4uLL);
    res_9_getservers(v3, v4, v3->nscount);
    if (v3->nscount)
    {
      v5 = 0;
      v6 = &v4->__space[4];
      while (1)
      {
        v7 = *(v6 - 3);
        if (v7 == 30)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = 2;
          v9 = v6;
          v10 = 16;
          goto LABEL_8;
        }

LABEL_10:
        ++v5;
        v6 += 128;
        if (v5 >= v3->nscount)
        {
          goto LABEL_11;
        }
      }

      v9 = v6 + 4;
      v8 = 30;
      v10 = 46;
LABEL_8:
      inet_ntop(v8, v9, v15, v10);
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
      if (v11)
      {
        [v2 addObject:v11];
      }

      goto LABEL_10;
    }

LABEL_11:
    free(v4);
  }

  res_9_ndestroy(v3);
  free(v3);
  if ([v2 count])
  {
    v12 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)loadUrlMeasurementWithURLSessionTaskTransactionMetrics:(id)metrics
{
  metricsCopy = metrics;
  metricsKit = [(MTObject *)self metricsKit];
  loadUrlMeasurement = [metricsKit loadUrlMeasurement];

  fetchStartDate = [metricsCopy fetchStartDate];

  if (fetchStartDate)
  {
    fetchStartDate2 = [metricsCopy fetchStartDate];
    [loadUrlMeasurement mark:@"fetchStartTime" date:fetchStartDate2];
  }

  domainLookupStartDate = [metricsCopy domainLookupStartDate];

  if (domainLookupStartDate)
  {
    domainLookupStartDate2 = [metricsCopy domainLookupStartDate];
    [loadUrlMeasurement mark:@"domainLookupStartTime" date:domainLookupStartDate2];
  }

  domainLookupEndDate = [metricsCopy domainLookupEndDate];

  if (domainLookupEndDate)
  {
    domainLookupEndDate2 = [metricsCopy domainLookupEndDate];
    [loadUrlMeasurement mark:@"domainLookupEndTime" date:domainLookupEndDate2];
  }

  connectStartDate = [metricsCopy connectStartDate];

  if (connectStartDate)
  {
    connectStartDate2 = [metricsCopy connectStartDate];
    [loadUrlMeasurement mark:@"connectionStartTime" date:connectStartDate2];
  }

  connectEndDate = [metricsCopy connectEndDate];

  if (connectEndDate)
  {
    connectEndDate2 = [metricsCopy connectEndDate];
    [loadUrlMeasurement mark:@"connectionEndTime" date:connectEndDate2];
  }

  secureConnectionStartDate = [metricsCopy secureConnectionStartDate];

  if (secureConnectionStartDate)
  {
    secureConnectionStartDate2 = [metricsCopy secureConnectionStartDate];
    [loadUrlMeasurement mark:@"secureConnectionStartTime" date:secureConnectionStartDate2];
  }

  requestStartDate = [metricsCopy requestStartDate];

  if (requestStartDate)
  {
    requestStartDate2 = [metricsCopy requestStartDate];
    [loadUrlMeasurement mark:@"requestStartTime" date:requestStartDate2];
  }

  responseStartDate = [metricsCopy responseStartDate];

  if (responseStartDate)
  {
    responseStartDate2 = [metricsCopy responseStartDate];
    [loadUrlMeasurement mark:@"responseStartTime" date:responseStartDate2];
  }

  responseEndDate = [metricsCopy responseEndDate];

  if (responseEndDate)
  {
    responseEndDate2 = [metricsCopy responseEndDate];
    [loadUrlMeasurement mark:@"responseEndTime" date:responseEndDate2];
  }

  [loadUrlMeasurement setConnectionReused:{objc_msgSend(metricsCopy, "isReusedConnection")}];
  request = [metricsCopy request];
  v26 = [request URL];
  absoluteString = [v26 absoluteString];

  if (absoluteString)
  {
    request2 = [metricsCopy request];
    v29 = [request2 URL];
    absoluteString2 = [v29 absoluteString];
    [loadUrlMeasurement setRequestUrl:absoluteString2];
  }

  response = [metricsCopy response];
  v32 = response;
  if (response)
  {
    [loadUrlMeasurement setStatusCode:{objc_msgSend(response, "statusCode")}];
  }

  return loadUrlMeasurement;
}

- (id)loadUrlMeasurementWithURLSessionTaskMetrics:(id)metrics
{
  metricsCopy = metrics;
  transactionMetrics = [metricsCopy transactionMetrics];
  lastObject = [transactionMetrics lastObject];

  if (lastObject)
  {
    v7 = [(MTPerfUtils *)self loadUrlMeasurementWithURLSessionTaskTransactionMetrics:lastObject];
    [v7 setRedirectCount:{objc_msgSend(metricsCopy, "redirectCount")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end