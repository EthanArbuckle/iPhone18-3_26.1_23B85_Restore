@interface FCNetworkEvent
- (FCNetworkEvent)initWithType:(int)a3 URL:(id)a4 operationID:(id)a5 requestUUID:(id)a6 responseMIMEType:(id)a7 HTTPStatusCode:(unint64_t)a8 HTTPMethod:(id)a9 HTTPResponseHeaders:(id)a10 containerName:(id)a11 isProxyConnection:(BOOL)a12 error:(id)a13 startTime:(double)a14 dnsDuration:(double)a15 connectDuration:(double)a16 requestDuration:(double)a17 responseDuration:(double)a18 requestSize:(double)a19 responseSize:(double)a20 smarterFetchSources:(id)a21 smarterFetchStrategy:(id)a22;
- (FCNetworkEvent)initWithType:(int)a3 URLRequest:(id)a4 operationID:(id)a5 requestUUID:(id)a6 startTime:(double)a7 HTTPResponse:(id)a8 metrics:(id)a9 containerName:(id)a10 error:(id)a11;
- (FCNetworkEvent)initWithType:(int)a3 URLRequest:(id)a4 requestUUID:(id)a5 startTime:(double)a6 HTTPResponse:(id)a7 metrics:(id)a8 smarterFetchSources:(id)a9 smarterFetchStrategy:(id)a10 error:(id)a11;
- (FCNetworkEvent)initWithType:(int)a3 URLSessionTask:(id)a4 requestUUID:(id)a5 startTime:(double)a6 smarterFetchSources:(id)a7 smarterFetchStrategy:(id)a8;
- (FCNetworkEvent)initWithType:(int)a3 ckRequestInfo:(id)a4 operationID:(id)a5 startTime:(double)a6 containerName:(id)a7 error:(id)a8;
- (NSDateInterval)dateInterval;
- (double)endTime;
- (double)totalDuration;
- (id)debugDescription;
- (id)description;
@end

@implementation FCNetworkEvent

- (FCNetworkEvent)initWithType:(int)a3 URL:(id)a4 operationID:(id)a5 requestUUID:(id)a6 responseMIMEType:(id)a7 HTTPStatusCode:(unint64_t)a8 HTTPMethod:(id)a9 HTTPResponseHeaders:(id)a10 containerName:(id)a11 isProxyConnection:(BOOL)a12 error:(id)a13 startTime:(double)a14 dnsDuration:(double)a15 connectDuration:(double)a16 requestDuration:(double)a17 responseDuration:(double)a18 requestSize:(double)a19 responseSize:(double)a20 smarterFetchSources:(id)a21 smarterFetchStrategy:(id)a22
{
  v66 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a13;
  v38 = a21;
  v39 = a22;
  v67.receiver = self;
  v67.super_class = FCNetworkEvent;
  v40 = [(FCNetworkEvent *)&v67 init];
  v41 = v40;
  if (v40)
  {
    v40->_type = a3;
    v42 = [v66 copy];
    URL = v41->_URL;
    v41->_URL = v42;

    v44 = [v31 copy];
    operationID = v41->_operationID;
    v41->_operationID = v44;

    v46 = [v32 copy];
    requestUUID = v41->_requestUUID;
    v41->_requestUUID = v46;

    v48 = [v33 copy];
    responseMIMEType = v41->_responseMIMEType;
    v41->_responseMIMEType = v48;

    v41->_HTTPStatusCode = a8;
    v50 = [v34 copy];
    HTTPMethod = v41->_HTTPMethod;
    v41->_HTTPMethod = v50;

    v52 = [v35 copy];
    HTTPResponseHeaders = v41->_HTTPResponseHeaders;
    v41->_HTTPResponseHeaders = v52;

    v54 = [v36 copy];
    containerName = v41->_containerName;
    v41->_containerName = v54;

    v41->_isProxyConnection = a12;
    v56 = [v37 copy];
    error = v41->_error;
    v41->_error = v56;

    v41->_startTime = a14;
    v41->_connectDuration = a16;
    v41->_requestDuration = a17;
    v41->_responseDuration = a18;
    v41->_requestSize = a19;
    v41->_responseSize = a20;
    v58 = [v38 copy];
    smarterFetchSources = v41->_smarterFetchSources;
    v41->_smarterFetchSources = v58;

    v60 = [v39 copy];
    smarterFetchStrategy = v41->_smarterFetchStrategy;
    v41->_smarterFetchStrategy = v60;
  }

  return v41;
}

