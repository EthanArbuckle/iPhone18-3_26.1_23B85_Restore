@interface MROriginClientPropertiesMessage
- (MROriginClientPropertiesMessage)initWithLastPlayingDate:(id)a3 devicePlaybackSessionID:(id)a4;
- (NSDate)lastPlayingDate;
- (NSString)devicePlaybackSessionID;
@end

@implementation MROriginClientPropertiesMessage

- (MROriginClientPropertiesMessage)initWithLastPlayingDate:(id)a3 devicePlaybackSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MROriginClientPropertiesMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [v6 timeIntervalSinceReferenceDate];
    [v9 setLastPlayingTimestamp:?];
    [v9 setDevicePlaybackSessionID:v7];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (NSDate)lastPlayingDate
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(MRProtocolMessage *)self underlyingCodableMessage];
  [v3 lastPlayingTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (NSString)devicePlaybackSessionID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 devicePlaybackSessionID];

  return v3;
}

@end