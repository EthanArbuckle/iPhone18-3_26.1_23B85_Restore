@interface PKPaymentRewrapRequest
- (id)bodyDictionary;
- (id)endpointComponents;
@end

@implementation PKPaymentRewrapRequest

- (id)endpointComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  type = [(PKPaymentRewrapRequestBase *)self type];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
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
    switch(type)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSString *)self->_merchantIdentifier dataUsingEncoding:4];
  sHA256Hash = [v4 SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];

  [dictionary setValue:hexEncoding forKey:@"merchantId"];
  hostApplicationIdentifier = self->_hostApplicationIdentifier;
  if (hostApplicationIdentifier)
  {
    [dictionary setObject:hostApplicationIdentifier forKey:@"applicationId"];
  }

  merchantDisplayName = self->_merchantDisplayName;
  if (merchantDisplayName)
  {
    [dictionary setObject:merchantDisplayName forKey:@"displayName"];
  }

  v12.receiver = self;
  v12.super_class = PKPaymentRewrapRequest;
  bodyDictionary = [(PKPaymentRewrapRequestBase *)&v12 bodyDictionary];
  [dictionary addEntriesFromDictionary:bodyDictionary];

  v10 = [dictionary copy];

  return v10;
}

@end