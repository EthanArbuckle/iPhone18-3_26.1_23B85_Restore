@interface HSPlaybackControlRequest
- (HSPlaybackControlRequest)initWithInterfaceID:(unsigned int)a3 controlCommand:(int64_t)a4;
@end

@implementation HSPlaybackControlRequest

- (HSPlaybackControlRequest)initWithInterfaceID:(unsigned int)a3 controlCommand:(int64_t)a4
{
  if (a4 > 0x14)
  {
    v7 = &unk_254496342;
  }

  else
  {
    v7 = *(&off_279779BC8 + a4);
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%u/%s", "ctrl-int", *&a3, v7];
  v11.receiver = self;
  v11.super_class = HSPlaybackControlRequest;
  v9 = [(HSRequest *)&v11 initWithAction:v8];

  if (v9)
  {
    v9->_interfaceID = a3;
    v9->_controlCommand = a4;
  }

  return v9;
}

@end