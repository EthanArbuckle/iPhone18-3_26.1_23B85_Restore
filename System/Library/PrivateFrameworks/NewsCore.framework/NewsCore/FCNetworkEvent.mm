@interface FCNetworkEvent
- (FCNetworkEvent)initWithType:(int)type URL:(id)l operationID:(id)d requestUUID:(id)iD responseMIMEType:(id)eType HTTPStatusCode:(unint64_t)code HTTPMethod:(id)method HTTPResponseHeaders:(id)self0 containerName:(id)self1 isProxyConnection:(BOOL)self2 error:(id)self3 startTime:(double)self4 dnsDuration:(double)self5 connectDuration:(double)self6 requestDuration:(double)self7 responseDuration:(double)self8 requestSize:(double)self9 responseSize:(double)responseSize smarterFetchSources:(id)sources smarterFetchStrategy:(id)strategy;
- (FCNetworkEvent)initWithType:(int)type URLRequest:(id)request operationID:(id)d requestUUID:(id)iD startTime:(double)time HTTPResponse:(id)response metrics:(id)metrics containerName:(id)self0 error:(id)self1;
- (FCNetworkEvent)initWithType:(int)type URLRequest:(id)request requestUUID:(id)d startTime:(double)time HTTPResponse:(id)response metrics:(id)metrics smarterFetchSources:(id)sources smarterFetchStrategy:(id)self0 error:(id)self1;
- (FCNetworkEvent)initWithType:(int)type URLSessionTask:(id)task requestUUID:(id)d startTime:(double)time smarterFetchSources:(id)sources smarterFetchStrategy:(id)strategy;
- (FCNetworkEvent)initWithType:(int)type ckRequestInfo:(id)info operationID:(id)d startTime:(double)time containerName:(id)name error:(id)error;
- (NSDateInterval)dateInterval;
- (double)endTime;
- (double)totalDuration;
- (id)debugDescription;
- (id)description;
@end

@implementation FCNetworkEvent

- (FCNetworkEvent)initWithType:(int)type URL:(id)l operationID:(id)d requestUUID:(id)iD responseMIMEType:(id)eType HTTPStatusCode:(unint64_t)code HTTPMethod:(id)method HTTPResponseHeaders:(id)self0 containerName:(id)self1 isProxyConnection:(BOOL)self2 error:(id)self3 startTime:(double)self4 dnsDuration:(double)self5 connectDuration:(double)self6 requestDuration:(double)self7 responseDuration:(double)self8 requestSize:(double)self9 responseSize:(double)responseSize smarterFetchSources:(id)sources smarterFetchStrategy:(id)strategy
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  eTypeCopy = eType;
  methodCopy = method;
  headersCopy = headers;
  nameCopy = name;
  errorCopy = error;
  sourcesCopy = sources;
  strategyCopy = strategy;
  v67.receiver = self;
  v67.super_class = FCNetworkEvent;
  v40 = [(FCNetworkEvent *)&v67 init];
  v41 = v40;
  if (v40)
  {
    v40->_type = type;
    v42 = [lCopy copy];
    URL = v41->_URL;
    v41->_URL = v42;

    v44 = [dCopy copy];
    operationID = v41->_operationID;
    v41->_operationID = v44;

    v46 = [iDCopy copy];
    requestUUID = v41->_requestUUID;
    v41->_requestUUID = v46;

    v48 = [eTypeCopy copy];
    responseMIMEType = v41->_responseMIMEType;
    v41->_responseMIMEType = v48;

    v41->_HTTPStatusCode = code;
    v50 = [methodCopy copy];
    HTTPMethod = v41->_HTTPMethod;
    v41->_HTTPMethod = v50;

    v52 = [headersCopy copy];
    HTTPResponseHeaders = v41->_HTTPResponseHeaders;
    v41->_HTTPResponseHeaders = v52;

    v54 = [nameCopy copy];
    containerName = v41->_containerName;
    v41->_containerName = v54;

    v41->_isProxyConnection = connection;
    v56 = [errorCopy copy];
    error = v41->_error;
    v41->_error = v56;

    v41->_startTime = time;
    v41->_connectDuration = connectDuration;
    v41->_requestDuration = requestDuration;
    v41->_responseDuration = responseDuration;
    v41->_requestSize = size;
    v41->_responseSize = responseSize;
    v58 = [sourcesCopy copy];
    smarterFetchSources = v41->_smarterFetchSources;
    v41->_smarterFetchSources = v58;

    v60 = [strategyCopy copy];
    smarterFetchStrategy = v41->_smarterFetchStrategy;
    v41->_smarterFetchStrategy = v60;
  }

  return v41;
}

