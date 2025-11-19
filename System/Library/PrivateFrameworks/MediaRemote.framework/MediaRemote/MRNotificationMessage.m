@interface MRNotificationMessage
- (MRNotificationMessage)initWithNotification:(id)a3;
- (MRPlayerPath)playerPath;
- (NSDictionary)userInfo;
- (NSString)notification;
@end

@implementation MRNotificationMessage

- (MRNotificationMessage)initWithNotification:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MRNotificationMessage;
  v5 = [(MRProtocolMessage *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRNotificationMessageProtobuf);
    v7 = [v4 name];
    [(_MRNotificationMessageProtobuf *)v6 addNotification:v7];

    v8 = [v4 userInfo];
    v9 = [v8 mutableCopy];

    v11 = MRGetPlayerPathFromUserInfo(v9, v10);
    if (v11)
    {
      [v9 removeObjectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
      [v9 removeObjectForKey:@"kMRNowPlayingPlayerUserInfoKey"];
      [v9 removeObjectForKey:@"kMRNowPlayingClientUserInfoKey"];
      [v9 removeObjectForKey:@"kMRMediaRemoteOriginUserInfoKey"];
      v12 = [v11 protobuf];
      [(_MRNotificationMessageProtobuf *)v6 addPlayerPath:v12];
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
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 notifications];
  v4 = [v3 firstObject];

  return v4;
}

- (NSDictionary)userInfo
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v4 = [v3 userInfos];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = MSVPropertyListDataClasses();
    v7 = MSVUnarchivedObjectOfClasses();
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MRNotificationMessage *)self playerPath];
  v9 = v8;
  if (v8)
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
      v15[0] = v8;
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
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPaths];
  v6 = [v5 firstObject];
  v7 = [(MRPlayerPath *)v3 initWithProtobuf:v6];

  return v7;
}

@end