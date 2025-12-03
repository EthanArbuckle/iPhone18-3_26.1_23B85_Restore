@interface HMDRemoteMessage
+ (HMDRemoteMessage)messageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload restriction:(unint64_t)restriction;
+ (id)secureMessageWithName:(id)name destination:(id)destination messagePayload:(id)payload;
+ (id)secureMessageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload;
+ (id)secureMessageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload restriction:(unint64_t)restriction;
+ (id)secureMessageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload timeout:(double)timeout restriction:(unint64_t)restriction;
- (HMDRemoteMessage)initWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination payload:(id)payload headers:(id)headers type:(int64_t)type timeout:(double)timeout secure:(BOOL)self0 restriction:(unint64_t)self1 sendOptions:(unint64_t)self2 collapseID:(id)self3;
- (NSString)attributedMessageName;
- (NSString)collapseID;
- (id)copyWithDestination:(id)destination;
- (id)descriptionWithPointer:(BOOL)pointer;
- (void)setAttributedMessageName:(id)name;
- (void)setInternalResponseHandler:(id)handler;
- (void)setResponseHandler:(id)handler;
- (void)setResponseRestriction:(unint64_t)restriction;
- (void)setRestriction:(unint64_t)restriction;
- (void)setSenderContext:(id)context;
- (void)setToID:(id)d;
- (void)setType:(int64_t)type;
@end

@implementation HMDRemoteMessage

- (id)copyWithDestination:(id)destination
{
  destinationCopy = destination;
  v5 = [HMDRemoteMessage alloc];
  name = [(HMDRemoteMessage *)self name];
  qualityOfService = [(HMDRemoteMessage *)self qualityOfService];
  messagePayload = [(HMDRemoteMessage *)self messagePayload];
  headers = [(HMDRemoteMessage *)self headers];
  type = [(HMDRemoteMessage *)self type];
  [(HMDRemoteMessage *)self timeout];
  v12 = v11;
  LOBYTE(v17) = [(HMDRemoteMessage *)self isSecure];
  v13 = [(HMDRemoteMessage *)v5 initWithName:name qualityOfService:qualityOfService destination:destinationCopy payload:messagePayload headers:headers type:type timeout:v12 secure:v17 restriction:[(HMDRemoteMessage *)self restriction] sendOptions:[(HMDRemoteMessage *)self sendOptions]];

  transactionIdentifier = [(HMDRemoteMessage *)self transactionIdentifier];
  [(HMDRemoteMessage *)v13 setTransactionIdentifier:transactionIdentifier];

  identifier = [(HMDRemoteMessage *)self identifier];
  [(HMDRemoteMessage *)v13 setIdentifier:identifier];

  [(HMDRemoteMessage *)v13 setDisallowsIDSRacing:[(HMDRemoteMessage *)self disallowsIDSRacing]];
  return v13;
}

- (NSString)collapseID
{
  userInfo = [(HMDRemoteMessage *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"HMD.remoteCollapseID"];

  return v3;
}

- (void)setToID:(id)d
{
  dCopy = d;
  userInfo = [(HMDRemoteMessage *)self userInfo];
  v7 = [userInfo mutableCopy];

  [v7 setObject:dCopy forKeyedSubscript:@"kRemoteMessageIDSToIDKey"];
  internal = [(HMDRemoteMessage *)self internal];
  [internal setUserInfo:v7];
}

- (void)setSenderContext:(id)context
{
  contextCopy = context;
  userInfo = [(HMDRemoteMessage *)self userInfo];
  v7 = [userInfo mutableCopy];

  [v7 setObject:contextCopy forKeyedSubscript:@"HMD.remoteSenderContext"];
  internal = [(HMDRemoteMessage *)self internal];
  [internal setUserInfo:v7];
}

- (void)setAttributedMessageName:(id)name
{
  if (name)
  {
    nameCopy = name;
    userInfo = [(HMDRemoteMessage *)self userInfo];
    v8 = [userInfo mutableCopy];

    [v8 setObject:nameCopy forKeyedSubscript:@"HMD.attributedMessageName"];
    internal = [(HMDRemoteMessage *)self internal];
    v7 = [v8 copy];
    [internal setUserInfo:v7];
  }
}

- (NSString)attributedMessageName
{
  internal = [(HMDRemoteMessage *)self internal];
  userInfo = [internal userInfo];
  v4 = [userInfo hmf_stringForKey:@"HMD.attributedMessageName"];

  return v4;
}

- (void)setResponseRestriction:(unint64_t)restriction
{
  userInfo = [(HMDRemoteMessage *)self userInfo];
  v9 = [userInfo mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:restriction];
  [v9 setObject:v6 forKeyedSubscript:@"HMD.remoteTransportResponseRestriction"];

  internal = [(HMDRemoteMessage *)self internal];
  v8 = [v9 copy];
  [internal setUserInfo:v8];
}

- (void)setRestriction:(unint64_t)restriction
{
  userInfo = [(HMDRemoteMessage *)self userInfo];
  v9 = [userInfo mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:restriction];
  [v9 setObject:v6 forKeyedSubscript:@"HMD.remoteTransportRestriction"];

  internal = [(HMDRemoteMessage *)self internal];
  v8 = [v9 copy];
  [internal setUserInfo:v8];
}

- (void)setInternalResponseHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = HMDRemoteMessage;
  [(HMDRemoteMessage *)&v3 setResponseHandler:handler];
}

