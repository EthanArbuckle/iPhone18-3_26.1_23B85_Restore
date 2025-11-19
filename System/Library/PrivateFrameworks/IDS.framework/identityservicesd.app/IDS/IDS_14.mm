void sub_100413498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentItem];
  v5 = +[IDSFoundationLog bonjourDeliveryController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138544131;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    v29 = 2113;
    v30 = v4;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bonjour send message {guid: %{public}@, topic: %{public}@, deviceID: %{private}@, command: %{public}@}", buf, 0x2Au);
  }

  v9 = [v4 _stripFZIDPrefix];
  v10 = *(a1 + 32);
  v21[0] = @"id";
  v21[1] = @"t";
  v23 = *(a1 + 40);
  v21[2] = @"c";
  v21[3] = @"p";
  v22 = v10;
  v24 = *(a1 + 56);
  v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:v21 count:4];
  v12 = [*(a1 + 64) rapportClient];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1004136E8;
  v15[3] = &unk_100BDA950;
  v16 = v3;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v4;
  v20 = *(a1 + 72);
  v13 = v4;
  v14 = v3;
  [v12 sendMessage:v11 toDeviceIdentifier:v9 completionBlock:v15];
}

void sub_1004136E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) currentResult];
  v5 = +[IDSFoundationLog bonjourDeliveryController];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v14 = 138543875;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2113;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bonjour failed to send message {guid: %{public}@, topic: %{public}@, deviceID: %{private}@}", &v14, 0x20u);
    }

    v10 = [[IDSDeliveryContext alloc] initWithResponseCode:2 error:v3 lastCall:0];
    [v10 setDeviceID:*(a1 + 56)];
  }

  else
  {
    if (v6)
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = 138543875;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2113;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bonjour did send message {guid: %{public}@, topic: %{public}@, deviceID: %{private}@}", &v14, 0x20u);
    }

    [v4 addObject:*(a1 + 56)];
    v10 = [[IDSDeliveryContext alloc] initWithResponseCode:0 deviceID:*(a1 + 56)];
    [v10 setLastCall:0];
  }

  (*(*(a1 + 64) + 16))();
  [*(a1 + 32) continueWithResult:v4];
}

void sub_1004138BC(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    sub_10091D390(a1);
  }

  v4 = [v3 value];
  if ([v4 count])
  {
    v5 = +[IDSFoundationLog bonjourDeliveryController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      v7 = a1[6];
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
      v15 = 138543875;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      v19 = 2113;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bonjour did finish sending message {guid: %{public}@, topic: %{public}@, sentDeviceIDs.count: %{private}@", &v15, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    pthread_mutex_lock((a1[4] + 8));
    v10 = +[IDSFoundationLog bonjourDeliveryController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[5];
      v12 = a1[6];
      v13 = a1[7];
      v15 = 138543875;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2113;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bonjour failed to send message to any recipient {guid: %{public}@, topic: %{public}@, deviceIDs: %{private}@}", &v15, 0x20u);
    }

    pthread_mutex_unlock((a1[4] + 8));
    v9 = 2;
  }

  v14 = [[IDSDeliveryContext alloc] initWithResponseCode:v9 error:0 lastCall:1];
  (*(a1[8] + 16))();
}

uint64_t sub_1004161B8(uint64_t result, unsigned int *a2, int a3, _DWORD *a4)
{
  if (a3 == 4)
  {
    *a4 = bswap32(*a2);
  }

  else
  {
    v5 = result;
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v8 = a3;
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "getUint32FromBytes, uint32_t should be 4 bytes, not %u bytes, field: %u", buf, 0xEu);
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

void sub_100416504(id a1)
{
  v1 = objc_alloc_init(IDSDRegistrationPushManager);
  v2 = qword_100CBD258;
  qword_100CBD258 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004176C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_activity_scope_state_s state, char a29)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100417DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_activity_scope_state_s state, char a29)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004181EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_activity_scope_state_s state, char a29)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1004183CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state, char a20)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100418508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10041871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state, char a20)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100418954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, char a26)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_100418990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 responseUserID];
    v6 = [v3 responseStatus];
    v7 = [v3 responseOrigin];
    v8 = [v3 responseMessage];
    v15 = 138413058;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received validate credentials response {userID: %@, status: %@, origin: %@, message: %@}", &v15, 0x2Au);
  }

  v9 = [v3 responseStatus];
  v10 = [v9 intValue];

  if (v10)
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10091D504(v3, v11);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = [v3 responseOrigin];
    v13 = [v11 integerValue];
    v14 = [NSArray arrayWithObject:*(a1 + 40)];
    [v12 _handleAction:v13 forAccounts:v14];
  }
}

uint64_t sub_100418C50(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100CBD260;
  qword_100CBD260 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100419A3C(id a1)
{
  v1 = objc_alloc_init(IDSKTGossipManager);
  v2 = qword_100CBD278;
  qword_100CBD278 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10041A0C8(id a1, NSString *a2)
{
  v2 = [(NSString *)a2 _stripPotentialTokenURIWithToken:0];
  v3 = [[IDSURI alloc] initWithPrefixedURI:v2];

  return v3;
}

void sub_10041A1D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v10 = 0;
  [TransparencyGossip sthsReceivedFromPeers:v3 error:&v10];
  v4 = v10;

  v5 = +[IDSFoundationLog KeyTransparency];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v12 = v4;
      v7 = "Sending sth's to transparencyd failed with error: %@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "Successfully sent sth's to transparencyd.";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10041A5C4(id a1)
{
  v1 = objc_alloc_init(IDSDGroupContextDataSource);
  v2 = qword_100CBD288;
  qword_100CBD288 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10041AC64(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [v11 responseEntries];

  if (v15)
  {
    v16 = [v11 responseEntries];
    v17 = [v16 lastObject];
    v18 = [v17 objectForKey:@"version"];
    v19 = [v18 intValue];

    v20 = [ENGroupID alloc];
    v21 = [ENStableGroupID alloc];
    v22 = [v11 responseEngramID];
    v23 = [v21 initWithDataRepresentation:v22];
    v24 = [v20 initWithStableGroupID:v23 generation:v19];

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10041B16C;
    v52[3] = &unk_100BDB730;
    v53 = *(a1 + 112);
    [v25 _groupFromServerResponse:v11 context:v26 groupID:v24 error:v27 resultCode:a4 resultDictionary:v13 allEntries:v14 completion:v52];
  }

  else if (v12)
  {
    v28 = +[ENLog groupContext];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_10091D618();
    }

    v29 = +[ENLog groupContext];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_10091D6B4(v11);
    }

    (*(*(a1 + 112) + 16))();
  }

  else
  {
    v30 = [ENGroupID alloc];
    v31 = [ENStableGroupID alloc];
    v32 = [v11 responseEngramID];
    v33 = [v31 initWithDataRepresentation:v32];
    v34 = [v11 responseVersion];
    v35 = [v30 initWithStableGroupID:v33 generation:{objc_msgSend(v34, "intValue")}];

    v36 = +[ENLog groupContext];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v55 = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Saved group to group server {groupID: %{private}@}", buf, 0xCu);
    }

    v37 = +[ENLog groupContext];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v55 = v35;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Saved group to group server {groupID: %{private}@}", buf, 0xCu);
    }

    v38 = *(a1 + 56);
    v51 = 0;
    v39 = [v38 conversationGroupWithUpdatedGroupID:v35 error:&v51];
    v40 = v51;
    v41 = v40;
    if (v39)
    {
      v50 = v40;
      v42 = [IDSConversationGroupCypher alloc];
      v43 = *(a1 + 64);
      v44 = [*(a1 + 72) participants];
      v45 = [v42 initWithConversationGroup:v39 deviceIdentity:v43 participants:v44];

      v46 = [[ENGroup alloc] initWithGroupInfo:*(a1 + 72) groupID:v35 cypher:v45];
      v47 = +[IDSFoundationLog groupCrypto];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        [v46 groupID];
        v48 = v49 = v45;
        *buf = 138543362;
        v55 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Saved group to group server { groupID: %{public}@ }", buf, 0xCu);

        v45 = v49;
      }

      (*(*(a1 + 112) + 16))();
      v41 = v50;
    }

    else
    {
      (*(*(a1 + 112) + 16))();
    }
  }
}

void sub_10041B16C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7 = ENGroupContextErrorItemKey;
    v8 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSError errorWithDomain:ENGroupContextErrorDomain code:-2100 userInfo:v5];
  (*(*(a1 + 32) + 16))();
}

void sub_10041B910(uint64_t a1, void *a2)
{
  v56 = a2;
  v58 = [ENParticipant participantsByAlias:?];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v62 = a1;
  obj = *(a1 + 32);
  v60 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
  v3 = 0;
  if (v60)
  {
    v59 = *v89;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v89 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v88 + 1) + 8 * i);
        v6 = +[IDSFoundationLog groupCrypto];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v94 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetched Entry from GroupServer {entry: %{public}@}", buf, 0xCu);
        }

        v7 = *(v62 + 40);
        v8 = [v5 publicKeyData];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v61 = i;
          v10 = [v9 sponsorAlias];
          v11 = [v58 objectForKeyedSubscript:v10];

          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v84 objects:v101 count:16];
          if (v13)
          {
            v14 = v13;
            v67 = v5;
            v15 = *v85;
            v64 = v12;
            v65 = v9;
            v63 = *v85;
            do
            {
              v16 = 0;
              v66 = v14;
              do
              {
                if (*v85 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v84 + 1) + 8 * v16) accountPublicKey];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v69 = v17;
                  v70 = v17;
                  v18 = [v70 signingIdentity];
                  v71 = v18;
                  if (v18)
                  {
                    v19 = v18;
                    v20 = [v9 conversationKey];
                    v21 = [v67 data];
                    v22 = [v67 publicKeyData];
                    v23 = [v67 signature];
                    v24 = [v67 groupID];
                    v25 = [v67 forwardingTicket];
                    v83 = v3;
                    v26 = [IDSMPConversationGroup conversationGroupWithConversationKey:v20 fromPublicData:v21 publicKey:v22 signature:v23 groupID:v24 parent:0 parentPublicKey:0 forwardingTicket:v25 sponsor:v19 error:&v83];
                    v68 = v83;

                    if (v26)
                    {
                      v27 = +[IDSFoundationLog groupCrypto];
                      v12 = v64;
                      v17 = v69;
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        v28 = [v26 groupID];
                        *buf = 138543362;
                        v94 = v28;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Fetched Group from GroupServer {groupID: %{public}@}", buf, 0xCu);
                      }

                      v29 = [v67 groupID];
                      v82 = v68;
                      v30 = [v26 conversationGroupWithUpdatedGroupID:v29 error:&v82];
                      v3 = v82;

                      v9 = v65;
                      if (v30)
                      {
                        [*(v62 + 48) addObject:v30];

                        goto LABEL_41;
                      }

                      v31 = +[ENLog groupContext];
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                      {
                        v35 = [v67 groupID];
                        *buf = 138544130;
                        v94 = v67;
                        v95 = 2114;
                        v96 = v26;
                        v97 = 2114;
                        v98 = v35;
                        v36 = v35;
                        v99 = 2114;
                        v100 = v3;
                        _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Failed to set groupID on created group {entry: %{public}@, group: %{public}@, groupID: %{public}@, error: %{public}@}", buf, 0x2Au);
                      }

                      v14 = v66;
                    }

                    else
                    {
                      v31 = +[ENLog groupContext];
                      v14 = v66;
                      v17 = v69;
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 138543874;
                        v3 = v68;
                        v94 = v67;
                        v95 = 2114;
                        v96 = v71;
                        v97 = 2114;
                        v98 = v68;
                        _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Failed to create group from server reponse entry {entry: %{public}@, publicSigningIdentity: %{public}@, error: %{public}@}", buf, 0x20u);
                      }

                      else
                      {
                        v3 = v68;
                      }

                      v12 = v64;
                      v9 = v65;
                    }

                    v15 = v63;
                  }

                  else
                  {
                    v26 = +[ENLog groupContext];
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                    {
                      v33 = *(v62 + 56);
                      v34 = *(v62 + 64);
                      *buf = 138543618;
                      v94 = v33;
                      v95 = 2114;
                      v96 = v34;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to create fetched group, could not create publicSigningIdentity {deviceIdentity: %{public}@, error: %{public}@", buf, 0x16u);
                    }
                  }

                  v32 = v70;
                }

                else
                {
                  v32 = +[ENLog groupContext];
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v94 = v17;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Unexpected sponsot accountIdentity {sponsorPublicAccountIdentity: %{public}@}", buf, 0xCu);
                  }
                }

                v16 = v16 + 1;
              }

              while (v14 != v16);
              v37 = [v12 countByEnumeratingWithState:&v84 objects:v101 count:16];
              v14 = v37;
            }

            while (v37);
          }

LABEL_41:

          i = v61;
        }

        else
        {
          v12 = +[ENLog groupContext];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v5 publicKeyData];
            v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v62 + 40) count]);
            *buf = 138543618;
            v94 = v38;
            v95 = 2114;
            v96 = v39;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No sponsor pair {entry.publicKeyData: %{public}@, keyToSponsorPairMap.lenth: %{public}@}", buf, 0x16u);
          }
        }
      }

      v60 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v60);
  }

  v40 = +[ENLog groupContext];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = *(v62 + 48);
    *buf = 138543362;
    v94 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "got groups %{public}@", buf, 0xCu);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v42 = *(v62 + 48);
  v43 = [v42 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v79;
LABEL_48:
    v46 = 0;
    while (1)
    {
      if (*v79 != v45)
      {
        objc_enumerationMutation(v42);
      }

      v47 = *(*(&v78 + 1) + 8 * v46);
      v48 = [v47 groupID];
      v49 = [v48 isEqual:*(v62 + 72)];

      if (v49)
      {
        break;
      }

      if (v44 == ++v46)
      {
        v44 = [v42 countByEnumeratingWithState:&v78 objects:v92 count:16];
        if (v44)
        {
          goto LABEL_48;
        }

        goto LABEL_54;
      }
    }

    v50 = v47;

    if (!v50)
    {
      goto LABEL_57;
    }

    v51 = *(v62 + 80);
    v52 = [v50 groupMembers];
    v53 = [v52 allKeys];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_10041C2F8;
    v72[3] = &unk_100BDB780;
    v73 = v50;
    v74 = *(v62 + 56);
    v75 = *(v62 + 88);
    v76 = *(v62 + 72);
    v77 = *(v62 + 104);
    v54 = v50;
    [v51 _participantsForDestinations:v53 completion:v72];
  }

  else
  {
LABEL_54:

LABEL_57:
    v55 = +[ENLog groupContext];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      sub_10091D7F8();
    }

    (*(*(v62 + 104) + 16))();
  }
}

void sub_10041C2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [[IDSConversationGroupCypher alloc] initWithConversationGroup:*(a1 + 32) deviceIdentity:*(a1 + 40) participants:v3];
  v4 = [_ENGroupInfo alloc];
  v5 = [*(a1 + 48) accountIdentity];
  v6 = [*(a1 + 32) applicationData];
  v7 = [v4 initWithAccountIdentity:v5 paricipants:v3 sharedApplicationData:v6];

  v8 = [[ENGroup alloc] initWithGroupInfo:v7 groupID:*(a1 + 56) cypher:v9];
  (*(*(a1 + 64) + 16))();
}

void sub_10041D104(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [ENParticipant participantsByAlias:v3];
    v5 = [*(a1 + 32) sponsorAlias];
    v6 = [v4 objectForKeyedSubscript:v5];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    v37 = a1;
    if (v7)
    {
      v8 = v7;
      v33 = v4;
      v34 = v3;
      v9 = *v48;
      v35 = *v48;
      while (2)
      {
        v10 = 0;
        v36 = v8;
        do
        {
          if (*v48 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * v10);
          v12 = [v11 accountPublicKey];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v14 = [v11 accountPublicKey];
            v39 = [*(a1 + 32) conversationKey];
            v15 = [*(a1 + 40) data];
            v16 = [*(a1 + 40) publicKeyData];
            v17 = [*(a1 + 40) signature];
            v18 = [*(a1 + 40) groupID];
            v19 = [*(a1 + 40) forwardingTicket];
            v20 = [v14 signingIdentity];
            v46 = 0;
            v21 = v15;
            v22 = [IDSMPConversationGroup conversationGroupWithConversationKey:v39 fromPublicData:v15 publicKey:v16 signature:v17 groupID:v18 parent:0 parentPublicKey:0 forwardingTicket:v19 sponsor:v20 error:&v46];
            v23 = v46;

            if (v22)
            {

              goto LABEL_21;
            }

            v24 = +[ENLog groupContext];
            a1 = v37;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              v26 = *(v37 + 40);
              v25 = *(v37 + 48);
              v27 = *(v37 + 32);
              *buf = 138544130;
              v52 = v25;
              v53 = 2114;
              v54 = v26;
              v55 = 2114;
              v56 = v27;
              v57 = 2114;
              v58 = v14;
              _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Failed group->groupPublicData -- Failed to create group {error: %{public}@, entry: %{public}@, pair: %{public}@, sponsor: %{public}@}", buf, 0x2Au);
            }

            v9 = v35;
            v8 = v36;
          }

          else
          {
            v14 = +[ENLog groupContext];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v52 = v11;
              _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Failed group->groupPublicData -- Unexpected sponsor accountKeyClass {sponsor: %{public}@}", buf, 0xCu);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_21:
      v4 = v33;
      v3 = v34;
    }

    else
    {
      v22 = 0;
    }

    v29 = [v22 groupMembers];
    v30 = *(v37 + 56);
    v31 = [v29 allKeys];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10041D5F8;
    v40[3] = &unk_100BDB780;
    v41 = v22;
    v42 = *(v37 + 64);
    v43 = *(v37 + 72);
    v44 = *(v37 + 40);
    v45 = *(v37 + 80);
    v32 = v22;
    [v30 _participantsForDestinations:v31 completion:v40];
  }

  else
  {
    v28 = +[ENLog groupContext];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_10091DB70();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void sub_10041D5F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[IDSConversationGroupCypher alloc] initWithConversationGroup:*(a1 + 32) deviceIdentity:*(a1 + 40) participants:v3];
  v5 = [_ENGroupInfo alloc];
  v6 = [*(a1 + 48) accountIdentity];
  v7 = [*(a1 + 32) applicationData];
  v8 = [v5 initWithAccountIdentity:v6 paricipants:v3 sharedApplicationData:v7];

  v9 = [ENGroup alloc];
  v10 = [*(a1 + 56) groupID];
  v11 = [v9 initWithGroupInfo:v8 groupID:v10 cypher:v4];

  v12 = +[ENLog groupContext];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v14 = 138477827;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "group->groupPublicData -- Success {group: %{private}@}", &v14, 0xCu);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10041F570(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10041F680;
  block[3] = &unk_100BDB870;
  v12 = *(a1 + 40);
  v13 = v5;
  v8 = *(a1 + 32);
  v14 = v6;
  v15 = v8;
  v18 = *(a1 + 64);
  v17 = *(a1 + 56);
  v16 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_10041F680(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138412802;
    v33 = v3;
    v34 = 2112;
    v35 = v4;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed CloudKit zone fetch {zoneID: %@, recordZonesByID: %@, fetchError: %@}", buf, 0x20u);
  }

  v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
  [*(a1 + 56) setCachedRecordZone:v6];

  v8 = (a1 + 48);
  v7 = *(a1 + 48);
  if (!v7)
  {
    goto LABEL_20;
  }

  if ([v7 code] == 2)
  {
    v9 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CloudKit zone not found -- creating it", buf, 2u);
    }

    if (qword_100CBD2E8 != -1)
    {
      sub_10091E160();
    }

    v10 = qword_100CBD2E0;
    if (!qword_100CBD2E0)
    {
      v11 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_10091E188();
      }

      v10 = qword_100CBD2E0;
    }

    v12 = [[v10 alloc] initWithZoneID:*(a1 + 32)];
    v13 = objc_alloc(sub_10041FAA4());
    v31 = v12;
    v14 = [NSArray arrayWithObjects:&v31 count:1];
    v15 = [v13 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

    v16 = [*(a1 + 56) container];
    v17 = [v15 configuration];
    [v17 setContainer:v16];

    if (*(a1 + 80) == 1)
    {
      v18 = [v15 configuration];
      [v18 setDiscretionaryNetworkBehavior:0];
    }

    v19 = *(a1 + 72);
    v20 = [v15 configuration];
    [v20 setTimeoutIntervalForRequest:v19];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10041FB28;
    v29[3] = &unk_100BDB848;
    v21 = *(a1 + 64);
    v29[4] = *(a1 + 56);
    v30 = v21;
    [v15 setModifyRecordZonesCompletionBlock:v29];
    v22 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Starting CloudKit operation to create KT zone {operation: %@}", buf, 0xCu);
    }

    v23 = [*(a1 + 56) database];
    [v23 addOperation:v15];

    return;
  }

  if (*v8 && [*v8 code] != 2)
  {
    v27 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10091E0F0();
    }

    v28 = *(a1 + 64);
    if (v28)
    {
      v26 = *(v28 + 16);
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
    v24 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "CloudKit zone exists -- no need to create it", buf, 2u);
    }

    v25 = *(a1 + 64);
    if (v25)
    {
      v26 = *(v25 + 16);
LABEL_24:
      v26();
    }
  }
}

