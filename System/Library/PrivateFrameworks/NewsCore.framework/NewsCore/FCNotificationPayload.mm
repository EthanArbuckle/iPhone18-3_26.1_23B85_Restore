@interface FCNotificationPayload
- (FCNotificationPayload)init;
- (FCNotificationPayload)initWithNotificationItem:(id)item headline:(id)headline bodyText:(id)text;
- (id)description;
@end

@implementation FCNotificationPayload

- (FCNotificationPayload)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationPayload init]";
    v10 = 2080;
    v11 = "FCNotificationPayload.m";
    v12 = 1024;
    v13 = 19;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationPayload init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationPayload)initWithNotificationItem:(id)item headline:(id)headline bodyText:(id)text
{
  itemCopy = item;
  headlineCopy = headline;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = FCNotificationPayload;
  v12 = [(FCNotificationPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notificationItem, item);
    objc_storeStrong(&v13->_headline, headline);
    objc_storeStrong(&v13->_bodyText, text);
  }

  return v13;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  notificationItem = [(FCNotificationPayload *)self notificationItem];
  identifier = [notificationItem identifier];
  [(FCDescription *)v3 addField:@"identifier" value:identifier];

  notificationItem2 = [(FCNotificationPayload *)self notificationItem];
  canonicalID = [notificationItem2 canonicalID];
  [(FCDescription *)v3 addField:@"canonicalID" value:canonicalID];

  notificationItem3 = [(FCNotificationPayload *)self notificationItem];
  articleID = [notificationItem3 articleID];
  [(FCDescription *)v3 addField:@"articleID" value:articleID];

  headline = [(FCNotificationPayload *)self headline];
  title = [headline title];
  [(FCDescription *)v3 addField:@"title" value:title];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

@end