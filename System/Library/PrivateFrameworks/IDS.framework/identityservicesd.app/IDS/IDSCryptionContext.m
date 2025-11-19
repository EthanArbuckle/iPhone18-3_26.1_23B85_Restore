@interface IDSCryptionContext
- (BOOL)isEqual:(id)a3;
- (IDSCryptionContext)initWithGuid:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 service:(id)a8;
- (id)description;
@end

@implementation IDSCryptionContext

- (IDSCryptionContext)initWithGuid:(id)a3 sendingURI:(id)a4 sendingPushToken:(id)a5 receivingURI:(id)a6 receivingPushToken:(id)a7 service:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = IDSCryptionContext;
  v18 = [(IDSCryptionContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, a3);
    objc_storeStrong(&v19->_sendingURI, a4);
    objc_storeStrong(&v19->_sendingPushToken, a5);
    objc_storeStrong(&v19->_receivingURI, a6);
    objc_storeStrong(&v19->_receivingPushToken, a7);
    objc_storeStrong(&v19->_service, a8);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 guid];
    v7 = [(IDSCryptionContext *)self guid];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 sendingURI];
      v9 = [(IDSCryptionContext *)self sendingURI];
      if ([v8 isEqual:v9])
      {
        v10 = [v5 sendingPushToken];
        v11 = [(IDSCryptionContext *)self sendingPushToken];
        if ([v10 isEqual:v11])
        {
          v12 = [v5 receivingURI];
          v22 = [(IDSCryptionContext *)self receivingURI];
          v23 = v12;
          if ([v12 isEqual:v22])
          {
            v13 = [v5 receivingPushToken];
            v14 = [(IDSCryptionContext *)self receivingPushToken];
            v21 = v13;
            v15 = v13;
            v16 = v14;
            if ([v15 isEqual:v14])
            {
              v20 = [v5 service];
              v19 = [(IDSCryptionContext *)self service];
              v17 = [v20 isEqualToString:v19];
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
  v4 = [(IDSCryptionContext *)self guid];
  v5 = [(IDSCryptionContext *)self sendingURI];
  v6 = [(IDSCryptionContext *)self sendingPushToken];
  v7 = [(IDSCryptionContext *)self receivingURI];
  v8 = [(IDSCryptionContext *)self receivingPushToken];
  v9 = [(IDSCryptionContext *)self service];
  v10 = [NSString stringWithFormat:@"<%@: %p { guid: %@, sendingURI: %@, sendingPushToken: %@, receivingURI: %@, receivingPushToken: %@ service: %@ }>", v3, self, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end