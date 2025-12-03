@interface CSSingSessionState
- (CSSingSessionState)initWithMicVolume:(double)volume reverbLevel:(int64_t)level activeMicRemoteDisplayID:(id)d participants:(id)participants sdrMode:(int64_t)mode;
@end

@implementation CSSingSessionState

- (CSSingSessionState)initWithMicVolume:(double)volume reverbLevel:(int64_t)level activeMicRemoteDisplayID:(id)d participants:(id)participants sdrMode:(int64_t)mode
{
  dCopy = d;
  participantsCopy = participants;
  v18.receiver = self;
  v18.super_class = CSSingSessionState;
  v15 = [(CSSingSessionState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_micVolume = volume;
    v15->_reverbLevel = level;
    objc_storeStrong(&v15->_activeMicRemoteDisplayID, d);
    objc_storeStrong(&v16->_participants, participants);
    v16->_sdrMode = mode;
  }

  return v16;
}

@end