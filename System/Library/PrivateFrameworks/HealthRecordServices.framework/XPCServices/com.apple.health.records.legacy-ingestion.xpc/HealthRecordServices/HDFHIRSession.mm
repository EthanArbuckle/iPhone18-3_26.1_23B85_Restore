@interface HDFHIRSession
- (HDFHIRSession)init;
- (HDFHIRSession)initWithSpecification:(id)a3;
- (id)_createDefaultURLSessionConfiguration;
- (void)_instantiateURLSessionWithConfiguration:(id)a3;
- (void)_unitTesting_recreateURLSessionWithConfigurationBlock:(id)a3;
- (void)dealloc;
@end

@implementation HDFHIRSession

- (HDFHIRSession)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDFHIRSession)initWithSpecification:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDFHIRSession;
  v5 = [(HDFHIRSession *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    specification = v5->_specification;
    v5->_specification = v6;

    v8 = [(HDFHIRSession *)v5 _createDefaultURLSessionConfiguration];
    [(HDFHIRSession *)v5 _instantiateURLSessionWithConfiguration:v8];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(HDFHIRSession *)self URLSession];
  [v3 finishTasksAndInvalidate];

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

- (void)_instantiateURLSessionWithConfiguration:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(HKURLSessionCertVerificationDelegate);
  v5 = [NSURLSession sessionWithConfiguration:v4 delegate:v6 delegateQueue:0];

  [(HDFHIRSession *)self setURLSession:v5];
}

- (void)_unitTesting_recreateURLSessionWithConfigurationBlock:(id)a3
{
  v4 = a3;
  v6 = [(HDFHIRSession *)self _createDefaultURLSessionConfiguration];
  v5 = v4[2](v4, v6);

  [(HDFHIRSession *)self _instantiateURLSessionWithConfiguration:v5];
}

@end