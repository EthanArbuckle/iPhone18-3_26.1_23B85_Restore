@interface LACUserInterfaceRequest
+ (id)unknownInstance;
- (LACUserInterfaceRequest)initWithCoder:(id)a3;
- (LACUserInterfaceRequest)initWithIdentifier:(int64_t)a3 evaluationRequest:(id)a4 contextID:(id)a5;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACUserInterfaceRequest

- (LACUserInterfaceRequest)initWithIdentifier:(int64_t)a3 evaluationRequest:(id)a4 contextID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v30.receiver = self;
  v30.super_class = LACUserInterfaceRequest;
  v10 = [(LACUserInterfaceRequest *)&v30 init];
  v11 = v10;
  if (v10)
  {
    [(LACUserInterfaceRequest *)v10 setIdentifier:a3];
    [(LACUserInterfaceRequest *)v11 setContextID:v9];
    if (v8)
    {
      v12 = +[LACClientInfoProvider sharedInstance];
      v13 = [v8 client];
      v14 = [v8 options];
      v15 = [v12 infoForXPCClient:v13 evaluationOptions:v14];
      [(LACUserInterfaceRequest *)v11 setClientInfo:v15];
    }

    -[LACUserInterfaceRequest setEvaluationRequestIdentifier:](v11, "setEvaluationRequestIdentifier:", [v8 identifier]);
    v16 = [v8 payload];
    v17 = [v16 objectForKeyedSubscript:@"kLACEvaluationRequestPayloadKeyInternalInfo"];

    v18 = [v8 options];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:1080];
    v20 = [v18 objectForKeyedSubscript:v19];

    if (v20)
    {
      v21 = [v20 integerValue];
    }

    else
    {
      v21 = 3;
    }

    if ((v21 & 2) != 0)
    {
      v22 = [v17 objectForKeyedSubscript:@"AuditToken"];
      [(LACUserInterfaceRequest *)v11 setClientAuditTokenData:v22];
    }

    else
    {
      [(LACUserInterfaceRequest *)v11 setClientAuditTokenData:0];
    }

    v23 = [v17 objectForKeyedSubscript:@"ProcessId"];
    -[LACUserInterfaceRequest setClientProcessId:](v11, "setClientProcessId:", [v23 intValue]);

    [(LACUserInterfaceRequest *)v11 setIsAuditTokenApplicationIdentity:(v21 & 4) != 0];
    v24 = [v17 objectForKeyedSubscript:@"SiriPlugin"];
    -[LACUserInterfaceRequest setIsForSiri:](v11, "setIsForSiri:", [v24 BOOLValue]);

    -[LACUserInterfaceRequest setIsForSoftwareUpdate:](v11, "setIsForSoftwareUpdate:", [v8 policy] == 1010);
    [(LACUserInterfaceRequest *)v11 setIsRunningInRecovery:0];
    [(LACUserInterfaceRequest *)v11 setIsRunningInSystemContext:0];
    v25 = [v17 objectForKeyedSubscript:@"Options"];
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:1019];
    v27 = [v25 objectForKeyedSubscript:v26];
    if (v27)
    {
      [(LACUserInterfaceRequest *)v11 setUserId:v27];
    }

    else
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:getuid()];
      [(LACUserInterfaceRequest *)v11 setUserId:v28];
    }
  }

  return v11;
}

+ (id)unknownInstance
{
  v2 = objc_alloc_init(LACUserInterfaceRequest);

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v28 = a3;
  v4 = [(LACUserInterfaceRequest *)self identifier];
  v5 = NSStringFromSelector(sel_identifier);
  [v28 encodeInteger:v4 forKey:v5];

  v6 = [(LACUserInterfaceRequest *)self evaluationRequestIdentifier];
  v7 = NSStringFromSelector(sel_evaluationRequestIdentifier);
  [v28 encodeInteger:v6 forKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(LACUserInterfaceRequest *)self connectionEndpoint];
    v9 = NSStringFromSelector(sel_connectionEndpoint);
    [v28 encodeObject:v8 forKey:v9];
  }

  v10 = [(LACUserInterfaceRequest *)self contextID];
  v11 = NSStringFromSelector(sel_contextID);
  [v28 encodeObject:v10 forKey:v11];

  v12 = [(LACUserInterfaceRequest *)self clientAuditTokenData];
  v13 = NSStringFromSelector(sel_clientAuditTokenData);
  [v28 encodeObject:v12 forKey:v13];

  v14 = [(LACUserInterfaceRequest *)self clientInfo];
  v15 = NSStringFromSelector(sel_clientInfo);
  [v28 encodeObject:v14 forKey:v15];

  v16 = [(LACUserInterfaceRequest *)self clientProcessId];
  v17 = NSStringFromSelector(sel_clientProcessId);
  [v28 encodeInt:v16 forKey:v17];

  v18 = [(LACUserInterfaceRequest *)self isAuditTokenApplicationIdentity];
  v19 = NSStringFromSelector(sel_isAuditTokenApplicationIdentity);
  [v28 encodeBool:v18 forKey:v19];

  v20 = [(LACUserInterfaceRequest *)self isForSiri];
  v21 = NSStringFromSelector(sel_isForSiri);
  [v28 encodeBool:v20 forKey:v21];

  v22 = [(LACUserInterfaceRequest *)self isForSoftwareUpdate];
  v23 = NSStringFromSelector(sel_isForSoftwareUpdate);
  [v28 encodeBool:v22 forKey:v23];

  v24 = [(LACUserInterfaceRequest *)self isRunningInSystemContext];
  v25 = NSStringFromSelector(sel_isRunningInSystemContext);
  [v28 encodeBool:v24 forKey:v25];

  v26 = [(LACUserInterfaceRequest *)self isRunningInRecovery];
  v27 = NSStringFromSelector(sel_isRunningInRecovery);
  [v28 encodeBool:v26 forKey:v27];
}

