@interface FudPersonalizationRequest
- (FudPersonalizationRequest)initWithCoder:(id)coder;
- (FudPersonalizationRequest)initWithName:(id)name;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FudPersonalizationRequest

- (FudPersonalizationRequest)initWithName:(id)name
{
  selfCopy = self;
  if (name)
  {
    v19.receiver = self;
    v19.super_class = FudPersonalizationRequest;
    selfCopy = [(FudPersonalizationRequest *)&v19 init];
    if (selfCopy)
    {
      nameCopy = name;
      *&selfCopy->_boardID = 0;
      selfCopy->_responseFormat = 0;
      selfCopy->_globalSigning = 0;
      selfCopy->_requestName = nameCopy;
      selfCopy->_requestPrefix = 0;
      selfCopy->_ecID = 0;
      selfCopy->_extEcID = 0;
      *&selfCopy->_securityDomain = 1;
      selfCopy->_responseAlignment = 0;
      *&selfCopy->_cproSet = 0;
      selfCopy->_objectList = 0;
      selfCopy->_payload = 0;
      selfCopy->_nonceHash = 0;
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

  return selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_requestName forKey:@"requestName"];
  [coder encodeObject:self->_requestPrefix forKey:@"requestPrefix"];
  [coder encodeInt32:self->_responseFormat forKey:@"requestRspFormat"];
  [coder encodeInt32:self->_boardID forKey:@"requestBoardID"];
  [coder encodeInt32:self->_chipID forKey:@"requestChipID"];
  [coder encodeInt64:self->_ecID forKey:@"requestECID"];
  [coder encodeObject:self->_extEcID forKey:@"requestExtECID"];
  [coder encodeBool:self->_globalSigning forKey:@"requestGlobalSign"];
  [coder encodeInt32:self->_securityDomain forKey:@"requestSecDomain"];
  [coder encodeBool:self->_cproSet forKey:@"requestProdModeSet"];
  [coder encodeBool:self->_productionMode forKey:@"requestProdMode"];
  [coder encodeBool:self->_csecSet forKey:@"requestSecModeSet"];
  [coder encodeBool:self->_securityMode forKey:@"requestSecMode"];
  [coder encodeObject:self->_nonceHash forKey:@"requestNonceHash"];
  [coder encodeBool:self->_cepoSet forKey:@"requestChipEpochSet"];
  [coder encodeInt32:self->_chipEpoch forKey:@"requestChipEpoch"];
  [coder encodeBool:self->_enableMixMatch forKey:@"requestEnableMixMatch"];
  [coder encodeObject:self->_objectList forKey:@"requestObjects"];
  [coder encodeObject:self->_payload forKey:@"requestPayload"];
  responseAlignment = self->_responseAlignment;

  [coder encodeInt32:responseAlignment forKey:@"requestRspAlign"];
}

- (FudPersonalizationRequest)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = FudPersonalizationRequest;
  v4 = [(FudPersonalizationRequest *)&v10 init];
  if (v4)
  {
    v4->_requestName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestName"];
    v4->_requestPrefix = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestPrefix"];
    v4->_responseFormat = [coder decodeInt32ForKey:@"requestRspFormat"];
    v4->_boardID = [coder decodeInt32ForKey:@"requestBoardID"];
    v4->_chipID = [coder decodeInt32ForKey:@"requestChipID"];
    v4->_ecID = [coder decodeInt64ForKey:@"requestECID"];
    v4->_extEcID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestExtECID"];
    v4->_globalSigning = [coder decodeBoolForKey:@"requestGlobalSign"];
    v4->_securityDomain = [coder decodeInt32ForKey:@"requestSecDomain"];
    v4->_cproSet = [coder decodeBoolForKey:@"requestProdModeSet"];
    v4->_productionMode = [coder decodeBoolForKey:@"requestProdMode"];
    v4->_csecSet = [coder decodeBoolForKey:@"requestSecModeSet"];
    v4->_securityMode = [coder decodeBoolForKey:@"requestSecMode"];
    v4->_nonceHash = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestNonceHash"];
    v4->_cepoSet = [coder decodeBoolForKey:@"requestChipEpochSet"];
    v4->_chipEpoch = [coder decodeInt32ForKey:@"requestChipEpoch"];
    v4->_enableMixMatch = [coder decodeBoolForKey:@"requestEnableMixMatch"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v4->_objectList = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), @"requestObjects"}];
    v4->_payload = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestPayload"];
    v4->_responseAlignment = [coder decodeInt32ForKey:@"requestRspAlign"];
  }

  return v4;
}

@end