id sub_10041FAA4()
{
  if (qword_100CBD308 != -1)
  {
    sub_10091E20C();
  }

  v0 = qword_100CBD300;
  if (!qword_100CBD300)
  {
    v1 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10091E220();
    }

    v0 = qword_100CBD300;
  }

  return v0;
}

void sub_10041FB28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10041FC3C;
  block[3] = &unk_100BDA848;
  v17 = v7;
  v18 = v8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v19 = v9;
  v20 = v11;
  v21 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v10, block);
}

uint64_t sub_10041FC3C(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed CloudKit zone modification (save) operation {savedRecordZones: %@, deletedRecordZoneIDs: %@, modifyError: %@}", &v12, 0x20u);
  }

  v6 = [*(a1 + 32) firstObject];
  [*(a1 + 56) setCachedRecordZone:v6];

  v7 = *(a1 + 48);
  v8 = +[IDSFoundationLog KeyTransparency];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10091E2A4();
    }

    result = *(a1 + 64);
    if (result)
    {
      v11 = *(result + 16);
      return v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully created CloudKit zone", &v12, 2u);
    }

    result = *(a1 + 64);
    if (result)
    {
      v11 = *(result + 16);
      return v11();
    }
  }

  return result;
}

void sub_100420114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100420148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100420208;
  v7[3] = &unk_100BDB910;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100420208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004202AC;
  v4[3] = &unk_100BDB8E8;
  v6 = *(a1 + 56);
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _no_timeout_verifyEncryptionPrerequisitesWithCompletion:v4];
}

void sub_1004202AC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v8 = v6;
  if (v6)
  {
    v7 = [*(a1 + 32) _clientErrorWithCode:-1000 debugDescription:@"Unable to fetch CloudKit account info" underlyingError:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);
  if (v8)
  {
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100420360(uint64_t a1, int a2)
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Account device-to-device encryption eligibility task final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004204C8;
  block[3] = &unk_100BDB960;
  v12 = a2;
  block[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  v11 = *(a1 + 56);
  dispatch_async(v6, block);
}

uint64_t sub_1004204C8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) _clientErrorWithCode:-4000 debugDescription:@"Timed out fetching account key transparency eligibility." underlyingError:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_100420680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100420768;
  block[3] = &unk_100BD8CB0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_100420768(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceToDeviceEncryptionAvailability];
  v3 = [*(a1 + 32) supportsDeviceToDeviceEncryption];
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v3)
    {
      v5 = @"YES";
    }

    v9 = 138413058;
    v10 = v5;
    v11 = 2048;
    v12 = v2;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed CloudKit container account info fetch {supportsDeviceToDeviceEncryption: %@, deviceToDeviceEncryptionStatus: %ld, accountInfo: %@, accountInfoError: %@}", &v9, 0x2Au);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100420C10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100420D14;
  block[3] = &unk_100BDBA20;
  v11 = *(a1 + 32);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v11;
  v14 = v8;
  v9 = *(a1 + 64);
  v15 = v3;
  v16 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void sub_100420D14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100420DC4;
  v7[3] = &unk_100BDB9F8;
  v6 = *(a1 + 64);
  v5 = v6;
  v8 = v6;
  [v1 _no_timeout_upsertKeyTransparencyDeviceRecord:v2 recordsToModify:v3 recordsToDelete:v4 completion:v7];
}

void sub_100420DC4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100420E2C(uint64_t a1, int a2)
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trusted device upsert task final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100420F8C;
  block[3] = &unk_100BDBA70;
  v11 = a2;
  block[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  dispatch_async(v6, block);
}

uint64_t sub_100420F8C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) _clientErrorWithCode:-4000 debugDescription:@"Timed out upserting key transparency device record" underlyingError:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1004212A4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1004214B0;
    v23[3] = &unk_100BDBB58;
    v26 = *(a1 + 64);
    v22 = *(a1 + 32);
    v10 = *(&v22 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v24 = v22;
    v25 = v13;
    v28 = *(a1 + 80);
    v27 = *(a1 + 72);
    [v7 _createZoneIfNeededUsingTimeIntervalForRequest:v9 isNonDiscretionary:v23 completion:v8];

    v14 = v26;
LABEL_13:

    goto LABEL_14;
  }

  v15 = +[IDSFoundationLog KeyTransparency];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device to device encryption is not currently able to be determined for this CloudKit container -- not upserting trusted device record", buf, 2u);
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = @"Failed to fetch device-to-device encryption availability status";
      v20 = -1000;
      v21 = v6;
LABEL_12:
      v14 = [v18 _clientErrorWithCode:v20 debugDescription:v19 underlyingError:v21];
      (*(v17 + 16))(v17, v14);
      goto LABEL_13;
    }
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device to device encryption is not currently available for this CloudKit container -- not upserting trusted device record", buf, 2u);
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = @"Device-to-device encryption is not available";
      v20 = -3000;
      v21 = 0;
      goto LABEL_12;
    }
  }

LABEL_14:
}

void sub_1004214B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [*(a1 + 32) _cloudKitRecordForDeviceRecord:*(a1 + 40)];
    if (v7)
    {
      [v6 addObject:v7];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = *(a1 + 48);
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(a1 + 32) _cloudKitRecordForDeviceRecord:*(*(&v37 + 1) + 8 * i)];
            [v6 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v10);
      }

      v14 = *(a1 + 56);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10042194C;
      v36[3] = &unk_100BDBAE0;
      v36[4] = *(a1 + 32);
      v15 = [v14 __imArrayByApplyingBlock:v36];
      if (qword_100CBD318 != -1)
      {
        sub_10091E350();
      }

      v16 = qword_100CBD310;
      if (!qword_100CBD310)
      {
        v17 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_10091E378();
        }

        v16 = qword_100CBD310;
      }

      v18 = [[v16 alloc] initWithRecordsToSave:v6 recordIDsToDelete:v15];
      [v18 setSavePolicy:2];
      v19 = [*(a1 + 32) container];
      v20 = [v18 configuration];
      [v20 setContainer:v19];

      if (*(a1 + 80) == 1)
      {
        v21 = [v18 configuration];
        [v21 setDiscretionaryNetworkBehavior:0];
      }

      v22 = *(a1 + 72);
      v23 = [v18 configuration];
      [v23 setTimeoutIntervalForRequest:v22];

      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_100421958;
      v32 = &unk_100BDBB30;
      v33 = *(a1 + 32);
      v35 = *(a1 + 64);
      v34 = *(a1 + 40);
      [v18 setModifyRecordsCompletionBlock:&v29];
      v24 = [IDSFoundationLog KeyTransparency:v29];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting CloudKit operation to modify (save) KT record {operation: %@}", buf, 0xCu);
      }

      v25 = [*(a1 + 32) database];
      [v25 addOperation:v18];
    }

    else
    {
      v26 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10091E3FC();
      }

      v27 = *(a1 + 64);
      if (v27)
      {
        v28 = [*(a1 + 32) _clientErrorWithCode:-2000 debugDescription:@"Unable to create CloudKit record for provided device record" underlyingError:0];
        (*(v27 + 16))(v27, v28);
      }
    }

    goto LABEL_30;
  }

  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10091E314();
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = [*(a1 + 32) _clientErrorWithCode:-1000 debugDescription:0 underlyingError:v3];
    (*(v5 + 16))(v5, v6);
LABEL_30:
  }
}

void sub_100421958(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100421A84;
  v15[3] = &unk_100BDBB08;
  v16 = v7;
  v17 = v8;
  v11 = a1[4];
  v18 = v9;
  v19 = v11;
  v21 = a1[6];
  v20 = a1[5];
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_100421A84(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed CloudKit save record operation {savedRecords: %@, deletedRecordIDs: %@, operationError: %@}", &v12, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = +[IDSFoundationLog KeyTransparency];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10091E46C();
    }

    [*(a1 + 56) setCachedRecordZone:0];
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = [*(a1 + 56) _clientErrorWithCode:-1000 debugDescription:0 underlyingError:*(a1 + 48)];
      (*(v9 + 16))(v9, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CloudKit save operation for trusted device succeeded", &v12, 2u);
    }

    [*(a1 + 56) setLastSuccessfulUpsertDeviceRecord:*(a1 + 64)];
    v11 = *(a1 + 72);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }
}

void sub_100421F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100421F94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100422050;
  block[3] = &unk_100BDAA68;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100422050(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004220E8;
  v4[3] = &unk_100BDB9F8;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _no_timeout_nukeKeyTransparencyDeviceRecordsWithCompletion:v4];
}

void sub_1004220E8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100422150(uint64_t a1, int a2)
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Key transparency device record nuke task final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004222B0;
  block[3] = &unk_100BDBA70;
  v11 = a2;
  block[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  dispatch_async(v6, block);
}

uint64_t sub_1004222B0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) _clientErrorWithCode:-4000 debugDescription:@"Timed out nuking key transparency device records" underlyingError:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_100422630(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100422748;
  block[3] = &unk_100BD9620;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v11 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, block);
}

void sub_100422748(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed CloudKit zone modification (delete) operation {savedRecordZones: %@, deletedRecordZoneIDs: %@, modifyError: %@}", &v12, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = +[IDSFoundationLog KeyTransparency];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10091E4DC();
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = [*(a1 + 56) _clientErrorWithCode:-1000 debugDescription:0 underlyingError:*(a1 + 48)];
      (*(v9 + 16))(v9, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully deleted CloudKit zone", &v12, 2u);
    }

    v11 = *(a1 + 64);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }
}

void sub_100422BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100422C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100422CCC;
  v7[3] = &unk_100BDB910;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100422CCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100422D6C;
  v4[3] = &unk_100BDBBC8;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _no_timeout_fetchKeyTransparencyDeviceRecordsWithCompletion:v4];
}

void sub_100422D6C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[4] + 16))();
}

void sub_100422E10(uint64_t a1, int a2)
{
  v4 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Key transparency device record fetch task final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100422F78;
  block[3] = &unk_100BDB960;
  v12 = a2;
  block[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  v11 = *(a1 + 56);
  dispatch_async(v6, block);
}

uint64_t sub_100422F78(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) _clientErrorWithCode:-4000 debugDescription:@"Timed out fetching key transparency device records" underlyingError:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

id sub_1004233E8(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) currentDeviceRecordsPromise];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing cached promise for key transparency device records {promise: %@}", &v5, 0xCu);
  }

  return [*(a1 + 32) setCurrentDeviceRecordsPromise:0];
}

void sub_1004234BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 state];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [v4 error];

    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    v8 = [v4 value];

    (*(v7 + 16))(v7, v8, 0);
  }
}

void sub_100423718(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1004238B4;
    v20[3] = &unk_100BDBCD8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v21 = v10;
    v22 = v11;
    v24 = *(a1 + 56);
    v23 = *(a1 + 48);
    [v9 _createZoneIfNeededUsingTimeIntervalForRequest:v8 isNonDiscretionary:v20 completion:v7];
    v12 = v21;
  }

  else
  {
    v13 = +[IDSFoundationLog KeyTransparency];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device to device encryption is not currently available for this CloudKit container -- not fetching trusted device record", buf, 2u);
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = @"Failed to fetch device-to-device encryption availability status";
      v18 = -1000;
      v19 = v6;
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device to device encryption is not currently available for this CloudKit container -- not fetching trusted device record", buf, 2u);
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = @"Device-to-device encryption is not available";
      v18 = -3000;
      v19 = 0;
    }

    v12 = [v15 _clientErrorWithCode:v18 debugDescription:v17 underlyingError:v19];
    [v16 failWithError:v12];
  }
}

void sub_1004238B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10091E54C();
    }

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) _clientErrorWithCode:-1000 debugDescription:0 underlyingError:v3];
    [v5 failWithError:v6];
  }

  else
  {
    v6 = [NSPredicate predicateWithValue:1];
    if (qword_100CBD328 != -1)
    {
      sub_10091E588();
    }

    v7 = qword_100CBD320;
    if (!qword_100CBD320)
    {
      v8 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10091E59C();
      }

      v7 = qword_100CBD320;
    }

    v9 = [v7 alloc];
    v10 = [*(a1 + 40) _recordType];
    v11 = [v9 initWithRecordType:v10 predicate:v6];

    if (qword_100CBD338 != -1)
    {
      sub_10091E620();
    }

    v12 = qword_100CBD330;
    if (!qword_100CBD330)
    {
      v13 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_10091E648();
      }

      v12 = qword_100CBD330;
    }

    v14 = [[v12 alloc] initWithQuery:v11];
    v15 = [*(a1 + 40) _zoneID];
    [v14 setZoneID:v15];

    v16 = [*(a1 + 40) container];
    v17 = [v14 configuration];
    [v17 setContainer:v16];

    if (*(a1 + 56) == 1)
    {
      v18 = [v14 configuration];
      [v18 setDiscretionaryNetworkBehavior:0];
    }

    v19 = *(a1 + 48);
    v20 = [v14 configuration];
    [v20 setTimeoutIntervalForRequest:v19];

    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_10000A974;
    v31[4] = sub_10000BC2C;
    v32 = objc_alloc_init(NSMutableArray);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100423D28;
    v30[3] = &unk_100BDBC38;
    v30[4] = *(a1 + 40);
    v30[5] = v31;
    [v14 setRecordFetchedBlock:v30];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100423F0C;
    v26[3] = &unk_100BDBCB0;
    v29 = v31;
    v25 = *(a1 + 32);
    v21 = v25.i64[0];
    v27 = vextq_s8(v25, v25, 8uLL);
    v22 = v11;
    v28 = v22;
    [v14 setQueryCompletionBlock:v26];
    v23 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = v22;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Starting CloudKit operation to query KT records {query: %@, operation: %@}", buf, 0x16u);
    }

    v24 = [*(a1 + 40) database];
    [v24 addOperation:v14];

    _Block_object_dispose(v31, 8);
  }
}

void sub_100423D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100423D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100423DE0;
  v7[3] = &unk_100BD9038;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

id sub_100423DE0(uint64_t a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 encryptedValues];
    v5 = [v4 objectForKeyedSubscript:@"IDSKTDevice"];
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"IDSKTMetadata"];
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetched CloudKit record of trusted device {record: %@, device: %@, deviceMetadata: %@}", &v8, 0x20u);
  }

  return [*(*(*(a1 + 40) + 8) + 40) addObject:*(a1 + 32)];
}

void sub_100423F0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10042402C;
  block[3] = &unk_100BDBC88;
  v15 = v6;
  v16 = v5;
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 40);
  *(&v9 + 1) = *(a1 + 32);
  v13 = v9;
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  v17 = v13;
  v18 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

void sub_10042402C(void *a1)
{
  v2 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = *(*(a1[9] + 8) + 40);
    *buf = 138412802;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed CloudKit query for trusted devices {queryError: %@, cursor: %@ results: %@}", buf, 0x20u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = a1;
  v6 = *(*(a1[9] + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 encryptedValues];
          v14 = [v13 objectForKeyedSubscript:@"IDSKTDevice"];
          v15 = [v11 objectForKeyedSubscript:@"IDSKTMetadata"];
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found device data from CloudKit record {device: %@, deviceMetadata: %@}", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v16 = v23[4];
  if (v16)
  {
    if ([v16 code] == 11)
    {
LABEL_21:
      [v23[6] fulfillWithValue:&__NSArray0__struct];
      return;
    }

    if (v23[4])
    {
      goto LABEL_16;
    }
  }

  if (![*(*(v23[9] + 8) + 40) count])
  {
    goto LABEL_21;
  }

LABEL_16:
  if ([*(*(v23[9] + 8) + 40) count])
  {
    v17 = *(*(v23[9] + 8) + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1004243B8;
    v24[3] = &unk_100BDBC60;
    v24[4] = v23[7];
    v18 = [v17 __imArrayByApplyingBlock:v24];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = &__NSArray0__struct;
    }

    [v23[6] fulfillWithValue:v19];
  }

  else
  {
    v20 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10091E6CC();
    }

    [v23[7] setCachedRecordZone:0];
    v21 = v23[6];
    v22 = [v23[7] _clientErrorWithCode:-1000 debugDescription:0 underlyingError:v23[4]];
    [v21 failWithError:v22];
  }
}