- (FCNetworkEvent)initWithType:(int)type URLRequest:(id)request operationID:(id)d requestUUID:(id)iD startTime:(double)time HTTPResponse:(id)response metrics:(id)metrics containerName:(id)self0 error:(id)self1
{
  errorCopy = error;
  nameCopy = name;
  metricsCopy = metrics;
  responseCopy = response;
  iDCopy = iD;
  dCopy = d;
  requestCopy = request;
  v21 = [requestCopy URL];
  mIMEType = [responseCopy MIMEType];
  statusCode = [responseCopy statusCode];
  hTTPMethod = [requestCopy HTTPMethod];

  allHeaderFields = [responseCopy allHeaderFields];

  LOBYTE(requestCopy) = [metricsCopy isProxyConnection];
  domainLookupEndDate = [metricsCopy domainLookupEndDate];
  domainLookupStartDate = [metricsCopy domainLookupStartDate];
  [domainLookupEndDate timeIntervalSinceDate:domainLookupStartDate];
  v24 = v23;
  connectEndDate = [metricsCopy connectEndDate];
  connectStartDate = [metricsCopy connectStartDate];
  [connectEndDate timeIntervalSinceDate:connectStartDate];
  v26 = v25;
  responseStartDate = [metricsCopy responseStartDate];
  requestStartDate = [metricsCopy requestStartDate];
  [responseStartDate timeIntervalSinceDate:requestStartDate];
  v28 = v27;
  responseEndDate = [metricsCopy responseEndDate];
  responseStartDate2 = [metricsCopy responseStartDate];
  [responseEndDate timeIntervalSinceDate:responseStartDate2];
  v32 = v31;
  countOfRequestHeaderBytesSent = [metricsCopy countOfRequestHeaderBytesSent];
  v34 = ([metricsCopy countOfRequestBodyBytesSent] + countOfRequestHeaderBytesSent);
  countOfResponseHeaderBytesReceived = [metricsCopy countOfResponseHeaderBytesReceived];
  countOfResponseBodyBytesReceived = [metricsCopy countOfResponseBodyBytesReceived];

  LOBYTE(v38) = requestCopy;
  v53 = [(FCNetworkEvent *)self initWithType:type URL:v21 operationID:dCopy requestUUID:iDCopy responseMIMEType:mIMEType HTTPStatusCode:statusCode HTTPMethod:time HTTPResponseHeaders:v24 containerName:v26 isProxyConnection:v28 error:v32 startTime:v34 dnsDuration:(countOfResponseBodyBytesReceived + countOfResponseHeaderBytesReceived) connectDuration:hTTPMethod requestDuration:allHeaderFields responseDuration:nameCopy requestSize:v38 responseSize:errorCopy smarterFetchSources:0 smarterFetchStrategy:0];

  return v53;
}

