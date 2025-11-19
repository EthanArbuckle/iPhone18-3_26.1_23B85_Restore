@interface _HMFCFHTTPServerConnection
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)open;
- (_HMFCFHTTPServerConnection)init;
- (_HMFCFHTTPServerConnection)initWithConnectionRef:(_CFHTTPServerConnection *)a3;
- (_HMFCFHTTPServerConnectionDelegate)delegate;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_handleCompletedReceivedRequest:(id)a3 error:(id)a4;
- (void)_handleCompletedResponse:(_CFHTTPServerResponse *)a3 error:(id)a4;
- (void)_handleReceivedRequestRef:(_CFHTTPServerRequest *)a3;
- (void)_sendStatusCode:(int64_t)a3 forRequest:(id)a4 bodyData:(id)a5;
- (void)_stopReadBody:(id)a3;
- (void)dealloc;
- (void)handleRequest:(id)a3 bodyReadStream:(__CFReadStream *)a4 eventType:(unint64_t)a5;
- (void)invalidate;
- (void)sendResponse:(id)a3;
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

- (_HMFCFHTTPServerConnection)initWithConnectionRef:(_CFHTTPServerConnection *)a3
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

  v4->_internal = CFRetain(a3);
  v5 = HMFDispatchQueueName(v4, 0);
  v6 = dispatch_queue_create(v5, 0);
  clientQueue = v4->_clientQueue;
  v4->_clientQueue = v6;

  v8 = [MEMORY[0x277CBEB18] array];
  pendingRequests = v4->_pendingRequests;
  v4->_pendingRequests = v8;

  v10 = [MEMORY[0x277CBEB18] array];
  pendingRespones = v4->_pendingRespones;
  v4->_pendingRespones = v10;

  v12 = [[HMFWeakObject alloc] initWithWeakObject:v4];
  [(_HMFCFHTTPServerConnection *)v4 internal:1];
  _CFHTTPServerConnectionSetClient();
  if ([(_HMFCFHTTPServerConnection *)v4 internal]&& [(_HMFCFHTTPServerConnection *)v4 isValid])
  {
    if (a3 && (v13 = *MEMORY[0x277CBABE8], (v14 = _CFHTTPServerConnectionCopyProperty()) != 0))
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
  v2 = [(_HMFCFHTTPServerConnection *)self internal];

  return CFHash(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(v4);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Closed", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(_HMFCFHTTPServerConnection *)v4 internal];
    _CFHTTPServerConnectionInvalidate();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)open
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(_HMFCFHTTPServerConnection *)self isValid];
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v5);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Opened", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(_HMFCFHTTPServerConnection *)v5 internal];
    v8 = [(_HMFCFHTTPServerConnection *)v5 clientQueue];
    _CFHTTPServerConnectionSetDispatchQueue();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_handleReceivedRequestRef:(_CFHTTPServerRequest *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    LODWORD(buf.version) = 138543618;
    *(&buf.version + 4) = v8;
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = a3;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received request: %@", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[_HMFCFHTTPServerRequest alloc] initWithConnection:v6 requestRef:a3];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
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
    v14 = [(_HMFCFHTTPServerRequest *)v9 bodyStream];
    v15 = objc_autoreleasePoolPush();
    v16 = v11;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
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
      v20 = [(HMFHTTPRequestInternal *)v9 activity];
      [v20 markWithReason:@"Opening body stream"];

      memset(&buf, 0, sizeof(buf));
      v21 = [[HMFWeakObject alloc] initWithWeakObject:v9];
      buf.info = v21;
      buf.retain = _retainInfo;
      buf.release = _releaseInfo;
      CFReadStreamSetClient(v14, 0x1AuLL, readStreamCallBack, &buf);
      v22 = [v16 clientQueue];
      MEMORY[0x231886930](v14, v22);

      if (!CFReadStreamOpen(v14))
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

- (void)_handleCompletedReceivedRequest:(id)a3 error:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(_HMFCFHTTPServerConnection *)self _stopReadBody:v6];
    v8 = [(_HMFCFHTTPServerConnection *)self delegate];
    if (v7)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier(v10);
        v23 = 138543618;
        v24 = v12;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Sending a 500 (Internal Server Error) for the request: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = v10;
      v14 = 500;
    }

    else
    {
      v15 = objc_opt_respondsToSelector();
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier(v17);
          v23 = 138543618;
          v24 = v20;
          v25 = 2112;
          v26 = v6;
          _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_INFO, "%{public}@Received complete request: %@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        [v8 connection:v17 didReceiveRequest:v6];
        goto LABEL_14;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier(v17);
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Sending a 501 (Not Implemented) for the request: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v13 = v17;
      v14 = 501;
    }

    [(_HMFCFHTTPServerConnection *)v13 _sendStatusCode:v14 forRequest:v6];
