@interface _MRSendHIDReportMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendHIDReportMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendHIDReportMessageProtobuf;
  v4 = [(_MRSendHIDReportMessageProtobuf *)&v8 description];
  v5 = [(_MRSendHIDReportMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  virtualDeviceID = self->_virtualDeviceID;
  if (virtualDeviceID)
  {
    [v3 setObject:virtualDeviceID forKey:@"virtualDeviceID"];
  }

  report = self->_report;
  if (report)
  {
    [v4 setObject:report forKey:@"report"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_virtualDeviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_report)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_virtualDeviceID)
  {
    [v4 setVirtualDeviceID:?];
    v4 = v5;
  }

  if (self->_report)
  {
    [v5 setReport:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_virtualDeviceID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_report copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((virtualDeviceID = self->_virtualDeviceID, !(virtualDeviceID | v4[2])) || -[NSString isEqual:](virtualDeviceID, "isEqual:")))
  {
    report = self->_report;
    if (report | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(_MRSendHIDReportMessageProtobuf *)self setVirtualDeviceID:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(_MRSendHIDReportMessageProtobuf *)self setReport:?];
    v4 = v5;
  }
}

@end