void sub_100424E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100424EE8;
  block[3] = &unk_100BD6E18;
  v9 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100424EE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[IDSFoundationLog KeyTransparency];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to force sync KVS.", buf, 2u);
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) _clientErrorWithCode:-5000 debugDescription:@"Failed to sync KVS." underlyingError:*(a1 + 32)];
    [v5 failWithError:v6];
  }

  else
  {
    if (v4)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully force synced KVS.", v8, 2u);
    }

    v7 = *(a1 + 40);
    v6 = +[NSNull null];
    [v7 fulfillWithValue:v6];
  }
}

double sub_1004251A4(void *a1, uint64_t a2, double a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      a3 = v5;
    }
  }

  return a3;
}

id sub_100425210(void *a1, id a2)
{
  v3 = [a1 objectForKey:?];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = [v3 BOOLValue];
    }
  }

  return a2;
}

void sub_100425270(id a1)
{
  if (!qword_100CBD290)
  {
    v2 = IMWeakLinkSymbol();
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&qword_100CBD290, v3);
  }
}

void sub_1004254C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_100425E0C(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315651;
    v5 = "IDSIMLFanoutFactoryComponent.m";
    v6 = 1024;
    v7 = 85;
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d %{private}@", &v4, 0x1Cu);
  }
}

void sub_100426518(id a1)
{
  v1 = objc_alloc_init(IDSDaemon);
  v2 = qword_100CBD348;
  qword_100CBD348 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10042795C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) intValue];

  return [v1 _pidSuspended:v2];
}

void sub_100427998(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _cleanupIncomingFilesDirectories];
  [*(a1 + 32) _resetPreferences];
  v3 = [*(a1 + 32) uTunDeliveryController];
  [v3 setDelegate:*(a1 + 32)];

  v4 = [*(a1 + 32) rapportDeliveryController];
  [v4 setDelegate:*(a1 + 32)];

  v5 = [*(a1 + 32) registrationController];
  v6 = [*(a1 + 32) registrationPushManager];
  v7 = [*(a1 + 32) centralRegListener];
  v8 = [*(a1 + 32) accountController];
  [v8 loadStoredAccounts];

  v9 = [IDSDSignInResponder alloc];
  v10 = [*(*(a1 + 32) + 568) userStore];
  v11 = [(IDSDSignInResponder *)v9 initWithUserStore:v10];
  v12 = *(a1 + 32);
  v13 = *(v12 + 416);
  *(v12 + 416) = v11;

  v14 = [*(a1 + 32) deviceHeartbeatCenter];
  [v14 setup];

  v15 = [*(a1 + 32) pairingManager];
  [v15 addDelegate:*(a1 + 32)];

  v16 = [*(a1 + 32) encryptionController];
  v17 = [*(a1 + 32) sessionController];
  v18 = +[IDSQuickRelayAllocator sharedInstance];
  v19 = [*(a1 + 32) currentDevice];
  v20 = +[IDSClientChannelManager sharedInstance];
  v21 = +[IDSLocalMultiplexer sharedInstance];
  v22 = +[IDSGroupAgent sharedInstance];
  v23 = +[IDSDuetInterface sharedInstance];
  [v23 setDelegate:*(a1 + 32)];

  [*(a1 + 32) _registerForCheckpointAndVacuumDB];
  v24 = +[IDSAWDLogging sharedInstance];
  v25 = [v24 AWDServerConnection];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100428260;
  v67[3] = &unk_100BDBEE0;
  v26 = v24;
  v68 = v26;
  [v25 registerQueriableMetric:2555929 callback:v67];

  [*(a1 + 32) registerForRegistrationAccountStatusMetric];
  [*(a1 + 32) registerForRegistrationEventTrackCleanup];
  [*(a1 + 32) registerForSenderKeyCleanup];
  [*(a1 + 32) registerForQueryDBCleanup];
  [*(a1 + 32) _registerForDailyMetricReporting];
  v27 = [*(a1 + 32) idStatusQueryController];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100428268;
  v66[3] = &unk_100BDBF08;
  v66[4] = *(a1 + 32);
  [v27 addCompletionBlock:v66 forUniqueIdentifier:@"IDSDaemon"];

  v28 = +[IDSPeerIDManager sharedInstance];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1004284B0;
  v65[3] = &unk_100BDBF30;
  v65[4] = *(a1 + 32);
  [v28 addClientDataUpdateBlock:v65 forToken:@"idsdaemon-peeridmanager-clientdatablock"];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Opening up the grant MIG port", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v30 = [*(a1 + 32) daemonMIGInterface];
    [v30 setDelegate:*(a1 + 32)];
    [v30 acceptIncomingGrantRequests];
    if (IMGetDomainBoolForKeyWithDefaultValue())
    {
      [v30 launchSim2HostServer];
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Opening up the NSXPC Interface", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v32 = [*(a1 + 32) daemonXPCInterface];
    v33 = [*(a1 + 32) daemonMIGQueryInterface];
    [v33 setDelegate:*(a1 + 32)];
    [v33 acceptIncomingGrantRequests];
    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Now accepting query grants, setup complete", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v35 = +[IMUserDefaults sharedDefaults];
  v36 = [v35 clearStateOnLaunch];

  if (v36)
  {
    v37 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Found default to clear IDS state on launch", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [*(a1 + 32) _clearIDSState];
  }

  v38 = [*(a1 + 32) messageStoreMigrator];
  [*(a1 + 32) _processStoredMessagesIncludingClassD:1];
  v39 = [*(a1 + 32) serverStorageStateMachine];
  [v39 reissuePersistedRequests];

  [*(a1 + 32) _startPushHandlingLocked];
  v40 = [*(a1 + 32) pushHandlerForAPSDelegatePort];
  [v40 setShouldWaitToSetTopics:0];

  [*(a1 + 32) _registerForNetworkAvailableNotification];
  v41 = [*(a1 + 32) activityStateMonitor];
  [v41 setup];

  im_dispatch_after_primary_queue();
  v42 = [*(a1 + 32) familyManager];
  v43 = objc_alloc_init(IDSInvitationStore);
  v44 = *(a1 + 32);
  v45 = *(v44 + 448);
  *(v44 + 448) = v43;

  v46 = [IDSPersistentMap alloc];
  v47 = objc_opt_class();
  v48 = [NSSet setWithObjects:v47, objc_opt_class(), 0];
  v49 = [(IDSPersistentMap *)v46 initWithIdentifier:@"com.apple.identityservicesd.waking-push-priority" versionNumber:1 decodableClasses:v48 migrationBlock:0];
  v50 = *(a1 + 32);
  v51 = *(v50 + 456);
  *(v50 + 456) = v49;

  v52 = objc_alloc_init(IDSFirewallNotificationCenter);
  v53 = *(a1 + 32);
  v54 = *(v53 + 464);
  *(v53 + 464) = v52;

  v55 = objc_alloc_init(IDSBlastDoorConnectionHelper);
  v56 = *(a1 + 32);
  v57 = *(v56 + 472);
  *(v56 + 472) = v55;

  v58 = objc_alloc_init(NSMutableDictionary);
  v59 = *(a1 + 32);
  v60 = *(v59 + 488);
  *(v59 + 488) = v58;

  v61 = objc_alloc_init(IDSContactsUtilities);
  v62 = *(a1 + 32);
  v63 = *(v62 + 480);
  *(v62 + 480) = v61;

  [*(a1 + 32) _setupRestrictedMessageCleanupTimer];
  [*(a1 + 32) _registerSysdiagnoseBlock];
  +[IDSTemporaryPhoneAlertManager clearFollowups];

  objc_autoreleasePoolPop(v2);
}

void sub_100428268(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v28 = 0;
  v15 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v28];
  v16 = v28;
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"NO";
    *buf = 138413570;
    v30 = v11;
    if (a5)
    {
      v18 = @"YES";
    }

    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v18;
    v37 = 2112;
    v38 = v14;
    v39 = 2112;
    v40 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Got id query completed with updates %@ fromURI %@ service %@ success %@ error %@ encodeError %@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = @"NO";
    if (a5)
    {
      v19 = @"YES";
    }

    v26 = v14;
    v27 = v16;
    v24 = v13;
    v25 = v19;
    v22 = v11;
    v23 = v12;
    _IDSLogV();
  }

  v20 = [*(a1 + 32) broadcasterWithMessageContext:{0, v22, v23, v24, v25, v26, v27}];
  v21 = [v12 prefixedURI];
  [v20 IDQueryCompletedWithFromURI:v21 idStatusUpdates:v15 service:v13 success:a5 error:v14];
}

void sub_1004284B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) serviceController];
  v14 = [v13 serviceWithIdentifier:v9];
  v15 = [v14 shouldHaveRestrictedStorage];

  if (!v15)
  {
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v12 pushToken];
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding identity to last resort cache for token %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v27 = [v12 pushToken];
      _IDSLogV();
    }

    v21 = +[IDSPublicIdentityCache sharedInstance];
    v22 = [v12 publicDeviceIdentityContainer];
    v23 = [v12 pushToken];
    v24 = [v12 URI];
    v29 = 0;
    [v21 addIdentity:v22 forToken:v23 uri:v24 service:v9 error:&v29];
    v18 = v29;

    if (v18)
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v12 pushToken];
        *buf = 138412546;
        v31 = v26;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Error adding identity to last resort cache { token: %@, error: %@ }", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v28 = [v12 pushToken];
        _IDSLogV();
      }
    }

    goto LABEL_18;
  }

  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 pushTokenObject];
    *buf = 138412546;
    v31 = v17;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not adding identity to last resort cache for token %@ service: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = [v12 pushTokenObject];
    _IDSLogV();
LABEL_18:
  }
}

void sub_100428874(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1004287D0);
  }

  _Unwind_Resume(a1);
}

void sub_1004288C8(uint64_t a1)
{
  [*(a1 + 32) _cleanUpOutgoingMessageDatabaseAndClearStatementCache];
  [*(a1 + 32) _cleanupIncomingMessageDatabase];
  v2 = [*(*(a1 + 32) + 424) negativeRegistrationUpdateCache];
  [v2 cleanupExpiredItems];

  v3 = +[IDSPublicIdentityCache sharedInstance];
  v6 = 0;
  [v3 cleanupWithError:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error cleaning last resort cache { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_100428A30(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = +[NSMutableString string];
  v4 = +[IMUserDefaults sharedDefaults];
  v5 = [v4 copyMultipleForCurrentKeys:0 appID:@"com.apple.conference"];
  [v11 appendFormat:@"Conference Prefs %@", v5];

  v6 = +[IMUserDefaults sharedDefaults];
  v7 = [v6 copyMultipleForCurrentKeys:0 appID:@"com.apple.ids"];
  [v11 appendFormat:@"IDS Prefs %@", v7];

  v8 = +[IMUserDefaults sharedDefaults];
  v9 = [v8 copyMultipleForCurrentKeys:0 appID:kCFPreferencesCurrentApplication];
  [v11 appendFormat:@"IDSD Prefs %@", v9];

  v10 = [*(*(a1 + 32) + 488) allValues];
  [v11 appendFormat:@"Pending replay blocks for guids %@", v10];

  v3[2](v3, v11);
}

NSString *__cdecl sub_100428BA8(id a1)
{
  v1 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[IMUserDefaults sharedDefaults];
    v3 = [v2 copyMultipleForCurrentKeys:0 appID:@"com.apple.conference"];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Conference Prefs %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v4 = +[IMUserDefaults sharedDefaults];
    v14 = [v4 copyMultipleForCurrentKeys:0 appID:@"com.apple.conference"];
    _IDSLogV();
  }

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[IMUserDefaults sharedDefaults];
    v7 = [v6 copyMultipleForCurrentKeys:0 appID:@"com.apple.ids"];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS Prefs %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = +[IMUserDefaults sharedDefaults];
    v15 = [v8 copyMultipleForCurrentKeys:0 appID:@"com.apple.ids"];
    _IDSLogV();
  }

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[IMUserDefaults sharedDefaults];
    v11 = [v10 copyMultipleForCurrentKeys:0 appID:kCFPreferencesCurrentApplication];
    *buf = 138412290;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSD Prefs %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = +[IMUserDefaults sharedDefaults];
    v16 = [v12 copyMultipleForCurrentKeys:0 appID:kCFPreferencesCurrentApplication];
    _IDSLogV();
  }

  return 0;
}

void sub_100428F40(id a1, id a2)
{
  v29 = a2;
  v2 = +[NSMutableString string];
  [v2 appendString:@"===============================REGISTRATION SUMMARIES===============================\n"];
  v3 = +[IDSRegistrationEventTracing sharedInstance];
  v4 = [v3 fetchLastRegistrationStatesForServices:&__NSArray0__struct summary:1];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v10 = [obj objectForKeyedSubscript:v9];
        [v2 appendFormat:@"============================== Found %lu registrations for %@ ==============================\n", objc_msgSend(v10, "count"), v9];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v41;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v41 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v2 appendFormat:@"%@\n", *(*(&v40 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v13);
        }

        [v2 appendString:@"\n"];
      }

      v6 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v6);
  }

  [v2 appendString:@"===============================REGISTRATION TRACES===============================\n"];
  v16 = +[IDSRegistrationEventTracing sharedInstance];
  v17 = [v16 fetchLastRegistrationStatesForServices:&__NSArray0__struct summary:0];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v30 = *v37;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v36 + 1) + 8 * k);
        v23 = [v18 objectForKeyedSubscript:v22];
        [v2 appendFormat:@"============================== Found %lu registrations for %@ ==============================\n", objc_msgSend(v23, "count"), v22];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v33;
          do
          {
            for (m = 0; m != v26; m = m + 1)
            {
              if (*v33 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [v2 appendFormat:@"%@\n", *(*(&v32 + 1) + 8 * m)];
              [v2 appendString:@"==============================\n"];
            }

            v26 = [v24 countByEnumeratingWithState:&v32 objects:v48 count:16];
          }

          while (v26);
        }

        [v2 appendString:@"\n"];
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }

  v29[2](v29, v2);
}

void sub_100429454(id a1)
{
  v1 = +[IDSUTunDeliveryController sharedInstance];
  [v1 defaultPeerSetLinkPreferences:@"dummyService"];
}

uint64_t sub_100429C64(uint64_t a1)
{
  ids_monotonic_time();
  v3 = v2;
  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtPath:*(a1 + 32) error:0];

  ids_monotonic_time();
  v6 = v5;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v6 - v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delayed background file removal took %0.6lf seconds", buf, 0xCu);
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

void sub_10042CB1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 buf)
{
  if (a2 == 1)
  {
    v31 = objc_begin_catch(a1);

    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Exception generating setup information for listener: %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x10042C920);
  }

  _Unwind_Resume(a1);
}

void sub_10042CDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10042CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10042CEF8(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) client:a2 isEntitledToAccessService:*(a1 + 40) forEntitlement:*(a1 + 48) shouldWarn:1];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_10042D3B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v10 = [v3 remoteObject];
  v4 = [v3 services];
  v5 = [v3 notificationServices];
  v6 = [v3 entitlements];
  v7 = [v3 commands];
  v8 = [v3 capabilities];
  v9 = [v3 bundleID];

  (*(v2 + 16))(v2, v10, v4, v5, v6, v7, v8, v9);
}

void sub_10042DE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint8_t buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x10042DCB8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042E178(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Exception removing listener object: %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x10042E138);
  }

  _Unwind_Resume(a1);
}

void sub_10042E418(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Exception removing local listener object: %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x10042E3B4);
  }

  _Unwind_Resume(a1);
}

void sub_10042E704(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Exception removing local listener object: %@", &buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x10042E6C4);
  }

  _Unwind_Resume(a1);
}

void sub_10042ED80(uint64_t a1)
{
  v2 = +[IDSUTunDeliveryController sharedInstance];
  [v2 defaultPeerSetLinkPreferences:*(a1 + 32)];
}

void sub_10042FD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10042FD2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entitlements];
  if (*(a1 + 32))
  {
    v5 = [v3 commands];
    if ([*(a1 + 32) integerValue] == 227 || objc_msgSend(*(a1 + 32), "integerValue") == 243 || objc_msgSend(*(a1 + 32), "integerValue") == 242 || objc_msgSend(*(a1 + 32), "integerValue") == 245 || objc_msgSend(*(a1 + 32), "integerValue") == 250 || objc_msgSend(*(a1 + 32), "integerValue") == 251 || objc_msgSend(*(a1 + 32), "integerValue") == 244 || objc_msgSend(*(a1 + 32), "integerValue") == 153 || objc_msgSend(*(a1 + 32), "integerValue") == 315 || objc_msgSend(*(a1 + 32), "integerValue") == 121 || objc_msgSend(*(a1 + 32), "integerValue") == 246 || objc_msgSend(*(a1 + 32), "integerValue") == 248 || objc_msgSend(*(a1 + 32), "integerValue") == 247 || objc_msgSend(*(a1 + 32), "integerValue") == 249)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v5 containsObject:*(a1 + 32)] ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 72))
  {
    v7 = (*(a1 + 72) & ~[v3 capabilities]) != 0;
  }

  else
  {
    v7 = 0;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    if (*(a1 + 77) == 1)
    {
      [v3 notificationServices];
    }

    else
    {
      [v3 services];
    }
    v8 = ;
    v9 = v8;
    if (*(a1 + 40) && ([v8 containsObject:*(a1 + 48)] & 1) == 0)
    {
      v6 |= [v9 containsObject:IDSWildCardTopic] ^ 1;
    }
  }

  if (((v6 | v7) & 1) == 0 && [v4 hasAnyEntitlements])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([v4 hasService:*(a1 + 48) forEntitlement:{*(*(&v15 + 1) + 8 * i), v15}])
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:v3];
            goto LABEL_42;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_42:
  }
}

void sub_1004308D0(id a1, IDSIncomingMessageBroadcast *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = [(IDSIncomingMessageBroadcast *)v4 broadcastID];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "\t\tBroadcast ID: %lld\n", &v6, 0xCu);
  }
}

void sub_100431630(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1004311FCLL);
  }

  os_activity_scope_leave((v15 - 200));
  cut_arc_os_release();
  _Unwind_Resume(exc_buf);
}