- (FCNetworkEvent)initWithType:(int)type URLRequest:(id)request requestUUID:(id)d startTime:(double)time HTTPResponse:(id)response metrics:(id)metrics smarterFetchSources:(id)sources smarterFetchStrategy:(id)self0 error:(id)self1
{
  errorCopy = error;
  strategyCopy = strategy;
  sourcesCopy = sources;
  metricsCopy = metrics;
  responseCopy = response;
  dCopy = d;
  requestCopy = request;
  v21 = [requestCopy URL];
  mIMEType = [responseCopy MIMEType];
  statusCode = [responseCopy statusCode];
  hTTPMethod = [requestCopy HTTPMethod];

  allHeaderFields = [responseCopy allHeaderFields];

  isProxyConnection = [metricsCopy isProxyConnection];
  domainLookupEndDate = [metricsCopy domainLookupEndDate];
  domainLookupStartDate = [metricsCopy domainLookupStartDate];
  [domainLookupEndDate timeIntervalSinceDate:domainLookupStartDate];
  v23 = v22;
  connectEndDate = [metricsCopy connectEndDate];
  connectStartDate = [metricsCopy connectStartDate];
  [connectEndDate timeIntervalSinceDate:connectStartDate];
  v25 = v24;
  responseStartDate = [metricsCopy responseStartDate];
  requestStartDate = [metricsCopy requestStartDate];
  [responseStartDate timeIntervalSinceDate:requestStartDate];
  v27 = v26;
  responseEndDate = [metricsCopy responseEndDate];
  responseStartDate2 = [metricsCopy responseStartDate];
  [responseEndDate timeIntervalSinceDate:responseStartDate2];
  v31 = v30;
  countOfRequestHeaderBytesSent = [metricsCopy countOfRequestHeaderBytesSent];
  v33 = ([metricsCopy countOfRequestBodyBytesSent] + countOfRequestHeaderBytesSent);
  countOfResponseHeaderBytesReceived = [metricsCopy countOfResponseHeaderBytesReceived];
  countOfResponseBodyBytesReceived = [metricsCopy countOfResponseBodyBytesReceived];

  LOBYTE(v37) = isProxyConnection;
  v54 = [(FCNetworkEvent *)self initWithType:type URL:v21 operationID:0 requestUUID:dCopy responseMIMEType:mIMEType HTTPStatusCode:statusCode HTTPMethod:time HTTPResponseHeaders:v23 containerName:v25 isProxyConnection:v27 error:v31 startTime:v33 dnsDuration:(countOfResponseBodyBytesReceived + countOfResponseHeaderBytesReceived) connectDuration:hTTPMethod requestDuration:allHeaderFields responseDuration:0 requestSize:v37 responseSize:errorCopy smarterFetchSources:sourcesCopy smarterFetchStrategy:strategyCopy];

  return v54;
}

- (FCNetworkEvent)initWithType:(int)type ckRequestInfo:(id)info operationID:(id)d startTime:(double)time containerName:(id)name error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  nameCopy = name;
  dCopy = d;
  requestUUID = [infoCopy requestUUID];
  responseHTTPHeaders = [infoCopy responseHTTPHeaders];
  v58 = [responseHTTPHeaders objectForKeyedSubscript:@"Content-Type"];
  v56 = errorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v38 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B780]];
    unsignedIntegerValue = [v38 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 200;
  }

  responseHTTPHeaders2 = [infoCopy responseHTTPHeaders];
  w3cNavigationTiming = [infoCopy w3cNavigationTiming];
  v50 = [w3cNavigationTiming objectForKeyedSubscript:@"_kCFNTimingDataDomainLookupEnd"];
  [v50 doubleValue];
  v17 = v16;
  w3cNavigationTiming2 = [infoCopy w3cNavigationTiming];
  v48 = [w3cNavigationTiming2 objectForKeyedSubscript:@"_kCFNTimingDataDomainLookupStart"];
  [v48 doubleValue];
  v19 = v17 - v18;
  w3cNavigationTiming3 = [infoCopy w3cNavigationTiming];
  v45 = [w3cNavigationTiming3 objectForKeyedSubscript:@"_kCFNTimingDataConnectEnd"];
  [v45 doubleValue];
  v21 = v20;
  w3cNavigationTiming4 = [infoCopy w3cNavigationTiming];
  v43 = [w3cNavigationTiming4 objectForKeyedSubscript:@"_kCFNTimingDataConnectStart"];
  [v43 doubleValue];
  v23 = v21 - v22;
  w3cNavigationTiming5 = [infoCopy w3cNavigationTiming];
  v41 = [w3cNavigationTiming5 objectForKeyedSubscript:@"_kCFNTimingDataResponseStart"];
  [v41 doubleValue];
  v25 = v24;
  w3cNavigationTiming6 = [infoCopy w3cNavigationTiming];
  v26 = [w3cNavigationTiming6 objectForKeyedSubscript:@"_kCFNTimingDataRequestStart"];
  [v26 doubleValue];
  v28 = v25 - v27;
  w3cNavigationTiming7 = [infoCopy w3cNavigationTiming];
  v30 = [w3cNavigationTiming7 objectForKeyedSubscript:@"_kCFNTimingDataResponseEnd"];
  [v30 doubleValue];
  v32 = v31;
  w3cNavigationTiming8 = [infoCopy w3cNavigationTiming];
  v34 = [w3cNavigationTiming8 objectForKeyedSubscript:@"_kCFNTimingDataResponseStart"];
  [v34 doubleValue];
  LOBYTE(v37) = 0;
  v55 = [(FCNetworkEvent *)self initWithType:type URL:0 operationID:dCopy requestUUID:requestUUID responseMIMEType:v58 HTTPStatusCode:unsignedIntegerValue HTTPMethod:time HTTPResponseHeaders:v19 containerName:v23 isProxyConnection:v28 error:v32 - v35 startTime:0.0 dnsDuration:0.0 connectDuration:@"POST" requestDuration:responseHTTPHeaders2 responseDuration:nameCopy requestSize:v37 responseSize:v56 smarterFetchSources:0 smarterFetchStrategy:0];

  if (v56)
  {
  }

  return v55;
}

