@interface DAMoveAction
- (DAMoveAction)initWithCoder:(id)a3;
- (DAMoveAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 sourceContainerId:(id)a5 sourceServerId:(id)a6 destinationContainerId:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAMoveAction

- (DAMoveAction)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 sourceContainerId:(id)a5 sourceServerId:(id)a6 destinationContainerId:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = DAMoveAction;
  v15 = [(DAAction *)&v18 initWithItemChangeType:a3 changedItem:a4 serverId:0];
  v16 = v15;
  if (v15)
  {
    [(DAMoveAction *)v15 setSourceContainerId:v12];
    [(DAMoveAction *)v16 setSourceServerId:v13];
    [(DAMoveAction *)v16 setDestinationContainerId:v14];
  }

  return v16;
}

- (DAMoveAction)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAMoveAction initWithCoder:];
  }

  v10.receiver = self;
  v10.super_class = DAMoveAction;
  v5 = [(DAAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAASourceContainerId"];
    [(DAMoveAction *)v5 setSourceContainerId:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAASourceServerId"];
    [(DAMoveAction *)v5 setSourceServerId:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAADestinationContainerId"];
    [(DAMoveAction *)v5 setDestinationContainerId:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAMoveAction encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = DAMoveAction;
  [(DAAction *)&v8 encodeWithCoder:v4];
  v5 = [(DAMoveAction *)self sourceContainerId];
  [v4 encodeObject:v5 forKey:@"DAASourceContainerId"];

  v6 = [(DAMoveAction *)self sourceServerId];
  [v4 encodeObject:v6 forKey:@"DAASourceServerId"];

  v7 = [(DAMoveAction *)self destinationContainerId];
  [v4 encodeObject:v7 forKey:@"DAADestinationContainerId"];
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