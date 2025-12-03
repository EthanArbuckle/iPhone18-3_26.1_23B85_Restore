@interface HMFMessage
+ (NSSet)allowedClassesForXPC;
+ (id)messageWithMessage:(id)message messagePayload:(id)payload;
+ (id)messageWithMessage:(id)message messagePayload:(id)payload responseHandler:(id)handler;
+ (id)messageWithName:(id)name destination:(id)destination payload:(id)payload;
+ (id)messageWithName:(id)name identifier:(id)identifier messagePayload:(id)payload;
+ (id)messageWithName:(id)name messagePayload:(id)payload;
+ (id)messageWithName:(id)name messagePayload:(id)payload responseHandler:(id)handler;
+ (id)messageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination payload:(id)payload;
+ (id)shortDescription;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLForKey:(id)key keyPresent:(BOOL *)present;
- (BOOL)respondWithError:(id)error;
- (BOOL)respondWithOutcomeOf:(id)of;
- (BOOL)respondWithPayload:(id)payload;
- (BOOL)respondWithPayload:(id)payload error:(id)error;
- (HMFActivity)activity;
- (HMFFlow)flow;
- (HMFMessage)init;
- (HMFMessage)initWithCoder:(id)coder;
- (HMFMessage)initWithInternalMessage:(id)message;
- (HMFMessage)initWithName:(id)name identifier:(id)identifier messagePayload:(id)payload responseHandler:(id)handler;
- (HMFMessage)initWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination userInfo:(id)info headers:(id)headers payload:(id)payload;
- (HMFMessageDestination)destination;
- (HMFMessageTransport)transport;
- (NSDictionary)headers;
- (NSDictionary)messagePayload;
- (NSDictionary)userInfo;
- (NSString)name;
- (NSString)untrustedClientIdentifier;
- (NSUUID)identifier;
- (id)URLForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)arrayOfDateComponentsForKey:(id)key;
- (id)calendarForKey:(id)key;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataForKey:(id)key;
- (id)dateComponentsForKey:(id)key;
- (id)dateForKey:(id)key;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)dictionaryForKey:(id)key;
- (id)errorForKey:(id)key;
- (id)fileHandleForKey:(id)key;
- (id)logEventSession;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)nullForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)predicateForKey:(id)key;
- (id)responseHandler;
- (id)setForKey:(id)key;
- (id)shortDescription;
- (id)stringForKey:(id)key;
- (id)timeZoneForKey:(id)key;
- (id)unarchivedObjectForKey:(id)key ofClasses:(id)classes;
- (id)uuidForKey:(id)key;
- (int64_t)qualityOfService;
- (void)__initWithInternalMessage:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)setDestination:(id)destination;
- (void)setIdentifier:(id)identifier;
- (void)setLogEventSession:(id)session;
- (void)setMessagePayload:(id)payload;
- (void)setResponseHandler:(id)handler;
@end

@implementation HMFMessage

