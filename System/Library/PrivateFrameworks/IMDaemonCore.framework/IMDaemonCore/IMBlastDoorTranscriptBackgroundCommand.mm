@interface IMBlastDoorTranscriptBackgroundCommand
- (IMBlastDoorTranscriptBackgroundCommand)initWith:(id)a3;
@end

@implementation IMBlastDoorTranscriptBackgroundCommand

- (IMBlastDoorTranscriptBackgroundCommand)initWith:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IMBlastDoorTranscriptBackgroundCommand;
  v5 = [(IMBlastDoorTranscriptBackgroundCommand *)&v11 init];
  if (v5)
  {
    v6 = [IMBlastDoorTranscriptBackgroundCommandTypeWrapper alloc];
    v7 = [v4 type];
    v8 = [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v6 initWith:v7];
    [(IMBlastDoorTranscriptBackgroundCommand *)v5 setType:v8];

    v9 = v5;
  }

  return v5;
}

@end