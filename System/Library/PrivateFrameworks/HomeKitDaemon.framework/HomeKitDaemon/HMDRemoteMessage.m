@interface HMDRemoteMessage
+ (HMDRemoteMessage)messageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6 restriction:(unint64_t)a7;
+ (id)secureMessageWithName:(id)a3 destination:(id)a4 messagePayload:(id)a5;
+ (id)secureMessageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6;
+ (id)secureMessageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6 restriction:(unint64_t)a7;
+ (id)secureMessageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6 timeout:(double)a7 restriction:(unint64_t)a8;
- (HMDRemoteMessage)initWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 payload:(id)a6 headers:(id)a7 type:(int64_t)a8 timeout:(double)a9 secure:(BOOL)a10 restriction:(unint64_t)a11 sendOptions:(unint64_t)a12 collapseID:(id)a13;
- (NSString)attributedMessageName;
- (NSString)collapseID;
- (id)copyWithDestination:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (void)setAttributedMessageName:(id)a3;
- (void)setInternalResponseHandler:(id)a3;
- (void)setResponseHandler:(id)a3;
- (void)setResponseRestriction:(unint64_t)a3;
- (void)setRestriction:(unint64_t)a3;
- (void)setSenderContext:(id)a3;
- (void)setToID:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation HMDRemoteMessage

- (id)copyWithDestination:(id)a3
{
  v4 = a3;
  v5 = [HMDRemoteMessage alloc];
  v6 = [(HMDRemoteMessage *)self name];
  v7 = [(HMDRemoteMessage *)self qualityOfService];
  v8 = [(HMDRemoteMessage *)self messagePayload];
  v9 = [(HMDRemoteMessage *)self headers];
  v10 = [(HMDRemoteMessage *)self type];
  [(HMDRemoteMessage *)self timeout];
  v12 = v11;
  LOBYTE(v17) = [(HMDRemoteMessage *)self isSecure];
  v13 = [(HMDRemoteMessage *)v5 initWithName:v6 qualityOfService:v7 destination:v4 payload:v8 headers:v9 type:v10 timeout:v12 secure:v17 restriction:[(HMDRemoteMessage *)self restriction] sendOptions:[(HMDRemoteMessage *)self sendOptions]];

  v14 = [(HMDRemoteMessage *)self transactionIdentifier];
  [(HMDRemoteMessage *)v13 setTransactionIdentifier:v14];

  v15 = [(HMDRemoteMessage *)self identifier];
  [(HMDRemoteMessage *)v13 setIdentifier:v15];

  [(HMDRemoteMessage *)v13 setDisallowsIDSRacing:[(HMDRemoteMessage *)self disallowsIDSRacing]];
  return v13;
}

- (NSString)collapseID
{
  v2 = [(HMDRemoteMessage *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMD.remoteCollapseID"];

  return v3;
}

- (void)setToID:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteMessage *)self userInfo];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"kRemoteMessageIDSToIDKey"];
  v6 = [(HMDRemoteMessage *)self internal];
  [v6 setUserInfo:v7];
}

- (void)setSenderContext:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteMessage *)self userInfo];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"HMD.remoteSenderContext"];
  v6 = [(HMDRemoteMessage *)self internal];
  [v6 setUserInfo:v7];
}

- (void)setAttributedMessageName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMDRemoteMessage *)self userInfo];
    v8 = [v5 mutableCopy];

    [v8 setObject:v4 forKeyedSubscript:@"HMD.attributedMessageName"];
    v6 = [(HMDRemoteMessage *)self internal];
    v7 = [v8 copy];
    [v6 setUserInfo:v7];
  }
}

- (NSString)attributedMessageName
{
  v2 = [(HMDRemoteMessage *)self internal];
  v3 = [v2 userInfo];
  v4 = [v3 hmf_stringForKey:@"HMD.attributedMessageName"];

  return v4;
}

- (void)setResponseRestriction:(unint64_t)a3
{
  v5 = [(HMDRemoteMessage *)self userInfo];
  v9 = [v5 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v9 setObject:v6 forKeyedSubscript:@"HMD.remoteTransportResponseRestriction"];

  v7 = [(HMDRemoteMessage *)self internal];
  v8 = [v9 copy];
  [v7 setUserInfo:v8];
}

- (void)setRestriction:(unint64_t)a3
{
  v5 = [(HMDRemoteMessage *)self userInfo];
  v9 = [v5 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v9 setObject:v6 forKeyedSubscript:@"HMD.remoteTransportRestriction"];

  v7 = [(HMDRemoteMessage *)self internal];
  v8 = [v9 copy];
  [v7 setUserInfo:v8];
}

- (void)setInternalResponseHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMDRemoteMessage;
  [(HMDRemoteMessage *)&v3 setResponseHandler:a3];
}

