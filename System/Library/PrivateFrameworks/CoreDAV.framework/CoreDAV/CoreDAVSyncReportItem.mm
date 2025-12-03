@interface CoreDAVSyncReportItem
+ (id)copyParseRules;
- (id)description;
- (void)_setSyncTokenItem:(id)item;
@end

@implementation CoreDAVSyncReportItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVSyncReportItem;
  v4 = [(CoreDAVMultiStatusItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  syncToken = [(CoreDAVSyncReportItem *)self syncToken];
  [v3 appendFormat:@"\n  Sync token: [%@]", syncToken];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___CoreDAVSyncReportItem;
    v6 = objc_msgSendSuper2(&v14, sel_copyParseRules);
    v5 = [v6 mutableCopy];
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"sync-token" objectClass:objc_opt_class() setterMethod:sel__setSyncTokenItem_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"sync-token"];
    v10 = [v7 initWithObjectsAndKeys:{v8, v9, 0}];

    [v5 setValuesForKeysWithDictionary:v10];
    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)_setSyncTokenItem:(id)item
{
  payloadAsString = [item payloadAsString];
  syncToken = self->_syncToken;
  self->_syncToken = payloadAsString;

  MEMORY[0x2821F96F8](payloadAsString, syncToken);
}

@end