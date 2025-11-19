@interface CtrAccessorySpecificThreadInfoInput
- (CtrAccessorySpecificThreadInfoInput)initWithCoder:(id)a3;
- (id)initData:(id)a3 accessoryModel:(id)a4 hostName:(id)a5 serviceInstanceName:(id)a6 ipv6Address:(id)a7 browseStatus:(int64_t)a8 resolveStatus:(int64_t)a9 transactionStatus:(int64_t)a10 isWrite:(BOOL)a11 isLinkFallback:(BOOL)a12 communicationProtocol:(int64_t)a13 hapThreadAccessoryCapabilities:(int64_t)a14 errorCode:(unint64_t)a15 hapTokenInfo:(unint64_t)a16 matterSessionInfo:(unint64_t)a17 consecutiveFailureCount:(unint64_t)a18 consecutiveSuccessCount:(unint64_t)a19 durationSecondsSinceLastSuccessfulRequest:(unint64_t)a20;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CtrAccessorySpecificThreadInfoInput

- (id)initData:(id)a3 accessoryModel:(id)a4 hostName:(id)a5 serviceInstanceName:(id)a6 ipv6Address:(id)a7 browseStatus:(int64_t)a8 resolveStatus:(int64_t)a9 transactionStatus:(int64_t)a10 isWrite:(BOOL)a11 isLinkFallback:(BOOL)a12 communicationProtocol:(int64_t)a13 hapThreadAccessoryCapabilities:(int64_t)a14 errorCode:(unint64_t)a15 hapTokenInfo:(unint64_t)a16 matterSessionInfo:(unint64_t)a17 consecutiveFailureCount:(unint64_t)a18 consecutiveSuccessCount:(unint64_t)a19 durationSecondsSinceLastSuccessfulRequest:(unint64_t)a20
{
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  obj = a7;
  v30 = a7;
  v36.receiver = self;
  v36.super_class = CtrAccessorySpecificThreadInfoInput;
  v31 = [(CtrAccessorySpecificThreadInfoInput *)&v36 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_accessoryManufacturer, a3);
    objc_storeStrong(&v32->_accessoryModel, a4);
    objc_storeStrong(&v32->_hostName, a5);
    objc_storeStrong(&v32->_serviceInstanceName, a6);
    objc_storeStrong(&v32->_ipv6Address, obj);
    v32->_browseStatus = a8;
    v32->_resolveStatus = a9;
    v32->_isWrite = a11;
    v32->_isLinkFallBack = a12;
    v32->_transactionStatus = a10;
    v32->_communicationProtocol = a13;
    v32->_hapThreadAccessoryCapabilities = a14;
    v32->_errorCode = a15;
    v32->_hapCoAPTokenInfo = a16;
    v32->_matterSessionInfo = a17;
    v32->_consecutiveFailureCount = a18;
    v32->_consecutiveSuccessCount = a19;
    v32->_durationSecondsSinceLastSuccessfulRequest = a20;
  }

  return v32;
}