- (FCNetworkEvent)initWithType:(int)a3 URLRequest:(id)a4 operationID:(id)a5 requestUUID:(id)a6 startTime:(double)a7 HTTPResponse:(id)a8 metrics:(id)a9 containerName:(id)a10 error:(id)a11
{
  v17 = a11;
  v49 = a10;
  v18 = a9;
  v19 = a8;
  v50 = a6;
  v48 = a5;
  v20 = a4;
  v21 = [v20 URL];
  v45 = [v19 MIMEType];
  v44 = [v19 statusCode];
  v41 = [v20 HTTPMethod];

  v22 = [v19 allHeaderFields];

  LOBYTE(v20) = [v18 isProxyConnection];
  v47 = [v18 domainLookupEndDate];
  v46 = [v18 domainLookupStartDate];
  [v47 timeIntervalSinceDate:v46];
  v24 = v23;
  v43 = [v18 connectEndDate];
  v42 = [v18 connectStartDate];
  [v43 timeIntervalSinceDate:v42];
  v26 = v25;
  v40 = [v18 responseStartDate];
  v39 = [v18 requestStartDate];
  [v40 timeIntervalSinceDate:v39];
  v28 = v27;
  v29 = [v18 responseEndDate];
  v30 = [v18 responseStartDate];
  [v29 timeIntervalSinceDate:v30];
  v32 = v31;
  v33 = [v18 countOfRequestHeaderBytesSent];
  v34 = ([v18 countOfRequestBodyBytesSent] + v33);
  v35 = [v18 countOfResponseHeaderBytesReceived];
  v36 = [v18 countOfResponseBodyBytesReceived];

  LOBYTE(v38) = v20;
  v53 = [(FCNetworkEvent *)self initWithType:a3 URL:v21 operationID:v48 requestUUID:v50 responseMIMEType:v45 HTTPStatusCode:v44 HTTPMethod:a7 HTTPResponseHeaders:v24 containerName:v26 isProxyConnection:v28 error:v32 startTime:v34 dnsDuration:(v36 + v35) connectDuration:v41 requestDuration:v22 responseDuration:v49 requestSize:v38 responseSize:v17 smarterFetchSources:0 smarterFetchStrategy:0];

  return v53;
}

- (FCNetworkEvent)initWithType:(int)a3 URLRequest:(id)a4 requestUUID:(id)a5 startTime:(double)a6 HTTPResponse:(id)a7 metrics:(id)a8 smarterFetchSources:(id)a9 smarterFetchStrategy:(id)a10 error:(id)a11
{
  v51 = a11;
  v48 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v50 = a5;
  v20 = a4;
  v21 = [v20 URL];
  v46 = [v19 MIMEType];
  v45 = [v19 statusCode];
  v42 = [v20 HTTPMethod];

  v40 = [v19 allHeaderFields];

  v38 = [v18 isProxyConnection];
  v49 = [v18 domainLookupEndDate];
  v47 = [v18 domainLookupStartDate];
  [v49 timeIntervalSinceDate:v47];
  v23 = v22;
  v44 = [v18 connectEndDate];
  v43 = [v18 connectStartDate];
  [v44 timeIntervalSinceDate:v43];
  v25 = v24;
  v41 = [v18 responseStartDate];
  v39 = [v18 requestStartDate];
  [v41 timeIntervalSinceDate:v39];
  v27 = v26;
  v28 = [v18 responseEndDate];
  v29 = [v18 responseStartDate];
  [v28 timeIntervalSinceDate:v29];
  v31 = v30;
  v32 = [v18 countOfRequestHeaderBytesSent];
  v33 = ([v18 countOfRequestBodyBytesSent] + v32);
  v34 = [v18 countOfResponseHeaderBytesReceived];
  v35 = [v18 countOfResponseBodyBytesReceived];

  LOBYTE(v37) = v38;
  v54 = [(FCNetworkEvent *)self initWithType:a3 URL:v21 operationID:0 requestUUID:v50 responseMIMEType:v46 HTTPStatusCode:v45 HTTPMethod:a6 HTTPResponseHeaders:v23 containerName:v25 isProxyConnection:v27 error:v31 startTime:v33 dnsDuration:(v35 + v34) connectDuration:v42 requestDuration:v40 responseDuration:0 requestSize:v37 responseSize:v51 smarterFetchSources:v17 smarterFetchStrategy:v48];

  return v54;
}

