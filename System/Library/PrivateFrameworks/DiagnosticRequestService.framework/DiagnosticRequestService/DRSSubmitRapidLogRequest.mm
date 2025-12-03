@interface DRSSubmitRapidLogRequest
- (BOOL)isEqualToRequest:(id)request;
- (DRSSubmitRapidLogRequest)initWithXPCDict:(id)dict;
- (id)_initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:(id)e;
- (id)debugDescription;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSSubmitRapidLogRequest

- (id)_initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v13.receiver = self;
  v13.super_class = DRSSubmitRapidLogRequest;
  v5 = [(DRSSubmitLogRequest *)&v13 _initWithSubmitLogRequestMO_ON_MOC_QUEUE:eCopy];
  if (v5)
  {
    cfDidSucceed = [eCopy cfDidSucceed];
    v7 = v5[18];
    v5[18] = cfDidSucceed;

    cfFailureReason = [eCopy cfFailureReason];
    v9 = v5[19];
    v5[19] = cfFailureReason;

    cfReplyPayload = [eCopy cfReplyPayload];
    v11 = v5[20];
    v5[20] = cfReplyPayload;
  }

  return v5;
}

- (DRSSubmitRapidLogRequest)initWithXPCDict:(id)dict
{
  v6.receiver = self;
  v6.super_class = DRSSubmitRapidLogRequest;
  v3 = [(DRSRequest *)&v6 initWithXPCDict:dict];
  v4 = v3;
  if (v3)
  {
    [(DRSRequest *)v3 setDecisionServerDecision:2];
  }

  return v4;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v31.receiver = self;
  v31.super_class = DRSSubmitRapidLogRequest;
  if ([(DRSSubmitLogRequest *)&v31 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
    cfDidSucceed2 = [v5 cfDidSucceed];
    IsNil = _oneIsNil(cfDidSucceed, cfDidSucceed2);

    if (IsNil)
    {
      goto LABEL_9;
    }

    cfDidSucceed3 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
    if (cfDidSucceed3)
    {
      v10 = cfDidSucceed3;
      cfDidSucceed4 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
      cfDidSucceed5 = [v5 cfDidSucceed];
      v13 = [cfDidSucceed4 isEqualToNumber:cfDidSucceed5];

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    cfFailureReason = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
    cfFailureReason2 = [v5 cfFailureReason];
    v16 = _oneIsNil(cfFailureReason, cfFailureReason2);

    if (v16)
    {
      goto LABEL_9;
    }

    cfFailureReason3 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
    if (cfFailureReason3)
    {
      v18 = cfFailureReason3;
      cfFailureReason4 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
      cfFailureReason5 = [v5 cfFailureReason];
      v21 = [cfFailureReason4 isEqualToString:cfFailureReason5];

      if (!v21)
      {
        goto LABEL_9;
      }
    }

    cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
    cfReplyPayload2 = [v5 cfReplyPayload];
    v24 = _oneIsNil(cfReplyPayload, cfReplyPayload2);

    if (v24)
    {
LABEL_9:
      v25 = 0;
    }

    else
    {
      cfReplyPayload3 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
      if (cfReplyPayload3)
      {
        v28 = cfReplyPayload3;
        cfReplyPayload4 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
        cfReplyPayload5 = [v5 cfReplyPayload];
        v25 = [cfReplyPayload4 isEqualToData:cfReplyPayload5];
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
  cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  if (cfDidSucceed)
  {
    cfDidSucceed2 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  }

  else
  {
    cfDidSucceed2 = @"-";
  }

  cfFailureReason = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  if (cfFailureReason)
  {
    cfFailureReason2 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  }

  else
  {
    cfFailureReason2 = @"-";
  }

  cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
  if (cfReplyPayload)
  {
    cfReplyPayload2 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
    v11 = [v3 stringWithFormat:@"%@ %@ %@ %@", v4, cfDidSucceed2, cfFailureReason2, cfReplyPayload2];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%@ %@ %@ %@", v4, cfDidSucceed2, cfFailureReason2, @"-"];
  }

  if (cfFailureReason)
  {
  }

  if (cfDidSucceed)
  {
  }

  return v11;
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v9.receiver = self;
  v9.super_class = DRSSubmitRapidLogRequest;
  [(DRSSubmitLogRequest *)&v9 _configureRequestMO:oCopy];
  v5 = oCopy;
  cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  [v5 setCfDidSucceed:cfDidSucceed];

  cfFailureReason = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  [v5 setCfFailureReason:cfFailureReason];

  cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
  [v5 setCfReplyPayload:cfReplyPayload];
}

@end