uint64_t sub_100431AE8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    pthread_mutex_lock((*(a1 + 32) + 8));
    v5 = [*(a1 + 32) _lockedRemoteObjectsWithNotificationService:*(a1 + 40) entitlement:*(a1 + 48) command:*(a1 + 56) capabilities:*(a1 + 112)];
    pthread_mutex_unlock((*(a1 + 32) + 8));
    if ([v5 count])
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 104);
        v8 = *(a1 + 64);
        *buf = 134218242;
        v28 = v7;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Broadcast: Performing enqueued broadcast %lld for topic %@\n", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v25 = *(a1 + 104);
        v26 = *(a1 + 64);
        _IDSLogTransport();
      }

      v9 = [*(*(a1 + 32) + 128) broadcastProxyForTargets:v5 messageContext:*(a1 + 72) protocol:{&OBJC_PROTOCOL___IDSDaemonListenerProtocol, v25, v26}];
      (*(*(a1 + 88) + 16))();
    }

    else
    {
      v10 = *(a1 + 80);
      if (!v10 || ([v10 timeIntervalSinceNow], fabs(v11) <= 300.0))
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [WeakRetained broadcastID];
          v19 = *(a1 + 40);
          v20 = *(a1 + 48);
          v22 = *(a1 + 56);
          v21 = *(a1 + 64);
          v23 = *(a1 + 112);
          *buf = 134219266;
          v28 = v18;
          v29 = 2112;
          v30 = v21;
          v31 = 2112;
          v32 = v19;
          v33 = 2112;
          v34 = v20;
          v35 = 2112;
          v36 = v22;
          v37 = 1024;
          v38 = v23;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Broadcast: enqueued broadcast %lld of topic %@ doesn't find target with service %@ entitlement %@ command %@ capabilities %u", buf, 0x3Au);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          [WeakRetained broadcastID];
          _IDSLogTransport();
        }

        v3 = 0;
        goto LABEL_25;
      }

      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 104);
        v14 = *(a1 + 80);
        v15 = *(a1 + 64);
        *buf = 134218498;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Broadcast: Broadcast %lld enqueued at %@ has timed out - Calling timed out broadcast block for topic %@ with nil broadcaster to allow cleanup\n", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport();
      }

      (*(*(a1 + 88) + 16))(*(a1 + 88), 0, v16);
    }

    v3 = 1;
LABEL_25:

    return v3;
  }

  (*(*(a1 + 88) + 16))();
  return 1;
}

void sub_100432528(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100432484);
  }

  _Unwind_Resume(a1);
}

void sub_100432DAC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x100432C84);
  }

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(exc_buf);
}

void sub_100432E0C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 broadcastID] == *(a1 + 48))
  {
    v7 = [v9 messageUUID];
    v8 = [v7 isEqualToIgnoringCase:*(a1 + 32)];

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_1004335A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 broadcastPerformed] & 1) == 0)
  {
    v8 = [v7 broadcastBlock];
    v9 = v8[2](v8, 0);

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 broadcastID];
      v12 = *(a1 + 32);
      v13 = [v7 broadcastNeedsClientAck];
      v14 = *(a1 + 56);
      *buf = 134219010;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Broadcast: previously enqueued broadcast %lld for service %@ succeeded %d needsClientAck %d forceRetry %d \n", buf, 0x28u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      [v7 broadcastID];
      [v7 broadcastNeedsClientAck];
      _IDSLogTransport();
    }

    if (v9)
    {
      [v7 setBroadcastPerformed:1];
      if (([v7 broadcastNeedsClientAck] & 1) == 0)
      {
        [*(a1 + 40) addIndex:a3];
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void sub_100433B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 messageUUID];
    v6 = [*(a1 + 32) identifier];
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dropping %@ for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = [v3 messageUUID];
      [*(a1 + 32) identifier];
      v11 = v10 = v7;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v8 = [v3 messageUUID];
        [*(a1 + 32) identifier];
        v11 = v10 = v8;
        _IDSLogV();
      }
    }
  }

  if (([v3 broadcastPerformed] & 1) == 0)
  {
    v9 = [v3 broadcastBlock];
    v9[2](v9, 1);
  }
}

void sub_100435168(uint64_t a1, void *a2)
{
  v62 = a2;
  v63 = objc_alloc_init(NSMutableSet);
  v66 = [v62 entitlements];
  if ([v66 hasAnyEntitlements])
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = *(a1 + 32);
    v2 = [obj countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v2)
    {
      v3 = *v81;
      v4 = kIDSRegistrationEntitlement;
      v5 = kIDSSessionEntitlement;
      v6 = kIDSMessagingEntitlement;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v81 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v80 + 1) + 8 * i);
          v92[0] = v4;
          v92[1] = v5;
          v92[2] = v6;
          v9 = [NSArray arrayWithObjects:v92 count:3];
          v10 = [v66 hasService:v8 forAnyOfEntitlements:v9];

          if (v10)
          {
            [v63 addObject:v8];
          }
        }

        v2 = [obj countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v2);
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v63);
  v11 = [*(*(*(a1 + 56) + 8) + 40) copy];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v62 notificationServices];
  v15 = [v14 copy];
  v16 = *(*(a1 + 72) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(*(*(a1 + 56) + 8) + 40);
    v20 = *(a1 + 40);
    v21 = *(a1 + 80);
    *buf = 138412802;
    v87 = v19;
    v88 = 2112;
    v89 = v20;
    v90 = 1024;
    LODWORD(v91) = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Allowing listener services %@ commands %@ caps %d", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v60 = *(a1 + 40);
    v61 = *(a1 + 80);
    v59 = *(*(*(a1 + 56) + 8) + 40);
    _IDSLogV();
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412802;
    v87 = @"services";
    v88 = 2112;
    v89 = v23;
    v90 = 2112;
    v91 = v62;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Got %@ %@ for listener %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v60 = *(*(*(a1 + 56) + 8) + 40);
    v61 = v62;
    v59 = @"services";
    _IDSLogV();
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v24 = +[NSSet set];
    v25 = *(*(a1 + 56) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  if (v62)
  {
    v27 = [v62 services];
    if (([v27 isEqualToSet:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
    {
      [v62 setServices:*(*(*(a1 + 56) + 8) + 40)];
      if ([v27 isSubsetOfSet:*(*(*(a1 + 56) + 8) + 40)])
      {
        v28 = a1;
        v29 = *(*(a1 + 48) + 112);
        if (!v29)
        {
          v30 = objc_alloc_init(NSMutableSet);
          v31 = *(a1 + 48);
          v32 = *(v31 + 112);
          *(v31 + 112) = v30;

          v29 = *(*(a1 + 48) + 112);
          v28 = a1;
        }

        [v29 unionSet:{*(*(*(v28 + 56) + 8) + 40), v59, v60, v61}];
      }

      else
      {
        v33 = objc_alloc_init(NSMutableSet);
        v34 = *(a1 + 48);
        v35 = *(v34 + 112);
        *(v34 + 112) = v33;

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v36 = *(*(a1 + 48) + 72);
        v37 = [v36 countByEnumeratingWithState:&v76 objects:v85 count:16];
        if (v37)
        {
          v38 = *v77;
          do
          {
            for (j = 0; j != v37; j = j + 1)
            {
              if (*v77 != v38)
              {
                objc_enumerationMutation(v36);
              }

              v40 = *(*(a1 + 48) + 112);
              v41 = [*(*(&v76 + 1) + 8 * j) services];
              [v40 unionSet:v41];
            }

            v37 = [v36 countByEnumeratingWithState:&v76 objects:v85 count:16];
          }

          while (v37);
        }
      }

      v71 = _NSConcreteStackBlock;
      v72 = 3221225472;
      v73 = sub_100435A94;
      v74 = &unk_100BD6ED0;
      v75 = *(a1 + 48);
      [v75 updateTopics];
    }
  }

  v42 = *(a1 + 40);
  v43 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v87 = @"commands";
    v88 = 2112;
    v89 = v42;
    v90 = 2112;
    v91 = v62;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Got %@ %@ for listener %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v60 = v42;
    v61 = v62;
    v59 = @"commands";
    _IDSLogV();
  }

  v44 = v62;
  if (v42)
  {
    if (!v62)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v42 = +[NSSet set];
    v44 = v62;
    if (!v62)
    {
      goto LABEL_64;
    }
  }

  v45 = [v44 commands];
  if (([v45 isEqualToSet:v42] & 1) == 0)
  {
    [v62 setCommands:v42];
    if ([v45 isSubsetOfSet:v42])
    {
      v46 = *(*(a1 + 48) + 120);
      if (!v46)
      {
        v47 = objc_alloc_init(NSMutableSet);
        v48 = *(a1 + 48);
        v49 = *(v48 + 120);
        *(v48 + 120) = v47;

        v46 = *(*(a1 + 48) + 120);
      }

      [v46 unionSet:v42];
    }

    else
    {
      v50 = objc_alloc_init(NSMutableSet);
      v51 = *(a1 + 48);
      v52 = *(v51 + 120);
      *(v51 + 120) = v50;

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v53 = *(*(a1 + 48) + 72);
      v54 = [v53 countByEnumeratingWithState:&v67 objects:v84 count:16];
      if (v54)
      {
        v55 = *v68;
        do
        {
          for (k = 0; k != v54; k = k + 1)
          {
            if (*v68 != v55)
            {
              objc_enumerationMutation(v53);
            }

            v57 = *(*(a1 + 48) + 120);
            v58 = [*(*(&v67 + 1) + 8 * k) commands];
            [v57 unionSet:v58];
          }

          v54 = [v53 countByEnumeratingWithState:&v67 objects:v84 count:16];
        }

        while (v54);
      }
    }

    [*(a1 + 48) _updatePushCommandsLocked];
  }

  v44 = v62;
LABEL_64:
  if ([v44 capabilities] != *(a1 + 80))
  {
    [v62 setCapabilities:?];
  }
}

void sub_100435CBC(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[5] + 8) + 24) = 1;
  v4 = [v3 notificationServices];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1[6] + 8) + 40);
    v9 = *(*(a1[7] + 8) + 40);
    *buf = 136315650;
    v17 = "[IDSDaemon registerForNotificationsOnServices:messageContext:]_block_invoke";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: received client request to change notification services from %@ to %@ \n", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v14 = *(*(a1[6] + 8) + 40);
    v15 = *(*(a1[7] + 8) + 40);
    v13 = "[IDSDaemon registerForNotificationsOnServices:messageContext:]_block_invoke";
    _IDSLogTransport();
  }

  [*(*(a1[7] + 8) + 40) minusSet:{*(*(a1[6] + 8) + 40), v13, v14, v15}];
  [*(*(a1[6] + 8) + 40) unionSet:a1[4]];
  v10 = [*(*(a1[6] + 8) + 40) copy];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_100436730(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 - 4) >= 2 && a2)
  {
    if (a2 == 3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      connected_socket = nw_connection_get_connected_socket();
      v8 = dup(connected_socket);
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = vabdd_f64(Current, *(a1 + 72));
        *buf = 134218752;
        v21 = v10;
        v22 = 1024;
        v23 = connected_socket;
        v24 = 1024;
        LODWORD(v25[0]) = v8;
        WORD2(v25[0]) = 2048;
        *(v25 + 6) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "openSocketWithOptions: connection ready: (%p) sd: %d dupSd: %d connection_time: %fs", buf, 0x22u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v19 = vabdd_f64(Current, *(a1 + 72));
          v17 = connected_socket;
          v18 = v8;
          v16 = *(a1 + 32);
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v19 = vabdd_f64(Current, *(a1 + 72));
            v17 = connected_socket;
            v18 = v8;
            v16 = *(a1 + 32);
            _IDSLogV();
          }
        }
      }

      [*(a1 + 40) sendSocketDescriptorOverXPC:*(a1 + 48) messageContext:*(a1 + 56) socketDescriptor:v8 error:{*(a1 + 64), v16, v17, v18, *&v19}];
      goto LABEL_23;
    }

    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 134218240;
      v21 = v15;
      v22 = 1024;
      v23 = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "openSocketWithOptions: %p connection state: %d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
LABEL_22:
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 134218498;
      v21 = v13;
      v22 = 1024;
      v23 = a2;
      v24 = 2112;
      v25[0] = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "openSocketWithOptions: failed to start connection: %p, connection state: %d error: %@", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
}

void sub_1004379CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, unsigned int a9, void *a10)
{
  v13 = a2;
  v14 = a8;
  v15 = a10;
  kdebug_trace();
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v41 = a6;
    *&v41[4] = 2112;
    *&v41[6] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "client's openSocketWithOptions call returned socket %d, error %@", buf, 0x12u);
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

  if (a6 <= 0)
  {
    v17 = 201;
  }

  else
  {
    v17 = 0;
  }

  v18 = [[IDSLocalDeliverySocketOpenedMetric alloc] initWithService:*(a1 + 32) isToDefaultPairedDevice:*(a1 + 96) & 1 openError:v17 socketError:{objc_msgSend(v15, "code")}];
  v19 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v19 logMetric:v18];

  v20 = +[IDSAWDLogging sharedInstance];
  [v20 socketOpenedForService:*(a1 + 32) isToDefaultPairedDevice:*(a1 + 96) & 1 openError:v17 socketError:{objc_msgSend(v15, "code")}];

  if (!v15)
  {
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = [v21 integerValue] != 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 48);
      v25 = *(a1 + 88);
      *buf = 138412802;
      *v41 = v24;
      *&v41[8] = 2048;
      *&v41[10] = v25;
      v42 = 2048;
      v43 = v14;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "openSocketWithOptions:IDSDirectDataPathSocket for connection: %@, priority: %ld, nw_connection: %p", buf, 0x20u);
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

    v26 = [[IDSDirectDataPathSocket alloc] initSocketWithNWConnection:v14 priority:*(a1 + 88) trafficClass:a9 serviceConnectorConnection:1 streamSocket:v22];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100437E48;
    v31[3] = &unk_100BDC2E0;
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    v32 = v27;
    v33 = v28;
    v34 = v26;
    v35 = v29;
    v36 = *(a1 + 72);
    v37 = 0;
    v38 = *(a1 + 80);
    v39 = *(a1 + 32);
    v30 = v26;
    [v30 startSocket:v31];
  }
}

id sub_100437E48(void *a1, int a2)
{
  if (a2 < 0)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "openSocketWithOptions invalid sd!", buf, 2u);
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

  else
  {
    if (a1[4])
    {
      v3 = dup(a2);
      [*(a1[5] + 528) setObject:a1[6] forKeyedSubscript:a1[4]];
      v4 = a1[5];
      v5 = a1[7];
      v6 = a1[8];
      v7 = a1[9];

      return [v4 sendSocketDescriptorOverXPC:v5 messageContext:v6 socketDescriptor:v3 error:v7];
    }

    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[10];
      v12 = a1[11];
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "nil connectionUUID for client: %@, service: %@", buf, 0x16u);
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

void sub_100438764(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [*(a1[4] + 528) objectForKeyedSubscript:a1[5]];
  if (v10)
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[5];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "closeSocketWithOptions:removing socket for connection: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = a1[5];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v19 = a1[5];
          _IDSLogV();
        }
      }
    }

    [*(a1[4] + 528) removeObjectForKey:{a1[5], v19}];
  }

  v13 = [IDSLocalDeliverySocketClosedMetric alloc];
  v15 = a1[6];
  v14 = a1 + 6;
  v16 = [v13 initWithService:v15 isToDefaultPairedDevice:*(v14 + 8) closeError:0 socketError:0 bytesSent:a3 packetsSent:a2 bytesReceived:a5 packetsReceived:a4];
  v17 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v17 logMetric:v16];

  v18 = +[IDSAWDLogging sharedInstance];
  [v18 socketClosedForService:*v14 isToDefaultPairedDevice:*(v14 + 8) closeError:0 socketError:0 bytesSent:a3 packetsSent:a2 bytesReceived:a5 packetsReceived:a4];
}

id sub_1004398D4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v5 = [v4 primaryRegistration];
    v6 = [v5 dsHandle];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_10043996C(void *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100439A1C;
  v6[3] = &unk_100BD9528;
  v7 = a2;
  v3 = v7;
  v4 = [a1 __imArrayByApplyingBlock:v6];

  return v4;
}

void sub_10043A000(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    v11 = a2;
    v12 = [[NSMutableDictionary alloc] initWithDictionary:a1[4]];
    v13 = v12;
    if (v9)
    {
      CFDictionarySetValue(v12, IDSDevicePropertyService, v9);
    }

    if (a5)
    {
      v14 = a1[5];
    }

    else
    {
      v14 = a1[6];
    }

    v15 = [v14 copy];
    if (v15)
    {
      CFDictionarySetValue(v13, IDSDevicePropertyIdentities, v15);
    }

    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "broadcasting tinkerDeviceAdded on %@", &v17, 0xCu);
    }

    [v11 service:v10 tinkerDeviceAdded:v13];
  }
}

void sub_10043A358(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    v11 = a2;
    v12 = [[NSMutableDictionary alloc] initWithDictionary:a1[4]];
    v13 = v12;
    if (v9)
    {
      CFDictionarySetValue(v12, IDSDevicePropertyService, v9);
    }

    if (a5)
    {
      v14 = a1[5];
    }

    else
    {
      v14 = a1[6];
    }

    v15 = [v14 copy];
    if (v15)
    {
      CFDictionarySetValue(v13, IDSDevicePropertyIdentities, v15);
    }

    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "broadcasting tinkerDeviceRemoved on %@", &v17, 0xCu);
    }

    [v11 service:v10 tinkerDeviceRemoved:v13];
  }
}

void sub_10043A640(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    v11 = a2;
    v12 = [[NSMutableDictionary alloc] initWithDictionary:a1[4]];
    v13 = v12;
    if (v9)
    {
      CFDictionarySetValue(v12, IDSDevicePropertyService, v9);
    }

    if (a5)
    {
      v14 = a1[5];
    }

    else
    {
      v14 = a1[6];
    }

    v15 = [v14 copy];
    if (v15)
    {
      CFDictionarySetValue(v13, IDSDevicePropertyIdentities, v15);
    }

    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "broadcasting tinkerDeviceUpdated on %@", &v17, 0xCu);
    }

    [v11 service:v10 tinkerDeviceUpdated:v13];
  }
}

void sub_10043A928(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    v11 = a2;
    v12 = [[NSMutableDictionary alloc] initWithDictionary:a1[4]];
    v13 = v12;
    if (v9)
    {
      CFDictionarySetValue(v12, IDSDevicePropertyService, v9);
    }

    if (a5)
    {
      v14 = a1[5];
    }

    else
    {
      v14 = a1[6];
    }

    v15 = [v14 copy];
    if (v15)
    {
      CFDictionarySetValue(v13, IDSDevicePropertyIdentities, v15);
    }

    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "broadcasting tinkerDeviceUpdated on %@", &v17, 0xCu);
    }

    [v11 service:v10 tinkerDeviceUpdated:v13];
  }
}

