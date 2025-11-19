@interface MailIntelligencePETMailIntelligenceAnalysisEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MailIntelligencePETMailIntelligenceAnalysisEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MailIntelligencePETMailIntelligenceAnalysisEvent;
  v4 = [(MailIntelligencePETMailIntelligenceAnalysisEvent *)&v8 description];
  v5 = [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  collectionId = self->_collectionId;
  if (collectionId)
  {
    [v3 setObject:collectionId forKey:@"collectionId"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v4 setObject:sessionId forKey:@"sessionId"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_batch];
  [v4 setObject:v7 forKey:@"batch"];

  contactEvents = self->_contactEvents;
  if (contactEvents)
  {
    v9 = [(MailIntelligencePETContactEvents *)contactEvents dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"contactEvents"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_mailIntelligenceUserId];
  [v4 setObject:v10 forKey:@"mailIntelligenceUserId"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (!self->_collectionId)
  {
    [MailIntelligencePETMailIntelligenceAnalysisEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_sessionId)
  {
    [MailIntelligencePETMailIntelligenceAnalysisEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  batch = self->_batch;
  PBDataWriterWriteInt32Field();
  if (!self->_contactEvents)
  {
    [MailIntelligencePETMailIntelligenceAnalysisEvent writeTo:];
  }

  PBDataWriterWriteSubmessage();
  mailIntelligenceUserId = self->_mailIntelligenceUserId;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  collectionId = self->_collectionId;
  v5 = a3;
  [v5 setCollectionId:collectionId];
  [v5 setSessionId:self->_sessionId];
  *(v5 + 4) = self->_batch;
  [v5 setContactEvents:self->_contactEvents];
  *(v5 + 1) = self->_mailIntelligenceUserId;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_collectionId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 16) = self->_batch;
  v10 = [(MailIntelligencePETContactEvents *)self->_contactEvents copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 8) = self->_mailIntelligenceUserId;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = [v4 isMemberOfClass:objc_opt_class()] && ((collectionId = self->_collectionId, !(collectionId | *(v4 + 3))) || -[NSString isEqual:](collectionId, "isEqual:")) && ((sessionId = self->_sessionId, !(sessionId | *(v4 + 5))) || -[NSString isEqual:](sessionId, "isEqual:")) && self->_batch == *(v4 + 4) && ((contactEvents = self->_contactEvents, !(contactEvents | *(v4 + 4))) || -[MailIntelligencePETContactEvents isEqual:](contactEvents, "isEqual:")) && self->_mailIntelligenceUserId == *(v4 + 1);

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_collectionId hash];
  v4 = [(NSString *)self->_sessionId hash]^ v3;
  v5 = 2654435761 * self->_batch;
  return v4 ^ [(MailIntelligencePETContactEvents *)self->_contactEvents hash]^ v5 ^ (2654435761u * self->_mailIntelligenceUserId);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 3))
  {
    [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self setCollectionId:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self setSessionId:?];
    v4 = v7;
  }

  self->_batch = *(v4 + 4);
  contactEvents = self->_contactEvents;
  v6 = *(v4 + 4);
  if (contactEvents)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    contactEvents = [(MailIntelligencePETContactEvents *)contactEvents mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    contactEvents = [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self setContactEvents:?];
  }

  v4 = v7;
LABEL_11:
  self->_mailIntelligenceUserId = *(v4 + 1);

  MEMORY[0x1EEE66BB8](contactEvents, v4);
}

@end