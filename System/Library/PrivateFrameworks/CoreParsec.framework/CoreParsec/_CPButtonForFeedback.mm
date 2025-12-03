@interface _CPButtonForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPButtonForFeedback)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPButtonForFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    commandType = self->_commandType;
    if (commandType == [equalCopy commandType])
    {
      commandDetail = [(_CPButtonForFeedback *)self commandDetail];
      commandDetail2 = [equalCopy commandDetail];
      v8 = commandDetail2;
      if ((commandDetail != 0) != (commandDetail2 == 0))
      {
        commandDetail3 = [(_CPButtonForFeedback *)self commandDetail];
        if (!commandDetail3)
        {

LABEL_11:
          uniqueId = self->_uniqueId;
          v14 = uniqueId == [equalCopy uniqueId];
          goto LABEL_9;
        }

        v10 = commandDetail3;
        commandDetail4 = [(_CPButtonForFeedback *)self commandDetail];
        commandDetail5 = [equalCopy commandDetail];
        v13 = [commandDetail4 isEqual:commandDetail5];

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
  if ([(_CPButtonForFeedback *)self commandType])
  {
    commandType = self->_commandType;
    PBDataWriterWriteInt32Field();
  }

  commandDetail = [(_CPButtonForFeedback *)self commandDetail];

  if (commandDetail)
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

- (_CPButtonForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPButtonForFeedback *)self init];
  if (v5)
  {
    if ([facadeCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = facadeCopy;
      command = [v6 command];
      -[_CPButtonForFeedback setCommandType:](v5, "setCommandType:", [command _cpCommandType]);

      command2 = [v6 command];

      commandDetail = [command2 commandDetail];
      [(_CPButtonForFeedback *)v5 setCommandDetail:commandDetail];
    }

    -[_CPButtonForFeedback setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    v10 = v5;
  }

  return v5;
}

@end