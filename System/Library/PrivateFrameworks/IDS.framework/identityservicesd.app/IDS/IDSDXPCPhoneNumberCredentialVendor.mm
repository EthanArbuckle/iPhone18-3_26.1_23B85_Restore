@interface IDSDXPCPhoneNumberCredentialVendor
- (IDSDXPCPhoneNumberCredentialVendor)initWithQueue:(id)a3 connection:(id)a4;
- (id)phoneUserRegistry;
- (id)registrationConductor;
- (id)userStore;
- (void)fetchPhoneNumbersOfType:(int64_t)a3 withCompletion:(id)a4;
- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 failedIdentificationWithRegistrationReason:(int64_t)a6;
- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 identifiedPhoneNumber:(id)a6 token:(id)a7 tokenType:(int64_t)a8;
- (void)requestPhoneNumberCredentialForService:(int64_t)a3 simLabelID:(id)a4 requestOption:(int64_t)a5 withCompletion:(id)a6;
@end

@implementation IDSDXPCPhoneNumberCredentialVendor

- (IDSDXPCPhoneNumberCredentialVendor)initWithQueue:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = IDSDXPCPhoneNumberCredentialVendor;
  v9 = [(IDSDXPCPhoneNumberCredentialVendor *)&v16 init];
  if (!v9)
  {
    goto LABEL_4;
  }

  if ([v8 hasEntitlement:kIDSPhoneNumberCredentialVendorEntitlement])
  {
    objc_storeStrong(&v9->_queue, a3);
    v10 = objc_alloc_init(NSMutableArray);
    requests = v9->_requests;
    v9->_requests = v10;

LABEL_4:
    v12 = v9;
    goto LABEL_8;
  }

  v13 = +[IMRGLog sms];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing phone number credential vendor entitlement -- failing creation of IDSDXPCPhoneNumberCredentialVendor collaborator", v15, 2u);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)registrationConductor
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 registrationConductor];

  return v3;
}

- (id)phoneUserRegistry
{
  v2 = [(IDSDXPCPhoneNumberCredentialVendor *)self registrationConductor];
  v3 = [v2 phoneUserRegistry];

  return v3;
}

- (id)userStore
{
  v2 = [(IDSDXPCPhoneNumberCredentialVendor *)self registrationConductor];
  v3 = [v2 userStore];

  return v3;
}

- (void)requestPhoneNumberCredentialForService:(int64_t)a3 simLabelID:(id)a4 requestOption:(int64_t)a5 withCompletion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = +[IMRGLog sms];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithInteger:a3];
    v14 = [NSNumber numberWithInteger:a5];
    v19 = 138412802;
    v20 = v13;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client requested phone number credential. { serviceType: %@, labelID: %@, requestOption: %@ }", &v19, 0x20u);
  }

  v15 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
  [v15 addListener:self];

  requests = self->_requests;
  v17 = [[IDSPhoneNumberRequest alloc] initWithService:a3 labelID:v10 completion:v11];

  [(NSMutableArray *)requests addObject:v17];
  v18 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
  [v18 requestPhoneNumberIdentificationForServiceType:a3 withUniqueIdentifier:v10 requestOption:a5];
}

- (void)fetchPhoneNumbersOfType:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[IMRGLog sms];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithInteger:a3];
    *buf = 138412290;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client requested fetch phone numbers of type: %@", buf, 0xCu);
  }

  if ((a3 & 3) != 0 || !v6)
  {
    v10 = +[NSMutableArray array];
    if (a3)
    {
      v34 = self;
      v12 = [(IDSDXPCPhoneNumberCredentialVendor *)self userStore];
      v13 = [v12 usersWithRealm:0];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          v18 = 0;
          do
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v39 + 1) + 8 * v18);
            v20 = [IDSPhoneNumberFetchResult alloc];
            v21 = [v19 phoneNumber];
            v22 = [v20 initWithTelURI:v21 fetchType:1];

            [v10 addObject:v22];
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      self = v34;
    }

    if ((a3 & 2) != 0)
    {
      v23 = [(IDSDXPCPhoneNumberCredentialVendor *)self registrationConductor];
      v24 = [v23 stewieCoordinator];

      v25 = [v24 persistedCompanionPhoneNumbers];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v36;
        do
        {
          v29 = 0;
          do
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v35 + 1) + 8 * v29);
            v31 = [IDSPhoneNumberFetchResult alloc];
            v32 = [v30 prefixedURI];
            v33 = [v31 initWithTelURI:v32 fetchType:2];

            [v10 addObject:v33];
            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v27);
      }
    }

    v6[2](v6, v10, 0);
  }

  else
  {
    v9 = IDSPhoneNumberCredentialVendorErrorDomain;
    v45 = NSLocalizedDescriptionKey;
    v46 = @"No valid fetch type provided.";
    v10 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v11 = [NSError errorWithDomain:v9 code:2 userInfo:v10];
    (v6)[2](v6, 0, v11);
  }
}

- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 identifiedPhoneNumber:(id)a6 token:(id)a7 tokenType:(int64_t)a8
{
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = +[IMRGLog sms];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithInteger:a4];
    v16 = [NSNumber numberWithInteger:a8];
    *buf = 138413314;
    v46 = v15;
    v47 = 2112;
    v48 = v11;
    v49 = 2112;
    v50 = v12;
    v51 = 2112;
    v52 = v13;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PhoneNumberCredentialVendor received registry success callback. { serviceType: %@, identifier: %@, phoneNumber: %@, token: %@, tokenType: %@ }", buf, 0x34u);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = self->_requests;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v20 = v18;
    v39 = *v41;
    *&v19 = 138412546;
    v34 = v19;
    v35 = v13;
    v36 = v17;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        v23 = [v22 labelID];
        v24 = [v11 isEqualToString:v23];

        if (v24 && -[IDSDXPCPhoneNumberCredentialVendor doesServiceType:supportCredentialType:](self, "doesServiceType:supportCredentialType:", [v22 serviceType], a8))
        {
          v25 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
          [v25 cancelPhoneNumberIdentificationForServiceType:a4 withUniqueIdentifier:v11];

          v26 = [v22 completion];
          v27 = [[IDSPhoneNumberCredential alloc] initWithTelURI:v12 credential:v13 credentialType:a8];
          v28 = +[IMRGLog sms];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v11;
            v30 = self;
            v31 = v12;
            v32 = objc_retainBlock(v26);
            *buf = v34;
            v46 = v27;
            v47 = 2112;
            v48 = v32;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "PhoneNumberCredentialVendor calling back to client with success. { credential: %@, completion: %@}", buf, 0x16u);

            v12 = v31;
            self = v30;
            v11 = v29;
            v13 = v35;
          }

          (v26)[2](v26, v27, 0);
          [(NSMutableArray *)self->_requests removeObject:v22];

          v17 = v36;
        }
      }

      v20 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v20);
  }

  if (![(NSMutableArray *)self->_requests count])
  {
    v33 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
    [v33 removeListener:self];
  }
}

- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 failedIdentificationWithRegistrationReason:(int64_t)a6
{
  v9 = a5;
  v10 = +[IMRGLog sms];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v30 = [NSNumber numberWithInteger:a4];
    v31 = [NSNumber numberWithInteger:a6];
    *buf = 138412802;
    v41 = v30;
    v42 = 2112;
    v43 = v9;
    v44 = 2112;
    v45 = v31;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "PhoneNumberCredentialVendor received registry error callback. { serviceType: %@, identifier: %@, registrationError: %@ }", buf, 0x20u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = self->_requests;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v36;
    v34 = IDSPhoneNumberCredentialVendorErrorDomain;
    *&v13 = 138412290;
    v32 = v13;
    v33 = *v36;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v17 labelID];
        v19 = [v9 isEqualToString:v18];

        if (v19 && [v17 serviceType] == a4)
        {
          v20 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
          [v20 cancelPhoneNumberIdentificationForServiceType:a4 withUniqueIdentifier:v9];

          v21 = [v17 completion];
          v22 = +[IMRGLog sms];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v9;
            v24 = a4;
            v25 = v11;
            v26 = self;
            v27 = objc_retainBlock(v21);
            *buf = v32;
            v41 = v27;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PhoneNumberCredentialVendor calling back to client with error. { completion: %@ }", buf, 0xCu);

            self = v26;
            v11 = v25;
            a4 = v24;
            v9 = v23;
            v15 = v33;
          }

          v28 = [NSError errorWithDomain:v34 code:1 userInfo:0];
          (v21)[2](v21, 0, v28);

          [(NSMutableArray *)self->_requests removeObject:v17];
        }
      }

      v14 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  if (![(NSMutableArray *)self->_requests count])
  {
    v29 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
    [v29 removeListener:self];
  }
}

@end