- (void)setResponseHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy && [(HMDRemoteMessage *)self type]== 3)
  {
    [(HMDRemoteMessage *)self setType:0];
  }

  v5.receiver = self;
  v5.super_class = HMDRemoteMessage;
  [(HMDRemoteMessage *)&v5 setResponseHandler:handlerCopy];
}

- (void)setType:(int64_t)type
{
  self->_type = type;
  if (!type)
  {
    transactionIdentifier = [(HMDRemoteMessage *)self transactionIdentifier];

    if (!transactionIdentifier)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(HMDRemoteMessage *)self setTransactionIdentifier:uUID];
    }
  }
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = shouldLogPrivateInformation();
  destination = [(HMDRemoteMessage *)self destination];
  v7 = destination;
  if ((v5 & 1) == 0)
  {
    privateDescription = [destination privateDescription];

    v7 = privateDescription;
  }

  if (shouldLogPrivateInformation())
  {
    userInfo = [(HMDRemoteMessage *)self userInfo];
  }

  else
  {
    userInfo = @"...";
    v9 = @"...";
  }

  v21 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v10 = &stru_283CF9D50;
  }

  v23 = pointerCopy;
  identifier = [(HMDRemoteMessage *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(HMDRemoteMessage *)self name];
  [(HMDRemoteMessage *)self qualityOfService];
  v14 = HMFQualityOfServiceToString();
  type = [(HMDRemoteMessage *)self type];
  if (type > 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_278689828[type];
  }

  transactionIdentifier = [(HMDRemoteMessage *)self transactionIdentifier];
  headers = [(HMDRemoteMessage *)self headers];
  v19 = [v21 stringWithFormat:@"<%@%@, Identifier = %@, Name = %@, QoS = %@, Type = %@, TransactionIdentifier = %@, Destination = %@, \nUser Info = %@, \nHeaders = %@>", shortDescription, v10, uUIDString, name, v14, v16, transactionIdentifier, v7, userInfo, headers];

  if (v23)
  {
  }

  return v19;
}

- (HMDRemoteMessage)initWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination payload:(id)payload headers:(id)headers type:(int64_t)type timeout:(double)timeout secure:(BOOL)self0 restriction:(unint64_t)self1 sendOptions:(unint64_t)self2 collapseID:(id)self3
{
  v42[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  destinationCopy = destination;
  payloadCopy = payload;
  headersCopy = headers;
  dCopy = d;
  v24 = __ROR8__(service - 9, 3);
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
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{secure, type}];
  v42[1] = v26;
  v41[2] = @"HMD.remoteTransportRestriction";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:restriction];
  v42[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

  if (dCopy)
  {
    v29 = [v28 mutableCopy];
    [v29 setObject:dCopy forKeyedSubscript:@"HMD.remoteCollapseID"];
    v30 = [v29 copy];

    v28 = v30;
  }

  v40.receiver = self;
  v40.super_class = HMDRemoteMessage;
  v31 = [(HMDRemoteMessage *)&v40 initWithName:nameCopy qualityOfService:v25 destination:destinationCopy userInfo:v28 headers:headersCopy payload:payloadCopy];
  v32 = v31;
  if (v31)
  {
    v31->_type = v39;
    if (timeout > 0.0)
    {
      internal = [(HMDRemoteMessage *)v31 internal];
      [internal setTimeout:timeout];
    }

    if (!v39)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      transactionIdentifier = v32->_transactionIdentifier;
      v32->_transactionIdentifier = uUID;
    }

    v32->_sendOptions = options;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (HMDRemoteMessage)messageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload restriction:(unint64_t)restriction
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v15 = [[self alloc] initWithName:nameCopy qualityOfService:service destination:destinationCopy payload:payloadCopy type:3 timeout:0 secure:0.0 restriction:restriction sendOptions:0];

  return v15;
}

+ (id)secureMessageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload timeout:(double)timeout restriction:(unint64_t)restriction
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v17 = [[self alloc] initWithName:nameCopy qualityOfService:service destination:destinationCopy payload:payloadCopy type:3 timeout:1 secure:timeout restriction:restriction sendOptions:0];

  return v17;
}

+ (id)secureMessageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload restriction:(unint64_t)restriction
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v15 = [[self alloc] initWithName:nameCopy qualityOfService:service destination:destinationCopy payload:payloadCopy type:3 timeout:1 secure:0.0 restriction:restriction sendOptions:0];

  return v15;
}

+ (id)secureMessageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination messagePayload:(id)payload
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v13 = [[self alloc] initWithName:nameCopy qualityOfService:service destination:destinationCopy payload:payloadCopy type:3 timeout:1 secure:0.0 restriction:-1 sendOptions:0];

  return v13;
}

+ (id)secureMessageWithName:(id)name destination:(id)destination messagePayload:(id)payload
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy qualityOfService:-1 destination:destinationCopy payload:payloadCopy type:3 timeout:1 secure:0.0 restriction:-1 sendOptions:0];

  return v11;
}

@end