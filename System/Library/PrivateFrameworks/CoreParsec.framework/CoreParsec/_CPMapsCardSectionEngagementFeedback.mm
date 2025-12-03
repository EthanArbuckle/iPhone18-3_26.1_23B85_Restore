@interface _CPMapsCardSectionEngagementFeedback
- (BOOL)isEqual:(id)equal;
- (_CPMapsCardSectionEngagementFeedback)init;
- (_CPMapsCardSectionEngagementFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPMapsCardSectionEngagementFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPPunchoutForFeedback *)self->_destination hash]^ v3 ^ (2654435761 * self->_triggerEvent) ^ (2654435761 * self->_actionCardType);
  v5 = 2654435761 * self->_feedbackType;
  v6 = v5 ^ [(NSString *)self->_cardSectionId hash];
  return v4 ^ v6 ^ [(NSString *)self->_resultId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_21;
  }

  destination = [(_CPMapsCardSectionEngagementFeedback *)self destination];
  destination2 = [equalCopy destination];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_20;
  }

  destination3 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
  if (destination3)
  {
    v9 = destination3;
    destination4 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
    destination5 = [equalCopy destination];
    v12 = [destination4 isEqual:destination5];

    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_21;
  }

  actionCardType = self->_actionCardType;
  if (actionCardType != [equalCopy actionCardType])
  {
    goto LABEL_21;
  }

  feedbackType = self->_feedbackType;
  if (feedbackType != [equalCopy feedbackType])
  {
    goto LABEL_21;
  }

  destination = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];
  destination2 = [equalCopy cardSectionId];
  if ((destination != 0) == (destination2 == 0))
  {
    goto LABEL_20;
  }

  cardSectionId = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];
  if (cardSectionId)
  {
    v17 = cardSectionId;
    cardSectionId2 = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];
    cardSectionId3 = [equalCopy cardSectionId];
    v20 = [cardSectionId2 isEqual:cardSectionId3];

    if (!v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  destination = [(_CPMapsCardSectionEngagementFeedback *)self resultId];
  destination2 = [equalCopy resultId];
  if ((destination != 0) != (destination2 == 0))
  {
    resultId = [(_CPMapsCardSectionEngagementFeedback *)self resultId];
    if (!resultId)
    {

LABEL_24:
      v26 = 1;
      goto LABEL_22;
    }

    v22 = resultId;
    resultId2 = [(_CPMapsCardSectionEngagementFeedback *)self resultId];
    resultId3 = [equalCopy resultId];
    v25 = [resultId2 isEqual:resultId3];

    if (v25)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v26 = 0;
LABEL_22:

  return v26;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPMapsCardSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  destination = [(_CPMapsCardSectionEngagementFeedback *)self destination];

  if (destination)
  {
    destination2 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPMapsCardSectionEngagementFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMapsCardSectionEngagementFeedback *)self actionCardType])
  {
    actionCardType = self->_actionCardType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMapsCardSectionEngagementFeedback *)self feedbackType])
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
  }

  cardSectionId = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];

  if (cardSectionId)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  resultId = [(_CPMapsCardSectionEngagementFeedback *)self resultId];

  v13 = toCopy;
  if (resultId)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
    v13 = toCopy;
  }
}

- (_CPMapsCardSectionEngagementFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPMapsCardSectionEngagementFeedback;
  v2 = [(_CPMapsCardSectionEngagementFeedback *)&v5 init];
  if (v2)
  {
    [(_CPMapsCardSectionEngagementFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPMapsCardSectionEngagementFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v16.receiver = self;
  v16.super_class = _CPMapsCardSectionEngagementFeedback;
  v5 = [(_CPMapsCardSectionEngagementFeedback *)&v16 init];
  if (v5)
  {
    -[_CPMapsCardSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    destination = [facadeCopy destination];

    if (destination)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      destination2 = [facadeCopy destination];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:destination2];
      [(_CPMapsCardSectionEngagementFeedback *)v5 setDestination:v9];
    }

    -[_CPMapsCardSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    -[_CPMapsCardSectionEngagementFeedback setActionCardType:](v5, "setActionCardType:", [facadeCopy actionCardType]);
    -[_CPMapsCardSectionEngagementFeedback setFeedbackType:](v5, "setFeedbackType:", [facadeCopy feedbackType]);
    cardSectionId = [facadeCopy cardSectionId];

    if (cardSectionId)
    {
      cardSectionId2 = [facadeCopy cardSectionId];
      [(_CPMapsCardSectionEngagementFeedback *)v5 setCardSectionId:cardSectionId2];
    }

    resultId = [facadeCopy resultId];

    if (resultId)
    {
      resultId2 = [facadeCopy resultId];
      [(_CPMapsCardSectionEngagementFeedback *)v5 setResultId:resultId2];
    }

    v14 = v5;
  }

  return v5;
}

@end