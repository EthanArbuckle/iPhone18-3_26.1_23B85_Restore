@interface CALNSharedCalendarInvitationResponseNotificationInfo
- (CALNSharedCalendarInvitationResponseNotificationInfo)initWithSourceClientIdentifier:(id)identifier calendarNotification:(id)notification isDelegate:(BOOL)delegate sourceTitle:(id)title sourceIdentifier:(id)sourceIdentifier;
- (id)description;
@end

@implementation CALNSharedCalendarInvitationResponseNotificationInfo

- (CALNSharedCalendarInvitationResponseNotificationInfo)initWithSourceClientIdentifier:(id)identifier calendarNotification:(id)notification isDelegate:(BOOL)delegate sourceTitle:(id)title sourceIdentifier:(id)sourceIdentifier
{
  identifierCopy = identifier;
  notificationCopy = notification;
  titleCopy = title;
  sourceIdentifierCopy = sourceIdentifier;
  v24.receiver = self;
  v24.super_class = CALNSharedCalendarInvitationResponseNotificationInfo;
  v16 = [(CALNSharedCalendarInvitationResponseNotificationInfo *)&v24 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    sourceClientIdentifier = v16->_sourceClientIdentifier;
    v16->_sourceClientIdentifier = v17;

    objc_storeStrong(&v16->_calendarNotification, notification);
    v16->_isDelegate = delegate;
    v19 = [titleCopy copy];
    sourceTitle = v16->_sourceTitle;
    v16->_sourceTitle = v19;

    v21 = [sourceIdentifierCopy copy];
    sourceIdentifier = v16->_sourceIdentifier;
    v16->_sourceIdentifier = v21;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sourceClientIdentifier = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self sourceClientIdentifier];
  calendarNotification = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self calendarNotification];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNSharedCalendarInvitationResponseNotificationInfo isDelegate](self, "isDelegate")}];
  sourceTitle = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self sourceTitle];
  sourceIdentifier = [(CALNSharedCalendarInvitationResponseNotificationInfo *)self sourceIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, calendarNotification = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v4, self, sourceClientIdentifier, calendarNotification, v7, sourceTitle, sourceIdentifier];

  return v10;
}

@end