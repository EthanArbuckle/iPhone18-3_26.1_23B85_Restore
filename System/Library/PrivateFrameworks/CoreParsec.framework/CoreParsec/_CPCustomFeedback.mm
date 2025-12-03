@interface _CPCustomFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCustomFeedback)init;
- (_CPCustomFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPCustomFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      jsonFeedback = [(_CPCustomFeedback *)self jsonFeedback];
      jsonFeedback2 = [equalCopy jsonFeedback];
      v8 = jsonFeedback2;
      if ((jsonFeedback != 0) != (jsonFeedback2 == 0))
      {
        jsonFeedback3 = [(_CPCustomFeedback *)self jsonFeedback];
        if (!jsonFeedback3)
        {

LABEL_11:
          feedbackType = self->_feedbackType;
          v14 = feedbackType == [equalCopy feedbackType];
          goto LABEL_9;
        }

        v10 = jsonFeedback3;
        jsonFeedback4 = [(_CPCustomFeedback *)self jsonFeedback];
        jsonFeedback5 = [equalCopy jsonFeedback];
        v13 = [jsonFeedback4 isEqual:jsonFeedback5];

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

- (void)writeTo:(id)to
{
  to;
  if ([(_CPCustomFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  jsonFeedback = [(_CPCustomFeedback *)self jsonFeedback];

  if (jsonFeedback)
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

- (_CPCustomFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v10.receiver = self;
  v10.super_class = _CPCustomFeedback;
  v5 = [(_CPCustomFeedback *)&v10 init];
  if (v5)
  {
    -[_CPCustomFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    data = [facadeCopy data];
    v7 = [data copy];
    [(_CPCustomFeedback *)v5 setJsonFeedback:v7];

    -[_CPCustomFeedback setFeedbackType:](v5, "setFeedbackType:", [facadeCopy feedbackType]);
    v8 = v5;
  }

  return v5;
}

@end