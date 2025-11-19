@interface CALNSharedCalendarInvitationResponseNotificationInfo
- (CALNSharedCalendarInvitationResponseNotificationInfo)initWithSourceClientIdentifier:(id)a3 calendarNotification:(id)a4 isDelegate:(BOOL)a5 sourceTitle:(id)a6 sourceIdentifier:(id)a7;
- (id)description;
@end

@implementation CALNSharedCalendarInvitationResponseNotificationInfo

- (CALNSharedCalendarInvitationResponseNotificationInfo)initWithSourceClientIdentifier:(id)a3 calendarNotification:(id)a4 isDelegate:(BOOL)a5 sourceTitle:(id)a6 sourceIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = CALNSharedCalendarInvitationResponseNotificationInfo;
  v16 = [(CALNSharedCalendarInvitationResponseNotificationInfo *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    sourceClientIdentifier = v16->_sourceClientIdentifier;
    v16->_sourceClientIdentifier = v17;

    objc_storeStrong(&v16->_calendarNotification, a4);
    v16->_isDelegate = a5;
    v19 = [v14 copy];
    sourceTitle = v16->_sourceTitle;
    v16->_sourceTitle = v19;

    v21 = [v15 copy];
    sourceIdentifier = v16->_sourceIdentifier;
    v16->_sourceIdentifier = v21;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self sourceClientIdentifier];
  v6 = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self calendarNotification];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNSharedCalendarInvitationResponseNotificationInfo isDelegate](self, "isDelegate")}];
  v8 = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self sourceTitle];
  v9 = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self sourceIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, calendarNotification = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end