@interface SGMIBiomeReducedMessageEvents
- (SGMIBiomeReducedMessageEvents)init;
- (SGMIBiomeReducedMessageEvents)initWithScrolledToEnd:(BOOL)a3 messageViewMaxDwellTime:(double)a4 messageViewTotalDwellTime:(double)a5 messageViewCount:(unsigned int)a6 timeBeforeViewStartSinceAvailable:(double)a7 numberOfMailsViewedBeforeSinceAvailable:(unsigned int)a8 userReplied:(BOOL)a9 replyDraftStarted:(BOOL)a10 forwardDraftStarted:(BOOL)a11 numberOfUnreadMessageAtFirstViewTime:(unsigned int)a12 numberOfMoreRecentUnreadMessageAtFirstViewTime:(unsigned int)a13 markedAsRead:(BOOL)a14 markedAsUnread:(BOOL)a15 markedAsJunk:(BOOL)a16 mailGotFlagged:(BOOL)a17 linkClicked:(BOOL)a18;
- (double)messageAvailableTime;
- (void)incrementNumberOfMoreRecentUnreadMessageAtFirstViewTime;
- (void)updateWithAppLaunchAtTime:(double)a3;
- (void)updateWithEvent:(id)a3 eventTimestamp:(double)a4;
- (void)updateWithMessageMovedEventWithPayload:(id)a3;
- (void)updateWithReadChangedEventWithPayload:(id)a3;
- (void)updateWithViewEndWithPayload:(id)a3;
- (void)updateWithViewStartAtTime:(double)a3 unreadMessageCount:(unsigned int)a4;
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

- (void)updateWithEvent:(id)a3 eventTimestamp:(double)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v5 eventName];
    v18 = 138412290;
    v19 = v17;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "Processing event with eventName: %@", &v18, 0xCu);
  }

  v7 = [v5 eventName];
  v8 = [v7 isEqualToString:@"reply_sent"];

  if (v8)
  {
    v9 = 9;
LABEL_11:
    *(&self->super.isa + v9) = 1;
    goto LABEL_12;
  }

  v10 = [v5 eventName];
  v11 = [v10 isEqualToString:@"reply_draft_started"];

  if (v11)
  {
    v9 = 13;
    goto LABEL_11;
  }

  v12 = [v5 eventName];
  v13 = [v12 isEqualToString:@"forward_draft_started"];

  if (v13)
  {
    v9 = 14;
    goto LABEL_11;
  }

  v14 = [v5 eventName];
  v15 = [v14 isEqualToString:@"link_clicked"];

  if (v15)
  {
    v9 = 16;
    goto LABEL_11;
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateWithMessageMovedEventWithPayload:(id)a3
{
  v7 = a3;
  v4 = [v7 objectForKeyedSubscript:@"mailbox_type"];

  v5 = v7;
  if (v4)
  {
    v6 = [v7 objectForKeyedSubscript:@"mailbox_type"];
    if ([v6 intValue] == 1)
    {
      self->_markedAsJunk = 1;
    }

    v5 = v7;
  }
}

- (void)updateWithReadChangedEventWithPayload:(id)a3
{
  v7 = [a3 objectForKeyedSubscript:@"value"];
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

- (void)updateWithViewEndWithPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"scrolled_to_end"];

  if (v5)
  {
    self->_scrolledToEnd = 1;
  }

  v9 = [v4 objectForKeyedSubscript:@"duration"];

  [v9 doubleValue];
  if (v6 > self->_messageViewMaxDwellTime)
  {
    [v9 doubleValue];
    self->_messageViewMaxDwellTime = v7;
  }

  [v9 doubleValue];
  self->_messageViewTotalDwellTime = v8 + self->_messageViewTotalDwellTime;
}

- (void)updateWithViewStartAtTime:(double)a3 unreadMessageCount:(unsigned int)a4
{
  messageViewCount = self->_messageViewCount;
  if (!messageViewCount)
  {
    [(SGMIBiomeReducedMessageEvents *)self messageAvailableTime];
    self->_timeBeforeViewStartSinceAvailable = a3 - v8;
    self->_numberOfUnreadMessageAtFirstViewTime = a4;
    messageViewCount = self->_messageViewCount;
  }

  self->_messageViewCount = messageViewCount + 1;
}

- (void)updateWithAppLaunchAtTime:(double)a3
{
  if (self->_messageFetchTime > 0.0 && self->_firstAppLaunchFollowingFetch < 0.0)
  {
    self->_firstAppLaunchFollowingFetch = a3;
  }
}

- (SGMIBiomeReducedMessageEvents)initWithScrolledToEnd:(BOOL)a3 messageViewMaxDwellTime:(double)a4 messageViewTotalDwellTime:(double)a5 messageViewCount:(unsigned int)a6 timeBeforeViewStartSinceAvailable:(double)a7 numberOfMailsViewedBeforeSinceAvailable:(unsigned int)a8 userReplied:(BOOL)a9 replyDraftStarted:(BOOL)a10 forwardDraftStarted:(BOOL)a11 numberOfUnreadMessageAtFirstViewTime:(unsigned int)a12 numberOfMoreRecentUnreadMessageAtFirstViewTime:(unsigned int)a13 markedAsRead:(BOOL)a14 markedAsUnread:(BOOL)a15 markedAsJunk:(BOOL)a16 mailGotFlagged:(BOOL)a17 linkClicked:(BOOL)a18
{
  v33.receiver = self;
  v33.super_class = SGMIBiomeReducedMessageEvents;
  result = [(SGMIBiomeReducedMessageEvents *)&v33 init];
  if (result)
  {
    result->_scrolledToEnd = a3;
    result->_messageViewMaxDwellTime = a4;
    result->_messageViewTotalDwellTime = a5;
    result->_timeBeforeViewStartSinceAvailable = a7;
    result->_numberOfMailsViewedBeforeSinceAvailable = a8;
    result->_messageViewCount = a6;
    result->_userReplied = a9;
    result->_replyDraftStarted = a10;
    result->_forwardDraftStarted = a11;
    result->_numberOfUnreadMessageAtFirstViewTime = a12;
    result->_numberOfMoreRecentUnreadMessageAtFirstViewTime = a13;
    result->_markedAsRead = a14;
    result->_markedAsUnread = a15;
    result->_markedAsJunk = a16;
    result->_mailGotFlagged = a17;
    result->_linkClicked = a18;
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