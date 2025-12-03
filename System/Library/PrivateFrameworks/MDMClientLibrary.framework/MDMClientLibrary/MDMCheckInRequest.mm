@interface MDMCheckInRequest
+ (id)_createNoInstallationError;
+ (id)_requestDataWithRequestDict:(id)dict enrollmentID:(id)d topic:(id)topic pushMagic:(id)magic isUserEnrollment:(BOOL)enrollment messageType:(id)type channelType:(unint64_t)channelType error:(id *)self0;
+ (id)_userFieldsForRequest;
+ (void)_checkInRequestAtURL:(id)l identity:(__SecIdentity *)identity pinnedSecCertificateRefs:(id)refs pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isUserEnrollment:(BOOL)enrollment enrollmentID:(id)d topic:(id)self0 pushMagic:(id)self1 rmAccountID:(id)self2 messageType:(id)self3 requestDict:(id)self4 channelType:(unint64_t)self5 isCheckout:(BOOL)self6 isShortTransaction:(BOOL)self7 completionHandler:(id)self8;
+ (void)executeRequestForMessageType:(id)type channelType:(unint64_t)channelType requestDict:(id)dict isCheckout:(BOOL)checkout shouldIncludeTopic:(BOOL)topic shouldIncludePushMagic:(BOOL)magic isEnrollmentRequired:(BOOL)required isShortTransaction:(BOOL)self0 completionHandler:(id)self1;
@end

@implementation MDMCheckInRequest

+ (void)executeRequestForMessageType:(id)type channelType:(unint64_t)channelType requestDict:(id)dict isCheckout:(BOOL)checkout shouldIncludeTopic:(BOOL)topic shouldIncludePushMagic:(BOOL)magic isEnrollmentRequired:(BOOL)required isShortTransaction:(BOOL)self0 completionHandler:(id)self1
{
  magicCopy = magic;
  topicCopy = topic;
  v57 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dictCopy = dict;
  handlerCopy = handler;
  v18 = +[MDMConfiguration sharedConfiguration];
  [v18 refreshDetailsFromDisk];
  if (required)
  {
    managingProfileIdentifier = [v18 managingProfileIdentifier];

    if (!managingProfileIdentifier)
    {
      _createNoInstallationError = [self _createNoInstallationError];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, _createNoInstallationError);

      v32 = dictCopy;
      goto LABEL_17;
    }
  }

  v50 = handlerCopy;
  checkoutCopy = checkout;
  selfCopy = self;
  checkInURL = [v18 checkInURL];
  copyMemberQueueIdentity = [v18 copyMemberQueueIdentity];
  checkInPinnedSecCertificateRefs = [v18 checkInPinnedSecCertificateRefs];
  pinningRevocationCheckRequired = [v18 pinningRevocationCheckRequired];
  signMessage = [v18 signMessage];
  isUserEnrollment = [v18 isUserEnrollment];
  enrollmentID = [v18 enrollmentID];
  if (topicCopy)
  {
    topic = [v18 topic];
    if (!magicCopy)
    {
LABEL_5:
      pushMagic = 0;
      goto LABEL_8;
    }
  }

  else
  {
    topic = 0;
    if (!magicCopy)
    {
      goto LABEL_5;
    }
  }

  pushMagic = [v18 pushMagic];
