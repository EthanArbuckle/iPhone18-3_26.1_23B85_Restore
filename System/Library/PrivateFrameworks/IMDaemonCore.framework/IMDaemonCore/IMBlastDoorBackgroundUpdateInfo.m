@interface IMBlastDoorBackgroundUpdateInfo
- (IMBlastDoorBackgroundUpdateInfo)initWith:(id)a3;
@end

@implementation IMBlastDoorBackgroundUpdateInfo

- (IMBlastDoorBackgroundUpdateInfo)initWith:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IMBlastDoorBackgroundUpdateInfo;
  v5 = [(IMBlastDoorBackgroundUpdateInfo *)&v14 init];
  if (v5)
  {
    -[IMBlastDoorBackgroundUpdateInfo setBackgroundVersion:](v5, "setBackgroundVersion:", [v4 backgroundVersion]);
    v6 = [v4 transferId];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setTransferId:v6];

    v7 = [v4 ownerId];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setOwnerId:v7];

    v8 = [v4 signature];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setSignature:v8];

    v9 = [v4 requestURL];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setRequestURL:v9];

    v10 = [v4 encryptionKey];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setEncryptionKey:v10];

    -[IMBlastDoorBackgroundUpdateInfo setFileSize:](v5, "setFileSize:", [v4 fileSize]);
    -[IMBlastDoorBackgroundUpdateInfo setPosterDataVersion:](v5, "setPosterDataVersion:", [v4 posterDataVersion]);
    v11 = [v4 chatId];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setChatId:v11];

    -[IMBlastDoorBackgroundUpdateInfo setPosterWasRemoved:](v5, "setPosterWasRemoved:", [v4 posterWasRemoved]);
    v12 = v5;
  }

  return v5;
}

@end