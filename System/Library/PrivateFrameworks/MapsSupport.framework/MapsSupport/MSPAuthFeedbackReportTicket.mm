@interface MSPAuthFeedbackReportTicket
- (id)_dataToSign;
- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity;
@end

@implementation MSPAuthFeedbackReportTicket

- (id)_dataToSign
{
  userInfoType = [(MSPBaseFeedbackReportTicket *)self userInfoType];
  if (userInfoType == 2)
  {
    userInfo = [(MSPBaseFeedbackReportTicket *)self userInfo];
    tdmUserInfo = [userInfo tdmUserInfo];
    anonymousUserId = [tdmUserInfo anonymousUserId];
    goto LABEL_5;
  }

  if (userInfoType == 1)
  {
    userInfo = [(MSPBaseFeedbackReportTicket *)self userInfo];
    tdmUserInfo = [userInfo userCredentials];
    anonymousUserId = [tdmUserInfo icloudUserPersonId];
LABEL_5:
    v7 = anonymousUserId;
    v8 = [anonymousUserId dataUsingEncoding:4];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity
{
  queueCopy = queue;
  handlerCopy = handler;
  activityCopy = activity;
  _dataToSign = [(MSPAuthFeedbackReportTicket *)self _dataToSign];
  if ([_dataToSign length])
  {
    BOOL = GEOConfigGetBOOL();
    GEOConfigGetDouble();
    v14 = v13;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__MSPAuthFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke;
    v17[3] = &unk_279868648;
    v19 = handlerCopy;
    v17[4] = self;
    v18 = queueCopy;
    v20 = activityCopy;
    MSPUGCFetchClientCertificate(@"com.apple.Maps.CommunityID", _dataToSign, _dataToSign, BOOL, v17, v14);

    v15 = v19;
  }

  else
  {
    v16 = MSPGetMSPAuthFeedbackReportTicketLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_ERROR, "No data to sign", buf, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"No data to sign" code:-1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
  }
}

void __79__MSPAuthFeedbackReportTicket_submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MSPGetMSPAuthFeedbackReportTicketLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "Failed certificate fetch with error %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = [*(a1 + 32) userInfo];
    v12 = [v11 tdmUserInfo];

    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277D0ECA0]);
      v14 = [*(a1 + 32) userInfo];
      [v14 setTdmUserInfo:v13];
    }

    v15 = [v7 copy];
    v16 = [*(a1 + 32) userInfo];
    v17 = [v16 tdmUserInfo];
    [v17 setBaaCertificates:v15];

    v18 = [*(a1 + 32) userInfo];
    v19 = [v18 tdmUserInfo];
    [v19 setBaaSignature:v8];

    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v24.receiver = *(a1 + 32);
    v24.super_class = MSPAuthFeedbackReportTicket;
    objc_msgSendSuper2(&v24, sel_submitWithCallbackQueue_handler_networkActivity_, v20, v21, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end