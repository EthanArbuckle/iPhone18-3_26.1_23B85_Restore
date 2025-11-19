@interface ASMeetingResponseItem
- (ASMeetingResponseItem)initWithDeliveryItemFolderId:(id)a3 deliveryItemServerId:(id)a4 instanceDate:(id)a5 meetingResponse:(int)a6 eventUID:(id)a7 responseComment:(id)a8 responseRequested:(BOOL)a9 proposedStartTime:(id)a10 proposedEndTime:(id)a11;
- (id)description;
@end

@implementation ASMeetingResponseItem

- (ASMeetingResponseItem)initWithDeliveryItemFolderId:(id)a3 deliveryItemServerId:(id)a4 instanceDate:(id)a5 meetingResponse:(int)a6 eventUID:(id)a7 responseComment:(id)a8 responseRequested:(BOOL)a9 proposedStartTime:(id)a10 proposedEndTime:(id)a11
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a7;
  v23 = a8;
  v17 = a10;
  v18 = a11;
  v28.receiver = self;
  v28.super_class = ASMeetingResponseItem;
  v19 = [(ASMeetingResponseItem *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_deliveryItemFolderId, a3);
    objc_storeStrong(&v20->_deliveryItemServerId, a4);
    objc_storeStrong(&v20->_instanceDate, a5);
    v20->_meetingResponse = a6;
    objc_storeStrong(&v20->_eventUID, a7);
    objc_storeStrong(&v20->_comment, a8);
    objc_storeStrong(&v20->_proposedStartTime, a10);
    objc_storeStrong(&v20->_proposedEndTime, a11);
    v20->_responseRequested = a9;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ASMeetingResponseItem;
  v4 = [(ASMeetingResponseItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: deliveryItemFolderId %@ deliveryItemServerId %@ instanceDate %@ meetingResponse %d eventUID %@ calEventServerId %@ status %ld", v4, self->_deliveryItemFolderId, self->_deliveryItemServerId, self->_instanceDate, self->_meetingResponse, self->_eventUID, self->_calEventServerId, self->_status];

  return v5;
}

@end