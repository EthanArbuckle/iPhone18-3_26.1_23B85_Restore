id sub_10052F554(uint64_t a1, void *a2)
{
  v3 = [a2 realmPrefixedIdentifier];
  v4 = [*(a1 + 32) userID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_10052F5B8(uint64_t a1, void *a2)
{
  v3 = [a2 userUniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10052F61C(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [NSString stringWithFormat:@"IDS Authentication failed: %d", a3];
  sub_100450174(0, @"Registration", v8, 1073);

  [a1[4] saveToKeychain];
  v9 = [a1[5] usersWithRealm:0];
  v10 = v9;
  if (a3 == 6008)
  {
    a2 = 18;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [a1[5] setCredential:0 forUser:*(*(&v15 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

  [a1[6] _notifyProvisionFailure:a1[4] responseCode:a3 registrationError:a2 error:v7 fatal:a3 != 6008 info:0];
}

void sub_10052FB34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 responseStatus];
  if (v4)
  {
    v5 = [v3 responseStatus];
    v6 = [v5 integerValue] == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 responseCertificate];
  if (v7)
  {
    v8 = [IDSAuthenticationCertificate alloc];
    v9 = [v3 responseCertificate];
    v10 = [v8 initWithDataRepresentation:v9];
  }

  else
  {
    v10 = 0;
  }

  v43 = [v3 responseCertificateExpiration];
  v11 = [*(a1 + 32) usersWithRealm:2];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100530118;
  v51[3] = &unk_100BDFA90;
  v52 = *(a1 + 40);
  v41 = v11;
  v12 = [v11 __imArrayByFilteringWithBlock:v51];
  v13 = [v12 firstObject];

  v14 = +[IDSRegistrationController sharedInstance];
  v15 = [v14 activeRegistrations];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10053015C;
  v49[3] = &unk_100BDF830;
  v16 = v13;
  v50 = v16;
  v17 = [v15 __imArrayByFilteringWithBlock:v49];

  if (([v17 containsObjectIdenticalTo:*(a1 + 48)] & 1) == 0)
  {
    v18 = [v17 arrayByAddingObject:*(a1 + 48)];

    v17 = v18;
  }

  v19 = v43;
  if ([v17 count])
  {
    v42 = v17;
  }

  else
  {
    v20 = IMSingleObjectArray();

    v42 = v20;
  }

  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v55 = v6;
    v56 = 2112;
    v57 = v10;
    v58 = 2112;
    v59 = v43;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Home Number response parsed { success: %lu, cert %@, expiration %@ }", buf, 0x20u);
  }

  if (v10)
  {
    v22 = v6;
  }

  else
  {
    v22 = 0;
  }

  if (v22 && v43)
  {
    v23 = +[IMRGLog registration];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      *buf = 138412290;
      v55 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Setting auth cert for user ID: %@", buf, 0xCu);
    }

    v25 = [v16 temporaryPhoneUserWithUpdatedExpirationDate:v43];
    v26 = +[IDSPACStateTracker sharedInstance];
    [v26 notePhoneAuthCertGained];

    v40 = v10;
    [*(a1 + 32) setAuthenticationCertificate:v10 forUser:v16];
    [*(a1 + 32) setCredential:0 forUser:v16];
    v39 = v25;
    [*(a1 + 32) updateUser:v25];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v42;
    v27 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v45 + 1) + 8 * i);
          [v31 setIdsUserID:*(a1 + 40)];
          v32 = +[FTDeviceSupport sharedInstance];
          v33 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 isC2KEquipment]);
          [v31 setIsCDMA:v33];

          v34 = +[IDSRegistrationKeyManager sharedInstance];
          v35 = [v34 keyPairSignature];
          [v31 setKeyPairSignature:v35];

          [v31 saveToKeychain];
          if (v31 == *(a1 + 48) || ([*(*(a1 + 56) + 24) containsObjectIdenticalTo:v31] & 1) != 0 || objc_msgSend(*(*(a1 + 56) + 16), "containsObjectIdenticalTo:", v31))
          {
            [*(a1 + 56) _notifyIDSAuthenticationSuccess:v31];
          }
        }

        v28 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v28);
    }

    v10 = v40;
    v19 = v43;
  }

  else
  {
    v36 = +[IDSDaemon sharedInstance];
    v37 = [v36 registrationConductor];
    v38 = [v37 userStore];
    [v38 forceRemoveUser:v16 silently:1];

    [*(a1 + 56) _notifyProvisionFailure:*(a1 + 48) responseCode:0 registrationError:-1 error:0 fatal:1 info:0];
  }
}

id sub_100530118(uint64_t a1, void *a2)
{
  v3 = [a2 realmPrefixedIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_10053015C(uint64_t a1, void *a2)
{
  v3 = [a2 userUniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_1005301C0(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [NSString stringWithFormat:@"IDS Temporary Phone Provisioning failed: %d", a3];
  sub_100450174(0, @"Registration", v7, 1073);

  [a1[4] saveToKeychain];
  v8 = [a1[5] usersWithRealm:2];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100530364;
  v15[3] = &unk_100BDFA90;
  v16 = a1[6];
  v9 = [v8 __imArrayByFilteringWithBlock:v15];
  v10 = [v9 firstObject];

  if (a3 == 6010)
  {
    v11 = 37;
  }

  else
  {
    v12 = +[IDSDaemon sharedInstance];
    v13 = [v12 registrationConductor];
    v14 = [v13 userStore];
    [v14 forceRemoveUser:v10 silently:1];

    v11 = 36;
  }

  [a1[7] _notifyProvisionFailure:a1[4] responseCode:a3 registrationError:v11 error:v6 fatal:1 info:0];
}

id sub_100530364(uint64_t a1, void *a2)
{
  v3 = [a2 realmPrefixedIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1005309B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100530D1C(id a1, IDSBaseMessage *a2, NSError *a3, int64_t a4, NSDictionary *a5)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = +[IMRGLog spamReporting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent report spam message (responseMessage: %@) (error: %@) (resultCode: %d) (resultDictionary: %@)", &v12, 0x26u);
  }
}

void sub_100531034(id a1, IDSBaseMessage *a2, NSError *a3, int64_t a4, NSDictionary *a5)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = +[IMRGLog spamReporting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent report unknown sender message (responseMessage: %@) (error: %@) (resultCode: %d) (resultDictionary: %@)", &v12, 0x26u);
  }
}

void sub_1005312A0(id a1, IDSBaseMessage *a2, NSError *a3, int64_t a4, NSDictionary *a5)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = +[IMRGLog iMessageSpam];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent report spam message (responseMessage: %@) (error: %@) (resultCode: %d) (resultDictionary: %@)", &v12, 0x26u);
  }
}

void sub_100531634(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 splunkHint];
    *buf = 138413058;
    v21 = v13;
    v22 = 2112;
    v23 = v10;
    v24 = 1024;
    v25 = a4;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sent report client event message (responseMessage: %@) (error: %@) (resultCode: %d) (resultDictionary: %@)", buf, 0x26u);
  }

  if (v10)
  {
    v14 = [v10 domain];
    if (v14 != NSURLErrorDomain)
    {
LABEL_7:

      goto LABEL_8;
    }

    v15 = [v10 code];

    if (v15 == -1001)
    {
      v16 = IDSEventReportingManagerErrorDomain;
      v18 = NSDebugDescriptionErrorKey;
      v19 = @"Timed out while reporting event.";
      v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v17 = [NSError errorWithDomain:v16 code:300 userInfo:v14];

      v10 = v17;
      goto LABEL_7;
    }
  }

LABEL_8:
  (*(*(a1 + 32) + 16))();
}

void sub_100531A04(id a1, IDSBaseMessage *a2, NSError *a3, int64_t a4, NSDictionary *a5)
{
  v6 = a4;
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = +[IMRGLog iMessageSpam];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent report iMessage unknown sender message (responseMessage: %@) (error: %@) (resultCode: %d) (resultDictionary: %@)", &v12, 0x26u);
  }
}

void sub_100531D24(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 1024;
    v19 = a4;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sent report approved temp handle message (responseMessage: %@) (error: %@) (resultCode: %d) (resultDictionary: %@)", &v14, 0x26u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v10);
  }
}

void sub_100532028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v10 = v5;
    v7 = a3;
    v8 = [v10 status];
    v9 = [v10 abusive];
    [v10 delay];
    (*(v6 + 16))(v6, v8, v9, v7);

    v5 = v10;
  }
}

void sub_1005329BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, os_activity_scope_state_s state, char a41)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100532FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, os_activity_scope_state_s state, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100533058(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = [*(*(a1 + 32) + 64) objectForKey:*(a1 + 40)];
  v14 = [v13 copy];

  [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  v36 = [[NSDictionary alloc] initWithDictionary:*(*(a1 + 32) + 56) copyItems:1];
  v32 = v9;
  [*(a1 + 32) _processGetHandlesMessage:v9 registrations:v14 deliveredWithError:v10 resultCode:a4 resultDictionary:v11 allowPasswordPrompt:*(a1 + 56)];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v14;
  v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v40)
  {
    v39 = *v47;
    v34 = a1;
    v35 = WeakRetained;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = [v16 guid];
        if (v17)
        {
          [*(*(a1 + 32) + 56) removeObjectForKey:v17];
          v18 = [v36 objectForKey:v17];
          if (WeakRetained)
          {
            v37 = *(*(a1 + 32) + 144);
            v38 = v18;
            v19 = [v16 registrationTraceID];
            v20 = [WeakRetained overallEventTracingOperation];
            [v37 trackIDSMessageWithIdentifier:v19 messageType:2 operation:v20];

            v18 = v38;
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v21 = v18;
          v22 = [v21 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v43;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v42 + 1) + 8 * j);
                if (v26)
                {
                  (*(v26 + 16))(v26, v16, a4, v10 == 0, v11);
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v23);
          }

          a1 = v34;
          WeakRetained = v35;
        }
      }

      v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v40);
  }

  if (![*(*(a1 + 32) + 64) count])
  {
    v27 = *(a1 + 32);
    v28 = *(v27 + 64);
    *(v27 + 64) = 0;
  }

  if (![*(*(a1 + 32) + 56) count])
  {
    v29 = *(a1 + 32);
    v30 = *(v29 + 56);
    *(v29 + 56) = 0;
  }

  v31 = +[IMRGLog registration];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Processed getHandles queue", buf, 2u);
  }
}

void sub_1005335F4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4 == 6006)
  {
    [*(a1 + 32) sendRegistration:*(a1 + 40)];
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a4;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processed retrieve feature toggle state message {resultCode: %d, resultDictionary: %@, error: %@}", v13, 0x1Cu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a4, v10 == 0, v11);
}

void sub_100533950(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4 == 6006)
  {
    [*(a1 + 32) sendRegistration:*(a1 + 40)];
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a4;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processed feature toggle state message {resultCode: %d, resultDictionary: %@, error: %@}", v13, 0x1Cu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a4, v10 == 0, v11);
}

id sub_100533D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 operation])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 featureID];
    v6 = [*(a1 + 32) featureID];
    v4 = [v5 isEqualToString:v6];
  }

  return v4;
}

void sub_100534944(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4 == 6006)
  {
    [*(a1 + 32) sendRegistration:*(a1 + 40)];
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a4;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processed pseudonym message {resultCode: %d, resultDictionary: %@, error: %@}", v13, 0x1Cu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a4, v10 == 0, v11, 0);
}

void sub_100535274(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4 <= 6002)
  {
    if (a4)
    {
      if (a4 != 6001)
      {
        if (a4 != 6002)
        {
          goto LABEL_27;
        }

        v12 = +[IDSFoundationLog KeyTransparency];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        LOWORD(v16) = 0;
        v13 = "Server cannot process KT opt in status update at this time.";
        goto LABEL_25;
      }

      v12 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v13 = "KT opt in status update failed -- Server says not to retry.";
        goto LABEL_25;
      }
    }

    else
    {
      v12 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v13 = "KT opt in status update succeeded.";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v16, 2u);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  if (a4 <= 6005)
  {
    if (a4 != 6003)
    {
      if (a4 != 6005)
      {
        goto LABEL_27;
      }

      v12 = +[IDSFoundationLog KeyTransparency];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      LOWORD(v16) = 0;
      v13 = "Server says to refresh credentials.";
      goto LABEL_25;
    }

    v12 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v13 = "Server says to retry, client clock is too far off from the server clock.";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (a4 != 6006)
  {
    if (a4 != 6013)
    {
      goto LABEL_27;
    }

    v12 = +[IDSFoundationLog KeyTransparency];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    LOWORD(v16) = 0;
    v13 = "Server says account key is out of date.";
    goto LABEL_25;
  }

  v14 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server asks for refresh of registration.", &v16, 2u);
  }

  [*(a1 + 32) sendRegistration:*(a1 + 40)];
LABEL_27:
  v15 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v16) = 67109634;
    HIDWORD(v16) = a4;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Processed KT opt-in status update message {resultCode: %d, resultDictionary: %@, error: %@}", &v16, 0x1Cu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a4, v10 == 0, v11, 0);
}

void sub_1005359A0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4 == 6006)
  {
    [*(a1 + 32) sendRegistration:*(a1 + 40)];
  }

  v12 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109634;
    v13[1] = a4;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processed KT opt-in status update message {resultCode: %d, resultDictionary: %@, error: %@}", v13, 0x1Cu);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), a4, v10 == 0, v11, 0);
}

void sub_1005361B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1005365A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100536758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100537678(id a1, IDSBaseMessage *a2, NSError *a3, int64_t a4, NSDictionary *a5)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100928C28();
    }

    goto LABEL_13;
  }

  v7 = +[IMRGLog registration];
  v8 = v7;
  if (!a4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SIM deactivation request succeeded with code: %d", v9, 8u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100928C9C(a4, v8);
  }

  if (a4 > 6004)
  {
    switch(a4)
    {
      case 6005:
        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100928D7C();
        }

        break;
      case 6008:
        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100928D48();
        }

        break;
      case 6009:
        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100928D14();
        }

        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(a4)
  {
    case 6001:
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100928E18();
      }

      goto LABEL_13;
    case 6002:
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100928DE4();
      }

      goto LABEL_13;
    case 6003:
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100928DB0();
      }

LABEL_13:

      break;
  }

LABEL_14:
}

void sub_100537A44(uint64_t a1, void *a2)
{
  v3 = [a2 response];
  v4 = +[IMRGLog registration];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User hit no to IDS regitration alert -- ignoring", &v8, 2u);
    }

LABEL_9:

    return;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User hit default button on IDS registration alert { actionURL: %@ }", &v8, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = [[NSURL alloc] initWithString:*(a1 + 32)];
    if (v4)
    {
      v7 = [IMWeakLinkClass() defaultWorkspace];
      [v7 openURL:v4 withOptions:0];
    }

    goto LABEL_9;
  }
}

__CFDictionary *sub_1005383E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v18 = v3;
  v5 = [v3 componentsSeparatedByString:@"/"];
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) componentsSeparatedByString:{@"=", v16, v17}];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndex:0];
          v12 = [v10 objectAtIndex:1];
          v13 = [IDSSockAddrWrapper wrapperWithAddressString:v12 withPortHostOrder:49888 withInterfaceName:v4];

          v14 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v25 = v11;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "added mapping device ID [%@] to destination [%@]", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v16 = v11;
            v17 = v13;
            _IDSLogV();
          }

          if (v13)
          {
            CFDictionarySetValue(theDict, v11, v13);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  return theDict;
}

id sub_1005386A8(void *a1, double a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSMutableString);
  v35 = v3;
  [v3 allKeys];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v36)
  {
    v42 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v34 = *v44;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        v37 = v6;
        v40 = v7;
        v41 = v5;
        if (*v44 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v10 = [v35 objectForKey:v9];
        v11 = [v10 objectForKey:@"localDeliveryQueueStatMessageCount"];
        v39 = [v11 unsignedLongLongValue];

        v12 = [v10 objectForKey:@"localDeliveryQueueStatBytes"];
        v13 = [v12 unsignedLongLongValue];

        v14 = [v10 objectForKey:@"localDeliveryQueueStatDeliveredMessageCount"];
        v38 = [v14 unsignedLongLongValue];

        v15 = [v10 objectForKey:@"localDeliveryQueueStatDeliveredBytes"];
        v16 = [v15 unsignedLongLongValue];

        v17 = [v10 objectForKey:@"localDeliveryQueueStatsLastDeliveredTime"];
        [v17 doubleValue];
        v19 = v18;

        v20 = [v9 UTF8String];
        v21 = strlen(v20);
        v22 = 55 - v21;
        if (55 - v21 >= 0)
        {
          v23 = 55 - v21;
        }

        else
        {
          v23 = 62 - v21;
        }

        if (a2 == 0.0 || v19 == 0.0)
        {
          [v4 appendFormat:@"        %s\t", v20, v32];
        }

        else
        {
          [v4 appendFormat:@"%7d %s\t", (a2 - v19 + 0.5), v20];
        }

        if (v22 >= 8)
        {
          v24 = (v23 >> 3) + 1;
          do
          {
            [v4 appendString:@"\t"];
            --v24;
          }

          while (v24 > 1);
        }

        v25 = formattedBytes();
        v26 = [v25 UTF8String];
        v27 = formattedBytes();
        [v4 appendFormat:@"%3llu msgs %sB pending, %5llu msgs %sB processed\n", v39, v26, v38, objc_msgSend(v27, "UTF8String")];

        v5 = &v41[v38];
        v42 += v16;
        v7 = &v40[v39];
        v6 = &v37[v13];
      }

      v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v36);
    v28 = formattedBytes();
    v29 = [v28 UTF8String];
    v30 = formattedBytes();
    [v4 appendFormat:@"\n\tTotal\t\t\t\t\t\t\t%3llu msgs %sB pending, %5llu msgs %sB processed\n", v7, v29, v5, objc_msgSend(v30, "UTF8String")];
  }

  else
  {
    [v4 appendString:@"\tNone\n"];
  }

  return v4;
}

