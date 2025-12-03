@interface IMBlastDoorBackgroundRequestInfo
- (IMBlastDoorBackgroundRequestInfo)initWith:(id)with;
@end

@implementation IMBlastDoorBackgroundRequestInfo

- (IMBlastDoorBackgroundRequestInfo)initWith:(id)with
{
  withCopy = with;
  v9.receiver = self;
  v9.super_class = IMBlastDoorBackgroundRequestInfo;
  v5 = [(IMBlastDoorBackgroundRequestInfo *)&v9 init];
  if (v5)
  {
    chatId = [withCopy chatId];
    [(IMBlastDoorBackgroundRequestInfo *)v5 setChatId:chatId];

    v7 = v5;
  }

  return v5;
}

@end