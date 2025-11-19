@interface CALNEventInvitationNotificationInfo
- (CALNEventInvitationNotificationInfo)initWithSourceClientIdentifier:(id)a3 launchURL:(id)a4 expirationDate:(id)a5 conflictDetails:(id)a6 eventInvitationNotification:(id)a7 eventRepresentationDictionary:(id)a8 eventURI:(id)a9 isDelegate:(BOOL)a10 sourceTitle:(id)a11 sourceIdentifier:(id)a12;
- (id)description;
@end

@implementation CALNEventInvitationNotificationInfo

- (CALNEventInvitationNotificationInfo)initWithSourceClientIdentifier:(id)a3 launchURL:(id)a4 expirationDate:(id)a5 conflictDetails:(id)a6 eventInvitationNotification:(id)a7 eventRepresentationDictionary:(id)a8 eventURI:(id)a9 isDelegate:(BOOL)a10 sourceTitle:(id)a11 sourceIdentifier:(id)a12
{
  v42 = a3;
  v18 = a4;
  v19 = a5;
  v41 = a6;
  v40 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v43.receiver = self;
  v43.super_class = CALNEventInvitationNotificationInfo;
  v24 = [(CALNEventInvitationNotificationInfo *)&v43 init];
  if (v24)
  {
    v25 = [v42 copy];
    sourceClientIdentifier = v24->_sourceClientIdentifier;
    v24->_sourceClientIdentifier = v25;

    v27 = [v18 copy];
    launchURL = v24->_launchURL;
    v24->_launchURL = v27;

    v29 = [v19 copy];
    expirationDate = v24->_expirationDate;
    v24->_expirationDate = v29;

    objc_storeStrong(&v24->_conflictDetails, a6);
    objc_storeStrong(&v24->_eventInvitationNotification, a7);
    v31 = [v20 copy];
    eventRepresentationDictionary = v24->_eventRepresentationDictionary;
    v24->_eventRepresentationDictionary = v31;

    v33 = [v21 copy];
    eventURI = v24->_eventURI;
    v24->_eventURI = v33;

    v24->_isDelegate = a10;
    v35 = [v22 copy];
    sourceTitle = v24->_sourceTitle;
    v24->_sourceTitle = v35;

    v37 = [v23 copy];
    sourceIdentifier = v24->_sourceIdentifier;
    v24->_sourceIdentifier = v37;
  }

  return v24;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v16 = [(CALNEventInvitationNotificationInfo *)self sourceClientIdentifier];
  v3 = [(CALNEventInvitationNotificationInfo *)self launchURL];
  v4 = [(CALNEventInvitationNotificationInfo *)self expirationDate];
  v5 = [(CALNEventInvitationNotificationInfo *)self conflictDetails];
  v6 = [(CALNEventInvitationNotificationInfo *)self eventInvitationNotification];
  v7 = [(CALNEventInvitationNotificationInfo *)self eventURI];
  v8 = [(CALNEventInvitationNotificationInfo *)self eventRepresentationDictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNEventInvitationNotificationInfo isDelegate](self, "isDelegate")}];
  v10 = [(CALNEventInvitationNotificationInfo *)self sourceTitle];
  v11 = [(CALNEventInvitationNotificationInfo *)self sourceIdentifier];
  v12 = [v15 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, launchURL = %@, expirationDate = %@, conflictDetails = %@, eventInvitationNotification = %@, eventURI = %@, eventRepresentationDictionary = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v14, self, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end