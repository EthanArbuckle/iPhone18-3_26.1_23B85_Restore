@interface IMBlastDoorTranscriptBackgroundCommandTypeWrapper
- (IMBlastDoorTranscriptBackgroundCommandTypeWrapper)initWith:(id)with;
@end

@implementation IMBlastDoorTranscriptBackgroundCommandTypeWrapper

- (IMBlastDoorTranscriptBackgroundCommandTypeWrapper)initWith:(id)with
{
  withCopy = with;
  v15.receiver = self;
  v15.super_class = IMBlastDoorTranscriptBackgroundCommandTypeWrapper;
  v5 = [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)&v15 init];
  if (v5)
  {
    -[IMBlastDoorTranscriptBackgroundCommandTypeWrapper setType:](v5, "setType:", [withCopy type]);
    type = [withCopy type];
    if (type > 1)
    {
      if (type == 2)
      {
        v12 = [IMBlastDoorBackgroundRequestInfo alloc];
        request = [withCopy request];
        v9 = [(IMBlastDoorBackgroundRequestInfo *)v12 initWith:request];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setRequest:v9];
        goto LABEL_11;
      }

      if (type == 3)
      {
        v10 = [IMBlastDoorBackgroundUpdateInfo alloc];
        request = [withCopy requestResponse];
        v9 = [(IMBlastDoorBackgroundUpdateInfo *)v10 initWith:request];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setRequestResponse:v9];
        goto LABEL_11;
      }
    }

    else
    {
      if (!type)
      {
        v11 = [IMBlastDoorBackgroundUpdateInfo alloc];
        request = [withCopy update];
        v9 = [(IMBlastDoorBackgroundUpdateInfo *)v11 initWith:request];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setUpdate:v9];
        goto LABEL_11;
      }

      if (type == 1)
      {
        v7 = [IMBlastDoorBackgroundUpdateInfo alloc];
        request = [withCopy refresh];
        v9 = [(IMBlastDoorBackgroundUpdateInfo *)v7 initWith:request];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setRefresh:v9];
LABEL_11:
      }
    }

    v13 = v5;
  }

  return v5;
}

@end