@interface EndpointResolutionParameters
- (EndpointResolutionParameters)initWithParams:(id)a3 secondaryPort:(id)a4;
@end

@implementation EndpointResolutionParameters

- (EndpointResolutionParameters)initWithParams:(id)a3 secondaryPort:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EndpointResolutionParameters;
  v9 = [(EndpointResolutionParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleID, a3);
    objc_storeStrong(&v10->_secondaryPort, a4);
  }

  return v10;
}

@end