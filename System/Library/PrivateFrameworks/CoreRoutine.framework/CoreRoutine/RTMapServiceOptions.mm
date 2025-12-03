@interface RTMapServiceOptions
- (RTMapServiceOptions)initWithCoder:(id)coder;
- (RTMapServiceOptions)initWithUseBackgroundTraits:(BOOL)traits analyticsIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTMapServiceOptions

- (RTMapServiceOptions)initWithUseBackgroundTraits:(BOOL)traits analyticsIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v14.receiver = self;
  v14.super_class = RTMapServiceOptions;
  v11 = [(RTMapServiceOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_useBackgroundTraits = traits;
    objc_storeStrong(&v11->_analyticsIdentifier, identifier);
    objc_storeStrong(&v12->_clientIdentifier, clientIdentifier);
  }

  return v12;
}

- (RTMapServiceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"useBackgroundTraits"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];

  v8 = [(RTMapServiceOptions *)self initWithUseBackgroundTraits:v5 analyticsIdentifier:v6 clientIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  useBackgroundTraits = self->_useBackgroundTraits;
  coderCopy = coder;
  [coderCopy encodeBool:useBackgroundTraits forKey:@"useBackgroundTraits"];
  [coderCopy encodeObject:self->_analyticsIdentifier forKey:@"analyticsIdentifier"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
}

@end