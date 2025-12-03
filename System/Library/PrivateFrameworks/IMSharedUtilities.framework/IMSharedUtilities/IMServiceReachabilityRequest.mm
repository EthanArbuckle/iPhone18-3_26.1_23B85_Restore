@interface IMServiceReachabilityRequest
- (IMServiceReachabilityRequest)initWithCoder:(id)coder;
- (IMServiceReachabilityRequest)initWithHandleIDs:(id)ds requestID:(id)d serviceName:(id)name accountID:(id)iD context:(id)context;
- (id)_signature;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMServiceReachabilityRequest

- (IMServiceReachabilityRequest)initWithHandleIDs:(id)ds requestID:(id)d serviceName:(id)name accountID:(id)iD context:(id)context
{
  dsCopy = ds;
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = IMServiceReachabilityRequest;
  v17 = [(IMServiceReachabilityRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_handleIDs, ds);
    objc_storeStrong(&v18->_requestID, d);
    objc_storeStrong(&v18->_serviceName, name);
    objc_storeStrong(&v18->_accountID, iD);
    objc_storeStrong(&v18->_context, context);
  }

  return v18;
}

- (IMServiceReachabilityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IMServiceReachabilityRequest;
  v5 = [(IMServiceReachabilityRequest *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"handleIDs"];
    handleIDs = v5->_handleIDs;
    v5->_handleIDs = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handleIDs = self->_handleIDs;
  coderCopy = coder;
  [coderCopy encodeObject:handleIDs forKey:@"handleIDs"];
  [coderCopy encodeObject:self->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_serviceName forKey:@"serviceName"];
  [coderCopy encodeObject:self->_accountID forKey:@"accountID"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  requestID = [(IMServiceReachabilityRequest *)self requestID];
  serviceName = [(IMServiceReachabilityRequest *)self serviceName];
  accountID = [(IMServiceReachabilityRequest *)self accountID];
  context = [(IMServiceReachabilityRequest *)self context];
  handleIDs = [(IMServiceReachabilityRequest *)self handleIDs];
  v10 = [v3 stringWithFormat:@"<%@ %p [requestID: %@ serviceName: %@ accountID: %@ context: %@ handleIDs: %@]>", v4, self, requestID, serviceName, accountID, context, handleIDs];

  return v10;
}

- (id)_signature
{
  v3 = MEMORY[0x1E696AEC0];
  serviceName = [(IMServiceReachabilityRequest *)self serviceName];
  handleIDs = [(IMServiceReachabilityRequest *)self handleIDs];
  v6 = [handleIDs sortedArrayUsingSelector:sel_compare_];
  context = [(IMServiceReachabilityRequest *)self context];
  _signature = [context _signature];
  v9 = [v3 stringWithFormat:@"%@%@%@", serviceName, v6, _signature];

  return v9;
}

@end