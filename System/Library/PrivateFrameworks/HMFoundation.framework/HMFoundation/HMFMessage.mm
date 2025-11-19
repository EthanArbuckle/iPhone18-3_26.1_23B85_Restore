@interface HMFMessage
+ (NSSet)allowedClassesForXPC;
+ (id)messageWithMessage:(id)a3 messagePayload:(id)a4;
+ (id)messageWithMessage:(id)a3 messagePayload:(id)a4 responseHandler:(id)a5;
+ (id)messageWithName:(id)a3 destination:(id)a4 payload:(id)a5;
+ (id)messageWithName:(id)a3 identifier:(id)a4 messagePayload:(id)a5;
+ (id)messageWithName:(id)a3 messagePayload:(id)a4;
+ (id)messageWithName:(id)a3 messagePayload:(id)a4 responseHandler:(id)a5;
+ (id)messageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 payload:(id)a6;
+ (id)shortDescription;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)BOOLForKey:(id)a3 keyPresent:(BOOL *)a4;
- (BOOL)respondWithError:(id)a3;
- (BOOL)respondWithOutcomeOf:(id)a3;
- (BOOL)respondWithPayload:(id)a3;
- (BOOL)respondWithPayload:(id)a3 error:(id)a4;
- (HMFActivity)activity;
- (HMFFlow)flow;
- (HMFMessage)init;
- (HMFMessage)initWithCoder:(id)a3;
- (HMFMessage)initWithInternalMessage:(id)a3;
- (HMFMessage)initWithName:(id)a3 identifier:(id)a4 messagePayload:(id)a5 responseHandler:(id)a6;
- (HMFMessage)initWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 userInfo:(id)a6 headers:(id)a7 payload:(id)a8;
- (HMFMessageDestination)destination;
- (HMFMessageTransport)transport;
- (NSDictionary)headers;
- (NSDictionary)messagePayload;
- (NSDictionary)userInfo;
- (NSString)name;
- (NSString)untrustedClientIdentifier;
- (NSUUID)identifier;
- (id)URLForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)arrayOfDateComponentsForKey:(id)a3;
- (id)calendarForKey:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataForKey:(id)a3;
- (id)dateComponentsForKey:(id)a3;
- (id)dateForKey:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)dictionaryForKey:(id)a3;
- (id)errorForKey:(id)a3;
- (id)fileHandleForKey:(id)a3;
- (id)logEventSession;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)nullForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)predicateForKey:(id)a3;
- (id)responseHandler;
- (id)setForKey:(id)a3;
- (id)shortDescription;
- (id)stringForKey:(id)a3;
- (id)timeZoneForKey:(id)a3;
- (id)unarchivedObjectForKey:(id)a3 ofClasses:(id)a4;
- (id)uuidForKey:(id)a3;
- (int64_t)qualityOfService;
- (void)__initWithInternalMessage:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDestination:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLogEventSession:(id)a3;
- (void)setMessagePayload:(id)a3;
- (void)setResponseHandler:(id)a3;
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
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 qualityOfService];

  return v3;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFMessage *)self name];
  v6 = [(HMFMessage *)self identifier];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@(%@)", v4, v5, v7];

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)name
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 name];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 identifier];

  return v3;
}

- (HMFActivity)activity
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 activity];

  return v3;
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = HMFMessage;
  return [(HMFMessage *)&v3 copy];
}

- (id)responseHandler
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 responseHandler];

  return v3;
}

- (HMFMessageDestination)destination
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 destination];

  return v3;
}

- (NSDictionary)headers
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 headers];

  if (v3)
  {
    v4 = v3;
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
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 messagePayload];

  return v3;
}

- (HMFMessageTransport)transport
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 transport];

  return v3;
}

- (NSDictionary)userInfo
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 userInfo];

  if (v3)
  {
    v4 = v3;
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

- (BOOL)respondWithOutcomeOf:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self responseHandler];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__HMFMessage_HMFFuture__respondWithOutcomeOf___block_invoke;
    v8[3] = &unk_2786E6BE8;
    v9 = v5;
    [v4 getResultWithCompletion:v8];
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

+ (id)messageWithName:(id)a3 destination:(id)a4 payload:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 destination:v9 payload:v8];

  return v11;
}

+ (id)messageWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 payload:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initWithName:v12 qualityOfService:a4 destination:v11 payload:v10];

  return v13;
}

