@interface XRCourierAgent
+ (id)sendCourierToVisitWaitingRoom:(id)room message:(id)message details:(id)details replyStop:(id)stop replyTicket:(id)ticket;
- (XRCourierAgent)initWithMessage:(id)message details:(id)details;
- (void)executeStopOnItinerary:(id)itinerary;
- (void)sendToWaitingRoom:(id)room replyStop:(id)stop replyTicket:(id)ticket;
@end

@implementation XRCourierAgent

+ (id)sendCourierToVisitWaitingRoom:(id)room message:(id)message details:(id)details replyStop:(id)stop replyTicket:(id)ticket
{
  ticketCopy = ticket;
  stopCopy = stop;
  detailsCopy = details;
  messageCopy = message;
  roomCopy = room;
  v16 = [XRCourierAgent alloc];
  v19 = objc_msgSend_initWithMessage_details_(v16, v17, messageCopy, detailsCopy, v18);

  objc_msgSend_sendToWaitingRoom_replyStop_replyTicket_(v19, v20, roomCopy, stopCopy, ticketCopy);

  return v19;
}

- (XRCourierAgent)initWithMessage:(id)message details:(id)details
{
  messageCopy = message;
  detailsCopy = details;
  v18.receiver = self;
  v18.super_class = XRCourierAgent;
  v9 = [(XRCourierAgent *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    v15 = objc_msgSend_copy(detailsCopy, v11, v12, v13, v14);
    details = v10->_details;
    v10->_details = v15;
  }

  return v10;
}

- (void)sendToWaitingRoom:(id)room replyStop:(id)stop replyTicket:(id)ticket
{
  ticketCopy = ticket;
  stopCopy = stop;
  roomCopy = room;
  v14 = objc_msgSend_visitorTicketForAgent_team_(roomCopy, v11, self, 0, v12);
  objc_msgSend_activateAtStop_activationTicket_finalDestination_finalTicket_(self, v13, roomCopy, v14, stopCopy, ticketCopy);
}

- (void)executeStopOnItinerary:(id)itinerary
{
  itineraryCopy = itinerary;
  v9 = objc_msgSend_mode(self, v5, v6, v7, v8);

  if (v9 == @"Activating")
  {
    v21.receiver = self;
    v21.super_class = XRCourierAgent;
    [(XRMobileAgent *)&v21 executeStopOnItinerary:itineraryCopy];
    v14 = objc_msgSend_currentStop(itineraryCopy, v10, v11, v12, v13);
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

    objc_msgSend_finishedWithMode_(itineraryCopy, v16, *v19, v17, v18);
  }

  else
  {
    v20.receiver = self;
    v20.super_class = XRCourierAgent;
    [(XRMobileAgent *)&v20 executeStopOnItinerary:itineraryCopy];
  }
}

@end