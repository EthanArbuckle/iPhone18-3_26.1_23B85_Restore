@interface _CPStoreCardSectionEngagementFeedback
- (BOOL)isEqual:(id)a3;
- (_CPStoreCardSectionEngagementFeedback)init;
- (_CPStoreCardSectionEngagementFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_26;
  }

  v6 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
  v7 = [v4 destination];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_25;
  }

  v8 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
    v11 = [v4 destination];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_26;
  }

  actionCardType = self->_actionCardType;
  if (actionCardType != [v4 actionCardType])
  {
    goto LABEL_26;
  }

  v6 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
  v7 = [v4 cardSection];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_25;
  }

  v15 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
  if (v15)
  {
    v16 = v15;
    v17 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
    v18 = [v4 cardSection];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  productPageResult = self->_productPageResult;
  if (productPageResult != [v4 productPageResult])
  {
    goto LABEL_26;
  }

  v6 = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];
  v7 = [v4 cardSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_25;
  }

  v21 = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];
  if (v21)
  {
    v22 = v21;
    v23 = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];
    v24 = [v4 cardSectionId];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v6 = [(_CPStoreCardSectionEngagementFeedback *)self resultId];
  v7 = [v4 resultId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_25:

    goto LABEL_26;
  }

  v26 = [(_CPStoreCardSectionEngagementFeedback *)self resultId];
  if (!v26)
  {

LABEL_29:
    v31 = 1;
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [(_CPStoreCardSectionEngagementFeedback *)self resultId];
  v29 = [v4 resultId];
  v30 = [v28 isEqual:v29];

  if (v30)
  {
    goto LABEL_29;
  }

LABEL_26:
  v31 = 0;
LABEL_27:

  return v31;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  if ([(_CPStoreCardSectionEngagementFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPStoreCardSectionEngagementFeedback *)self destination];

  if (v5)
  {
    v6 = [(_CPStoreCardSectionEngagementFeedback *)self destination];
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

  v9 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];

  if (v9)
  {
    v10 = [(_CPStoreCardSectionEngagementFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPStoreCardSectionEngagementFeedback *)self productPageResult])
  {
    productPageResult = self->_productPageResult;
    PBDataWriterWriteInt32Field();
  }

  v12 = [(_CPStoreCardSectionEngagementFeedback *)self cardSectionId];

  if (v12)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  v14 = [(_CPStoreCardSectionEngagementFeedback *)self resultId];

  v15 = v17;
  if (v14)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
    v15 = v17;
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

- (_CPStoreCardSectionEngagementFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _CPStoreCardSectionEngagementFeedback;
  v5 = [(_CPStoreCardSectionEngagementFeedback *)&v20 init];
  if (v5)
  {
    -[_CPStoreCardSectionEngagementFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 destination];

    if (v6)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      v8 = [v4 destination];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:v8];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setDestination:v9];
    }

    -[_CPStoreCardSectionEngagementFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    -[_CPStoreCardSectionEngagementFeedback setActionCardType:](v5, "setActionCardType:", [v4 actionCardType]);
    v10 = [v4 cardSection];

    if (v10)
    {
      v11 = [_CPCardSectionForFeedback alloc];
      v12 = [v4 cardSection];
      v13 = [(_CPCardSectionForFeedback *)v11 initWithFacade:v12];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setCardSection:v13];
    }

    -[_CPStoreCardSectionEngagementFeedback setProductPageResult:](v5, "setProductPageResult:", [v4 productPageResult]);
    v14 = [v4 cardSectionId];

    if (v14)
    {
      v15 = [v4 cardSectionId];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setCardSectionId:v15];
    }

    v16 = [v4 resultId];

    if (v16)
    {
      v17 = [v4 resultId];
      [(_CPStoreCardSectionEngagementFeedback *)v5 setResultId:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end