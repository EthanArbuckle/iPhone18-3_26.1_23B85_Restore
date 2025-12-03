@interface CoreDAVCalendarServerTransportItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVCalendarServerTransportItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v24.receiver = self;
  v24.super_class = CoreDAVCalendarServerTransportItem;
  v4 = [(CoreDAVItem *)&v24 description];
  [v3 appendFormat:@"[%@]", v4];

  subscriptionURL = [(CoreDAVCalendarServerTransportItem *)self subscriptionURL];
  href = [subscriptionURL href];
  payloadAsString = [href payloadAsString];
  [v3 appendFormat:@"\n  Subscription URL: [%@]", payloadAsString];

  tokenURL = [(CoreDAVCalendarServerTransportItem *)self tokenURL];
  href2 = [tokenURL href];
  payloadAsString2 = [href2 payloadAsString];
  [v3 appendFormat:@"\n  Token URL: [%@]", payloadAsString2];

  apsBundleID = [(CoreDAVCalendarServerTransportItem *)self apsBundleID];
  payloadAsString3 = [apsBundleID payloadAsString];
  [v3 appendFormat:@"\n  APS bundle ID: [%@]", payloadAsString3];

  courierServer = [(CoreDAVCalendarServerTransportItem *)self courierServer];
  payloadAsString4 = [courierServer payloadAsString];
  [v3 appendFormat:@"\n  Courier server: [%@]", payloadAsString4];

  apsEnv = [(CoreDAVCalendarServerTransportItem *)self apsEnv];
  payloadAsString5 = [apsEnv payloadAsString];
  [v3 appendFormat:@"\n  APS Environment: [%@]", payloadAsString5];

  refreshInterval = [(CoreDAVCalendarServerTransportItem *)self refreshInterval];
  payloadAsString6 = [refreshInterval payloadAsString];
  [v3 appendFormat:@"\n  Refresh Interval: [%@]", payloadAsString6];

  xmppServer = [(CoreDAVCalendarServerTransportItem *)self xmppServer];
  payloadAsString7 = [xmppServer payloadAsString];
  [v3 appendFormat:@"\n  XMPP server: [%@]", payloadAsString7];

  xmppURI = [(CoreDAVCalendarServerTransportItem *)self xmppURI];
  payloadAsString8 = [xmppURI payloadAsString];
  [v3 appendFormat:@"\n  XMPP URI: [%@]", payloadAsString8];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v21 = objc_alloc(MEMORY[0x277CBEAC0]);
    selfCopy = self;
    v28 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"subscription-url" objectClass:objc_opt_class() setterMethod:sel_setSubscriptionURL_];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"subscription-url"];
    v26 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"token-url" objectClass:objc_opt_class() setterMethod:sel_setTokenURL_];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"token-url"];
    v23 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"apsbundleid" objectClass:objc_opt_class() setterMethod:sel_setApsBundleID_];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"apsbundleid"];
    v20 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://cal.me.com/_namespace/" elementName:@"apsbundleid" objectClass:objc_opt_class() setterMethod:sel_setApsBundleID_];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://cal.me.com/_namespace/", @"apsbundleid"];
    v18 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"courierserver" objectClass:objc_opt_class() setterMethod:sel_setCourierServer_];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"courierserver"];
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"urn:mobileme:davservices" elementName:@"env" objectClass:objc_opt_class() setterMethod:sel_setApsEnv_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"urn:mobileme:davservices", @"env"];
    v14 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"refresh-interval" objectClass:objc_opt_class() setterMethod:sel_setRefreshInterval_];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"refresh-interval"];
    v13 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"xmpp-server" objectClass:objc_opt_class() setterMethod:sel_setXmppServer_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"xmpp-server"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"xmpp-uri" objectClass:objc_opt_class() setterMethod:sel_setXmppURI_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"xmpp-uri"];
    v5 = [v21 initWithObjectsAndKeys:{v28, v27, v26, v25, v23, v24, v20, v19, v18, v17, v16, v15, v14, v6, v13, v7, v8, v9, 0}];

    v10 = +[CoreDAVItem parseRuleCache];
    v11 = NSStringFromClass(selfCopy);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

@end