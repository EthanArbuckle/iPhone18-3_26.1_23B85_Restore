@interface HDFHIRSession
- (HDFHIRSession)init;
- (HDFHIRSession)initWithSpecification:(id)specification;
- (id)_createDefaultURLSessionConfiguration;
- (void)_instantiateURLSessionWithConfiguration:(id)configuration;
- (void)_unitTesting_recreateURLSessionWithConfigurationBlock:(id)block;
- (void)dealloc;
@end

@implementation HDFHIRSession

- (HDFHIRSession)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRSession)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  v10.receiver = self;
  v10.super_class = HDFHIRSession;
  v5 = [(HDFHIRSession *)&v10 init];
  if (v5)
  {
    v6 = [specificationCopy copy];
    specification = v5->_specification;
    v5->_specification = v6;

    _createDefaultURLSessionConfiguration = [(HDFHIRSession *)v5 _createDefaultURLSessionConfiguration];
    [(HDFHIRSession *)v5 _instantiateURLSessionWithConfiguration:_createDefaultURLSessionConfiguration];
  }

  return v5;
}

- (void)dealloc
{
  uRLSession = [(HDFHIRSession *)self URLSession];
  [uRLSession finishTasksAndInvalidate];

  v4.receiver = self;
  v4.super_class = HDFHIRSession;
  [(HDFHIRSession *)&v4 dealloc];
}

- (id)_createDefaultURLSessionConfiguration
{
  v2 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v6 = @"User-Agent";
  v3 = HDHealthRecordsPublicUserAgentString();
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 setHTTPAdditionalHeaders:v4];

  [v2 set_sourceApplicationBundleIdentifier:kHKHealthAppBundleIdentifier];

  return v2;
}

- (void)_instantiateURLSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_alloc_init(HKURLSessionCertVerificationDelegate);
  v5 = [NSURLSession sessionWithConfiguration:configurationCopy delegate:v6 delegateQueue:0];

  [(HDFHIRSession *)self setURLSession:v5];
}

- (void)_unitTesting_recreateURLSessionWithConfigurationBlock:(id)block
{
  blockCopy = block;
  _createDefaultURLSessionConfiguration = [(HDFHIRSession *)self _createDefaultURLSessionConfiguration];
  v5 = blockCopy[2](blockCopy, _createDefaultURLSessionConfiguration);

  [(HDFHIRSession *)self _instantiateURLSessionWithConfiguration:v5];
}

@end