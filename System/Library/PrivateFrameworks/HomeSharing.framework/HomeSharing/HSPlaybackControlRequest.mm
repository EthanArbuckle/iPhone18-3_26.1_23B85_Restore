@interface HSPlaybackControlRequest
- (HSPlaybackControlRequest)initWithInterfaceID:(unsigned int)d controlCommand:(int64_t)command;
@end

@implementation HSPlaybackControlRequest

- (HSPlaybackControlRequest)initWithInterfaceID:(unsigned int)d controlCommand:(int64_t)command
{
  if (command > 0x14)
  {
    v7 = &unk_254496342;
  }

  else
  {
    v7 = *(&off_279779BC8 + command);
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%u/%s", "ctrl-int", *&d, v7];
  v11.receiver = self;
  v11.super_class = HSPlaybackControlRequest;
  v9 = [(HSRequest *)&v11 initWithAction:v8];

  if (v9)
  {
    v9->_interfaceID = d;
    v9->_controlCommand = command;
  }

  return v9;
}

@end