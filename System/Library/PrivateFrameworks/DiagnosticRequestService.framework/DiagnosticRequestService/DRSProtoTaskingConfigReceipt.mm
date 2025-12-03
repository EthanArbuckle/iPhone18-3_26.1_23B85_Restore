@interface DRSProtoTaskingConfigReceipt
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoTaskingConfigReceipt

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingConfigReceipt;
  v4 = [(DRSProtoTaskingConfigReceipt *)&v8 description];
  dictionaryRepresentation = [(DRSProtoTaskingConfigReceipt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  taskingConfigMetadata = self->_taskingConfigMetadata;
  if (taskingConfigMetadata)
  {
    dictionaryRepresentation = [(DRSProtoTaskingConfigMetadata *)taskingConfigMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tasking_config_metadata"];
  }

  receiptResult = self->_receiptResult;
  if (receiptResult)
  {
    [dictionary setObject:receiptResult forKey:@"receipt_result"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskingConfigMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_receiptResult)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskingConfigMetadata)
  {
    [toCopy setTaskingConfigMetadata:?];
    toCopy = v5;
  }

  if (self->_receiptResult)
  {
    [v5 setReceiptResult:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoTaskingConfigMetadata *)self->_taskingConfigMetadata copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_receiptResult copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((taskingConfigMetadata = self->_taskingConfigMetadata, !(taskingConfigMetadata | equalCopy[2])) || -[DRSProtoTaskingConfigMetadata isEqual:](taskingConfigMetadata, "isEqual:")))
  {
    receiptResult = self->_receiptResult;
    if (receiptResult | equalCopy[1])
    {
      v7 = [(NSString *)receiptResult isEqual:?];
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
  taskingConfigMetadata = self->_taskingConfigMetadata;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (taskingConfigMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingConfigMetadata *)taskingConfigMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingConfigReceipt *)self setTaskingConfigMetadata:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(DRSProtoTaskingConfigReceipt *)self setReceiptResult:?];
    fromCopy = v7;
  }
}

@end