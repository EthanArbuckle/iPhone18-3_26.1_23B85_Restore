@interface MDMCheckInRequest
+ (id)_createNoInstallationError;
+ (id)_requestDataWithRequestDict:(id)a3 enrollmentID:(id)a4 topic:(id)a5 pushMagic:(id)a6 isUserEnrollment:(BOOL)a7 messageType:(id)a8 channelType:(unint64_t)a9 error:(id *)a10;
+ (id)_userFieldsForRequest;
+ (void)_checkInRequestAtURL:(id)a3 identity:(__SecIdentity *)a4 pinnedSecCertificateRefs:(id)a5 pinningRevocationCheckRequired:(BOOL)a6 signMessage:(BOOL)a7 isUserEnrollment:(BOOL)a8 enrollmentID:(id)a9 topic:(id)a10 pushMagic:(id)a11 rmAccountID:(id)a12 messageType:(id)a13 requestDict:(id)a14 channelType:(unint64_t)a15 isCheckout:(BOOL)a16 isShortTransaction:(BOOL)a17 completionHandler:(id)a18;
+ (void)executeRequestForMessageType:(id)a3 channelType:(unint64_t)a4 requestDict:(id)a5 isCheckout:(BOOL)a6 shouldIncludeTopic:(BOOL)a7 shouldIncludePushMagic:(BOOL)a8 isEnrollmentRequired:(BOOL)a9 isShortTransaction:(BOOL)a10 completionHandler:(id)a11;
@end

@implementation MDMCheckInRequest

+ (void)executeRequestForMessageType:(id)a3 channelType:(unint64_t)a4 requestDict:(id)a5 isCheckout:(BOOL)a6 shouldIncludeTopic:(BOOL)a7 shouldIncludePushMagic:(BOOL)a8 isEnrollmentRequired:(BOOL)a9 isShortTransaction:(BOOL)a10 completionHandler:(id)a11
{
  v11 = a8;
  v12 = a7;
  v57 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v53 = a5;
  v17 = a11;
  v18 = +[MDMConfiguration sharedConfiguration];
  [v18 refreshDetailsFromDisk];
  if (a9)
  {
    v19 = [v18 managingProfileIdentifier];

    if (!v19)
    {
      v39 = [a1 _createNoInstallationError];
      (*(v17 + 2))(v17, 0, 0, v39);

      v32 = v53;
      goto LABEL_17;
    }
  }

  v50 = v17;
  v46 = a6;
  v52 = a1;
  v20 = [v18 checkInURL];
  v21 = [v18 copyMemberQueueIdentity];
  v22 = [v18 checkInPinnedSecCertificateRefs];
  v23 = [v18 pinningRevocationCheckRequired];
  v24 = [v18 signMessage];
  v45 = [v18 isUserEnrollment];
  v51 = [v18 enrollmentID];
  if (v12)
  {
    v25 = [v18 topic];
    if (!v11)
    {
LABEL_5:
      v26 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v26 = [v18 pushMagic];
LABEL_8:
  v49 = v26;
  v27 = [v18 rmAccountID];
  v28 = v27;
  v54 = v16;
  if (v20 && v21)
  {
    v43 = v24;
    v44 = v23;
    v29 = v20;
    v30 = v22;
    v31 = *DMCLogObjects();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v56 = a4;
      _os_log_impl(&dword_22E997000, v31, OS_LOG_TYPE_INFO, "Calling checkInRequestAtURL - channel type: %lu", buf, 0xCu);
    }

    v17 = v50;
    BYTE1(v42) = a10;
    LOBYTE(v42) = v46;
    v32 = v53;
    v41 = v28;
    v33 = v28;
    v34 = v49;
    v40 = v25;
    v35 = v25;
    v36 = v51;
    [v52 _checkInRequestAtURL:v29 identity:v21 pinnedSecCertificateRefs:v30 pinningRevocationCheckRequired:v44 signMessage:v43 isUserEnrollment:v45 enrollmentID:v51 topic:v40 pushMagic:v49 rmAccountID:v41 messageType:v54 requestDict:v53 channelType:a4 isCheckout:v42 isShortTransaction:v50 completionHandler:?];
    CFRelease(v21);
  }

  else
  {
    v48 = v27;
    v29 = v20;
    v35 = v25;
    v30 = v22;
    if (v21)
    {
      CFRelease(v21);
    }

    v37 = [v52 _createNoInstallationError];
    v17 = v50;
    (*(v50 + 2))(v50, 0, 0, v37);

    v32 = v53;
    v36 = v51;
    v33 = v48;
    v34 = v49;
  }

  v16 = v54;
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)_checkInRequestAtURL:(id)a3 identity:(__SecIdentity *)a4 pinnedSecCertificateRefs:(id)a5 pinningRevocationCheckRequired:(BOOL)a6 signMessage:(BOOL)a7 isUserEnrollment:(BOOL)a8 enrollmentID:(id)a9 topic:(id)a10 pushMagic:(id)a11 rmAccountID:(id)a12 messageType:(id)a13 requestDict:(id)a14 channelType:(unint64_t)a15 isCheckout:(BOOL)a16 isShortTransaction:(BOOL)a17 completionHandler:(id)a18
{
  v39 = a7;
  v40 = a8;
  v38 = a6;
  v50 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v42 = a5;
  v41 = a12;
  v20 = a13;
  v21 = a18;
  v22 = a14;
  v23 = a11;
  v24 = a10;
  v25 = a9;
  v26 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v20;
    _os_log_impl(&dword_22E997000, v26, OS_LOG_TYPE_DEFAULT, "Running CheckIn Request to MDM service with MessageType: %{public}@", buf, 0xCu);
  }

  v47 = 0;
  v27 = [a1 _requestDataWithRequestDict:v22 enrollmentID:v25 topic:v24 pushMagic:v23 isUserEnrollment:v40 messageType:v20 channelType:a15 error:&v47];

  v28 = v47;
  if (v27)
  {
    v30 = v41;
    v29 = v42;
    BYTE2(v36) = a17;
    BYTE1(v36) = a16;
    LOBYTE(v36) = !a16;
    v31 = v43;
    v32 = [MDMHTTPTransaction initWithURL:"initWithURL:data:identity:pinnedCertificates:pinningRevocationCheckRequired:signMessage:isCheckin:isCheckout:isShortTransaction:rmAccountID:" data:v43 identity:v27 pinnedCertificates:a4 pinningRevocationCheckRequired:v42 signMessage:v38 isCheckin:v39 isCheckout:v36 isShortTransaction:v41 rmAccountID:?];
    if ([MEMORY[0x277D03500] shouldSimulateMDMCommunication])
    {
      v33 = +[(DMCHTTPTransaction *)MDMHTTPTransaction];
      [(DMCHTTPTransaction *)v32 setSimulatedTransactionBlock:v33];
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __261__MDMCheckInRequest__checkInRequestAtURL_identity_pinnedSecCertificateRefs_pinningRevocationCheckRequired_signMessage_isUserEnrollment_enrollmentID_topic_pushMagic_rmAccountID_messageType_requestDict_channelType_isCheckout_isShortTransaction_completionHandler___block_invoke;
    v44[3] = &unk_278856D40;
    v45 = v32;
    v46 = v21;
    v34 = v32;
    [(DMCHTTPTransaction *)v34 performCompletionBlock:v44];
  }

  else
  {
    (*(v21 + 2))(v21, 0, 0, v28);
    v29 = v42;
    v31 = v43;
    v30 = v41;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __261__MDMCheckInRequest__checkInRequestAtURL_identity_pinnedSecCertificateRefs_pinningRevocationCheckRequired_signMessage_isUserEnrollment_enrollmentID_topic_pushMagic_rmAccountID_messageType_requestDict_channelType_isCheckout_isShortTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  v3 = [*(a1 + 32) statusCode];
  v4 = v3;
  if (v2)
  {
    if (v3 == 401 && ([*(a1 + 32) authenticator], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v7 = "CheckIn failed with 401 and authenticator present - cannot re-auth here";
        v8 = v6;
        v9 = 2;
LABEL_8:
        _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      }
    }

    else
    {
      v10 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v2;
        v7 = "CheckIn Request failed with error: %{public}@";
        v8 = v10;
        v9 = 12;
        goto LABEL_8;
      }
    }

    v11 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
    goto LABEL_15;
  }

  v12 = [*(a1 + 32) responseHeaders];
  v13 = v12;
  v14 = MEMORY[0x277CBEC10];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [*(a1 + 32) responseData];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{v4, @"ResponseStatusCode"}];
  v23[1] = @"ResponseHeaders";
  v24[0] = v17;
  v24[1] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v19 = [v18 mutableCopy];

  [v19 setObject:v16 forKeyedSubscript:@"ResponseBody"];
  v20 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v4;
    _os_log_impl(&dword_22E997000, v20, OS_LOG_TYPE_DEFAULT, "CheckIn Request finished with status: %ld", buf, 0xCu);
  }

  v21 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
}

