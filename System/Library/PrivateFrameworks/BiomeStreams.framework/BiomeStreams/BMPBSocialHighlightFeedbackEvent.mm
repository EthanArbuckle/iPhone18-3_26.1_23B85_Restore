@interface BMPBSocialHighlightFeedbackEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFeedbackType:(id)type;
- (int)feedbackType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFeedbackType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BMPBSocialHighlightFeedbackEvent

- (int)feedbackType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_feedbackType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFeedbackType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsFeedbackType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Displayed"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"UserInteracted"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Hide"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"AppButton"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ActivityButton"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ConsumptionStarted"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ConsumptionFinished"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ItemDetailViewed"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ParentDetailViewed"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"AppReply"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ConsumedExternally"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSocialHighlightFeedbackEvent;
  v4 = [(BMPBSocialHighlightFeedbackEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBSocialHighlightFeedbackEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [dictionary setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    feedbackType = self->_feedbackType;
    if (feedbackType >= 0xB)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_feedbackType];
    }

    else
    {
      v8 = off_1E6E53C10[feedbackType];
    }

    [v4 setObject:v8 forKey:@"feedbackType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_feedbackCreationSecondsSinceReferenceDate];
    [v4 setObject:v9 forKey:@"feedbackCreationSecondsSinceReferenceDate"];
  }

  highlight = self->_highlight;
  if (highlight)
  {
    dictionaryRepresentation = [(BMPBRankableSocialHighlight *)highlight dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"highlight"];
  }

  clientVariant = self->_clientVariant;
  if (clientVariant)
  {
    [v4 setObject:clientVariant forKey:@"clientVariant"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    feedbackCreationSecondsSinceReferenceDate = self->_feedbackCreationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_highlight)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_clientVariant)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_clientIdentifier)
  {
    [toCopy setClientIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_feedbackType;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_feedbackCreationSecondsSinceReferenceDate;
    *(toCopy + 48) |= 1u;
  }

  if (self->_highlight)
  {
    [v6 setHighlight:?];
    toCopy = v6;
  }

  if (self->_clientVariant)
  {
    [v6 setClientVariant:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_feedbackType;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_feedbackCreationSecondsSinceReferenceDate;
    *(v5 + 48) |= 1u;
  }

  v9 = [(BMPBRankableSocialHighlight *)self->_highlight copyWithZone:zone];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  v11 = [(NSString *)self->_clientVariant copyWithZone:zone];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v6 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_feedbackType != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_feedbackCreationSecondsSinceReferenceDate != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_18;
  }

  highlight = self->_highlight;
  if (highlight | *(equalCopy + 5) && ![(BMPBRankableSocialHighlight *)highlight isEqual:?])
  {
    goto LABEL_18;
  }

  clientVariant = self->_clientVariant;
  if (clientVariant | *(equalCopy + 3))
  {
    v9 = [(NSString *)clientVariant isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_feedbackType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  feedbackCreationSecondsSinceReferenceDate = self->_feedbackCreationSecondsSinceReferenceDate;
  if (feedbackCreationSecondsSinceReferenceDate < 0.0)
  {
    feedbackCreationSecondsSinceReferenceDate = -feedbackCreationSecondsSinceReferenceDate;
  }

  *v4.i64 = floor(feedbackCreationSecondsSinceReferenceDate + 0.5);
  v8 = (feedbackCreationSecondsSinceReferenceDate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v6 ^ v3 ^ v10 ^ [(BMPBRankableSocialHighlight *)self->_highlight hash];
  return v11 ^ [(NSString *)self->_clientVariant hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BMPBSocialHighlightFeedbackEvent *)self setClientIdentifier:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_feedbackType = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
  }

  if (v5)
  {
    self->_feedbackCreationSecondsSinceReferenceDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  highlight = self->_highlight;
  v7 = *(fromCopy + 5);
  if (highlight)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(BMPBRankableSocialHighlight *)highlight mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(BMPBSocialHighlightFeedbackEvent *)self setHighlight:?];
  }

  fromCopy = v8;
LABEL_13:
  if (*(fromCopy + 3))
  {
    [(BMPBSocialHighlightFeedbackEvent *)self setClientVariant:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end