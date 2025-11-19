@interface IDSKeyTransparencyRegistrationDataSource
- (BOOL)iCloudAccountDoesMatchAccountForIdentifier:(id)a3;
- (BOOL)isPhoneOnlyRegisteredForService:(id)a3;
- (BOOL)isiCloudSignedIn;
- (id)_dependentRegistrationPropertyForKey:(id)a3 serviceIdentifier:(id)a4 pushToken:(id)a5;
- (id)currentLocalKeyTransparencyEligibleServiceIdentifiers;
- (id)currentLocalKeyTransparencyEnrolledURIsForServiceIdentifier:(id)a3;
- (id)trustedRemoteKeyTransparencySignatureForServiceIdentifier:(id)a3 pushToken:(id)a4;
- (int64_t)expectedRemoteKeyTransparencyEligibilityForServiceIdentifier:(id)a3 pushToken:(id)a4;
@end

@implementation IDSKeyTransparencyRegistrationDataSource

- (id)_dependentRegistrationPropertyForKey:(id)a3 serviceIdentifier:(id)a4 pushToken:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (v7 && v8 && v9)
  {
    v12 = +[IDSDServiceController sharedInstance];
    v13 = [v12 serviceWithIdentifier:v8];

    v14 = +[IDSDAccountController sharedInstance];
    v15 = [v14 appleIDAccountOnService:v13];

    [v15 dependentRegistrationsIncludingCurrentDevice];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v32 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v17)
    {
      v27 = v15;
      v28 = v13;
      v18 = *v30;
      v19 = IDSDevicePropertyPushToken;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = [v21 objectForKey:{v19, v27, v28, v29}];
          if ([v10 isEqualToData:v22])
          {
            v17 = v21;

            goto LABEL_14;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v29 objects:v43 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v15 = v27;
      v13 = v28;
    }

    v23 = [v17 objectForKey:IDSDevicePropertyPrivateDeviceData];
    v11 = [v23 objectForKey:v7];

    v24 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = @"YES";
      *buf = 138413314;
      v34 = v8;
      if (!v17)
      {
        v26 = @"NO";
      }

      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = v11;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Returning dependent registration property for key { serviceIdentifier: %@, pushToken: %@, foundCandidate: %@, key: %@, value: %@ }", buf, 0x34u);
    }
  }

  return v11;
}

- (id)trustedRemoteKeyTransparencySignatureForServiceIdentifier:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = im_primary_base_queue();
  dispatch_assert_queue_V2(v8);

  v9 = [(IDSKeyTransparencyRegistrationDataSource *)self _dependentRegistrationPropertyForKey:IDSPrivateDeviceDataServiceSignatures serviceIdentifier:v6 pushToken:v7];
  v10 = &IDSRegistrationControlErrorDomain_ptr;
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1009335EC();
  }

  v12 = [[NSData alloc] initWithBase64EncodedString:v9 options:0];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = [[IDSProtoKeyTransparencyTrustedServiceSignatures alloc] initWithData:v12];
  v14 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10093365C();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [(IDSProtoKeyTransparencyTrustedServiceSignatures *)v13 serviceSignatures];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v26 = v13;
    v18 = *v28;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 serviceIdentifier];
        v22 = [v20 signature];
        if (v21 && [v6 isEqualToString:v21])
        {

          goto LABEL_28;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v22 = 0;
LABEL_28:
    v10 = &IDSRegistrationControlErrorDomain_ptr;
    v13 = v26;
  }

  else
  {
    v22 = 0;
  }

LABEL_20:
  v23 = [v10[240] KeyTransparency];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"YES";
    *buf = 138413058;
    v32 = v6;
    if (!v9)
    {
      v24 = @"NO";
    }

    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Returning KT signature for device { serviceIdentifier: %@, pushToken: %@, KTLoggableDataSignaturesString: %@, KTLoggableDataSignature: %@ }", buf, 0x2Au);
  }

  return v22;
}