- (CtrAccessorySpecificThreadInfoInput)initWithCoder:(id)a3
{
  v3 = a3;
  v15 = [v3 decodeObjectForKey:@"accessoryManufacturer"];
  v14 = [v3 decodeObjectForKey:@"accessoryModel"];
  v13 = [v3 decodeObjectForKey:@"hostName"];
  v12 = [v3 decodeObjectForKey:@"serviceInstanceName"];
  v11 = [v3 decodeObjectForKey:@"ipAddress"];
  v10 = [v3 decodeIntegerForKey:@"browseStatus"];
  v9 = [v3 decodeIntegerForKey:@"resolveStatus"];
  v8 = [v3 decodeIntegerForKey:@"transactionStatus"];
  v7 = [v3 decodeIntegerForKey:@"isWrite"];
  BYTE1(v6) = [v3 decodeIntegerForKey:@"isLinkFallback"] != 0;
  LOBYTE(v6) = v7 != 0;
  v4 = -[CtrAccessorySpecificThreadInfoInput initData:accessoryModel:hostName:serviceInstanceName:ipv6Address:browseStatus:resolveStatus:transactionStatus:isWrite:isLinkFallback:communicationProtocol:hapThreadAccessoryCapabilities:errorCode:hapTokenInfo:matterSessionInfo:consecutiveFailureCount:consecutiveSuccessCount:durationSecondsSinceLastSuccessfulRequest:](self, "initData:accessoryModel:hostName:serviceInstanceName:ipv6Address:browseStatus:resolveStatus:transactionStatus:isWrite:isLinkFallback:communicationProtocol:hapThreadAccessoryCapabilities:errorCode:hapTokenInfo:matterSessionInfo:consecutiveFailureCount:consecutiveSuccessCount:durationSecondsSinceLastSuccessfulRequest:", v15, v14, v13, v12, v11, v10, v9, v8, v6, [v3 decodeIntegerForKey:@"communicationProtocol"], objc_msgSend(v3, "decodeIntegerForKey:", @"hapThreadAccessoryCapabilities"), objc_msgSend(v3, "decodeInt64ForKey:", @"errorCode"), objc_msgSend(v3, "decodeInt64ForKey:", @"hapCoAPTokenInfo"), objc_msgSend(v3, "decodeInt64ForKey:", @"matterSessionInfo"), objc_msgSend(v3, "decodeInt64ForKey:", @"consecutiveFailureCount"), objc_msgSend(v3, "decodeInt64ForKey:", @"consecutiveSuccessCount"), objc_msgSend(v3, "decodeInt64ForKey:", @"durationSecondsSinceLastSuccessfulRequest"));

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(CtrAccessorySpecificThreadInfoInput *)self accessoryManufacturer];
  [v9 encodeObject:v4 forKey:@"accessoryManufacturer"];

  v5 = [(CtrAccessorySpecificThreadInfoInput *)self accessoryModel];
  [v9 encodeObject:v5 forKey:@"accessoryModel"];

  v6 = [(CtrAccessorySpecificThreadInfoInput *)self hostName];
  [v9 encodeObject:v6 forKey:@"hostName"];

  v7 = [(CtrAccessorySpecificThreadInfoInput *)self serviceInstanceName];
  [v9 encodeObject:v7 forKey:@"serviceInstanceName"];

  v8 = [(CtrAccessorySpecificThreadInfoInput *)self ipv6Address];
  [v9 encodeObject:v8 forKey:@"ipAddress"];

  [v9 encodeInteger:-[CtrAccessorySpecificThreadInfoInput browseStatus](self forKey:{"browseStatus"), @"browseStatus"}];
  [v9 encodeInteger:-[CtrAccessorySpecificThreadInfoInput resolveStatus](self forKey:{"resolveStatus"), @"resolveStatus"}];
  [v9 encodeInteger:-[CtrAccessorySpecificThreadInfoInput transactionStatus](self forKey:{"transactionStatus"), @"transactionStatus"}];
  [v9 encodeBool:-[CtrAccessorySpecificThreadInfoInput isWrite](self forKey:{"isWrite"), @"isWrite"}];
  [v9 encodeBool:-[CtrAccessorySpecificThreadInfoInput isLinkFallBack](self forKey:{"isLinkFallBack"), @"isLinkFallback"}];
  [v9 encodeInteger:-[CtrAccessorySpecificThreadInfoInput communicationProtocol](self forKey:{"communicationProtocol"), @"communicationProtocol"}];
  [v9 encodeInteger:-[CtrAccessorySpecificThreadInfoInput hapThreadAccessoryCapabilities](self forKey:{"hapThreadAccessoryCapabilities"), @"hapThreadAccessoryCapabilities"}];
  [v9 encodeInt64:-[CtrAccessorySpecificThreadInfoInput errorCode](self forKey:{"errorCode"), @"errorCode"}];
  [v9 encodeInt64:-[CtrAccessorySpecificThreadInfoInput hapCoAPTokenInfo](self forKey:{"hapCoAPTokenInfo"), @"hapCoAPTokenInfo"}];
  [v9 encodeInt64:-[CtrAccessorySpecificThreadInfoInput matterSessionInfo](self forKey:{"matterSessionInfo"), @"matterSessionInfo"}];
  [v9 encodeInt64:-[CtrAccessorySpecificThreadInfoInput consecutiveFailureCount](self forKey:{"consecutiveFailureCount"), @"consecutiveFailureCount"}];
  [v9 encodeInt64:-[CtrAccessorySpecificThreadInfoInput consecutiveSuccessCount](self forKey:{"consecutiveSuccessCount"), @"consecutiveSuccessCount"}];
  [v9 encodeInt64:-[CtrAccessorySpecificThreadInfoInput durationSecondsSinceLastSuccessfulRequest](self forKey:{"durationSecondsSinceLastSuccessfulRequest"), @"durationSecondsSinceLastSuccessfulRequest"}];
}

@end