@interface _CPMapsCardSectionEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPMapsCardSectionEngagementFeedback)init;
- (_CPMapsCardSectionEngagementFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_21;
  }

  v6 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
  v7 = [v4 destination];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_20;
  }

  v8 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
    v11 = [v4 destination];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_21;
  }

  actionCardType = self->_actionCardType;
  if (actionCardType != [v4 actionCardType])
  {
    goto LABEL_21;
  }

  feedbackType = self->_feedbackType;
  if (feedbackType != [v4 feedbackType])
  {
    goto LABEL_21;
  }

  v6 = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];
  v7 = [v4 cardSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_20;
  }

  v16 = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];
  if (v16)
  {
    v17 = v16;
    v18 = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];
    v19 = [v4 cardSectionId];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v6 = [(_CPMapsCardSectionEngagementFeedback *)self resultId];
  v7 = [v4 resultId];
  if ((v6 != 0) != (v7 == 0))
  {
    v21 = [(_CPMapsCardSectionEngagementFeedback *)self resultId];
    if (!v21)
    {

LABEL_24:
      v26 = 1;
      goto LABEL_22;
    }

    v22 = v21;
    v23 = [(_CPMapsCardSectionEngagementFeedback *)self resultId];
    v24 = [v4 resultId];
    v25 = [v23 isEqual:v24];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
  if ([(_CPMapsCardSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPMapsCardSectionEngagementFeedback *)self destination];

  if (v5)
  {
    v6 = [(_CPMapsCardSectionEngagementFeedback *)self destination];
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

  v10 = [(_CPMapsCardSectionEngagementFeedback *)self cardSectionId];

  if (v10)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  v12 = [(_CPMapsCardSectionEngagementFeedback *)self resultId];

  v13 = v15;
  if (v12)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
    v13 = v15;
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

- (_CPMapsCardSectionEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _CPMapsCardSectionEngagementFeedback;
  v5 = [(_CPMapsCardSectionEngagementFeedback *)&v16 init];
  if (v5)
  {
    -[_CPMapsCardSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 destination];

    if (v6)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      v8 = [v4 destination];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:v8];
      [(_CPMapsCardSectionEngagementFeedback *)v5 setDestination:v9];
    }

    -[_CPMapsCardSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    -[_CPMapsCardSectionEngagementFeedback setActionCardType:](v5, "setActionCardType:", [v4 actionCardType]);
    -[_CPMapsCardSectionEngagementFeedback setFeedbackType:](v5, "setFeedbackType:", [v4 feedbackType]);
    v10 = [v4 cardSectionId];

    if (v10)
    {
      v11 = [v4 cardSectionId];
      [(_CPMapsCardSectionEngagementFeedback *)v5 setCardSectionId:v11];
    }

    v12 = [v4 resultId];

    if (v12)
    {
      v13 = [v4 resultId];
      [(_CPMapsCardSectionEngagementFeedback *)v5 setResultId:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end