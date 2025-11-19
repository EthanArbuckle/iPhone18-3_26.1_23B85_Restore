@interface FACircleContext
+ (FACircleContext)contextWithData:(id)a3;
- (FACircleContext)init;
- (FACircleContext)initWithCoder:(id)a3;
- (FACircleContext)initWithEventType:(id)a3;
- (NSData)dataRepresentation;
- (NSURLSessionConfiguration)urlSessionConfiguration;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FACircleContext

- (FACircleContext)init
{
  [(FACircleContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FACircleContext)initWithEventType:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FACircleContext;
  v6 = [(FACircleContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventType, a3);
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:getprogname()];
    clientName = v7->_clientName;
    v7->_clientName = v8;

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    clientBundleID = v7->_clientBundleID;
    v7->_clientBundleID = v11;

    v7->_activityIndicatorStyle = 1;
  }

  return v7;
}

- (FACircleContext)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = FACircleContext;
  v5 = [(FACircleContext *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventType"];
    eventType = v5->_eventType;
    v5->_eventType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleID"];
    clientBundleID = v5->_clientBundleID;
    v5->_clientBundleID = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_additionalParameters"];
    additionalParameters = v5->_additionalParameters;
    v5->_additionalParameters = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_urlEndpoint"];
    urlEndpoint = v5->_urlEndpoint;
    v5->_urlEndpoint = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_urlForContext"];
    urlForContext = v5->_urlForContext;
    v5->_urlForContext = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_authContext"];
    authContext = v5->_authContext;
    v5->_authContext = v22;

    v24 = NSStringFromSelector(sel_activityIndicatorStyle);
    v5->_activityIndicatorStyle = [v4 decodeIntegerForKey:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventType = self->_eventType;
  v5 = a3;
  [v5 encodeObject:eventType forKey:@"_eventType"];
  [v5 encodeObject:self->_clientName forKey:@"_clientName"];
  [v5 encodeObject:self->_clientBundleID forKey:@"_clientBundleID"];
  [v5 encodeObject:self->_additionalParameters forKey:@"_additionalParameters"];
  [v5 encodeObject:self->_urlEndpoint forKey:@"_urlEndpoint"];
  [v5 encodeObject:self->_authContext forKey:@"_authContext"];
  [v5 encodeObject:self->_urlForContext forKey:@"_urlForContext"];
  activityIndicatorStyle = self->_activityIndicatorStyle;
  v7 = NSStringFromSelector(sel_activityIndicatorStyle);
  [v5 encodeInteger:activityIndicatorStyle forKey:v7];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FACircleContext *)self eventType];
  v7 = [(FACircleContext *)self clientName];
  v8 = [v3 stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@ }>", v5, self, v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FACircleContext *)self eventType];
  v7 = [(FACircleContext *)self clientName];
  v8 = [(FACircleContext *)self clientBundleID];
  v9 = [(FACircleContext *)self additionalParameters];
  v10 = [v3 stringWithFormat:@"<%@: %p { eventType: %@, clientName: %@, clientBundleID: %@, additionalParameters: %@ }>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (NSURLSessionConfiguration)urlSessionConfiguration
{
  v3 = [(FACircleContext *)self authContext];

  if (v3)
  {
    v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v4 = objc_alloc_init(MEMORY[0x277CF0188]);
    v5 = [(FACircleContext *)self authContext];
    v6 = [v5 proxiedDevice];

    if (v6)
    {
      v7 = _FALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(FACircleContext *)v7 urlSessionConfiguration];
      }

      v8 = [(FACircleContext *)self authContext];
      v9 = [v8 anisetteDataProvider];
      [v4 setAnisetteDataProvider:v9];

      v10 = [(FACircleContext *)self authContext];
      v11 = [v10 proxiedDevice];
      [v4 setPairedDevice:v11];
    }

    [v3 set_appleIDContext:v4];
  }

  return v3;
}

+ (FACircleContext)contextWithData:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:0];

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

  v6 = [v3 encodedData];

  return v6;
}

@end