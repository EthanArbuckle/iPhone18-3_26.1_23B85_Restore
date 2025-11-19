@interface IMServiceReachabilityRequest
- (IMServiceReachabilityRequest)initWithCoder:(id)a3;
- (IMServiceReachabilityRequest)initWithHandleIDs:(id)a3 requestID:(id)a4 serviceName:(id)a5 accountID:(id)a6 context:(id)a7;
- (id)_signature;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMServiceReachabilityRequest

- (IMServiceReachabilityRequest)initWithHandleIDs:(id)a3 requestID:(id)a4 serviceName:(id)a5 accountID:(id)a6 context:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IMServiceReachabilityRequest;
  v17 = [(IMServiceReachabilityRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_handleIDs, a3);
    objc_storeStrong(&v18->_requestID, a4);
    objc_storeStrong(&v18->_serviceName, a5);
    objc_storeStrong(&v18->_accountID, a6);
    objc_storeStrong(&v18->_context, a7);
  }

  return v18;
}

- (IMServiceReachabilityRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IMServiceReachabilityRequest;
  v5 = [(IMServiceReachabilityRequest *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"handleIDs"];
    handleIDs = v5->_handleIDs;
    v5->_handleIDs = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handleIDs = self->_handleIDs;
  v5 = a3;
  [v5 encodeObject:handleIDs forKey:@"handleIDs"];
  [v5 encodeObject:self->_requestID forKey:@"requestID"];
  [v5 encodeObject:self->_serviceName forKey:@"serviceName"];
  [v5 encodeObject:self->_accountID forKey:@"accountID"];
  [v5 encodeObject:self->_context forKey:@"context"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IMServiceReachabilityRequest *)self requestID];
  v6 = [(IMServiceReachabilityRequest *)self serviceName];
  v7 = [(IMServiceReachabilityRequest *)self accountID];
  v8 = [(IMServiceReachabilityRequest *)self context];
  v9 = [(IMServiceReachabilityRequest *)self handleIDs];
  v10 = [v3 stringWithFormat:@"<%@ %p [requestID: %@ serviceName: %@ accountID: %@ context: %@ handleIDs: %@]>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (id)_signature
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMServiceReachabilityRequest *)self serviceName];
  v5 = [(IMServiceReachabilityRequest *)self handleIDs];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  v7 = [(IMServiceReachabilityRequest *)self context];
  v8 = [v7 _signature];
  v9 = [v3 stringWithFormat:@"%@%@%@", v4, v6, v8];

  return v9;
}

@end