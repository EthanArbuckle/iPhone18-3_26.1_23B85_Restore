@interface _CPActionItemForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPActionItemForFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPActionItemForFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    punchout = [(_CPActionItemForFeedback *)self punchout];
    punchout2 = [equalCopy punchout];
    v7 = punchout2;
    if ((punchout != 0) != (punchout2 == 0))
    {
      punchout3 = [(_CPActionItemForFeedback *)self punchout];
      if (!punchout3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = punchout3;
      punchout4 = [(_CPActionItemForFeedback *)self punchout];
      punchout5 = [equalCopy punchout];
      v12 = [punchout4 isEqual:punchout5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  punchout = [(_CPActionItemForFeedback *)self punchout];

  if (punchout)
  {
    punchout2 = [(_CPActionItemForFeedback *)self punchout];
    PBDataWriterWriteSubmessage();
  }
}

- (_CPActionItemForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v12.receiver = self;
  v12.super_class = _CPActionItemForFeedback;
  v5 = [(_CPActionItemForFeedback *)&v12 init];
  if (v5)
  {
    punchout = [facadeCopy punchout];

    if (punchout)
    {
      v7 = [_CPPunchoutForFeedback alloc];
      punchout2 = [facadeCopy punchout];
      v9 = [(_CPPunchoutForFeedback *)v7 initWithFacade:punchout2];
      [(_CPActionItemForFeedback *)v5 setPunchout:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end