- (void)setResponseHandler:(id)a3
{
  v4 = a3;
  if (v4 && [(HMDRemoteMessage *)self type]== 3)
  {
    [(HMDRemoteMessage *)self setType:0];
  }

  v5.receiver = self;
  v5.super_class = HMDRemoteMessage;
  [(HMDRemoteMessage *)&v5 setResponseHandler:v4];
}

- (void)setType:(int64_t)a3
{
  self->_type = a3;
  if (!a3)
  {
    v4 = [(HMDRemoteMessage *)self transactionIdentifier];

    if (!v4)
    {
      v5 = [MEMORY[0x277CCAD78] UUID];
      [(HMDRemoteMessage *)self setTransactionIdentifier:v5];
    }
  }
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = shouldLogPrivateInformation();
  v6 = [(HMDRemoteMessage *)self destination];
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v8 = [v6 privateDescription];

    v7 = v8;
  }

  if (shouldLogPrivateInformation())
  {
    v24 = [(HMDRemoteMessage *)self userInfo];
  }

  else
  {
    v24 = @"...";
    v9 = @"...";
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v10 = &stru_283CF9D50;
  }

  v23 = v3;
  v11 = [(HMDRemoteMessage *)self identifier];
  v12 = [v11 UUIDString];
  v13 = [(HMDRemoteMessage *)self name];
  [(HMDRemoteMessage *)self qualityOfService];
  v14 = HMFQualityOfServiceToString();
  v15 = [(HMDRemoteMessage *)self type];
  if (v15 > 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_278689828[v15];
  }

  v17 = [(HMDRemoteMessage *)self transactionIdentifier];
  v18 = [(HMDRemoteMessage *)self headers];
  v19 = [v21 stringWithFormat:@"<%@%@, Identifier = %@, Name = %@, QoS = %@, Type = %@, TransactionIdentifier = %@, Destination = %@, \nUser Info = %@, \nHeaders = %@>", v22, v10, v12, v13, v14, v16, v17, v7, v24, v18];

  if (v23)
  {
  }

  return v19;
}

- (HMDRemoteMessage)initWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 payload:(id)a6 headers:(id)a7 type:(int64_t)a8 timeout:(double)a9 secure:(BOOL)a10 restriction:(unint64_t)a11 sendOptions:(unint64_t)a12 collapseID:(id)a13
{
  v42[3] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a13;
  v24 = __ROR8__(a4 - 9, 3);
  if (v24 >= 4)
  {
    v25 = HMDCurrentQOSWithFloor();
  }

  else
  {
    v25 = 8 * v24 + 9;
  }

  v42[0] = MEMORY[0x277CBEC38];
  v41[0] = @"HMD.remote";
  v41[1] = @"HMD.remoteSecure";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{a10, a8}];
  v42[1] = v26;
  v41[2] = @"HMD.remoteTransportRestriction";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a11];
  v42[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

  if (v23)
  {
    v29 = [v28 mutableCopy];
    [v29 setObject:v23 forKeyedSubscript:@"HMD.remoteCollapseID"];
    v30 = [v29 copy];

    v28 = v30;
  }

  v40.receiver = self;
  v40.super_class = HMDRemoteMessage;
  v31 = [(HMDRemoteMessage *)&v40 initWithName:v19 qualityOfService:v25 destination:v20 userInfo:v28 headers:v22 payload:v21];
  v32 = v31;
  if (v31)
  {
    v31->_type = v39;
    if (a9 > 0.0)
    {
      v33 = [(HMDRemoteMessage *)v31 internal];
      [v33 setTimeout:a9];
    }

    if (!v39)
    {
      v34 = [MEMORY[0x277CCAD78] UUID];
      transactionIdentifier = v32->_transactionIdentifier;
      v32->_transactionIdentifier = v34;
    }

    v32->_sendOptions = a12;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (HMDRemoteMessage)messageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6 restriction:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [[a1 alloc] initWithName:v14 qualityOfService:a4 destination:v13 payload:v12 type:3 timeout:0 secure:0.0 restriction:a7 sendOptions:0];

  return v15;
}

+ (id)secureMessageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6 timeout:(double)a7 restriction:(unint64_t)a8
{
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [[a1 alloc] initWithName:v16 qualityOfService:a4 destination:v15 payload:v14 type:3 timeout:1 secure:a7 restriction:a8 sendOptions:0];

  return v17;
}

+ (id)secureMessageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6 restriction:(unint64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [[a1 alloc] initWithName:v14 qualityOfService:a4 destination:v13 payload:v12 type:3 timeout:1 secure:0.0 restriction:a7 sendOptions:0];

  return v15;
}

+ (id)secureMessageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 messagePayload:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initWithName:v12 qualityOfService:a4 destination:v11 payload:v10 type:3 timeout:1 secure:0.0 restriction:-1 sendOptions:0];

  return v13;
}

+ (id)secureMessageWithName:(id)a3 destination:(id)a4 messagePayload:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 qualityOfService:-1 destination:v9 payload:v8 type:3 timeout:1 secure:0.0 restriction:-1 sendOptions:0];

  return v11;
}

@end