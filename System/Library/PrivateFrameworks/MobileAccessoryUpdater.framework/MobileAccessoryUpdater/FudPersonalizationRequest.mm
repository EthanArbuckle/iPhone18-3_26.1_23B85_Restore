@interface FudPersonalizationRequest
- (FudPersonalizationRequest)initWithCoder:(id)a3;
- (FudPersonalizationRequest)initWithName:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FudPersonalizationRequest

- (FudPersonalizationRequest)initWithName:(id)a3
{
  v8 = self;
  if (a3)
  {
    v19.receiver = self;
    v19.super_class = FudPersonalizationRequest;
    v8 = [(FudPersonalizationRequest *)&v19 init];
    if (v8)
    {
      v17 = a3;
      *&v8->_boardID = 0;
      v8->_responseFormat = 0;
      v8->_globalSigning = 0;
      v8->_requestName = v17;
      v8->_requestPrefix = 0;
      v8->_ecID = 0;
      v8->_extEcID = 0;
      *&v8->_securityDomain = 1;
      v8->_responseAlignment = 0;
      *&v8->_cproSet = 0;
      v8->_objectList = 0;
      v8->_payload = 0;
      v8->_nonceHash = 0;
    }

    else
    {
      [(FudPersonalizationRequest *)0 initWithName:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    [(FudPersonalizationRequest *)self initWithName:a2, 0, v3, v4, v5, v6, v7];
  }

  return v8;
}

- (void)dealloc
{
  requestName = self->_requestName;
  if (requestName)
  {
  }

  requestPrefix = self->_requestPrefix;
  if (requestPrefix)
  {
  }

  nonceHash = self->_nonceHash;
  if (nonceHash)
  {
  }

  objectList = self->_objectList;
  if (objectList)
  {
  }

  payload = self->_payload;
  if (payload)
  {
  }

  extEcID = self->_extEcID;
  if (extEcID)
  {
  }

  v9.receiver = self;
  v9.super_class = FudPersonalizationRequest;
  [(FudPersonalizationRequest *)&v9 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_requestName forKey:@"requestName"];
  [a3 encodeObject:self->_requestPrefix forKey:@"requestPrefix"];
  [a3 encodeInt32:self->_responseFormat forKey:@"requestRspFormat"];
  [a3 encodeInt32:self->_boardID forKey:@"requestBoardID"];
  [a3 encodeInt32:self->_chipID forKey:@"requestChipID"];
  [a3 encodeInt64:self->_ecID forKey:@"requestECID"];
  [a3 encodeObject:self->_extEcID forKey:@"requestExtECID"];
  [a3 encodeBool:self->_globalSigning forKey:@"requestGlobalSign"];
  [a3 encodeInt32:self->_securityDomain forKey:@"requestSecDomain"];
  [a3 encodeBool:self->_cproSet forKey:@"requestProdModeSet"];
  [a3 encodeBool:self->_productionMode forKey:@"requestProdMode"];
  [a3 encodeBool:self->_csecSet forKey:@"requestSecModeSet"];
  [a3 encodeBool:self->_securityMode forKey:@"requestSecMode"];
  [a3 encodeObject:self->_nonceHash forKey:@"requestNonceHash"];
  [a3 encodeBool:self->_cepoSet forKey:@"requestChipEpochSet"];
  [a3 encodeInt32:self->_chipEpoch forKey:@"requestChipEpoch"];
  [a3 encodeBool:self->_enableMixMatch forKey:@"requestEnableMixMatch"];
  [a3 encodeObject:self->_objectList forKey:@"requestObjects"];
  [a3 encodeObject:self->_payload forKey:@"requestPayload"];
  responseAlignment = self->_responseAlignment;

  [a3 encodeInt32:responseAlignment forKey:@"requestRspAlign"];
}

- (FudPersonalizationRequest)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = FudPersonalizationRequest;
  v4 = [(FudPersonalizationRequest *)&v10 init];
  if (v4)
  {
    v4->_requestName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestName"];
    v4->_requestPrefix = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestPrefix"];
    v4->_responseFormat = [a3 decodeInt32ForKey:@"requestRspFormat"];
    v4->_boardID = [a3 decodeInt32ForKey:@"requestBoardID"];
    v4->_chipID = [a3 decodeInt32ForKey:@"requestChipID"];
    v4->_ecID = [a3 decodeInt64ForKey:@"requestECID"];
    v4->_extEcID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestExtECID"];
    v4->_globalSigning = [a3 decodeBoolForKey:@"requestGlobalSign"];
    v4->_securityDomain = [a3 decodeInt32ForKey:@"requestSecDomain"];
    v4->_cproSet = [a3 decodeBoolForKey:@"requestProdModeSet"];
    v4->_productionMode = [a3 decodeBoolForKey:@"requestProdMode"];
    v4->_csecSet = [a3 decodeBoolForKey:@"requestSecModeSet"];
    v4->_securityMode = [a3 decodeBoolForKey:@"requestSecMode"];
    v4->_nonceHash = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestNonceHash"];
    v4->_cepoSet = [a3 decodeBoolForKey:@"requestChipEpochSet"];
    v4->_chipEpoch = [a3 decodeInt32ForKey:@"requestChipEpoch"];
    v4->_enableMixMatch = [a3 decodeBoolForKey:@"requestEnableMixMatch"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v4->_objectList = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), @"requestObjects"}];
    v4->_payload = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestPayload"];
    v4->_responseAlignment = [a3 decodeInt32ForKey:@"requestRspAlign"];
  }

  return v4;
}

@end