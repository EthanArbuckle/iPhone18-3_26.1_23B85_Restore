@interface _CPActionItemForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPActionItemForFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPActionItemForFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_CPActionItemForFeedback *)self punchout];
    v6 = [v4 punchout];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_CPActionItemForFeedback *)self punchout];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_CPActionItemForFeedback *)self punchout];
      v11 = [v4 punchout];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_CPActionItemForFeedback *)self punchout];

  if (v4)
  {
    v5 = [(_CPActionItemForFeedback *)self punchout];
    PBDataWriterWriteSubmessage();
  }
}

- (_CPActionItemForFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _CPActionItemForFeedback;
  v5 = [(_CPActionItemForFeedback *)&v12 init];
  if (v5)
  {
    v6 = [v4 punchout];

    if (v6)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      v8 = [v4 punchout];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:v8];
      [(_CPActionItemForFeedback *)v5 setPunchout:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end