void sub_10043AE44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10043AE60(id a1)
{
  v1 = objc_alloc_init(IDSDaemonMIGInterface);
  v2 = qword_100CBD360;
  qword_100CBD360 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10043B10C(uint64_t result)
{
  if ((*(*(result + 32) + 40) & 1) == 0)
  {
    v1 = result;
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      *buf = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "IDSDaemonMIGInterface auth port died: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    exit(-1);
  }

  return result;
}

void sub_10043B408(uint64_t a1)
{
  v2 = im_local_object_from_connection();
  if (!v2)
  {
    goto LABEL_10;
  }

  v10 = xpc_dictionary_get_value(*(a1 + 40), "object");
  v9 = IMGetXPCDictionaryFromDictionary();
  v3 = xpc_fd_dup(v10);
  close(v3);
  v4 = &OBJC_PROTOCOL___IDSDaemonProtocol;
  MethodDescription = protocol_getMethodDescription(v4, "xpcObject:objectContext:", 1, 1);
  types = MethodDescription.types;
  if (!MethodDescription.name)
  {
    types = protocol_getMethodDescription(v4, "xpcObject:objectContext:", 0, 1).types;
    if (types)
    {
      goto LABEL_4;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!MethodDescription.types)
  {
    goto LABEL_6;
  }

LABEL_4:
  v7 = [NSMethodSignature signatureWithObjCTypes:types, v9, v10];
LABEL_7:

  v8 = [NSInvocation invocationWithMethodSignature:v7];
  [v8 retainArguments];
  [v8 setSelector:"xpcObject:objectContext:"];
  [v8 setArgument:&v10 atIndex:2];
  [v8 setArgument:&v9 atIndex:3];
  if (v8)
  {
    [v2 _enqueueInvocation:v8];
  }

  CFRelease(v2);

LABEL_10:
}

uint64_t sub_10043B774(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.private.alloy.facetime.multi"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.arcade.fastsync") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.airdrop.walkaway") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.carmelsync") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.notes") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.dropin.communication") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.safari.groupactivities") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.gftaastest.communication") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.private.alloy.groupRemoteControl.cloud"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.private.alloy.groupRemoteControl.session"];
  }

  return v2;
}

int64_t sub_10043D2D0(id a1, IDSStewiePhoneNumberInfo *a2, IDSStewiePhoneNumberInfo *a3)
{
  v4 = a3;
  v5 = [(IDSStewiePhoneNumberInfo *)a2 phoneNumber];
  v6 = [(IDSStewiePhoneNumberInfo *)v4 phoneNumber];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10043EFE0(id a1)
{
  v1 = objc_alloc_init(IDSLinkPreferencesManager);
  v2 = qword_100CBD378;
  qword_100CBD378 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10043FCE0(uint64_t a1)
{
  v1 = [*(a1 + 32) copy];
  IDSPowerLogDictionary();
}

uint64_t IDSProtoKeyTransparencyTrustedDeviceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = PBReaderReadData();
        v23 = 32;
        goto LABEL_38;
      }

      if (v13 != 2)
      {
        goto LABEL_39;
      }

      v21 = objc_alloc_init(IDSProtoKeyTransparencyTrustedService);
      [a1 addTrustedServices:v21];
      v27[0] = 0xAAAAAAAAAAAAAAAALL;
      v27[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSProtoKeyTransparencyTrustedServiceReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = PBReaderReadString();
        v23 = 16;
LABEL_38:
        v24 = *(a1 + v23);
        *(a1 + v23) = v22;

        goto LABEL_45;
      case 4:
        v22 = PBReaderReadString();
        v23 = 24;
        goto LABEL_38;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v27[0] & 0x7F) << v14;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_44:
        *(a1 + 8) = v20;
        goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void sub_100441BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Continuing to adding entries to firewall with queryError %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _firewallStore];
  v6 = [v5 addEntries:*(a1 + 40) forImpactedServices:*(*(a1 + 32) + 24) category:*(*(a1 + 32) + 8) isDonated:1];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = IDSFirewallErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Failed to add entries to allow list.";
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:v8 code:4 userInfo:v9];
  }

  [*(a1 + 32) scheduleProcessStoredRemoteIncomingMessages];
  (*(*(a1 + 48) + 16))();
}

void sub_100441E34(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);
    *buf = 67109378;
    v13 = v4;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Update to category %u removeEntries %@", buf, 0x12u);
  }

  v5 = [*(a1 + 32) _firewallStore];
  v6 = [v5 removeAllEntries:*(a1 + 40) forImpactedServices:*(*(a1 + 32) + 24) category:*(*(a1 + 32) + 8)];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = IDSFirewallErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Failed to remove entries from allow list.";
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:v8 code:4 userInfo:v9];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100442094(uint64_t a1)
{
  v2 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);
    *buf = 67109378;
    v13 = v4;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Update to category %u removeDonatedEntries %@", buf, 0x12u);
  }

  v5 = [*(a1 + 32) _firewallStore];
  v6 = [v5 removeEntries:*(a1 + 40) forImpactedServices:*(*(a1 + 32) + 24) category:*(*(a1 + 32) + 8) isDonated:1];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = IDSFirewallErrorDomain;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Failed to remove entries from allow list.";
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:v8 code:4 userInfo:v9];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1004424B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);
    *buf = 67109634;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update to category %u queryError %@ addEntries %@", buf, 0x1Cu);
  }

  v7 = [*(a1 + 32) _firewallStore];
  v8 = [v7 addEntries:*(a1 + 40) forImpactedServices:*(*(a1 + 32) + 24) category:*(*(a1 + 32) + 8) isDonated:1];

  if (v8)
  {
    [*(a1 + 32) scheduleProcessStoredRemoteIncomingMessages];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = IDSFirewallErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to add entries to the allow list after successfully removing entries.";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:4 userInfo:v10];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100443128(uint64_t a1)
{
  v2 = +[IDSDaemon sharedInstance];
  [v2 _processStoredIncomingMessagesForCategory:*(*(a1 + 32) + 8)];
}

void sub_100443984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = a10;
  v13 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (a6)
    {
      v14 = @"YES";
    }

    *buf = 138412546;
    v44 = v14;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received query result with success {%@} and result {%@}", buf, 0x16u);
  }

  v15 = +[IDSFoundationLog IDSFirewall];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (a6)
  {
    if (v16)
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v44 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Populating merge for handles {%@}", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = *(a1 + 40);
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        v22 = 0;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          v24 = [v23 mergeID];
          if (v24)
          {
            goto LABEL_14;
          }

          v25 = [v23 uri];
          v26 = [v12 objectForKey:v25];

          if (v26)
          {
            v27 = [v23 uri];
            v24 = [v12 objectForKey:v27];

            v28 = [v24 firstObject];

            if (v28)
            {
              v29 = [v24 firstObject];
              v30 = [v29 senderCorrelationIdentifier];
              [v23 setMergeID:v30];
            }

LABEL_14:
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v31 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
        v20 = v31;
      }

      while (v31);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v16)
    {
      v32 = *(a1 + 32);
      *buf = 138412290;
      v44 = v32;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to query for handles {%@}", buf, 0xCu);
    }

    v33 = IDSFirewallErrorDomain;
    v40 = NSLocalizedDescriptionKey;
    v41 = @"Failed to query for merge id due to unsuccessful request";
    v34 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v35 = [NSError errorWithDomain:v33 code:6 userInfo:v34];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100444CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v24 = [v3 error];

    v4 = [v24 userInfo];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    [v5 setObject:*(a1 + 32) forKey:@"IDSPipelineParameter"];
    v6 = [NSError alloc];
    v7 = [v24 domain];
    v8 = [v6 initWithDomain:v7 code:objc_msgSend(v24 userInfo:{"code"), v5}];

    [*(a1 + 40) failWithError:v8];
  }

  else
  {
    v9 = [v3 value];

    v10 = objc_alloc_init(IDSPeerAggregatableMessage);
    v11 = [*(a1 + 48) pushTokenObject];
    [(IDSPeerAggregatableMessage *)v10 setTargetToken:v11];

    v12 = [*(a1 + 48) sessionToken];
    [(IDSPeerAggregatableMessage *)v10 setTargetSessionToken:v12];

    [(IDSPeerAggregatableMessage *)v10 setTargetPeerID:*(a1 + 56)];
    v13 = [NSNumber numberWithBool:*(a1 + 72)];
    [(IDSPeerAggregatableMessage *)v10 setWantsDeliveryStatus:v13];

    [(IDSPeerAggregatableMessage *)v10 setWantsCertifiedDelivery:*(a1 + 73)];
    v14 = [*(a1 + 48) anonymizedSenderID];
    [(IDSPeerAggregatableMessage *)v10 setAnonymizedSenderID:v14];

    v15 = [*(a1 + 48) expireDate];
    [(IDSPeerAggregatableMessage *)v10 setExpirationDate:v15];

    [(IDSPeerAggregatableMessage *)v10 setCommand:&off_100C3C700];
    v16 = [v9 dataLength];
    [(IDSPeerAggregatableMessage *)v10 setDataLength:v16];

    v17 = [v9 encryptedResult];
    v18 = [v17 data];
    [(IDSPeerAggregatableMessage *)v10 setEncryptedData:v18];

    v19 = [v17 payloadMetadata];
    v20 = [v19 length];

    if (v20)
    {
      v21 = [v17 payloadMetadata];
      [(IDSPeerAggregatableMessage *)v10 setPayloadMetadata:v21];
    }

    if ([v17 encryptionType] != 2)
    {
      [v17 encryptionType];
      v22 = IDSEncryptionTypeStringFromEncryptionType();
      [(IDSPeerAggregatableMessage *)v10 setEncryptionType:v22];
    }

    v23 = [v9 fileCleanupBlock];
    if (v23)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100445070;
      v25[3] = &unk_100BD8D78;
      v26 = *(a1 + 64);
      v27 = v23;
      [(IDSPeerAggregatableMessage *)v10 setCompletionBlock:v25];
    }

    [*(a1 + 40) fulfillWithValue:v10];
  }
}

uint64_t sub_100445070(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GUID %@ Finished sending attachment. Cleaning up temporary file.", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_100445130(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAggregatableMessages:v3];
  v4 = objc_alloc_init(NSMutableDictionary);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 targetPeerID];
        v12 = [v10 targetToken];
        v13 = [v11 URIByAddingPushToken:v12];

        if (v13)
        {
          [v4 setObject:v10 forKey:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    *buf = 138412290;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "GUID %@ finished constructing aggregatable messages", buf, 0xCu);
  }

  v16 = [*(a1 + 32) guid];
  v17 = [v16 copy];

  [v4 debugDescription];
  v23 = v22 = v17;
  v18 = v23;
  v19 = v17;
  cut_dispatch_log_queue();
  v20 = [CUTUnsafePromise fulfilledPromiseWithValue:*(a1 + 32), _NSConcreteStackBlock, 3221225472, sub_1004453D0, &unk_100BD6E40];

  return v20;
}

void sub_1004453D0(uint64_t a1)
{
  v2 = +[IDSFoundationLog delivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GUID %@ Message to send per destination:\n%@", &v5, 0x16u);
  }
}

void sub_10044598C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v9);

  if (v8)
  {
    v10 = +[IMRGLog engram];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Account identity cluster election failed {error: %{public}@}", buf, 0xCu);
    }

    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = @"Engram key election failed";
    v16[1] = v8;
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-6000 userInfo:v11];

    v13 = [*(a1 + 32) seal];
    [v13 failWithError:v12];
  }

  else
  {
    v14 = [*(a1 + 32) seal];
    [v14 fulfillWithValue:v7];
  }
}

void sub_100445B34(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 state];
  if (v3 == 1)
  {
    v6 = *(a1 + 32);
    v5 = [v7 error];
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    v5 = [v7 value];
    (*(v4 + 16))(v4, v5, 0);
  }

LABEL_6:
}

void sub_100445ECC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v9);

  if (v8)
  {
    v10 = +[IMRGLog engram];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Existing account identity cluster fetch failed {error: %{public}@}, seal: %{public}@", buf, 0x16u);
    }

    v14[0] = NSLocalizedDescriptionKey;
    v14[1] = NSUnderlyingErrorKey;
    v15[0] = @"Engram key election failed";
    v15[1] = v8;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-6000 userInfo:v12];

    [*(a1 + 40) failWithError:v13];
  }

  else
  {
    [*(a1 + 40) fulfillWithValue:v7];
  }
}

void sub_100446064(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 state];
  if (v3 == 1)
  {
    v6 = *(a1 + 32);
    v5 = [v7 error];
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 32);
    v5 = [v7 value];
    (*(v4 + 16))(v4, v5, 0);
  }

LABEL_6:
}

void sub_100446344(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) keychainWrapper];
    v8 = [objc_opt_class() _keychainIdentifier];
    v30 = 0;
    v9 = [v7 dataForIdentifier:v8 error:&v30];
    v10 = v30;

    if (v9)
    {
      v11 = [v5 adminServiceIdentityWithType:1];
      v12 = v11;
      if (v11)
      {
        v29 = v10;
        v13 = [v11 publicServiceIdentityAdminWithError:&v29];
        v14 = v29;

        if (v13)
        {
          v28 = v14;
          v15 = [IDSMPFullDeviceIdentity deviceIdentityFromDataRepresentation:v9 publicAdminServiceIdentity:v13 error:&v28];
          v16 = v28;

          if (v15)
          {
            v17 = +[IMRGLog engram];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v32 = v15;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "existingFullDeviceIdentity -- success {deviceIdentity: %{public}@}", buf, 0xCu);
            }

            (*(*(a1 + 40) + 16))();
            v18 = v16;
          }

          else
          {
            v37 = NSLocalizedDescriptionKey;
            v38 = @"Unable to extract device identity from serialized data";
            v26 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v18 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-3000 userInfo:v26];

            v27 = +[IMRGLog engram];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543875;
              v32 = v18;
              v33 = 2114;
              v34 = v13;
              v35 = 2113;
              v36 = v9;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed existingFullDeviceidentity -- failed to create deviceIdentity {error: %{public}@, publicAdminIdentity: %{public}@, data: %{private}@}", buf, 0x20u);
            }

            (*(*(a1 + 40) + 16))();
          }
        }

        else
        {
          v39 = NSLocalizedDescriptionKey;
          v40 = @"Cluster missing public admin identity with type A";
          v24 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v18 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-3000 userInfo:v24];

          v25 = +[IMRGLog engram];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v32 = v18;
            v33 = 2114;
            v34 = v12;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Failed existingFullDeviceIdentity -- missing publicAdminIdentity {error: %{public}@, fullAdminIdentity: %{public}@}", buf, 0x16u);
          }

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v41 = NSLocalizedDescriptionKey;
        v42 = @"Cluster missing full admin identity with type A";
        v22 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v18 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-3000 userInfo:v22];

        v23 = +[IMRGLog engram];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_10091F48C(v18, v5, v23);
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if ([IDSKeychainWrapper isItemNotFoundError:v10])
      {
        v43 = NSLocalizedDescriptionKey;
        v44 = @"No registered account identity. Please re-register";
        v20 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v18 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-5000 userInfo:v20];

        v21 = +[IMRGLog engram];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v32 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed existingFullDeviceIdentity -- keychain item not found {error: %{public}@}", buf, 0xCu);
        }
      }

      else
      {
        v21 = +[IMRGLog engram];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_10091F514(v10, v21);
        }

        v18 = v10;
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v19 = +[IMRGLog engram];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed existingFullDeviceIdentity -- missing cluster {error: %{public}@}", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10044727C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog ConnectivityMonitor];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 idsResponseCode];
    v7 = [v3 responseError];
    v15 = 138412802;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connectivity monitor %@ got response %ld with error %@", &v15, 0x20u);
  }

  v8 = [v3 responseError];
  v9 = v8 == 0;

  v10 = objc_alloc_init(IDSConnectivityMonitorMetricProperties);
  [(IDSConnectivityMonitorMetricProperties *)v10 setSuccess:v9];
  [(IDSConnectivityMonitorMetricProperties *)v10 setTerminusConnected:1];
  [(IDSConnectivityMonitorMetricProperties *)v10 setTerminusRegistered:1];
  [(IDSConnectivityMonitorMetricProperties *)v10 setTerminusNearby:1];
  v11 = +[IDSPairingManager sharedInstance];
  v12 = [v11 pairedDeviceUUIDString];
  [(IDSConnectivityMonitorMetricProperties *)v10 setPairedDeviceCBUUIDString:v12];

  [*(a1 + 40) timeConnected];
  [(IDSConnectivityMonitorMetricProperties *)v10 setTimeConnected:?];
  [*(a1 + 40) timeDisconnected];
  [(IDSConnectivityMonitorMetricProperties *)v10 setTimeDisconnected:?];
  v13 = [[IDSConnectivityMonitorMetric alloc] initWithProperties:v10];
  v14 = [IDSRTCLogger loggerWithCategory:3000];
  [v14 logMetric:v13];
}

void sub_100447E20(id a1)
{
  v1 = objc_alloc_init(IDSFamilyManager);
  v2 = qword_100CBD388;
  qword_100CBD388 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004480FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v6 code];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Family Fetch returned with error code: %ld", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v6 code];
    _IDSLogV();
  }

  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004482CC;
  block[3] = &unk_100BD6E18;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

id sub_1004482CC(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v22 = a1;
  if ([*(a1 + 32) code])
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Error fetching family, will allow trying again later.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    *(*(a1 + 48) + 13) = 0;
    *(*(a1 + 48) + 12) = 1;
  }

  else
  {
    v21 = objc_alloc_init(NSMutableSet);
    v18 = objc_alloc_init(NSMutableSet);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [*(a1 + 40) members];
    v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v3)
    {
      v4 = *v25;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v25 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v24 + 1) + 8 * i);
          v7 = [*(v22 + 48) handlesFromFamilyMember:v6];
          v8 = [IDSFamilyMember alloc];
          v9 = [v6 dsid];
          v10 = [v6 appleID];
          v11 = [v8 initWithiCloudID:v9 appleID:v10 handles:v7 devices:0];

          [*(*(v22 + 48) + 32) unionSet:v7];
          [v21 addObject:v11];
        }

        v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v3);
    }

    objc_storeStrong((*(v22 + 48) + 16), v21);
    objc_storeStrong((*(v22 + 48) + 24), v18);
    *(*(v22 + 48) + 13) = 0;
    v12 = [v21 count];
    v13 = v22;
    if (!v12)
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device is not part of a family. Will not allow force fetch until family updates.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v13 = v22;
      *(*(v22 + 48) + 12) = 0;
    }

    if (*(*(v13 + 48) + 14) == 1)
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pulling out previously stored messages sent to a family service.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      *(*(v22 + 48) + 14) = 0;
      v16 = +[IDSDaemon sharedInstance];
      [v16 _processStoredIncomingMessages];
    }
  }

  objc_autoreleasePoolPop(context);
  return [*(v22 + 48) _notifyFamilyServicesOfUpdate];
}