+ (id)_userFieldsForRequest
{
  v11[2] = *MEMORY[0x277D85DE8];
  DMCLKLogoutSupportClass();
  v2 = objc_opt_new();
  v3 = [v2 isCurrentUserAnonymous];

  if (v3)
  {
    v4 = @"Temporary Session";
  }

  else
  {
    v5 = [MEMORY[0x277D77BF8] sharedManager];
    v6 = [v5 currentUser];

    v4 = [v6 username];
  }

  v10[0] = @"UserID";
  v10[1] = @"UserShortName";
  v11[0] = @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF";
  v11[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_requestDataWithRequestDict:(id)a3 enrollmentID:(id)a4 topic:(id)a5 pushMagic:(id)a6 isUserEnrollment:(BOOL)a7 messageType:(id)a8 channelType:(unint64_t)a9 error:(id *)a10
{
  v11 = a7;
  v16 = a9;
  v17 = a10;
  v39[2] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = v22;
  if (v11)
  {
    v38[0] = @"MessageType";
    v38[1] = @"EnrollmentID";
    v39[0] = v22;
    v39[1] = v19;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v25 = [v24 mutableCopy];
  }

  else
  {
    v36[0] = @"MessageType";
    v36[1] = @"UDID";
    v37[0] = v22;
    v24 = [MEMORY[0x277D03530] deviceUDID];
    v37[1] = v24;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v25 = [v26 mutableCopy];

    v17 = a10;
    v16 = a9;
  }

  [v25 setObject:v20 forKeyedSubscript:@"Topic"];
  [v25 setObject:v21 forKeyedSubscript:@"PushMagic"];
  if (v18)
  {
    [v25 addEntriesFromDictionary:v18];
  }

  if (v16 == 1)
  {
    v27 = [a1 _userFieldsForRequest];
    [v25 addEntriesFromDictionary:v27];
  }

  v28 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = v28;
    v30 = [v25 allKeys];
    *buf = 138543362;
    v35 = v30;
    _os_log_impl(&dword_22E997000, v29, OS_LOG_TYPE_DEBUG, "MDMCheckInRequest: Creating request data with dictionary with keys: %{public}@", buf, 0xCu);
  }

  v31 = [MEMORY[0x277CCAC58] dataWithPropertyList:v25 format:100 options:0 error:v17];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)_createNoInstallationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12079 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end