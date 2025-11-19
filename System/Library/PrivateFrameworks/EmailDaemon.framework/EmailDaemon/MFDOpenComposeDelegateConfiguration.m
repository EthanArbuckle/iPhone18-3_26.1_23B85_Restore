@interface MFDOpenComposeDelegateConfiguration
- (MFDOpenComposeDelegateConfiguration)initWithIdentifier:(id)a3 delegateEndpoint:(id)a4 isEntitledDelegate:(BOOL)a5;
- (id)description;
@end

@implementation MFDOpenComposeDelegateConfiguration

- (MFDOpenComposeDelegateConfiguration)initWithIdentifier:(id)a3 delegateEndpoint:(id)a4 isEntitledDelegate:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MFDOpenComposeDelegateConfiguration;
  v11 = [(MFDOpenComposeDelegateConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_delegateEndpoint, a4);
    v12->_isEntitledDelegate = a5;
  }

  return v12;
}

- (id)description
{
  v3 = [(MFDOpenComposeDelegateConfiguration *)self identifier];
  isEntitledDelegate = self->_isEntitledDelegate;
  v5 = [(MFDOpenComposeDelegateConfiguration *)self delegateEndpoint];
  v6 = v5;
  v7 = &stru_10015BEC8;
  if (isEntitledDelegate)
  {
    v7 = @"entitled ";
  }

  v8 = [NSString stringWithFormat:@"<MFDOpenComposeDelegateConfiguration: %p> identifier:%@ %@delegateEndpoint:%@", self, v3, v7, v5];

  return v8;
}

@end