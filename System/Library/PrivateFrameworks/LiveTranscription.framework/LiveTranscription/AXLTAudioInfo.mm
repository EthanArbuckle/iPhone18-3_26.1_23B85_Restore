@interface AXLTAudioInfo
- (AXLTAudioInfo)initWithAudioInfo:(id)info requestType:(int64_t)type pid:(int)pid;
@end

@implementation AXLTAudioInfo

- (AXLTAudioInfo)initWithAudioInfo:(id)info requestType:(int64_t)type pid:(int)pid
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = AXLTAudioInfo;
  v10 = [(AXLTAudioInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_requestType = type;
    v10->_pid = pid;
    objc_storeStrong(&v10->_audioHistogram, info);
  }

  return v11;
}

@end