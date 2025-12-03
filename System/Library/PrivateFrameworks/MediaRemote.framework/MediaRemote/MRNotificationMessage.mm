@interface MRNotificationMessage
- (MRNotificationMessage)initWithNotification:(id)notification;
- (MRPlayerPath)playerPath;
- (NSDictionary)userInfo;
- (NSString)notification;
@end

@implementation MRNotificationMessage

- (MRNotificationMessage)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v16.receiver = self;
  v16.super_class = MRNotificationMessage;
  v5 = [(MRProtocolMessage *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRNotificationMessageProtobuf);
    name = [notificationCopy name];
    [(_MRNotificationMessageProtobuf *)v6 addNotification:name];

    userInfo = [notificationCopy userInfo];
    v9 = [userInfo mutableCopy];

    v11 = MRGetPlayerPathFromUserInfo(v9, v10);
    if (v11)
    {
      [v9 removeObjectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
      [v9 removeObjectForKey:@"kMRNowPlayingPlayerUserInfoKey"];
      [v9 removeObjectForKey:@"kMRNowPlayingClientUserInfoKey"];
      [v9 removeObjectForKey:@"kMRMediaRemoteOriginUserInfoKey"];
      protobuf = [v11 protobuf];
      [(_MRNotificationMessageProtobuf *)v6 addPlayerPath:protobuf];
    }

    if ([v9 count])
    {
      v13 = MRCreateEncodedUserInfo(v9);
      v14 = MSVArchivedDataWithRootObject();
      [(_MRNotificationMessageProtobuf *)v6 addUserInfo:v14];
    }

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSString)notification
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  notifications = [underlyingCodableMessage notifications];
  firstObject = [notifications firstObject];

  return firstObject;
}

- (NSDictionary)userInfo
{
  v15[1] = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  userInfos = [underlyingCodableMessage userInfos];
  firstObject = [userInfos firstObject];

  if (firstObject)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = MSVUnarchivedObjectOfClasses();
  }

  else
  {
    v7 = 0;
  }

  playerPath = [(MRNotificationMessage *)self playerPath];
  v9 = playerPath;
  if (playerPath)
  {
    if (v7)
    {
      v10 = [v7 mutableCopy];
      [v10 setObject:v9 forKey:@"kMRNowPlayingPlayerPathUserInfoKey"];

      v7 = v10;
    }

    else
    {
      v14 = @"kMRNowPlayingPlayerPathUserInfoKey";
      v15[0] = playerPath;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }
  }

  v11 = MRCreateDecodedUserInfo(v7);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPaths = [underlyingCodableMessage playerPaths];
  firstObject = [playerPaths firstObject];
  v7 = [(MRPlayerPath *)v3 initWithProtobuf:firstObject];

  return v7;
}

@end