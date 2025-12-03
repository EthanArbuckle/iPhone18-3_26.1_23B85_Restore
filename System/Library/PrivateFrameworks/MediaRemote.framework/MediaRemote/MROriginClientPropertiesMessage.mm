@interface MROriginClientPropertiesMessage
- (MROriginClientPropertiesMessage)initWithLastPlayingDate:(id)date devicePlaybackSessionID:(id)d;
- (NSDate)lastPlayingDate;
- (NSString)devicePlaybackSessionID;
@end

@implementation MROriginClientPropertiesMessage

- (MROriginClientPropertiesMessage)initWithLastPlayingDate:(id)date devicePlaybackSessionID:(id)d
{
  dateCopy = date;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = MROriginClientPropertiesMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [dateCopy timeIntervalSinceReferenceDate];
    [v9 setLastPlayingTimestamp:?];
    [v9 setDevicePlaybackSessionID:dCopy];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (NSDate)lastPlayingDate
{
  v2 = MEMORY[0x1E695DF00];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  [underlyingCodableMessage lastPlayingTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (NSString)devicePlaybackSessionID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  devicePlaybackSessionID = [underlyingCodableMessage devicePlaybackSessionID];

  return devicePlaybackSessionID;
}

@end