id sub_100538A74(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  v3 = [NSMutableSet alloc];
  v4 = [v1 allKeys];
  v5 = [v3 initWithArray:v4];

  v6 = [qword_100CBEEC8 allKeys];
  [v5 addObjectsFromArray:v6];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v27)
  {
    v25 = *v34;
    v26 = v1;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [qword_100CBEEC8 objectForKey:v8];
        v10 = [v1 objectForKey:v8];
        v11 = v10;
        if (v10)
        {
          v31 = [v10 packetsSent];
          v32 = [v11 packetsReceived];
          v29 = [v11 bytesSent];
          v12 = v11;
        }

        else
        {
          v31 = [v9 packetsSent];
          v32 = [v9 packetsReceived];
          v29 = [v9 bytesSent];
          v12 = v9;
        }

        v30 = [v12 bytesReceived];
        v28 = [v9 packetsSent];
        v13 = [v9 packetsReceived];
        v14 = [v9 bytesSent];
        v15 = [v9 bytesReceived];
        v16 = [v8 UTF8String];
        v17 = 55 - strlen(v16);
        [v2 appendFormat:@"\t%s\t", v16];
        if (v17 >= 8)
        {
          v18 = (v17 >> 3) + 1;
          do
          {
            [v2 appendString:@"\t"];
            --v18;
          }

          while (v18 > 1);
        }

        v19 = v32 - v13;
        [v2 appendFormat:@"\tTx\t%5lld pkts %5lld KB  %5llu pkts %5llu KB\n", v31 - v28, (v29 - v14) >> 10, v31, v29 >> 10];
        v20 = 8;
        do
        {
          [v2 appendString:@"\t"];
          --v20;
        }

        while (v20);
        [v2 appendFormat:@"\tRx\t%5lld pkts %5lld KB  %5llu pkts %5llu KB\n", v19, (v30 - v15) >> 10, v32, v30 >> 10];

        v1 = v26;
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v27);
  }

  if (qword_100CBEEC8)
  {
    [qword_100CBEEC8 addEntriesFromDictionary:v1];
  }

  else
  {
    v21 = [v1 mutableCopy];
    v22 = qword_100CBEEC8;
    qword_100CBEEC8 = v21;
  }

  return v2;
}

void sub_100539880(uint64_t a1, void *value, void *key)
{
  if (value)
  {
    CFDictionarySetValue(*(a1 + 32), key, value);
  }
}

void sub_100539998(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1376));
        [WeakRetained link:*(a1 + 48) didConnectForDeviceUniqueID:0 cbuuid:{v7, v9}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

id sub_10053A6A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  ids_monotonic_time();
  return [v1 generateLinkReport:1 forceReport:?];
}

void sub_10053A6D8(uint64_t a1)
{
  v97.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v97.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v96.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v96.tm_mon = v1;
  *&v96.tm_isdst = v1;
  *&v96.tm_sec = v1;
  gettimeofday(&v97, 0);
  localtime_r(&v97.tv_sec, &v96);
  v2 = [NSMutableString alloc];
  tm_mon = v96.tm_mon;
  tm_year = v96.tm_year;
  tm_hour = v96.tm_hour;
  tm_mday = v96.tm_mday;
  tm_sec = v96.tm_sec;
  tm_min = v96.tm_min;
  tv_usec = v97.tv_usec;
  tm_zone = v96.tm_zone;
  v11 = +[IDSUTunDeliveryController sharedInstance];
  v12 = [v11 isPresent];
  v13 = "Disconnected";
  if (v12)
  {
    v13 = "Connected";
  }

  v14 = [v2 initWithFormat:@"%d-%02d-%02d %02d:%02d:%02d.%06d %s  LocalDelivery %s\n", (tm_year + 1900), (tm_mon + 1), tm_mday, tm_hour, tm_min, tm_sec, tv_usec, tm_zone, v13];

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v96.tm_mon;
    v16 = v96.tm_year;
    v18 = v96.tm_hour;
    v19 = v96.tm_mday;
    v20 = v96.tm_sec;
    v21 = v96.tm_min;
    v22 = v97.tv_usec;
    obj = v96.tm_zone;
    v23 = +[IDSUTunDeliveryController sharedInstance];
    v24 = [v23 isPresent];
    *buf = 67111170;
    v25 = "Disconnected";
    if (v24)
    {
      v25 = "Connected";
    }

    *v100 = v16 + 1900;
    *&v100[4] = 1024;
    *&v100[6] = v17 + 1;
    LOWORD(v101) = 1024;
    *(&v101 + 2) = v19;
    HIWORD(v101) = 1024;
    v102 = v18;
    v103 = 1024;
    v104 = v21;
    v105 = 1024;
    v106 = v20;
    v107 = 1024;
    v108 = v22;
    v109 = 2080;
    v110 = obj;
    v111 = 2080;
    v112 = v25;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%d-%02d-%02d %02d:%02d:%02d.%06d %s  LocalDelivery %s\n", buf, 0x40u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = v96.tm_mon;
    v26 = v96.tm_year;
    v29 = v96.tm_hour;
    v28 = v96.tm_mday;
    v30 = v96.tm_sec;
    v31 = v96.tm_min;
    v32 = v97.tv_usec;
    v33 = v96.tm_zone;
    v34 = +[IDSUTunDeliveryController sharedInstance];
    v35 = [v34 isPresent];
    v36 = "Disconnected";
    if (v35)
    {
      v36 = "Connected";
    }

    v85 = v33;
    v86 = v36;
    v83 = v30;
    v84 = v32;
    v81 = v29;
    v82 = v31;
    v78 = (v27 + 1);
    v80 = v28;
    v71 = (v26 + 1900);
    _IDSLogV();
  }

  v89 = [IDSUTunDeliveryController sharedInstance:v71];
  ids_monotonic_time();
  v38 = v37;
  v39 = [v89 syncPriorityMessageStatistics];
  v40 = sub_1005386A8(v39, v38);

  [v14 appendString:@"Sync priority messages queued:\n"];
  [v14 appendString:v40];
  v41 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v100 = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Sync priority messages queued: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v72 = v40;
    _IDSLogV();
  }

  v42 = [v89 defaultPriorityMessageStatistics];
  v43 = sub_1005386A8(v42, v38);

  [v14 appendString:@"\nDefault priority messages queued:\n"];
  [v14 appendString:v43];
  v44 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v100 = v43;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Default priority messages queued: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v73 = v43;
    _IDSLogV();
  }

  v45 = [v89 urgentPriorityMessageStatistics];
  v46 = sub_1005386A8(v45, v38);

  [v14 appendString:@"\nUrgent priority messages queued:\n"];
  [v14 appendString:v46];
  v47 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v100 = v46;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Urgent priority messages queued: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v74 = v46;
    _IDSLogV();
  }

  v48 = [v89 urgentCloudPriorityMessageStatistics];
  v49 = sub_1005386A8(v48, v38);

  [v14 appendString:@"\nUrgent Cloud priority messages queued:\n"];
  [v14 appendString:v49];
  v50 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v100 = v49;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Urgent Cloud priority messages queued: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v75 = v49;
    _IDSLogV();
  }

  v51 = [v89 sendingMessageStatistics];
  v88 = sub_1005386A8(v51, 0.0);

  [v14 appendString:@"\nMessages being sent:\n"];
  [v14 appendString:v88];
  v52 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v100 = v88;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Messages being sent: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v76 = v88;
    _IDSLogV();
  }

  [v14 appendString:{@"\nIncoming messages not claimed yet:\n", v76}];
  v53 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Incoming messages not claimed yet:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v54 = [v89 queuedIncomingMessageDictionary];
  [v54 allKeys];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  obja = v93 = 0u;
  v55 = [obja countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (v55)
  {
    v56 = 0;
    v57 = *v93;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v93 != v57)
        {
          objc_enumerationMutation(obja);
        }

        v59 = *(*(&v92 + 1) + 8 * i);
        v60 = v59;
        v61 = [v59 UTF8String];
        v62 = strlen(v61);
        [v14 appendFormat:@"\t%s\t", v61];
        if (55 - v62 >= 8)
        {
          v63 = ((55 - v62) >> 3) + 1;
          do
          {
            [v14 appendString:@"\t"];
            --v63;
          }

          while (v63 > 1);
        }

        Value = 0;
        if (v54 && v59)
        {
          Value = CFDictionaryGetValue(v54, v59);
        }

        v65 = [Value unsignedLongLongValue];
        [v14 appendFormat:@"%3llu msgs\n", v65];
        v66 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *v100 = v61;
          *&v100[8] = 2048;
          v101 = v65;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "\t%s\t%3llu msgs", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v79 = v65;
          _IDSLogV();
        }

        v56 += v65;
      }

      v55 = [obja countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v55);

    [v14 appendFormat:@"\n\tTotal\t\t\t\t\t\t\t%3llu msgs\n", v56];
    v67 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v100 = v56;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "\tTotal\t\t\t\t\t\t\t%3llu msgs", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v77 = v56;
      _IDSLogV();
    }
  }

  else
  {

    [v14 appendString:@"\tNone\n"];
    v68 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "\tNone", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  [v14 appendString:{*(a1 + 32), v77, v79}];
  v69 = *(*(a1 + 40) + 1316);
  if (v69 != -1)
  {
    v70 = v14;
    write(v69, [v14 UTF8String], objc_msgSend(v14, "length"));
    write(*(*(a1 + 40) + 1316), "\n", 1uLL);
  }
}

void sub_10053BDFC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100CBEF90 != -1)
  {
    sub_100928F88();
  }

  v3 = [v2 objectForKey:qword_100CBEF30];
  if (qword_100CBEFA0 != -1)
  {
    sub_100928F9C();
  }

  if (off_100CBEF98)
  {
    v4 = [off_100CBEF98(v3) copy];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 objectForKey:qword_100CBEF38];
  if (CFEqual(v5, qword_100CBEF40))
  {
    v6 = 1;
  }

  else if (CFEqual(v5, qword_100CBEF48))
  {
    v6 = 2;
  }

  else if (CFEqual(v5, qword_100CBEF50))
  {
    v6 = 3;
  }

  else if (CFEqual(v5, qword_100CBEF58))
  {
    v6 = 4;
  }

  else if (CFEqual(v5, qword_100CBEF60))
  {
    v6 = 5;
  }

  else if (CFEqual(v5, qword_100CBEF68))
  {
    v6 = 6;
  }

  else if (CFEqual(v5, qword_100CBEF70))
  {
    v6 = 7;
  }

  else if (CFEqual(v5, qword_100CBEF78))
  {
    v6 = 8;
  }

  else if (CFEqual(v5, qword_100CBEF80))
  {
    v6 = 9;
  }

  else if (CFEqual(v5, qword_100CBEF88))
  {
    v6 = 10;
  }

  else
  {
    v6 = 0;
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (&off_100CB1008)[v6];
    *buf = 136315394;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_WiFiDeviceAutoJoinCallback: status = %s, SSID = [%@]", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v9 = v4;
  IDSTransportThreadAddBlock();
}

void sub_10053CC70(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_connectivityChangedForDefaultDevice sending legacyUTunBTLinkManagerDefaultPeerConnectivityChanged: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v4 = *(a1 + 32) ? @"YES" : @"NO";
    v7 = v4;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (*(a1 + 32))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v7 = v5;
      _IDSLogV();
    }
  }

  v6 = +[IDSUTunDeliveryController sharedInstance];
  [v6 legacyUTunBTLinkManagerDefaultPeerConnectivityChanged:*(a1 + 32)];
}

void sub_10053CE08(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_connectivityChangedForDefaultDevice sending legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v4 = *(a1 + 32) ? @"YES" : @"NO";
    v7 = v4;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (*(a1 + 32))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v7 = v5;
      _IDSLogV();
    }
  }

  v6 = +[IDSUTunDeliveryController sharedInstance];
  [v6 legacyUTunBTLinkManagerDefaultPeerCloudConnectivityChanged:*(a1 + 32)];
}

void sub_10053D178(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 legacyUTunBTLinkManagerDefaultPeerNearbyChanged:*(*(a1 + 32) + 1395)];
}

id sub_10053F950(uint64_t a1)
{
  v2 = kIDSDefaultPairedDeviceID;
  result = [*(a1 + 32) _suspendBTLink:0 cbuuid:kIDSDefaultPairedDeviceID];
  if (*(*(a1 + 32) + 48) == 1)
  {
    ids_monotonic_time();
    *(*(a1 + 32) + 128) = v4;
    v5 = [*(a1 + 32) _newUDPLinkForDeviceUniqueID:0 cbuuid:v2 IPVersion:0 port:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v5 = [*(a1 + 32) _sendUDPLinkInterfaceAddresses:v5 toDeviceID:v2 isRetransmission:0 isReply:0];
      v6 = v7;
    }

    return _objc_release_x1(v5, v6);
  }

  return result;
}

void sub_10053FA10(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56) <= *(a1 + 40))
  {
    if (*(a1 + 44) == 1)
    {
      v7 = *(v2 + 48) == 1 && *(v2 + 1408) != 0;
      *(v2 + 52) = v7;
      ++*(*(a1 + 32) + 60);
      v8 = *(a1 + 32);
      v9 = *(v8 + 60);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100540118;
      v37[3] = &unk_100BD89B0;
      v37[4] = v8;
      v38 = v9;
      v10 = objc_retainBlock(v37);
      v11 = *(a1 + 32);
      if (*(v11 + 48) == 1)
      {
        if (*(v11 + 1392) == 1)
        {
          v12 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (&off_100CB1008)[*(*(a1 + 32) + 144)];
            *buf = 136315138;
            v40 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trying to bring up WiFi per preferInfraWiFi request: currentWiFiAutoJoinStatus = %s", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v25 = (&off_100CB1008)[*(*(a1 + 32) + 144)];
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v25 = (&off_100CB1008)[*(*(a1 + 32) + 144)];
                _IDSLogV();
              }
            }
          }
        }

        v11 = *(a1 + 32);
        if ((*(v11 + 120) & 1) == 0)
        {
          [*(a1 + 32) _createWiFiAssociationPowerAssertion:60.0];
          v11 = *(a1 + 32);
        }
      }

      if (*(v11 + 48) == 1 && *(v11 + 1392) == 1 && (*(v11 + 120) & 1) == 0 && *(v11 + 112))
      {
        objc_initWeak(&location, v11);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1005403DC;
        v34[3] = &unk_100BD9D38;
        objc_copyWeak(&v35, &location);
        v14 = [v34 copy];
        v15 = *(a1 + 32);
        v16 = *(v15 + 136);
        *(v15 + 136) = v14;

        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(*(a1 + 32) + 176);
          *buf = 134217984;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting AutoJoin tracking timer for %.1fs", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v25 = *(*(a1 + 32) + 176);
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v25 = *(*(a1 + 32) + 176);
              _IDSLogV();
            }
          }
        }

        ++*(*(a1 + 32) + 124);
        v19 = *(a1 + 32);
        v20 = *(v19 + 124);
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_10054053C;
        v31 = &unk_100BDFD70;
        v32 = v19;
        v33 = v20;
        IDSTransportThreadAddBlockAfter();
        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
      }

      else
      {
        v21 = dispatch_time(0, 60000000000);
        v22 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1005408A0;
        block[3] = &unk_100BD7270;
        v27 = v10;
        dispatch_after(v21, v22, block);
      }

      [*(a1 + 32) _bringUpWiFi:{1, v25}];
    }

    else
    {
      [v2 _bringUpWiFi:0];
    }

    if (*(a1 + 45) == 1)
    {
      v23 = kIDSDefaultPairedDeviceID;
      v24 = [*(a1 + 32) _newUDPLinkForDeviceUniqueID:0 cbuuid:kIDSDefaultPairedDeviceID IPVersion:0 port:0];
      if (v24)
      {
        [*(a1 + 32) _sendUDPLinkInterfaceAddresses:v24 toDeviceID:v23 isRetransmission:0 isReply:0];
      }
    }
  }

  else
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      v5 = *(a1 + 45);
      if (*(a1 + 44))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 138412802;
      if (v5)
      {
        v4 = @"YES";
      }

      v40 = v6;
      v41 = 2112;
      v42 = v4;
      v43 = 2048;
      v44 = 0x4024000000000000;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_startUDPLinkHandshakeForDefaultDevice ignoring stale scheduled handshake %@ %@ %.1f seconds ago", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

void sub_100540098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100540190(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[15] <= *(a1 + 40))
  {
    result = [v2 _clearWiFiAssociationPowerAssertion];
    if ((*(*(a1 + 32) + 52) & 1) == 0)
    {
      v5 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v8 = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WiFi was brought up %.1f seconds ago but still didn't get an IP - Bring it back down", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v6 = 0x404E000000000000;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v6 = 0x404E000000000000;
            _IDSLogV();
          }
        }
      }

      return [*(a1 + 32) _bringUpWiFi:{0, v6}];
    }
  }

  else
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = 0x404E000000000000;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiFi was brought up %.1f seconds ago but it was brought up again later - ignoring this one", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport();
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV();
        }
      }
    }
  }

  return result;
}

void sub_1005403DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WiFi failed to associate and connect - reject preferInfraWiFi request", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v3 = kIDSDefaultPairedDeviceID;
  [WeakRetained _suspendBTLink:0 cbuuid:kIDSDefaultPairedDeviceID];
  ids_monotonic_time();
  WeakRetained[16] = v4;
  v5 = [WeakRetained _newUDPLinkForDeviceUniqueID:0 cbuuid:v3 IPVersion:0 port:0];
  if (v5)
  {
    [WeakRetained _sendUDPLinkInterfaceAddresses:v5 toDeviceID:v3 isRetransmission:0 isReply:0];
  }
}

