@interface IDSDXPCPhoneNumberCredentialVendor
- (IDSDXPCPhoneNumberCredentialVendor)initWithQueue:(id)queue connection:(id)connection;
- (id)phoneUserRegistry;
- (id)registrationConductor;
- (id)userStore;
- (void)fetchPhoneNumbersOfType:(int64_t)type withCompletion:(id)completion;
- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier failedIdentificationWithRegistrationReason:(int64_t)reason;
- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier identifiedPhoneNumber:(id)number token:(id)token tokenType:(int64_t)tokenType;
- (void)requestPhoneNumberCredentialForService:(int64_t)service simLabelID:(id)d requestOption:(int64_t)option withCompletion:(id)completion;
@end

@implementation IDSDXPCPhoneNumberCredentialVendor

- (IDSDXPCPhoneNumberCredentialVendor)initWithQueue:(id)queue connection:(id)connection
{
  queueCopy = queue;
  connectionCopy = connection;
  v16.receiver = self;
  v16.super_class = IDSDXPCPhoneNumberCredentialVendor;
  v9 = [(IDSDXPCPhoneNumberCredentialVendor *)&v16 init];
  if (!v9)
  {
    goto LABEL_4;
  }

  if ([connectionCopy hasEntitlement:kIDSPhoneNumberCredentialVendorEntitlement])
  {
    objc_storeStrong(&v9->_queue, queue);
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
  registrationConductor = [v2 registrationConductor];

  return registrationConductor;
}

- (id)phoneUserRegistry
{
  registrationConductor = [(IDSDXPCPhoneNumberCredentialVendor *)self registrationConductor];
  phoneUserRegistry = [registrationConductor phoneUserRegistry];

  return phoneUserRegistry;
}

- (id)userStore
{
  registrationConductor = [(IDSDXPCPhoneNumberCredentialVendor *)self registrationConductor];
  userStore = [registrationConductor userStore];

  return userStore;
}

- (void)requestPhoneNumberCredentialForService:(int64_t)service simLabelID:(id)d requestOption:(int64_t)option withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v12 = +[IMRGLog sms];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithInteger:service];
    v14 = [NSNumber numberWithInteger:option];
    v19 = 138412802;
    v20 = v13;
    v21 = 2112;
    v22 = dCopy;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client requested phone number credential. { serviceType: %@, labelID: %@, requestOption: %@ }", &v19, 0x20u);
  }

  phoneUserRegistry = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
  [phoneUserRegistry addListener:self];

  requests = self->_requests;
  v17 = [[IDSPhoneNumberRequest alloc] initWithService:service labelID:dCopy completion:completionCopy];

  [(NSMutableArray *)requests addObject:v17];
  phoneUserRegistry2 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
  [phoneUserRegistry2 requestPhoneNumberIdentificationForServiceType:service withUniqueIdentifier:dCopy requestOption:option];
}

- (void)fetchPhoneNumbersOfType:(int64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[IMRGLog sms];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithInteger:type];
    *buf = 138412290;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client requested fetch phone numbers of type: %@", buf, 0xCu);
  }

  if ((type & 3) != 0 || !completionCopy)
  {
    v10 = +[NSMutableArray array];
    if (type)
    {
      selfCopy = self;
      userStore = [(IDSDXPCPhoneNumberCredentialVendor *)self userStore];
      v13 = [userStore usersWithRealm:0];

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
            phoneNumber = [v19 phoneNumber];
            v22 = [v20 initWithTelURI:phoneNumber fetchType:1];

            [v10 addObject:v22];
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
      }

      self = selfCopy;
    }

    if ((type & 2) != 0)
    {
      registrationConductor = [(IDSDXPCPhoneNumberCredentialVendor *)self registrationConductor];
      stewieCoordinator = [registrationConductor stewieCoordinator];

      persistedCompanionPhoneNumbers = [stewieCoordinator persistedCompanionPhoneNumbers];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v26 = [persistedCompanionPhoneNumbers countByEnumeratingWithState:&v35 objects:v43 count:16];
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
              objc_enumerationMutation(persistedCompanionPhoneNumbers);
            }

            v30 = *(*(&v35 + 1) + 8 * v29);
            v31 = [IDSPhoneNumberFetchResult alloc];
            prefixedURI = [v30 prefixedURI];
            v33 = [v31 initWithTelURI:prefixedURI fetchType:2];

            [v10 addObject:v33];
            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [persistedCompanionPhoneNumbers countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v27);
      }
    }

    completionCopy[2](completionCopy, v10, 0);
  }

  else
  {
    v9 = IDSPhoneNumberCredentialVendorErrorDomain;
    v45 = NSLocalizedDescriptionKey;
    v46 = @"No valid fetch type provided.";
    v10 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v11 = [NSError errorWithDomain:v9 code:2 userInfo:v10];
    (completionCopy)[2](completionCopy, 0, v11);
  }
}

- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier identifiedPhoneNumber:(id)number token:(id)token tokenType:(int64_t)tokenType
{
  identifierCopy = identifier;
  numberCopy = number;
  tokenCopy = token;
  v14 = +[IMRGLog sms];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [NSNumber numberWithInteger:type];
    v16 = [NSNumber numberWithInteger:tokenType];
    *buf = 138413314;
    v46 = v15;
    v47 = 2112;
    v48 = identifierCopy;
    v49 = 2112;
    v50 = numberCopy;
    v51 = 2112;
    v52 = tokenCopy;
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
    v35 = tokenCopy;
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
        labelID = [v22 labelID];
        v24 = [identifierCopy isEqualToString:labelID];

        if (v24 && -[IDSDXPCPhoneNumberCredentialVendor doesServiceType:supportCredentialType:](self, "doesServiceType:supportCredentialType:", [v22 serviceType], tokenType))
        {
          phoneUserRegistry = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
          [phoneUserRegistry cancelPhoneNumberIdentificationForServiceType:type withUniqueIdentifier:identifierCopy];

          completion = [v22 completion];
          v27 = [[IDSPhoneNumberCredential alloc] initWithTelURI:numberCopy credential:tokenCopy credentialType:tokenType];
          v28 = +[IMRGLog sms];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = identifierCopy;
            selfCopy = self;
            v31 = numberCopy;
            v32 = objc_retainBlock(completion);
            *buf = v34;
            v46 = v27;
            v47 = 2112;
            v48 = v32;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "PhoneNumberCredentialVendor calling back to client with success. { credential: %@, completion: %@}", buf, 0x16u);

            numberCopy = v31;
            self = selfCopy;
            identifierCopy = v29;
            tokenCopy = v35;
          }

          (completion)[2](completion, v27, 0);
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
    phoneUserRegistry2 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
    [phoneUserRegistry2 removeListener:self];
  }
}

- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier failedIdentificationWithRegistrationReason:(int64_t)reason
{
  identifierCopy = identifier;
  v10 = +[IMRGLog sms];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v30 = [NSNumber numberWithInteger:type];
    v31 = [NSNumber numberWithInteger:reason];
    *buf = 138412802;
    v41 = v30;
    v42 = 2112;
    v43 = identifierCopy;
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
        labelID = [v17 labelID];
        v19 = [identifierCopy isEqualToString:labelID];

        if (v19 && [v17 serviceType] == type)
        {
          phoneUserRegistry = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
          [phoneUserRegistry cancelPhoneNumberIdentificationForServiceType:type withUniqueIdentifier:identifierCopy];

          completion = [v17 completion];
          v22 = +[IMRGLog sms];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = identifierCopy;
            typeCopy = type;
            v25 = v11;
            selfCopy = self;
            v27 = objc_retainBlock(completion);
            *buf = v32;
            v41 = v27;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PhoneNumberCredentialVendor calling back to client with error. { completion: %@ }", buf, 0xCu);

            self = selfCopy;
            v11 = v25;
            type = typeCopy;
            identifierCopy = v23;
            v15 = v33;
          }

          v28 = [NSError errorWithDomain:v34 code:1 userInfo:0];
          (completion)[2](completion, 0, v28);

          [(NSMutableArray *)self->_requests removeObject:v17];
        }
      }

      v14 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  if (![(NSMutableArray *)self->_requests count])
  {
    phoneUserRegistry2 = [(IDSDXPCPhoneNumberCredentialVendor *)self phoneUserRegistry];
    [phoneUserRegistry2 removeListener:self];
  }
}

@end