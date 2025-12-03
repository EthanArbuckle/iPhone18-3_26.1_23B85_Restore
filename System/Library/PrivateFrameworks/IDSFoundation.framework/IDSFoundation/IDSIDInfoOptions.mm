@interface IDSIDInfoOptions
+ (id)currentIDInfo;
+ (id)refreshIDInfo;
+ (id)refreshIDInfoAndBypassLimit;
+ (id)sync_currentIDInfo;
+ (id)sync_refreshIDInfo;
- (IDSIDInfoOptions)init;
- (IDSIDInfoOptions)initWithBypassLimit:(BOOL)limit allowRefresh:(BOOL)refresh forceRefresh:(BOOL)forceRefresh respectExpiry:(BOOL)expiry waitForReply:(BOOL)reply;
- (IDSIDInfoOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIDInfoOptions

+ (id)currentIDInfo
{
  v2 = [[IDSIDInfoOptions alloc] initWithBypassLimit:0 allowRefresh:0 forceRefresh:0 respectExpiry:1 waitForReply:0];

  return v2;
}

+ (id)refreshIDInfo
{
  v2 = [[IDSIDInfoOptions alloc] initWithBypassLimit:0 allowRefresh:1 forceRefresh:0 respectExpiry:1 waitForReply:0];

  return v2;
}

+ (id)refreshIDInfoAndBypassLimit
{
  v2 = [[IDSIDInfoOptions alloc] initWithBypassLimit:1 allowRefresh:1 forceRefresh:0 respectExpiry:1 waitForReply:0];

  return v2;
}

+ (id)sync_currentIDInfo
{
  v2 = [[IDSIDInfoOptions alloc] initWithBypassLimit:0 allowRefresh:0 forceRefresh:0 respectExpiry:1 waitForReply:1];

  return v2;
}

+ (id)sync_refreshIDInfo
{
  v2 = [[IDSIDInfoOptions alloc] initWithBypassLimit:0 allowRefresh:1 forceRefresh:0 respectExpiry:1 waitForReply:1];

  return v2;
}

- (IDSIDInfoOptions)init
{
  v3.receiver = self;
  v3.super_class = IDSIDInfoOptions;
  result = [(IDSIDInfoOptions *)&v3 init];
  if (result)
  {
    result->_bypassLimit = 0;
    *&result->_allowRefresh = 257;
  }

  return result;
}

- (IDSIDInfoOptions)initWithBypassLimit:(BOOL)limit allowRefresh:(BOOL)refresh forceRefresh:(BOOL)forceRefresh respectExpiry:(BOOL)expiry waitForReply:(BOOL)reply
{
  v13.receiver = self;
  v13.super_class = IDSIDInfoOptions;
  result = [(IDSIDInfoOptions *)&v13 init];
  if (result)
  {
    result->_bypassLimit = limit;
    result->_allowRefresh = refresh;
    result->_forceRefresh = forceRefresh;
    result->_respectExpiry = expiry;
    result->_waitForReply = reply;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IDSIDInfoOptions bypassLimit](self forKey:{"bypassLimit"), @"bypassLimit"}];
  [coderCopy encodeBool:-[IDSIDInfoOptions allowRefresh](self forKey:{"allowRefresh"), @"allowRefresh"}];
  [coderCopy encodeBool:-[IDSIDInfoOptions forceRefresh](self forKey:{"forceRefresh"), @"forceRefresh"}];
  [coderCopy encodeBool:-[IDSIDInfoOptions respectExpiry](self forKey:{"respectExpiry"), @"respectExpiry"}];
  [coderCopy encodeBool:-[IDSIDInfoOptions waitForReply](self forKey:{"waitForReply"), @"waitForReply"}];
}

- (IDSIDInfoOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"bypassLimit"];
  v6 = [coderCopy decodeBoolForKey:@"allowRefresh"];
  v7 = [coderCopy decodeBoolForKey:@"forceRefresh"];
  v8 = [coderCopy decodeBoolForKey:@"respectExpiry"];
  v9 = [coderCopy decodeBoolForKey:@"waitForReply"];

  return [(IDSIDInfoOptions *)self initWithBypassLimit:v5 allowRefresh:v6 forceRefresh:v7 respectExpiry:v8 waitForReply:v9];
}

@end