- (FCNetworkEvent)initWithType:(int)a3 ckRequestInfo:(id)a4 operationID:(id)a5 startTime:(double)a6 containerName:(id)a7 error:(id)a8
{
  v12 = a4;
  v13 = a8;
  v14 = a7;
  v52 = a5;
  v59 = [v12 requestUUID];
  v57 = [v12 responseHTTPHeaders];
  v58 = [v57 objectForKeyedSubscript:@"Content-Type"];
  v56 = v13;
  if (v13)
  {
    v39 = [v13 userInfo];
    v38 = [v39 objectForKeyedSubscript:*MEMORY[0x1E695B780]];
    v47 = [v38 unsignedIntegerValue];
  }

  else
  {
    v47 = 200;
  }

  v15 = [v12 responseHTTPHeaders];
  v51 = [v12 w3cNavigationTiming];
  v50 = [v51 objectForKeyedSubscript:@"_kCFNTimingDataDomainLookupEnd"];
  [v50 doubleValue];
  v17 = v16;
  v49 = [v12 w3cNavigationTiming];
  v48 = [v49 objectForKeyedSubscript:@"_kCFNTimingDataDomainLookupStart"];
  [v48 doubleValue];
  v19 = v17 - v18;
  v46 = [v12 w3cNavigationTiming];
  v45 = [v46 objectForKeyedSubscript:@"_kCFNTimingDataConnectEnd"];
  [v45 doubleValue];
  v21 = v20;
  v44 = [v12 w3cNavigationTiming];
  v43 = [v44 objectForKeyedSubscript:@"_kCFNTimingDataConnectStart"];
  [v43 doubleValue];
  v23 = v21 - v22;
  v42 = [v12 w3cNavigationTiming];
  v41 = [v42 objectForKeyedSubscript:@"_kCFNTimingDataResponseStart"];
  [v41 doubleValue];
  v25 = v24;
  v40 = [v12 w3cNavigationTiming];
  v26 = [v40 objectForKeyedSubscript:@"_kCFNTimingDataRequestStart"];
  [v26 doubleValue];
  v28 = v25 - v27;
  v29 = [v12 w3cNavigationTiming];
  v30 = [v29 objectForKeyedSubscript:@"_kCFNTimingDataResponseEnd"];
  [v30 doubleValue];
  v32 = v31;
  v33 = [v12 w3cNavigationTiming];
  v34 = [v33 objectForKeyedSubscript:@"_kCFNTimingDataResponseStart"];
  [v34 doubleValue];
  LOBYTE(v37) = 0;
  v55 = [(FCNetworkEvent *)self initWithType:a3 URL:0 operationID:v52 requestUUID:v59 responseMIMEType:v58 HTTPStatusCode:v47 HTTPMethod:a6 HTTPResponseHeaders:v19 containerName:v23 isProxyConnection:v28 error:v32 - v35 startTime:0.0 dnsDuration:0.0 connectDuration:@"POST" requestDuration:v15 responseDuration:v14 requestSize:v37 responseSize:v56 smarterFetchSources:0 smarterFetchStrategy:0];

  if (v56)
  {
  }

  return v55;
}

