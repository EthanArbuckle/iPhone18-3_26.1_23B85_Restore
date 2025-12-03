@interface SGMIBiomeReducedMessageEvents
- (SGMIBiomeReducedMessageEvents)init;
- (SGMIBiomeReducedMessageEvents)initWithScrolledToEnd:(BOOL)end messageViewMaxDwellTime:(double)time messageViewTotalDwellTime:(double)dwellTime messageViewCount:(unsigned int)count timeBeforeViewStartSinceAvailable:(double)available numberOfMailsViewedBeforeSinceAvailable:(unsigned int)sinceAvailable userReplied:(BOOL)replied replyDraftStarted:(BOOL)self0 forwardDraftStarted:(BOOL)self1 numberOfUnreadMessageAtFirstViewTime:(unsigned int)self2 numberOfMoreRecentUnreadMessageAtFirstViewTime:(unsigned int)self3 markedAsRead:(BOOL)self4 markedAsUnread:(BOOL)self5 markedAsJunk:(BOOL)self6 mailGotFlagged:(BOOL)self7 linkClicked:(BOOL)self8;
- (double)messageAvailableTime;
- (void)incrementNumberOfMoreRecentUnreadMessageAtFirstViewTime;
- (void)updateWithAppLaunchAtTime:(double)time;
- (void)updateWithEvent:(id)event eventTimestamp:(double)timestamp;
- (void)updateWithMessageMovedEventWithPayload:(id)payload;
- (void)updateWithReadChangedEventWithPayload:(id)payload;
- (void)updateWithViewEndWithPayload:(id)payload;
- (void)updateWithViewStartAtTime:(double)time unreadMessageCount:(unsigned int)count;
@end

@implementation SGMIBiomeReducedMessageEvents

- (void)incrementNumberOfMoreRecentUnreadMessageAtFirstViewTime
{
  if (!self->_messageViewCount)
  {
    ++self->_numberOfMoreRecentUnreadMessageAtFirstViewTime;
  }
}

- (double)messageAvailableTime
{
  result = -1.0;
  if (self->_messageFetchTime >= 0.0)
  {
    result = self->_firstAppLaunchFollowingFetch;
    if (result < 0.0)
    {
      return self->_messageFetchTime;
    }
  }

  return result;
}

- (void)updateWithEvent:(id)event eventTimestamp:(double)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    eventName = [eventCopy eventName];
    v18 = 138412290;
    v19 = eventName;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "Processing event with eventName: %@", &v18, 0xCu);
  }

  eventName2 = [eventCopy eventName];
  v8 = [eventName2 isEqualToString:@"reply_sent"];

  if (v8)
  {
    v9 = 9;
LABEL_11:
    *(&self->super.isa + v9) = 1;
    goto LABEL_12;
  }

  eventName3 = [eventCopy eventName];
  v11 = [eventName3 isEqualToString:@"reply_draft_started"];

  if (v11)
  {
    v9 = 13;
    goto LABEL_11;
  }

  eventName4 = [eventCopy eventName];
  v13 = [eventName4 isEqualToString:@"forward_draft_started"];

  if (v13)
  {
    v9 = 14;
    goto LABEL_11;
  }

  eventName5 = [eventCopy eventName];
  v15 = [eventName5 isEqualToString:@"link_clicked"];

  if (v15)
  {
    v9 = 16;
    goto LABEL_11;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateWithMessageMovedEventWithPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"mailbox_type"];

  v5 = payloadCopy;
  if (v4)
  {
    v6 = [payloadCopy objectForKeyedSubscript:@"mailbox_type"];
    if ([v6 intValue] == 1)
    {
      self->_markedAsJunk = 1;
    }

    v5 = payloadCopy;
  }
}

- (void)updateWithReadChangedEventWithPayload:(id)payload
{
  v7 = [payload objectForKeyedSubscript:@"value"];
  if (![v7 intValue])
  {
    v6 = 11;
    v5 = v7;
    goto LABEL_6;
  }

  v4 = [v7 intValue] == 1;
  v5 = v7;
  if (v4)
  {
    v6 = 10;
LABEL_6:
    *(&self->super.isa + v6) = 1;
  }
}

