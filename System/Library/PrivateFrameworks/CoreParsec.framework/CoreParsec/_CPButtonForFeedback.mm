@interface _CPButtonForFeedback
- (BOOL)isEqual:(id)a3;
- (_CPButtonForFeedback)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPButtonForFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    commandType = self->_commandType;
    if (commandType == [v4 commandType])
    {
      v6 = [(_CPButtonForFeedback *)self commandDetail];
      v7 = [v4 commandDetail];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPButtonForFeedback *)self commandDetail];
        if (!v9)
        {

LABEL_11:
          uniqueId = self->_uniqueId;
          v14 = uniqueId == [v4 uniqueId];
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPButtonForFeedback *)self commandDetail];
        v12 = [v4 commandDetail];
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
  if ([(_CPButtonForFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_CPButtonForFeedback *)self commandDetail];

  if (v5)
  {
    commandDetail = self->_commandDetail;
    PBDataWriterWriteStringField();
  }

  if ([(_CPButtonForFeedback *)self uniqueId])
  {
    uniqueId = self->_uniqueId;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPButtonForFeedback)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPButtonForFeedback *)self init];
  if (v5)
  {
    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = v4;
      v7 = [v6 command];
      -[_CPButtonForFeedback setCommandType:](v5, "setCommandType:", [v7 _cpCommandType]);

      v8 = [v6 command];

      v9 = [v8 commandDetail];
      [(_CPButtonForFeedback *)v5 setCommandDetail:v9];
    }

    -[_CPButtonForFeedback setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    v10 = v5;
  }

  return v5;
}

@end