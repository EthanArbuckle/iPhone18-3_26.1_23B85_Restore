@interface DAMoveAction
- (DAMoveAction)initWithCoder:(id)coder;
- (DAMoveAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item sourceContainerId:(id)id sourceServerId:(id)serverId destinationContainerId:(id)containerId;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAMoveAction

- (DAMoveAction)initWithItemChangeType:(unint64_t)type changedItem:(id)item sourceContainerId:(id)id sourceServerId:(id)serverId destinationContainerId:(id)containerId
{
  idCopy = id;
  serverIdCopy = serverId;
  containerIdCopy = containerId;
  v18.receiver = self;
  v18.super_class = DAMoveAction;
  v15 = [(DAAction *)&v18 initWithItemChangeType:type changedItem:item serverId:0];
  v16 = v15;
  if (v15)
  {
    [(DAMoveAction *)v15 setSourceContainerId:idCopy];
    [(DAMoveAction *)v16 setSourceServerId:serverIdCopy];
    [(DAMoveAction *)v16 setDestinationContainerId:containerIdCopy];
  }

  return v16;
}

- (DAMoveAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAMoveAction initWithCoder:];
  }

  v10.receiver = self;
  v10.super_class = DAMoveAction;
  v5 = [(DAAction *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAASourceContainerId"];
    [(DAMoveAction *)v5 setSourceContainerId:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAASourceServerId"];
    [(DAMoveAction *)v5 setSourceServerId:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAADestinationContainerId"];
    [(DAMoveAction *)v5 setDestinationContainerId:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAMoveAction encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = DAMoveAction;
  [(DAAction *)&v8 encodeWithCoder:coderCopy];
  sourceContainerId = [(DAMoveAction *)self sourceContainerId];
  [coderCopy encodeObject:sourceContainerId forKey:@"DAASourceContainerId"];

  sourceServerId = [(DAMoveAction *)self sourceServerId];
  [coderCopy encodeObject:sourceServerId forKey:@"DAASourceServerId"];

  destinationContainerId = [(DAMoveAction *)self destinationContainerId];
  [coderCopy encodeObject:destinationContainerId forKey:@"DAADestinationContainerId"];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end