- (void)updateWithViewEndWithPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:@"scrolled_to_end"];

  if (v5)
  {
    self->_scrolledToEnd = 1;
  }

  v9 = [payloadCopy objectForKeyedSubscript:@"duration"];

  [v9 doubleValue];
  if (v6 > self->_messageViewMaxDwellTime)
  {
    [v9 doubleValue];
    self->_messageViewMaxDwellTime = v7;
  }

  [v9 doubleValue];
  self->_messageViewTotalDwellTime = v8 + self->_messageViewTotalDwellTime;
}

- (void)updateWithViewStartAtTime:(double)time unreadMessageCount:(unsigned int)count
{
  messageViewCount = self->_messageViewCount;
  if (!messageViewCount)
  {
    [(SGMIBiomeReducedMessageEvents *)self messageAvailableTime];
    self->_timeBeforeViewStartSinceAvailable = time - v8;
    self->_numberOfUnreadMessageAtFirstViewTime = count;
    messageViewCount = self->_messageViewCount;
  }

  self->_messageViewCount = messageViewCount + 1;
}

- (void)updateWithAppLaunchAtTime:(double)time
{
  if (self->_messageFetchTime > 0.0 && self->_firstAppLaunchFollowingFetch < 0.0)
  {
    self->_firstAppLaunchFollowingFetch = time;
  }
}

- (SGMIBiomeReducedMessageEvents)initWithScrolledToEnd:(BOOL)end messageViewMaxDwellTime:(double)time messageViewTotalDwellTime:(double)dwellTime messageViewCount:(unsigned int)count timeBeforeViewStartSinceAvailable:(double)available numberOfMailsViewedBeforeSinceAvailable:(unsigned int)sinceAvailable userReplied:(BOOL)replied replyDraftStarted:(BOOL)self0 forwardDraftStarted:(BOOL)self1 numberOfUnreadMessageAtFirstViewTime:(unsigned int)self2 numberOfMoreRecentUnreadMessageAtFirstViewTime:(unsigned int)self3 markedAsRead:(BOOL)self4 markedAsUnread:(BOOL)self5 markedAsJunk:(BOOL)self6 mailGotFlagged:(BOOL)self7 linkClicked:(BOOL)self8
{
  v33.receiver = self;
  v33.super_class = SGMIBiomeReducedMessageEvents;
  result = [(SGMIBiomeReducedMessageEvents *)&v33 init];
  if (result)
  {
    result->_scrolledToEnd = end;
    result->_messageViewMaxDwellTime = time;
    result->_messageViewTotalDwellTime = dwellTime;
    result->_timeBeforeViewStartSinceAvailable = available;
    result->_numberOfMailsViewedBeforeSinceAvailable = sinceAvailable;
    result->_messageViewCount = count;
    result->_userReplied = replied;
    result->_replyDraftStarted = started;
    result->_forwardDraftStarted = draftStarted;
    result->_numberOfUnreadMessageAtFirstViewTime = viewTime;
    result->_numberOfMoreRecentUnreadMessageAtFirstViewTime = firstViewTime;
    result->_markedAsRead = read;
    result->_markedAsUnread = unread;
    result->_markedAsJunk = junk;
    result->_mailGotFlagged = flagged;
    result->_linkClicked = clicked;
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_firstAppLaunchFollowingFetch = _Q0;
  }

  return result;
}

- (SGMIBiomeReducedMessageEvents)init
{
  v8.receiver = self;
  v8.super_class = SGMIBiomeReducedMessageEvents;
  result = [(SGMIBiomeReducedMessageEvents *)&v8 init];
  if (result)
  {
    result->_scrolledToEnd = 0;
    result->_messageViewMaxDwellTime = 0.0;
    result->_messageViewTotalDwellTime = 0.0;
    result->_timeBeforeViewStartSinceAvailable = -1.0;
    result->_numberOfMoreRecentUnreadMessageAtFirstViewTime = 0;
    *&result->_messageViewCount = 0;
    result->_numberOfMailsViewedBeforeSinceAvailable = 0;
    *&result->_userReplied = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_firstAppLaunchFollowingFetch = _Q0;
  }

  return result;
}

@end