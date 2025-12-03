@interface IMBlastDoorTranscriptBackgroundCommand
- (IMBlastDoorTranscriptBackgroundCommand)initWith:(id)with;
@end

@implementation IMBlastDoorTranscriptBackgroundCommand

- (IMBlastDoorTranscriptBackgroundCommand)initWith:(id)with
{
  withCopy = with;
  v11.receiver = self;
  v11.super_class = IMBlastDoorTranscriptBackgroundCommand;
  v5 = [(IMBlastDoorTranscriptBackgroundCommand *)&v11 init];
  if (v5)
  {
    v6 = [IMBlastDoorTranscriptBackgroundCommandTypeWrapper alloc];
    type = [withCopy type];
    v8 = [(IMBlastDoorTranscriptBackgroundCommandTypeWrapper *)v6 initWith:type];
    [(IMBlastDoorTranscriptBackgroundCommand *)v5 setType:v8];

    v9 = v5;
  }

  return v5;
}

@end