- (FCNetworkEvent)initWithType:(int)type URLSessionTask:(id)task requestUUID:(id)d startTime:(double)time smarterFetchSources:(id)sources smarterFetchStrategy:(id)strategy
{
  strategyCopy = strategy;
  sourcesCopy = sources;
  dCopy = d;
  taskCopy = task;
  originalRequest = [taskCopy originalRequest];
  objc_opt_class();
  response = [taskCopy response];
  if (response)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = response;
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
  _incompleteCurrentTaskTransactionMetrics = [taskCopy _incompleteCurrentTaskTransactionMetrics];
  error = [taskCopy error];

  v23 = [(FCNetworkEvent *)self initWithType:type URLRequest:originalRequest requestUUID:dCopy startTime:v20 HTTPResponse:_incompleteCurrentTaskTransactionMetrics metrics:sourcesCopy smarterFetchSources:time smarterFetchStrategy:strategyCopy error:error];
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

  requestUUID = [(FCNetworkEvent *)self requestUUID];
  [v3 addField:@"requestUUID" object:requestUUID];

  operationID = [(FCNetworkEvent *)self operationID];
  [v3 addField:@"operationID" object:operationID];

  containerName = [(FCNetworkEvent *)self containerName];

  if (containerName)
  {
    containerName2 = [(FCNetworkEvent *)self containerName];
    [v3 addField:@"containerName" value:containerName2];
  }

  error = [(FCNetworkEvent *)self error];

  if (!error)
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

  hTTPResponseHeaders = [(FCNetworkEvent *)self HTTPResponseHeaders];
  v26 = [hTTPResponseHeaders objectForKeyedSubscript:@"X-Apple-Cache"];

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

  error2 = [(FCNetworkEvent *)self error];

  if (error2)
  {
    error3 = [(FCNetworkEvent *)self error];
    [v3 addField:@"error" object:error3];
  }

  descriptionString = [v3 descriptionString];

  return descriptionString;
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

  hTTPMethod = [(FCNetworkEvent *)self HTTPMethod];
  [v3 addField:@"httpMethod" object:hTTPMethod];

  requestUUID = [(FCNetworkEvent *)self requestUUID];
  [v3 addField:@"requestUUID" object:requestUUID];

  operationID = [(FCNetworkEvent *)self operationID];
  [v3 addField:@"operationID" value:operationID];

  containerName = [(FCNetworkEvent *)self containerName];

  if (containerName)
  {
    containerName2 = [(FCNetworkEvent *)self containerName];
    [v3 addField:@"containerName" value:containerName2];
  }

  v12 = MEMORY[0x1E695DF00];
  [(FCNetworkEvent *)self startTime];
  v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  [v3 addField:@"startDate" object:v13];

  error = [(FCNetworkEvent *)self error];

  if (!error)
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

  hTTPResponseHeaders = [(FCNetworkEvent *)self HTTPResponseHeaders];
  v29 = [hTTPResponseHeaders objectForKeyedSubscript:@"X-Apple-Cache"];

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

  responseMIMEType = [(FCNetworkEvent *)self responseMIMEType];

  if (responseMIMEType)
  {
    responseMIMEType2 = [(FCNetworkEvent *)self responseMIMEType];
    [v3 addField:@"responseMIMEType" object:responseMIMEType2];
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

  error2 = [(FCNetworkEvent *)self error];

  if (error2)
  {
    error3 = [(FCNetworkEvent *)self error];
    [v3 addField:@"error" object:error3];
  }

  hTTPResponseHeaders2 = [(FCNetworkEvent *)self HTTPResponseHeaders];

  if (hTTPResponseHeaders2)
  {
    hTTPResponseHeaders3 = [(FCNetworkEvent *)self HTTPResponseHeaders];
    [v3 addField:@"httpResponseHeaders" object:hTTPResponseHeaders3];
  }

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end