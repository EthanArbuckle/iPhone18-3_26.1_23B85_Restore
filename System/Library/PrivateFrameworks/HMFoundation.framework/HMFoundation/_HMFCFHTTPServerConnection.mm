@interface _HMFCFHTTPServerConnection
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)open;
- (_HMFCFHTTPServerConnection)init;
- (_HMFCFHTTPServerConnection)initWithConnectionRef:(_CFHTTPServerConnection *)ref;
- (_HMFCFHTTPServerConnectionDelegate)delegate;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_handleCompletedReceivedRequest:(id)request error:(id)error;
- (void)_handleCompletedResponse:(_CFHTTPServerResponse *)response error:(id)error;
- (void)_handleReceivedRequestRef:(_CFHTTPServerRequest *)ref;
- (void)_sendStatusCode:(int64_t)code forRequest:(id)request bodyData:(id)data;
- (void)_stopReadBody:(id)body;
- (void)dealloc;
- (void)handleRequest:(id)request bodyReadStream:(__CFReadStream *)stream eventType:(unint64_t)type;
- (void)invalidate;
- (void)sendResponse:(id)response;
@end

@implementation _HMFCFHTTPServerConnection

- (_HMFCFHTTPServerConnection)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (_HMFCFHTTPServerConnection)initWithConnectionRef:(_CFHTTPServerConnection *)ref
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = _HMFCFHTTPServerConnection;
  v4 = [(_HMFCFHTTPServerConnection *)&v25 init];
  if (!v4)
  {
LABEL_12:
    v21 = v4;
    goto LABEL_13;
  }

  v4->_internal = CFRetain(ref);
  v5 = HMFDispatchQueueName(v4, 0);
  v6 = dispatch_queue_create(v5, 0);
  clientQueue = v4->_clientQueue;
  v4->_clientQueue = v6;

  array = [MEMORY[0x277CBEB18] array];
  pendingRequests = v4->_pendingRequests;
  v4->_pendingRequests = array;

  array2 = [MEMORY[0x277CBEB18] array];
  pendingRespones = v4->_pendingRespones;
  v4->_pendingRespones = array2;

  v12 = [[HMFWeakObject alloc] initWithWeakObject:v4];
  [(_HMFCFHTTPServerConnection *)v4 internal:1];
  _CFHTTPServerConnectionSetClient();
  if ([(_HMFCFHTTPServerConnection *)v4 internal]&& [(_HMFCFHTTPServerConnection *)v4 isValid])
  {
    if (ref && (v13 = *MEMORY[0x277CBABE8], (v14 = _CFHTTPServerConnectionCopyProperty()) != 0))
    {
      v15 = v14;
      v16 = -[HMFNetAddress initWithSocketAddress:]([HMFNetAddress alloc], "initWithSocketAddress:", [v14 bytes]);
    }

    else
    {
      v16 = 0;
    }

    address = v4->_address;
    v4->_address = v16;

    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = v4;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier(v18);
    *buf = 138543362;
    v27 = v20;
    _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create connection, connection is invalid", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v21 = 0;
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)dealloc
{
  if (self->_internal)
  {
    if (_CFHTTPServerConnectionIsValid())
    {
      internal = self->_internal;
      _CFHTTPServerConnectionInvalidate();
    }

    CFRelease(self->_internal);
    self->_internal = 0;
  }

  v4.receiver = self;
  v4.super_class = _HMFCFHTTPServerConnection;
  [(_HMFCFHTTPServerConnection *)&v4 dealloc];
}

- (unint64_t)hash
{
  internal = [(_HMFCFHTTPServerConnection *)self internal];

  return CFHash(internal);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = CFEqual([(_HMFCFHTTPServerConnection *)self internal], [(_HMFCFHTTPServerConnection *)v6 internal]) != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(_HMFCFHTTPServerConnection *)self isValid])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(selfCopy);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Closed", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(_HMFCFHTTPServerConnection *)selfCopy internal];
    _CFHTTPServerConnectionInvalidate();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)open
{
  v13 = *MEMORY[0x277D85DE8];
  isValid = [(_HMFCFHTTPServerConnection *)self isValid];
  if (isValid)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(selfCopy);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Opened", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(_HMFCFHTTPServerConnection *)selfCopy internal];
    clientQueue = [(_HMFCFHTTPServerConnection *)selfCopy clientQueue];
    _CFHTTPServerConnectionSetDispatchQueue();
  }

  v9 = *MEMORY[0x277D85DE8];
  return isValid;
}

