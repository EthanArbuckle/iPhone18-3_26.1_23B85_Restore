@interface CALNSuggestedEventNotificationInfo
- (CALNSuggestedEventNotificationInfo)initWithSourceClientIdentifier:(id)identifier launchURL:(id)l expirationDate:(id)date suggestionNotification:(id)notification;
- (id)description;
@end

@implementation CALNSuggestedEventNotificationInfo

- (CALNSuggestedEventNotificationInfo)initWithSourceClientIdentifier:(id)identifier launchURL:(id)l expirationDate:(id)date suggestionNotification:(id)notification
{
  identifierCopy = identifier;
  lCopy = l;
  dateCopy = date;
  notificationCopy = notification;
  v22.receiver = self;
  v22.super_class = CALNSuggestedEventNotificationInfo;
  v14 = [(CALNSuggestedEventNotificationInfo *)&v22 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    sourceClientIdentifier = v14->_sourceClientIdentifier;
    v14->_sourceClientIdentifier = v15;

    v17 = [lCopy copy];
    launchURL = v14->_launchURL;
    v14->_launchURL = v17;

    v19 = [dateCopy copy];
    expirationDate = v14->_expirationDate;
    v14->_expirationDate = v19;

    objc_storeStrong(&v14->_suggestionNotification, notification);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sourceClientIdentifier = [(CALNSuggestedEventNotificationInfo *)self sourceClientIdentifier];
  suggestionNotification = [(CALNSuggestedEventNotificationInfo *)self suggestionNotification];
  expirationDate = [(CALNSuggestedEventNotificationInfo *)self expirationDate];
  launchURL = [(CALNSuggestedEventNotificationInfo *)self launchURL];
  v9 = [v3 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, suggestionNotification = %@, expirationDate = %@, launchURL = %@)", v4, self, sourceClientIdentifier, suggestionNotification, expirationDate, launchURL];

  return v9;
}

@end