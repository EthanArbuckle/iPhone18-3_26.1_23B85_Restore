@interface CSSingSessionState
- (CSSingSessionState)initWithMicVolume:(double)a3 reverbLevel:(int64_t)a4 activeMicRemoteDisplayID:(id)a5 participants:(id)a6 sdrMode:(int64_t)a7;
@end

@implementation CSSingSessionState

- (CSSingSessionState)initWithMicVolume:(double)a3 reverbLevel:(int64_t)a4 activeMicRemoteDisplayID:(id)a5 participants:(id)a6 sdrMode:(int64_t)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CSSingSessionState;
  v15 = [(CSSingSessionState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_micVolume = a3;
    v15->_reverbLevel = a4;
    objc_storeStrong(&v15->_activeMicRemoteDisplayID, a5);
    objc_storeStrong(&v16->_participants, a6);
    v16->_sdrMode = a7;
  }

  return v16;
}

@end