- (void)_handleReceivedRequestRef:(_CFHTTPServerRequest *)ref
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(selfCopy);
    LODWORD(buf.version) = 138543618;
    *(&buf.version + 4) = v8;
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = ref;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received request: %@", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[_HMFCFHTTPServerRequest alloc] initWithConnection:selfCopy requestRef:ref];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier(v11);
      LODWORD(buf.version) = 138543618;
      *(&buf.version + 4) = v13;
      WORD2(buf.info) = 2112;
      *(&buf.info + 6) = v9;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [v11[4] addObject:v9];
    bodyStream = [(_HMFCFHTTPServerRequest *)v9 bodyStream];
    v15 = objc_autoreleasePoolPush();
    v16 = v11;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (bodyStream)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier(v16);
        LODWORD(buf.version) = 138543618;
        *(&buf.version + 4) = v19;
        WORD2(buf.info) = 2112;
        *(&buf.info + 6) = v9;
        _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Opening body stream for request: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      activity = [(HMFHTTPRequestInternal *)v9 activity];
      [activity markWithReason:@"Opening body stream"];

      memset(&buf, 0, sizeof(buf));
      v21 = [[HMFWeakObject alloc] initWithWeakObject:v9];
      buf.info = v21;
      buf.retain = _retainInfo;
      buf.release = _releaseInfo;
      CFReadStreamSetClient(bodyStream, 0x1AuLL, readStreamCallBack, &buf);
      clientQueue = [v16 clientQueue];
      MEMORY[0x231886930](bodyStream, clientQueue);

      if (!CFReadStreamOpen(bodyStream))
      {
        v23 = objc_autoreleasePoolPush();
        v24 = v16;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier(v24);
          v30 = 138543618;
          v31 = v26;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_22ADEC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to open request body stream for request %@", &v30, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
        [v24 _handleCompletedReceivedRequest:v9 error:v27];
      }
    }

    else
    {
      if (v18)
      {
        v28 = HMFGetLogIdentifier(v16);
        LODWORD(buf.version) = 138543618;
        *(&buf.version + 4) = v28;
        WORD2(buf.info) = 2112;
        *(&buf.info + 6) = v9;
        _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@No body stream for request: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [v16 _handleCompletedReceivedRequest:v9 error:0];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompletedReceivedRequest:(id)request error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  if (requestCopy)
  {
    [(_HMFCFHTTPServerConnection *)self _stopReadBody:requestCopy];
    delegate = [(_HMFCFHTTPServerConnection *)self delegate];
    if (errorCopy)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier(selfCopy);
        v23 = 138543618;
        v24 = v12;
        v25 = 2112;
        v26 = requestCopy;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Sending a 500 (Internal Server Error) for the request: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = selfCopy;
      v14 = 500;
    }

    else
    {
      v15 = objc_opt_respondsToSelector();
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier(selfCopy2);
          v23 = 138543618;
          v24 = v20;
          v25 = 2112;
          v26 = requestCopy;
          _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_INFO, "%{public}@Received complete request: %@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        [delegate connection:selfCopy2 didReceiveRequest:requestCopy];
        goto LABEL_14;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier(selfCopy2);
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = requestCopy;
        _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Sending a 501 (Not Implemented) for the request: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v13 = selfCopy2;
      v14 = 501;
    }

    [(_HMFCFHTTPServerConnection *)v13 _sendStatusCode:v14 forRequest:requestCopy];
LABEL_14:
    [(NSMutableArray *)self->_pendingRequests removeObject:requestCopy];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_stopReadBody:(id)body
{
  v17 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(selfCopy);
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = bodyCopy;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Closing body stream for request: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  bodyStream = [bodyCopy bodyStream];
  if (bodyStream)
  {
    v10 = bodyStream;
    activity = [bodyCopy activity];
    [activity markWithReason:@"Closing body stream"];

    CFReadStreamSetClient(v10, 0, 0, 0);
    MEMORY[0x231886930](v10, 0);
    CFReadStreamClose(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleRequest:(id)request bodyReadStream:(__CFReadStream *)stream eventType:(unint64_t)type
{
  v46 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (type == 16)
  {
    goto LABEL_17;
  }

  if (type == 8)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier(selfCopy2);
      *buffer = 138543618;
      v41 = v19;
      v42 = 2112;
      typeCopy = requestCopy;
      _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Received body stream error for request: %@", buffer, 0x16u);
    }

    goto LABEL_14;
  }

  if (type != 2)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier(selfCopy2);
      *buffer = 138543874;
      v41 = v21;
      v42 = 2048;
      typeCopy = type;
      v44 = 2112;
      v45 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Received unknown event: %ld, for request: %@", buffer, 0x20u);
    }

LABEL_14:
    objc_autoreleasePoolPop(v16);
    [(_HMFCFHTTPServerConnection *)selfCopy2 _sendStatusCode:500 forRequest:requestCopy];
    goto LABEL_18;
  }

  v9 = CFReadStreamRead(stream, buffer, 1024);
  v10 = v9;
  if (v9 >= 1)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier(selfCopy3);
      v34 = 138543874;
      v35 = v14;
      v36 = 2048;
      v37 = v10;
      v38 = 2112;
      v39 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Reading %ld bytes for request: %@", &v34, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:buffer length:v10];
    [requestCopy appendBodyData:v15];

    goto LABEL_18;
  }

  if (v9 < 0)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier(selfCopy4);
      v34 = 138543618;
      v35 = v28;
      v36 = 2112;
      v37 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to read available data for request: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [(_HMFCFHTTPServerConnection *)selfCopy4 _handleCompletedReceivedRequest:requestCopy error:v29];
  }

  else
  {
    body = [requestCopy body];
    v23 = [body length];

    if (v23)
    {
LABEL_17:
      [(_HMFCFHTTPServerConnection *)self _handleCompletedReceivedRequest:requestCopy error:0];
      goto LABEL_18;
    }

    v30 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = HMFGetLogIdentifier(selfCopy5);
      v34 = 138543618;
      v35 = v33;
      v36 = 2112;
      v37 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Got zero bytes read and no accumulated read bytes for request: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendStatusCode:(int64_t)code forRequest:(id)request bodyData:(id)data
{
  requestCopy = request;
  dataCopy = data;
  [(_HMFCFHTTPServerConnection *)self _stopReadBody:requestCopy];
  [(NSMutableArray *)self->_pendingRequests removeObject:requestCopy];
  v10 = [[_HMFCFHTTPServerResponse alloc] initWithRequest:requestCopy statusCode:code];
  [(_HMFCFHTTPServerResponse *)v10 setBody:dataCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v10);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __66___HMFCFHTTPServerConnection__sendStatusCode_forRequest_bodyData___block_invoke;
  v14 = &unk_2786E75F8;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [(_HMFCFHTTPServerResponse *)v10 setCompletionHandler:&v11];
  [(_HMFCFHTTPServerConnection *)self sendResponse:v10, v11, v12, v13, v14];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    clientQueue = [(_HMFCFHTTPServerConnection *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43___HMFCFHTTPServerConnection_sendResponse___block_invoke;
    v6[3] = &unk_2786E6D18;
    v7 = responseCopy;
    selfCopy = self;
    dispatch_async(clientQueue, v6);
  }
}

- (void)_handleCompletedResponse:(_CFHTTPServerResponse *)response error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543874;
    v41 = v10;
    v42 = 2112;
    responseCopy = response;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Completed sending response, %@, with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  pendingRespones = [(_HMFCFHTTPServerConnection *)selfCopy pendingRespones];
  v12 = [pendingRespones copy];

  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = *v36;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v36 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v35 + 1) + 8 * i);
      if ([v17 responseRef] == response)
      {
        activity = [v17 activity];
        [activity invalidate];

        request = [v17 request];
        activity2 = [request activity];
        [activity2 invalidate];

        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        v24 = v23;
        if (errorCopy)
        {
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          v25 = HMFGetLogIdentifier(v22);
          shortDescription = [v17 shortDescription];
          *buf = 138543874;
          v41 = v25;
          v42 = 2112;
          responseCopy = shortDescription;
          v44 = 2112;
          v45 = errorCopy;
          v27 = "%{public}@Failed to send response, %@, with error: %@";
          v28 = v24;
          v29 = OS_LOG_TYPE_DEFAULT;
          v30 = 32;
        }

        else
        {
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          v25 = HMFGetLogIdentifier(v22);
          shortDescription = [v17 shortDescription];
          *buf = 138543618;
          v41 = v25;
          v42 = 2112;
          responseCopy = shortDescription;
          v27 = "%{public}@Successfully sent response: %@";
          v28 = v24;
          v29 = OS_LOG_TYPE_INFO;
          v30 = 22;
        }

        _os_log_impl(&dword_22ADEC000, v28, v29, v27, buf, v30);

LABEL_18:
        objc_autoreleasePoolPop(v21);
        pendingRespones2 = [(_HMFCFHTTPServerConnection *)v22 pendingRespones];
        [pendingRespones2 removeObject:v17];

        completionHandler = [v17 completionHandler];

        if (completionHandler)
        {
          completionHandler2 = [v17 completionHandler];
          (completionHandler2)[2](completionHandler2, errorCopy);

          [v17 setCompletionHandler:0];
        }

        goto LABEL_20;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v34 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_7 != -1)
  {
    dispatch_once(&_MergedGlobals_3_7, &__block_literal_global_23);
  }

  v3 = qword_280AFC360;

  return v3;
}

- (id)logIdentifier
{
  address = [(_HMFCFHTTPServerConnection *)self address];
  addressString = [address addressString];

  return addressString;
}

- (_HMFCFHTTPServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end