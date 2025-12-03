@interface MRPlayerClientPropertiesMessage
- (MRPlayerClientPropertiesMessage)initWithPlayerPath:(id)path lastPlayingDate:(id)date;
- (MRPlayerPath)playerPath;
- (NSDate)lastPlayingDate;
@end

@implementation MRPlayerClientPropertiesMessage

- (MRPlayerClientPropertiesMessage)initWithPlayerPath:(id)path lastPlayingDate:(id)date
{
  pathCopy = path;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = MRPlayerClientPropertiesMessage;
  v8 = [(MRProtocolMessage *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [dateCopy timeIntervalSinceReferenceDate];
    [v9 setLastPlayingTimestamp:?];
    protobuf = [pathCopy protobuf];
    [v9 setPlayerPath:protobuf];

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

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

@end