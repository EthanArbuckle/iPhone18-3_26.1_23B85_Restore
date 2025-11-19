@interface RTMapServiceOptions
- (RTMapServiceOptions)initWithCoder:(id)a3;
- (RTMapServiceOptions)initWithUseBackgroundTraits:(BOOL)a3 analyticsIdentifier:(id)a4 clientIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTMapServiceOptions

- (RTMapServiceOptions)initWithUseBackgroundTraits:(BOOL)a3 analyticsIdentifier:(id)a4 clientIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RTMapServiceOptions;
  v11 = [(RTMapServiceOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_useBackgroundTraits = a3;
    objc_storeStrong(&v11->_analyticsIdentifier, a4);
    objc_storeStrong(&v12->_clientIdentifier, a5);
  }

  return v12;
}

- (RTMapServiceOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"useBackgroundTraits"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];

  v8 = [(RTMapServiceOptions *)self initWithUseBackgroundTraits:v5 analyticsIdentifier:v6 clientIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  useBackgroundTraits = self->_useBackgroundTraits;
  v5 = a3;
  [v5 encodeBool:useBackgroundTraits forKey:@"useBackgroundTraits"];
  [v5 encodeObject:self->_analyticsIdentifier forKey:@"analyticsIdentifier"];
  [v5 encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
}

@end