- (FCNetworkEvent)initWithType:(int)a3 URLSessionTask:(id)a4 requestUUID:(id)a5 startTime:(double)a6 smarterFetchSources:(id)a7 smarterFetchStrategy:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = [v16 originalRequest];
  objc_opt_class();
  v18 = [v16 response];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [v16 _incompleteCurrentTaskTransactionMetrics];
  v22 = [v16 error];

  v23 = [(FCNetworkEvent *)self initWithType:a3 URLRequest:v17 requestUUID:v15 startTime:v20 HTTPResponse:v21 metrics:v14 smarterFetchSources:a6 smarterFetchStrategy:v13 error:v22];
  return v23;
}

- (double)totalDuration
{
  [(FCNetworkEvent *)self dnsDuration];
  v4 = v3;
  [(FCNetworkEvent *)self connectDuration];
  v6 = v4 + v5;
  [(FCNetworkEvent *)self requestDuration];
  v8 = v6 + v7;
  [(FCNetworkEvent *)self responseDuration];
  return v8 + v9;
}

- (double)endTime
{
  [(FCNetworkEvent *)self startTime];
  v4 = v3;
  [(FCNetworkEvent *)self totalDuration];
  return v4 + fmax(v5, 0.0);
}

- (NSDateInterval)dateInterval
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = MEMORY[0x1E695DF00];
  [(FCNetworkEvent *)self startTime];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  [(FCNetworkEvent *)self totalDuration];
  v7 = [v3 initWithStartDate:v5 duration:{fmax(v6, 0.0)}];

  return v7;
}

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = FCStringFromNetworkEventType([(FCNetworkEvent *)self type]);
  [v3 addField:@"type" object:v4];

  v5 = [(FCNetworkEvent *)self URL];

  if (v5)
  {
    v6 = [(FCNetworkEvent *)self URL];
    [v3 addField:@"URL" object:v6];
  }

  v7 = [(FCNetworkEvent *)self requestUUID];
  [v3 addField:@"requestUUID" object:v7];

  v8 = [(FCNetworkEvent *)self operationID];
  [v3 addField:@"operationID" object:v8];

  v9 = [(FCNetworkEvent *)self containerName];

  if (v9)
  {
    v10 = [(FCNetworkEvent *)self containerName];
    [v3 addField:@"containerName" value:v10];
  }

  v11 = [(FCNetworkEvent *)self error];

  if (!v11)
  {
    [(FCNetworkEvent *)self connectDuration];
    v13 = v12;
    [(FCNetworkEvent *)self totalDuration];
    v15 = fmax(v14, 0.0) * 1000.0;
    v16 = v15;
    if (v13 == 0.0)
    {
      [v3 addField:@"timing" format:{@"total=%llums", v15, v32, v33, v34}];
    }

    else
    {
      [(FCNetworkEvent *)self dnsDuration];
      v18 = (fmax(v17, 0.0) * 1000.0);
      [(FCNetworkEvent *)self connectDuration];
      v20 = (fmax(v19, 0.0) * 1000.0);
      [(FCNetworkEvent *)self requestDuration];
      v22 = v21;
      [(FCNetworkEvent *)self responseDuration];
      [v3 addField:@"timing" format:{@"total=%llums, dns=%llums, connect=%llums, remainder=%llums", v16, v18, v20, (fmax(v22 + v23, 0.0) * 1000.0)}];
    }

    if ([(FCNetworkEvent *)self HTTPStatusCode]!= 200)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCNetworkEvent HTTPStatusCode](self, "HTTPStatusCode")}];
      [v3 addField:@"httpStatusCode" object:v24];
    }
  }

  v25 = [(FCNetworkEvent *)self HTTPResponseHeaders];
  v26 = [v25 objectForKeyedSubscript:@"X-Apple-Cache"];

  if (v26)
  {
    if ([v26 BOOLValue])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    [v3 addField:@"cached" object:v27];
  }

  v28 = [(FCNetworkEvent *)self error];

  if (v28)
  {
    v29 = [(FCNetworkEvent *)self error];
    [v3 addField:@"error" object:v29];
  }

  v30 = [v3 descriptionString];

  return v30;
}

