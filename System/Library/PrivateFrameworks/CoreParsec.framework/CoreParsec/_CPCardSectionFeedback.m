@interface _CPCardSectionFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCardSectionFeedback)init;
- (_CPCardSectionFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPCardSectionFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPCardSectionForFeedback *)self->_cardSection hash];
  v5 = v4 ^ [(NSString *)self->_cardSectionId hash];
  return v5 ^ [(NSString *)self->_resultId hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_18;
  }

  v6 = [(_CPCardSectionFeedback *)self cardSection];
  v7 = [v4 cardSection];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_CPCardSectionFeedback *)self cardSection];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPCardSectionFeedback *)self cardSection];
    v11 = [v4 cardSection];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_CPCardSectionFeedback *)self cardSectionId];
  v7 = [v4 cardSectionId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_CPCardSectionFeedback *)self cardSectionId];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPCardSectionFeedback *)self cardSectionId];
    v16 = [v4 cardSectionId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_CPCardSectionFeedback *)self resultId];
  v7 = [v4 resultId];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(_CPCardSectionFeedback *)self resultId];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(_CPCardSectionFeedback *)self resultId];
    v21 = [v4 resultId];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_CPCardSectionFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPCardSectionFeedback *)self cardSection];

  if (v5)
  {
    v6 = [(_CPCardSectionFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_CPCardSectionFeedback *)self cardSectionId];

  if (v7)
  {
    cardSectionId = self->_cardSectionId;
    PBDataWriterWriteStringField();
  }

  v9 = [(_CPCardSectionFeedback *)self resultId];

  v10 = v12;
  if (v9)
  {
    resultId = self->_resultId;
    PBDataWriterWriteStringField();
    v10 = v12;
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

- (_CPCardSectionFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _CPCardSectionFeedback;
  v5 = [(_CPCardSectionFeedback *)&v16 init];
  if (v5)
  {
    -[_CPCardSectionFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 cardSection];

    if (v6)
    {
      v7 = [_CPCardSectionForFeedback alloc];
      v8 = [v4 cardSection];
      v9 = [(_CPCardSectionForFeedback *)v7 initWithFacade:v8];
      [(_CPCardSectionFeedback *)v5 setCardSection:v9];
    }

    v10 = [v4 cardSectionId];

    if (v10)
    {
      v11 = [v4 cardSectionId];
      [(_CPCardSectionFeedback *)v5 setCardSectionId:v11];
    }

    v12 = [v4 resultId];

    if (v12)
    {
      v13 = [v4 resultId];
      [(_CPCardSectionFeedback *)v5 setResultId:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end