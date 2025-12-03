@interface _CPCardSectionFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCardSectionFeedback)init;
- (_CPCardSectionFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCardSectionFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPCardSectionForFeedback *)self->_cardSection hash];
  v5 = v4 ^ [(NSString *)self->_cardSectionId hash];
  return v5 ^ [(NSString *)self->_resultId hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_18;
  }

  cardSection = [(_CPCardSectionFeedback *)self cardSection];
  cardSection2 = [equalCopy cardSection];
  if ((cardSection != 0) == (cardSection2 == 0))
  {
    goto LABEL_17;
  }

  cardSection3 = [(_CPCardSectionFeedback *)self cardSection];
  if (cardSection3)
  {
    v9 = cardSection3;
    cardSection4 = [(_CPCardSectionFeedback *)self cardSection];
    cardSection5 = [equalCopy cardSection];
    v12 = [cardSection4 isEqual:cardSection5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  cardSection = [(_CPCardSectionFeedback *)self cardSectionId];
  cardSection2 = [equalCopy cardSectionId];
  if ((cardSection != 0) == (cardSection2 == 0))
  {
    goto LABEL_17;
  }

  cardSectionId = [(_CPCardSectionFeedback *)self cardSectionId];
  if (cardSectionId)
  {
    v14 = cardSectionId;
    cardSectionId2 = [(_CPCardSectionFeedback *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v17 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  cardSection = [(_CPCardSectionFeedback *)self resultId];
  cardSection2 = [equalCopy resultId];
  if ((cardSection != 0) != (cardSection2 == 0))
  {
    resultId = [(_CPCardSectionFeedback *)self resultId];
    if (!resultId)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = resultId;
    resultId2 = [(_CPCardSectionFeedback *)self resultId];
    resultId3 = [equalCopy resultId];
    v22 = [resultId2 isEqual:resultId3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPCardSectionFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  cardSection = [(_CPCardSectionFeedback *)self cardSection];

  if (cardSection)
  {
    cardSection2 = [(_CPCardSectionFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  cardSectionId = [(_CPCardSectionFeedback *)self cardSectionId];

  if (cardSectionId)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  resultId = [(_CPCardSectionFeedback *)self resultId];

  v10 = toCopy;
  if (resultId)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (_CPCardSectionFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCardSectionFeedback;
  v2 = [(_CPCardSectionFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCardSectionFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPCardSectionFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v16.receiver = self;
  v16.super_class = _CPCardSectionFeedback;
  v5 = [(_CPCardSectionFeedback *)&v16 init];
  if (v5)
  {
    -[_CPCardSectionFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    cardSection = [facadeCopy cardSection];

    if (cardSection)
    {
      v7 = [_CPCardSectionForFeedback alloc];
      cardSection2 = [facadeCopy cardSection];
      v9 = [(_CPCardSectionForFeedback *)v7 initWithFacade:cardSection2];
      [(_CPCardSectionFeedback *)v5 setCardSection:v9];
    }

    cardSectionId = [facadeCopy cardSectionId];

    if (cardSectionId)
    {
      cardSectionId2 = [facadeCopy cardSectionId];
      [(_CPCardSectionFeedback *)v5 setCardSectionId:cardSectionId2];
    }

    resultId = [facadeCopy resultId];

    if (resultId)
    {
      resultId2 = [facadeCopy resultId];
      [(_CPCardSectionFeedback *)v5 setResultId:resultId2];
    }

    v14 = v5;
  }

  return v5;
}

@end