- (HMFMessage)initWithName:(id)a3 qualityOfService:(int64_t)a4 destination:(id)a5 userInfo:(id)a6 headers:(id)a7 payload:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v14)
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
    v23 = 0;
    goto LABEL_12;
  }

  if (!v15)
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
  v20 = [MEMORY[0x277CCAD78] UUID];
  [(HMFMessageInternal *)v19 setIdentifier:v20];

  [(HMFMessageInternal *)v19 setName:v14];
  [(HMFMessageInternal *)v19 setQualityOfService:a4];
  [(HMFMessageInternal *)v19 setDestination:v15];
  [(HMFMessageInternal *)v19 setUserInfo:v16];
  [(HMFMessageInternal *)v19 setHeaders:v17];
  [(HMFMessageInternal *)v19 setMessagePayload:v18];
  v30.receiver = self;
  v30.super_class = HMFMessage;
  v21 = [(HMFMessage *)&v30 init];
  v22 = v21;
  if (v21)
  {
    [(HMFMessage *)v21 __initWithInternalMessage:v19];
  }

  self = v22;

  v23 = self;
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (HMFMessage)initWithInternalMessage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMFMessage;
  v5 = [(HMFMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMFMessage *)v5 __initWithInternalMessage:v4];
  }

  return v6;
}

- (void)__initWithInternalMessage:(id)a3
{
  v5 = a3;
  if (self)
  {
    v6 = v5;
    objc_storeStrong(&self->_internal, a3);
    v5 = v6;
  }
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v20 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_283EBDA30;
  }

  v7 = [(HMFMessage *)self identifier];
  v8 = [v7 UUIDString];
  v9 = [(HMFMessage *)self name];
  v10 = [(HMFMessage *)self qualityOfService];
  v19 = v3;
  if (v10 <= 16)
  {
    if (v10 == -1)
    {
      v11 = v6;
      v12 = @"Default";
      goto LABEL_16;
    }

    if (v10 == 9)
    {
      v11 = v6;
      v12 = @"Background";
      goto LABEL_16;
    }
  }

  else
  {
    switch(v10)
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
  v13 = [(HMFMessage *)self destination];
  v14 = [(HMFMessage *)self activity];
  v15 = [(HMFMessage *)self userInfo];
  v16 = [(HMFMessage *)self headers];
  v17 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Name = %@, QoS = %@, Destination = %@, Activity = %@, \nUser Info = %@, \nHeaders = %@>", v20, v11, v8, v9, v12, v13, v14, v15, v16];

  if (v19)
  {
  }

  return v17;
}

- (void)setIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMFMessage *)self internal];
    [v5 setIdentifier:v4];
  }
}

- (void)setDestination:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMFMessage *)self internal];
    [v5 setDestination:v4];
  }
}

- (NSString)untrustedClientIdentifier
{
  v2 = [(HMFMessage *)self headers];
  v3 = [v2 hmf_stringForKey:@"HMF.untrustedClientIdentifier"];

  return v3;
}

- (void)setMessagePayload:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self internal];
  [v5 setMessagePayload:v4];
}

- (id)logEventSession
{
  v2 = [(HMFMessage *)self internal];
  v3 = [v2 logEventSession];

  return v3;
}

- (void)setLogEventSession:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self internal];
  [v5 setLogEventSession:v4];
}

- (void)setResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self internal];
  [v5 setResponseHandler:v4];
}

- (BOOL)respondWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self responseHandler];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v4);
  }

  return v6 != 0;
}

- (BOOL)respondWithError:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self responseHandler];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      (*(v5 + 16))(v5, v4, 0);
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      (v6)[2](v6, v7, 0);
    }
  }

  return v6 != 0;
}

- (BOOL)respondWithPayload:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMFMessage *)self responseHandler];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }

  return v9 != 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HMFMessage *)self internal];
  v5 = [v4 copyWithZone:a3];

  v6 = [MEMORY[0x277CCAD78] UUID];
  [v5 setIdentifier:v6];

  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithInternalMessage:", v5}];
  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(HMFMessage *)self internal];
  v5 = [v4 copyWithZone:a3];

  v6 = [(HMFMessage *)[HMFMutableMessage allocWithZone:?], "initWithInternalMessage:", v5];
  return v6;
}

- (HMFMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMFMessageInternal);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.identifier"];
  [(HMFMessageInternal *)v5 setIdentifier:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.name"];
  [(HMFMessageInternal *)v5 setName:v7];

  [v4 decodeDoubleForKey:@"HMF.timeout"];
  [(HMFMessageInternal *)v5 setTimeout:?];
  -[HMFMessageInternal setQualityOfService:](v5, "setQualityOfService:", [v4 decodeIntegerForKey:@"HMF.qos"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.destination"];
  [(HMFMessageInternal *)v5 setDestination:v8];

  v9 = +[HMFMessage allowedClassesForXPC];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMF.headers"];

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
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HMF.payload"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMF.identifier"];

  v6 = [(HMFMessage *)self name];
  [v4 encodeObject:v6 forKey:@"HMF.name"];

  [(HMFMessage *)self timeout];
  [v4 encodeDouble:@"HMF.timeout" forKey:?];
  [v4 encodeInteger:-[HMFMessage qualityOfService](self forKey:{"qualityOfService"), @"HMF.qos"}];
  v7 = [(HMFMessage *)self destination];
  [v4 encodeObject:v7 forKey:@"HMF.destination"];

  v8 = [(HMFMessage *)self headers];
  [v4 encodeObject:v8 forKey:@"HMF.headers"];

  v9 = [(HMFMessage *)self messagePayload];
  [v4 encodeObject:v9 forKey:@"HMF.payload"];
}

+ (id)messageWithName:(id)a3 messagePayload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 identifier:0 messagePayload:v6 responseHandler:0];

  return v8;
}

