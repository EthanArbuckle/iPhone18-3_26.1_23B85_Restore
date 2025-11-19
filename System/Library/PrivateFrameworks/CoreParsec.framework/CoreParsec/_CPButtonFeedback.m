@interface _CPButtonFeedback
- (BOOL)isEqual:(id)a3;
- (_CPButtonFeedback)init;
- (void)writeTo:(id)a3;
@end

@implementation _CPButtonFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  commandType = self->_commandType;
  if (commandType != [v4 commandType])
  {
    goto LABEL_11;
  }

  v6 = [(_CPButtonFeedback *)self commandDetail];
  v7 = [v4 commandDetail];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

    goto LABEL_11;
  }

  v9 = [(_CPButtonFeedback *)self commandDetail];
  if (v9)
  {
    v10 = v9;
    v11 = [(_CPButtonFeedback *)self commandDetail];
    v12 = [v4 commandDetail];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  uniqueId = self->_uniqueId;
  if (uniqueId != [v4 uniqueId])
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  timestamp = self->_timestamp;
  v16 = timestamp == [v4 timestamp];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPButtonFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_CPButtonFeedback *)self commandDetail];

  if (v5)
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