@interface MUWebMessage
- (MUWebMessage)initWithJSONObject:(id)object;
- (NSDictionary)JSONObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MUWebMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  type = [(MUWebMessage *)self type];
  [v4 setType:type];

  caller = [(MUWebMessage *)self caller];
  [v4 setCaller:caller];

  callee = [(MUWebMessage *)self callee];
  [v4 setCallee:callee];

  method = [(MUWebMessage *)self method];
  [v4 setMethod:method];

  callNumber = [(MUWebMessage *)self callNumber];
  [v4 setCallNumber:callNumber];

  status = [(MUWebMessage *)self status];
  [v4 setStatus:status];

  arguments = [(MUWebMessage *)self arguments];
  [v4 setArguments:arguments];

  result = [(MUWebMessage *)self result];
  [v4 setResult:result];

  errorMessage = [(MUWebMessage *)self errorMessage];
  [v4 setErrorMessage:errorMessage];

  return v4;
}

- (id)description
{
  jSONObject = [(MUWebMessage *)self JSONObject];
  v3 = [jSONObject description];

  return v3;
}

- (NSDictionary)JSONObject
{
  v33[9] = *MEMORY[0x1E69E9840];
  v32[0] = @"type";
  type = [(MUWebMessage *)self type];
  v4 = type;
  if (!type)
  {
    type = [MEMORY[0x1E695DFB0] null];
  }

  v28 = type;
  v33[0] = type;
  v32[1] = @"caller";
  caller = [(MUWebMessage *)self caller];
  v6 = caller;
  if (!caller)
  {
    caller = [MEMORY[0x1E695DFB0] null];
  }

  v27 = caller;
  v33[1] = caller;
  v32[2] = @"callee";
  callee = [(MUWebMessage *)self callee];
  v8 = callee;
  if (!callee)
  {
    callee = [MEMORY[0x1E695DFB0] null];
  }

  v26 = callee;
  v33[2] = callee;
  v32[3] = @"method";
  method = [(MUWebMessage *)self method];
  v10 = method;
  if (!method)
  {
    method = [MEMORY[0x1E695DFB0] null];
  }

  v25 = method;
  v33[3] = method;
  v32[4] = @"callNumber";
  callNumber = [(MUWebMessage *)self callNumber];
  v12 = callNumber;
  if (!callNumber)
  {
    callNumber = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v24 = callNumber;
  v33[4] = callNumber;
  v32[5] = @"status";
  status = [(MUWebMessage *)self status];
  v14 = status;
  if (!status)
  {
    status = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v23 = status;
  v33[5] = status;
  v32[6] = @"arguments";
  arguments = [(MUWebMessage *)self arguments];
  null = arguments;
  if (!arguments)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = null;
  v32[7] = @"result";
  result = [(MUWebMessage *)self result];
  null2 = result;
  if (!result)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = null2;
  v32[8] = @"errorMessage";
  errorMessage = [(MUWebMessage *)self errorMessage];
  null3 = errorMessage;
  if (!errorMessage)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = null3;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:9];
  if (!errorMessage)
  {
  }

  if (!result)
  {
  }

  if (!arguments)
  {
  }

  if (!v14)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v30)
  {
  }

  if (!v31)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v29;
}

- (MUWebMessage)initWithJSONObject:(id)object
{
  objectCopy = object;
  v5 = [(MUWebMessage *)self init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [objectCopy objectForKeyedSubscript:@"type"];
  if (v6 && ([MEMORY[0x1E695DFB0] null], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, !v8))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_57;
    }

    v9 = v5;
    v10 = v6;
  }

  else
  {
    v9 = v5;
    v10 = 0;
  }

  [(MUWebMessage *)v9 setType:v10];
  v11 = [objectCopy objectForKeyedSubscript:@"caller"];
  if (v11 && ([MEMORY[0x1E695DFB0] null], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, !v13))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_56:

      goto LABEL_57;
    }

    v14 = v5;
    v15 = v11;
  }

  else
  {
    v14 = v5;
    v15 = 0;
  }

  [(MUWebMessage *)v14 setCaller:v15];
  v16 = [objectCopy objectForKeyedSubscript:@"callee"];
  if (v16 && ([MEMORY[0x1E695DFB0] null], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, !v18))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_52:

      goto LABEL_56;
    }

    v19 = v5;
    v20 = v16;
  }

  else
  {
    v19 = v5;
    v20 = 0;
  }

  [(MUWebMessage *)v19 setCallee:v20];
  v21 = [objectCopy objectForKeyedSubscript:@"method"];
  if (v21 && ([MEMORY[0x1E695DFB0] null], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqual:", v22), v22, !v23))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_51;
    }

    v24 = v5;
    v25 = v21;
  }

  else
  {
    v24 = v5;
    v25 = 0;
  }

  [(MUWebMessage *)v24 setMethod:v25];
  v26 = [objectCopy objectForKeyedSubscript:@"callNumber"];
  if (v26)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v28 = [v26 isEqual:null];

    if (!v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v26;
        v29 = v5;
        v55 = v26;
        goto LABEL_17;
      }

LABEL_51:
      goto LABEL_52;
    }
  }

  v55 = v26;
  v29 = v5;
  v30 = 0;
LABEL_17:
  [(MUWebMessage *)v29 setCallNumber:v30];
  v31 = [objectCopy objectForKeyedSubscript:@"status"];
  if (v31)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    v33 = [v31 isEqual:null2];

    if (!v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v53 = v16;
        v34 = v5;
        v35 = v31;
        goto LABEL_20;
      }

      goto LABEL_51;
    }
  }

  v53 = v16;
  v34 = v5;
  v35 = 0;
LABEL_20:
  [(MUWebMessage *)v34 setStatus:v35];
  v36 = [objectCopy objectForKeyedSubscript:@"arguments"];
  v54 = v21;
  if (v36 && ([MEMORY[0x1E695DFB0] null], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v36, "isEqual:", v37), v37, !v38))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_55:
      goto LABEL_56;
    }

    v39 = v5;
    v40 = v36;
  }

  else
  {
    v39 = v5;
    v40 = 0;
  }

  [(MUWebMessage *)v39 setArguments:v40];
  v41 = [objectCopy objectForKeyedSubscript:@"result"];
  if (v41)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
    v43 = [v41 isEqual:null3];

    if (!v43)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MUWebMessage *)v5 setResult:v41, v11];
        goto LABEL_26;
      }

      goto LABEL_55;
    }
  }

  [(MUWebMessage *)v5 setResult:0, v11];
LABEL_26:
  v44 = v54;
  v45 = [objectCopy objectForKeyedSubscript:@"errorMessage"];
  if (v45)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
    v47 = [v45 isEqual:null4];

    v44 = v54;
    if (!v47)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v5;
        v49 = v45;
        goto LABEL_29;
      }

LABEL_57:
      v50 = 0;
      goto LABEL_58;
    }
  }

  v48 = v5;
  v49 = 0;
LABEL_29:
  [(MUWebMessage *)v48 setErrorMessage:v49];

LABEL_30:
  v50 = v5;
LABEL_58:

  return v50;
}

@end