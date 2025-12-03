@interface FACircleContext
+ (FACircleContext)contextWithData:(id)data;
- (FACircleContext)init;
- (FACircleContext)initWithCoder:(id)coder;
- (FACircleContext)initWithEventType:(id)type;
- (NSData)dataRepresentation;
- (NSURLSessionConfiguration)urlSessionConfiguration;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FACircleContext

- (FACircleContext)init
{
  [(FACircleContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FACircleContext)initWithEventType:(id)type
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = FACircleContext;
  v6 = [(FACircleContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventType, type);
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:getprogname()];
    clientName = v7->_clientName;
    v7->_clientName = v8;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = bundleIdentifier;

    v7->_activityIndicatorStyle = 1;
  }

  return v7;
}

- (FACircleContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = FACircleContext;
  v5 = [(FACircleContext *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventType"];
    eventType = v5->_eventType;
    v5->_eventType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleID"];
    clientBundleID = v5->_clientBundleID;
    v5->_clientBundleID = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_additionalParameters"];
    additionalParameters = v5->_additionalParameters;
    v5->_additionalParameters = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlEndpoint"];
    urlEndpoint = v5->_urlEndpoint;
    v5->_urlEndpoint = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlForContext"];
    urlForContext = v5->_urlForContext;
    v5->_urlForContext = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_authContext"];
    authContext = v5->_authContext;
    v5->_authContext = v22;

    v24 = NSStringFromSelector(sel_activityIndicatorStyle);
    v5->_activityIndicatorStyle = [coderCopy decodeIntegerForKey:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eventType = self->_eventType;
  coderCopy = coder;
  [coderCopy encodeObject:eventType forKey:@"_eventType"];
  [coderCopy encodeObject:self->_clientName forKey:@"_clientName"];
  [coderCopy encodeObject:self->_clientBundleID forKey:@"_clientBundleID"];
  [coderCopy encodeObject:self->_additionalParameters forKey:@"_additionalParameters"];
  [coderCopy encodeObject:self->_urlEndpoint forKey:@"_urlEndpoint"];
  [coderCopy encodeObject:self->_authContext forKey:@"_authContext"];
  [coderCopy encodeObject:self->_urlForContext forKey:@"_urlForContext"];
  activityIndicatorStyle = self->_activityIndicatorStyle;
  v7 = NSStringFromSelector(sel_activityIndicatorStyle);
  [coderCopy encodeInteger:activityIndicatorStyle forKey:v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  eventType = [(FACircleContext *)self eventType];
  clientName = [(FACircleContext *)self clientName];
  v8 = [v3 stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@ }>", v5, self, eventType, clientName];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  eventType = [(FACircleContext *)self eventType];
  clientName = [(FACircleContext *)self clientName];
  clientBundleID = [(FACircleContext *)self clientBundleID];
  additionalParameters = [(FACircleContext *)self additionalParameters];
  v10 = [v3 stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@, clientBundleID: %@, additionalParameters: %@ }>", v5, self, eventType, clientName, clientBundleID, additionalParameters];

  return v10;
}

- (NSURLSessionConfiguration)urlSessionConfiguration
{
  authContext = [(FACircleContext *)self authContext];

  if (authContext)
  {
    authContext = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v4 = objc_alloc_init(MEMORY[0x277CF0188]);
    authContext2 = [(FACircleContext *)self authContext];
    proxiedDevice = [authContext2 proxiedDevice];

    if (proxiedDevice)
    {
      v7 = _FALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(FACircleContext *)v7 urlSessionConfiguration];
      }

      authContext3 = [(FACircleContext *)self authContext];
      anisetteDataProvider = [authContext3 anisetteDataProvider];
      [v4 setAnisetteDataProvider:anisetteDataProvider];

      authContext4 = [(FACircleContext *)self authContext];
      proxiedDevice2 = [authContext4 proxiedDevice];
      [v4 setPairedDevice:proxiedDevice2];
    }

    [authContext set_appleIDContext:v4];
  }

  return authContext;
}

+ (FACircleContext)contextWithData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:0];

  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v5 decodeObjectOfClass:v6 forKey:v8];

  return v9;
}

- (NSData)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 encodeObject:self forKey:v5];

  encodedData = [v3 encodedData];

  return encodedData;
}

@end