void sub_10054053C(uint64_t a1)
{
  if (*(*(a1 + 32) + 124) <= *(a1 + 40))
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 176);
      *buf = 134217984;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WiFi started associating %.1f seconds ago", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v6 = *(a1 + 32);
    if (*(v6 + 120) == 1 && *(v6 + 1396) == 1)
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi associated already and has connected", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    else if (*(v6 + 1392) == 1 && *(v6 + 136))
    {
      [v6 _clearWiFiAssociationPowerAssertion];
      (*(*(*(a1 + 32) + 136) + 16))(*(*(a1 + 32) + 136));
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 136);
    *(v8 + 136) = 0;
  }

  else
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 176);
      *buf = 134217984;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WiFI association started %.1f seconds ago but it was canceled already - ignoring this one", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

uint64_t sub_1005408B0(uint64_t a1)
{
  [*(a1 + 32) _clearWiFiAssociationPowerAssertion];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

NSString *__cdecl sub_100541FEC(id a1, NSString *a2, unsigned int a3, NSString *a4, int64_t a5, unsigned __int16 a6, unint64_t a7, unsigned __int16 a8, unsigned int a9, NSData *a10, BOOL a11, BOOL a12, int a13, int a14)
{
  v28 = a6;
  v15 = *&a3;
  v17 = a10;
  v18 = a4;
  v19 = a2;
  v20 = +[IDSQuickRelayAllocator sharedInstance];
  HIDWORD(v24) = a13;
  LODWORD(v25) = a14;
  LOWORD(v24) = __PAIR16__(a12, a11);
  HIDWORD(v23) = a9;
  LOWORD(v23) = a8;
  v21 = [v20 getAdditionalAllocationForAddress:v19 selfAddress:v15 relaySessionID:v18 allocateType:a5 qrReason:v28 previousTime:a7 previousError:v23 previousRelayIP:v17 previousAccessToken:v24 requestSelfAllocation:v25 isSessionIDRemoteDeviceID:? withPreferredRemoteInterface:? withPreferredLocalInterface:?];

  return v21;
}

void sub_1005420F4(id a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unint64_t a6, NSString *a7, NSString *a8, BOOL a9, NSString *a10)
{
  v13 = *&a5;
  v16 = *&a2;
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v21 = +[IDSQuickRelayAllocator sharedInstance];
  LOBYTE(v20) = a9;
  [v21 reportAWDAllocatorEvent:v16 relayProviderType:a3 transport:a4 localRAT:v13 duration:a6 idsSessionID:v19 reportingDataBlob:v18 isInitiator:v20 serverSoftwareVersion:v17];
}

void sub_1005421D0(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[IDSQuickRelayAllocator sharedInstance];
  [v6 startKeepAliveTimer:v5 relaySessionID:v4];
}

void sub_100542250(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[IDSQuickRelayAllocator sharedInstance];
  [v6 stopKeepAliveTimer:v5 relaySessionID:v4];
}

void sub_1005429E4(uint64_t a1)
{
  v2 = IMWeakLinkClass();
  v3 = [v2 sharedInstance];
  [v3 addWoWClient:*(a1 + 32)];

  v4 = [v2 sharedInstance];
  [v4 addWiFiAutoAssociationClientToken:@"IDSLinkManager_WiFi"];
}

void sub_100542A74(uint64_t a1)
{
  v2 = IMWeakLinkClass();
  v3 = [v2 sharedInstance];
  [v3 removeWoWClient:*(a1 + 32)];

  v4 = [v2 sharedInstance];
  [v4 removeWiFiAutoAssociationClientToken:@"IDSLinkManager_WiFi"];
}

void sub_100542DFC(id a1, id a2, id a3, BOOL *a4)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 invalidate];
  }
}

void sub_1005433D4(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = a2;
  v4 = v7;
  v5 = v6;
  IDSTransportThreadAddBlock();
}

void sub_10054505C(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "enableConnectionForDefaultPairedDevice YES for cbuuid %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v5 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v4 = +[IDSUTunDeliveryController sharedInstance];
  [v4 enableConnectionForDefaultPairedDevice:1];
}

void sub_10054565C(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "enableConnectionForDefaultPairedDevice NO for cbuuid %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v5 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v5 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v4 = +[IDSUTunDeliveryController sharedInstance];
  [v4 enableConnectionForDefaultPairedDevice:0];
}

void sub_100547A20(int8x16_t *a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "start allocate request for %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = a1[2].i64[0];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = a1[2].i64[0];
        _IDSLogV();
      }
    }
  }

  v4 = +[IDSQuickRelayAllocator sharedInstance];
  v5 = [v4 setupNewAllocationToDevice:a1[2].i64[0] options:0 connectReadyHandler:0];

  if (v5)
  {
    v6 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100547DFC;
    v12[3] = &unk_100BD89D8;
    v10 = a1[2];
    v7 = v10.i64[0];
    v13 = vextq_s8(v10, v10, 8uLL);
    v14 = v5;
    IDSTransportThreadAddBlock();
  }

  else
  {
    v6 = v15;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100547C88;
    v15[3] = &unk_100BD9AA8;
    v11 = a1[2];
    v8 = v11.i64[0];
    v16 = vextq_s8(v11, v11, 8uLL);
    IDSTransportThreadAddBlock();
  }
}

uint64_t sub_100547C88(uint64_t a1)
{
  Value = *(*(a1 + 32) + 88);
  if (Value)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      Value = CFDictionaryGetValue(Value, v3);
    }

    else
    {
      Value = 0;
    }
  }

  if ([(__CFDictionary *)Value BOOLValue])
  {
    CFDictionarySetValue(*(*(a1 + 32) + 88), *(a1 + 40), &__kCFBooleanFalse);
  }

  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "allocate request failed for %@.", buf, 0xCu);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport();
      result = _IDSShouldLog();
      if (result)
      {
        return _IDSLogV();
      }
    }
  }

  return result;
}

void sub_100549F3C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1376));
        [WeakRetained link:*(a1 + 48) didConnectForDeviceUniqueID:0 cbuuid:{v7, v9}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10054A414(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 defaultPeerMagnetIndicationOfAwakeStateChanged:*(a1 + 32)];
}

void sub_10054AE10(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 peerCloudConnectivityChanged:*(a1 + 32) isCloudConnected:1];
}

void sub_10054B090(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 peerCloudConnectivityChanged:*(a1 + 32) isCloudConnected:0];
}

void sub_10054B400(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 peerCloudConnectivityChanged:*(a1 + 32) isCloudConnected:0];
}

void sub_10054D59C(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = @"IDSLinkBTLEKey";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    *(*(a1 + 40) + 1394) = 0;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10054D75C;
    v15 = &unk_100BD8A20;
    v16 = *(a1 + 40);
    IDSTransportThreadAddBlockAfter();
    v2 = @"IDSLinkBTKey";
  }

  v3 = [*(*(a1 + 40) + 8) allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) _removeLinkForDeviceID:*(*(&v8 + 1) + 8 * v7) linkKey:v2 verifyWithLink:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
    }

    while (v5);
  }
}

id sub_10054D75C(uint64_t a1)
{
  result = [*(a1 + 32) _nearbyChangedForDefaultDevice];
  v3 = *(a1 + 32);
  if (*(v3 + 1400) == 1)
  {
    *(v3 + 1400) = 0;
    v4 = *(a1 + 32);
    v5 = v4[1397];

    return [v4 _connectivityChangedForDefaultDevice:0 isCloudConnected:v5];
  }

  return result;
}

void sub_10054D850(uint64_t a1)
{
  v2 = [*(a1 + 32) cbuuid];
  v3 = *(*(a1 + 40) + 8);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  key = v2;
  if (v4)
  {
    Value = 0;
  }

  else
  {
    Value = CFDictionaryGetValue(v3, v2);
  }

  v6 = Value;
  v7 = [*(a1 + 40) _linkKeyForLink:*(a1 + 32)];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = CFDictionaryGetValue(v6, v7);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      [v10 invalidate];
    }

    if (v8)
    {
      CFDictionaryRemoveValue(v6, v8);
    }
  }

  else
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    if (v6)
    {
      CFDictionarySetValue(*(*(a1 + 40) + 8), key, v6);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFDictionarySetValue(v6, v8, v11);
  }

  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if ([v8 isEqualToString:@"IDSLinkBTKey"])
  {
    if ([key isEqualToString:kIDSDefaultPairedDeviceID])
    {
      *(*(a1 + 40) + 1394) = 1;
      [*(a1 + 40) _nearbyChangedForDefaultDevice];
      v12 = *(a1 + 40);
      if (v12[1392] == 1)
      {
        [v12 _suspendBTLink:1 cbuuid:key];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) start];
  }
}

void sub_10054DA88(uint64_t a1)
{
  v2 = [*(a1 + 32) cbuuid];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 40);
  if (isKindOfClass)
  {
    [v4 stopLinkForDeviceUniqueID:0 cbuuid:v2 disconnectWP:0];
  }

  else
  {
    v5 = [v4 _linkKeyForLink:*(a1 + 32)];
    if ([v5 isEqualToString:@"IDSLinkBTKey"] && objc_msgSend(v2, "isEqualToString:", kIDSDefaultPairedDeviceID))
    {
      *(*(a1 + 40) + 1394) = 0;
      IDSTransportThreadAddBlockAfter();
    }

    [*(a1 + 40) _removeLinkForDeviceID:v2 linkKey:v5 verifyWithLink:*(a1 + 32)];
  }
}

id sub_10054DBB4(uint64_t a1)
{
  result = [*(a1 + 32) _nearbyChangedForDefaultDevice];
  v3 = *(a1 + 32);
  if (*(v3 + 1400) == 1)
  {
    *(v3 + 1400) = 0;
    v4 = *(a1 + 32);
    v5 = v4[1397];

    return [v4 _connectivityChangedForDefaultDevice:0 isCloudConnected:v5];
  }

  return result;
}

void sub_10054DDC4(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1 + 40) + 1394) = 0;
    [*(a1 + 40) _nearbyChangedForDefaultDevice];
    *(*(a1 + 40) + 1400) = 0;
    [*(a1 + 40) _connectivityChangedForDefaultDevice:0 isCloudConnected:*(*(a1 + 40) + 1397)];
    v2 = [*(*(a1 + 40) + 8) allKeys];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(a1 + 40) _removeLinkForDeviceID:*(*(&v8 + 1) + 8 * v6) linkKey:@"IDSLinkBTKey" verifyWithLink:0];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    v7 = im_primary_queue();
    dispatch_async(v7, &stru_100BDFF00);

    *(*(a1 + 40) + 1392) = 0;
    [*(a1 + 40) _bringUpWiFi:0];
  }
}

void sub_10054DF50(id a1)
{
  v1 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "enableConnectionForDefaultPairedDevice NO for currently paired device.", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 enableConnectionForDefaultPairedDevice:0];
}

id sub_10054F27C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _getIDSLinkTypeFromWRMLinkType:*(a1 + 40)];

  return [v1 _handleWRMLinkRecommendation:v2];
}

void sub_10054F858(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = *(*(a1 + 32) + 8);
        if (v9)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v12 = CFDictionaryGetValue(v9, v8);
          v11 = v12;
          if (v12)
          {
            v13 = CFDictionaryGetValue(v12, @"IDSLinkGlobalKey");

            if (v13)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [v13 alternateDelegate];
                v15 = v14;
                if (v14)
                {
                  [v14 link:*(a1 + 32) didSoMaskChange:*(a1 + 40)];
                }
              }

              v5 = v13;
            }

            else
            {
              v5 = 0;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }
}

void sub_10054FB0C(id a1)
{
  qword_100CBEF30 = *IMWeakLinkSymbol();
  qword_100CBEF38 = *IMWeakLinkSymbol();
  qword_100CBEF40 = *IMWeakLinkSymbol();
  qword_100CBEF48 = *IMWeakLinkSymbol();
  qword_100CBEF50 = *IMWeakLinkSymbol();
  qword_100CBEF58 = *IMWeakLinkSymbol();
  qword_100CBEF60 = *IMWeakLinkSymbol();
  qword_100CBEF68 = *IMWeakLinkSymbol();
  qword_100CBEF70 = *IMWeakLinkSymbol();
  qword_100CBEF78 = *IMWeakLinkSymbol();
  qword_100CBEF80 = *IMWeakLinkSymbol();
  qword_100CBEF88 = *IMWeakLinkSymbol();
}

void sub_10054FD10(id a1)
{
  v1 = objc_alloc_init(IDSRapportClient);
  v2 = qword_100CBEFB0;
  qword_100CBEFB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100550284(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 168));
  _Unwind_Resume(a1);
}

void sub_10055031C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDiscoveredDevice:v3];
}

void sub_100550378(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLostDevice:v3];
}

id sub_1005503D4()
{
  if (qword_100CBEFB8 != -1)
  {
    sub_1009290D4();
  }

  v1 = qword_100CBEFC0;

  return v1;
}

void sub_100550418(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Incoming Rapport message", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingIDSMessageEvent:v6 options:v5];
}

void sub_1005504D0(id a1)
{
  v1 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1009290E8(v1);
  }
}

void sub_10055051C(id a1)
{
  v1 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10092912C(v1);
  }
}

void sub_100550568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100929170(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activated companionLinkClient {self: %@}", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100550660(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 publicIdentifier];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updated local device {device: %@, publicIdentifier: %@}", &v7, 0x16u);
  }

  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_100550760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Start companionLinkClient setup", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100550864;
  block[3] = &unk_100BD7270;
  v9 = v3;
  v7 = v3;
  dispatch_group_notify(v5, v6, block);
}

void sub_100550BF4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[IDSFoundationLog delivery];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1009291E8(v9, a1, v11);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138478083;
      v22 = v12;
      v23 = 2113;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found companionLinkClient {deviceIdentifier: %{private}@, client: %{private}@}", buf, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = sub_1005503D4();
    v19 = v14;
    v20 = &__kCFBooleanTrue;
    v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100550E08;
    v16[3] = &unk_100BDA9A0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    [v7 sendEventID:@"ids-message" event:v13 destinationID:v8 options:v15 completion:v16];
  }
}

void sub_100550E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Finished sending message {deviceIdentifier: %@, error: %@}", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100551064(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [CUTResult alloc];
  if (v6)
  {
    v4 = [v3 initWithError:v6];
  }

  else
  {
    v4 = [v3 initWithSuccess:*(a1 + 32)];
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_1005513C0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) idsDeviceIdentifier];
    [v5 rapportClient:v3 didDiscoverDevice:v4];
  }
}

void sub_1005515BC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) idsDeviceIdentifier];
    [v5 rapportClient:v3 didLoseDevice:v4];
  }
}

void sub_100551864(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportClient:a1[4] didReceiveMessage:a1[5] fromID:a1[6]];
  }
}

void sub_1005519A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) companionLinkClient];
  (*(v2 + 16))(v2, v3, *(a1 + 40), 0);
}

void sub_100551CE8(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_100CBEFC0, v2);
}

void sub_100551D38(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_100CBEFD0, v2);
}

BOOL sub_100552F0C(uint64_t a1, void *a2)
{
  v3 = [a2 context];
  v4 = [v3 dataProtectionClass] == *(a1 + 32);

  return v4;
}

BOOL sub_100552FE4(uint64_t a1, void *a2)
{
  v3 = [a2 context];
  v4 = [v3 messageType] == *(a1 + 32);

  return v4;
}

void sub_100554C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned int a9, void *a10)
{
  v16 = a2;
  v17 = a8;
  v18 = a10;
  v19 = +[IDSDaemonPriorityQueueController sharedInstance];
  [v19 assertRunningWithPriority:*(*(a1 + 32) + 192)];

  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    *buf = 138412802;
    v59 = v21;
    v60 = 1024;
    *v61 = a6;
    *&v61[4] = 2112;
    *&v61[6] = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ IDS internal openSocketWithOptions call returned socket %d, error %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v51 = a6;
      v53 = v18;
      v49 = *(a1 + 32);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v51 = a6;
        v53 = v18;
        v49 = *(a1 + 32);
        _IDSLogV();
      }
    }
  }

  v22 = *(a1 + 32);
  if (*(v22 + 329))
  {
    v23 = v17 == 0;
  }

  else
  {
    v23 = a6 == -1;
  }

  if (v23)
  {
    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138412290;
      v59 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@ Failed to open UTun connection, waiting...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v49 = *(a1 + 32);
      _IDSLogV();
    }

    v27 = *(a1 + 32);
    v26 = a1 + 32;
    [v27 _nonThreadSafeStopConnection];
    v28 = dispatch_time(0, 500000000);
    v29 = +[IDSDaemonPriorityQueueController sharedInstance];
    v30 = [v29 queueForPriority:*(*v26 + 192)];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100555320;
    block[3] = &unk_100BD6ED0;
    block[4] = *v26;
    dispatch_after(v28, v30, block);
  }

  else
  {
    if (*(v22 + 80))
    {
      [*(v22 + 80) endSession];
      v31 = *(a1 + 32);
      v32 = *(v31 + 80);
      *(v31 + 80) = 0;

      v22 = *(a1 + 32);
    }

    [v22 _clearLastFallbackWithReason:{@"new local link established", v49, v51, v53}];
    v33 = *(a1 + 32);
    if (v33[329] == 1 && v33[330] == 1)
    {
      [v33 _startNWConnectionForIPsecCase:v16 capabilityFlags:a3 instanceID:a4 serviceMinCompatibilityVersion:a5 serviceConnection:v17 trafficClass:a9];
    }

    else
    {
      [v33 _startAndSetupSocketPairConnection:v16 capabilityFlags:a3 instanceID:a4 serviceMinCompatibilityVersion:a5 socketDescriptor:a6];
    }

    *(*(a1 + 32) + 226) = 1;
    v34 = [[IDSSocketPairHandshake alloc] initWithVersionNumber:4];
    v35 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 32);
      v37 = *(v36 + 80);
      *buf = 138413058;
      v59 = v36;
      v60 = 2112;
      *v61 = v37;
      *&v61[8] = 1024;
      *&v61[10] = a6;
      v62 = 1024;
      v63 = 4;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ created %@ for socket %d - sending handshake with version %u", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v54 = a6;
        v55 = 4;
        v50 = *(a1 + 32);
        v52 = *(v50 + 80);
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v54 = a6;
          v55 = 4;
          v50 = *(a1 + 32);
          v52 = *(v50 + 80);
          _IDSLogV();
        }
      }
    }

    [*(a1 + 32) _sendSocketMessage:{v34, v50, v52, v54, v55}];
    v38 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 32);
      v40 = [*(v39 + 16) count];
      *buf = 138412546;
      v59 = v39;
      v60 = 2048;
      *v61 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@ resending %lu pending socketpair messages", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [*(*(a1 + 32) + 16) count];
      _IDSLogV();
    }

    v41 = *(a1 + 32);
    if (*(v41 + 256) == 1)
    {
      v42 = *(v41 + 248);
      *(v41 + 248) = 0;

      v43 = (*(a1 + 32) + 240);
    }

    else
    {
      v43 = (v41 + 232);
    }

    v44 = *v43;
    *v43 = 0;

    v46 = *(a1 + 32);
    v45 = (a1 + 32);
    v47 = *(v46 + 16);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100555328;
    v56[3] = &unk_100BE0238;
    v56[4] = v46;
    [v47 enumerateObjectsWithOptions:2 usingBlock:v56];
    v48 = *(*v45 + 2);
    *(*v45 + 2) = 0;

    [*v45 _dequeueMessages];
    [*v45 _connectivityChanged];
  }
}

