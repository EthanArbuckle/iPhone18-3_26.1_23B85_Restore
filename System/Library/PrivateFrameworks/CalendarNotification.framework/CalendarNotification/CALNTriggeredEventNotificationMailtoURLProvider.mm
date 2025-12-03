@interface CALNTriggeredEventNotificationMailtoURLProvider
- (CALNTriggeredEventNotificationMailtoURLProvider)initWithMailAccounts:(id)accounts;
- (id)mailtoURLForEvent:(id)event;
@end

@implementation CALNTriggeredEventNotificationMailtoURLProvider

- (CALNTriggeredEventNotificationMailtoURLProvider)initWithMailAccounts:(id)accounts
{
  accountsCopy = accounts;
  v9.receiver = self;
  v9.super_class = CALNTriggeredEventNotificationMailtoURLProvider;
  v6 = [(CALNTriggeredEventNotificationMailtoURLProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailAccounts, accounts);
  }

  return v7;
}

- (id)mailtoURLForEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  organizer = [eventCopy organizer];
  v6 = organizer;
  if (!organizer || [organizer isCurrentUser])
  {
    v7 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_20:
      v18 = 0;
      goto LABEL_21;
    }

    externalURL = [eventCopy externalURL];
    *buf = 138543362;
    v26 = externalURL;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_INFO, "Could not get mailto url for event. Event does not have an organizer that is not the current user. In other words, there is no organizer for this event or the current user is the organizer. event external URL = %{public}@", buf, 0xCu);
LABEL_19:

    goto LABEL_20;
  }

  emailAddress = [v6 emailAddress];
  v7 = emailAddress;
  if (!emailAddress || ![emailAddress length])
  {
    externalURL = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(externalURL, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    externalURL2 = [eventCopy externalURL];
    *buf = 138543362;
    v26 = externalURL2;
    v20 = "Could not get mailto url because could not find organizer's email address. event external URL = %{public}@";
    v21 = externalURL;
    v22 = OS_LOG_TYPE_INFO;
LABEL_18:
    _os_log_impl(&dword_242909000, v21, v22, v20, buf, 0xCu);

    goto LABEL_19;
  }

  mailAccounts = [(CALNTriggeredEventNotificationMailtoURLProvider *)self mailAccounts];
  canSendMail = [mailAccounts canSendMail];

  if ((canSendMail & 1) == 0)
  {
    externalURL = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(externalURL, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    externalURL2 = [eventCopy externalURL];
    *buf = 138543362;
    v26 = externalURL2;
    v20 = "Could not get mailto url because cannot send mail. event external URL = %{public}@";
    v21 = externalURL;
    v22 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }

  title = [eventCopy title];
  v13 = title;
  if (!title || ![title length])
  {
    v14 = +[CALNBundle bundle];
    v15 = [v14 localizedStringForKey:@"Email sender unknown title" value:@"Event" table:0];

    v13 = v15;
  }

  if (mailtoURLForEvent__onceToken != -1)
  {
    [CALNTriggeredEventNotificationMailtoURLProvider mailtoURLForEvent:];
  }

  v16 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:mailtoURLForEvent__allowedCharacters];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@?subject=%@", v7, v16];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];

LABEL_21:
  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

void __69__CALNTriggeredEventNotificationMailtoURLProvider_mailtoURLForEvent___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:{@"/?&:$+, ;=@"}];
  v1 = [v3 copy];
  v2 = mailtoURLForEvent__allowedCharacters;
  mailtoURLForEvent__allowedCharacters = v1;
}

@end