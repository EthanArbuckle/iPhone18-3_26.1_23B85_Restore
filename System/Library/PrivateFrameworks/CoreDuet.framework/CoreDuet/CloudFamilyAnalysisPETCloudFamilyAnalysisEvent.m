@interface CloudFamilyAnalysisPETCloudFamilyAnalysisEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CloudFamilyAnalysisPETCloudFamilyAnalysisEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CloudFamilyAnalysisPETCloudFamilyAnalysisEvent;
  v4 = [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)&v8 description];
  v5 = [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self dictionaryRepresentation];
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
    v9 = [(CloudFamilyAnalysisPETContactEvents *)contactEvents dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"contactEvents"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  collectionId = self->_collectionId;
  v5 = a3;
  [v5 setCollectionId:collectionId];
  [v5 setSessionId:self->_sessionId];
  v5[2] = self->_batch;
  [v5 setContactEvents:self->_contactEvents];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_collectionId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 8) = self->_batch;
  v10 = [(CloudFamilyAnalysisPETContactEvents *)self->_contactEvents copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((collectionId = self->_collectionId, !(collectionId | v4[2])) || -[NSString isEqual:](collectionId, "isEqual:")) && ((sessionId = self->_sessionId, !(sessionId | v4[4])) || -[NSString isEqual:](sessionId, "isEqual:")) && self->_batch == *(v4 + 2))
  {
    contactEvents = self->_contactEvents;
    if (contactEvents | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self setCollectionId:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(CloudFamilyAnalysisPETCloudFamilyAnalysisEvent *)self setSessionId:?];
    v4 = v7;
  }

  self->_batch = v4[2];
  contactEvents = self->_contactEvents;
  v6 = *(v4 + 3);
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