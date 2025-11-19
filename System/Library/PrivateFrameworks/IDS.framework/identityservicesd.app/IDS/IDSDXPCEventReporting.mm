@interface IDSDXPCEventReporting
- (IDSDXPCEventReporting)initWithQueue:(id)a3 connection:(id)a4;
- (void)reportClientEvent:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSDXPCEventReporting

- (IDSDXPCEventReporting)initWithQueue:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 hasEntitlement:kIDSEventReportingEntitlement])
  {
    v14.receiver = self;
    v14.super_class = IDSDXPCEventReporting;
    v9 = [(IDSDXPCEventReporting *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_queue, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing Event Reporting entitlement -- failing creation of IDSDXPCRegistration collaborator {connection: %@}", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)reportClientEvent:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 reportType];
    *buf = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reporting client event with type %@", buf, 0xCu);
  }

  v9 = +[IDSDAccountController sharedInstance];
  v10 = +[IDSDServiceController sharedInstance];
  v11 = [v10 serviceWithIdentifier:IDSiMessageKeyTransparencyService];
  v12 = [v9 appleIDAccountOnService:v11];

  if (v12 && [v12 registrationStatus] >= 3 && (objc_msgSend(v12, "primaryRegistration"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "registrationCert"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14) || (+[IDSDAccountController sharedInstance](IDSDAccountController, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), +[IDSDServiceController sharedInstance](IDSDServiceController, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "serviceWithIdentifier:", IDSMultiplex1KeyTransparencyService), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "appleIDAccountOnService:", v17), v18 = objc_claimAutoreleasedReturnValue(), v12, v17, v16, v15, (v12 = v18) != 0))
  {
    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found account! %@", buf, 0xCu);
    }

    [v12 reportClientEvent:v5 completionBlock:v6];
  }

  else
  {
    v20 = +[IMRGLog registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to find a usable account", buf, 2u);
    }

    v21 = IDSEventReportingManagerErrorDomain;
    v23 = NSDebugDescriptionErrorKey;
    v24 = @"No usable account signed in!";
    v22 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [NSError errorWithDomain:v21 code:100 userInfo:v22];

    v6[2](v6, 0, v12);
  }
}

@end