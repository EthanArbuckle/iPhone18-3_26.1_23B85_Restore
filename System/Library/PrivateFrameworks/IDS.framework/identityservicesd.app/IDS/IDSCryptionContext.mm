@interface IDSCryptionContext
- (BOOL)isEqual:(id)equal;
- (IDSCryptionContext)initWithGuid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken service:(id)service;
- (id)description;
@end

@implementation IDSCryptionContext

- (IDSCryptionContext)initWithGuid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken service:(id)service
{
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  serviceCopy = service;
  v24.receiver = self;
  v24.super_class = IDSCryptionContext;
  v18 = [(IDSCryptionContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, guid);
    objc_storeStrong(&v19->_sendingURI, i);
    objc_storeStrong(&v19->_sendingPushToken, token);
    objc_storeStrong(&v19->_receivingURI, rI);
    objc_storeStrong(&v19->_receivingPushToken, pushToken);
    objc_storeStrong(&v19->_service, service);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    guid = [v5 guid];
    guid2 = [(IDSCryptionContext *)self guid];
    if ([guid isEqualToString:guid2])
    {
      sendingURI = [v5 sendingURI];
      sendingURI2 = [(IDSCryptionContext *)self sendingURI];
      if ([sendingURI isEqual:sendingURI2])
      {
        sendingPushToken = [v5 sendingPushToken];
        sendingPushToken2 = [(IDSCryptionContext *)self sendingPushToken];
        if ([sendingPushToken isEqual:sendingPushToken2])
        {
          receivingURI = [v5 receivingURI];
          receivingURI2 = [(IDSCryptionContext *)self receivingURI];
          v23 = receivingURI;
          if ([receivingURI isEqual:receivingURI2])
          {
            receivingPushToken = [v5 receivingPushToken];
            receivingPushToken2 = [(IDSCryptionContext *)self receivingPushToken];
            v21 = receivingPushToken;
            v15 = receivingPushToken;
            v16 = receivingPushToken2;
            if ([v15 isEqual:receivingPushToken2])
            {
              service = [v5 service];
              service2 = [(IDSCryptionContext *)self service];
              v17 = [service isEqualToString:service2];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_class();
  guid = [(IDSCryptionContext *)self guid];
  sendingURI = [(IDSCryptionContext *)self sendingURI];
  sendingPushToken = [(IDSCryptionContext *)self sendingPushToken];
  receivingURI = [(IDSCryptionContext *)self receivingURI];
  receivingPushToken = [(IDSCryptionContext *)self receivingPushToken];
  service = [(IDSCryptionContext *)self service];
  v10 = [NSString stringWithFormat:@"<%@: %p { guid: %@, sendingURI: %@, sendingPushToken: %@, receivingURI: %@, receivingPushToken: %@ service: %@ }>", v3, self, guid, sendingURI, sendingPushToken, receivingURI, receivingPushToken, service];

  return v10;
}

@end