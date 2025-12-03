@interface CALNEventInvitationNotificationInfo
- (CALNEventInvitationNotificationInfo)initWithSourceClientIdentifier:(id)identifier launchURL:(id)l expirationDate:(id)date conflictDetails:(id)details eventInvitationNotification:(id)notification eventRepresentationDictionary:(id)dictionary eventURI:(id)i isDelegate:(BOOL)self0 sourceTitle:(id)self1 sourceIdentifier:(id)self2;
- (id)description;
@end

@implementation CALNEventInvitationNotificationInfo

- (CALNEventInvitationNotificationInfo)initWithSourceClientIdentifier:(id)identifier launchURL:(id)l expirationDate:(id)date conflictDetails:(id)details eventInvitationNotification:(id)notification eventRepresentationDictionary:(id)dictionary eventURI:(id)i isDelegate:(BOOL)self0 sourceTitle:(id)self1 sourceIdentifier:(id)self2
{
  identifierCopy = identifier;
  lCopy = l;
  dateCopy = date;
  detailsCopy = details;
  notificationCopy = notification;
  dictionaryCopy = dictionary;
  iCopy = i;
  titleCopy = title;
  sourceIdentifierCopy = sourceIdentifier;
  v43.receiver = self;
  v43.super_class = CALNEventInvitationNotificationInfo;
  v24 = [(CALNEventInvitationNotificationInfo *)&v43 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    sourceClientIdentifier = v24->_sourceClientIdentifier;
    v24->_sourceClientIdentifier = v25;

    v27 = [lCopy copy];
    launchURL = v24->_launchURL;
    v24->_launchURL = v27;

    v29 = [dateCopy copy];
    expirationDate = v24->_expirationDate;
    v24->_expirationDate = v29;

    objc_storeStrong(&v24->_conflictDetails, details);
    objc_storeStrong(&v24->_eventInvitationNotification, notification);
    v31 = [dictionaryCopy copy];
    eventRepresentationDictionary = v24->_eventRepresentationDictionary;
    v24->_eventRepresentationDictionary = v31;

    v33 = [iCopy copy];
    eventURI = v24->_eventURI;
    v24->_eventURI = v33;

    v24->_isDelegate = delegate;
    v35 = [titleCopy copy];
    sourceTitle = v24->_sourceTitle;
    v24->_sourceTitle = v35;

    v37 = [sourceIdentifierCopy copy];
    sourceIdentifier = v24->_sourceIdentifier;
    v24->_sourceIdentifier = v37;
  }

  return v24;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  sourceClientIdentifier = [(CALNEventInvitationNotificationInfo *)self sourceClientIdentifier];
  launchURL = [(CALNEventInvitationNotificationInfo *)self launchURL];
  expirationDate = [(CALNEventInvitationNotificationInfo *)self expirationDate];
  conflictDetails = [(CALNEventInvitationNotificationInfo *)self conflictDetails];
  eventInvitationNotification = [(CALNEventInvitationNotificationInfo *)self eventInvitationNotification];
  eventURI = [(CALNEventInvitationNotificationInfo *)self eventURI];
  eventRepresentationDictionary = [(CALNEventInvitationNotificationInfo *)self eventRepresentationDictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNEventInvitationNotificationInfo isDelegate](self, "isDelegate")}];
  sourceTitle = [(CALNEventInvitationNotificationInfo *)self sourceTitle];
  sourceIdentifier = [(CALNEventInvitationNotificationInfo *)self sourceIdentifier];
  v12 = [v15 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, launchURL = %@, expirationDate = %@, conflictDetails = %@, eventInvitationNotification = %@, eventURI = %@, eventRepresentationDictionary = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v14, self, sourceClientIdentifier, launchURL, expirationDate, conflictDetails, eventInvitationNotification, eventURI, eventRepresentationDictionary, v9, sourceTitle, sourceIdentifier];

  return v12;
}

@end