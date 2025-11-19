@interface _CPCardViewAppearFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCardViewAppearFeedback)init;
- (_CPCardViewAppearFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPCardViewAppearFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPCardForFeedback *)self->_card hash]^ (2654435761 * self->_level) ^ v3;
  return v4 ^ [(NSString *)self->_fbr hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_14;
  }

  v6 = [(_CPCardViewAppearFeedback *)self card];
  v7 = [v4 card];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_13;
  }

  v8 = [(_CPCardViewAppearFeedback *)self card];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPCardViewAppearFeedback *)self card];
    v11 = [v4 card];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  level = self->_level;
  if (level != [v4 level])
  {
    goto LABEL_14;
  }

  v6 = [(_CPCardViewAppearFeedback *)self fbr];
  v7 = [v4 fbr];
  if ((v6 != 0) == (v7 == 0))
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
  v17 = [v4 fbr];
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

- (void)writeTo:(id)a3
{
  v11 = a3;
  if ([(_CPCardViewAppearFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPCardViewAppearFeedback *)self card];

  if (v5)
  {
    v6 = [(_CPCardViewAppearFeedback *)self card];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPCardViewAppearFeedback *)self level])
  {
    level = self->_level;
    PBDataWriterWriteUint32Field();
  }

  v8 = [(_CPCardViewAppearFeedback *)self fbr];

  v9 = v11;
  if (v8)
  {
    fbr = self->_fbr;
    PBDataWriterWriteStringField();
    v9 = v11;
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

- (_CPCardViewAppearFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _CPCardViewAppearFeedback;
  v5 = [(_CPCardViewAppearFeedback *)&v14 init];
  if (v5)
  {
    -[_CPCardViewAppearFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 card];

    if (v6)
    {
      v7 = [_CPCardForFeedback alloc];
      v8 = [v4 card];
      v9 = [(_CPCardForFeedback *)v7 initWithFacade:v8];
      [(_CPCardViewAppearFeedback *)v5 setCard:v9];
    }

    -[_CPCardViewAppearFeedback setLevel:](v5, "setLevel:", [v4 level]);
    v10 = [v4 fbr];

    if (v10)
    {
      v11 = [v4 fbr];
      [(_CPCardViewAppearFeedback *)v5 setFbr:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end