@interface _CPCustomFeedback
- (BOOL)isEqual:(id)a3;
- (_CPCustomFeedback)init;
- (_CPCustomFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPCustomFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPCustomFeedback *)self jsonFeedback];
      v7 = [v4 jsonFeedback];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPCustomFeedback *)self jsonFeedback];
        if (!v9)
        {

LABEL_11:
          feedbackType = self->_feedbackType;
          v14 = feedbackType == [v4 feedbackType];
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPCustomFeedback *)self jsonFeedback];
        v12 = [v4 jsonFeedback];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPCustomFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_CPCustomFeedback *)self jsonFeedback];

  if (v5)
  {
    jsonFeedback = self->_jsonFeedback;
    PBDataWriterWriteDataField();
  }

  if ([(_CPCustomFeedback *)self feedbackType])
  {
    feedbackType = self->_feedbackType;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPCustomFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPCustomFeedback;
  v2 = [(_CPCustomFeedback *)&v5 init];
  if (v2)
  {
    [(_CPCustomFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPCustomFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CPCustomFeedback;
  v5 = [(_CPCustomFeedback *)&v10 init];
  if (v5)
  {
    -[_CPCustomFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 data];
    v7 = [v6 copy];
    [(_CPCustomFeedback *)v5 setJsonFeedback:v7];

    -[_CPCustomFeedback setFeedbackType:](v5, "setFeedbackType:", [v4 feedbackType]);
    v8 = v5;
  }

  return v5;
}

@end