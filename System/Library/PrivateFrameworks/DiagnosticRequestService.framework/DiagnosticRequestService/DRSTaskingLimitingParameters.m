@interface DRSTaskingLimitingParameters
+ (id)_customerParameters;
+ (id)_disabledParameters;
+ (id)_internalParameters;
+ (id)_seedParameters;
+ (id)defaultDeviceParameters;
- (BOOL)isEqual:(id)a3;
- (DRSTaskingLimitingParameters)initWithAcceptConfigCountCap:(unint64_t)a3 taskingHysteresisInterval:(double)a4;
@end

@implementation DRSTaskingLimitingParameters

- (DRSTaskingLimitingParameters)initWithAcceptConfigCountCap:(unint64_t)a3 taskingHysteresisInterval:(double)a4
{
  v7.receiver = self;
  v7.super_class = DRSTaskingLimitingParameters;
  result = [(DRSTaskingLimitingParameters *)&v7 init];
  if (result)
  {
    result->_acceptedConfigCountCap = a3;
    result->_taskingHysteresisInterval = a4;
  }

  return result;
}

+ (id)defaultDeviceParameters
{
  v3 = +[DRSSystemProfile sharedInstance];
  v4 = [a1 parametersForPlatform:objc_msgSend(v3 isInternal:"platform") isSeed:objc_msgSend(v3 isCarrier:"isInternal") taskingIsEnabled:{objc_msgSend(v3, "isSeed"), objc_msgSend(v3, "isCarrier"), objc_msgSend(v3, "isTaskingEnabled")}];

  return v4;
}

+ (id)_disabledParameters
{
  if (_disabledParameters_onceToken != -1)
  {
    +[DRSTaskingLimitingParameters _disabledParameters];
  }

  v3 = _disabledParameters_parameters;

  return v3;
}

void __51__DRSTaskingLimitingParameters__disabledParameters__block_invoke()
{
  v0 = [[DRSTaskingLimitingParameters alloc] initWithAcceptConfigCountCap:0 taskingHysteresisInterval:3600.0];
  v1 = _disabledParameters_parameters;
  _disabledParameters_parameters = v0;
}

+ (id)_internalParameters
{
  if (_internalParameters_onceToken != -1)
  {
    +[DRSTaskingLimitingParameters _internalParameters];
  }

  v3 = _internalParameters_parameters;

  return v3;
}

void __51__DRSTaskingLimitingParameters__internalParameters__block_invoke()
{
  v0 = [[DRSTaskingLimitingParameters alloc] initWithAcceptConfigCountCap:5 taskingHysteresisInterval:3600.0];
  v1 = _internalParameters_parameters;
  _internalParameters_parameters = v0;
}

+ (id)_seedParameters
{
  if (_seedParameters_onceToken != -1)
  {
    +[DRSTaskingLimitingParameters _seedParameters];
  }

  v3 = _seedParameters_parameters;

  return v3;
}

void __47__DRSTaskingLimitingParameters__seedParameters__block_invoke()
{
  v0 = [[DRSTaskingLimitingParameters alloc] initWithAcceptConfigCountCap:2 taskingHysteresisInterval:3600.0];
  v1 = _seedParameters_parameters;
  _seedParameters_parameters = v0;
}

+ (id)_customerParameters
{
  if (_customerParameters_onceToken != -1)
  {
    +[DRSTaskingLimitingParameters _customerParameters];
  }

  v3 = _customerParameters_parameters;

  return v3;
}

void __51__DRSTaskingLimitingParameters__customerParameters__block_invoke()
{
  v0 = [[DRSTaskingLimitingParameters alloc] initWithAcceptConfigCountCap:2 taskingHysteresisInterval:3600.0];
  v1 = _customerParameters_parameters;
  _customerParameters_parameters = v0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    [(DRSTaskingLimitingParameters *)v6 taskingHysteresisInterval];
    v8 = v7;
    [(DRSTaskingLimitingParameters *)self taskingHysteresisInterval];
    if (v8 == v9)
    {
      v10 = [(DRSTaskingLimitingParameters *)v6 acceptedConfigCountCap];
      v11 = v10 == [(DRSTaskingLimitingParameters *)self acceptedConfigCountCap];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end