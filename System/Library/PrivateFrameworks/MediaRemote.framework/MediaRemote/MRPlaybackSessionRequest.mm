@interface MRPlaybackSessionRequest
- (BOOL)isEqual:(id)equal;
- (MRPlaybackSessionRequest)initWithData:(id)data;
- (MRPlaybackSessionRequest)initWithIdentifier:(id)identifier type:(id)type;
- (MRPlaybackSessionRequest)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (_MRPlaybackSessionRequestProtobuf)protobuf;
- (id)description;
@end

@implementation MRPlaybackSessionRequest

- (MRPlaybackSessionRequest)initWithIdentifier:(id)identifier type:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = MRPlaybackSessionRequest;
  v8 = [(MRPlaybackSessionRequest *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [typeCopy copy];
    type = v8->_type;
    v8->_type = v11;

    v8->_isPreflight = 0;
  }

  return v8;
}

- (MRPlaybackSessionRequest)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v24.receiver = self;
    v24.super_class = MRPlaybackSessionRequest;
    v5 = [(MRPlaybackSessionRequest *)&v24 init];
    if (v5)
    {
      requestID = [protobufCopy requestID];
      v7 = [requestID copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v7;

      identifier = [protobufCopy identifier];
      v10 = [identifier copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      type = [protobufCopy type];
      v13 = [type copy];
      type = v5->_type;
      v5->_type = v13;

      v15 = [MRPlayerPath alloc];
      destinationPlayerPath = [protobufCopy destinationPlayerPath];
      v17 = [(MRPlayerPath *)v15 initWithProtobuf:destinationPlayerPath];
      destinationPlayerPath = v5->_destinationPlayerPath;
      v5->_destinationPlayerPath = v17;

      destinationCommandInfo = [protobufCopy destinationCommandInfo];
      v20 = _MRProtoUtilsNSDictionaryFromProtoDictionary(destinationCommandInfo);
      destinationCommandInfo = v5->_destinationCommandInfo;
      v5->_destinationCommandInfo = v20;

      v5->_isPreflight = [protobufCopy isPreflight];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRPlaybackSessionRequest)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[_MRPlaybackSessionRequestProtobuf alloc] initWithData:dataCopy];
    v6 = [(MRPlaybackSessionRequest *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRPlaybackSessionRequest *)self initWithProtobuf:0];
  }

  return v6;
}

- (_MRPlaybackSessionRequestProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRPlaybackSessionRequestProtobuf);
  requestIdentifier = [(MRPlaybackSessionRequest *)self requestIdentifier];
  v5 = [requestIdentifier copy];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setRequestID:v5];

  identifier = [(MRPlaybackSessionRequest *)self identifier];
  v7 = [identifier copy];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setIdentifier:v7];

  type = [(MRPlaybackSessionRequest *)self type];
  v9 = [type copy];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setType:v9];

  destinationPlayerPath = [(MRPlaybackSessionRequest *)self destinationPlayerPath];
  protobuf = [destinationPlayerPath protobuf];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setDestinationPlayerPath:protobuf];

  destinationCommandInfo = [(MRPlaybackSessionRequest *)self destinationCommandInfo];
  v13 = _MRProtoUtilsProtoDictionaryFromNSDictionary(destinationCommandInfo);
  [(_MRPlaybackSessionRequestProtobuf *)v3 setDestinationCommandInfo:v13];

  [(_MRPlaybackSessionRequestProtobuf *)v3 setIsPreflight:[(MRPlaybackSessionRequest *)self isPreflight]];

  return v3;
}

- (NSData)data
{
  protobuf = [(MRPlaybackSessionRequest *)self protobuf];
  data = [protobuf data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestIdentifier = [(MRPlaybackSessionRequest *)v5 requestIdentifier];
      requestIdentifier2 = [(MRPlaybackSessionRequest *)self requestIdentifier];
      v8 = requestIdentifier2;
      if (requestIdentifier == requestIdentifier2)
      {
      }

      else
      {
        requestIdentifier3 = [(MRPlaybackSessionRequest *)v5 requestIdentifier];
        requestIdentifier4 = [(MRPlaybackSessionRequest *)self requestIdentifier];
        v11 = [requestIdentifier3 isEqualToString:requestIdentifier4];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      identifier = [(MRPlaybackSessionRequest *)v5 identifier];
      identifier2 = [(MRPlaybackSessionRequest *)self identifier];
      v15 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(MRPlaybackSessionRequest *)v5 identifier];
        identifier4 = [(MRPlaybackSessionRequest *)self identifier];
        v18 = [identifier3 isEqualToString:identifier4];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      type = [(MRPlaybackSessionRequest *)v5 type];
      type2 = [(MRPlaybackSessionRequest *)self type];
      v21 = type2;
      if (type == type2)
      {
      }

      else
      {
        type3 = [(MRPlaybackSessionRequest *)v5 type];
        type4 = [(MRPlaybackSessionRequest *)self type];
        v24 = [type3 isEqualToString:type4];

        if (!v24)
        {
LABEL_15:
          LOBYTE(v12) = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      isPreflight = [(MRPlaybackSessionRequest *)v5 isPreflight];
      v12 = isPreflight ^ [(MRPlaybackSessionRequest *)self isPreflight]^ 1;
      goto LABEL_18;
    }

    LOBYTE(v12) = 0;
  }

LABEL_19:

  return v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  requestIdentifier = [(MRPlaybackSessionRequest *)self requestIdentifier];
  identifier = [(MRPlaybackSessionRequest *)self identifier];
  type = [(MRPlaybackSessionRequest *)self type];
  v7 = [v3 initWithFormat:@"%@/%@/%@/isPreflight:%d", requestIdentifier, identifier, type, -[MRPlaybackSessionRequest isPreflight](self, "isPreflight")];

  return v7;
}

@end