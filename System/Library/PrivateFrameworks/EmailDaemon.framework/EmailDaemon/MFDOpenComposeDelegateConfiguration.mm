@interface MFDOpenComposeDelegateConfiguration
- (MFDOpenComposeDelegateConfiguration)initWithIdentifier:(id)identifier delegateEndpoint:(id)endpoint isEntitledDelegate:(BOOL)delegate;
- (id)description;
@end

@implementation MFDOpenComposeDelegateConfiguration

- (MFDOpenComposeDelegateConfiguration)initWithIdentifier:(id)identifier delegateEndpoint:(id)endpoint isEntitledDelegate:(BOOL)delegate
{
  identifierCopy = identifier;
  endpointCopy = endpoint;
  v14.receiver = self;
  v14.super_class = MFDOpenComposeDelegateConfiguration;
  v11 = [(MFDOpenComposeDelegateConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_delegateEndpoint, endpoint);
    v12->_isEntitledDelegate = delegate;
  }

  return v12;
}

- (id)description
{
  identifier = [(MFDOpenComposeDelegateConfiguration *)self identifier];
  isEntitledDelegate = self->_isEntitledDelegate;
  delegateEndpoint = [(MFDOpenComposeDelegateConfiguration *)self delegateEndpoint];
  v6 = delegateEndpoint;
  v7 = &stru_10015BEC8;
  if (isEntitledDelegate)
  {
    v7 = @"entitled ";
  }

  v8 = [NSString stringWithFormat:@"<MFDOpenComposeDelegateConfiguration: %p> identifier:%@ %@delegateEndpoint:%@", self, identifier, v7, delegateEndpoint];

  return v8;
}

@end