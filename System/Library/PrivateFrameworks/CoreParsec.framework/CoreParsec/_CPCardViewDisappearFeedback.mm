@interface _CPCardViewDisappearFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCardViewDisappearFeedback)init;
- (_CPCardViewDisappearFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPCardViewDisappearFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      cardDisappearEvent = self->_cardDisappearEvent;
      if (cardDisappearEvent == [equalCopy cardDisappearEvent])
      {
        card = [(_CPCardViewDisappearFeedback *)self card];
        card2 = [equalCopy card];
        v9 = card2;
        if ((card != 0) != (card2 == 0))
        {
          card3 = [(_CPCardViewDisappearFeedback *)self card];
          if (!card3)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = card3;
          card4 = [(_CPCardViewDisappearFeedback *)self card];
          card5 = [equalCopy card];
          v14 = [card4 isEqual:card5];

          if (v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPCardViewDisappearFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPCardViewDisappearFeedback *)self cardDisappearEvent])
  {
    cardDisappearEvent = self->_cardDisappearEvent;
    PBDataWriterWriteInt32Field();
  }

  card = [(_CPCardViewDisappearFeedback *)self card];

  v7 = toCopy;
  if (card)
  {
    card2 = [(_CPCardViewDisappearFeedback *)self card];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (_CPCardViewDisappearFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCardViewDisappearFeedback;
  v2 = [(_CPCardViewDisappearFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCardViewDisappearFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPCardViewDisappearFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPCardViewDisappearFeedback;
  v5 = [(_CPCardViewDisappearFeedback *)&v12 init];
  if (v5)
  {
    -[_CPCardViewDisappearFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    -[_CPCardViewDisappearFeedback setCardDisappearEvent:](v5, "setCardDisappearEvent:", [facadeCopy cardDisappearEvent]);
    card = [facadeCopy card];

    if (card)
    {
      v7 = [_CPCardForFeedback alloc];
      card2 = [facadeCopy card];
      v9 = [(_CPCardForFeedback *)v7 initWithFacade:card2];
      [(_CPCardViewDisappearFeedback *)v5 setCard:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end