+ (NSSet)allowedClassesForXPC
{
  v7[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  v7[10] = objc_opt_class();
  v7[11] = objc_opt_class();
  v7[12] = objc_opt_class();
  v7[13] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:14];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)qualityOfService
{
  internal = [(HMFMessage *)self internal];
  qualityOfService = [internal qualityOfService];

  return qualityOfService;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  name = [(HMFMessage *)self name];
  identifier = [(HMFMessage *)self identifier];
  uUIDString = [identifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@(%@)", shortDescription, name, uUIDString];

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)name
{
  internal = [(HMFMessage *)self internal];
  name = [internal name];

  return name;
}

- (NSUUID)identifier
{
  internal = [(HMFMessage *)self internal];
  identifier = [internal identifier];

  return identifier;
}

- (HMFActivity)activity
{
  internal = [(HMFMessage *)self internal];
  activity = [internal activity];

  return activity;
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = HMFMessage;
  return [(HMFMessage *)&v3 copy];
}

- (id)responseHandler
{
  internal = [(HMFMessage *)self internal];
  responseHandler = [internal responseHandler];

  return responseHandler;
}

- (HMFMessageDestination)destination
{
  internal = [(HMFMessage *)self internal];
  destination = [internal destination];

  return destination;
}

- (NSDictionary)headers
{
  internal = [(HMFMessage *)self internal];
  headers = [internal headers];

  if (headers)
  {
    v4 = headers;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (NSDictionary)messagePayload
{
  internal = [(HMFMessage *)self internal];
  messagePayload = [internal messagePayload];

  return messagePayload;
}

- (HMFMessageTransport)transport
{
  internal = [(HMFMessage *)self internal];
  transport = [internal transport];

  return transport;
}

- (NSDictionary)userInfo
{
  internal = [(HMFMessage *)self internal];
  userInfo = [internal userInfo];

  if (userInfo)
  {
    v4 = userInfo;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (id)mutableCopy
{
  v3.receiver = self;
  v3.super_class = HMFMessage;
  return [(HMFMessage *)&v3 mutableCopy];
}

- (BOOL)respondWithOutcomeOf:(id)of
{
  ofCopy = of;
  responseHandler = [(HMFMessage *)self responseHandler];
  v6 = responseHandler;
  if (responseHandler)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__HMFMessage_HMFFuture__respondWithOutcomeOf___block_invoke;
    v8[3] = &unk_2786E6BE8;
    v9 = responseHandler;
    [ofCopy getResultWithCompletion:v8];
  }

  return v6 != 0;
}

- (HMFMessage)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)messageWithName:(id)name destination:(id)destination payload:(id)payload
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy destination:destinationCopy payload:payloadCopy];

  return v11;
}

+ (id)messageWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination payload:(id)payload
{
  payloadCopy = payload;
  destinationCopy = destination;
  nameCopy = name;
  v13 = [[self alloc] initWithName:nameCopy qualityOfService:service destination:destinationCopy payload:payloadCopy];

  return v13;
}

- (HMFMessage)initWithName:(id)name qualityOfService:(int64_t)service destination:(id)destination userInfo:(id)info headers:(id)headers payload:(id)payload
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  destinationCopy = destination;
  infoCopy = info;
  headersCopy = headers;
  payloadCopy = payload;
  if (!nameCopy)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v32 = v26;
      v27 = "%{public}@Name is a required argument";
LABEL_10:
      _os_log_impl(&dword_22ADEC000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v24);
    selfCopy = 0;
    goto LABEL_12;
  }

  if (!destinationCopy)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v32 = v26;
      v27 = "%{public}@Destination is a required argument";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v19 = objc_alloc_init(HMFMessageInternal);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(HMFMessageInternal *)v19 setIdentifier:uUID];

  [(HMFMessageInternal *)v19 setName:nameCopy];
  [(HMFMessageInternal *)v19 setQualityOfService:service];
  [(HMFMessageInternal *)v19 setDestination:destinationCopy];
  [(HMFMessageInternal *)v19 setUserInfo:infoCopy];
  [(HMFMessageInternal *)v19 setHeaders:headersCopy];
  [(HMFMessageInternal *)v19 setMessagePayload:payloadCopy];
  v30.receiver = self;
  v30.super_class = HMFMessage;
  v21 = [(HMFMessage *)&v30 init];
  v22 = v21;
  if (v21)
  {
    [(HMFMessage *)v21 __initWithInternalMessage:v19];
  }

  self = v22;

  selfCopy = self;
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMFMessage)initWithInternalMessage:(id)message
{
  messageCopy = message;
  v8.receiver = self;
  v8.super_class = HMFMessage;
  v5 = [(HMFMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMFMessage *)v5 __initWithInternalMessage:messageCopy];
  }

  return v6;
}

- (void)__initWithInternalMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_internal, message);
    messageCopy = v6;
  }
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_283EBDA30;
  }

  identifier = [(HMFMessage *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(HMFMessage *)self name];
  qualityOfService = [(HMFMessage *)self qualityOfService];
  v19 = pointerCopy;
  if (qualityOfService <= 16)
  {
    if (qualityOfService == -1)
    {
      v11 = v6;
      v12 = @"Default";
      goto LABEL_16;
    }

    if (qualityOfService == 9)
    {
      v11 = v6;
      v12 = @"Background";
      goto LABEL_16;
    }
  }

  else
  {
    switch(qualityOfService)
    {
      case 17:
        v11 = v6;
        v12 = @"Utility";
        goto LABEL_16;
      case 25:
        v11 = v6;
        v12 = @"User Initiated";
        goto LABEL_16;
      case 33:
        v11 = v6;
        v12 = @"User Interactive";
        goto LABEL_16;
    }
  }

  v11 = v6;
  v12 = @"Unknown";
LABEL_16:
  destination = [(HMFMessage *)self destination];
  activity = [(HMFMessage *)self activity];
  userInfo = [(HMFMessage *)self userInfo];
  headers = [(HMFMessage *)self headers];
  v17 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Name = %@, QoS = %@, Destination = %@, Activity = %@, \nUser Info = %@, \nHeaders = %@>", shortDescription, v11, uUIDString, name, v12, destination, activity, userInfo, headers];

  if (v19)
  {
  }

  return v17;
}

- (void)setIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    internal = [(HMFMessage *)self internal];
    [internal setIdentifier:identifierCopy];
  }
}