id sub_1004495E0()
{
  if (qword_100CBD398 != -1)
  {
    sub_10091F618();
  }

  v1 = qword_100CBD390;

  return v1;
}

void sub_100449624(id a1)
{
  definition = nw_framer_create_definition("control channel: IDSUTunControlChannelProtocol", 0, &stru_100BDC630);
  v2 = qword_100CBD390;
  qword_100CBD390 = definition;

  v3 = qword_100CBD390;

  _nw_framer_register_definition(v3);
}

int sub_10044967C(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &stru_100BDC670);
  nw_framer_set_output_handler(v2, &stru_100BDC6D8);
  nw_framer_pass_through_output(v2);

  return 1;
}

unint64_t sub_1004496CC(id a1, OS_nw_framer *a2)
{
  v2 = a2;
  v3 = v2;
  *&v4 = 67109120;
  v13 = v4;
  while (1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    __chkstk_darwin(v2);
    v12 = -21846;
    parse[0] = _NSConcreteStackBlock;
    parse[1] = 3221225472;
    parse[2] = sub_100449990;
    parse[3] = &unk_100BDC698;
    parse[4] = &v15;
    parse[5] = 2;
    if (!nw_framer_parse_input(v3, 2uLL, 2uLL, &v12, parse))
    {
      break;
    }

    if ((v16[3] & 1) == 0)
    {
      v9 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "control channel: IDSUTunControlChannelProtocol: returning -- no header.", buf, 2u);
      }

      break;
    }

    v5 = v12;
    v6 = nw_framer_message_create(v3);
    v7 = +[IDSFoundationLog utunController];
    v8 = __rev16(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v13;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSUTunControlChannelProtocol: read message_length:%u", buf, 8u);
    }

    if (!nw_framer_deliver_input_no_copy(v3, v8 + 2, v6, 1))
    {
      v10 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSUTunControlChannelProtocol: returning partial data", buf, 2u);
      }

      break;
    }

    _Block_object_dispose(&v15, 8);
  }

  _Block_object_dispose(&v15, 8);

  return 0;
}

uint64_t sub_100449990(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 40) <= a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

void sub_100449A8C(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "control channel: nw_connection_receive_message called", buf, 2u);
  }

  if (v9)
  {
    size = dispatch_data_get_size(v9);
    if (HIDWORD(size))
    {
      goto LABEL_24;
    }
  }

  else
  {
    size = 0;
  }

  is_final = nw_content_context_get_is_final(v10);
  v15 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = size;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "control channel: _receiveFromNWConnection: read %u bytes", buf, 8u);
  }

  if (v9 && size >= 3)
  {
    v16 = v9;
    v17 = __rev16(*[v16 bytes]);
    v18 = [v16 subdataWithRange:2, [v16 length]- 2];
    v19 = v18;
    if (a4 && [v18 length] == v17)
    {
      v20 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 length];
        *buf = 134217984;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "control channel: _receiveFromNWConnection: processing message: %lu bytes", buf, 0xCu);
      }

      v25 = v19;
      IDSTransportThreadAddBlock();
    }

    else
    {
      v22 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v19 length];
        *buf = 134218240;
        v27 = v23;
        v28 = 1024;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "control channel: _receiveFromNWConnection: did not receive complete message %lu bytes, expected: %u bytes", buf, 0x12u);
      }
    }
  }

  if (v11 == 0 && !is_final)
  {
    [*(a1 + 32) _receiveFromNWConnection];
    goto LABEL_26;
  }

  v24 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "control channel: receiveFromNWConnection: error %@!", buf, 0xCu);
  }

LABEL_24:
  IDSTransportThreadAddBlock();
LABEL_26:
}

id *sub_100449EA8(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
  }

  return result;
}

id *sub_100449EC8(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] processReceivedMessage:result[5]];
  }

  return result;
}

id *sub_100449EDC(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
  }

  return result;
}

void sub_10044A194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IDSFoundationLog utunController];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "control channel: _sendMessageOnNWConnection: error %@! could not write data to nw_connection", buf, 0xCu);
    }

    IDSTransportThreadAddBlock();
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40) + 2;
      *buf = 67109120;
      LODWORD(v8) = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "control channel: _sendMessageOnNWConnection wrote %u bytes", buf, 8u);
    }
  }
}

id *sub_10044A2F4(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
  }

  return result;
}

void sub_10044AF34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v10 = a4;
  v11 = a7;
  *(*(*(a1 + 40) + 8) + 24) = sub_1005C23F8(a6);
  v12 = [v11 encryptionType];

  *(*(*(a1 + 48) + 8) + 24) = v12;
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

id *sub_10044B054(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
    *(v2[4] + 40) = 0;
  }

  return result;
}

id *sub_10044B10C(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
    *(v2[4] + 40) = 0;
  }

  return result;
}

void sub_10044BDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10044BDC8(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v8 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a3 + 32);
    v13[0] = 67109634;
    v13[1] = a2;
    v14 = 2080;
    v15 = a3;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "control channel: useConnection index: %d identifier: (%s, %d)", v13, 0x18u);
  }

  if (a2 || (v10 = *(*(a1 + 40) + 8), (*(v10 + 24) & 1) != 0))
  {
    v11 = 0;
    *a4 = 0;
  }

  else
  {
    *(v10 + 24) = 1;
    *a4 = 2;
    v11 = *(a1 + 32);
  }

  return v11;
}

void sub_10044BEF4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        if (v5)
        {
          v8 = nw_error_copy_cf_error(v5);
        }

        else
        {
          v8 = 0;
        }

        v22 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = nw_connection_state_to_string();
          v24 = *(a1 + 32);
          v25 = *(a1 + 40);
          v26 = *(v25 + 24);
          v27 = *(v25 + 8);
          *buf = 136316419;
          v41 = v23;
          v42 = 2048;
          v43 = v24;
          v44 = 2112;
          *v45 = v24;
          *&v45[8] = 1024;
          *&v45[10] = v26;
          *&v45[14] = 2112;
          *&v45[16] = v8;
          *&v45[24] = 2113;
          *&v45[26] = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "control channel connection event %s for nw_connection (%p) %@ {socket:%d} event error: %@, deviceUniqueID[%{private}@]", buf, 0x3Au);
        }

        v37 = *(a1 + 32);
        v28 = v37.i64[0];
        IDSTransportThreadAddBlock();
        v16 = vextq_s8(v37, v37, 8uLL).i64[1];
        goto LABEL_31;
      }

      goto LABEL_33;
    }

LABEL_10:
    if (v5)
    {
      v8 = nw_error_copy_cf_error(v5);
    }

    else
    {
      v8 = 0;
    }

    v9 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = nw_connection_state_to_string();
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(v12 + 24);
      v14 = *(v12 + 8);
      *buf = 136316419;
      v41 = v10;
      v42 = 2048;
      v43 = v11;
      v44 = 2112;
      *v45 = v11;
      *&v45[8] = 1024;
      *&v45[10] = v13;
      *&v45[14] = 2112;
      *&v45[16] = v8;
      *&v45[24] = 2113;
      *&v45[26] = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "control channel connection event %s for nw_connection (%p) %@ {socket:%d} event error: %@, deviceUniqueID[%{private}@]", buf, 0x3Au);
    }

    v36 = *(a1 + 32);
    v15 = v36.i64[0];
    IDSTransportThreadAddBlock();
    v16 = vextq_s8(v36, v36, 8uLL).i64[1];
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (v6)
    {
      v8 = nw_error_copy_cf_error(v6);
    }

    else
    {
      v8 = 0;
    }

    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(*(a1 + 40) + 8);
      v20 = vabdd_f64(Current, *(a1 + 56));
      *buf = 134219011;
      v41 = v18;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      *v45 = v8;
      *&v45[8] = 2113;
      *&v45[10] = v19;
      *&v45[18] = 2048;
      *&v45[20] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "control channel connect ready for nw_connection (%p) %@  event error: %@, deviceUniqueID[%{private}@] connection_time: %fs", buf, 0x34u);
    }

    if (*(*(a1 + 40) + 132))
    {
      IDSTransportThreadAddBlock();
      [*(a1 + 40) _receiveFromNWConnection];
LABEL_32:

      goto LABEL_33;
    }

    if (v8)
    {
      connected_socket = -1;
LABEL_28:
      v29 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        v31 = *(*(a1 + 40) + 8);
        *buf = 134219011;
        v41 = v30;
        v42 = 2112;
        v43 = v30;
        v44 = 1024;
        *v45 = connected_socket;
        *&v45[4] = 2112;
        *&v45[6] = v8;
        *&v45[14] = 2113;
        *&v45[16] = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "control channel connect ready for nw_connection (%p) %@ {socket:%d}, event error: %@, deviceUniqueID[%{private}@]", buf, 0x30u);
      }

      v38 = *(a1 + 32);
      v32 = v38.i64[0];
      v39 = *(a1 + 48);
      IDSTransportThreadAddBlock();

      v16 = vextq_s8(v38, v38, 8uLL).i64[1];
LABEL_31:

      goto LABEL_32;
    }

    connected_socket = nw_connection_get_connected_socket();
    if ((connected_socket & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v33 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = *(*(a1 + 40) + 8);
      *buf = 134219011;
      v41 = v34;
      v42 = 2112;
      v43 = v34;
      v44 = 1024;
      *v45 = connected_socket;
      *&v45[4] = 2112;
      *&v45[6] = 0;
      *&v45[14] = 2113;
      *&v45[16] = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "control channel connect ready for nw_connection (%p) %@ {socket:%d}, event error: %@, deviceUniqueID[%{private}@]", buf, 0x30u);
    }

    IDSTransportThreadAddBlock();
  }

LABEL_33:
}

void sub_10044C53C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 136) == *(a1 + 40))
  {
    *(v1 + 24) = *(a1 + 56);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10044C67C;
    v13 = &unk_100BD6ED0;
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_10044C684;
    v8 = &unk_100BD6ED0;
    v9 = *(a1 + 32);
    IDSTransportThreadAddSocket();
    v4 = *(a1 + 48);
    if (v4)
    {
      [*(*(a1 + 32) + 72) insertObject:v4 atIndex:{0, _NSConcreteStackBlock, 3221225472, sub_10044C684, &unk_100BD6ED0, v9, _NSConcreteStackBlock, 3221225472, sub_10044C67C, &unk_100BD6ED0}];
    }

    [*(a1 + 32) _checkSendNewMessage];
  }

  else
  {
    v2 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "control channel connect ready but connection already canceled - exit without TPAddSocket", buf, 2u);
    }
  }
}

id sub_10044C68C(uint64_t a1)
{
  *(*(a1 + 32) + 160) = 1;
  result = [*(*(a1 + 32) + 64) count];
  if (result)
  {
    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 136);
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "control channel: sending queued messages on connection: %@", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = *(*(a1 + 32) + 64);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) _sendMessageOnNWConnection:{*(*(&v10 + 1) + 8 * v9), v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    return [*(*(a1 + 32) + 64) removeAllObjects];
  }

  return result;
}

void sub_10044C80C(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4[17] == *(a1 + 40))
  {

    [v4 cancelConnection];
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "control channel failure/invalid event but connection already canceled - exit without causing additional cleanup", v6, 2u);
    }
  }
}

void sub_10044C8A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 161) == 1)
  {
    *(v2 + 161) = 0;
    v3 = *(*(a1 + 32) + 168);
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = 0;

    if (v3 == *(a1 + 40))
    {
      [*(a1 + 32) _callHandlerWithMessage:0 resetDataConnections:*(*(a1 + 32) + 176) shouldObliterate:*(*(a1 + 32) + 177) decryptionFailed:*(*(a1 + 32) + 178) shouldTriggerCorruptionRecovery:*(*(a1 + 32) + 179)];
    }

    else
    {
      v6 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 136);
        v11 = 138412802;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "control channel connection %@ canceled, _connection %@, _canceledConnection %@", &v11, 0x20u);
      }
    }
  }

  else
  {
    if (*(a1 + 40) != *(v2 + 136))
    {
      return;
    }

    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 136);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "gatherDataToInvestigate_59608320: connection: %@, _connection: %@", &v11, 0x16u);
    }
  }
}

void sub_10044D994(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = a4;
  v10 = a5;
  *(*(*(a1 + 40) + 8) + 24) = [a6 encryptionType];
  v11 = sub_1005C2330(v10);

  *(*(*(a1 + 48) + 8) + 24) = v11;
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v14 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10044DA44(id a1)
{
  v1 = +[IDSDAccountController sharedInstance];
  [v1 issueDependentIDQueriesWithCompletionBlock:0];
}

id *sub_10044DB00(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
  }

  return result;
}

void sub_10044DB20(id a1)
{
  v1 = +[IDSDAccountController sharedInstance];
  [v1 issueDependentIDQueriesWithCompletionBlock:0];
}

id *sub_10044DBDC(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
  }

  return result;
}

void sub_100450184(int a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ - %@", buf, 0x16u);
  }

  if ((IMGetCachedDomainBoolForKey() & 1) != 0 || a1)
  {
    v11 = [IMUserNotification userNotificationWithIdentifier:@"Registration" title:v8 message:v9 defaultButton:@"OK" alternateButton:0 otherButton:0];
    [v11 setUsesNotificationCenter:1];
    v12 = +[IMUserNotificationCenter sharedInstance];
    [v12 addUserNotification:v11 listener:0];

    v13 = +[IMLockdownManager sharedInstance];
    if ([v13 isInternalInstall])
    {

      if (a5 < 1)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v14 = IMGetCachedDomainBoolForKey();

      if (a5 < 1 || (v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v15 = +[NSFileManager defaultManager];
    v16 = [v15 fileExistsAtPath:@"/usr/local/bin/figplaySS"];

    if (v16)
    {
      v17 = [NSString stringWithFormat:@"%@ -ssid %d", @"/usr/local/bin/figplaySS", a5];
      [v17 UTF8String];
      IMPerformSystem();
    }

    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_1004503A8(int a1)
{
  if ((a1 + 1) > 0x1E)
  {
    return -2;
  }

  else
  {
    return qword_1009AB7F8[a1 + 1];
  }
}

uint64_t sub_1004503CC(uint64_t a1)
{
  if ((a1 + 1) > 0x32)
  {
    return 0;
  }

  else
  {
    return dword_1009AB8F0[a1 + 1];
  }
}

__CFString *sub_1004503F0(void *a1)
{
  v1 = a1;
  if (IDSIsiMessageRegistrationServiceType())
  {
    v2 = @"Messenger";
LABEL_7:

    goto LABEL_8;
  }

  if (IDSIsFaceTimeRegistrationServiceType() & 1) != 0 || (IDSIsCallingRegistrationServiceType() & 1) != 0 || (IDSIsMultiwayRegistrationServiceType())
  {
    v2 = @"Invitation";
    goto LABEL_7;
  }

  v2 = v1;
  if (IDSIsAlloyRegistrationServiceType())
  {
    v2 = @"com.apple.private.alloy";
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

__CFString *sub_100450490(void *a1)
{
  v1 = a1;
  if (IDSIsiMessageRegistrationServiceType())
  {
    v2 = @"com.apple.madrid";
  }

  else if (IDSIsFaceTimeRegistrationServiceType())
  {
    v2 = @"com.apple.ess";
  }

  else if (IDSIsCallingRegistrationServiceType())
  {
    v2 = @"com.apple.private.ac";
  }

  else
  {
    v2 = v1;
    if (!IDSIsMultiwayRegistrationServiceType())
    {
      goto LABEL_10;
    }

    v2 = @"com.apple.private.alloy.facetime.multi";
  }

LABEL_10:

  return v2;
}

__CFString *sub_100450530(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_100BDCA28[a1];
  }
}

id sub_100450550(void *a1)
{
  v1 = a1;
  v2 = [v1 mainID];

  if (!v2)
  {
    v11 = +[IMRGLog registration];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v19 = 138412290;
    v20 = v1;
    v14 = "Missing MainID, Not sending IDS Authentication/Register for: %@";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v14, &v19, 0xCu);
    goto LABEL_30;
  }

  if ([v1 registrationType] == 1)
  {
    v3 = [v1 profileID];
    v4 = [v3 length];

    if (!v4)
    {
      v11 = +[IMRGLog registration];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v19 = 138412290;
      v20 = v1;
      v14 = "Missing ProfileID, Not sending IDS Authentication/Register for: %@";
      goto LABEL_29;
    }
  }

  if ([v1 registrationType] == 1)
  {
    v5 = [v1 regionID];
    v6 = [v5 length];

    if (!v6)
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v1;
        v14 = "Missing regionID, Not sending IDS Authentication/Register for: %@";
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  if ([v1 registrationType] == 1)
  {
    v7 = [v1 regionBasePhoneNumber];
    v8 = [v7 length];

    if (!v8)
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v1;
        v14 = "Missing regionBasePhoneNumber, Not sending IDS Authentication/Register for: %@";
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  v9 = [v1 authenticationCert];
  if (v9)
  {
  }

  else
  {
    v15 = [v1 authenticationToken];

    if (v15)
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v1;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending IDS Authentication for: %@", &v19, 0xCu);
      }

      v11 = +[IDSRegistrationCenter sharedInstance];
      v13 = [v11 authenticateRegistration:v1];
      goto LABEL_20;
    }
  }

  v10 = [v1 authenticationCert];

  v11 = +[IMRGLog registration];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v12)
    {
      v19 = 138412290;
      v20 = v1;
      v14 = "Not sending IDS Registration or Authentication for: %@";
      goto LABEL_29;
    }

LABEL_30:
    v17 = 0;
    goto LABEL_31;
  }

  if (v12)
  {
    v19 = 138412290;
    v20 = v1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending IDS Registration for: %@", &v19, 0xCu);
  }

  v11 = +[IDSRegistrationCenter sharedInstance];
  v13 = [v11 sendRegistration:v1];
LABEL_20:
  v17 = v13;
LABEL_31:

  return v17;
}

id sub_1004508E4(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@":"];
  if ([v2 count] == 2)
  {
    v3 = [v2 objectAtIndex:1];
    v4 = [NSNumber numberWithLongLong:[v3 longLongValue]];
    if ([v4 longLongValue])
    {
      v5 = v4;
    }

    else
    {
      v6 = +[IMRGLog registrationAuthKit];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DSID NSNumber extracted from the profile id is null. profileId: %@", &v8, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v3 = +[IMRGLog registrationAuthKit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not split the profileId in order to send only the numerical part to AuthKit. profileId: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

void sub_100450E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100450E7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100450E94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100450F5C;
    v6[3] = &unk_100BDCA70;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    [WeakRetained _fetchCachedObjectForKey:v5 completion:v6];
  }
}

uint64_t sub_100450F5C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1004518BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 evictionDate];
  v8 = [v7 compare:*(a1 + 32)];

  v9 = +[IDSFoundationLog utilities];
  v10 = v9;
  if (v8 == -1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10091F9B8(v5, v6, v10);
    }

    [*(a1 + 40) addObject:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 evictionDate];
      v12 = 138478083;
      v13 = v5;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not evicting item {key: %{private}@, evictionDate: %{public}@", &v12, 0x16u);
    }
  }
}

