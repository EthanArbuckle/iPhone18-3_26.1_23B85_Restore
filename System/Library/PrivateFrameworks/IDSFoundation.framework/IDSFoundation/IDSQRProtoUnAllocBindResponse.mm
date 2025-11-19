@interface IDSQRProtoUnAllocBindResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoUnAllocBindResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoUnAllocBindResponse;
  v4 = [(IDSQRProtoUnAllocBindResponse *)&v8 description];
  v5 = [(IDSQRProtoUnAllocBindResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob)
  {
    [v3 setObject:reportingDataBlob forKey:@"reporting_data_blob"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_reportingDataBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  reportingDataBlob = self->_reportingDataBlob;
  if (reportingDataBlob)
  {
    [a3 setReportingDataBlob:reportingDataBlob];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_reportingDataBlob copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    reportingDataBlob = self->_reportingDataBlob;
    if (reportingDataBlob | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(IDSQRProtoUnAllocBindResponse *)self setReportingDataBlob:?];
  }
}

@end