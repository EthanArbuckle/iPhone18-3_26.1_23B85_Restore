@interface CALNEventInvitationResponseNotificationInfo
- (CALNEventInvitationResponseNotificationInfo)initWithSourceClientIdentifier:(id)a3 launchURL:(id)a4 expirationDate:(id)a5 eventInvitationNotification:(id)a6 eventRepresentationDictionary:(id)a7 isDelegate:(BOOL)a8 sourceTitle:(id)a9 sourceIdentifier:(id)a10;
- (id)description;
@end

@implementation CALNEventInvitationResponseNotificationInfo

- (CALNEventInvitationResponseNotificationInfo)initWithSourceClientIdentifier:(id)a3 launchURL:(id)a4 expirationDate:(id)a5 eventInvitationNotification:(id)a6 eventRepresentationDictionary:(id)a7 isDelegate:(BOOL)a8 sourceTitle:(id)a9 sourceIdentifier:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v37.receiver = self;
  v37.super_class = CALNEventInvitationResponseNotificationInfo;
  v23 = [(CALNEventInvitationResponseNotificationInfo *)&v37 init];
  if (v23)
  {
    v24 = [v16 copy];
    sourceClientIdentifier = v23->_sourceClientIdentifier;
    v23->_sourceClientIdentifier = v24;

    v26 = [v17 copy];
    launchURL = v23->_launchURL;
    v23->_launchURL = v26;

    v28 = [v18 copy];
    expirationDate = v23->_expirationDate;
    v23->_expirationDate = v28;

    objc_storeStrong(&v23->_eventInvitationNotification, a6);
    v30 = [v20 copy];
    eventRepresentationDictionary = v23->_eventRepresentationDictionary;
    v23->_eventRepresentationDictionary = v30;

    v23->_isDelegate = a8;
    v32 = [v21 copy];
    sourceTitle = v23->_sourceTitle;
    v23->_sourceTitle = v32;

    v34 = [v22 copy];
    sourceIdentifier = v23->_sourceIdentifier;
    v23->_sourceIdentifier = v34;
  }

  return v23;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(CALNEventInvitationResponseNotificationInfo *)self sourceClientIdentifier];
  v5 = [(CALNEventInvitationResponseNotificationInfo *)self launchURL];
  v6 = [(CALNEventInvitationResponseNotificationInfo *)self expirationDate];
  v7 = [(CALNEventInvitationResponseNotificationInfo *)self eventInvitationNotification];
  v8 = [(CALNEventInvitationResponseNotificationInfo *)self eventRepresentationDictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNEventInvitationResponseNotificationInfo isDelegate](self, "isDelegate")}];
  v10 = [(CALNEventInvitationResponseNotificationInfo *)self sourceTitle];
  v11 = [(CALNEventInvitationResponseNotificationInfo *)self sourceIdentifier];
  v12 = [v14 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, launchURL = %@, expirationDate = %@, eventInvitationNotification = %@, eventRepresentationDictionary = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end