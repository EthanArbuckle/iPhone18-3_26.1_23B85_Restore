@interface DRSProtoTaskingConfigReceipt
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoTaskingConfigReceipt

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingConfigReceipt;
  v4 = [(DRSProtoTaskingConfigReceipt *)&v8 description];
  v5 = [(DRSProtoTaskingConfigReceipt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  taskingConfigMetadata = self->_taskingConfigMetadata;
  if (taskingConfigMetadata)
  {
    v5 = [(DRSProtoTaskingConfigMetadata *)taskingConfigMetadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"tasking_config_metadata"];
  }

  receiptResult = self->_receiptResult;
  if (receiptResult)
  {
    [v3 setObject:receiptResult forKey:@"receipt_result"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskingConfigMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_receiptResult)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskingConfigMetadata)
  {
    [v4 setTaskingConfigMetadata:?];
    v4 = v5;
  }

  if (self->_receiptResult)
  {
    [v5 setReceiptResult:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DRSProtoTaskingConfigMetadata *)self->_taskingConfigMetadata copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_receiptResult copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((taskingConfigMetadata = self->_taskingConfigMetadata, !(taskingConfigMetadata | v4[2])) || -[DRSProtoTaskingConfigMetadata isEqual:](taskingConfigMetadata, "isEqual:")))
  {
    receiptResult = self->_receiptResult;
    if (receiptResult | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  taskingConfigMetadata = self->_taskingConfigMetadata;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(DRSProtoTaskingConfigReceipt *)self setReceiptResult:?];
    v4 = v7;
  }
}

@end