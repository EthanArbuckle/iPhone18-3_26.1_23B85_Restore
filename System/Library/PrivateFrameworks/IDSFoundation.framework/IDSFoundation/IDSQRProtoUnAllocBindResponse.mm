@interface IDSQRProtoUnAllocBindResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoUnAllocBindResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoUnAllocBindResponse;
  v4 = [(IDSQRProtoUnAllocBindResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoUnAllocBindResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob)
  {
    [dictionary setObject:reportingDataBlob forKey:@"reporting_data_blob"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_reportingDataBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob)
  {
    [to setReportingDataBlob:reportingDataBlob];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_reportingDataBlob copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    reportingDataBlob = self->_reportingDataBlob;
    if (reportingDataBlob | equalCopy[1])
    {
      v6 = [(NSData *)reportingDataBlob isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(IDSQRProtoUnAllocBindResponse *)self setReportingDataBlob:?];
  }
}

@end