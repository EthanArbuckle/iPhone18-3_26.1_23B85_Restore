@interface IDSIDInfoOptions
+ (id)currentIDInfo;
+ (id)refreshIDInfo;
+ (id)refreshIDInfoAndBypassLimit;
+ (id)sync_currentIDInfo;
+ (id)sync_refreshIDInfo;
- (IDSIDInfoOptions)init;
- (IDSIDInfoOptions)initWithBypassLimit:(BOOL)a3 allowRefresh:(BOOL)a4 forceRefresh:(BOOL)a5 respectExpiry:(BOOL)a6 waitForReply:(BOOL)a7;
- (IDSIDInfoOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (IDSIDInfoOptions)initWithBypassLimit:(BOOL)a3 allowRefresh:(BOOL)a4 forceRefresh:(BOOL)a5 respectExpiry:(BOOL)a6 waitForReply:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = IDSIDInfoOptions;
  result = [(IDSIDInfoOptions *)&v13 init];
  if (result)
  {
    result->_bypassLimit = a3;
    result->_allowRefresh = a4;
    result->_forceRefresh = a5;
    result->_respectExpiry = a6;
    result->_waitForReply = a7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[IDSIDInfoOptions bypassLimit](self forKey:{"bypassLimit"), @"bypassLimit"}];
  [v4 encodeBool:-[IDSIDInfoOptions allowRefresh](self forKey:{"allowRefresh"), @"allowRefresh"}];
  [v4 encodeBool:-[IDSIDInfoOptions forceRefresh](self forKey:{"forceRefresh"), @"forceRefresh"}];
  [v4 encodeBool:-[IDSIDInfoOptions respectExpiry](self forKey:{"respectExpiry"), @"respectExpiry"}];
  [v4 encodeBool:-[IDSIDInfoOptions waitForReply](self forKey:{"waitForReply"), @"waitForReply"}];
}

- (IDSIDInfoOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"bypassLimit"];
  v6 = [v4 decodeBoolForKey:@"allowRefresh"];
  v7 = [v4 decodeBoolForKey:@"forceRefresh"];
  v8 = [v4 decodeBoolForKey:@"respectExpiry"];
  v9 = [v4 decodeBoolForKey:@"waitForReply"];

  return [(IDSIDInfoOptions *)self initWithBypassLimit:v5 allowRefresh:v6 forceRefresh:v7 respectExpiry:v8 waitForReply:v9];
}

@end