@interface ASMeetingResponseItem
- (ASMeetingResponseItem)initWithDeliveryItemFolderId:(id)id deliveryItemServerId:(id)serverId instanceDate:(id)date meetingResponse:(int)response eventUID:(id)d responseComment:(id)comment responseRequested:(BOOL)requested proposedStartTime:(id)self0 proposedEndTime:(id)self1;
- (id)description;
@end

@implementation ASMeetingResponseItem

- (ASMeetingResponseItem)initWithDeliveryItemFolderId:(id)id deliveryItemServerId:(id)serverId instanceDate:(id)date meetingResponse:(int)response eventUID:(id)d responseComment:(id)comment responseRequested:(BOOL)requested proposedStartTime:(id)self0 proposedEndTime:(id)self1
{
  idCopy = id;
  serverIdCopy = serverId;
  dateCopy = date;
  dCopy = d;
  commentCopy = comment;
  timeCopy = time;
  endTimeCopy = endTime;
  v28.receiver = self;
  v28.super_class = ASMeetingResponseItem;
  v19 = [(ASMeetingResponseItem *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_deliveryItemFolderId, id);
    objc_storeStrong(&v20->_deliveryItemServerId, serverId);
    objc_storeStrong(&v20->_instanceDate, date);
    v20->_meetingResponse = response;
    objc_storeStrong(&v20->_eventUID, d);
    objc_storeStrong(&v20->_comment, comment);
    objc_storeStrong(&v20->_proposedStartTime, time);
    objc_storeStrong(&v20->_proposedEndTime, endTime);
    v20->_responseRequested = requested;
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