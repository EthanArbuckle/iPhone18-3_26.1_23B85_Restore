@interface MSPBaseFeedbackReportTicket
- (GEORPFeedbackUserInfo)userInfo;
- (MSPBaseFeedbackReportTicket)initWithFeedbackRequestParameters:(id)parameters traits:(id)traits userInfoType:(int64_t)type;
- (void)_submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity;
- (void)cancel;
- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity;
@end

@implementation MSPBaseFeedbackReportTicket

- (MSPBaseFeedbackReportTicket)initWithFeedbackRequestParameters:(id)parameters traits:(id)traits userInfoType:(int64_t)type
{
  parametersCopy = parameters;
  traitsCopy = traits;
  v14.receiver = self;
  v14.super_class = MSPBaseFeedbackReportTicket;
  v11 = [(MSPBaseFeedbackReportTicket *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestParameters, parameters);
    objc_storeStrong(&v12->_traits, traits);
    v12->_userInfoType = type;
  }

  return v12;
}

- (GEORPFeedbackUserInfo)userInfo
{
  if (!self->_userInfo)
  {
    userInfoType = self->_userInfoType;
    if (userInfoType == 2)
    {
      v7 = objc_alloc_init(MEMORY[0x277D0EC90]);
      userInfo = self->_userInfo;
      self->_userInfo = v7;

      v9 = objc_alloc_init(MEMORY[0x277D0ECA0]);
      [(GEORPFeedbackUserInfo *)self->_userInfo setTdmUserInfo:v9];

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      tdmUserInfo = [(GEORPFeedbackUserInfo *)self->_userInfo tdmUserInfo];
      [tdmUserInfo setAnonymousUserId:uUIDString];
    }

    else
    {
      if (userInfoType != 1)
      {
        goto LABEL_7;
      }

      v4 = objc_alloc_init(MEMORY[0x277D0EC90]);
      v5 = self->_userInfo;
      self->_userInfo = v4;

      uUID = [MEMORY[0x277D0ECA8] _credentialsForPrimaryICloudAccount];
      [(GEORPFeedbackUserInfo *)self->_userInfo setUserCredentials:uUID];
    }
  }

LABEL_7:
  v12 = self->_userInfo;

  return v12;
}

- (void)submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity
{
  v8 = MEMORY[0x277D0EC80];
  activityCopy = activity;
  handlerCopy = handler;
  queueCopy = queue;
  v12 = [v8 alloc];
  requestParameters = [(MSPBaseFeedbackReportTicket *)self requestParameters];
  userInfo = [(MSPBaseFeedbackReportTicket *)self userInfo];
  traits = [(MSPBaseFeedbackReportTicket *)self traits];
  v21 = [v12 initWithFeedbackRequestParameters:requestParameters userInfo:userInfo traits:traits];

  willSubmitRequestBlock = [(MSPBaseFeedbackReportTicket *)self willSubmitRequestBlock];

  if (willSubmitRequestBlock)
  {
    willSubmitRequestBlock2 = [(MSPBaseFeedbackReportTicket *)self willSubmitRequestBlock];
    (willSubmitRequestBlock2)[2](willSubmitRequestBlock2, v21);
  }

  mEMORY[0x277D0EBD0] = [MEMORY[0x277D0EBD0] sharedService];
  traits2 = [(MSPBaseFeedbackReportTicket *)self traits];
  v20 = [mEMORY[0x277D0EBD0] ticketForFeedbackRequest:v21 traits:traits2];
  [(MSPBaseFeedbackReportTicket *)self setTicket:v20];

  [(MSPBaseFeedbackReportTicket *)self _submitWithCallbackQueue:queueCopy handler:handlerCopy networkActivity:activityCopy];
}

- (void)_submitWithCallbackQueue:(id)queue handler:(id)handler networkActivity:(id)activity
{
  queueCopy = queue;
  handlerCopy = handler;
  activityCopy = activity;
  ticket = [(MSPBaseFeedbackReportTicket *)self ticket];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__MSPBaseFeedbackReportTicket__submitWithCallbackQueue_handler_networkActivity___block_invoke;
  v18[3] = &unk_2798664C8;
  v20 = handlerCopy;
  v19 = queueCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__MSPBaseFeedbackReportTicket__submitWithCallbackQueue_handler_networkActivity___block_invoke_3;
  v15[3] = &unk_279866518;
  v16 = v19;
  v17 = activityCopy;
  v12 = v19;
  v13 = activityCopy;
  v14 = handlerCopy;
  [ticket submitWithHandler:v18 networkActivity:v15];
}

void __80__MSPBaseFeedbackReportTicket__submitWithCallbackQueue_handler_networkActivity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = __80__MSPBaseFeedbackReportTicket__submitWithCallbackQueue_handler_networkActivity___block_invoke_2;
    v14 = &unk_2798664A0;
    v18 = v10;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    if (v11)
    {
      dispatch_async(v11, v12);
    }

    else
    {
      v13(v12);
    }
  }
}

void __80__MSPBaseFeedbackReportTicket__submitWithCallbackQueue_handler_networkActivity___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = __80__MSPBaseFeedbackReportTicket__submitWithCallbackQueue_handler_networkActivity___block_invoke_4;
    v7 = &unk_2798664F0;
    v8 = v2;
    v9 = a2;
    if (v4)
    {
      dispatch_async(v4, v5);
    }

    else
    {
      v6(v5);
    }
  }
}

- (void)cancel
{
  ticket = self->_ticket;
  if (ticket)
  {
    [(GEOMapServiceFeedbackReportTicket *)ticket cancel];
    v4 = self->_ticket;
    self->_ticket = 0;
  }
}

@end