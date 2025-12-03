@interface CloudFamilyAnalysisPETCloudFamilyAnalysisEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CloudFamilyAnalysisPETCloudFamilyAnalysisEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CloudFamilyAnalysisPETCloudFamilyAnalysisEvent;
  v4 = [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)&v8 description];
  dictionaryRepresentation = [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self dictionaryRepresentation];
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
    dictionaryRepresentation = [(CloudFamilyAnalysisPETContactEvents *)contactEvents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"contactEvents"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_collectionId)
  {
    [CloudFamilyAnalysisPETCloudFamilyAnalysisEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_sessionId)
  {
    [CloudFamilyAnalysisPETCloudFamilyAnalysisEvent writeTo:];
  }

  PBDataWriterWriteStringField();
  batch = self->_batch;
  PBDataWriterWriteInt32Field();
  if (!self->_contactEvents)
  {
    [CloudFamilyAnalysisPETCloudFamilyAnalysisEvent writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  collectionId = self->_collectionId;
  toCopy = to;
  [toCopy setCollectionId:collectionId];
  [toCopy setSessionId:self->_sessionId];
  toCopy[2] = self->_batch;
  [toCopy setContactEvents:self->_contactEvents];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_collectionId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 8) = self->_batch;
  v10 = [(CloudFamilyAnalysisPETContactEvents *)self->_contactEvents copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((collectionId = self->_collectionId, !(collectionId | equalCopy[2])) || -[NSString isEqual:](collectionId, "isEqual:")) && ((sessionId = self->_sessionId, !(sessionId | equalCopy[4])) || -[NSString isEqual:](sessionId, "isEqual:")) && self->_batch == *(equalCopy + 2))
  {
    contactEvents = self->_contactEvents;
    if (contactEvents | equalCopy[3])
    {
      v8 = [(CloudFamilyAnalysisPETContactEvents *)contactEvents isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_collectionId hash];
  v4 = [(NSString *)self->_sessionId hash]^ v3;
  v5 = 2654435761 * self->_batch;
  return v4 ^ [(CloudFamilyAnalysisPETContactEvents *)self->_contactEvents hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self setCollectionId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self setSessionId:?];
    fromCopy = v7;
  }

  self->_batch = fromCopy[2];
  contactEvents = self->_contactEvents;
  v6 = *(fromCopy + 3);
  if (contactEvents)
  {
    if (v6)
    {
      [(CloudFamilyAnalysisPETContactEvents *)contactEvents mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self setContactEvents:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end