@interface AXLTAudioInfo
- (AXLTAudioInfo)initWithAudioInfo:(id)a3 requestType:(int64_t)a4 pid:(int)a5;
@end

@implementation AXLTAudioInfo

- (AXLTAudioInfo)initWithAudioInfo:(id)a3 requestType:(int64_t)a4 pid:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AXLTAudioInfo;
  v10 = [(AXLTAudioInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_requestType = a4;
    v10->_pid = a5;
    objc_storeStrong(&v10->_audioHistogram, a3);
  }

  return v11;
}

@end