void sub_100451BCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = [*(a1 + 40) object];
    v6 = [v3 isEqual:v5];

    if (v6)
    {
      v7 = *(a1 + 40);
      [*(a1 + 32) ttlInSeconds];
      [v7 bumpEvictionDateToSecondsFromNow:?];
    }

    else
    {
      v11 = +[IDSFoundationLog utilities];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v13 = [*(a1 + 40) object];
        v14 = 138478339;
        v15 = v12;
        v16 = 2113;
        v17 = v13;
        v18 = 2113;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Delegate replace cached object {key: %{private}@, previous: %{private}@, replacement: %{private}@}", &v14, 0x20u);
      }

      [*(a1 + 32) cacheObject:v3 forKey:*(a1 + 48)];
    }

    v10 = *(*(a1 + 56) + 16);
  }

  else
  {
    v8 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v14 = 138477827;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Replacement object is nil {key: %{private}@}", &v14, 0xCu);
    }

    if (*(a1 + 40))
    {
      [*(a1 + 32) evictCachedObjectForKey:*(a1 + 48)];
    }

    v10 = *(*(a1 + 56) + 16);
  }

  v10();
}

void sub_10045277C(id a1)
{
  v1 = objc_alloc_init(IDSRegistrationReasonTracker);
  v2 = qword_100CBD3B8;
  qword_100CBD3B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100452950(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100452978(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[NSMutableString string];
    v5 = [WeakRetained PNRReasonByUserID];
    [v4 appendFormat:@"Most Recent PNR Reasons %@", v5];

    [v4 appendFormat:@"Most Recent IDS Registration Reason %ld", objc_msgSend(WeakRetained, "mostRecentIDSRegistrationReason")];
    v6[2](v6, v4);
  }

  else
  {
    v6[2](v6, 0);
  }
}

uint64_t sub_100452A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained PNRReasonByUserID];
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Most Recent PNR Reasons %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v7 = [WeakRetained PNRReasonByUserID];
      _IDSLogV();
    }

    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained mostRecentIDSRegistrationReason];
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Most Recent IDS Registration Reason %ld", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [WeakRetained mostRecentIDSRegistrationReason];
      _IDSLogV();
    }
  }

  return 0;
}

void sub_100452C38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x100452BB8);
  }

  _Unwind_Resume(a1);
}

void sub_10045410C(uint64_t a1)
{
  v2 = +[IDSFoundationLog RealTimeEncryptionController_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = 138413058;
    v8 = v4;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning MkM collection to broadcast { destinationURI: %@, shouldIncludePeerKeys: %@, collection: %@, self: %@ }", &v7, 0x2Au);
  }
}

void sub_100454568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100454580(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 keyIndex];
  v7 = [v6 UUIDString];
  LODWORD(v5) = [v5 isEqualToString:v7];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_10045482C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained automaticResetBlock];
    v4 = objc_retainBlock(v3);
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Automatic cache reset timer fired { sself: %@, resetBlock: %@ }", &v7, 0x16u);
  }

  if (WeakRetained)
  {
    v5 = [WeakRetained automaticResetBlock];

    if (v5)
    {
      v6 = [WeakRetained automaticResetBlock];
      (v6)[2](v6, WeakRetained);
    }
  }
}

void sub_10045505C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1004552F8(id a1)
{
  v1 = objc_alloc_init(IDSPACStateTracker);
  v2 = qword_100CBD3D8;
  qword_100CBD3D8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1004582BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (a4)
  {
    v14 = NSUnderlyingErrorKey;
    v15 = a4;
    v8 = a4;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSError errorWithDomain:@"IDSValidationSessionErrorDomain" code:-3000 userInfo:v9];
  }

  else
  {
    v11 = 0;
    v12 = [v7 objectAtIndexedSubscript:0];
    [*(a1 + 32) setBAACert:v12];

    v13 = [v7 objectAtIndexedSubscript:1];
    [*(a1 + 32) setIntermediateRootCert:v13];

    [*(a1 + 32) setBIKKeyRef:a2];
    [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") | 1}];
    [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") | 0x10}];
    v10 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100458790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1004587B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) |= 4u;
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (a2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138413058;
    *v64 = v10;
    *&v64[8] = 2112;
    *&v64[10] = v11;
    *&v64[18] = 2048;
    *&v64[20] = [v7 count];
    v65 = 2112;
    v66 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed device identity fetch {success: %@, referenceKey: %@, certificates: %lu, error: %@}", buf, 0x2Au);
  }

  v62 = 0;
  v61 = 0;
  v60 = 0;
  if ([*(a1 + 32) _shouldUseAbsintheV3])
  {
    v12 = sub_100914520(&v60, &v62, &v61, *(*(*(a1 + 48) + 8) + 24));
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = v60 == 0;
    }

    if (v13 || v62 == 0)
    {
      v15 = v12;
      v16 = +[IMRGLog warning];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v50 = [*(a1 + 32) pscSession];
        v51 = @"YES";
        if (v50)
        {
          v52 = @"YES";
        }

        else
        {
          v52 = @"NO";
        }

        *buf = 67109634;
        *v64 = v15;
        *&v64[4] = 2112;
        if (!v62)
        {
          v51 = @"NO";
        }

        *&v64[6] = v52;
        *&v64[14] = 2112;
        *&v64[16] = v51;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Failed to initialize validation session {helloStatus: %d, session: %@, helloMessageBytes: %@}", buf, 0x1Cu);
      }

      if (v60)
      {
        sub_10091410C(v60);
        v60 = 0;
      }

      v17 = [NSError errorWithDomain:@"IDSValidationSessionErrorDomain" code:-3000 userInfo:0];
      if (v8)
      {
        goto LABEL_54;
      }

      goto LABEL_34;
    }

    [*(a1 + 32) setPscSession:?];
    v18 = [NSData dataWithBytes:v62 length:v61];
    [*(a1 + 32) setHelloMessage:v18];

    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) UDID];
      v22 = [v21 length];
      v23 = [*(a1 + 32) helloMessage];
      v24 = [v23 length];
      *buf = 134218240;
      *v64 = v22;
      *&v64[8] = 2048;
      *&v64[10] = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully initialized validation session and hello message {UDUD.length: %ld, helloMessage.length: %ld}", buf, 0x16u);
    }

    if ([*(a1 + 32) _shouldUseDebugPiscoLogging])
    {
      v25 = +[IMRGLog sysdiagnose_oversized];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 67109120;
        *v64 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[Pisco] {sessionOptionFlags: %u}", buf, 8u);
      }

      v27 = +[IMRGLog sysdiagnose_oversized];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 32) helloMessage];
        *buf = 138412290;
        *v64 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Pisco] {helloMessage: %@}", buf, 0xCu);
      }
    }
  }

  v17 = 0;
  if (v8)
  {
LABEL_54:
    [*(a1 + 32) setLastBAAError:v8];
    goto LABEL_55;
  }

LABEL_34:
  if (![*(a1 + 32) _shouldUseBAACertOption])
  {
    goto LABEL_54;
  }

  v29 = [v7 objectAtIndexedSubscript:0];
  [*(a1 + 32) setBAACert:v29];

  v30 = [v7 objectAtIndexedSubscript:1];
  [*(a1 + 32) setIntermediateRootCert:v30];

  [*(a1 + 32) setBIKKeyRef:a2];
  if ([*(a1 + 32) _shouldUseDebugPiscoLogging])
  {
    v31 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 32) BAACert];
      *buf = 138412290;
      *v64 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[Pisco] {BAACert: %@}", buf, 0xCu);
    }

    v33 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 32) intermediateRootCert];
      *buf = 138412290;
      *v64 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[Pisco] {intermediateRootCert: %@}", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) _shouldUsePSCBAA])
  {
    v35 = +[IMRGLog registration];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Using PSC BAA validation", buf, 2u);
    }

    [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") | 1}];
    v36 = [*(a1 + 32) BAACert];
    if (v36)
    {
      v37 = v36;
      v38 = [*(a1 + 32) intermediateRootCert];
      if (v38)
      {
        v39 = v38;
        v40 = [*(a1 + 32) BIKKeyRef];

        if (!v40)
        {
          goto LABEL_55;
        }

        v41 = +[IMRGLog registration];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Adding option to new validation session", buf, 2u);
        }

        v55 = [*(a1 + 32) BIKKeyRef];
        v42 = [*(a1 + 32) BAACert];
        v54 = [v42 bytes];
        v43 = [*(a1 + 32) BAACert];
        v53 = [v43 length];
        v44 = [*(a1 + 32) intermediateRootCert];
        v45 = [v44 bytes];
        v46 = [*(a1 + 32) intermediateRootCert];
        LODWORD(v45) = sub_100913E5C(&v60, v55, v54, v53, v45, [v46 length]);

        if (!v45 && v60)
        {
          v47 = +[IMRGLog registration];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Successfully added option to validation session", buf, 2u);
          }

          [*(a1 + 32) setPscSession:v60];
          [*(a1 + 32) setStateFlags:{objc_msgSend(*(a1 + 32), "stateFlags") | 0x10}];
          goto LABEL_55;
        }

        v37 = +[IMRGLog warning];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          sub_10091FEE4();
        }
      }
    }
  }

LABEL_55:
  if (v62)
  {
    sub_100914268(v62);
    v62 = 0;
  }

  v48 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100458FF4;
  block[3] = &unk_100BDA5A8;
  v59 = *(a1 + 40);
  v57 = *(a1 + 32);
  v58 = v17;
  v49 = v17;
  dispatch_async(v48, block);
}

void sub_100459AA4(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a2;
  v5 = [[IDSValidationSigningResult alloc] initWithAbsintheResultData:a1[4] absintheServerKey:a1[5] absintheError:a1[6] baaResult:v4];

  (*(v3 + 16))(v3, v5);
}

void sub_100459B30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[IDSValidationSigningResult alloc] initWithAbsintheResultData:0 absintheServerKey:0 absintheError:0 baaResult:v3];

  (*(v2 + 16))(v2, v4);
}

void sub_100459C80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 absintheError];
  if (v4)
  {
    goto LABEL_2;
  }

  v24 = [v3 absintheServerKey];
  if (!v24)
  {
    goto LABEL_3;
  }

  v4 = v24;
  v25 = [v3 absintheResultData];
  if (!v25)
  {
LABEL_2:
  }

  else
  {
    v26 = v25;
    v27 = [*(a1 + 32) mechanism];

    if (!v27)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v28 = [*(a1 + 40) sha256Digest];
      v29 = [v28 base64EncodedStringWithOptions:0];

      if (v29)
      {
        CFDictionarySetValue(v5, @"absinthe-message", v29);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092001C();
      }

      v38 = [v3 absintheResultData];
      v39 = [v38 base64EncodedStringWithOptions:0];

      if (v39)
      {
        CFDictionarySetValue(v5, @"absinthe-signature", v39);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009200A4();
      }

      v40 = [v3 absintheServerKey];
      v41 = [v40 base64EncodedStringWithOptions:0];

      if (v41)
      {
        CFDictionarySetValue(v5, @"absinthe-serv-key", v41);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092012C();
      }

      v42 = [*(a1 + 32) UDID];
      if (v42)
      {
        CFDictionarySetValue(v5, @"absinthe-udid", v42);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009201B4();
      }

      v43 = [*(a1 + 32) serialNumber];
      if (v43)
      {
        CFDictionarySetValue(v5, @"absinthe-serial-number", v43);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092023C();
      }

      v44 = [*(a1 + 32) IMEI];
      if (v44)
      {
        CFDictionarySetValue(v5, @"absinthe-imei", v44);
      }

      v45 = [*(a1 + 32) MEID];
      if (v45)
      {
        CFDictionarySetValue(v5, @"absinthe-meid", v45);
      }

      if ([*(a1 + 32) isUsingAbsintheV4])
      {
        v46 = @"true";
      }

      else
      {
        v46 = @"false";
      }

      CFDictionarySetValue(v5, @"absinthe-v4", v46);
      if ([*(a1 + 32) isUsingBAA])
      {
        v47 = @"true";
      }

      else
      {
        v47 = @"false";
      }

      CFDictionarySetValue(v5, @"absinthe-baa", v47);
      goto LABEL_5;
    }
  }

LABEL_3:
  if ([*(a1 + 32) mechanism] != 1)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
LABEL_5:
  v6 = [*(a1 + 32) baaSigner];
  v7 = *(a1 + 40);
  v8 = [v3 baaResult];
  v9 = [*(a1 + 32) BAACert];
  v10 = [*(a1 + 32) intermediateRootCert];
  v11 = [v6 headersBySigningData:v7 baaSigningResult:v8 baaCert:v9 intermediateRootCert:v10];

  if (v11)
  {
    [(__CFDictionary *)v5 addEntriesFromDictionary:v11];
  }

LABEL_9:
  v12 = [v3 absintheError];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 baaResult];
    v15 = [v14 error];

    if (v15)
    {
      v16 = [NSError alloc];
      v49 = NSMultipleUnderlyingErrorsKey;
      v17 = [v3 absintheError];
      v48[0] = v17;
      v18 = [v3 baaResult];
      v19 = [v18 error];
      v48[1] = v19;
      v20 = [NSArray arrayWithObjects:v48 count:2];
      v50 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v22 = [v16 initWithDomain:@"IDSValidationSessionErrorDomain" code:-5000 userInfo:v21];

LABEL_21:
      goto LABEL_22;
    }
  }

  v23 = [v3 absintheError];

  if (v23)
  {
    v22 = [v3 absintheError];
    goto LABEL_22;
  }

  v30 = [v3 baaResult];
  v31 = [v30 error];

  if (v31)
  {
    v17 = [v3 baaResult];
    v22 = [v17 error];
    goto LABEL_21;
  }

  v22 = 0;
LABEL_22:
  v32 = [v3 baaResult];
  v33 = [v32 icloudDigest];

  if (v33)
  {
    v34 = [IDSBAASignerContext alloc];
    v35 = [v3 baaResult];
    v36 = [v35 icloudDigest];
    v37 = [v34 initWithSigningDigest:v36];
  }

  else
  {
    v37 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10045AC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10045ACBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting fetch of device identity for validation session {validityInMinutes: %@}", buf, 0xCu);
  }

  v12[0] = kMAOptionsBAAKeychainLabel;
  v12[1] = kMAOptionsBAAValidity;
  v6 = *(a1 + 32);
  v13[0] = @"com.apple.IDS";
  v13[1] = v6;
  v12[2] = kMAOptionsBAAOIDSToInclude;
  v11[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v11[1] = kMAOptionsBAAOIDDeviceOSInformation;
  v11[2] = kMAOptionsBAAOIDProductType;
  v7 = [NSArray arrayWithObjects:v11 count:3];
  v13[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [*(a1 + 40) BAAQueue];
  v10 = v3;
  DeviceIdentityIssueClientCertificateWithCompletion();
}

void sub_10045AEC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *buf = 138412802;
    v24 = v10;
    v25 = 2048;
    v26 = [v7 count];
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed fetch of device identity for validation session {referenceKey: %@, certificates: %lu, error: %@}", buf, 0x20u);
  }

  v11 = [*(a1 + 32) BAAQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10045B0A0;
  block[3] = &unk_100BDCCF8;
  v22 = a2;
  v21 = *(a1 + 56);
  v18 = v7;
  v19 = v8;
  v16 = *(a1 + 40);
  v13 = v16;
  v20 = v16;
  v14 = v8;
  v15 = v7;
  dispatch_async(v12, block);
}

uint64_t sub_10045B0A0(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10045B114(uint64_t a1, int a2)
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device identity fetch final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10045B27C;
  block[3] = &unk_100BDCD98;
  v12 = a2;
  v11 = *(a1 + 56);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
}

void sub_10045B27C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v13 = NSDebugDescriptionErrorKey;
    v14 = @"Timed out requesting device identity";
    v4 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v5 = [NSError errorWithDomain:@"IDSValidationSessionInternalErrorDomain" code:-11000 userInfo:v4];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10045B408;
    block[3] = &unk_100BDCD70;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    dispatch_async(v8, block);
  }
}

