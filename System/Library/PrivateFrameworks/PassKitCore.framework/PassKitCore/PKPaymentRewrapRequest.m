@interface PKPaymentRewrapRequest
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentRewrapRequest

- (id)endpointComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKPaymentRewrapRequestBase *)self type];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v5 = @"issueVirtualCardNumber";
    }

    else
    {
      v5 = @"rewrap";
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v5 = @"secureVirtualCardRefresh";
        break;
      case 3:
        [v3 addObject:@"rewrap"];
        v5 = @"issuerInstallment";
        break;
      case 4:
        [v3 addObject:@"rewrap"];
        v5 = @"rewards";
        break;
      default:
        goto LABEL_13;
    }
  }

  [v3 addObject:v5];
LABEL_13:
  v6 = [v3 copy];

  return v6;
}

- (id)bodyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSString *)self->_merchantIdentifier dataUsingEncoding:4];
  v5 = [v4 SHA256Hash];
  v6 = [v5 hexEncoding];

  [v3 setValue:v6 forKey:@"merchantId"];
  hostApplicationIdentifier = self->_hostApplicationIdentifier;
  if (hostApplicationIdentifier)
  {
    [v3 setObject:hostApplicationIdentifier forKey:@"applicationId"];
  }

  merchantDisplayName = self->_merchantDisplayName;
  if (merchantDisplayName)
  {
    [v3 setObject:merchantDisplayName forKey:@"displayName"];
  }

  v12.receiver = self;
  v12.super_class = PKPaymentRewrapRequest;
  v9 = [(PKPaymentRewrapRequestBase *)&v12 bodyDictionary];
  [v3 addEntriesFromDictionary:v9];

  v10 = [v3 copy];

  return v10;
}

@end