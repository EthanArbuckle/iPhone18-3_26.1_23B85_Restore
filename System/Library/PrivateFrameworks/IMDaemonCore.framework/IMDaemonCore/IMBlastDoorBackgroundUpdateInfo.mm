@interface IMBlastDoorBackgroundUpdateInfo
- (IMBlastDoorBackgroundUpdateInfo)initWith:(id)with;
@end

@implementation IMBlastDoorBackgroundUpdateInfo

- (IMBlastDoorBackgroundUpdateInfo)initWith:(id)with
{
  withCopy = with;
  v14.receiver = self;
  v14.super_class = IMBlastDoorBackgroundUpdateInfo;
  v5 = [(IMBlastDoorBackgroundUpdateInfo *)&v14 init];
  if (v5)
  {
    -[IMBlastDoorBackgroundUpdateInfo setBackgroundVersion:](v5, "setBackgroundVersion:", [withCopy backgroundVersion]);
    transferId = [withCopy transferId];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setTransferId:transferId];

    ownerId = [withCopy ownerId];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setOwnerId:ownerId];

    signature = [withCopy signature];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setSignature:signature];

    requestURL = [withCopy requestURL];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setRequestURL:requestURL];

    encryptionKey = [withCopy encryptionKey];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setEncryptionKey:encryptionKey];

    -[IMBlastDoorBackgroundUpdateInfo setFileSize:](v5, "setFileSize:", [withCopy fileSize]);
    -[IMBlastDoorBackgroundUpdateInfo setPosterDataVersion:](v5, "setPosterDataVersion:", [withCopy posterDataVersion]);
    chatId = [withCopy chatId];
    [(IMBlastDoorBackgroundUpdateInfo *)v5 setChatId:chatId];

    -[IMBlastDoorBackgroundUpdateInfo setPosterWasRemoved:](v5, "setPosterWasRemoved:", [withCopy posterWasRemoved]);
    v12 = v5;
  }

  return v5;
}

@end