void sub_10045B8BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void sub_10045BBE0(id a1)
{
  v1 = objc_alloc_init(IDSDAccountController);
  v2 = qword_100CBD400;
  qword_100CBD400 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10045C60C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10045C634(uint64_t a1, void *a2)
{
  v3 = a2;
  v90 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v109 = _os_activity_create(&_mh_execute_header, "ids/registration/account-controller/state", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v109, &state);
    v93 = +[NSMutableString string];
    v89 = [WeakRetained[7] iCloudSystemAccountWithError:0];
    v4 = [WeakRetained[7] iTunesSystemAccountWithError:0];
    [v93 appendFormat:@"Current system account state { iCloudAccount: %@, iTunesAccount: %@ }\n", v89, v4];
    v80 = v4;
    v5 = +[FTDeviceSupport sharedInstance];
    v88 = [v5 deviceName];

    v6 = +[FTDeviceSupport sharedInstance];
    v87 = [v6 model];

    v7 = +[FTDeviceSupport sharedInstance];
    v86 = [v7 productName];

    v8 = +[FTDeviceSupport sharedInstance];
    v85 = [v8 productVersion];

    v9 = +[FTDeviceSupport sharedInstance];
    v84 = [v9 productBuildVersion];

    v10 = +[IDSPushHandler sharedInstance];
    v83 = [v10 pushToken];

    v11 = +[IDSPushHandler sharedInstance];
    v12 = [v11 copyPushIdentity];

    v13 = +[IDSCurrentDevice sharedInstance];
    v82 = [v13 deviceIdentifier];

    v81 = IMGetEnvironmentName();
    v14 = [v83 debugDescription];
    if (_os_feature_enabled_impl())
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    [v93 appendFormat:@"Current IDS device state { deviceName: %@, model: %@, productName: %@, productVersion: %@, build: %@, pushToken: %@, pushIdentity: %@, idsUniqueID: %@, prototypeMode: %@, environment: %@ }\n", v88, v87, v86, v85, v84, v14, v12, v82, v15, v81];

    if (v12)
    {
      CFRelease(v12);
    }

    if (+[IDSRegistrationController isBuddyShowing])
    {
      v16 = @"NO";
    }

    else
    {
      v16 = @"YES";
    }

    v17 = +[IMSystemMonitor sharedInstance];
    if ([v17 isUnderDataProtectionLock])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = +[IMSystemMonitor sharedInstance];
    if ([v19 isUnderFirstDataProtectionLock])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = +[IMSystemMonitor sharedInstance];
    if ([v21 systemIsShuttingDown])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    [v93 appendFormat:@"Current IDS system monitor state { isSetup: %@, isUnderDataProtectionLock: %@, isUnderFirstDataProtectionLock: %@, systemIsShuttingDown: %@ }\n", v16, v18, v20, v22];

    v23 = +[IDSRegistrationKeyManager sharedInstance];
    v24 = [v23 publicMessageProtectionData];
    [v93 appendFormat:@"Current IDS message protection state { publicMessageProtectionData: %@ }\n", v24];

    v25 = [FTServerBag sharedInstanceForBagType:0];
    if ([v25 isLoaded])
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    if ([v25 isLoading])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [v25 isServerAvailable];
    v29 = [v25 apsEnvironmentName];
    v30 = v29;
    if (v28)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    [v93 appendFormat:@"Current IDS server bag state { serverBag: %@, isLoaded: %@, isLoading: %@, isServerAvailable: %@, environment: %@ }\n", v25, v26, v27, v31, v29];
    v79 = v25;

    v91 = +[FTServiceStatus sharedInstance];
    v32 = +[FTDeviceSupport sharedInstance];
    v33 = [v32 deviceRegionInfo];
    if ([v91 iMessageSupported])
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v35 = [v91 faceTimeAudioSupported];
    v36 = [v91 faceTimeMultiwaySupported];
    if (v35)
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    if (v36)
    {
      v38 = @"YES";
    }

    else
    {
      v38 = @"NO";
    }

    [v93 appendFormat:@"Current IDS service capability state { regionInfo: %@, iMessageSupported: %@, faceTimeAudioSupported: %@, faceTimeMultiwaySupported: %@ }\n", v33, v34, v37, v38];

    v39 = +[IDSDaemon sharedInstance];
    v40 = [v39 registrationConductor];
    v41 = [v40 phoneUserRegistry];
    v42 = [v41 validators];
    v43 = [IDSLogFormatter descriptionForArray:v42 options:16];
    [v93 appendFormat:@"Current IDS phone number validation state { stateMachines: %@ }\n", v43];

    v44 = +[IDSDaemon sharedInstance];
    v45 = [v44 registrationConductor];
    v46 = [v45 userStore];
    v47 = [v46 debugDescription];
    [v93 appendFormat:@"Current IDS user store state { userStore: %@ }\n", v47];

    v48 = +[IDSCTAdapter sharedInstance];
    if ([v48 supportsIdentification])
    {
      v49 = @"YES";
    }

    else
    {
      v49 = @"NO";
    }

    v50 = +[IDSCTAdapter sharedInstance];
    v51 = [v50 currentSIMsWithError:0];
    v52 = +[FTUserConfiguration sharedInstance];
    v53 = [v52 selectedPhoneNumberRegistrationSubscriptionLabels];
    v54 = [IDSLogFormatter descriptionForArray:v53 options:0];
    [v93 appendFormat:@"Current IDS phone profile state { isPNRSupported: %@, SIMs: %@, selectedTelephonyLabelID: %@ }\n", v49, v51, v54];

    v55 = [WeakRetained accounts];
    [v93 appendString:@"Current IDS accounts list:\n"];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v56 = v55;
    v57 = [v56 countByEnumeratingWithState:&v104 objects:v112 count:16];
    if (v57)
    {
      v58 = *v105;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v105 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = [*(*(&v104 + 1) + 8 * i) debugDescription];
          [v93 appendFormat:@"%@\n", v60];
        }

        v57 = [v56 countByEnumeratingWithState:&v104 objects:v112 count:16];
      }

      while (v57);
    }

    [v93 appendString:@"Current IDS account info dictionaries:\n"];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v61 = v56;
    v62 = [v61 countByEnumeratingWithState:&v100 objects:v111 count:16];
    if (v62)
    {
      v63 = *v101;
      do
      {
        for (j = 0; j != v62; j = j + 1)
        {
          if (*v101 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v100 + 1) + 8 * j);
          v66 = [v65 service];
          v67 = [v66 pushTopic];
          v68 = [&off_100C3DBF8 containsObject:v67];

          if (v68)
          {
            v69 = [v65 accountInfo];
            [v93 appendFormat:@"%@\n", v69];
          }
        }

        v62 = [v61 countByEnumeratingWithState:&v100 objects:v111 count:16];
      }

      while (v62);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v70 = v61;
    v71 = [v70 countByEnumeratingWithState:&v96 objects:v110 count:16];
    if (v71)
    {
      v72 = *v97;
      do
      {
        for (k = 0; k != v71; k = k + 1)
        {
          if (*v97 != v72)
          {
            objc_enumerationMutation(v70);
          }

          v74 = *(*(&v96 + 1) + 8 * k);
          v75 = [v74 service];
          v76 = [v75 pushTopic];
          v77 = [&off_100C3DC10 containsObject:v76];

          if (v77)
          {
            v78 = [v74 dependentRegistrations];
            v94[0] = _NSConcreteStackBlock;
            v94[1] = 3221225472;
            v94[2] = sub_10045D0A4;
            v94[3] = &unk_100BD8A48;
            v95 = v93;
            [v78 enumerateObjectsUsingBlock:v94];
          }
        }

        v71 = [v70 countByEnumeratingWithState:&v96 objects:v110 count:16];
      }

      while (v71);
    }

    (v90)[2](v90, v93);
    os_activity_scope_leave(&state);
    cut_arc_os_release();
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_10045D014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10045D0A4(uint64_t a1, void *a2)
{
  v3 = IDSDevicePropertyService;
  v4 = a2;
  v18 = [v4 objectForKey:v3];
  v16 = [v4 objectForKey:IDSDevicePropertyPushToken];
  v17 = [v4 objectForKey:IDSDevicePropertyName];
  v14 = [v4 objectForKey:IDSDevicePropertyHardwareVersion];
  v5 = [v4 objectForKey:IDSDevicePropertyPrivateDeviceData];
  v6 = [v4 objectForKey:IDSDevicePropertySubServices];
  v7 = [v4 objectForKey:IDSDevicePropertyIdentities];
  v15 = [v4 objectForKey:IDSDevicePropertyLinkedUserURIs];
  v8 = [v4 objectForKey:IDSDevicePropertyClientData];
  v9 = [v8 objectForKey:_IDSIdentityClientDataMessageProtectionIdentityKey];
  v10 = [v4 objectForKey:IDSDevicePropertyIsHSATrustedDevice];

  v11 = *(a1 + 32);
  v12 = [v16 debugDescription];
  v13 = [v5 objectForKey:IDSPrivateDeviceDataUniqueID];
  [v11 appendFormat:@"  * Device Name: %@    Service: %@     Hardware: %@    Token: %@   Unique ID: %@   Linked URIs: %@   Device Data: %@   Sub-services: %@   Identities: %@   Client data: %@   public key: %@ HSA trusted: %@\n", v17, v18, v14, v12, v13, v15, v5, v6, v7, v8, v9, v10];
}

uint64_t sub_10045D2EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v117 = _os_activity_create(&_mh_execute_header, "ids/registration/account-controller/state", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v117, &state);
    v101 = [WeakRetained[7] iCloudSystemAccountWithError:0];
    v102 = WeakRetained;
    v100 = [WeakRetained[7] iTunesSystemAccountWithError:0];
    v2 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v122 = v101;
      v123 = 2112;
      v124 = v100;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Current system account state { iCloudAccount: %@, iTunesAccount: %@ }", buf, 0x16u);
    }

    v3 = +[FTDeviceSupport sharedInstance];
    v99 = [v3 deviceName];

    v4 = +[FTDeviceSupport sharedInstance];
    v98 = [v4 model];

    v5 = +[FTDeviceSupport sharedInstance];
    v97 = [v5 productName];

    v6 = +[FTDeviceSupport sharedInstance];
    v96 = [v6 productVersion];

    v7 = +[FTDeviceSupport sharedInstance];
    v95 = [v7 productBuildVersion];

    v8 = +[IDSPushHandler sharedInstance];
    v94 = [v8 pushToken];

    v9 = +[IDSPushHandler sharedInstance];
    v10 = [v9 copyPushIdentity];

    v11 = +[IDSCurrentDevice sharedInstance];
    v93 = [v11 deviceIdentifier];

    v92 = IMGetEnvironmentName();
    v12 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v94 debugDescription];
      v14 = _os_feature_enabled_impl();
      v15 = @"NO";
      *buf = 138414594;
      v122 = v99;
      v123 = 2112;
      if (v14)
      {
        v15 = @"YES";
      }

      v124 = v98;
      v125 = 2112;
      v126 = v97;
      v127 = 2112;
      v128 = v96;
      v129 = 2112;
      v130 = v95;
      v131 = 2112;
      v132 = v13;
      v133 = 2112;
      v134 = v10;
      v135 = 2112;
      v136 = v93;
      v137 = 2112;
      v138 = v15;
      v139 = 2112;
      v140 = v92;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Current IDS device state { deviceName: %@, model: %@, productName: %@, productVersion: %@, build: %@, pushToken: %@, pushIdentity: %@, idsUniqueID: %@, prototypeMode: %@, environment: %@ }", buf, 0x66u);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v16 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (+[IDSRegistrationController isBuddyShowing])
      {
        v17 = @"NO";
      }

      else
      {
        v17 = @"YES";
      }

      v18 = +[IMSystemMonitor sharedInstance];
      if ([v18 isUnderDataProtectionLock])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = +[IMSystemMonitor sharedInstance];
      if ([v20 isUnderFirstDataProtectionLock])
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v22 = +[IMSystemMonitor sharedInstance];
      if ([v22 systemIsShuttingDown])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      *buf = 138413058;
      v122 = v17;
      v123 = 2112;
      v124 = v19;
      v125 = 2112;
      v126 = v21;
      v127 = 2112;
      v128 = v23;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Current IDS system monitor state { isSetup: %@, isUnderDataProtectionLock: %@, isUnderFirstDataProtectionLock: %@, systemIsShuttingDown: %@ }", buf, 0x2Au);
    }

    v24 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = +[IDSRegistrationKeyManager sharedInstance];
      v26 = [v25 publicMessageProtectionData];
      *buf = 138412290;
      v122 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Current IDS message protection state { publicMessageProtectionData: %@ }", buf, 0xCu);
    }

    v91 = [FTServerBag sharedInstanceForBagType:0];
    v27 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if ([(__CFString *)v91 isLoaded])
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      if ([(__CFString *)v91 isLoading])
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v30 = [(__CFString *)v91 isServerAvailable];
      v31 = [(__CFString *)v91 apsEnvironmentName];
      v32 = v31;
      if (v30)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      *buf = 138413314;
      v122 = v91;
      v123 = 2112;
      v124 = v28;
      v125 = 2112;
      v126 = v29;
      v127 = 2112;
      v128 = v33;
      v129 = 2112;
      v130 = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Current IDS server bag state { serverBag: %@, isLoaded: %@, isLoading: %@, isServerAvailable: %@, environment: %@ }", buf, 0x34u);
    }

    v103 = +[FTServiceStatus sharedInstance];
    v34 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = +[FTDeviceSupport sharedInstance];
      v36 = [v35 deviceRegionInfo];
      if ([v103 iMessageSupported])
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = [v103 faceTimeAudioSupported];
      v39 = [v103 faceTimeMultiwaySupported];
      if (v38)
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      *buf = 138413058;
      if (v39)
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      v122 = v36;
      v123 = 2112;
      v124 = v37;
      v125 = 2112;
      v126 = v40;
      v127 = 2112;
      v128 = v41;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Current IDS service capability state { regionInfo: %@, iMessageSupported: %@, faceTimeAudioSupported: %@, faceTimeMultiwaySupported: %@ }", buf, 0x2Au);
    }

    v42 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = +[IDSDaemon sharedInstance];
      v44 = [v43 registrationConductor];
      v45 = [v44 phoneUserRegistry];
      v46 = [v45 validators];
      v47 = [IDSLogFormatter descriptionForArray:v46 options:16];
      *buf = 138412290;
      v122 = v47;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Current IDS phone number validation state { stateMachines: %@ }", buf, 0xCu);
    }

    v48 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = +[IDSDaemon sharedInstance];
      v50 = [v49 registrationConductor];
      v51 = [v50 userStore];
      v52 = [v51 debugDescription];
      *buf = 138412290;
      v122 = v52;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Current IDS user store state { userStore: %@ }", buf, 0xCu);
    }

    v53 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = +[IDSCTAdapter sharedInstance];
      if ([v54 supportsIdentification])
      {
        v55 = @"YES";
      }

      else
      {
        v55 = @"NO";
      }

      v56 = +[IDSCTAdapter sharedInstance];
      v57 = [v56 currentSIMsWithError:0];
      v58 = +[FTUserConfiguration sharedInstance];
      v59 = [v58 selectedPhoneNumberRegistrationSubscriptionLabels];
      v60 = [IDSLogFormatter descriptionForArray:v59 options:0];
      *buf = 138412802;
      v122 = v55;
      v123 = 2112;
      v124 = v57;
      v125 = 2112;
      v126 = v60;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Current IDS phone profile state { isPNRSupported: %@, SIMs: %@, selectedTelephonyLabelID: %@ }", buf, 0x20u);
    }

    v61 = [v102 accounts];
    v62 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Current IDS accounts list:", buf, 2u);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v63 = v61;
    v64 = [v63 countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v64)
    {
      v65 = *v113;
      do
      {
        for (i = 0; i != v64; i = i + 1)
        {
          if (*v113 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v67 = *(*(&v112 + 1) + 8 * i);
          v68 = +[IMRGLog sysdiagnose_oversized];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = [v67 debugDescription];
            *buf = 138412290;
            v122 = v69;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }

        v64 = [v63 countByEnumeratingWithState:&v112 objects:v120 count:16];
      }

      while (v64);
    }

    v70 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Current IDS account info dictionaries:", buf, 2u);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v71 = v63;
    v72 = [v71 countByEnumeratingWithState:&v108 objects:v119 count:16];
    if (v72)
    {
      v73 = *v109;
      do
      {
        for (j = 0; j != v72; j = j + 1)
        {
          if (*v109 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v108 + 1) + 8 * j);
          v76 = [v75 service];
          v77 = [v76 pushTopic];
          v78 = [&off_100C3DC28 containsObject:v77];

          if (v78)
          {
            v79 = +[IMRGLog sysdiagnose_oversized];
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = [v75 accountInfo];
              *buf = 138412290;
              v122 = v80;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }
          }
        }

        v72 = [v71 countByEnumeratingWithState:&v108 objects:v119 count:16];
      }

      while (v72);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v81 = v71;
    v82 = [v81 countByEnumeratingWithState:&v104 objects:v118 count:16];
    if (v82)
    {
      v83 = *v105;
      do
      {
        for (k = 0; k != v82; k = k + 1)
        {
          if (*v105 != v83)
          {
            objc_enumerationMutation(v81);
          }

          v85 = *(*(&v104 + 1) + 8 * k);
          v86 = [v85 service];
          v87 = [v86 pushTopic];
          v88 = [&off_100C3DC40 containsObject:v87];

          if (v88)
          {
            v89 = [v85 dependentRegistrations];
            [v89 enumerateObjectsUsingBlock:&stru_100BDCE80];
          }
        }

        v82 = [v81 countByEnumeratingWithState:&v104 objects:v118 count:16];
      }

      while (v82);
    }

    os_activity_scope_leave(&state);
    cut_arc_os_release();

    WeakRetained = v102;
  }

  return 0;
}

void sub_10045E0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, os_activity_scope_state_s state, char a51)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_10045E1A0(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = IDSDevicePropertyService;
  v5 = a2;
  v6 = [v5 objectForKey:v4];
  v7 = [v5 objectForKey:IDSDevicePropertyPushToken];
  v8 = [v5 objectForKey:IDSDevicePropertyName];
  v9 = [v5 objectForKey:IDSDevicePropertyHardwareVersion];
  v10 = [v5 objectForKey:IDSDevicePropertyPrivateDeviceData];
  v11 = [v5 objectForKey:IDSDevicePropertySubServices];
  v24 = [v5 objectForKey:IDSDevicePropertyIdentities];
  v23 = [v5 objectForKey:IDSDevicePropertyLinkedUserURIs];
  v12 = [v5 objectForKey:IDSDevicePropertyClientData];
  v13 = [v12 objectForKey:_IDSIdentityClientDataMessageProtectionIdentityKey];
  v14 = [v5 objectForKey:IDSDevicePropertyIsHSATrustedDevice];

  v15 = +[IMRGLog sysdiagnose_oversized];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [v7 debugDescription];
    v22 = v11;
    v16 = v9;
    v17 = v8;
    v19 = v18 = v6;
    [v10 objectForKey:IDSPrivateDeviceDataUniqueID];
    v20 = v21 = v7;
    *buf = 138415106;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v20;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v24;
    v43 = 2112;
    v44 = v12;
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  * Device Name: %@    Service: %@     Hardware: %@    Token: %@   Unique ID: %@   Linked URIs: %@   Device Data: %@   Sub-services: %@   Identities: %@   Client data: %@   public key: %@ HSA trusted: %@", buf, 0x7Au);

    v7 = v21;
    v6 = v18;
    v8 = v17;
    v9 = v16;
    v11 = v22;
  }
}

void sub_10045E6DC(id a1)
{
  v1 = +[IMRGLog registration];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Hard deregister complete, clearing accounts and shutting down daemon", v3, 2u);
  }

  v2 = +[IDSDaemon sharedInstance];
  [v2 shutdown];
}

id sub_10045F18C(uint64_t a1)
{
  v1 = [*(a1 + 32) _inUseUsernames];
  v2 = [v1 allObjects];

  return v2;
}

id sub_10045F1DC(uint64_t a1)
{
  v1 = [*(a1 + 32) _inUseProfileIDs];
  v2 = [v1 allObjects];

  return v2;
}

void sub_10045F7E0(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 uniqueID];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing linked account: %@", &v6, 0xCu);
  }

  v5 = +[IDSDAccountController sharedInstance];
  [v5 removeAccount:v2];
}

id sub_100464778(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:kIDSServiceDefaultsSentinelSelfAlias])
  {
    v3 = 0;
  }

  else
  {
    v3 = [[IDSURI alloc] initWithPrefixedURI:v2];
  }

  return v3;
}

void sub_100464DE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addPrimaryAccount:v4];
  v5 = *(a1 + 32);
  v6 = [v4 uniqueID];

  [v5 enablePrimaryAccountWithUniqueID:v6];
}

BOOL sub_100467128(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = v3 == *(a1 + 32);

  return v4;
}