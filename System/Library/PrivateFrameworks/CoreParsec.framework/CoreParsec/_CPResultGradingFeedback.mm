@interface _CPResultGradingFeedback
- (BOOL)isEqual:(id)a3;
- (_CPResultGradingFeedback)init;
- (_CPResultGradingFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPResultGradingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPSearchResultForFeedback *)self->_result hash]^ v3;
  v5 = 2654435761 * self->_grade;
  return v4 ^ v5 ^ [(NSString *)self->_textFeedback hash];
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

  v6 = [(_CPResultGradingFeedback *)self result];
  v7 = [v4 result];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_13;
  }

  v8 = [(_CPResultGradingFeedback *)self result];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPResultGradingFeedback *)self result];
    v11 = [v4 result];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  grade = self->_grade;
  if (grade != [v4 grade])
  {
    goto LABEL_14;
  }

  v6 = [(_CPResultGradingFeedback *)self textFeedback];
  v7 = [v4 textFeedback];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = [(_CPResultGradingFeedback *)self textFeedback];
  if (!v14)
  {

LABEL_17:
    v19 = 1;
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [(_CPResultGradingFeedback *)self textFeedback];
  v17 = [v4 textFeedback];
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
  if ([(_CPResultGradingFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPResultGradingFeedback *)self result];

  if (v5)
  {
    v6 = [(_CPResultGradingFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPResultGradingFeedback *)self grade])
  {
    grade = self->_grade;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_CPResultGradingFeedback *)self textFeedback];

  v9 = v11;
  if (v8)
  {
    textFeedback = self->_textFeedback;
    PBDataWriterWriteStringField();
    v9 = v11;
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

- (_CPResultGradingFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _CPResultGradingFeedback;
  v5 = [(_CPResultGradingFeedback *)&v14 init];
  if (v5)
  {
    -[_CPResultGradingFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 result];

    if (v6)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      v8 = [v4 result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:v8];
      [(_CPResultGradingFeedback *)v5 setResult:v9];
    }

    -[_CPResultGradingFeedback setGrade:](v5, "setGrade:", [v4 grade]);
    v10 = [v4 textFeedback];

    if (v10)
    {
      v11 = [v4 textFeedback];
      [(_CPResultGradingFeedback *)v5 setTextFeedback:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end