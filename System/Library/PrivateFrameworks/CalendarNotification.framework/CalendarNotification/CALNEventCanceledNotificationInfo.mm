@interface CALNEventCanceledNotificationInfo
- (CALNEventCanceledNotificationInfo)initWithSourceClientIdentifier:(id)identifier launchURL:(id)l expirationDate:(id)date eventInvitationNotification:(id)notification eventRepresentationDictionary:(id)dictionary isDelegate:(BOOL)delegate sourceTitle:(id)title sourceIdentifier:(id)self0;
- (id)description;
@end

@implementation CALNEventCanceledNotificationInfo

- (CALNEventCanceledNotificationInfo)initWithSourceClientIdentifier:(id)identifier launchURL:(id)l expirationDate:(id)date eventInvitationNotification:(id)notification eventRepresentationDictionary:(id)dictionary isDelegate:(BOOL)delegate sourceTitle:(id)title sourceIdentifier:(id)self0
{
  identifierCopy = identifier;
  lCopy = l;
  dateCopy = date;
  notificationCopy = notification;
  dictionaryCopy = dictionary;
  titleCopy = title;
  sourceIdentifierCopy = sourceIdentifier;
  v37.receiver = self;
  v37.super_class = CALNEventCanceledNotificationInfo;
  v23 = [(CALNEventCanceledNotificationInfo *)&v37 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    sourceClientIdentifier = v23->_sourceClientIdentifier;
    v23->_sourceClientIdentifier = v24;

    v26 = [lCopy copy];
    launchURL = v23->_launchURL;
    v23->_launchURL = v26;

    v28 = [dateCopy copy];
    expirationDate = v23->_expirationDate;
    v23->_expirationDate = v28;

    objc_storeStrong(&v23->_eventInvitationNotification, notification);
    v30 = [dictionaryCopy copy];
    eventRepresentationDictionary = v23->_eventRepresentationDictionary;
    v23->_eventRepresentationDictionary = v30;

    v23->_isDelegate = delegate;
    v32 = [titleCopy copy];
    sourceTitle = v23->_sourceTitle;
    v23->_sourceTitle = v32;

    v34 = [sourceIdentifierCopy copy];
    sourceIdentifier = v23->_sourceIdentifier;
    v23->_sourceIdentifier = v34;
  }

  return v23;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  sourceClientIdentifier = [(CALNEventCanceledNotificationInfo *)self sourceClientIdentifier];
  launchURL = [(CALNEventCanceledNotificationInfo *)self launchURL];
  expirationDate = [(CALNEventCanceledNotificationInfo *)self expirationDate];
  eventInvitationNotification = [(CALNEventCanceledNotificationInfo *)self eventInvitationNotification];
  eventRepresentationDictionary = [(CALNEventCanceledNotificationInfo *)self eventRepresentationDictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNEventCanceledNotificationInfo isDelegate](self, "isDelegate")}];
  sourceTitle = [(CALNEventCanceledNotificationInfo *)self sourceTitle];
  sourceIdentifier = [(CALNEventCanceledNotificationInfo *)self sourceIdentifier];
  v12 = [v14 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, launchURL = %@, expirationDate = %@, eventInvitationNotification = %@, eventRepresentationDictionary = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v3, self, sourceClientIdentifier, launchURL, expirationDate, eventInvitationNotification, eventRepresentationDictionary, v9, sourceTitle, sourceIdentifier];

  return v12;
}

@end