void sub_100555328(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if ((*(*(a1 + 32) + 256) & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = v6;
    if (isKindOfClass)
    {
      [v6 reset];
      v3 = v6;
    }
  }

  v5 = [v3 context];
  if (v5)
  {
    [*(*(a1 + 32) + 136) pushMessage:v5];
    [*(a1 + 32) _removeMessageFromStatistics:v5];
  }
}

void sub_100556B1C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, os_activity_scope_state_s state, char a35)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1005567F8);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(exc_buf);
}

void sub_1005571F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained connectionHasSpaceForMessages:*(a1 + 32) dataProtectionClass:*(a1 + 40)];
}

void sub_100558650(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 16) count];
    v5 = [*(*(a1 + 32) + 136) count];
    *buf = 138412802;
    v43 = v3;
    v44 = 2048;
    v45 = v4;
    v46 = 2048;
    v47 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ timeout timer fired, sending queue: %lu %lu", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = *(a1 + 32);
    v30 = [*(v6 + 16) count];
    v31 = [*(*(a1 + 32) + 136) count];
    v29 = v6;
    _IDSLogV();
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [*(*(a1 + 32) + 16) _copyForEnumerating];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [v13 context];
        v15 = [v14 expirationDate];
        [v15 timeIntervalSinceNow];
        v17 = v16 < 0.0;

        if (v17)
        {
          v18 = [v13 context];
          [*(a1 + 32) _messageTimedOut:v13 localMessage:v18];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v19 = [*(*(a1 + 32) + 136) messages];
  v20 = [v19 _copyForEnumerating];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v26 = [v25 expirationDate];
        [v26 timeIntervalSinceNow];
        v28 = v27 < 0.0;

        if (v28)
        {
          [*(a1 + 32) _messageTimedOut:0 localMessage:v25];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  [*(a1 + 32) _resetTimeout:0];
  objc_autoreleasePoolPop(v7);
}

void sub_100558998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *(v9 - 144) = 138412290;
      *(v9 - 140) = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Exception caught handling timeout timer: %@", (v9 - 144), 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    objc_end_catch();
    JUMPOUT(0x100558948);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055947C(uint64_t a1)
{
  v2 = +[IDSDevicePolicyController sharedInstance];
  v3 = [v2 shouldBlackOutDeviceWithCbuuid:*(a1 + 32)];

  v4 = [IDSDeliveryContext alloc];
  v5 = *(a1 + 72);
  v6 = *(a1 + 40);
  v7 = [NSNumber numberWithDouble:*(a1 + 80)];
  v8 = [NSNumber numberWithBool:v3];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) messageState]);
  v14 = [v4 initWithResponseCode:v5 deviceID:v6 currentAverageRTT:v7 isDeviceBlackedOut:v8 localMessageState:v9];

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = [v10 domain];
    [v14 setWpConnectionErrorDomain:v11];

    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 56) code]);
    [v14 setWpConnectionErrorCode:v12];

    v13 = [*(a1 + 56) userInfo];
    [v14 setWpConnectionErrorUserInfo:v13];
  }

  (*(*(a1 + 64) + 16))();
}

void sub_100559B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100559B3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 topic];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
    v8 = [v9 resourcePath];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_10055A480(uint64_t a1)
{
  v1 = [*(a1 + 32) _UTunDeliveryController];
  [v1 defaultPeerSetWantsQuickRelayRequest:1];
}

uint64_t sub_10055A4C8(uint64_t a1, void *a2)
{
  v3 = [a2 topic];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

id sub_10055BB74(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dequeue Message Timer did Fire -- Dequeueing messages", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  [*(a1 + 32) _dequeueMessages];
  return [*(a1 + 32) _invalidateMessagesDequeueTimer];
}

void sub_10055C144(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 context];
  v6 = [v5 topic];
  v7 = +[IDSDServiceController sharedInstance];
  v8 = [v7 serviceWithPushTopic:v6];
  v9 = [v8 dataProtectionClass];

  if (v9 == *(a1 + 48))
  {
    [*(a1 + 32) _requeueSendingMessage:v10];
    [*(a1 + 40) addIndex:a3];
  }
}

void sub_10055C21C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 context];
  v6 = [v5 topic];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ([v6 isEqualToString:*(a1 + 32)] && *(a1 + 56) == (isKindOfClass & 1))
  {
    [*(a1 + 40) _requeueSendingMessage:v8];
    [*(a1 + 48) addIndex:a3];
  }
}

void sub_10055CCAC(uint64_t a1)
{
  v2 = +[IDSOTRKeyStorage sharedInstance];
  [v2 lock];

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKey:@"__kIDSOTRKeyStorageClassKey"];

  if ([v4 length])
  {
    v5 = [*(*(a1 + 40) + 72) objectForKey:v4];
    v6 = [v5 _copyForEnumerating];

    [*(*(a1 + 40) + 72) removeObjectForKey:v4];
    if ([v6 count])
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = v4;
        v31 = 2048;
        v32 = [v6 count];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Class %@ storage keys are available, processing %lu pending messages", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v20 = v4;
          v23 = [v6 count];
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v8 = [v6 count];
            v20 = v4;
            v23 = v8;
            _IDSLogV();
          }
        }
      }
    }

    v9 = [IDSOTRKeyStorage sharedInstance:v20];
    [v9 unlock];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v14 command];
          if (v15 == 24)
          {
            [*(*(a1 + 40) + 80) processStoredIncomingMessage:v14];
          }

          else if (v15 == 23)
          {
            [*(a1 + 40) _processIncomingDataMessage:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) userInfo];
      *buf = 138412290;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "UTunConnection - No class storage key specified in notification %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v19 = *(a1 + 32);
      v18 = (a1 + 32);
      v21 = [v19 userInfo];
      _IDSWarnV();

      v22 = [*v18 userInfo];
      _IDSLogV();

      v20 = [*v18 userInfo];
      _IDSLogTransport();
    }

    v10 = +[IDSOTRKeyStorage sharedInstance];
    [v10 unlock];
  }
}

void sub_10055D09C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10055CFA8);
  }

  _Unwind_Resume(a1);
}

void sub_10055DAD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = +[IDSDaemonPriorityQueueController sharedInstance];
  v10 = [v9 queueForPriority:*(*(a1 + 32) + 192)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10055DBF8;
  block[3] = &unk_100BD9FC0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v8;
  v17 = v11;
  v18 = v12;
  v19 = v7;
  v20 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  dispatch_async(v10, block);
}

uint64_t sub_10055DBF8(void **a1)
{
  v2 = sub_1005C2330(a1[4]);
  if (v2)
  {
    v3 = v2;
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to encrypt UTunConnection message! Error %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1[5] + 26);
      v7 = [a1[6] length];
      v8 = [a1[7] length];
      *buf = 138412802;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Encrypted message for device unique ID %@  original size: %lu  encrypted size: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = *(a1[5] + 26);
        v15 = [a1[6] length];
        v16 = [a1[7] length];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          [a1[6] length];
          [a1[7] length];
          _IDSLogV();
        }
      }
    }

    if (a1[7])
    {
      v10 = [[IDSSocketPairEncryptedMessage alloc] initWithData:a1[7]];
      v11 = [a1[8] topic];
      [v10 setTopic:v11];

      v12 = [a1[8] context];
      [v10 setContext:v12];

      [*(a1[5] + 10) sendDataMessage:v10 canFragment:{objc_msgSend(a1[5], "_isMagnetConnection")}];
    }
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Send public key encrypted message.", buf, 2u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog();
    if (result)
    {
      return _IDSLogV();
    }
  }

  return result;
}

void sub_10055E570(uint64_t a1, int a2)
{
  v4 = +[IDSDaemonPriorityQueueController sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10055E630;
  v6[3] = &unk_100BD9B68;
  v8 = a2;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 performBlockWithPriority:v6 priority:*(*(a1 + 32) + 192)];
}

void sub_10055E630(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [v3 context];
    [v2 _removeSocketPairMessage:v3 localMessage:v4 reason:@"Data protection class unavailable" responseCode:18];
  }
}

void sub_100560308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v9 = a6;
  v10 = +[IDSDaemonPriorityQueueController sharedInstance];
  v11 = [v10 queueForPriority:*(*(a1 + 32) + 192)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100560428;
  block[3] = &unk_100BDA848;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v9;
  v18 = v12;
  v19 = v13;
  v20 = v8;
  v21 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  dispatch_async(v11, block);
}

void sub_100560428(uint64_t a1)
{
  v2 = sub_1005C23F8(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to decrypt UTunConnection message! Error %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64));
  }

  else
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 40) + 208);
      v7 = [*(a1 + 48) length];
      v8 = [*(a1 + 56) length];
      *buf = 138412802;
      v23 = v6;
      v24 = 2048;
      v25 = v7;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Decrypted message for device unique ID %@  original size: %lu  unencrypted size: %lu", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = *(*(a1 + 40) + 208);
      v19 = [*(a1 + 48) length];
      v21 = [*(a1 + 56) length];
      v17 = v9;
      _IDSLogV();
    }

    v10 = [*(a1 + 40) _UTunDeliveryController];
    v11 = [v10 lockedContinuityPeerID:*(*(a1 + 40) + 200)];

    if (!v11)
    {
      v12 = *(a1 + 40);
      if (*(v12 + 208))
      {
        if (*(v12 + 200))
        {
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(*(a1 + 40) + 200);
            v15 = *(*(a1 + 40) + 208);
            *buf = 138412546;
            v23 = v15;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Decrypted continuity message, lock peer %@ for btUUID %@.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v18 = *(*(a1 + 40) + 208);
            v20 = *(*(a1 + 40) + 200);
            _IDSLogV();
          }

          v16 = [*(a1 + 40) _UTunDeliveryController];
          [v16 lockContinuityPeer:*(*(a1 + 40) + 208) btUUID:*(*(a1 + 40) + 200)];
        }
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100561120(uint64_t a1)
{
  v2 = +[IDSDevicePolicyController sharedInstance];
  v3 = [v2 shouldBlackOutDeviceWithCbuuid:*(a1 + 32)];

  v4 = [IDSDeliveryContext alloc];
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = [NSNumber numberWithDouble:*(a1 + 72)];
  v8 = [NSNumber numberWithBool:v3];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) messageState]);
  v10 = [v4 initWithResponseCode:v5 deviceID:v6 currentAverageRTT:v7 isDeviceBlackedOut:v8 localMessageState:v9];

  (*(*(a1 + 56) + 16))();
}

void sub_10056123C(uint64_t a1)
{
  v2 = [IDSDeliveryContext alloc];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithDouble:*(a1 + 72)];
  v6 = +[IDSDevicePolicyController sharedInstance];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 shouldBlackOutDeviceWithCbuuid:*(a1 + 40)]);
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) messageState]);
  v9 = [v2 initWithResponseCode:v3 deviceID:v4 currentAverageRTT:v5 isDeviceBlackedOut:v7 localMessageState:v8];

  (*(*(a1 + 56) + 16))();
}

void sub_100561638(uint64_t a1, uint64_t a2)
{
  v4 = [[IDSSocketPairExpiredAckMessage alloc] initWithSequenceNumber:a2];
  [*(a1 + 32) setEnabled:1];
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = v4;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending Expired ack %@ for received sequence number %d", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = v4;
      v7 = a2;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v6 = v4;
        v7 = a2;
        _IDSLogV();
      }
    }
  }

  [*(a1 + 32) _sendSocketMessage:v4 ignoreSequenceNumber:{1, v6, v7}];
}

void sub_100563814(void *a1)
{
  v2 = [*(a1[4] + 232) objectForKey:a1[5]];
  if (v2)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v5 = a1[6];
      *buf = 138412546;
      v9 = v4;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Aborting resource transfer receiver for %@ after %lf seconds", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v7 = a1[6];
        v6 = a1[5];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v7 = a1[6];
          v6 = a1[5];
          _IDSLogV();
        }
      }
    }

    [v2 abortTransfer];
    [*(a1[4] + 232) removeObjectForKey:a1[5]];
  }
}

void sub_1005639A0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 context];
    v10 = [v9 messageUUID];
    if (v10)
    {
      v11 = [v9 messageUUID];
      v12 = [v11 isEqualToString:*(a1 + 32)];

      if (v12)
      {
        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = [*(a1 + 40) byteOffset];
          *buf = 138412802;
          v23 = v14;
          v24 = 2048;
          v25 = v15;
          v26 = 2048;
          v27 = [v8 nextByte];
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSSocketPairCommandResourceTransferMessage got resume message for %@ @ %llu (was sending %llu)", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v16 = *(a1 + 32);
            v20 = [*(a1 + 40) byteOffset];
            v21 = [v8 nextByte];
            v19 = v16;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v17 = *(a1 + 32);
              v20 = [*(a1 + 40) byteOffset];
              v21 = [v8 nextByte];
              v19 = v17;
              _IDSLogV();
            }
          }
        }

        v18 = [*(a1 + 40) byteOffset];
        if (v18)
        {
          [v8 setNextByte:v18];
        }

        else
        {
          [*(*(a1 + 48) + 136) pushMessage:v9];
          [v8 reset];
          *(*(*(a1 + 56) + 8) + 24) = a3;
        }

        *a4 = 1;
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }
  }
}

void sub_100563C20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v9 = [*(*(*(a1 + 48) + 8) + 40) context];
    v10 = [v9 messageUUID];
    if (v10)
    {
      v11 = [v9 messageUUID];
      v12 = [v11 isEqualToString:*(a1 + 32)];

      if (v12)
      {
        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = *(a1 + 64);
          *buf = 138412546;
          v19 = v14;
          v20 = 1024;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Got cancel message for %@ cancelReason %u", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v16 = *(a1 + 32);
            v17 = *(a1 + 64);
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v16 = *(a1 + 32);
              v17 = *(a1 + 64);
              _IDSLogV();
            }
          }
        }

        [*(*(a1 + 40) + 136) dequeueMessage:{v9, v16, v17}];
        *a4 = 1;
        *(*(*(a1 + 56) + 8) + 24) = a3;
      }
    }
  }
}

void sub_100563E4C(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [v16 messageUUID];
  if (v7)
  {
    v8 = v7;
    v9 = [v16 messageUUID];
    v10 = [v9 isEqualToString:a1[4]];

    if (v10)
    {
      *a4 = 1;
      *(*(a1[5] + 8) + 24) = a3;
      v11 = [v16 command];
      v12 = [v11 integerValue];

      if (v12 == 22)
      {
        v13 = [v16 socketPairMessage];
        v14 = *(a1[6] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }
    }
  }
}

void sub_100563F38(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [IDSDeliveryContext alloc];
  v4 = [*(a1 + 32) toDeviceID];
  v5 = [NSNumber numberWithDouble:*(a1 + 48)];
  v6 = [NSNumber numberWithBool:*(a1 + 57)];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) messageState]);
  if (v2 == 4)
  {
    v8 = 16;
  }

  else
  {
    v8 = 2 * (v2 != 6);
  }

  v9 = [v3 initWithResponseCode:v8 deviceID:v4 currentAverageRTT:v5 isDeviceBlackedOut:v6 localMessageState:v7];

  (*(*(a1 + 40) + 16))();
}

void sub_100564054(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v6 = *(a1 + 32);
    v7 = JWEncodeDictionary();
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(*(a1 + 32) + 200);
    v11 = [NSNumber numberWithUnsignedInt:a2];
    BYTE1(v13) = *(a1 + 82);
    LOBYTE(v13) = 0;
    LOWORD(v12) = *(a1 + 80);
    [v14 connection:v6 messageReceived:v7 topic:v8 command:v9 fromID:v10 messageID:v11 wantsAppAck:v12 expectsPeerResponse:*(a1 + 64) peerResponseIdentifier:*(a1 + 72) messageUUID:v13 isCompressed:? didWakeHint:?];
  }
}

void sub_100564364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [IDSSocketPairMessage messageWithData:v3];

    v4 = v5;
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = [v4 command];
    v9 = *(a1 + 40);
    if (v4 == *(a1 + 32))
    {
      v10 = @"NO";
    }

    else
    {
      v10 = @"YES";
    }

    *buf = 138413314;
    v20 = v4;
    v21 = 2112;
    v22 = v7;
    v23 = 1024;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Got incoming data message {dataMessage: %@, rawMessage: %@, command %d, self: %@, didDecrypt: %@}", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = *(a1 + 32);
    v12 = [v4 command];
    if (v4 == *(a1 + 32))
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    v17 = *(a1 + 40);
    v18 = v13;
    v15 = v11;
    v16 = v12;
    v14 = v4;
    _IDSLogV();
  }

  [*(a1 + 40) _processDecryptedMessage:{v4, v14, v15, v16, v17, v18}];
}