- (void)setDestination:(id)destination
{
  if (destination)
  {
    destinationCopy = destination;
    internal = [(HMFMessage *)self internal];
    [internal setDestination:destinationCopy];
  }
}

- (NSString)untrustedClientIdentifier
{
  headers = [(HMFMessage *)self headers];
  v3 = [headers hmf_stringForKey:@"HMF.untrustedClientIdentifier"];

  return v3;
}

- (void)setMessagePayload:(id)payload
{
  payloadCopy = payload;
  internal = [(HMFMessage *)self internal];
  [internal setMessagePayload:payloadCopy];
}

- (id)logEventSession
{
  internal = [(HMFMessage *)self internal];
  logEventSession = [internal logEventSession];

  return logEventSession;
}

- (void)setLogEventSession:(id)session
{
  sessionCopy = session;
  internal = [(HMFMessage *)self internal];
  [internal setLogEventSession:sessionCopy];
}

- (void)setResponseHandler:(id)handler
{
  handlerCopy = handler;
  internal = [(HMFMessage *)self internal];
  [internal setResponseHandler:handlerCopy];
}

- (BOOL)respondWithPayload:(id)payload
{
  payloadCopy = payload;
  responseHandler = [(HMFMessage *)self responseHandler];
  v6 = responseHandler;
  if (responseHandler)
  {
    (*(responseHandler + 16))(responseHandler, 0, payloadCopy);
  }

  return v6 != 0;
}

- (BOOL)respondWithError:(id)error
{
  errorCopy = error;
  responseHandler = [(HMFMessage *)self responseHandler];
  v6 = responseHandler;
  if (responseHandler)
  {
    if (errorCopy)
    {
      (*(responseHandler + 16))(responseHandler, errorCopy, 0);
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (v6)[2](v6, v7, 0);
    }
  }

  return v6 != 0;
}

- (BOOL)respondWithPayload:(id)payload error:(id)error
{
  payloadCopy = payload;
  errorCopy = error;
  responseHandler = [(HMFMessage *)self responseHandler];
  v9 = responseHandler;
  if (responseHandler)
  {
    (*(responseHandler + 16))(responseHandler, errorCopy, payloadCopy);
  }

  return v9 != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  internal = [(HMFMessage *)self internal];
  v5 = [internal copyWithZone:zone];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [v5 setIdentifier:uUID];

  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithInternalMessage:", v5}];
  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  internal = [(HMFMessage *)self internal];
  v5 = [internal copyWithZone:zone];

  v6 = [(HMFMessage *)[HMFMutableMessage allocWithZone:?], "initWithInternalMessage:", v5];
  return v6;
}

- (HMFMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(HMFMessageInternal);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.identifier"];
  [(HMFMessageInternal *)v5 setIdentifier:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.name"];
  [(HMFMessageInternal *)v5 setName:v7];

  [coderCopy decodeDoubleForKey:@"HMF.timeout"];
  [(HMFMessageInternal *)v5 setTimeout:?];
  -[HMFMessageInternal setQualityOfService:](v5, "setQualityOfService:", [coderCopy decodeIntegerForKey:@"HMF.qos"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.destination"];
  [(HMFMessageInternal *)v5 setDestination:v8];

  v9 = +[HMFMessage allowedClassesForXPC];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HMF.headers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [(HMFMessageInternal *)v5 setHeaders:v12];
  v13 = +[HMFMessage allowedClassesForXPC];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"HMF.payload"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  [(HMFMessageInternal *)v5 setMessagePayload:v16];
  v17 = [(HMFMessage *)self initWithInternalMessage:v5];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMFMessage *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMF.identifier"];

  name = [(HMFMessage *)self name];
  [coderCopy encodeObject:name forKey:@"HMF.name"];

  [(HMFMessage *)self timeout];
  [coderCopy encodeDouble:@"HMF.timeout" forKey:?];
  [coderCopy encodeInteger:-[HMFMessage qualityOfService](self forKey:{"qualityOfService"), @"HMF.qos"}];
  destination = [(HMFMessage *)self destination];
  [coderCopy encodeObject:destination forKey:@"HMF.destination"];

  headers = [(HMFMessage *)self headers];
  [coderCopy encodeObject:headers forKey:@"HMF.headers"];

  messagePayload = [(HMFMessage *)self messagePayload];
  [coderCopy encodeObject:messagePayload forKey:@"HMF.payload"];
}

+ (id)messageWithName:(id)name messagePayload:(id)payload
{
  payloadCopy = payload;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy identifier:0 messagePayload:payloadCopy responseHandler:0];

  return v8;
}

+ (id)messageWithName:(id)name messagePayload:(id)payload responseHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy identifier:0 messagePayload:payloadCopy responseHandler:handlerCopy];

  return v11;
}

