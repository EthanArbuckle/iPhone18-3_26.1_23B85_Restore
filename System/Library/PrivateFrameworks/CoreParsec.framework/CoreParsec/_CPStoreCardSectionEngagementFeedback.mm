@interface _CPStoreCardSectionEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPStoreCardSectionEngagementFeedback)init;
- (_CPStoreCardSectionEngagementFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPStoreCardSectionEngagementFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPPunchoutForFeedback *)self->_destination hash]^ v3 ^ (2654435761 * self->_triggerEvent) ^ (2654435761 * self->_actionCardType);
  v5 = [(_CPCardSectionForFeedback *)self->_cardSection hash]^ (2654435761 * self->_productPageResult);
  v6 = v4 ^ v5 ^ [(NSString *)self->_cardSectionId hash];
  return v6 ^ [(NSString *)self->_resultId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_26;
  }

  destination = [(_CPStoreCardSectionEngagementFeedback *)self destination];
  destination2 = [equalCopy destination];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_25;
  }

  destination3 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
  if (destination3)
  {
    v9 = destination3;
    destination4 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
    destination5 = [equalCopy destination];
    v12 = [destination4 isEqual:destination5];

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_26;
  }

  actionCardType = self->_actionCardType;
  if (actionCardType != [equalCopy actionCardType])
  {
    goto LABEL_26;
  }

  destination = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
  destination2 = [equalCopy cardSection];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_25;
  }

  cardSection = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
  if (cardSection)
  {
    v16 = cardSection;
    cardSection2 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
    cardSection3 = [equalCopy cardSection];
    v19 = [cardSection2 isEqual:cardSection3];

    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  productPageResult = self->_productPageResult;
  if (productPageResult != [equalCopy productPageResult])
  {
    goto LABEL_26;
  }

  destination = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];
  destination2 = [equalCopy cardSectionId];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_25;
  }

  cardSectionId = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];
  if (cardSectionId)
  {
    v22 = cardSectionId;
    cardSectionId2 = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v25 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v25)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  destination = [(_CPStoreCardSectionEngagementFeedback *)self resultId];
  destination2 = [equalCopy resultId];
  if ((destination != 0) == (destination2 == 0))
  {
LABEL_25:

    goto LABEL_26;
  }

  resultId = [(_CPStoreCardSectionEngagementFeedback *)self resultId];
  if (!resultId)
  {

LABEL_29:
    v31 = 1;
    goto LABEL_27;
  }

  v27 = resultId;
  resultId2 = [(_CPStoreCardSectionEngagementFeedback *)self resultId];
  resultId3 = [equalCopy resultId];
  v30 = [resultId2 isEqual:resultId3];

  if (v30)
  {
    goto LABEL_29;
  }

LABEL_26:
  v31 = 0;
LABEL_27:

  return v31;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPStoreCardSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  destination = [(_CPStoreCardSectionEngagementFeedback *)self destination];

  if (destination)
  {
    destination2 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPStoreCardSectionEngagementFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStoreCardSectionEngagementFeedback *)self actionCardType])
  {
    actionCardType = self->_actionCardType;
    PBDataWriterWriteInt32Field();
  }

  cardSection = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];

  if (cardSection)
  {
    cardSection2 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPStoreCardSectionEngagementFeedback *)self productPageResult])
  {
    productPageResult = self->_productPageResult;
    PBDataWriterWriteInt32Field();
  }

  cardSectionId = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];

  if (cardSectionId)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  resultId = [(_CPStoreCardSectionEngagementFeedback *)self resultId];

  v15 = toCopy;
  if (resultId)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
    v15 = toCopy;
  }
}

- (_CPStoreCardSectionEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPStoreCardSectionEngagementFeedback;
  v2 = [(_CPStoreCardSectionEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPStoreCardSectionEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPStoreCardSectionEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v20.receiver = self;
  v20.super_class = _CPStoreCardSectionEngagementFeedback;
  v5 = [(_CPStoreCardSectionEngagementFeedback *)&v20 init];
  if (v5)
  {
    -[_CPStoreCardSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    destination = [facadeCopy destination];

    if (destination)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      destination2 = [facadeCopy destination];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:destination2];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setDestination:v9];
    }

    -[_CPStoreCardSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    -[_CPStoreCardSectionEngagementFeedback setActionCardType:](v5, "setActionCardType:", [facadeCopy actionCardType]);
    cardSection = [facadeCopy cardSection];

    if (cardSection)
    {
      v11 = [_CPCardSectionForFeedback alloc];
      cardSection2 = [facadeCopy cardSection];
      v13 = [(_CPCardSectionForFeedback *)v11 initWithFacade:cardSection2];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setCardSection:v13];
    }

    -[_CPStoreCardSectionEngagementFeedback setProductPageResult:](v5, "setProductPageResult:", [facadeCopy productPageResult]);
    cardSectionId = [facadeCopy cardSectionId];

    if (cardSectionId)
    {
      cardSectionId2 = [facadeCopy cardSectionId];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setCardSectionId:cardSectionId2];
    }

    resultId = [facadeCopy resultId];

    if (resultId)
    {
      resultId2 = [facadeCopy resultId];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setResultId:resultId2];
    }

    v18 = v5;
  }

  return v5;
}

@end