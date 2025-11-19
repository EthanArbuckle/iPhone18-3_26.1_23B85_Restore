@interface FCNotificationDropboxData
- (FCNotificationDropboxData)init;
- (FCNotificationDropboxData)initWithDictionary:(id)a3;
- (NSString)baseURLString;
- (NSString)deviceToken;
- (NSString)notificationUserID;
- (NSString)storefrontID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int)deviceDigestMode;
@end

@implementation FCNotificationDropboxData

- (FCNotificationDropboxData)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationDropboxData init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedNotificationDropbox.m";
    v12 = 1024;
    v13 = 98;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationDropboxData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationDropboxData)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v13 = "[FCNotificationDropboxData initWithDictionary:]";
    v14 = 2080;
    v15 = "FCFileCoordinatedNotificationDropbox.m";
    v16 = 1024;
    v17 = 103;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCNotificationDropboxData;
  v6 = [(FCNotificationDropboxData *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)baseURLString
{
  v2 = [(FCNotificationDropboxData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCNotificationDropboxDataBaseURLDictionaryKey"];

  return v3;
}

- (NSString)notificationUserID
{
  v2 = [(FCNotificationDropboxData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCNotificationDropboxDataNotificationUserIDDictionaryKey"];

  return v3;
}

- (NSString)deviceToken
{
  v2 = [(FCNotificationDropboxData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCNotificationDropboxDataDeviceTokenDictionaryKey"];

  return v3;
}

- (NSString)storefrontID
{
  v2 = [(FCNotificationDropboxData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCNotificationDropboxDataStorefrontIDDictionaryKey"];

  return v3;
}

- (int)deviceDigestMode
{
  v2 = [(FCNotificationDropboxData *)self dictionary];
  v3 = [v2 objectForKeyedSubscript:@"FCNotificationDropboxDataDeviceDigestModeKey"];

  LODWORD(v2) = [v3 intValue];
  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [FCNotificationDropboxData allocWithZone:?];
  v6 = [(FCNotificationDropboxData *)self dictionary];
  v7 = [v6 copyWithZone:a3];
  v8 = [(FCNotificationDropboxData *)v5 initWithDictionary:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [FCMutableNotificationData allocWithZone:?];
  v6 = [(FCNotificationDropboxData *)self dictionary];
  v7 = [v6 mutableCopyWithZone:a3];
  v8 = [(FCMutableNotificationData *)v5 initWithDictionary:v7];

  return v8;
}

@end