+ (id)messageWithName:(id)name identifier:(id)identifier messagePayload:(id)payload
{
  payloadCopy = payload;
  identifierCopy = identifier;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy identifier:identifierCopy messagePayload:payloadCopy responseHandler:0];

  return v11;
}

+ (id)messageWithMessage:(id)message messagePayload:(id)payload
{
  payloadCopy = payload;
  internal = [message internal];
  v8 = [internal copy];

  [v8 setMessagePayload:payloadCopy];
  v9 = [[self alloc] initWithInternalMessage:v8];

  return v9;
}

+ (id)messageWithMessage:(id)message messagePayload:(id)payload responseHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  internal = [message internal];
  v11 = [internal copy];

  [v11 setMessagePayload:payloadCopy];
  if (handlerCopy)
  {
    [v11 setResponseHandler:handlerCopy];
  }

  v12 = [[self alloc] initWithInternalMessage:v11];

  return v12;
}

- (HMFMessage)initWithName:(id)name identifier:(id)identifier messagePayload:(id)payload responseHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  payloadCopy = payload;
  nameCopy = name;
  v14 = +[HMFMessageDestination allMessageDestinations];
  v15 = [(HMFMessage *)self initWithName:nameCopy destination:v14 payload:payloadCopy];

  if (v15)
  {
    if (identifierCopy)
    {
      internal = [(HMFMessage *)v15 internal];
      [internal setIdentifier:identifierCopy];
    }

    internal2 = [(HMFMessage *)v15 internal];
    [internal2 setResponseHandler:handlerCopy];
  }

  return v15;
}

- (id)uuidForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_UUIDForKey:keyCopy];

  return v6;
}

- (HMFFlow)flow
{
  v18 = *MEMORY[0x277D85DE8];
  messagePayload = [(HMFMessage *)self messagePayload];
  v4 = [messagePayload hmf_flowForKey:@"HMFMessageFlowKey"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[HMFFlow internalOnlyInitializer];
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(0);
      uUID = [v5 UUID];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = uUID;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Error}] Incorrect Flow Usage: Expected, but did not find, flow for message: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_stringForKey:keyCopy];

  return v6;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_numberForKey:keyCopy];

  return v6;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_BOOLForKey:keyCopy];

  return v6;
}

- (BOOL)BOOLForKey:(id)key keyPresent:(BOOL *)present
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  LOBYTE(present) = [messagePayload hmf_BOOLForKey:keyCopy isPresent:present];

  return present;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_dictionaryForKey:keyCopy];

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_arrayForKey:keyCopy];

  return v6;
}

- (id)setForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_setForKey:keyCopy];

  return v6;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_dataForKey:keyCopy];

  return v6;
}

- (id)dateForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_dateForKey:keyCopy];

  return v6;
}

- (id)nullForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_nullForKey:keyCopy];

  return v6;
}

- (id)timeZoneForKey:(id)key
{
  v3 = [(HMFMessage *)self dataForKey:key];
  v4 = [MEMORY[0x277CBEBB0] hmf_unarchiveFromData:v3 error:0];

  return v4;
}

- (id)dateComponentsForKey:(id)key
{
  v3 = [(HMFMessage *)self dataForKey:key];
  v4 = [MEMORY[0x277CBEAB8] hmf_unarchiveFromData:v3 error:0];

  return v4;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_URLForKey:keyCopy];

  return v6;
}

- (id)errorForKey:(id)key
{
  v11[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_errorForKey:keyCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v11[0] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [(HMFMessage *)self unarchivedObjectForKey:keyCopy ofClasses:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)calendarForKey:(id)key
{
  v9[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(HMFMessage *)self unarchivedObjectForKey:keyCopy ofClasses:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)predicateForKey:(id)key
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMFMessage *)self dataForKey:key];
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v7 = [v5 setWithArray:v6];
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:0];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)arrayOfDateComponentsForKey:(id)key
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMFMessage *)self dataForKey:key];
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v7 = [v5 setWithArray:v6];
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 hmf_objectsAreKindOfClass:objc_opt_class()])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)unarchivedObjectForKey:(id)key ofClasses:(id)classes
{
  classesCopy = classes;
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v9 = [messagePayload hmf_unarchivedObjectForKey:keyCopy ofClasses:classesCopy];

  return v9;
}

- (id)fileHandleForKey:(id)key
{
  keyCopy = key;
  messagePayload = [(HMFMessage *)self messagePayload];
  v6 = [messagePayload hmf_fileHandleForKey:keyCopy];

  return v6;
}

@end