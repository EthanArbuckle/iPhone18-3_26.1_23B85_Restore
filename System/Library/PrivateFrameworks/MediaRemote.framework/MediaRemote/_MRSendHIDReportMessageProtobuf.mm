@interface _MRSendHIDReportMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendHIDReportMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendHIDReportMessageProtobuf;
  v4 = [(_MRSendHIDReportMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendHIDReportMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  virtualDeviceID = self->_virtualDeviceID;
  if (virtualDeviceID)
  {
    [dictionary setObject:virtualDeviceID forKey:@"virtualDeviceID"];
  }

  report = self->_report;
  if (report)
  {
    [v4 setObject:report forKey:@"report"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_virtualDeviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_report)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_virtualDeviceID)
  {
    [toCopy setVirtualDeviceID:?];
    toCopy = v5;
  }

  if (self->_report)
  {
    [v5 setReport:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_virtualDeviceID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_report copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((virtualDeviceID = self->_virtualDeviceID, !(virtualDeviceID | equalCopy[2])) || -[NSString isEqual:](virtualDeviceID, "isEqual:")))
  {
    report = self->_report;
    if (report | equalCopy[1])
    {
      v7 = [(NSData *)report isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(_MRSendHIDReportMessageProtobuf *)self setVirtualDeviceID:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_MRSendHIDReportMessageProtobuf *)self setReport:?];
    fromCopy = v5;
  }
}

@end