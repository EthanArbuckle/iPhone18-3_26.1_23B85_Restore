@interface _CPCardSectionEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCardSectionEngagementFeedback)init;
- (_CPCardSectionEngagementFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_31;
  }

  v6 = [(_CPCardSectionEngagementFeedback *)self destination];
  v7 = [v4 destination];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v8 = [(_CPCardSectionEngagementFeedback *)self destination];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPCardSectionEngagementFeedback *)self destination];
    v11 = [v4 destination];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_31;
  }

  actionCardType = self->_actionCardType;
  if (actionCardType != [v4 actionCardType])
  {
    goto LABEL_31;
  }

  v6 = [(_CPCardSectionEngagementFeedback *)self cardSection];
  v7 = [v4 cardSection];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v15 = [(_CPCardSectionEngagementFeedback *)self cardSection];
  if (v15)
  {
    v16 = v15;
    v17 = [(_CPCardSectionEngagementFeedback *)self cardSection];
    v18 = [v4 cardSection];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  destinationWasPARPunchout = self->_destinationWasPARPunchout;
  if (destinationWasPARPunchout != [v4 destinationWasPARPunchout])
  {
    goto LABEL_31;
  }

  v6 = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];
  v7 = [v4 parPunchoutActionTarget];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v21 = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];
  if (v21)
  {
    v22 = v21;
    v23 = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];
    v24 = [v4 parPunchoutActionTarget];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v6 = [(_CPCardSectionEngagementFeedback *)self cardSectionId];
  v7 = [v4 cardSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v26 = [(_CPCardSectionEngagementFeedback *)self cardSectionId];
  if (v26)
  {
    v27 = v26;
    v28 = [(_CPCardSectionEngagementFeedback *)self cardSectionId];
    v29 = [v4 cardSectionId];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v6 = [(_CPCardSectionEngagementFeedback *)self resultId];
  v7 = [v4 resultId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  v31 = [(_CPCardSectionEngagementFeedback *)self resultId];
  if (!v31)
  {

LABEL_34:
    actionTarget = self->_actionTarget;
    v36 = actionTarget == [v4 actionTarget];
    goto LABEL_32;
  }

  v32 = v31;
  v33 = [(_CPCardSectionEngagementFeedback *)self resultId];
  v34 = [v4 resultId];
  v35 = [v33 isEqual:v34];

  if (v35)
  {
    goto LABEL_34;
  }

LABEL_31:
  v36 = 0;
LABEL_32:

  return v36;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPCardSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPCardSectionEngagementFeedback *)self destination];

  if (v5)
  {
    v6 = [(_CPCardSectionEngagementFeedback *)self destination];
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

  v9 = [(_CPCardSectionEngagementFeedback *)self cardSection];

  if (v9)
  {
    v10 = [(_CPCardSectionEngagementFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCardSectionEngagementFeedback *)self destinationWasPARPunchout])
  {
    destinationWasPARPunchout = self->_destinationWasPARPunchout;
    PBDataWriterWriteBOOLField();
  }

  v12 = [(_CPCardSectionEngagementFeedback *)self parPunchoutActionTarget];

  if (v12)
  {
    parPunchoutActionTarget = self->_parPunchoutActionTarget;
    PBDataWriterWriteStringField();
  }

  v14 = [(_CPCardSectionEngagementFeedback *)self cardSectionId];

  if (v14)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  v16 = [(_CPCardSectionEngagementFeedback *)self resultId];

  if (v16)
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

- (_CPCardSectionEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _CPCardSectionEngagementFeedback;
  v5 = [(_CPCardSectionEngagementFeedback *)&v20 init];
  if (v5)
  {
    -[_CPCardSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 destination];

    if (v6)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      v8 = [v4 destination];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:v8];
      [(_CPCardSectionEngagementFeedback *)v5 setDestination:v9];
    }

    -[_CPCardSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    -[_CPCardSectionEngagementFeedback setActionCardType:](v5, "setActionCardType:", [v4 actionCardType]);
    v10 = [v4 cardSection];

    if (v10)
    {
      v11 = [_CPCardSectionForFeedback alloc];
      v12 = [v4 cardSection];
      v13 = [(_CPCardSectionForFeedback *)v11 initWithFacade:v12];
      [(_CPCardSectionEngagementFeedback *)v5 setCardSection:v13];
    }

    v14 = [v4 cardSectionId];

    if (v14)
    {
      v15 = [v4 cardSectionId];
      [(_CPCardSectionEngagementFeedback *)v5 setCardSectionId:v15];
    }

    v16 = [v4 resultId];

    if (v16)
    {
      v17 = [v4 resultId];
      [(_CPCardSectionEngagementFeedback *)v5 setResultId:v17];
    }

    -[_CPCardSectionEngagementFeedback setActionTarget:](v5, "setActionTarget:", [v4 actionTarget]);
    v18 = v5;
  }

  return v5;
}

@end