LABEL_8:
  v49 = pushMagic;
  rmAccountID = [v18 rmAccountID];
  v28 = rmAccountID;
  v54 = typeCopy;
  if (checkInURL && copyMemberQueueIdentity)
  {
    v43 = signMessage;
    v44 = pinningRevocationCheckRequired;
    v29 = checkInURL;
    v30 = checkInPinnedSecCertificateRefs;
    v31 = *DMCLogObjects();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      channelTypeCopy = channelType;
      _os_log_impl(&dword_22E997000, v31, OS_LOG_TYPE_INFO, "Calling checkInRequestAtURL - channel type: %lu", buf, 0xCu);
    }

    handlerCopy = v50;
    BYTE1(v42) = transaction;
    LOBYTE(v42) = checkoutCopy;
    v32 = dictCopy;
    v41 = v28;
    v33 = v28;
    v34 = v49;
    v40 = topic;
    v35 = topic;
    v36 = enrollmentID;
    [selfCopy _checkInRequestAtURL:v29 identity:copyMemberQueueIdentity pinnedSecCertificateRefs:v30 pinningRevocationCheckRequired:v44 signMessage:v43 isUserEnrollment:isUserEnrollment enrollmentID:enrollmentID topic:v40 pushMagic:v49 rmAccountID:v41 messageType:v54 requestDict:dictCopy channelType:channelType isCheckout:v42 isShortTransaction:v50 completionHandler:?];
    CFRelease(copyMemberQueueIdentity);
  }

  else
  {
    v48 = rmAccountID;
    v29 = checkInURL;
    v35 = topic;
    v30 = checkInPinnedSecCertificateRefs;
    if (copyMemberQueueIdentity)
    {
      CFRelease(copyMemberQueueIdentity);
    }

    _createNoInstallationError2 = [selfCopy _createNoInstallationError];
    handlerCopy = v50;
    (*(v50 + 2))(v50, 0, 0, _createNoInstallationError2);

    v32 = dictCopy;
    v36 = enrollmentID;
    v33 = v48;
    v34 = v49;
  }

  typeCopy = v54;
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)_checkInRequestAtURL:(id)l identity:(__SecIdentity *)identity pinnedSecCertificateRefs:(id)refs pinningRevocationCheckRequired:(BOOL)required signMessage:(BOOL)message isUserEnrollment:(BOOL)enrollment enrollmentID:(id)d topic:(id)self0 pushMagic:(id)self1 rmAccountID:(id)self2 messageType:(id)self3 requestDict:(id)self4 channelType:(unint64_t)self5 isCheckout:(BOOL)self6 isShortTransaction:(BOOL)self7 completionHandler:(id)self8
{
  messageCopy = message;
  enrollmentCopy = enrollment;
  requiredCopy = required;
  v50 = *MEMORY[0x277D85DE8];
  lCopy = l;
  refsCopy = refs;
  iDCopy = iD;
  typeCopy = type;
  handlerCopy = handler;
  dictCopy = dict;
  magicCopy = magic;
  topicCopy = topic;
  dCopy = d;
  v26 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = typeCopy;
    _os_log_impl(&dword_22E997000, v26, OS_LOG_TYPE_DEFAULT, "Running CheckIn Request to MDM service with MessageType: %{public}@", buf, 0xCu);
  }

  v47 = 0;
  v27 = [self _requestDataWithRequestDict:dictCopy enrollmentID:dCopy topic:topicCopy pushMagic:magicCopy isUserEnrollment:enrollmentCopy messageType:typeCopy channelType:channelType error:&v47];

  v28 = v47;
  if (v27)
  {
    v30 = iDCopy;
    v29 = refsCopy;
    BYTE2(v36) = transaction;
    BYTE1(v36) = checkout;
    LOBYTE(v36) = !checkout;
    v31 = lCopy;
    v32 = [MDMHTTPTransaction initWithURL:"initWithURL:data:identity:pinnedCertificates:pinningRevocationCheckRequired:signMessage:isCheckin:isCheckout:isShortTransaction:rmAccountID:" data:lCopy identity:v27 pinnedCertificates:identity pinningRevocationCheckRequired:refsCopy signMessage:requiredCopy isCheckin:messageCopy isCheckout:v36 isShortTransaction:iDCopy rmAccountID:?];
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
    v46 = handlerCopy;
    v34 = v32;
    [(DMCHTTPTransaction *)v34 performCompletionBlock:v44];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v28);
    v29 = refsCopy;
    v31 = lCopy;
    v30 = iDCopy;
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
  isCurrentUserAnonymous = [v2 isCurrentUserAnonymous];

  if (isCurrentUserAnonymous)
  {
    username = @"Temporary Session";
  }

  else
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8] currentUser];

    username = [currentUser username];
  }

  v10[0] = @"UserID";
  v10[1] = @"UserShortName";
  v11[0] = @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF";
  v11[1] = username;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_requestDataWithRequestDict:(id)dict enrollmentID:(id)d topic:(id)topic pushMagic:(id)magic isUserEnrollment:(BOOL)enrollment messageType:(id)type channelType:(unint64_t)channelType error:(id *)self0
{
  enrollmentCopy = enrollment;
  channelTypeCopy2 = channelType;
  errorCopy2 = error;
  v39[2] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  dCopy = d;
  topicCopy = topic;
  magicCopy = magic;
  typeCopy = type;
  v23 = typeCopy;
  if (enrollmentCopy)
  {
    v38[0] = @"MessageType";
    v38[1] = @"EnrollmentID";
    v39[0] = typeCopy;
    v39[1] = dCopy;
    deviceUDID = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v25 = [deviceUDID mutableCopy];
  }

  else
  {
    v36[0] = @"MessageType";
    v36[1] = @"UDID";
    v37[0] = typeCopy;
    deviceUDID = [MEMORY[0x277D03530] deviceUDID];
    v37[1] = deviceUDID;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v25 = [v26 mutableCopy];

    errorCopy2 = error;
    channelTypeCopy2 = channelType;
  }

  [v25 setObject:topicCopy forKeyedSubscript:@"Topic"];
  [v25 setObject:magicCopy forKeyedSubscript:@"PushMagic"];
  if (dictCopy)
  {
    [v25 addEntriesFromDictionary:dictCopy];
  }

  if (channelTypeCopy2 == 1)
  {
    _userFieldsForRequest = [self _userFieldsForRequest];
    [v25 addEntriesFromDictionary:_userFieldsForRequest];
  }

  v28 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = v28;
    allKeys = [v25 allKeys];
    *buf = 138543362;
    v35 = allKeys;
    _os_log_impl(&dword_22E997000, v29, OS_LOG_TYPE_DEBUG, "MDMCheckInRequest: Creating request data with dictionary with keys: %{public}@", buf, 0xCu);
  }

  v31 = [MEMORY[0x277CCAC58] dataWithPropertyList:v25 format:100 options:0 error:errorCopy2];

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