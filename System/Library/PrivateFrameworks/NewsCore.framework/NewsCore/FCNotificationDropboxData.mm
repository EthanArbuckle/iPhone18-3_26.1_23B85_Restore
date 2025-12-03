@interface FCNotificationDropboxData
- (FCNotificationDropboxData)init;
- (FCNotificationDropboxData)initWithDictionary:(id)dictionary;
- (NSString)baseURLString;
- (NSString)deviceToken;
- (NSString)notificationUserID;
- (NSString)storefrontID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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

- (FCNotificationDropboxData)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)baseURLString
{
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCNotificationDropboxDataBaseURLDictionaryKey"];

  return v3;
}

- (NSString)notificationUserID
{
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCNotificationDropboxDataNotificationUserIDDictionaryKey"];

  return v3;
}

- (NSString)deviceToken
{
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCNotificationDropboxDataDeviceTokenDictionaryKey"];

  return v3;
}

- (NSString)storefrontID
{
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCNotificationDropboxDataStorefrontIDDictionaryKey"];

  return v3;
}

- (int)deviceDigestMode
{
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v3 = [dictionary objectForKeyedSubscript:@"FCNotificationDropboxDataDeviceDigestModeKey"];

  LODWORD(dictionary) = [v3 intValue];
  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [FCNotificationDropboxData allocWithZone:?];
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v7 = [dictionary copyWithZone:zone];
  v8 = [(FCNotificationDropboxData *)v5 initWithDictionary:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [FCMutableNotificationData allocWithZone:?];
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v7 = [dictionary mutableCopyWithZone:zone];
  v8 = [(FCMutableNotificationData *)v5 initWithDictionary:v7];

  return v8;
}

@end