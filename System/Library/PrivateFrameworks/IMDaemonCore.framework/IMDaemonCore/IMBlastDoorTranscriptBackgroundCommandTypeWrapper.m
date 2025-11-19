@interface IMBlastDoorTranscriptBackgroundCommandTypeWrapper
- (IMBlastDoorTranscriptBackgroundCommandTypeWrapper)initWith:(id)a3;
@end

@implementation IMBlastDoorTranscriptBackgroundCommandTypeWrapper

- (IMBlastDoorTranscriptBackgroundCommandTypeWrapper)initWith:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IMBlastDoorTranscriptBackgroundCommandTypeWrapper;
  v5 = [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)&v15 init];
  if (v5)
  {
    -[IMBlastDoorTranscriptBackgroundCommandTypeWrapper setType:](v5, "setType:", [v4 type]);
    v6 = [v4 type];
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v12 = [IMBlastDoorBackgroundRequestInfo alloc];
        v8 = [v4 request];
        v9 = [(IMBlastDoorBackgroundRequestInfo *)v12 initWith:v8];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setRequest:v9];
        goto LABEL_11;
      }

      if (v6 == 3)
      {
        v10 = [IMBlastDoorBackgroundUpdateInfo alloc];
        v8 = [v4 requestResponse];
        v9 = [(IMBlastDoorBackgroundUpdateInfo *)v10 initWith:v8];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setRequestResponse:v9];
        goto LABEL_11;
      }
    }

    else
    {
      if (!v6)
      {
        v11 = [IMBlastDoorBackgroundUpdateInfo alloc];
        v8 = [v4 update];
        v9 = [(IMBlastDoorBackgroundUpdateInfo *)v11 initWith:v8];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setUpdate:v9];
        goto LABEL_11;
      }

      if (v6 == 1)
      {
        v7 = [IMBlastDoorBackgroundUpdateInfo alloc];
        v8 = [v4 refresh];
        v9 = [(IMBlastDoorBackgroundUpdateInfo *)v7 initWith:v8];
        [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v5 setRefresh:v9];
LABEL_11:
      }
    }

    v13 = v5;
  }

  return v5;
}

@end