void sub_1005670F0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x100564F18);
  }

  _Unwind_Resume(a1);
}

void sub_100567424(uint64_t a1, uint64_t a2)
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v33 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Broadcast: incoming message sequence number %u \n", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v24 = a2;
    _IDSLogTransport();
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) compressed] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v31 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) _FTOptionallyDecompressData];
    v31 = 1;
  }

  [*(a1 + 48) _addIncomingMessageSize:objc_msgSend(v5 forTopic:{"length", v24), *(a1 + 56)}];
  v6 = [[IDSLocalDeliveryMessageReceivedMetric alloc] initWithService:*(a1 + 56) isFromDefaultPairedDevice:*(a1 + 90) & 1 messageSize:objc_msgSend(v5 linkType:"length") priority:{objc_msgSend(*(a1 + 48), "_currentLink"), *(*(a1 + 48) + 192)}];
  v7 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v7 logMetric:v6];

  v8 = +[IDSAWDLogging sharedInstance];
  [v8 messageReceivedForService:*(a1 + 56) isFromDefaultPairedDevice:*(a1 + 90) & 1 messageSize:objc_msgSend(v5 linkType:"length") priority:{objc_msgSend(*(a1 + 48), "_currentLink"), *(*(a1 + 48) + 192)}];

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 40) length];
    v11 = *(a1 + 88);
    v12 = @"NO";
    *buf = 67109890;
    if (v31)
    {
      v12 = @"YES";
    }

    v33 = v10;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    v37 = a2;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "* Receiving local message payload of size: %d for streamID: %d  messageSequenceNumber %d  compressed %@", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v13 = [*(a1 + 40) length];
    v14 = @"NO";
    if (v31)
    {
      v14 = @"YES";
    }

    v28 = a2;
    v29 = v14;
    v25 = v13;
    v27 = *(a1 + 88);
    _IDSLogV();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained((*(a1 + 48) + 8));
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    if (*(a1 + 90))
    {
      v21 = &kIDSDefaultPairedDeviceID;
    }

    else
    {
      v21 = (v18 + 200);
    }

    v22 = *v21;
    v23 = [NSNumber numberWithUnsignedInt:a2, v25, v27, v28, v29];
    BYTE1(v30) = *(a1 + 93);
    LOBYTE(v30) = v31;
    LOWORD(v26) = *(a1 + 91);
    [v17 connection:v18 messageReceived:v5 topic:v19 command:v20 fromID:v22 messageID:v23 wantsAppAck:v26 expectsPeerResponse:*(a1 + 72) peerResponseIdentifier:*(a1 + 80) messageUUID:v30 isCompressed:? didWakeHint:?];
  }
}

void sub_100567864(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v46) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Broadcast: incoming protobuf sequence number %u \n", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v38 = a2;
    _IDSLogTransport();
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) compressed];
  }

  else
  {
    v4 = 1;
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 88);
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    *buf = 138412802;
    v46 = v6;
    v47 = 1024;
    LODWORD(v48[0]) = v7;
    WORD2(v48[0]) = 2112;
    *(v48 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "* Receiving local protobuf %@ for streamID %d  compressed %@", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v40 = *(a1 + 88);
    v41 = v9;
    v38 = *(a1 + 40);
    _IDSLogV();
  }

  if (v4)
  {
    v10 = [*(a1 + 40) data];
    v11 = [v10 _FTOptionallyDecompressData];

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) data];
      v14 = [v13 length];
      v15 = [v11 length];
      *buf = 134218240;
      v46 = v14;
      v47 = 2048;
      v48[0] = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decompressed local protobuf message data from: %lu  to: %lu", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v16 = [*(a1 + 40) data];
      v38 = [v16 length];
      v40 = [v11 length];
      _IDSLogV();
    }

    [*(a1 + 40) setData:{v11, v38, v40, v41}];
  }

  v17 = *(a1 + 48);
  v18 = [*(a1 + 40) data];
  [v17 _addIncomingMessageSize:objc_msgSend(v18 forTopic:{"length"), *(a1 + 56)}];

  v19 = [IDSLocalDeliveryMessageReceivedMetric alloc];
  v20 = *(a1 + 56);
  v21 = *(a1 + 90);
  v22 = [*(a1 + 40) data];
  v23 = [v19 initWithService:v20 isFromDefaultPairedDevice:v21 & 1 messageSize:objc_msgSend(v22 linkType:"length") priority:{objc_msgSend(*(a1 + 48), "_currentLink"), *(*(a1 + 48) + 192)}];

  v24 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v24 logMetric:v23];

  v25 = +[IDSAWDLogging sharedInstance];
  v26 = *(a1 + 56);
  v27 = *(a1 + 90);
  v28 = [*(a1 + 40) data];
  [v25 messageReceivedForService:v26 isFromDefaultPairedDevice:v27 & 1 messageSize:objc_msgSend(v28 linkType:"length") priority:{objc_msgSend(*(a1 + 48), "_currentLink"), *(*(a1 + 48) + 192)}];

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  LOBYTE(v28) = objc_opt_respondsToSelector();

  if (v28)
  {
    v30 = objc_loadWeakRetained((*(a1 + 48) + 8));
    v31 = *(a1 + 48);
    v32 = *(a1 + 40);
    v33 = *(a1 + 56);
    v34 = *(a1 + 64);
    if (*(a1 + 90))
    {
      v35 = &kIDSDefaultPairedDeviceID;
    }

    else
    {
      v35 = (*(a1 + 48) + 200);
    }

    v36 = *v35;
    v37 = [NSNumber numberWithUnsignedInt:a2];
    BYTE1(v42) = *(a1 + 93);
    LOBYTE(v42) = v4;
    LOWORD(v39) = *(a1 + 91);
    [v30 connection:v31 protobufReceived:v32 topic:v33 command:v34 fromID:v36 messageID:v37 wantsAppAck:v39 expectsPeerResponse:*(a1 + 72) peerResponseIdentifier:*(a1 + 80) messageUUID:v42 isCompressed:? didWakeHint:?];
  }
}

void sub_100567DF4(uint64_t a1, uint64_t a2)
{
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) length];
    v6 = *(a1 + 80);
    if (*(a1 + 82))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 67109890;
    v30 = v5;
    v31 = 1024;
    v32 = v6;
    v33 = 1024;
    v34 = a2;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "* Receiving local data payload of size: %d   for streamID: %d  messageSequenceNumber %d  compressed %@", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = [*(a1 + 32) length];
    if (*(a1 + 82))
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v26 = a2;
    v27 = v9;
    v23 = v8;
    v25 = *(a1 + 80);
    _IDSLogV();
  }

  [*(a1 + 40) _addIncomingMessageSize:objc_msgSend(*(a1 + 32) forTopic:{"length", v23, v25, v26, v27), *(a1 + 48)}];
  v10 = [[IDSLocalDeliveryMessageReceivedMetric alloc] initWithService:*(a1 + 48) isFromDefaultPairedDevice:*(a1 + 83) & 1 messageSize:objc_msgSend(*(a1 + 32) linkType:"length") priority:{objc_msgSend(*(a1 + 40), "_currentLink"), *(*(a1 + 40) + 192)}];
  v11 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v11 logMetric:v10];

  v12 = +[IDSAWDLogging sharedInstance];
  [v12 messageReceivedForService:*(a1 + 48) isFromDefaultPairedDevice:*(a1 + 83) & 1 messageSize:objc_msgSend(*(a1 + 32) linkType:"length") priority:{objc_msgSend(*(a1 + 40), "_currentLink"), *(*(a1 + 40) + 192)}];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    if (*(a1 + 83))
    {
      v20 = &kIDSDefaultPairedDeviceID;
    }

    else
    {
      v20 = (v16 + 200);
    }

    v21 = *v20;
    v22 = [NSNumber numberWithUnsignedInt:a2];
    BYTE1(v28) = *(a1 + 86);
    LOBYTE(v28) = *(a1 + 82);
    LOWORD(v24) = *(a1 + 84);
    [v15 connection:v16 dataReceived:v17 topic:v18 command:v19 fromID:v21 messageID:v22 wantsAppAck:v24 expectsPeerResponse:*(a1 + 64) peerResponseIdentifier:*(a1 + 72) messageUUID:v28 isCompressed:? didWakeHint:?];
  }
}

void sub_10056814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100568200;
  v11[3] = &unk_100BE0618;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  v14 = a4;
  v15 = a3;
  [v8 _processMessage:a2 withSequenceNumberBlock:v11];
}

id sub_100568200(uint64_t a1, int a2)
{
  result = [*(a1 + 32) sequenceNumber];
  if (result == a2)
  {
    v5 = *(a1 + 56);
    **(a1 + 48) = 1;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  return result;
}

void sub_10056824C(uint64_t a1)
{
  v2 = [IDSDeliveryContext alloc];
  v3 = [*(a1 + 32) toDeviceID];
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v5 = [NSNumber numberWithBool:*(a1 + 56)];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) messageState]);
  v7 = [v2 initWithResponseCode:12 deviceID:v3 currentAverageRTT:v4 isDeviceBlackedOut:v5 localMessageState:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_100568348(uint64_t a1)
{
  v2 = [IDSDeliveryContext alloc];
  v3 = [*(a1 + 32) toDeviceID];
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v5 = [NSNumber numberWithBool:*(a1 + 56)];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) messageState]);
  v7 = [v2 initWithResponseCode:0 deviceID:v3 currentAverageRTT:v4 isDeviceBlackedOut:v5 localMessageState:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_100568444(uint64_t a1, uint64_t a2)
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Broadcast: incoming app ack sequence number %u \n", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v13 = a2;
    _IDSLogTransport();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v10 = &kIDSDefaultPairedDeviceID;
    }

    else
    {
      v10 = (v8 + 200);
    }

    v11 = *v10;
    v12 = [NSNumber numberWithUnsignedInt:a2, v13];
    [v7 connection:v8 receivedAppLevelAckWithTopic:v9 fromID:v11 messageID:v12 peerResponseIdentifier:*(a1 + 48)];
  }
}

void sub_1005685E8(uint64_t a1, uint64_t a2)
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) length];
    v6 = *(a1 + 80);
    if (*(a1 + 82))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 67109890;
    v25 = v5;
    v26 = 1024;
    v27 = v6;
    v28 = 1024;
    v29 = a2;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "* GOT SOCKET PAIR COMMAND MESSAGE OUTGOING NICE PROXY Receiving local data payload of size: %d   for streamID: %d  messageSequenceNumber %d  compressed %@", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v8 = [*(a1 + 32) length];
    v9 = *(a1 + 82) ? @"YES" : @"NO";
    v23 = v9;
    v21 = v8;
    v22 = *(a1 + 80);
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v10 = [*(a1 + 32) length];
      if (*(a1 + 82))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v23 = v11;
      v21 = v10;
      _IDSLogV();
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(v15 + 200);
    v20 = [NSNumber numberWithUnsignedInt:a2];
    BYTE1(v23) = *(a1 + 85);
    LOBYTE(v23) = *(a1 + 82);
    LOWORD(v21) = *(a1 + 83);
    [v14 connection:v15 dataReceived:v16 topic:v17 command:v18 fromID:v19 messageID:v20 wantsAppAck:v21 expectsPeerResponse:*(a1 + 64) peerResponseIdentifier:*(a1 + 72) messageUUID:v23 isCompressed:? didWakeHint:?];
  }
}

void sub_100568878(uint64_t a1, uint64_t a2)
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) length];
    v6 = *(a1 + 80);
    if (*(a1 + 82))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 67109890;
    v28 = v5;
    v29 = 1024;
    v30 = v6;
    v31 = 1024;
    v32 = a2;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "* (PROCESSED) GOT SOCKET PAIR COMMAND MESSAGE INCOMMING NICE PROXY Receiving local data payload of size: %d   for streamID: %d  messageSequenceNumber %d  compressed %@", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v8 = [*(a1 + 32) length];
    v9 = *(a1 + 82) ? @"YES" : @"NO";
    v24 = a2;
    v25 = v9;
    v21 = v8;
    v23 = *(a1 + 80);
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v10 = [*(a1 + 32) length];
      if (*(a1 + 82))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v24 = a2;
      v25 = v11;
      v21 = v10;
      v23 = *(a1 + 80);
      _IDSLogV();
    }
  }

  v12 = [*(a1 + 32) _FTOptionallyDecompressData];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(v16 + 200);
    v20 = [NSNumber numberWithUnsignedInt:a2];
    BYTE1(v26) = *(a1 + 85);
    LOBYTE(v26) = *(a1 + 82);
    LOWORD(v22) = *(a1 + 83);
    [v15 connection:v16 messageReceived:v12 topic:v17 command:v18 fromID:v19 messageID:v20 wantsAppAck:v22 expectsPeerResponse:*(a1 + 64) peerResponseIdentifier:*(a1 + 72) messageUUID:v26 isCompressed:? didWakeHint:?];
  }
}

void sub_100568B18(uint64_t a1, uint64_t a2)
{
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) length];
    v6 = *(a1 + 80);
    if (*(a1 + 82))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 67109890;
    *v34 = v5;
    *&v34[4] = 1024;
    *&v34[6] = v6;
    v35 = 1024;
    v36 = a2;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "* (PROCESSED) GOT SOCKET PAIR COMMAND MESSAGE iMessage Command Receiving local data payload of size: %d   for streamID: %d  messageSequenceNumber %d  compressed %@", buf, 0x1Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v8 = [*(a1 + 32) length];
    v9 = *(a1 + 82) ? @"YES" : @"NO";
    v30 = a2;
    v31 = v9;
    v27 = v8;
    v29 = *(a1 + 80);
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v10 = [*(a1 + 32) length];
      if (*(a1 + 82))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v30 = a2;
      v31 = v11;
      v27 = v10;
      v29 = *(a1 + 80);
      _IDSLogV();
    }
  }

  v12 = [*(a1 + 32) _FTOptionallyDecompressData];
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"YES";
    if (!v12)
    {
      v14 = @"NO";
    }

    *buf = 138412290;
    *v34 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DECOMPRESSED IMESSAGE DECRYPTED DATA NOT NIL: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"dd", *(a1 + 40), @"U", 0}];
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138412290;
    *v34 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Passing %@ Down to UTUN", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v28 = *(a1 + 40);
    _IDSLogV();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained((*(a1 + 48) + 8));
    v21 = *(a1 + 48);
    v22 = JWEncodeDictionary();
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(*(a1 + 48) + 200);
    v26 = [NSNumber numberWithUnsignedInt:a2];
    BYTE1(v32) = *(a1 + 85);
    LOBYTE(v32) = *(a1 + 82);
    LOWORD(v28) = *(a1 + 83);
    [v20 connection:v21 messageReceived:v22 topic:v23 command:v24 fromID:v25 messageID:v26 wantsAppAck:v28 expectsPeerResponse:*(a1 + 72) peerResponseIdentifier:*(a1 + 40) messageUUID:v32 isCompressed:? didWakeHint:?];
  }
}

void sub_100568FD0(id a1)
{
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Popping dialog to alert the user of the IDS version mismatch", v2, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (qword_100CBEFF8 != -1)
  {
    sub_100929414();
  }

  if (off_100CBEFF0)
  {
    off_100CBEFF0(@"IDS", @"IDS version mismatch", 3, 152);
  }
}

void sub_10056A0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10056A0DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timedOutWaitingForSMS];
}

void sub_10056A60C(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_100CBF008, v2);
}

void sub_10056A65C(uint64_t a1, void *a2)
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received notification that SIM setup did complete { observer: %@ }", &v4, 0xCu);
  }

  if (a2)
  {
    [a2 _SIMSetupDidComplete];
  }
}

void sub_10056B354(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10056B358);
  }

  objc_terminate();
}

void sub_10056B8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10056B8E0);
  }

  objc_terminate();
}

id sub_10056BF10(uint64_t a1)
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received PNRReadyStateNotification { state: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _scheduleHeartbeat:5.0];
}

void sub_10056C1CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v4 = +[IMRGLog sms];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully sent registration request", buf, 2u);
      }

      [WeakRetained handleRegistrationSMSSuccessfullyDeliveredWithTelephonyTimeout:*(a1 + 32)];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to send registration request", v6, 2u);
      }

      [WeakRetained handleRegistrationSMSDeliveryFailed];
    }
  }
}

void sub_10056C428(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) success];
    v4 = +[IMRGLog sms];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = [*(a1 + 32) phoneNumber];
        v7 = [*(a1 + 32) signature];
        *buf = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling incoming phone number registration response { phoneNumber: %@, signature: %@ }", buf, 0x16u);
      }

      [WeakRetained handleIncomingSMSForResponse:*(a1 + 32)];
    }

    else
    {
      if (v5)
      {
        v8 = [*(a1 + 32) status];
        *buf = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received failed status in phone number registration response { status: %@ }", buf, 0xCu);
      }

      im_dispatch_after_primary_queue();
    }
  }
}

void sub_10056D1FC(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10056D2C8;
  block[3] = &unk_100BD9220;
  v14 = a2;
  v15 = a3;
  v9 = *(a1 + 32);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, block);
}

