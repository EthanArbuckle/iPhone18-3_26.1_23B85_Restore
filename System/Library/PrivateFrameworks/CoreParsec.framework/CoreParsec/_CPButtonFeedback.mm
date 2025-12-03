@interface _CPButtonFeedback
- (BOOL)isEqual:(id)equal;
- (_CPButtonFeedback)init;
- (void)writeTo:(id)to;
@end

@implementation _CPButtonFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  commandType = self->_commandType;
  if (commandType != [equalCopy commandType])
  {
    goto LABEL_11;
  }

  commandDetail = [(_CPButtonFeedback *)self commandDetail];
  commandDetail2 = [equalCopy commandDetail];
  v8 = commandDetail2;
  if ((commandDetail != 0) == (commandDetail2 == 0))
  {

    goto LABEL_11;
  }

  commandDetail3 = [(_CPButtonFeedback *)self commandDetail];
  if (commandDetail3)
  {
    v10 = commandDetail3;
    commandDetail4 = [(_CPButtonFeedback *)self commandDetail];
    commandDetail5 = [equalCopy commandDetail];
    v13 = [commandDetail4 isEqual:commandDetail5];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  uniqueId = self->_uniqueId;
  if (uniqueId != [equalCopy uniqueId])
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  timestamp = self->_timestamp;
  v16 = timestamp == [equalCopy timestamp];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPButtonFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  commandDetail = [(_CPButtonFeedback *)self commandDetail];

  if (commandDetail)
  {
    commandDetail = self->_commandDetail;
    PBDataWriterWriteStringField();
  }

  if ([(_CPButtonFeedback *)self uniqueId])
  {
    uniqueId = self->_uniqueId;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPButtonFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPButtonFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPButtonFeedback;
  v2 = [(_CPButtonFeedback *)&v5 init];
  if (v2)
  {
    [(_CPButtonFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end