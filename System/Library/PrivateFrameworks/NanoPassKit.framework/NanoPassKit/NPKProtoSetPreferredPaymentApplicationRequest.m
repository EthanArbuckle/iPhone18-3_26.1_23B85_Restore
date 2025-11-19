@interface NPKProtoSetPreferredPaymentApplicationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSetPreferredPaymentApplicationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetPreferredPaymentApplicationRequest;
  v4 = [(NPKProtoSetPreferredPaymentApplicationRequest *)&v8 description];
  v5 = [(NPKProtoSetPreferredPaymentApplicationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passID = self->_passID;
  if (passID)
  {
    [v3 setObject:passID forKey:@"passID"];
  }

  preferredApplicationAID = self->_preferredApplicationAID;
  if (preferredApplicationAID)
  {
    [v4 setObject:preferredApplicationAID forKey:@"preferredApplicationAID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_preferredApplicationAID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passID)
  {
    [v4 setPassID:?];
    v4 = v5;
  }

  if (self->_preferredApplicationAID)
  {
    [v5 setPreferredApplicationAID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_preferredApplicationAID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((passID = self->_passID, !(passID | v4[1])) || -[NSString isEqual:](passID, "isEqual:")))
  {
    preferredApplicationAID = self->_preferredApplicationAID;
    if (preferredApplicationAID | v4[2])
    {
      v7 = [(NSString *)preferredApplicationAID isEqual:?];
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
  if (v4[1])
  {
    [(NPKProtoSetPreferredPaymentApplicationRequest *)self setPassID:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoSetPreferredPaymentApplicationRequest *)self setPreferredApplicationAID:?];
    v4 = v5;
  }
}

@end