void sub_10056D2C8(uint64_t a1)
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = *(a1 + 32);
    if (*(a1 + 49))
    {
      v3 = @"YES";
    }

    v17 = 138412802;
    v18 = v4;
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Phone number registration request issued { sendSuccess: %@, shouldContinue: %@, error: %@ }", &v17, 0x20u);
  }

  if (*(a1 + 48))
  {
    v6 = objc_alloc_init(NSDate);
    v7 = *(a1 + 40);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    v9 = +[IMRGLog sms];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting watch for phone number validation request timeout", &v17, 2u);
    }

    [*(a1 + 40) _scheduleSMSTimeout:1800.0];
    [*(a1 + 40) _clearSMSDeliveryTimeout];
    v10 = *(a1 + 40);
    v11 = [v10 arbiter];
    [v11 minimumIntervalBetweenValidationAttempts];
    [v10 _setSMSDeliveryTimeout:?];
  }

  else
  {
    v12 = *(a1 + 49);
    v13 = +[IMRGLog sms];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (v14)
      {
        v15 = *(a1 + 32);
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error sending phone number validation request -- current mechanism failed { error: %@ }", &v17, 0xCu);
      }

      [*(a1 + 40) handleRegistrationSMSDeliveryFailedWithShouldBypassRetry:1];
    }

    else
    {
      if (v14)
      {
        v16 = *(*(a1 + 40) + 48);
        v17 = 67109120;
        LODWORD(v18) = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error sending phone number validation request -- CT instructed us to stop { attemptCount: %d }", &v17, 8u);
      }

      [*(a1 + 40) _notifyFailureWithError:3];
      [*(a1 + 40) resetSMSCounter];
    }
  }
}

void sub_10056DDD4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = +[IMRGLog sms];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = v10;
    v25 = 2048;
    v26 = a4;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received preflight response { error: %@, resultCode: %ld, resultDictionary: %@ }", &v23, 0x20u);
  }

  v13 = v9;
  v14 = v13;
  if (a4)
  {
    v15 = a4 & 0xFFFFFFFFFFFFFFF7;
    v16 = +[IMRGLog sms];
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15 == 6001)
    {
      if (v17)
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed preflight -- failing phone number validation", &v23, 2u);
      }

      [*(a1 + 32) setCurrentPreflightStack:0];
      [*(a1 + 32) _notifyFailureWithError:36];
    }

    else
    {
      if (v17)
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Preflight unsuccessful -- cancelling scheduled heartbeat", &v23, 2u);
      }

      [*(a1 + 32) setCurrentPreflightStack:0];
      *(*(a1 + 32) + 16) = 1;
      [*(a1 + 32) _cancelScheduledHeartbeat];
    }
  }

  else
  {
    v18 = [v13 responseMechanisms];
    v19 = [*(a1 + 32) _filterUnsupportedMechanisms:v18];
    v20 = +[IMRGLog sms];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending phone number verification { mechanisms: %@ }", &v23, 0xCu);
    }

    v21 = [[IDSPreflightStack alloc] initWithIMSI:*(a1 + 40) PLMN:*(a1 + 48) validationMechanisms:v19];
    [*(a1 + 32) setCurrentPreflightStack:v21];

    v22 = [v14 responseSessionID];
    [*(a1 + 32) setSessionID:v22];

    [*(a1 + 32) _performHighestPriorityPreflightVerification];
  }
}

id sub_10056E310(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 60) = 0;
  v4 = +[IMRGLog sms];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Obtained permission to send SMS from requestor -- kicking identification", buf, 2u);
    }

    *(*(a1 + 32) + 61) = 1;
    return [*(a1 + 32) _tryToSendSMSIdentification];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did not obtain permission to send SMS from requestor -- failing registration", v7, 2u);
    }

    *(*(a1 + 32) + 61) = 0;
    return [*(a1 + 32) _notifyFailureWithError:2];
  }
}

void sub_10056E96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10056ED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10056F2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

id sub_10056F34C(uint64_t a1)
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalid number provided: %@   Class: %@", &v7, 0x16u);
  }

  return [*(a1 + 40) _notifyFailureWithError:6];
}

id sub_10056F434(uint64_t a1)
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalid signature provided: %@   Class: %@", &v7, 0x16u);
  }

  return [*(a1 + 40) _notifyFailureWithError:5];
}

void sub_10056F924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_activity_scope_state_s state, char a22)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10056F93C(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_10056F940();
  }

  objc_terminate();
}

uint64_t sub_10057021C()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"gdr-max-auth-retries"];

  if (v1)
  {
    v2 = [v1 unsignedIntValue];
  }

  else
  {
    v2 = 10;
  }

  return v2;
}

double sub_100570288()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"gdr-auth-retry-interval-seconds"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 15.0;
  }

  return v3;
}

void sub_100570B60(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (IDSDebuggingShouldOverrideGDRResponseCode())
  {
    a4 = IDSDebuggingGDRReponseCodeOverride();

    v11 = 0;
  }

  v12 = v9;
  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v148 = a4;
    *&v148[4] = 2112;
    *&v148[6] = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  Received get dependent registration response with result: %d  error: %@", buf, 0x12u);
  }

  v14 = [v12 userIDArray];
  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v148 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " response for message: %@", buf, 0xCu);
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v148 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "   response idsUserID: %@", buf, 0xCu);
  }

  v106 = objc_alloc_init(NSMutableSet);
  v105 = objc_alloc_init(NSMutableDictionary);
  v80 = v10;
  [*(a1 + 32) _submitGDRReponseToAWDWithResultCode:a4 error:v10];
  v108 = a1;
  v79 = v12;
  if (!a4)
  {
    v17 = +[IMRGLog GDR_oversized];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v77 = v11;
      v78 = v14;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      obj = [v11 _arrayForKey:@"registrations"];
      v92 = [obj countByEnumeratingWithState:&v138 objects:v146 count:16];
      if (v92)
      {
        v91 = *v139;
        v90 = IDSDevicePropertyService;
        v89 = IDSDevicePropertyPushToken;
        v88 = IDSDevicePropertyName;
        v87 = IDSDevicePropertyHardwareVersion;
        v86 = IDSDevicePropertyPrivateDeviceData;
        v85 = IDSDevicePropertySubServices;
        v84 = IDSDevicePropertyIdentities;
        v83 = IDSDevicePropertyLinkedUserURIs;
        v82 = IDSDevicePropertyIsHSATrustedDevice;
        do
        {
          v19 = 0;
          do
          {
            if (*v139 != v91)
            {
              objc_enumerationMutation(obj);
            }

            v104 = v19;
            v20 = *(*(&v138 + 1) + 8 * v19);
            v21 = [v20 objectForKey:v90];
            v102 = [v21 copy];

            v22 = [v20 objectForKey:v89];
            v100 = [v22 debugDescription];

            v23 = [v20 objectForKey:v88];
            v24 = [v23 copy];

            v25 = [v20 objectForKey:v87];
            v26 = [v25 copy];

            v27 = [v20 objectForKey:v86];
            v97 = [IDSLogFormatter descriptionForDictionary:v27 options:1];

            v28 = [v20 objectForKey:v85];
            v29 = [v28 __imArrayByApplyingBlock:&stru_100BE0778];
            v30 = [IDSLogFormatter descriptionForArray:v29 options:0];

            v31 = [v20 objectForKey:v84];
            v32 = [IDSLogFormatter descriptionForArray:v31 options:0];

            v33 = [v20 objectForKey:v83];
            v34 = [IDSLogFormatter descriptionForArray:v33 options:0];

            v35 = [v20 objectForKey:v82];
            v36 = [v35 copy];

            v125 = _NSConcreteStackBlock;
            v126 = 3221225472;
            v127 = sub_100571674;
            v128 = &unk_100BE07A0;
            v129 = v24;
            v130 = v102;
            v131 = v26;
            v132 = v100;
            v133 = v34;
            v134 = v32;
            v135 = v97;
            v136 = v30;
            v137 = v36;
            v95 = v36;
            v94 = v30;
            v98 = v97;
            v93 = v32;
            v37 = v34;
            v38 = v100;
            v39 = v26;
            v40 = v102;
            v41 = v24;
            cut_dispatch_log_queue();

            v19 = v104 + 1;
          }

          while (v92 != (v104 + 1));
          v92 = [obj countByEnumeratingWithState:&v138 objects:v146 count:16];
        }

        while (v92);
      }

      a1 = v108;
      v11 = v77;
      v14 = v78;
    }
  }

  v42 = v11;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v96 = v14;
  v101 = [v96 countByEnumeratingWithState:&v121 objects:v145 count:16];
  if (v101)
  {
    v99 = *v122;
    do
    {
      v43 = 0;
      do
      {
        if (*v122 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v103 = v43;
        v44 = *(*(&v121 + 1) + 8 * v43);
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v45 = *(*(a1 + 32) + 16);
        v46 = [v45 countByEnumeratingWithState:&v117 objects:v144 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v118;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v118 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v117 + 1) + 8 * i);
              v51 = [v50 idsUserID];
              v52 = [v51 isEqualToIgnoringCase:v44];

              if (v52)
              {
                v53 = [v50 guid];
                if ([v53 length])
                {
                  [v106 addObject:v50];
                  v54 = v108;
                  v55 = [*(*(v108 + 32) + 8) objectForKey:v53];
                  if (v55)
                  {
                    v56 = [[NSArray alloc] initWithArray:v55 copyItems:1];
                    [v105 setObject:v56 forKey:v53];

                    v54 = v108;
                  }

                  [*(*(v54 + 32) + 8) removeObjectForKey:v53];
                }

                else
                {
                  v55 = +[IMRGLog warning];
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412290;
                    *v148 = v50;
                    _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "No GUID for registration %@, when processing getDependentRegistration response", buf, 0xCu);
                  }
                }
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v117 objects:v144 count:16];
          }

          while (v47);
        }

        v43 = v103 + 1;
        a1 = v108;
      }

      while ((v103 + 1) != v101);
      v101 = [v96 countByEnumeratingWithState:&v121 objects:v145 count:16];
    }

    while (v101);
  }

  [*(*(a1 + 32) + 16) minusSet:v106];
  if (![*(*(a1 + 32) + 16) count])
  {
    v57 = *(a1 + 32);
    v58 = *(v57 + 16);
    *(v57 + 16) = 0;
  }

  if (![*(*(a1 + 32) + 8) count])
  {
    v59 = *(a1 + 32);
    v60 = *(v59 + 8);
    *(v59 + 8) = 0;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v107 = v106;
  v61 = [v107 countByEnumeratingWithState:&v113 objects:v143 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v114;
    do
    {
      for (j = 0; j != v62; j = j + 1)
      {
        if (*v114 != v63)
        {
          objc_enumerationMutation(v107);
        }

        v65 = *(*(&v113 + 1) + 8 * j);
        v66 = [v65 guid];
        v67 = [v105 objectForKey:v66];

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v68 = v67;
        v69 = [v68 countByEnumeratingWithState:&v109 objects:v142 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v110;
          do
          {
            for (k = 0; k != v70; k = k + 1)
            {
              if (*v110 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v109 + 1) + 8 * k);
              if (v73)
              {
                (*(v73 + 16))(v73, v65, a4, a4 == 0, v42);
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v109 objects:v142 count:16];
          }

          while (v70);
        }
      }

      v62 = [v107 countByEnumeratingWithState:&v113 objects:v143 count:16];
    }

    while (v62);
  }

  v74 = *(v108 + 32);
  if (!*(v74 + 8))
  {
    v75 = +[IDSDaemon sharedInstance];
    [v75 _processStoredIncomingMessages];

    v74 = *(v108 + 32);
  }

  [*(v74 + 40) accountsChanged];
  v76 = *(*(v108 + 32) + 64);
  if (v76)
  {
    (*(v76 + 16))();
  }
}

void sub_100571674(void *a1)
{
  v2 = +[IMRGLog GDR_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = a1[9];
    v9 = a1[10];
    v10 = a1[11];
    v11 = a1[12];
    v12 = 138414338;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "  * Device Name: %@   Service: %@   Hardware: %@   Token: %@   Linked URIs: %@   Identities: %@   Device Data: %@   Sub-services: %@   HSA trusted: %@", &v12, 0x5Cu);
  }
}

void sub_100571D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 32));
  _Unwind_Resume(a1);
}

void sub_100571D48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got called to report daily metrics.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [WeakRetained reportDailyMetrics];
  }

  else if (!state)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (!v3)
      {
        v7 = @"NO";
      }

      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to check in for daily metric with activity %@ ", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    v9 = xpc_activity_copy_criteria(v3);
    v10 = v9;
    if (!v9 || !xpc_equal(v9, v8))
    {
      xpc_activity_set_criteria(v3, v8);
    }
  }
}

id sub_100572610(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"-"];
  if ([v2 count] > 2)
  {
    v4 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "_topicFromToken: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_10057279C(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"-"];
  if ([v2 count] > 2)
  {
    v5 = [v2 objectAtIndex:1];
    v4 = [v5 intValue];
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "_priorityFromToken: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v4 = 200;
  }

  return v4;
}

void sub_100572C88(id a1)
{
  v1 = objc_alloc_init(IDSOTRController);
  v2 = qword_100CBF028;
  qword_100CBF028 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100574BB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isNegotiating] & 1) == 0 && (objc_msgSend(v3, "isReady") & 1) == 0 && objc_msgSend(v3, "isSuspended"))
  {
    v4 = [v3 token];
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resume suspended OTR session negotiation for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v6 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v6 = v4;
          _IDSLogV();
        }
      }
    }

    [*(a1 + 32) startOTRNegotiationWithDeviceIfNeeded:IDSDeviceDefaultPairedDeviceUniqueID token:v4 reset:1 errorHandler:{0, v6}];
  }
}

void sub_100575C20(void *a1)
{
  pthread_mutex_lock((a1[4] + 24));
  v2 = *(a1[4] + 88);
  if (!v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4 = a1[4];
    v5 = *(v4 + 88);
    *(v4 + 88) = Mutable;

    v2 = *(a1[4] + 88);
  }

  v6 = [v2 objectForKey:a1[5]];
  if (v6)
  {
    v7 = v6;
    [(IDSOTRSessionInfo *)v6 setOtrTestBlock:a1[6]];
  }

  else
  {
    v7 = [[IDSOTRSessionInfo alloc] initWithToken:a1[5]];
    [(IDSOTRSessionInfo *)v7 setOtrTestBlock:a1[6]];
    [*(a1[4] + 88) setObject:v7 forKey:a1[5]];
  }

  pthread_mutex_unlock((a1[4] + 24));
}

