@interface CALNSuggestedEventNotificationInfo
- (CALNSuggestedEventNotificationInfo)initWithSourceClientIdentifier:(id)a3 launchURL:(id)a4 expirationDate:(id)a5 suggestionNotification:(id)a6;
- (id)description;
@end

@implementation CALNSuggestedEventNotificationInfo

- (CALNSuggestedEventNotificationInfo)initWithSourceClientIdentifier:(id)a3 launchURL:(id)a4 expirationDate:(id)a5 suggestionNotification:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CALNSuggestedEventNotificationInfo;
  v14 = [(CALNSuggestedEventNotificationInfo *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    sourceClientIdentifier = v14->_sourceClientIdentifier;
    v14->_sourceClientIdentifier = v15;

    v17 = [v11 copy];
    launchURL = v14->_launchURL;
    v14->_launchURL = v17;

    v19 = [v12 copy];
    expirationDate = v14->_expirationDate;
    v14->_expirationDate = v19;

    objc_storeStrong(&v14->_suggestionNotification, a6);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNSuggestedEventNotificationInfo *)self sourceClientIdentifier];
  v6 = [(CALNSuggestedEventNotificationInfo *)self suggestionNotification];
  v7 = [(CALNSuggestedEventNotificationInfo *)self expirationDate];
  v8 = [(CALNSuggestedEventNotificationInfo *)self launchURL];
  v9 = [v3 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, suggestionNotification = %@, expirationDate = %@, launchURL = %@)", v4, self, v5, v6, v7, v8];

  return v9;
}

@end