- (int64_t)expectedRemoteKeyTransparencyEligibilityForServiceIdentifier:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = im_primary_base_queue();
  dispatch_assert_queue_V2(v8);

  if (([v6 isEqualToString:IDSiMessageKeyTransparencyService] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", IDSFaceTimeMultiKeyTransparencyService) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", IDSMultiplex1KeyTransparencyService))
  {
    v9 = [(IDSKeyTransparencyRegistrationDataSource *)self _dependentRegistrationPropertyForKey:IDSPrivateDeviceDataKeyTransparencyFlags serviceIdentifier:v6 pushToken:v7];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412802;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Key transparency flags { serviceIdentifier: %@, pushToken: %@, keyTransparencyFlagsString: %@ }", &v14, 0x20u);
      }

      v11 = [v9 integerValue] & 1;
    }

    else
    {
      v11 = -1;
    }

    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138413058;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning KT eligibility value { serviceIdentifier: %@, pushToken: %@, keyTransparencyFlagsString: %@, eligibility: %ld }", &v14, 0x2Au);
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (BOOL)iCloudAccountDoesMatchAccountForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[IDSDServiceController sharedInstance];
  v29 = v3;
  v14 = [v4 serviceWithIdentifier:v3];

  v5 = +[IDSDAccountController sharedInstance];
  v28 = v14;
  v6 = [v5 appleIDAccountOnService:v14];

  v7 = [IDSSystemAccountAdapter alloc];
  v8 = im_primary_queue();
  v9 = [(IDSSystemAccountAdapter *)v7 initWithQueue:v8];

  v30 = 0;
  v10 = [(IDSSystemAccountAdapter *)v9 iCloudSystemAccountWithError:&v30];
  v11 = v30;
  v12 = [v10 DSID];
  v13 = v12;
  LODWORD(v14) = 0;
  if (v6 && v12)
  {
    v15 = [v6 registration];
    if ([v15 registrationStatus] <= 4 && objc_msgSend(v6, "registrationStatus") < 2)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v16 = [v6 dsID];
      v17 = [v10 DSID];
      LODWORD(v14) = [v16 isEqualToString:v17];
    }
  }

  v18 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v13;
    v19 = v11;
    if (v14)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [v6 loginID];
    v22 = [v6 dsID];
    [v6 registrationStatus];
    _IDSStringFromIDSRegistrationStatus();
    v23 = v26 = v14;
    v14 = [v6 registration];
    v24 = [v14 registrationStatus];
    *buf = 138414082;
    v32 = v29;
    v33 = 2112;
    v34 = v20;
    v11 = v19;
    v13 = v27;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v21;
    v41 = 2112;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    v45 = 2048;
    v46 = v24;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Checked for iCloud account mismatch { serviceIdentifier: %@, iCloudAccountDoesMatchServiceAccount: %@, iCloudAccount: %@, iCloudAccountError: %@, serviceLoginID: %@, serviceDSID: %@, serviceAccountRegistrationStatus: %@, serviceRegistrationStatus: %ld }", buf, 0x52u);

    LOBYTE(v14) = v26;
  }

  return v14;
}

- (id)currentLocalKeyTransparencyEligibleServiceIdentifiers
{
  v3 = im_primary_base_queue();
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSMutableArray);
  v5 = _os_feature_enabled_impl();
  v6 = IDSiMessageKeyTransparencyService;
  if (v5 && [(IDSKeyTransparencyRegistrationDataSource *)self isPhoneOnlyRegisteredForService:IDSiMessageKeyTransparencyService])
  {
    [v4 addObject:v6];
  }

  if ([(IDSKeyTransparencyRegistrationDataSource *)self iCloudAccountDoesMatchAccountForIdentifier:v6])
  {
    [v4 addObject:v6];
  }

  v7 = IDSMultiplex1KeyTransparencyService;
  if ([(IDSKeyTransparencyRegistrationDataSource *)self iCloudAccountDoesMatchAccountForIdentifier:IDSMultiplex1KeyTransparencyService])
  {
    [v4 addObject:v7];
  }

  v8 = IDSFaceTimeMultiKeyTransparencyService;
  if ([(IDSKeyTransparencyRegistrationDataSource *)self iCloudAccountDoesMatchAccountForIdentifier:IDSFaceTimeMultiKeyTransparencyService])
  {
    [v4 addObject:v8];
  }

  return v4;
}

- (BOOL)isPhoneOnlyRegisteredForService:(id)a3
{
  v3 = a3;
  v4 = +[IDSDServiceController sharedInstance];
  v22 = v3;
  v5 = [v4 serviceWithIdentifier:v3];

  v6 = +[IDSDAccountController sharedInstance];
  v7 = [v6 accountsOnService:v5];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 registration];
        if ([v15 registrationType])
        {
          v16 = [v14 registration];
          v17 = [v16 registrationStatus];

          if (v17 == 8)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        v18 = [v14 registration];
        if (![v18 registrationType])
        {
          v19 = [v14 registration];
          v20 = [v19 registrationStatus] == 8;

          v11 |= v20;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  else
  {
LABEL_15:
    v11 = 0;
  }

  return v11 & 1;
}

- (id)currentLocalKeyTransparencyEnrolledURIsForServiceIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[IDSDServiceController sharedInstance];
  v5 = [v4 serviceWithIdentifier:v3];

  v6 = +[IDSDAccountController sharedInstance];
  v7 = [v6 accountsOnService:v5];

  v8 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v19 + 1) + 8 * i) registration];
        v15 = [v14 keyTransparencyEnrolledURIs];
        [v8 addObjectsFromArray:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning key transparency enrolled URIs { serviceIdentifier: %@, enrolledURIs: %@ }", buf, 0x16u);
  }

  v17 = [v8 allObjects];

  return v17;
}

- (BOOL)isiCloudSignedIn
{
  v2 = [IDSSystemAccountAdapter alloc];
  v3 = im_primary_queue();
  v4 = [(IDSSystemAccountAdapter *)v2 initWithQueue:v3];

  v9 = 0;
  v5 = [(IDSSystemAccountAdapter *)v4 iCloudSystemAccountWithError:&v9];
  v6 = v9;
  v7 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning iCloud sign-in status for key transparency { iCloudAccount: %@, iCloudAccountError: %@ }", buf, 0x16u);
  }

  return v5 != 0;
}

@end