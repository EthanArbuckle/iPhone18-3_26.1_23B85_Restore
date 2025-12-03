@interface CoreDAVCalendarServerPushTransportsItem
+ (id)copyParseRules;
- (id)description;
- (void)addTransport:(id)transport;
@end

@implementation CoreDAVCalendarServerPushTransportsItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVCalendarServerPushTransportsItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  transports = [(CoreDAVCalendarServerPushTransportsItem *)self transports];
  [v3 appendFormat:@"\n  Number of transports: [%lu]", objc_msgSend(transports, "count")];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"http://calendarserver.org/ns/" elementName:@"transport" objectClass:objc_opt_class() setterMethod:sel_addTransport_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"transport"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addTransport:(id)transport
{
  transportCopy = transport;
  transports = [(CoreDAVCalendarServerPushTransportsItem *)self transports];

  if (!transports)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVCalendarServerPushTransportsItem *)self setTransports:v6];
  }

  transports2 = [(CoreDAVCalendarServerPushTransportsItem *)self transports];
  [transports2 addObject:transportCopy];
}

@end