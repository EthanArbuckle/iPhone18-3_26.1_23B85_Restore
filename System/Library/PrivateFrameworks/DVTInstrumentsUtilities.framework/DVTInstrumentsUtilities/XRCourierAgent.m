@interface XRCourierAgent
+ (id)sendCourierToVisitWaitingRoom:(id)a3 message:(id)a4 details:(id)a5 replyStop:(id)a6 replyTicket:(id)a7;
- (XRCourierAgent)initWithMessage:(id)a3 details:(id)a4;
- (void)executeStopOnItinerary:(id)a3;
- (void)sendToWaitingRoom:(id)a3 replyStop:(id)a4 replyTicket:(id)a5;
@end

@implementation XRCourierAgent

+ (id)sendCourierToVisitWaitingRoom:(id)a3 message:(id)a4 details:(id)a5 replyStop:(id)a6 replyTicket:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [XRCourierAgent alloc];
  v19 = objc_msgSend_initWithMessage_details_(v16, v17, v14, v13, v18);

  objc_msgSend_sendToWaitingRoom_replyStop_replyTicket_(v19, v20, v15, v12, v11);

  return v19;
}

- (XRCourierAgent)initWithMessage:(id)a3 details:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = XRCourierAgent;
  v9 = [(XRCourierAgent *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    v15 = objc_msgSend_copy(v8, v11, v12, v13, v14);
    details = v10->_details;
    v10->_details = v15;
  }

  return v10;
}

- (void)sendToWaitingRoom:(id)a3 replyStop:(id)a4 replyTicket:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = objc_msgSend_visitorTicketForAgent_team_(v10, v11, self, 0, v12);
  objc_msgSend_activateAtStop_activationTicket_finalDestination_finalTicket_(self, v13, v10, v14, v9, v8);
}

- (void)executeStopOnItinerary:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mode(self, v5, v6, v7, v8);

  if (v9 == @"Activating")
  {
    v21.receiver = self;
    v21.super_class = XRCourierAgent;
    [(XRMobileAgent *)&v21 executeStopOnItinerary:v4];
    v14 = objc_msgSend_currentStop(v4, v10, v11, v12, v13);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (self->_roomOwner)
      {
        v19 = XRMobileAgentFinished;
      }

      else
      {
        v19 = &XRMobileAgentFailed;
      }
    }

    else
    {
      v19 = XRMobileAgentFinished;
    }

    objc_msgSend_finishedWithMode_(v4, v16, *v19, v17, v18);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = XRCourierAgent;
    [(XRMobileAgent *)&v20 executeStopOnItinerary:v4];
  }
}

@end