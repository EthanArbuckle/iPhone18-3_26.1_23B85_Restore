@interface CtrAccessorySpecificThreadInfoInput
- (CtrAccessorySpecificThreadInfoInput)initWithCoder:(id)coder;
- (id)initData:(id)data accessoryModel:(id)model hostName:(id)name serviceInstanceName:(id)instanceName ipv6Address:(id)address browseStatus:(int64_t)status resolveStatus:(int64_t)resolveStatus transactionStatus:(int64_t)self0 isWrite:(BOOL)self1 isLinkFallback:(BOOL)self2 communicationProtocol:(int64_t)self3 hapThreadAccessoryCapabilities:(int64_t)self4 errorCode:(unint64_t)self5 hapTokenInfo:(unint64_t)self6 matterSessionInfo:(unint64_t)self7 consecutiveFailureCount:(unint64_t)self8 consecutiveSuccessCount:(unint64_t)self9 durationSecondsSinceLastSuccessfulRequest:(unint64_t)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CtrAccessorySpecificThreadInfoInput

- (id)initData:(id)data accessoryModel:(id)model hostName:(id)name serviceInstanceName:(id)instanceName ipv6Address:(id)address browseStatus:(int64_t)status resolveStatus:(int64_t)resolveStatus transactionStatus:(int64_t)self0 isWrite:(BOOL)self1 isLinkFallback:(BOOL)self2 communicationProtocol:(int64_t)self3 hapThreadAccessoryCapabilities:(int64_t)self4 errorCode:(unint64_t)self5 hapTokenInfo:(unint64_t)self6 matterSessionInfo:(unint64_t)self7 consecutiveFailureCount:(unint64_t)self8 consecutiveSuccessCount:(unint64_t)self9 durationSecondsSinceLastSuccessfulRequest:(unint64_t)request
{
  dataCopy = data;
  modelCopy = model;
  nameCopy = name;
  instanceNameCopy = instanceName;
  obj = address;
  addressCopy = address;
  v36.receiver = self;
  v36.super_class = CtrAccessorySpecificThreadInfoInput;
  v31 = [(CtrAccessorySpecificThreadInfoInput *)&v36 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_accessoryManufacturer, data);
    objc_storeStrong(&v32->_accessoryModel, model);
    objc_storeStrong(&v32->_hostName, name);
    objc_storeStrong(&v32->_serviceInstanceName, instanceName);
    objc_storeStrong(&v32->_ipv6Address, obj);
    v32->_browseStatus = status;
    v32->_resolveStatus = resolveStatus;
    v32->_isWrite = write;
    v32->_isLinkFallBack = fallback;
    v32->_transactionStatus = transactionStatus;
    v32->_communicationProtocol = protocol;
    v32->_hapThreadAccessoryCapabilities = capabilities;
    v32->_errorCode = code;
    v32->_hapCoAPTokenInfo = info;
    v32->_matterSessionInfo = sessionInfo;
    v32->_consecutiveFailureCount = count;
    v32->_consecutiveSuccessCount = successCount;
    v32->_durationSecondsSinceLastSuccessfulRequest = request;
  }

  return v32;
}

- (CtrAccessorySpecificThreadInfoInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = [coderCopy decodeObjectForKey:@"accessoryManufacturer"];
  v14 = [coderCopy decodeObjectForKey:@"accessoryModel"];
  v13 = [coderCopy decodeObjectForKey:@"hostName"];
  v12 = [coderCopy decodeObjectForKey:@"serviceInstanceName"];
  v11 = [coderCopy decodeObjectForKey:@"ipAddress"];
  v10 = [coderCopy decodeIntegerForKey:@"browseStatus"];
  v9 = [coderCopy decodeIntegerForKey:@"resolveStatus"];
  v8 = [coderCopy decodeIntegerForKey:@"transactionStatus"];
  v7 = [coderCopy decodeIntegerForKey:@"isWrite"];
  BYTE1(v6) = [coderCopy decodeIntegerForKey:@"isLinkFallback"] != 0;
  LOBYTE(v6) = v7 != 0;
  v4 = -[CtrAccessorySpecificThreadInfoInput initData:accessoryModel:hostName:serviceInstanceName:ipv6Address:browseStatus:resolveStatus:transactionStatus:isWrite:isLinkFallback:communicationProtocol:hapThreadAccessoryCapabilities:errorCode:hapTokenInfo:matterSessionInfo:consecutiveFailureCount:consecutiveSuccessCount:durationSecondsSinceLastSuccessfulRequest:](self, "initData:accessoryModel:hostName:serviceInstanceName:ipv6Address:browseStatus:resolveStatus:transactionStatus:isWrite:isLinkFallback:communicationProtocol:hapThreadAccessoryCapabilities:errorCode:hapTokenInfo:matterSessionInfo:consecutiveFailureCount:consecutiveSuccessCount:durationSecondsSinceLastSuccessfulRequest:", v15, v14, v13, v12, v11, v10, v9, v8, v6, [coderCopy decodeIntegerForKey:@"communicationProtocol"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"hapThreadAccessoryCapabilities"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"errorCode"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"hapCoAPTokenInfo"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"matterSessionInfo"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"consecutiveFailureCount"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"consecutiveSuccessCount"), objc_msgSend(coderCopy, "decodeInt64ForKey:", @"durationSecondsSinceLastSuccessfulRequest"));

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryManufacturer = [(CtrAccessorySpecificThreadInfoInput *)self accessoryManufacturer];
  [coderCopy encodeObject:accessoryManufacturer forKey:@"accessoryManufacturer"];

  accessoryModel = [(CtrAccessorySpecificThreadInfoInput *)self accessoryModel];
  [coderCopy encodeObject:accessoryModel forKey:@"accessoryModel"];

  hostName = [(CtrAccessorySpecificThreadInfoInput *)self hostName];
  [coderCopy encodeObject:hostName forKey:@"hostName"];

  serviceInstanceName = [(CtrAccessorySpecificThreadInfoInput *)self serviceInstanceName];
  [coderCopy encodeObject:serviceInstanceName forKey:@"serviceInstanceName"];

  ipv6Address = [(CtrAccessorySpecificThreadInfoInput *)self ipv6Address];
  [coderCopy encodeObject:ipv6Address forKey:@"ipAddress"];

  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoInput browseStatus](self forKey:{"browseStatus"), @"browseStatus"}];
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoInput resolveStatus](self forKey:{"resolveStatus"), @"resolveStatus"}];
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoInput transactionStatus](self forKey:{"transactionStatus"), @"transactionStatus"}];
  [coderCopy encodeBool:-[CtrAccessorySpecificThreadInfoInput isWrite](self forKey:{"isWrite"), @"isWrite"}];
  [coderCopy encodeBool:-[CtrAccessorySpecificThreadInfoInput isLinkFallBack](self forKey:{"isLinkFallBack"), @"isLinkFallback"}];
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoInput communicationProtocol](self forKey:{"communicationProtocol"), @"communicationProtocol"}];
  [coderCopy encodeInteger:-[CtrAccessorySpecificThreadInfoInput hapThreadAccessoryCapabilities](self forKey:{"hapThreadAccessoryCapabilities"), @"hapThreadAccessoryCapabilities"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoInput errorCode](self forKey:{"errorCode"), @"errorCode"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoInput hapCoAPTokenInfo](self forKey:{"hapCoAPTokenInfo"), @"hapCoAPTokenInfo"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoInput matterSessionInfo](self forKey:{"matterSessionInfo"), @"matterSessionInfo"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoInput consecutiveFailureCount](self forKey:{"consecutiveFailureCount"), @"consecutiveFailureCount"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoInput consecutiveSuccessCount](self forKey:{"consecutiveSuccessCount"), @"consecutiveSuccessCount"}];
  [coderCopy encodeInt64:-[CtrAccessorySpecificThreadInfoInput durationSecondsSinceLastSuccessfulRequest](self forKey:{"durationSecondsSinceLastSuccessfulRequest"), @"durationSecondsSinceLastSuccessfulRequest"}];
}

@end