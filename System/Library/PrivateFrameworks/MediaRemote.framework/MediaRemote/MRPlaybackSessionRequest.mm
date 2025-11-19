@interface MRPlaybackSessionRequest
- (BOOL)isEqual:(id)a3;
- (MRPlaybackSessionRequest)initWithData:(id)a3;
- (MRPlaybackSessionRequest)initWithIdentifier:(id)a3 type:(id)a4;
- (MRPlaybackSessionRequest)initWithProtobuf:(id)a3;
- (NSData)data;
- (_MRPlaybackSessionRequestProtobuf)protobuf;
- (id)description;
@end

@implementation MRPlaybackSessionRequest

- (MRPlaybackSessionRequest)initWithIdentifier:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRPlaybackSessionRequest;
  v8 = [(MRPlaybackSessionRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    type = v8->_type;
    v8->_type = v11;

    v8->_isPreflight = 0;
  }

  return v8;
}

- (MRPlaybackSessionRequest)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v24.receiver = self;
    v24.super_class = MRPlaybackSessionRequest;
    v5 = [(MRPlaybackSessionRequest *)&v24 init];
    if (v5)
    {
      v6 = [v4 requestID];
      v7 = [v6 copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v7;

      v9 = [v4 identifier];
      v10 = [v9 copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      v12 = [v4 type];
      v13 = [v12 copy];
      type = v5->_type;
      v5->_type = v13;

      v15 = [MRPlayerPath alloc];
      v16 = [v4 destinationPlayerPath];
      v17 = [(MRPlayerPath *)v15 initWithProtobuf:v16];
      destinationPlayerPath = v5->_destinationPlayerPath;
      v5->_destinationPlayerPath = v17;

      v19 = [v4 destinationCommandInfo];
      v20 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v19);
      destinationCommandInfo = v5->_destinationCommandInfo;
      v5->_destinationCommandInfo = v20;

      v5->_isPreflight = [v4 isPreflight];
    }

    self = v5;
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (MRPlaybackSessionRequest)initWithData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_MRPlaybackSessionRequestProtobuf alloc] initWithData:v4];
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
  v4 = [(MRPlaybackSessionRequest *)self requestIdentifier];
  v5 = [v4 copy];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setRequestID:v5];

  v6 = [(MRPlaybackSessionRequest *)self identifier];
  v7 = [v6 copy];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setIdentifier:v7];

  v8 = [(MRPlaybackSessionRequest *)self type];
  v9 = [v8 copy];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setType:v9];

  v10 = [(MRPlaybackSessionRequest *)self destinationPlayerPath];
  v11 = [v10 protobuf];
  [(_MRPlaybackSessionRequestProtobuf *)v3 setDestinationPlayerPath:v11];

  v12 = [(MRPlaybackSessionRequest *)self destinationCommandInfo];
  v13 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v12);
  [(_MRPlaybackSessionRequestProtobuf *)v3 setDestinationCommandInfo:v13];

  [(_MRPlaybackSessionRequestProtobuf *)v3 setIsPreflight:[(MRPlaybackSessionRequest *)self isPreflight]];

  return v3;
}

- (NSData)data
{
  v2 = [(MRPlaybackSessionRequest *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRPlaybackSessionRequest *)v5 requestIdentifier];
      v7 = [(MRPlaybackSessionRequest *)self requestIdentifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(MRPlaybackSessionRequest *)v5 requestIdentifier];
        v10 = [(MRPlaybackSessionRequest *)self requestIdentifier];
        v11 = [v9 isEqualToString:v10];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v13 = [(MRPlaybackSessionRequest *)v5 identifier];
      v14 = [(MRPlaybackSessionRequest *)self identifier];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(MRPlaybackSessionRequest *)v5 identifier];
        v17 = [(MRPlaybackSessionRequest *)self identifier];
        v18 = [v16 isEqualToString:v17];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v19 = [(MRPlaybackSessionRequest *)v5 type];
      v20 = [(MRPlaybackSessionRequest *)self type];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(MRPlaybackSessionRequest *)v5 type];
        v23 = [(MRPlaybackSessionRequest *)self type];
        v24 = [v22 isEqualToString:v23];

        if (!v24)
        {
LABEL_15:
          LOBYTE(v12) = 0;
LABEL_18:

          goto LABEL_19;
        }
      }

      v25 = [(MRPlaybackSessionRequest *)v5 isPreflight];
      v12 = v25 ^ [(MRPlaybackSessionRequest *)self isPreflight]^ 1;
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
  v4 = [(MRPlaybackSessionRequest *)self requestIdentifier];
  v5 = [(MRPlaybackSessionRequest *)self identifier];
  v6 = [(MRPlaybackSessionRequest *)self type];
  v7 = [v3 initWithFormat:@"%@/%@/%@/isPreflight:%d", v4, v5, v6, -[MRPlaybackSessionRequest isPreflight](self, "isPreflight")];

  return v7;
}

@end