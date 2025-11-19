@interface _MRMicrophoneConnectionRequestMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRMicrophoneConnectionRequestMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMicrophoneConnectionRequestMessageProtobuf;
  v4 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)&v8 description];
  v5 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  details = self->_details;
  if (details)
  {
    v5 = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"details"];
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [v3 setObject:rapportIdentifier forKey:@"rapportIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_rapportIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_details)
  {
    [v4 setDetails:?];
    v4 = v5;
  }

  if (self->_rapportIdentifier)
  {
    [v5 setRapportIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_rapportIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((details = self->_details, !(details | v4[1])) || -[_MRRequestDetailsProtobuf isEqual:](details, "isEqual:")))
  {
    rapportIdentifier = self->_rapportIdentifier;
    if (rapportIdentifier | v4[2])
    {
      v7 = [(NSString *)rapportIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  details = self->_details;
  v6 = v4[1];
  v7 = v4;
  if (details)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRMicrophoneConnectionRequestMessageProtobuf *)self setDetails:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(_MRMicrophoneConnectionRequestMessageProtobuf *)self setRapportIdentifier:?];
    v4 = v7;
  }
}

@end