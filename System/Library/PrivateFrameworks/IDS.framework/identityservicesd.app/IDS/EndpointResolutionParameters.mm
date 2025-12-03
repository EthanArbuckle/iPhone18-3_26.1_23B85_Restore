@interface EndpointResolutionParameters
- (EndpointResolutionParameters)initWithParams:(id)params secondaryPort:(id)port;
@end

@implementation EndpointResolutionParameters

- (EndpointResolutionParameters)initWithParams:(id)params secondaryPort:(id)port
{
  paramsCopy = params;
  portCopy = port;
  v12.receiver = self;
  v12.super_class = EndpointResolutionParameters;
  v9 = [(EndpointResolutionParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleID, params);
    objc_storeStrong(&v10->_secondaryPort, port);
  }

  return v10;
}

@end