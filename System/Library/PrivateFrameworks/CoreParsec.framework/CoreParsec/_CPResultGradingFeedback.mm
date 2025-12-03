@interface _CPResultGradingFeedback
- (BOOL)isEqual:(id)equal;
- (_CPResultGradingFeedback)init;
- (_CPResultGradingFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPResultGradingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPSearchResultForFeedback *)self->_result hash]^ v3;
  v5 = 2654435761 * self->_grade;
  return v4 ^ v5 ^ [(NSString *)self->_textFeedback hash];
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

  result = [(_CPResultGradingFeedback *)self result];
  result2 = [equalCopy result];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_13;
  }

  result3 = [(_CPResultGradingFeedback *)self result];
  if (result3)
  {
    v9 = result3;
    result4 = [(_CPResultGradingFeedback *)self result];
    result5 = [equalCopy result];
    v12 = [result4 isEqual:result5];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  grade = self->_grade;
  if (grade != [equalCopy grade])
  {
    goto LABEL_14;
  }

  result = [(_CPResultGradingFeedback *)self textFeedback];
  result2 = [equalCopy textFeedback];
  if ((result != 0) == (result2 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  textFeedback = [(_CPResultGradingFeedback *)self textFeedback];
  if (!textFeedback)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = textFeedback;
  textFeedback2 = [(_CPResultGradingFeedback *)self textFeedback];
  textFeedback3 = [equalCopy textFeedback];
  v18 = [textFeedback2 isEqual:textFeedback3];

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
  if ([(_CPResultGradingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  result = [(_CPResultGradingFeedback *)self result];

  if (result)
  {
    result2 = [(_CPResultGradingFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPResultGradingFeedback *)self grade])
  {
    grade = self->_grade;
    PBDataWriterWriteInt32Field();
  }

  textFeedback = [(_CPResultGradingFeedback *)self textFeedback];

  v9 = toCopy;
  if (textFeedback)
  {
    textFeedback = self->_textFeedback;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (_CPResultGradingFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPResultGradingFeedback;
  v2 = [(_CPResultGradingFeedback *)&v5 init];
  if (v2)
  {
    [(_CPResultGradingFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPResultGradingFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v14.receiver = self;
  v14.super_class = _CPResultGradingFeedback;
  v5 = [(_CPResultGradingFeedback *)&v14 init];
  if (v5)
  {
    -[_CPResultGradingFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    result = [facadeCopy result];

    if (result)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      result2 = [facadeCopy result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:result2];
      [(_CPResultGradingFeedback *)v5 setResult:v9];
    }

    -[_CPResultGradingFeedback setGrade:](v5, "setGrade:", [facadeCopy grade]);
    textFeedback = [facadeCopy textFeedback];

    if (textFeedback)
    {
      textFeedback2 = [facadeCopy textFeedback];
      [(_CPResultGradingFeedback *)v5 setTextFeedback:textFeedback2];
    }

    v12 = v5;
  }

  return v5;
}

@end