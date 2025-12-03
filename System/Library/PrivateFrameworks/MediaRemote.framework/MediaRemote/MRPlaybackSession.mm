@interface MRPlaybackSession
- (BOOL)isEqual:(id)equal;
- (MRPlaybackSession)initWithData:(id)data;
- (MRPlaybackSession)initWithIdentifier:(id)identifier type:(id)type playbackSessionData:(id)data revision:(id)revision metadata:(id)metadata;
- (MRPlaybackSession)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (_MRPlaybackSessionProtobuf)protobuf;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MRPlaybackSession

- (MRPlaybackSession)initWithIdentifier:(id)identifier type:(id)type playbackSessionData:(id)data revision:(id)revision metadata:(id)metadata
{
  identifierCopy = identifier;
  typeCopy = type;
  dataCopy = data;
  revisionCopy = revision;
  metadataCopy = metadata;
  v29.receiver = self;
  v29.super_class = MRPlaybackSession;
  v17 = [(MRPlaybackSession *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [typeCopy copy];
    type = v17->_type;
    v17->_type = v20;

    v22 = [dataCopy copy];
    playbackSessionData = v17->_playbackSessionData;
    v17->_playbackSessionData = v22;

    v24 = [revisionCopy copy];
    revision = v17->_revision;
    v17->_revision = v24;

    v26 = [metadataCopy copy];
    metadata = v17->_metadata;
    v17->_metadata = v26;
  }

  return v17;
}

- (MRPlaybackSession)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    protobufCopy = protobuf;
    identifier = [protobufCopy identifier];
    type = [protobufCopy type];
    playbackSessionData = [protobufCopy playbackSessionData];
    revision = [protobufCopy revision];
    metadata = [protobufCopy metadata];

    v10 = [(MRPlaybackSession *)self initWithIdentifier:identifier type:type playbackSessionData:playbackSessionData revision:revision metadata:metadata];
    self = v10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MRPlaybackSession)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[_MRPlaybackSessionProtobuf alloc] initWithData:dataCopy];
    v6 = [(MRPlaybackSession *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRPlaybackSession *)self initWithProtobuf:0];
  }

  return v6;
}

- (_MRPlaybackSessionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRPlaybackSessionProtobuf);
  identifier = [(MRPlaybackSession *)self identifier];
  [(_MRPlaybackSessionProtobuf *)v3 setIdentifier:identifier];

  type = [(MRPlaybackSession *)self type];
  [(_MRPlaybackSessionProtobuf *)v3 setType:type];

  playbackSessionData = [(MRPlaybackSession *)self playbackSessionData];
  [(_MRPlaybackSessionProtobuf *)v3 setPlaybackSessionData:playbackSessionData];

  revision = [(MRPlaybackSession *)self revision];
  [(_MRPlaybackSessionProtobuf *)v3 setRevision:revision];

  metadata = [(MRPlaybackSession *)self metadata];
  [(_MRPlaybackSessionProtobuf *)v3 setMetadata:metadata];

  return v3;
}

- (NSData)data
{
  protobuf = [(MRPlaybackSession *)self protobuf];
  data = [protobuf data];

  return data;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  playbackSessionData = [(MRPlaybackSession *)self playbackSessionData];
  [v3 setObject:playbackSessionData forKeyedSubscript:@"playbackSessionData"];

  identifier = [(MRPlaybackSession *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  type = [(MRPlaybackSession *)self type];
  [v3 setObject:type forKeyedSubscript:@"type"];

  revision = [(MRPlaybackSession *)self revision];
  [v3 setObject:revision forKeyedSubscript:@"revision"];

  metadata = [(MRPlaybackSession *)self metadata];
  [v3 setObject:metadata forKeyedSubscript:@"metadata"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionaryRepresentation = [(MRPlaybackSession *)equalCopy dictionaryRepresentation];
      dictionaryRepresentation2 = [(MRPlaybackSession *)self dictionaryRepresentation];
      v7 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRPlaybackSession *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

@end