LABEL_14:
    [(NSMutableArray *)self->_pendingRequests removeObject:v6];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_stopReadBody:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Closing body stream for request: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 bodyStream];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 activity];
    [v11 markWithReason:@"Closing body stream"];

    CFReadStreamSetClient(v10, 0, 0, 0);
    MEMORY[0x231886930](v10, 0);
    CFReadStreamClose(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleRequest:(id)a3 bodyReadStream:(__CFReadStream *)a4 eventType:(unint64_t)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5 == 16)
  {
    goto LABEL_17;
  }

  if (a5 == 8)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier(v17);
      *buffer = 138543618;
      v41 = v19;
      v42 = 2112;
      v43 = v8;
      _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Received body stream error for request: %@", buffer, 0x16u);
    }

    goto LABEL_14;
  }

  if (a5 != 2)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier(v17);
      *buffer = 138543874;
      v41 = v21;
      v42 = 2048;
      v43 = a5;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Received unknown event: %ld, for request: %@", buffer, 0x20u);
    }

LABEL_14:
    objc_autoreleasePoolPop(v16);
    [(_HMFCFHTTPServerConnection *)v17 _sendStatusCode:500 forRequest:v8];
    goto LABEL_18;
  }

  v9 = CFReadStreamRead(a4, buffer, 1024);
  v10 = v9;
  if (v9 >= 1)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier(v12);
      v34 = 138543874;
      v35 = v14;
      v36 = 2048;
      v37 = v10;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Reading %ld bytes for request: %@", &v34, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:buffer length:v10];
    [v8 appendBodyData:v15];

    goto LABEL_18;
  }

  if (v9 < 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier(v26);
      v34 = 138543618;
      v35 = v28;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to read available data for request: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [(_HMFCFHTTPServerConnection *)v26 _handleCompletedReceivedRequest:v8 error:v29];
  }

  else
  {
    v22 = [v8 body];
    v23 = [v22 length];

    if (v23)
    {
LABEL_17:
      [(_HMFCFHTTPServerConnection *)self _handleCompletedReceivedRequest:v8 error:0];
      goto LABEL_18;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = HMFGetLogIdentifier(v31);
      v34 = 138543618;
      v35 = v33;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Got zero bytes read and no accumulated read bytes for request: %@", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendStatusCode:(int64_t)a3 forRequest:(id)a4 bodyData:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(_HMFCFHTTPServerConnection *)self _stopReadBody:v8];
  [(NSMutableArray *)self->_pendingRequests removeObject:v8];
  v10 = [[_HMFCFHTTPServerResponse alloc] initWithRequest:v8 statusCode:a3];
  [(_HMFCFHTTPServerResponse *)v10 setBody:v9];
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

- (void)sendResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_HMFCFHTTPServerConnection *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43___HMFCFHTTPServerConnection_sendResponse___block_invoke;
    v6[3] = &unk_2786E6D18;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

- (void)_handleCompletedResponse:(_CFHTTPServerResponse *)a3 error:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier(v8);
    *buf = 138543874;
    v41 = v10;
    v42 = 2112;
    v43 = a3;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Completed sending response, %@, with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [(_HMFCFHTTPServerConnection *)v8 pendingRespones];
  v12 = [v11 copy];

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
      if ([v17 responseRef] == a3)
      {
        v18 = [v17 activity];
        [v18 invalidate];

        v19 = [v17 request];
        v20 = [v19 activity];
        [v20 invalidate];

        v21 = objc_autoreleasePoolPush();
        v22 = v8;
        v23 = HMFGetOSLogHandle();
        v24 = v23;
        if (v6)
        {
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          v25 = HMFGetLogIdentifier(v22);
          v26 = [v17 shortDescription];
          *buf = 138543874;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          v44 = 2112;
          v45 = v6;
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
          v26 = [v17 shortDescription];
          *buf = 138543618;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          v27 = "%{public}@Successfully sent response: %@";
          v28 = v24;
          v29 = OS_LOG_TYPE_INFO;
          v30 = 22;
        }

        _os_log_impl(&dword_22ADEC000, v28, v29, v27, buf, v30);

LABEL_18:
        objc_autoreleasePoolPop(v21);
        v31 = [(_HMFCFHTTPServerConnection *)v22 pendingRespones];
        [v31 removeObject:v17];

        v32 = [v17 completionHandler];

        if (v32)
        {
          v33 = [v17 completionHandler];
          (v33)[2](v33, v6);

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
  v2 = [(_HMFCFHTTPServerConnection *)self address];
  v3 = [v2 addressString];

  return v3;
}

- (_HMFCFHTTPServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end