+ (id)messageWithName:(id)a3 messagePayload:(id)a4 responseHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 identifier:0 messagePayload:v9 responseHandler:v8];

  return v11;
}

+ (id)messageWithName:(id)a3 identifier:(id)a4 messagePayload:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 identifier:v9 messagePayload:v8 responseHandler:0];

  return v11;
}

+ (id)messageWithMessage:(id)a3 messagePayload:(id)a4
{
  v6 = a4;
  v7 = [a3 internal];
  v8 = [v7 copy];

  [v8 setMessagePayload:v6];
  v9 = [[a1 alloc] initWithInternalMessage:v8];

  return v9;
}

+ (id)messageWithMessage:(id)a3 messagePayload:(id)a4 responseHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 internal];
  v11 = [v10 copy];

  [v11 setMessagePayload:v9];
  if (v8)
  {
    [v11 setResponseHandler:v8];
  }

  v12 = [[a1 alloc] initWithInternalMessage:v11];

  return v12;
}

- (HMFMessage)initWithName:(id)a3 identifier:(id)a4 messagePayload:(id)a5 responseHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = +[HMFMessageDestination allMessageDestinations];
  v15 = [(HMFMessage *)self initWithName:v13 destination:v14 payload:v12];

  if (v15)
  {
    if (v10)
    {
      v16 = [(HMFMessage *)v15 internal];
      [v16 setIdentifier:v10];
    }

    v17 = [(HMFMessage *)v15 internal];
    [v17 setResponseHandler:v11];
  }

  return v15;
}

- (id)uuidForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_UUIDForKey:v4];

  return v6;
}

- (HMFFlow)flow
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMFMessage *)self messagePayload];
  v4 = [v3 hmf_flowForKey:@"HMFMessageFlowKey"];

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
      v9 = [v5 UUID];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Error}] Incorrect Flow Usage: Expected, but did not find, flow for message: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_stringForKey:v4];

  return v6;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_numberForKey:v4];

  return v6;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_BOOLForKey:v4];

  return v6;
}

- (BOOL)BOOLForKey:(id)a3 keyPresent:(BOOL *)a4
{
  v6 = a3;
  v7 = [(HMFMessage *)self messagePayload];
  LOBYTE(a4) = [v7 hmf_BOOLForKey:v6 isPresent:a4];

  return a4;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_dictionaryForKey:v4];

  return v6;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_arrayForKey:v4];

  return v6;
}

- (id)setForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_setForKey:v4];

  return v6;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_dataForKey:v4];

  return v6;
}

- (id)dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_dateForKey:v4];

  return v6;
}

- (id)nullForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_nullForKey:v4];

  return v6;
}

- (id)timeZoneForKey:(id)a3
{
  v3 = [(HMFMessage *)self dataForKey:a3];
  v4 = [MEMORY[0x277CBEBB0] hmf_unarchiveFromData:v3 error:0];

  return v4;
}

- (id)dateComponentsForKey:(id)a3
{
  v3 = [(HMFMessage *)self dataForKey:a3];
  v4 = [MEMORY[0x277CBEAB8] hmf_unarchiveFromData:v3 error:0];

  return v4;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_URLForKey:v4];

  return v6;
}

- (id)errorForKey:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_errorForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v11[0] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [(HMFMessage *)self unarchivedObjectForKey:v4 ofClasses:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)calendarForKey:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(HMFMessage *)self unarchivedObjectForKey:v4 ofClasses:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)predicateForKey:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMFMessage *)self dataForKey:a3];
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

- (id)arrayOfDateComponentsForKey:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMFMessage *)self dataForKey:a3];
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

- (id)unarchivedObjectForKey:(id)a3 ofClasses:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMFMessage *)self messagePayload];
  v9 = [v8 hmf_unarchivedObjectForKey:v7 ofClasses:v6];

  return v9;
}

- (id)fileHandleForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self messagePayload];
  v6 = [v5 hmf_fileHandleForKey:v4];

  return v6;
}

@end