void sub_100575FC4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionNegotiationCount:*(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 64);
  if ((v4 & 0x80000000) == 0 && v4 < v2)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 48) length];
      v7 = *(a1 + 40);
      v8 = *(a1 + 64);
      *buf = 134218754;
      *v99 = v6;
      *&v99[8] = 2112;
      *&v99[10] = v7;
      v100 = 1024;
      *v101 = v8;
      *&v101[4] = 1024;
      *&v101[6] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Receive stale OTR negotiation data %luB for %@, count:(%08x < %08x), ignore.", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = [*(a1 + 48) length];
      v94 = *(a1 + 64);
      v86 = v9;
      v90 = *(a1 + 40);
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [*(a1 + 48) length];
        _IDSLogV();
      }
    }

    return;
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 48) length];
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    *buf = 134218498;
    *v99 = v11;
    *&v99[8] = 2112;
    *&v99[10] = v12;
    v100 = 1024;
    *v101 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Processing OTR negotiation data %luB for %@, count:%08x.", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v14 = [*(a1 + 48) length];
      v89 = *(a1 + 40);
      v93 = *(a1 + 64);
      v85 = v14;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = [*(a1 + 48) length];
        v89 = *(a1 + 40);
        v93 = *(a1 + 64);
        v85 = v15;
        _IDSLogV();
      }
    }
  }

  if ([*(a1 + 48) length])
  {
    v16 = sub_100572610(*(a1 + 40));
    if ([v16 isEqualToString:@"idsotr"])
    {
      v17 = sub_100577740(*(a1 + 40));
      if (v17 >= 3)
      {
        v18 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          *buf = 138412290;
          *v99 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Invalid data protection class for token %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_136;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_136;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_136;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v32 = +[IDSDServiceController sharedInstance];
      v33 = [v32 serviceWithPushTopic:v16];

      if (!v33)
      {
        v53 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = *(a1 + 40);
          *buf = 138412290;
          *v99 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Failed to find service for token %@", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_136;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_136;
        }

        _IDSLogTransport();
        if (!_IDSShouldLog())
        {
          goto LABEL_136;
        }

LABEL_23:
        _IDSLogV();
LABEL_136:

        return;
      }

      v17 = [v33 dataProtectionClass];
    }

    v34 = +[IDSRegistrationKeyManager sharedInstance];
    v35 = [v34 latestCopyMessageProtectionIdentityForDataProtectionClass:v17];

    if (!v35)
    {
      v47 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = IDSDataProtectionClassStringFromDataProtectionClass();
        *buf = 138412290;
        *v99 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Failed to get MP Identity for data protection class %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          IDSDataProtectionClassStringFromDataProtectionClass();
          v87 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            IDSDataProtectionClassStringFromDataProtectionClass();
            v87 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            _IDSLogV();
          }
        }
      }

      v50 = *(a1 + 32);
      v49 = a1 + 32;
      [v50 setupNewSessionInfoWithToken:{*(v49 + 8), *&v87}];
      [*v49 suspendSessionNegotiation:*(v49 + 8) askedByPairedDevice:0];
      goto LABEL_136;
    }

    v36 = [*(a1 + 32) copyPairedDevicePublicIdentityWithDataProtectionClass:v17];
    if (!v36)
    {
      v55 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(a1 + 56);
        *buf = 138412290;
        *v99 = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No public key found for remote device: %@    ** Cannot complete OTR exchange", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v87 = *(a1 + 56);
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v87 = *(a1 + 56);
            _IDSLogV();
          }
        }
      }

      v58 = *(a1 + 32);
      v57 = a1 + 32;
      [v58 setupNewSessionInfoWithToken:{*(v57 + 8), *&v87}];
      [*v57 suspendSessionNegotiation:*(v57 + 8) askedByPairedDevice:0];
      [*v57 _reportOTRTestResult:*(v57 + 8) setupTime:3 result:0.0];
      CFRelease(v35);
      goto LABEL_136;
    }

    OTRSessionWithFlags = [*(a1 + 32) copySessionForToken:*(a1 + 40)];
    if (!OTRSessionWithFlags)
    {
      OTRSessionWithFlags = SecMPFullIdentityCreateOTRSessionWithFlags();
      if (!OTRSessionWithFlags)
      {
        v65 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = *(a1 + 40);
          *buf = 138412546;
          *v99 = v66;
          *&v99[8] = 2112;
          *&v99[10] = 0;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "SecMPFullIdentityCreateOTRSessionWithFlags failed for %@ with error %@. Kick off re-negotiation.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v87 = *(a1 + 40);
          v91 = 0;
          _IDSLogTransport();
        }

        v40 = 1;
        v77 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Unable to create session from session data", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        [*(a1 + 32) _reportOTRTestResult:*(a1 + 40) setupTime:2 result:{0.0, *&v87, v91}];
        goto LABEL_134;
      }

      v38 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 40);
        *buf = 134218498;
        *v99 = OTRSessionWithFlags;
        *&v99[8] = 2112;
        *&v99[10] = v39;
        v100 = 2112;
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Created new OTR session %p for token %@ error %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v91 = *(a1 + 40);
          v95 = 0;
          v87 = *&OTRSessionWithFlags;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v91 = *(a1 + 40);
            v95 = 0;
            v87 = *&OTRSessionWithFlags;
            _IDSLogV();
          }
        }
      }

      [*(a1 + 32) setupNewSessionInfoWithToken:{*(a1 + 40), *&v87, v91, v95}];
    }

    v40 = 0;
    [*(a1 + 32) setSessionNegotiationStart:*(a1 + 40)];
    v41 = objc_alloc_init(NSMutableData);
    v42 = SecOTRSProcessPacket();
    if (v42)
    {
      v43 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v99 = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "SecOTRSProcessPacket failed with result: %d, removing session key. Kick off re-negotiation.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v87 = *&v42;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v87 = *&v42;
            _IDSLogV();
          }
        }
      }

      [*(a1 + 32) _cacheSession:0 token:{*(a1 + 40), *&v87, v91}];
      v44 = +[IDSOTRKeyStorage sharedInstance];
      [v44 removeSessionKeyForToken:*(a1 + 40)];

      if (v42 != -25293)
      {
        v40 = 1;
        goto LABEL_126;
      }

      v45 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Failed due to incorrect credentials. Refreshing Paired Device Encryption Keys", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v46 = +[IDSPairingManager sharedInstance];
      [v46 refreshPairedDeviceEncryptionKeys];
      v40 = 1;
    }

    else
    {
      v61 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v41 length];
        *buf = 67109376;
        *v99 = 0;
        *&v99[4] = 2048;
        *&v99[6] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "SecOTRSProcessPacket  result: %d   data: %luB", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v87 = 0.0;
          v91 = [v41 length];
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v63 = [v41 length];
            v87 = 0.0;
            v91 = v63;
            _IDSLogV();
          }
        }
      }

      if ((v4 & 0x80000000) != 0)
      {
        v64 = (*(a1 + 64) & 0x7FFFFFFF);
      }

      else
      {
        v64 = (v3 | 0x80000000);
      }

      v67 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [v41 length];
        v69 = *(a1 + 40);
        *buf = 134218498;
        *v99 = v68;
        *&v99[8] = 2112;
        *&v99[10] = v69;
        v100 = 1024;
        *v101 = v64;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "  => will, send out OTR negotiation response data %luB for %@, count:%08x.", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v70 = [v41 length];
          v91 = *(a1 + 40);
          v95 = v64;
          v87 = *&v70;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v71 = [v41 length];
            v91 = *(a1 + 40);
            v95 = v64;
            v87 = *&v71;
            _IDSLogV();
          }
        }
      }

      v72 = [IDSUTunController sharedInstance:*&v87];
      [v72 sendOTRNegotiationMessage:*(a1 + 40) negotiationCount:v64 negotiationData:v41];

      [*(a1 + 32) serializeSession:OTRSessionWithFlags token:*(a1 + 40)];
      IsReadyForMessages = SecOTRSGetIsReadyForMessages();
      v74 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v75 = @"NO";
        if (IsReadyForMessages)
        {
          v75 = @"YES";
        }

        *buf = 138412290;
        *v99 = v75;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Are we setup with with OTR now?: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v76 = @"NO";
        if (IsReadyForMessages)
        {
          v76 = @"YES";
        }

        v88 = *&v76;
        _IDSLogV();
      }

      if (!IsReadyForMessages || [v41 length])
      {
        goto LABEL_126;
      }

      ids_monotonic_time();
      v79 = v78;
      [*(a1 + 32) sessionStartTimeWithToken:*(a1 + 40)];
      v81 = v79 - v80;
      v82 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = *(a1 + 40);
        *buf = 134218754;
        *v99 = v81;
        *&v99[8] = 2114;
        *&v99[10] = v83;
        v100 = 2048;
        *v101 = OTRSessionWithFlags;
        *&v101[8] = 2112;
        v102 = OTRSessionWithFlags;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "OTR session ready (took %.6f) for %{public}@ <%p %@>.", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v96 = OTRSessionWithFlags;
          v97 = OTRSessionWithFlags;
          v92 = *(a1 + 40);
          v88 = v81;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v96 = OTRSessionWithFlags;
            v97 = OTRSessionWithFlags;
            v92 = *(a1 + 40);
            v88 = v81;
            _IDSLogV();
          }
        }
      }

      [*(a1 + 32) setSessionNegotiationComplete:{*(a1 + 40), *&v88, v92, v96, v97}];
      [*(a1 + 32) _reportOTRTestResult:*(a1 + 40) setupTime:1 result:v81];
      v46 = +[IDSAWDLogging sharedInstance];
      v84 = sub_100572610(*(a1 + 40));
      [v46 OTRSessionNegotiation:v84 priority:sub_10057279C(*(a1 + 40)) duration:(v81 * 1000.0) result:0];
    }

LABEL_126:
    CFRelease(OTRSessionWithFlags);

LABEL_134:
    CFRelease(v35);
    CFRelease(v36);
    if (v40)
    {
      [*(a1 + 32) startOTRNegotiationWithDeviceIfNeeded:*(a1 + 56) token:*(a1 + 40) reset:1 errorHandler:0];
    }

    goto LABEL_136;
  }

  v20 = [*(a1 + 32) copySessionForToken:*(a1 + 40)];
  if (v20)
  {
    if (SecOTRSGetIsReadyForMessages())
    {
      if ([*(a1 + 32) isSessionNegotiating:*(a1 + 40)])
      {
        ids_monotonic_time();
        v22 = v21;
        [*(a1 + 32) sessionStartTimeWithToken:*(a1 + 40)];
        v24 = v22 - v23;
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 40);
          *buf = 134218754;
          *v99 = v24;
          *&v99[8] = 2112;
          *&v99[10] = v26;
          v100 = 2048;
          *v101 = v20;
          *&v101[8] = 2112;
          v102 = v20;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "OTR session ready (took %.6f) for %@ <%p %@>.", buf, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v95 = v20;
            v97 = v20;
            v91 = *(a1 + 40);
            v87 = v24;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v95 = v20;
              v97 = v20;
              v91 = *(a1 + 40);
              v87 = v24;
              _IDSLogV();
            }
          }
        }

        v28 = *(a1 + 32);
        v27 = (a1 + 32);
        v29 = v27 + 1;
        [v28 setSessionNegotiationComplete:{v27[1], *&v87, v91, v95, v97}];
        [*v27 _reportOTRTestResult:v27[1] setupTime:1 result:v24];
        v30 = +[IDSAWDLogging sharedInstance];
        v31 = sub_100572610(*v29);
        [v30 OTRSessionNegotiation:v31 priority:sub_10057279C(*v29) duration:(v24 * 1000.0) result:0];
      }

      else
      {
        v59 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = *(a1 + 40);
          *buf = 138412802;
          *v99 = v60;
          *&v99[8] = 2048;
          *&v99[10] = v20;
          v100 = 2112;
          *v101 = v20;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "OTR session setup is done, but the session is NOT negotiating - token:%@ session:<%p %@>.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }
      }
    }

    else
    {
      v51 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 40);
        *buf = 138412290;
        *v99 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Empty data response for %@ but session is not ready.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    CFRelease(v20);
  }
}

uint64_t sub_100577740(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"-"];
  if ([v2 count] > 2)
  {
    v5 = [v2 objectAtIndex:2];
    v4 = [v5 intValue];
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "_dataProtectionClassFromToken: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v4 = 3;
  }

  return v4;
}

void sub_1005779BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005779D4(uint64_t a1)
{
  v2 = [*(a1 + 32) copySessionForToken:*(a1 + 40)];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "hasMessagableOTRSessionForService for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = SecOTRSGetIsReadyForMessages();
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      *buf = 134218242;
      v9 = v2;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "   => found session %p, is ready: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    CFRelease(v2);
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "   ** Could not find session", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_100577FF4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100577E00);
  }

  _Unwind_Resume(a1);
}

void sub_10057A308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSDServiceController sharedInstance];
  v8 = [*(a1 + 32) topic];
  v9 = [v7 serviceWithPushTopic:v8];

  v10 = +[IDSDAccountController sharedInstance];
  v11 = [v10 accountsOnService:v9];

  v12 = [v11 firstObject];
  if (v12)
  {
    v13 = +[NSString stringGUID];
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = [(__CFString *)v15 destinations];
      *buf = 138412802;
      v27 = v15;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendAheadGroup { group %@, account %@, destination: %@ }", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v23 = [*(a1 + 40) destinations];
      _IDSLogV();
    }

    v17 = objc_alloc_init(IDSSendParameters);
    [v17 setPriority:300];
    v18 = [*(a1 + 40) destinations];
    v19 = [IDSDestination destinationWithStrings:v18];
    [v17 setDestinations:v19];

    [v17 setCommand:&off_100C3CA48];
    [v17 setEncryptPayload:1];
    [v17 setUseDictAsTopLevel:1];
    [v17 setIdentifier:v13];
    v20 = IDSGetUUIDData();
    [v17 setMessageUUID:v20];

    [v17 setDataToEncrypt:v5];
    [v17 setFireAndForget:1];
    [v17 setAlwaysSkipSelf:1];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10057A764;
    v24[3] = &unk_100BD9D10;
    v25 = v13;
    v21 = v13;
    [v12 sendMessageWithSendParameters:v17 willSendBlock:0 completionBlock:v24];
  }

  else
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = @"IDSGroupSendAheadObserver";
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@ - No account for service name %@ found to send a message, bailing...", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

void sub_10057A764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v8 = [v3 lastCall];
    v9 = @"NO";
    *buf = 138413058;
    v12 = v5;
    v13 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Send ahead message %@ got response code %lu error %@ lastCall %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v3 idsResponseCode];
    v10 = [v3 responseError];
    [v3 lastCall];
    _IDSLogV();
  }
}

uint64_t IDSProtoKeyTransparencyTrustedServiceSignaturesReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSProtoKeyTransparencyTrustedServiceSignature);
        [a1 addServiceSignatures:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSProtoKeyTransparencyTrustedServiceSignatureReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10057CB00(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = +[IDSFoundationLog IDSServerMessaging];
  v14 = v13;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      v36 = 1024;
      v37 = a4;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sent server message with { responseMessage: %@, messageError: %@, resultCode: %d, resultDictionary: %@ }", buf, 0x26u);
    }

    v15 = [v10 domain];
    if ([v15 isEqualToString:NSURLErrorDomain])
    {
      v16 = [v10 code] == -1001;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v10 domain];
    if ([v17 isEqualToString:APSErrorDomain])
    {
      if ([v10 code] == 4)
      {

        goto LABEL_15;
      }

      v18 = [v10 code] == 5;
    }

    else
    {
      v18 = 0;
    }

    if (!v16 && !v18)
    {
      if (!v10)
      {
        v14 = 0;
LABEL_19:
        (*(*(a1 + 64) + 16))();
        v24 = [*(a1 + 32) cancelOnClientCrash];
        v25 = [v24 BOOLValue];

        if (v25)
        {
          v26 = [*(a1 + 40) messagesToCancelOnDeallocByTopic];
          v27 = [v26 objectForKeyedSubscript:*(a1 + 48)];
          [v27 removeObject:*(a1 + 56)];
        }

        goto LABEL_21;
      }

      v23 = IDSServerMessagingErrorDomain;
      v28 = NSUnderlyingErrorKey;
      v29 = v10;
      v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v21 = v23;
      v22 = 4;
LABEL_18:
      v14 = [NSError errorWithDomain:v21 code:v22 userInfo:v20];

      goto LABEL_19;
    }

LABEL_15:
    v19 = IDSServerMessagingErrorDomain;
    v30 = NSUnderlyingErrorKey;
    v31 = v10;
    v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = v19;
    v22 = 3;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10092987C();
  }

LABEL_21:
}

void sub_10057FDAC(id a1)
{
  v1 = objc_alloc_init(IDSOTRKeyStorage);
  v2 = qword_100CBF050;
  qword_100CBF050 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1005805AC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 __imHexString];
  if (v6 && v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void sub_100580EE4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [NSData __imDataWithHexString:a3];
  if (v6 && v5)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

id sub_10058123C(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"-"];
  if ([v2 count] > 2)
  {
    v4 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "OTRStore: invalid OTR token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    v4 = 0;
  }

  return v4;
}

void sub_100581B9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_100581BE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[4] invalidate];
  v1 = WeakRetained[4];
  WeakRetained[4] = 0;
}

void sub_100581C3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[4];
  if (v2)
  {
    [v2 setFireTimeInterval:3.0];
  }

  else
  {
    v3 = [IMTimer alloc];
    v4 = *(a1 + 32);
    v5 = im_primary_queue();
    v6 = [v3 initWithTimeInterval:@"com.apple.identityservices.otr-save-store" name:0 shouldWake:v4 target:"_saveNow" selector:0 userInfo:v5 queue:3.0];
    v7 = WeakRetained[4];
    WeakRetained[4] = v6;
  }
}

void sub_100581D04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] invalidate];
  v1 = WeakRetained[3];
  WeakRetained[3] = 0;
}

void sub_100581D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[3];
  if (v2)
  {
    [v2 setFireTimeInterval:300.0];
  }

  else
  {
    v3 = [IMTimer alloc];
    v4 = *(a1 + 32);
    v5 = im_primary_queue();
    v6 = [v3 initWithTimeInterval:@"com.apple.identityservices.otr-purge-cache" name:0 shouldWake:v4 target:"_purgeMap" selector:0 userInfo:v5 queue:300.0];
    v7 = WeakRetained[3];
    WeakRetained[3] = v6;
  }
}

void sub_1005833C0(id a1)
{
  v1 = objc_alloc_init(IDSIDStatusQueryController);
  v2 = qword_100CBF090;
  qword_100CBF090 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100583544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100583560(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, char a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = objc_alloc_init(NSMutableDictionary);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000AA44;
  v38 = sub_10000BC94;
  v39 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005837CC;
  v28[3] = &unk_100BE09F0;
  v21 = v18;
  v29 = v21;
  v32 = &v34;
  v22 = v16;
  v23 = a6;
  v24 = v14;
  v30 = v24;
  v33 = a8;
  v25 = v20;
  v31 = v25;
  [v15 enumerateKeysAndObjectsUsingBlock:v28];
  [WeakRetained _updateCacheWithStatusUpdates:v25 fromURI:v24 fromService:v17 success:v23 hadError:objc_msgSend(v21 negativeCacheHints:{"count") != 0, v22}];
  if ([v15 count] || !v35[5])
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    [v26 setObject:v25 forKey:v17];
    [WeakRetained _sendIDStatusChanges:v26 forService:v17 URI:v24 success:v23 error:v35[5]];
  }

  else
  {
    [WeakRetained _sendIDStatusChanges:0 forService:v17 URI:v24 success:v23 error:?];
  }

  _Block_object_dispose(&v34, 8);
}

void sub_1005837B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005837CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = *(*(a1 + 56) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, v7);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138412802;
    v29 = v5;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed ID query {uri: %@, fromURI: %@, error: %@}", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v24 = *(a1 + 40);
    v25 = v7;
    v23 = v5;
    IMLogString();
    if (_IMWillLog())
    {
      v24 = *(a1 + 40);
      v25 = v7;
      v23 = v5;
      _IMAlwaysLog();
    }
  }

  if ([v6 BOOLValue])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v7 domain];
  v15 = IDSPeerIDManagerErrorDomain;
  if ([v14 isEqualToIgnoringCase:IDSPeerIDManagerErrorDomain])
  {
    v16 = [v7 code] == 3;

    if (v16)
    {
      v13 = 2;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v7)
  {
    if (*(a1 + 64) == 1)
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Network unavailable.";
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v18 = [NSError errorWithDomain:v15 code:6 userInfo:v17];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v13 = 0;
  }

LABEL_19:
  v21 = *(a1 + 48);
  v22 = [NSNumber numberWithUnsignedInt:v13];
  [v21 setObject:v22 forKey:v5];
}

