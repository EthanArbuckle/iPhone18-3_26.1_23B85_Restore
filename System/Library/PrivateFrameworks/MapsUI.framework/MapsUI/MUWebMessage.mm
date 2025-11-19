@interface MUWebMessage
- (MUWebMessage)initWithJSONObject:(id)a3;
- (NSDictionary)JSONObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MUWebMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MUWebMessage *)self type];
  [v4 setType:v5];

  v6 = [(MUWebMessage *)self caller];
  [v4 setCaller:v6];

  v7 = [(MUWebMessage *)self callee];
  [v4 setCallee:v7];

  v8 = [(MUWebMessage *)self method];
  [v4 setMethod:v8];

  v9 = [(MUWebMessage *)self callNumber];
  [v4 setCallNumber:v9];

  v10 = [(MUWebMessage *)self status];
  [v4 setStatus:v10];

  v11 = [(MUWebMessage *)self arguments];
  [v4 setArguments:v11];

  v12 = [(MUWebMessage *)self result];
  [v4 setResult:v12];

  v13 = [(MUWebMessage *)self errorMessage];
  [v4 setErrorMessage:v13];

  return v4;
}

- (id)description
{
  v2 = [(MUWebMessage *)self JSONObject];
  v3 = [v2 description];

  return v3;
}

- (NSDictionary)JSONObject
{
  v33[9] = *MEMORY[0x1E69E9840];
  v32[0] = @"type";
  v3 = [(MUWebMessage *)self type];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v33[0] = v3;
  v32[1] = @"caller";
  v5 = [(MUWebMessage *)self caller];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v33[1] = v5;
  v32[2] = @"callee";
  v7 = [(MUWebMessage *)self callee];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v7;
  v33[2] = v7;
  v32[3] = @"method";
  v9 = [(MUWebMessage *)self method];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v9;
  v33[3] = v9;
  v32[4] = @"callNumber";
  v11 = [(MUWebMessage *)self callNumber];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v6;
  v24 = v11;
  v33[4] = v11;
  v32[5] = @"status";
  v13 = [(MUWebMessage *)self status];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v23 = v13;
  v33[5] = v13;
  v32[6] = @"arguments";
  v15 = [(MUWebMessage *)self arguments];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = v16;
  v32[7] = @"result";
  v17 = [(MUWebMessage *)self result];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = v18;
  v32[8] = @"errorMessage";
  v19 = [(MUWebMessage *)self errorMessage];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = v20;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:9];
  if (!v19)
  {
  }

  if (!v17)
  {
  }

  if (!v15)
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

- (MUWebMessage)initWithJSONObject:(id)a3
{
  v4 = a3;
  v5 = [(MUWebMessage *)self init];
  if (!v5)
  {
    goto LABEL_30;
  }

  v6 = [v4 objectForKeyedSubscript:@"type"];
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
  v11 = [v4 objectForKeyedSubscript:@"caller"];
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
  v16 = [v4 objectForKeyedSubscript:@"callee"];
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
  v21 = [v4 objectForKeyedSubscript:@"method"];
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
  v26 = [v4 objectForKeyedSubscript:@"callNumber"];
  if (v26)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
    v28 = [v26 isEqual:v27];

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
  v31 = [v4 objectForKeyedSubscript:@"status"];
  if (v31)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
    v33 = [v31 isEqual:v32];

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
  v36 = [v4 objectForKeyedSubscript:@"arguments"];
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
  v41 = [v4 objectForKeyedSubscript:@"result"];
  if (v41)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
    v43 = [v41 isEqual:v42];

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
  v45 = [v4 objectForKeyedSubscript:@"errorMessage"];
  if (v45)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
    v47 = [v45 isEqual:v46];

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