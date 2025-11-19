@interface CDMPlannerGraphRequestCommand
- (CDMPlannerGraphRequestCommand)initWithCoder:(id)a3;
- (CDMPlannerGraphRequestCommand)initWithPlannerRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMPlannerGraphRequestCommand

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CDMPlannerGraphRequestCommand;
  v4 = a3;
  [(CDMServiceGraphProtoBackedCommand *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_plannerRequest forKey:{@"plannerRequest", v6.receiver, v6.super_class}];
  v5 = [(SIRINLUEXTERNALRequestID *)self->_requestId data];
  [v4 encodeObject:v5 forKey:@"requestId"];
}

- (CDMPlannerGraphRequestCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CDMPlannerGraphRequestCommand;
  v5 = [(CDMServiceGraphProtoBackedCommand *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plannerRequest"];
    plannerRequest = v5->_plannerRequest;
    v5->_plannerRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    v9 = [objc_alloc(MEMORY[0x1E69D11C0]) initWithData:v8];
    requestId = v5->_requestId;
    v5->_requestId = v9;
  }

  return v5;
}

- (CDMPlannerGraphRequestCommand)initWithPlannerRequest:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CDMPlannerGraphRequestCommand;
  v6 = [(CDMBaseCommand *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plannerRequest, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69D11C0]);
    requestId = v7->_requestId;
    v7->_requestId = v8;

    v10 = [v5 cdmPlannerRequestIdentifier];
    v11 = [v10 clientRequestId];

    if (v11)
    {
      v12 = [v5 cdmPlannerRequestIdentifier];
      v13 = [v12 clientRequestId];
      [(SIRINLUEXTERNALRequestID *)v7->_requestId setIdA:v13];
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v14 UUIDString];
      [(SIRINLUEXTERNALRequestID *)v7->_requestId setIdA:v15];

      v12 = CDMOSLoggerForCategory(0);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v13 = [(SIRINLUEXTERNALRequestID *)v7->_requestId idA];
      *buf = 136315394;
      v20 = "[CDMPlannerGraphRequestCommand initWithPlannerRequest:]";
      v21 = 2112;
      v22 = v13;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s The (orchestrator) client request Id was not provided. Generated clientRequestId with UUID string: %@", buf, 0x16u);
    }

LABEL_6:
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

@end