- (id)debugDescription
{
  v3 = [FCDescription descriptionWithObject:self];
  v4 = FCStringFromNetworkEventType([(FCNetworkEvent *)self type]);
  [v3 addField:@"type" object:v4];

  v5 = [(FCNetworkEvent *)self URL];

  if (v5)
  {
    v6 = [(FCNetworkEvent *)self URL];
    [v3 addField:@"URL" object:v6];
  }

  v7 = [(FCNetworkEvent *)self HTTPMethod];
  [v3 addField:@"httpMethod" object:v7];

  v8 = [(FCNetworkEvent *)self requestUUID];
  [v3 addField:@"requestUUID" object:v8];

  v9 = [(FCNetworkEvent *)self operationID];
  [v3 addField:@"operationID" value:v9];

  v10 = [(FCNetworkEvent *)self containerName];

  if (v10)
  {
    v11 = [(FCNetworkEvent *)self containerName];
    [v3 addField:@"containerName" value:v11];
  }

  v12 = MEMORY[0x1E695DF00];
  [(FCNetworkEvent *)self startTime];
  v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  [v3 addField:@"startDate" object:v13];

  v14 = [(FCNetworkEvent *)self error];

  if (!v14)
  {
    [(FCNetworkEvent *)self connectDuration];
    v16 = v15;
    [(FCNetworkEvent *)self totalDuration];
    v18 = fmax(v17, 0.0) * 1000.0;
    v19 = v18;
    if (v16 == 0.0)
    {
      [v3 addField:@"timing" format:{@"total=%llums", v18, v41, v42, v43}];
    }

    else
    {
      [(FCNetworkEvent *)self dnsDuration];
      v21 = (fmax(v20, 0.0) * 1000.0);
      [(FCNetworkEvent *)self connectDuration];
      v23 = (fmax(v22, 0.0) * 1000.0);
      [(FCNetworkEvent *)self requestDuration];
      v25 = v24;
      [(FCNetworkEvent *)self responseDuration];
      [v3 addField:@"timing" format:{@"total=%llums, dns=%llums, connect=%llums, remainder=%llums", v19, v21, v23, (fmax(v25 + v26, 0.0) * 1000.0)}];
    }
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCNetworkEvent HTTPStatusCode](self, "HTTPStatusCode")}];
  [v3 addField:@"httpStatusCode" object:v27];

  v28 = [(FCNetworkEvent *)self HTTPResponseHeaders];
  v29 = [v28 objectForKeyedSubscript:@"X-Apple-Cache"];

  if (v29)
  {
    if ([v29 BOOLValue])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    [v3 addField:@"cached" object:v30];
  }

  v31 = [(FCNetworkEvent *)self responseMIMEType];

  if (v31)
  {
    v32 = [(FCNetworkEvent *)self responseMIMEType];
    [v3 addField:@"responseMIMEType" object:v32];
  }

  if ([(FCNetworkEvent *)self requestSize])
  {
    v33 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[FCNetworkEvent requestSize](self countStyle:{"requestSize"), 0}];
    [v3 addField:@"requestSize" object:v33];
  }

  if ([(FCNetworkEvent *)self responseSize])
  {
    v34 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[FCNetworkEvent responseSize](self countStyle:{"responseSize"), 0}];
    [v3 addField:@"responseSize" object:v34];
  }

  v35 = [(FCNetworkEvent *)self error];

  if (v35)
  {
    v36 = [(FCNetworkEvent *)self error];
    [v3 addField:@"error" object:v36];
  }

  v37 = [(FCNetworkEvent *)self HTTPResponseHeaders];

  if (v37)
  {
    v38 = [(FCNetworkEvent *)self HTTPResponseHeaders];
    [v3 addField:@"httpResponseHeaders" object:v38];
  }

  v39 = [v3 descriptionString];

  return v39;
}

@end