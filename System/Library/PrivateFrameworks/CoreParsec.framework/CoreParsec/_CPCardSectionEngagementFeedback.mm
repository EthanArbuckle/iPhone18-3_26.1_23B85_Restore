@interface _CPCardSectionEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCardSectionEngagementFeedback)init;
- (_CPCardSectionEngagementFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCardSectionEngagementFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPPunchoutForFeedback *)self->_destination hash]^ v3 ^ (2654435761 * self->_triggerEvent) ^ (2654435761 * self->_actionCardType);
  v5 = [(_CPCardSectionForFeedback *)self->_cardSection hash]^ (2654435761 * self->_destinationWasPARPunchout);
  v6 = v5 ^ [(NSString *)self->_parPunchoutActionTarget hash];
  v7 = v4 ^ v6 ^ [(NSString *)self->_cardSectionId hash];
  return v7 ^ [(NSString *)self->_resultId hash]^ (2654435761 * self->_actionTarget);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_31;
  }

  destination = [(_CPCardSectionEngagementFeedback *)self destination];
  destination2 = [equalCopy destination];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_30;
  }

  destination3 = [(_CPCardSectionEngagementFeedback *)self destination];
  if (destination3)
  {
    v9 = destination3;
    destination4 = [(_CPCardSectionEngagementFeedback *)self destination];
    destination5 = [equalCopy destination];
    v12 = [destination4 isEqual:destination5];

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_31;
  }

  actionCardType = self->_actionCardType;
  if (actionCardType != [equalCopy actionCardType])
  {
    goto LABEL_31;
  }

  destination = [(_CPCardSectionEngagementFeedback *)self cardSection];
  destination2 = [equalCopy cardSection];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_30;
  }

  cardSection = [(_CPCardSectionEngagementFeedback *)self cardSection];
  if (cardSection)
  {
    v16 = cardSection;
    cardSection2 = [(_CPCardSectionEngagementFeedback *)self cardSection];
    cardSection3 = [equalCopy cardSection];
    v19 = [cardSection2 isEqual:cardSection3];

    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  destinationWasPARPunchout = self->_destinationWasPARPunchout;
  if (destinationWasPARPunchout != [equalCopy destinationWasPARPunchout])
  {
    goto LABEL_31;
  }

  destination = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];
  destination2 = [equalCopy parPunchoutActionTarget];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_30;
  }

  parPunchoutActionTarget = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];
  if (parPunchoutActionTarget)
  {
    v22 = parPunchoutActionTarget;
    parPunchoutActionTarget2 = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];
    parPunchoutActionTarget3 = [equalCopy parPunchoutActionTarget];
    v25 = [parPunchoutActionTarget2 isEqual:parPunchoutActionTarget3];

    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  destination = [(_CPCardSectionEngagementFeedback *)self cardSectionId];
  destination2 = [equalCopy cardSectionId];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_30;
  }

  cardSectionId = [(_CPCardSectionEngagementFeedback *)self cardSectionId];
  if (cardSectionId)
  {
    v27 = cardSectionId;
    cardSectionId2 = [(_CPCardSectionEngagementFeedback *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v30 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  destination = [(_CPCardSectionEngagementFeedback *)self resultId];
  destination2 = [equalCopy resultId];
  if ((destination != 0) == (destination2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  resultId = [(_CPCardSectionEngagementFeedback *)self resultId];
  if (!resultId)
  {

LABEL_34:
    actionTarget = self->_actionTarget;
    v36 = actionTarget == [equalCopy actionTarget];
    goto LABEL_32;
  }

  v32 = resultId;
  resultId2 = [(_CPCardSectionEngagementFeedback *)self resultId];
  resultId3 = [equalCopy resultId];
  v35 = [resultId2 isEqual:resultId3];

  if (v35)
  {
    goto LABEL_34;
  }

LABEL_31:
  v36 = 0;
LABEL_32:

  return v36;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPCardSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  destination = [(_CPCardSectionEngagementFeedback *)self destination];

  if (destination)
  {
    destination2 = [(_CPCardSectionEngagementFeedback *)self destination];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCardSectionEngagementFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPCardSectionEngagementFeedback *)self actionCardType])
  {
    actionCardType = self->_actionCardType;
    PBDataWriterWriteInt32Field();
  }

  cardSection = [(_CPCardSectionEngagementFeedback *)self cardSection];

  if (cardSection)
  {
    cardSection2 = [(_CPCardSectionEngagementFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCardSectionEngagementFeedback *)self destinationWasPARPunchout])
  {
    destinationWasPARPunchout = self->_destinationWasPARPunchout;
    PBDataWriterWriteBOOLField();
  }

  parPunchoutActionTarget = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];

  if (parPunchoutActionTarget)
  {
    parPunchoutActionTarget = self->_parPunchoutActionTarget;
    PBDataWriterWriteStringField();
  }

  cardSectionId = [(_CPCardSectionEngagementFeedback *)self cardSectionId];

  if (cardSectionId)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  resultId = [(_CPCardSectionEngagementFeedback *)self resultId];

  if (resultId)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
  }

  if ([(_CPCardSectionEngagementFeedback *)self actionTarget])
  {
    actionTarget = self->_actionTarget;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPCardSectionEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCardSectionEngagementFeedback;
  v2 = [(_CPCardSectionEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCardSectionEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPCardSectionEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v20.receiver = self;
  v20.super_class = _CPCardSectionEngagementFeedback;
  v5 = [(_CPCardSectionEngagementFeedback *)&v20 init];
  if (v5)
  {
    -[_CPCardSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    destination = [facadeCopy destination];

    if (destination)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      destination2 = [facadeCopy destination];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:destination2];
      [(_CPCardSectionEngagementFeedback *)v5 setDestination:v9];
    }

    -[_CPCardSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    -[_CPCardSectionEngagementFeedback setActionCardType:](v5, "setActionCardType:", [facadeCopy actionCardType]);
    cardSection = [facadeCopy cardSection];

    if (cardSection)
    {
      v11 = [_CPCardSectionForFeedback alloc];
      cardSection2 = [facadeCopy cardSection];
      v13 = [(_CPCardSectionForFeedback *)v11 initWithFacade:cardSection2];
      [(_CPCardSectionEngagementFeedback *)v5 setCardSection:v13];
    }

    cardSectionId = [facadeCopy cardSectionId];

    if (cardSectionId)
    {
      cardSectionId2 = [facadeCopy cardSectionId];
      [(_CPCardSectionEngagementFeedback *)v5 setCardSectionId:cardSectionId2];
    }

    resultId = [facadeCopy resultId];

    if (resultId)
    {
      resultId2 = [facadeCopy resultId];
      [(_CPCardSectionEngagementFeedback *)v5 setResultId:resultId2];
    }

    -[_CPCardSectionEngagementFeedback setActionTarget:](v5, "setActionTarget:", [facadeCopy actionTarget]);
    v18 = v5;
  }

  return v5;
}

@end