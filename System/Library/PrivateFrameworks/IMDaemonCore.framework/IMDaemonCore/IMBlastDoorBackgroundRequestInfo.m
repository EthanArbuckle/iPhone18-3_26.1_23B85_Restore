@interface IMBlastDoorBackgroundRequestInfo
- (IMBlastDoorBackgroundRequestInfo)initWith:(id)a3;
@end

@implementation IMBlastDoorBackgroundRequestInfo

- (IMBlastDoorBackgroundRequestInfo)initWith:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMBlastDoorBackgroundRequestInfo;
  v5 = [(IMBlastDoorBackgroundRequestInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 chatId];
    [(IMBlastDoorBackgroundRequestInfo *)v5 setChatId:v6];

    v7 = v5;
  }

  return v5;
}

@end