- (LACUserInterfaceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACUserInterfaceRequest *)self init];
  v6 = NSStringFromSelector(sel_identifier);
  -[LACUserInterfaceRequest setIdentifier:](v5, "setIdentifier:", [v4 decodeIntegerForKey:v6]);

  v7 = NSStringFromSelector(sel_evaluationRequestIdentifier);
  -[LACUserInterfaceRequest setEvaluationRequestIdentifier:](v5, "setEvaluationRequestIdentifier:", [v4 decodeIntegerForKey:v7]);

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contextID);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
  [(LACUserInterfaceRequest *)v5 setContextID:v10];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_connectionEndpoint);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    [(LACUserInterfaceRequest *)v5 setConnectionEndpoint:v13];
  }

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_clientAuditTokenData);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
  [(LACUserInterfaceRequest *)v5 setClientAuditTokenData:v16];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_clientInfo);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
  [(LACUserInterfaceRequest *)v5 setClientInfo:v19];

  v20 = NSStringFromSelector(sel_clientProcessId);
  -[LACUserInterfaceRequest setClientProcessId:](v5, "setClientProcessId:", [v4 decodeIntForKey:v20]);

  v21 = NSStringFromSelector(sel_isAuditTokenApplicationIdentity);
  -[LACUserInterfaceRequest setIsAuditTokenApplicationIdentity:](v5, "setIsAuditTokenApplicationIdentity:", [v4 decodeBoolForKey:v21]);

  v22 = NSStringFromSelector(sel_isForSiri);
  -[LACUserInterfaceRequest setIsForSiri:](v5, "setIsForSiri:", [v4 decodeBoolForKey:v22]);

  v23 = NSStringFromSelector(sel_isForSoftwareUpdate);
  -[LACUserInterfaceRequest setIsForSoftwareUpdate:](v5, "setIsForSoftwareUpdate:", [v4 decodeBoolForKey:v23]);

  v24 = NSStringFromSelector(sel_isRunningInRecovery);
  -[LACUserInterfaceRequest setIsRunningInRecovery:](v5, "setIsRunningInRecovery:", [v4 decodeBoolForKey:v24]);

  v25 = NSStringFromSelector(sel_isRunningInSystemContext);
  -[LACUserInterfaceRequest setIsRunningInSystemContext:](v5, "setIsRunningInSystemContext:", [v4 decodeBoolForKey:v25]);

  return v5;
}

- (NSString)description
{
  v53[12] = *MEMORY[0x1E69E9840];
  v47 = MEMORY[0x1E696AEC0];
  v45 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LACUserInterfaceRequest identifier](self, "identifier")}];
  v51 = [v3 stringWithFormat:@"identifier: %@", v52];
  v53[0] = v51;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LACUserInterfaceRequest *)self connectionEndpoint];
  v50 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v49 = [v4 stringWithFormat:@"connectionEndpoint: %@", v5];
  v53[1] = v49;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(LACUserInterfaceRequest *)self contextID];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v8;
  v31 = v7;
  v46 = [v6 stringWithFormat:@"contextID: %@", v7];
  v53[2] = v46;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [(LACUserInterfaceRequest *)self clientAuditTokenData];
  v44 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v10;
  v43 = [v9 stringWithFormat:@"clientAuditTokenData: %@", v10];
  v53[3] = v43;
  v11 = MEMORY[0x1E696AEC0];
  v42 = [(LACUserInterfaceRequest *)self clientInfo];
  v41 = [v11 stringWithFormat:@"clientInfo: %@", v42];
  v53[4] = v41;
  v12 = MEMORY[0x1E696AEC0];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[LACUserInterfaceRequest clientProcessId](self, "clientProcessId")}];
  v39 = [v12 stringWithFormat:@"clientProcessId: %@", v40];
  v53[5] = v39;
  v13 = MEMORY[0x1E696AEC0];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LACUserInterfaceRequest evaluationRequestIdentifier](self, "evaluationRequestIdentifier")}];
  v37 = [v13 stringWithFormat:@"evaluationRequestIdentifier: %@", v38];
  v53[6] = v37;
  v14 = MEMORY[0x1E696AEC0];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUserInterfaceRequest isAuditTokenApplicationIdentity](self, "isAuditTokenApplicationIdentity")}];
  v35 = [v14 stringWithFormat:@"isAuditTokenApplicationIdentity: %@", v36];
  v53[7] = v35;
  v15 = MEMORY[0x1E696AEC0];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUserInterfaceRequest isForSiri](self, "isForSiri")}];
  v33 = [v15 stringWithFormat:@"isForSiri: %@", v34];
  v53[8] = v33;
  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUserInterfaceRequest isForSoftwareUpdate](self, "isForSoftwareUpdate")}];
  v18 = [v16 stringWithFormat:@"isForSoftwareUpdate: %@", v17];
  v53[9] = v18;
  v19 = MEMORY[0x1E696AEC0];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUserInterfaceRequest isRunningInRecovery](self, "isRunningInRecovery")}];
  v21 = [v19 stringWithFormat:@"isRunningInRecovery: %@", v20];
  v53[10] = v21;
  v22 = MEMORY[0x1E696AEC0];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUserInterfaceRequest isRunningInSystemContext](self, "isRunningInSystemContext")}];
  v24 = [v22 stringWithFormat:@"isRunningInSystemContext: %@", v23];
  v53[11] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:12];
  v26 = [v25 componentsJoinedByString:@" "];;
  v27 = [v47 stringWithFormat:@"<%@ %p %@>", v45, self, v26];;

  if (!v44)
  {
  }

  if (!v48)
  {
  }

  if (!v50)
  {
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

@end