uint64_t sub_1005848C4(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 prefixedURI];
  if ([v4 length])
  {
    v5 = [v3 unprefixedURI];
    v6 = [v5 length];

    if (v6 <= 5)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22[0] = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed type check! {key: %@, class: %@}", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_37;
      }

      MarcoLogMadridLevel();
      IMLogString();
      if ((_IMWillLog() & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v8 = [v3 prefixedURI];
  v9 = [v8 length];

  if (v9)
  {
    if (a1 == 1)
    {
      v14 = [v3 prefixedURI];
      if ([v14 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v16 = [v3 prefixedURI];
        v17 = [v16 rangeOfString:@"."];

        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_39;
        }
      }

      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22[0] = v3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "  => Invalid URI, email, with no '@' and '.' characters: %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_37;
      }

      MarcoLogMadridLevel();
      IMLogString();
      if ((_IMWillLog() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!a1)
      {
        v10 = [v3 prefixedURI];
        v11 = [v10 rangeOfString:@"+"];

        if (v11 != 4)
        {
          v12 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22[0] = v3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  => Invalid URI, phone number, with no '+' character: %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_37;
          }

          MarcoLogMadridLevel();
          IMLogString();
          if ((_IMWillLog() & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

LABEL_39:
        v19 = 1;
        goto LABEL_38;
      }

      if (a1 < 7)
      {
        goto LABEL_39;
      }

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        LODWORD(v22[0]) = a1;
        WORD2(v22[0]) = 2112;
        *(v22 + 6) = v3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  => Invalid URI type: %d  URI: %@", buf, 0x12u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_37;
      }

      MarcoLogMadridLevel();
      IMLogString();
      if ((_IMWillLog() & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22[0] = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  => Invalid URI, empty: %@", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_37;
    }

    MarcoLogMadridLevel();
    IMLogString();
    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_36:
  _IMAlwaysLog();
LABEL_37:
  v19 = 0;
LABEL_38:

  return v19;
}

uint64_t sub_100587FE0()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"client-query-allow-forced"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_10058804C(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Triggered auto bug capture for missing cached endpoints for valid status {session : %@, error: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

uint64_t sub_10058817C()
{
  v0 = [IDSServerBag sharedInstanceForBagType:0];
  v1 = [v0 objectForKey:@"client-query-respect-soft-expiry"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_1005881E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, char a9, void *a10)
{
  v34 = a2;
  v17 = a3;
  v18 = a4;
  v32 = a5;
  v19 = a7;
  v20 = a8;
  v30 = a10;
  v21 = objc_alloc_init(NSMutableDictionary);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_10000AA44;
  v49 = sub_10000BC94;
  v50 = 0;
  v36 = _NSConcreteStackBlock;
  v37 = 3221225472;
  v38 = sub_1005884EC;
  v39 = &unk_100BE09F0;
  v22 = v20;
  v40 = v22;
  v43 = &v45;
  v41 = *(a1 + 32);
  v44 = a9;
  v23 = v21;
  v42 = v23;
  [v17 enumerateKeysAndObjectsUsingBlock:&v36];
  [*(a1 + 40) _updateCacheWithStatusUpdates:v23 fromURI:*(a1 + 32) fromService:*(a1 + 48) success:a6 hadError:objc_msgSend(v22 negativeCacheHints:{"count") != 0, v18}];

  if ([v17 count] || !v46[5])
  {
    v24 = [v19 didFlightToServer];
    v25 = (a1 + 56);
    if (v24)
    {
      v25 = off_100BD7390;
    }

    v26 = *v25;
    v27 = [*(a1 + 40) _cachedResultsForURIs:*(a1 + 64) fromURI:*(a1 + 32) fromService:*(a1 + 48) reason:v26];
    [*(a1 + 40) _sendIDStatusChanges:v27 forService:*(a1 + 48) URI:*(a1 + 32) success:a6 error:v46[5]];
    v28 = *(a1 + 72);
    if (v28)
    {
      (*(v28 + 16))(v28, v27, *(a1 + 32), *(a1 + 48), a6, v46[5]);
    }
  }

  else
  {
    [*(a1 + 40) _sendIDStatusChanges:0 forService:*(a1 + 48) URI:*(a1 + 32) success:a6 error:{v30, v32, v34, v36, v37, v38, v39, v40, v41}];
    v29 = *(a1 + 72);
    if (v29)
    {
      (*(v29 + 16))(v29, 0, *(a1 + 32), *(a1 + 48), a6, v46[5]);
    }
  }

  _Block_object_dispose(&v45, 8);
}

void sub_1005884CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005884EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = *(*(a1 + 56) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, v7);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138412802;
    v29 = v5;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed ID query for URI %@ fromURI %@ (Error: %@)", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v24 = *(a1 + 40);
    v25 = v7;
    v23 = v5;
    IMLogString();
    if (_IMWillLog())
    {
      v24 = *(a1 + 40);
      v25 = v7;
      v23 = v5;
      _IMAlwaysLog();
    }
  }

  if ([v6 BOOLValue])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v7 domain];
  v15 = IDSPeerIDManagerErrorDomain;
  if ([v14 isEqualToIgnoringCase:IDSPeerIDManagerErrorDomain])
  {
    v16 = [v7 code] == 3;

    if (v16)
    {
      v13 = 2;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (v7)
  {
    if (*(a1 + 64) == 1)
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Network unavailable.";
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v18 = [NSError errorWithDomain:v15 code:6 userInfo:v17];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v13 = 0;
  }

LABEL_19:
  v21 = *(a1 + 48);
  v22 = [NSNumber numberWithUnsignedInt:v13];
  [v21 setObject:v22 forKey:v5];
}

uint64_t sub_1005887E0(void *a1)
{
  v1 = a1;
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [NSString stringWithFormat:@"device-query-reset-interval-hours-%@", v1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 intValue];
  }

  else if ([v1 isEqualToString:@"com.apple.private.alloy.arcade"])
  {
    v5 = 5;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_1005888A4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"YES";
    *buf = 138413314;
    v27 = v11;
    if (!v13)
    {
      v16 = @"NO";
    }

    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remote ID IDs Query V2 has completed with the following: %@  FromURI: %@ ReturnedService: %@ ReturnedSucesss: %@ ReturnedError: %@ ", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v17 = v13 ? @"YES" : @"NO";
    MarcoLogMadridLevel();
    v24 = v17;
    v25 = v14;
    v22 = v12;
    v23 = v13;
    v21 = v11;
    IMLogString();
    if (_IMWillLog())
    {
      v24 = v17;
      v25 = v14;
      v22 = v12;
      v23 = v13;
      v21 = v11;
      _IMAlwaysLog();
    }
  }

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating Cache  %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    v21 = v11;
    IMLogString();
    if (_IMWillLog())
    {
      v21 = v11;
      _IMAlwaysLog();
    }
  }

  [*(a1 + 32) _updateCacheWithStatusUpdates:v11 fromURI:*(a1 + 40) fromService:*(a1 + 48) success:a5 hadError:0 negativeCacheHints:{0, v21, v22, v23, v24, v25}];
  v19 = [NSDictionary dictionaryWithObjectsAndKeys:v11, *(a1 + 48), 0];
  v20 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Calling Completion Block  %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    MarcoLogMadridLevel();
    IMLogString();
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56));
}

void sub_100588CF4(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Triggered auto bug capture for query rate limiting {session : %@, error: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

void sub_10058A944(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v17 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v17)
  {
    v14 = [*(a1 + 32) peerIDManager];
    v15 = [v14 endpointsForURIs:*(a1 + 40) service:*(a1 + 48) fromURI:*(a1 + 56) ignoringTTL:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, v15, *(a1 + 56), *(a1 + 48), a5, v13);
  }
}

void sub_10058B0A4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v17 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v17)
  {
    v14 = [*(a1 + 32) peerIDManager];
    v15 = [v14 idInfoResultForURIs:*(a1 + 40) service:*(a1 + 48) fromURI:*(a1 + 56) infoType:*(a1 + 80) infoOptions:*(a1 + 64) idStatusUpdates:v17];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    (*(v16 + 16))(v16, v15, *(a1 + 56), *(a1 + 48), a5, v13);
  }
}

void sub_10058D44C(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_100CBF0A0, v2);
}

void sub_10058D49C(id a1)
{
  v1 = IMWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_100CBF0B0, v2);
}

void sub_10058D530(id a1)
{
  v1 = objc_alloc_init(IDSDMessageStoreMigrator);
  v2 = qword_100CBF0C0;
  qword_100CBF0C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10058E640(id a1)
{
  context = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(NSMutableDictionary);
  if (CUTIsInternalInstall())
  {
    v2 = [&stru_100BE0BF0 copy];
    v3 = objc_retainBlock(v2);
    v4 = [NSNumber numberWithInteger:91];
    [v1 setObject:v3 forKey:v4];
  }

  v5 = [&stru_100BE0C10 copy];
  v6 = objc_retainBlock(v5);
  v7 = [NSNumber numberWithInteger:92];
  [v1 setObject:v6 forKey:v7];

  v8 = [&stru_100BE0C30 copy];
  v9 = objc_retainBlock(v8);
  v10 = [NSNumber numberWithInteger:32];
  [v1 setObject:v9 forKey:v10];

  v11 = [&stru_100BE0C50 copy];
  v12 = objc_retainBlock(v11);
  v13 = [NSNumber numberWithInteger:90];
  [v1 setObject:v12 forKey:v13];

  v14 = [&stru_100BE0C70 copy];
  v15 = objc_retainBlock(v14);
  v16 = [NSNumber numberWithInteger:66];
  [v1 setObject:v15 forKey:v16];

  v17 = [&stru_100BE0C90 copy];
  v18 = objc_retainBlock(v17);
  v19 = [NSNumber numberWithInteger:34];
  [v1 setObject:v18 forKey:v19];

  v20 = [&stru_100BE0CB0 copy];
  v21 = objc_retainBlock(v20);
  v22 = [NSNumber numberWithInteger:129];
  [v1 setObject:v21 forKey:v22];

  v23 = [&stru_100BE0CD0 copy];
  v24 = objc_retainBlock(v23);
  v25 = [NSNumber numberWithInteger:93];
  [v1 setObject:v24 forKey:v25];

  v26 = qword_100CBF0C8;
  qword_100CBF0C8 = v1;

  objc_autoreleasePoolPop(context);
}

void sub_10058E90C(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling request sysdiagnose push {userInfo: %@}", buf, 0xCu);
  }

  v7 = [[IDSTapToRadarPushPayload alloc] initWithPushPayload:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(IDSRegistrationPushHandler *)v4 copyHandlersForEnumerating];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 handler:v4 requestedSysdiagnoseWithTapToRadarPushPayload:v7];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_10058EBAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100929D0C();
    }

    objc_end_catch();
    JUMPOUT(0x10058EB3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058EC18(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v21 = a2;
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling request sysdiagnose push {userInfo: %@}", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(IDSRegistrationPushHandler *)v21 copyHandlersForEnumerating];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v23 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_opt_class();
          v10 = sub_10001B808(v9, v4, @"t");
          v11 = objc_opt_class();
          v12 = sub_10001B808(v11, v4, @"m");
          v13 = objc_opt_class();
          v14 = sub_10001B808(v13, v4, @"bd");
          v15 = objc_opt_class();
          v16 = sub_10001B808(v15, v4, @"bdurl");
          v17 = objc_opt_class();
          v18 = sub_10001B808(v17, v4, @"ba");
          v19 = objc_opt_class();
          v20 = sub_10001B808(v19, v4, @"baurl");
          [v8 handler:v21 requestedPromptThroughPushWithTitle:v10 message:v12 defaultButton:v14 defaultUrl:v16 alternateButton:v18 alternateUrl:v20];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }
}

void sub_10058EF90(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100929D74();
    }

    objc_end_catch();
    JUMPOUT(0x10058EF48);
  }

  JUMPOUT(0x10058F020);
}

void sub_10058F028(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v18 = a2;
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling register push {userInfo: %@}", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(IDSRegistrationPushHandler *)v18 copyHandlersForEnumerating];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = *v21;
    *&v7 = 138412802;
    v17 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = objc_opt_class();
          v12 = sub_10001B808(v11, v4, @"i");
          v13 = objc_opt_class();
          v14 = sub_10001B808(v13, v4, @"o");
          v15 = objc_opt_class();
          v16 = sub_10001B808(v15, v4, @"e");
          [v10 handler:v18 reregisterUserID:v12 style:v14 service:{v16, v17}];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }
}

void sub_10058F30C(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100929E60();
    }

    objc_end_catch();
    JUMPOUT(0x10058F2C4);
  }

  JUMPOUT(0x10058F39CLL);
}

void sub_10058F3A4(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v13 = a2;
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling reload bag push {userInfo: %@}", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(IDSRegistrationPushHandler *)v13 copyHandlersForEnumerating];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = objc_opt_class();
          v12 = sub_10001B808(v11, v4, @"s");
          [v10 handler:v13 reloadBag:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

void sub_10058F630(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100929EC8();
    }

    objc_end_catch();
    JUMPOUT(0x10058F5E8);
  }

  JUMPOUT(0x10058F6BCLL);
}

void sub_10058F6C8(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v18 = a2;
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling handles updated push {userInfo: %@}", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(IDSRegistrationPushHandler *)v18 copyHandlersForEnumerating];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = *v21;
    *&v7 = 138412802;
    v17 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = objc_opt_class();
          v12 = sub_10001B808(v11, v4, @"i");
          v13 = objc_opt_class();
          v14 = sub_10001B808(v13, v4, @"s");
          v15 = objc_opt_class();
          v16 = sub_10001B808(v15, v4, @"gdr");
          [v10 handler:v18 profileHandlesUpdated:v12 status:v14 allowGDR:{v16, v17}];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }
}

void sub_10058F9AC(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100929F30();
    }

    objc_end_catch();
    JUMPOUT(0x10058F964);
  }

  JUMPOUT(0x10058FA3CLL);
}

void sub_10058FA44(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v19 = a2;
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling flush cache push {userInfo: %@}", buf, 0xCu);
  }

  v6 = objc_opt_class();
  v7 = sub_10001B808(v6, v4, @"A");
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Told by server to flush entire query cache", buf, 2u);
    }

    v10 = +[IDSPeerIDManager sharedInstance];
    [v10 clearCacheAndPersistImmediately:0];

    v11 = +[IDSIDStatusQueryController sharedInstance];
    [v11 clearCache];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(IDSRegistrationPushHandler *)v19 copyHandlersForEnumerating];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v13)
    {
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v17 = objc_opt_class();
            v18 = sub_10001B808(v17, v4, @"r");
            [v16 handler:v19 flushCacheForURIs:v18];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

void sub_10058FD90(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10092A000();
    }

    objc_end_catch();
    JUMPOUT(0x10058FD48);
  }

  JUMPOUT(0x10058FE1CLL);
}

void sub_10058FE28(id a1, IDSRegistrationPushHandler *a2, NSDictionary *a3)
{
  v13 = a2;
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling cohort selected push {userInfo: %@}", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(IDSRegistrationPushHandler *)v13 copyHandlersForEnumerating];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = objc_opt_class();
          v12 = sub_10001B808(v11, v4, @"co");
          [v10 handler:v13 cohortSelected:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

void sub_1005900B4(void *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10092A068();
    }

    objc_end_catch();
    JUMPOUT(0x10059006CLL);
  }

  JUMPOUT(0x100590140);
}

id sub_100592F04(void *a1)
{
  v1 = a1;
  if ([v1 length] == 16)
  {
    v2 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v1, "bytes")}];
    v3 = [v2 UUIDString];
  }

  else
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v8 = [v1 length];
      v9 = 2048;
      v10 = 16;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error: data length: %lu != sizeof(uuid_t): %lu", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v6 = [v1 length];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          [v1 length];
          _IDSLogV();
        }
      }
    }

    v3 = 0;
  }

  return v3;
}

void sub_1005931F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _purgeAllocation];
}

void sub_100593CEC(uint64_t a1)
{
  v2 = +[IDSDeliveryController sharedInstance];
  v3 = kIDSQuickRelayPushTopic;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100593DB0;
  v5[3] = &unk_100BD9D10;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v2 sendIDSMessage:v4 service:0 topic:v3 completionBlock:v5];
}

void sub_100593DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 idsResponseCode])
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 responseError];
      *buf = 138412546;
      v15 = v5;
      v16 = 2048;
      v17 = [v3 idsResponseCode];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to send server message allocation timeout QR metrics report: error: %@  code: %ld", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = [v3 responseError];
        v12 = [v3 idsResponseCode];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v6 = [v3 responseError];
          [v3 idsResponseCode];
          _IDSLogV();
LABEL_14:
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v3 deliveryError];
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished sending server message allocation timeout QR metrics report for session %@ delivery error %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v10 = *(a1 + 32);
        v13 = [v3 deliveryError];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v6 = [v3 deliveryError];
          _IDSLogV();
          goto LABEL_14;
        }
      }
    }
  }
}

void sub_100594364(id a1)
{
  v1 = objc_alloc_init(IDSQuickRelayAllocator);
  v2 = qword_100CBF0E0;
  qword_100CBF0E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100594DAC(uint64_t a1)
{
  v2 = +[IDSDeliveryController sharedInstance];
  [v2 sendIDSMessage:*(a1 + 32) service:kIDSQuickRelayPushTopic topic:kIDSQuickRelayPushTopic completionBlock:&stru_100BE0D10];
}

void sub_100594E1C(id a1, IDSDeliveryContext *a2)
{
  v2 = a2;
  if ([(IDSDeliveryContext *)v2 idsResponseCode])
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(IDSDeliveryContext *)v2 responseError];
      *buf = 138412546;
      v9 = v4;
      v10 = 2048;
      v11 = [(IDSDeliveryContext *)v2 idsResponseCode];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "failed to send keepalive request: error: %@  code: %ld", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v5 = [(IDSDeliveryContext *)v2 responseError];
        v7 = [(IDSDeliveryContext *)v2 idsResponseCode];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v6 = [(IDSDeliveryContext *)v2 responseError:v5];
          [(IDSDeliveryContext *)v2 idsResponseCode];
          _IDSLogV();
        }
      }
    }
  }
}

void sub_1005950B8(uint64_t a1)
{
  v2 = +[IDSDeliveryController sharedInstance];
  v3 = *(a1 + 32);
  v4 = kIDSQuickRelayPushTopic;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10059519C;
  v5[3] = &unk_100BE0D38;
  objc_copyWeak(&v6, (a1 + 40));
  [v2 sendIDSMessage:v3 service:v4 topic:v4 completionBlock:v5];

  objc_destroyWeak(&v6);
}

void sub_10059519C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 idsResponseCode])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained requestIDStr];
      v7 = [v3 responseError];
      *buf = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = [v3 idsResponseCode];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "failed sending allocate request: %@ error: %@  code: %ld", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v8 = [WeakRetained requestIDStr];
        v10 = [v3 responseError];
        v12 = [v3 idsResponseCode];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v9 = [WeakRetained requestIDStr];
          v11 = [v3 responseError];
          [v3 idsResponseCode];
          _IDSLogV();
        }
      }
    }
  }
}