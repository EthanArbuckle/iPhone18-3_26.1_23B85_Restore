@interface CDMPlannerGraphRequestCommand
- (CDMPlannerGraphRequestCommand)initWithCoder:(id)coder;
- (CDMPlannerGraphRequestCommand)initWithPlannerRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMPlannerGraphRequestCommand

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CDMPlannerGraphRequestCommand;
  coderCopy = coder;
  [(CDMServiceGraphProtoBackedCommand *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_plannerRequest forKey:{@"plannerRequest", v6.receiver, v6.super_class}];
  data = [(SIRINLUEXTERNALRequestID *)self->_requestId data];
  [coderCopy encodeObject:data forKey:@"requestId"];
}

- (CDMPlannerGraphRequestCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CDMPlannerGraphRequestCommand;
  v5 = [(CDMServiceGraphProtoBackedCommand *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plannerRequest"];
    plannerRequest = v5->_plannerRequest;
    v5->_plannerRequest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    v9 = [objc_alloc(MEMORY[0x1E69D11C0]) initWithData:v8];
    requestId = v5->_requestId;
    v5->_requestId = v9;
  }

  return v5;
}

- (CDMPlannerGraphRequestCommand)initWithPlannerRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = CDMPlannerGraphRequestCommand;
  v6 = [(CDMBaseCommand *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plannerRequest, request);
    v8 = objc_alloc_init(MEMORY[0x1E69D11C0]);
    requestId = v7->_requestId;
    v7->_requestId = v8;

    cdmPlannerRequestIdentifier = [requestCopy cdmPlannerRequestIdentifier];
    clientRequestId = [cdmPlannerRequestIdentifier clientRequestId];

    if (clientRequestId)
    {
      cdmPlannerRequestIdentifier2 = [requestCopy cdmPlannerRequestIdentifier];
      clientRequestId2 = [cdmPlannerRequestIdentifier2 clientRequestId];
      [(SIRINLUEXTERNALRequestID *)v7->_requestId setIdA:clientRequestId2];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [(SIRINLUEXTERNALRequestID *)v7->_requestId setIdA:uUIDString];

      cdmPlannerRequestIdentifier2 = CDMOSLoggerForCategory(0);
      if (!os_log_type_enabled(cdmPlannerRequestIdentifier2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      clientRequestId2 = [(SIRINLUEXTERNALRequestID *)v7->_requestId idA];
      *buf = 136315394;
      v20 = "[CDMPlannerGraphRequestCommand initWithPlannerRequest:]";
      v21 = 2112;
      v22 = clientRequestId2;
      _os_log_debug_impl(&dword_1DC287000, cdmPlannerRequestIdentifier2, OS_LOG_TYPE_DEBUG, "%s The (orchestrator) client request Id was not provided. Generated clientRequestId with UUID string: %@", buf, 0x16u);
    }

LABEL_6:
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

@end