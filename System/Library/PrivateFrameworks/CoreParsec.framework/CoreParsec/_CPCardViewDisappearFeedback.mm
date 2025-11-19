@interface _CPCardViewDisappearFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCardViewDisappearFeedback)init;
- (_CPCardViewDisappearFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPCardViewDisappearFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      cardDisappearEvent = self->_cardDisappearEvent;
      if (cardDisappearEvent == [v4 cardDisappearEvent])
      {
        v7 = [(_CPCardViewDisappearFeedback *)self card];
        v8 = [v4 card];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_CPCardViewDisappearFeedback *)self card];
          if (!v10)
          {

LABEL_12:
            v15 = 1;
            goto LABEL_10;
          }

          v11 = v10;
          v12 = [(_CPCardViewDisappearFeedback *)self card];
          v13 = [v4 card];
          v14 = [v12 isEqual:v13];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v6 = [(_CPCardViewDisappearFeedback *)self card];

  v7 = v9;
  if (v6)
  {
    v8 = [(_CPCardViewDisappearFeedback *)self card];
    PBDataWriterWriteSubmessage();

    v7 = v9;
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

- (_CPCardViewDisappearFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPCardViewDisappearFeedback;
  v5 = [(_CPCardViewDisappearFeedback *)&v12 init];
  if (v5)
  {
    -[_CPCardViewDisappearFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    -[_CPCardViewDisappearFeedback setCardDisappearEvent:](v5, "setCardDisappearEvent:", [v4 cardDisappearEvent]);
    v6 = [v4 card];

    if (v6)
    {
      v7 = [_CPCardForFeedback alloc];
      v8 = [v4 card];
      v9 = [(_CPCardForFeedback *)v7 initWithFacade:v8];
      [(_CPCardViewDisappearFeedback *)v5 setCard:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end