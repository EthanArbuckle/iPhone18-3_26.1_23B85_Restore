@interface _MRMicrophoneConnectionRequestMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRMicrophoneConnectionRequestMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMicrophoneConnectionRequestMessageProtobuf;
  v4 = [(_MRMicrophoneConnectionRequestMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRMicrophoneConnectionRequestMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  details = self->_details;
  if (details)
  {
    dictionaryRepresentation = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"details"];
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [dictionary setObject:rapportIdentifier forKey:@"rapportIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rapportIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_details)
  {
    [toCopy setDetails:?];
    toCopy = v5;
  }

  if (self->_rapportIdentifier)
  {
    [v5 setRapportIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_rapportIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((details = self->_details, !(details | equalCopy[1])) || -[_MRRequestDetailsProtobuf isEqual:](details, "isEqual:")))
  {
    rapportIdentifier = self->_rapportIdentifier;
    if (rapportIdentifier | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  details = self->_details;
  v6 = fromCopy[1];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(_MRMicrophoneConnectionRequestMessageProtobuf *)self setRapportIdentifier:?];
    fromCopy = v7;
  }
}

@end