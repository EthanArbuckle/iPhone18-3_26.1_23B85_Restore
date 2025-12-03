@interface _CPCardViewAppearFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCardViewAppearFeedback)init;
- (_CPCardViewAppearFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCardViewAppearFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPCardForFeedback *)self->_card hash]^ (2654435761 * self->_level) ^ v3;
  return v4 ^ [(NSString *)self->_fbr hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_14;
  }

  card = [(_CPCardViewAppearFeedback *)self card];
  card2 = [equalCopy card];
  if ((card != 0) == (card2 == 0))
  {
    goto LABEL_13;
  }

  card3 = [(_CPCardViewAppearFeedback *)self card];
  if (card3)
  {
    v9 = card3;
    card4 = [(_CPCardViewAppearFeedback *)self card];
    card5 = [equalCopy card];
    v12 = [card4 isEqual:card5];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  level = self->_level;
  if (level != [equalCopy level])
  {
    goto LABEL_14;
  }

  card = [(_CPCardViewAppearFeedback *)self fbr];
  card2 = [equalCopy fbr];
  if ((card != 0) == (card2 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = [(_CPCardViewAppearFeedback *)self fbr];
  if (!v14)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [(_CPCardViewAppearFeedback *)self fbr];
  v17 = [equalCopy fbr];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPCardViewAppearFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  card = [(_CPCardViewAppearFeedback *)self card];

  if (card)
  {
    card2 = [(_CPCardViewAppearFeedback *)self card];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCardViewAppearFeedback *)self level])
  {
    level = self->_level;
    PBDataWriterWriteUint32Field();
  }

  v8 = [(_CPCardViewAppearFeedback *)self fbr];

  v9 = toCopy;
  if (v8)
  {
    fbr = self->_fbr;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (_CPCardViewAppearFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCardViewAppearFeedback;
  v2 = [(_CPCardViewAppearFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCardViewAppearFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPCardViewAppearFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v14.receiver = self;
  v14.super_class = _CPCardViewAppearFeedback;
  v5 = [(_CPCardViewAppearFeedback *)&v14 init];
  if (v5)
  {
    -[_CPCardViewAppearFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    card = [facadeCopy card];

    if (card)
    {
      v7 = [_CPCardForFeedback alloc];
      card2 = [facadeCopy card];
      v9 = [(_CPCardForFeedback *)v7 initWithFacade:card2];
      [(_CPCardViewAppearFeedback *)v5 setCard:v9];
    }

    -[_CPCardViewAppearFeedback setLevel:](v5, "setLevel:", [facadeCopy level]);
    v10 = [facadeCopy fbr];

    if (v10)
    {
      v11 = [facadeCopy fbr];
      [(_CPCardViewAppearFeedback *)v5 setFbr:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end