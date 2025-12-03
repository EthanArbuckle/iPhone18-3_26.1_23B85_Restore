@interface MailIntelligencePETMailIntelligenceAnalysisEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MailIntelligencePETMailIntelligenceAnalysisEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MailIntelligencePETMailIntelligenceAnalysisEvent;
  v4 = [(MailIntelligencePETMailIntelligenceAnalysisEvent *)&v8 description];
  dictionaryRepresentation = [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  collectionId = self->_collectionId;
  if (collectionId)
  {
    [dictionary setObject:collectionId forKey:@"collectionId"];
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
    dictionaryRepresentation = [(MailIntelligencePETContactEvents *)contactEvents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"contactEvents"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_mailIntelligenceUserId];
  [v4 setObject:v10 forKey:@"mailIntelligenceUserId"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  collectionId = self->_collectionId;
  toCopy = to;
  [toCopy setCollectionId:collectionId];
  [toCopy setSessionId:self->_sessionId];
  *(toCopy + 4) = self->_batch;
  [toCopy setContactEvents:self->_contactEvents];
  *(toCopy + 1) = self->_mailIntelligenceUserId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_collectionId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 16) = self->_batch;
  v10 = [(MailIntelligencePETContactEvents *)self->_contactEvents copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 8) = self->_mailIntelligenceUserId;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((collectionId = self->_collectionId, !(collectionId | *(equalCopy + 3))) || -[NSString isEqual:](collectionId, "isEqual:")) && ((sessionId = self->_sessionId, !(sessionId | *(equalCopy + 5))) || -[NSString isEqual:](sessionId, "isEqual:")) && self->_batch == *(equalCopy + 4) && ((contactEvents = self->_contactEvents, !(contactEvents | *(equalCopy + 4))) || -[MailIntelligencePETContactEvents isEqual:](contactEvents, "isEqual:")) && self->_mailIntelligenceUserId == *(equalCopy + 1);

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_collectionId hash];
  v4 = [(NSString *)self->_sessionId hash]^ v3;
  v5 = 2654435761 * self->_batch;
  return v4 ^ [(MailIntelligencePETContactEvents *)self->_contactEvents hash]^ v5 ^ (2654435761u * self->_mailIntelligenceUserId);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self setCollectionId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(MailIntelligencePETMailIntelligenceAnalysisEvent *)self setSessionId:?];
    fromCopy = v7;
  }

  self->_batch = *(fromCopy + 4);
  contactEvents = self->_contactEvents;
  v6 = *(fromCopy + 4);
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

  fromCopy = v7;
LABEL_11:
  self->_mailIntelligenceUserId = *(fromCopy + 1);

  MEMORY[0x1EEE66BB8](contactEvents, fromCopy);
}

@end