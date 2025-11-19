@interface DRSSubmitRapidLogRequest
- (BOOL)isEqualToRequest:(id)a3;
- (DRSSubmitRapidLogRequest)initWithXPCDict:(id)a3;
- (id)_initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:(id)a3;
- (id)debugDescription;
- (void)_configureRequestMO:(id)a3;
@end

@implementation DRSSubmitRapidLogRequest

- (id)_initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DRSSubmitRapidLogRequest;
  v5 = [(DRSSubmitLogRequest *)&v13 _initWithSubmitLogRequestMO_ON_MOC_QUEUE:v4];
  if (v5)
  {
    v6 = [v4 cfDidSucceed];
    v7 = v5[18];
    v5[18] = v6;

    v8 = [v4 cfFailureReason];
    v9 = v5[19];
    v5[19] = v8;

    v10 = [v4 cfReplyPayload];
    v11 = v5[20];
    v5[20] = v10;
  }

  return v5;
}

- (DRSSubmitRapidLogRequest)initWithXPCDict:(id)a3
{
  v6.receiver = self;
  v6.super_class = DRSSubmitRapidLogRequest;
  v3 = [(DRSRequest *)&v6 initWithXPCDict:a3];
  v4 = v3;
  if (v3)
  {
    [(DRSRequest *)v3 setDecisionServerDecision:2];
  }

  return v4;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = DRSSubmitRapidLogRequest;
  if ([(DRSSubmitLogRequest *)&v31 isEqualToRequest:v4])
  {
    v5 = v4;
    v6 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
    v7 = [v5 cfDidSucceed];
    IsNil = _oneIsNil(v6, v7);

    if (IsNil)
    {
      goto LABEL_9;
    }

    v9 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
    if (v9)
    {
      v10 = v9;
      v11 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
      v12 = [v5 cfDidSucceed];
      v13 = [v11 isEqualToNumber:v12];

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v14 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
    v15 = [v5 cfFailureReason];
    v16 = _oneIsNil(v14, v15);

    if (v16)
    {
      goto LABEL_9;
    }

    v17 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
    if (v17)
    {
      v18 = v17;
      v19 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
      v20 = [v5 cfFailureReason];
      v21 = [v19 isEqualToString:v20];

      if (!v21)
      {
        goto LABEL_9;
      }
    }

    v22 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
    v23 = [v5 cfReplyPayload];
    v24 = _oneIsNil(v22, v23);

    if (v24)
    {
LABEL_9:
      v25 = 0;
    }

    else
    {
      v27 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
      if (v27)
      {
        v28 = v27;
        v29 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
        v30 = [v5 cfReplyPayload];
        v25 = [v29 isEqualToData:v30];
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = DRSSubmitRapidLogRequest;
  v4 = [(DRSRequest *)&v13 debugDescription];
  v5 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  if (v5)
  {
    v6 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  }

  else
  {
    v6 = @"-";
  }

  v7 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  if (v7)
  {
    v8 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  }

  else
  {
    v8 = @"-";
  }

  v9 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
  if (v9)
  {
    v10 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
    v11 = [v3 stringWithFormat:@"%@ %@ %@ %@", v4, v6, v8, v10];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%@ %@ %@ %@", v4, v6, v8, @"-"];
  }

  if (v7)
  {
  }

  if (v5)
  {
  }

  return v11;
}

- (void)_configureRequestMO:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DRSSubmitRapidLogRequest;
  [(DRSSubmitLogRequest *)&v9 _configureRequestMO:v4];
  v5 = v4;
  v6 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  [v5 setCfDidSucceed:v6];

  v7 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  [v5 setCfFailureReason:v7];

  v8 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
  [v5 setCfReplyPayload:v8];
}

@end