@interface DAResponse
- (DAResponse)initWithCoder:(id)a3;
- (DAResponse)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 serverId:(id)a5 status:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAResponse

- (DAResponse)initWithItemChangeType:(unint64_t)a3 changedItem:(id)a4 serverId:(id)a5 status:(int64_t)a6
{
  v10.receiver = self;
  v10.super_class = DAResponse;
  v7 = [(DAAction *)&v10 initWithItemChangeType:a3 changedItem:a4 serverId:a5];
  v8 = v7;
  if (v7)
  {
    [(DAResponse *)v7 setStatus:a6];
  }

  return v8;
}

- (DAResponse)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAResponse initWithCoder:];
  }

  v7.receiver = self;
  v7.super_class = DAResponse;
  v5 = [(DAAction *)&v7 initWithCoder:v4];
  if (v5)
  {
    -[DAResponse setStatus:](v5, "setStatus:", [v4 decodeIntForKey:@"DARStatus"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAResponse encodeWithCoder:];
  }

  v5.receiver = self;
  v5.super_class = DAResponse;
  [(DAAction *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:-[DAResponse status](self forKey:{"status"), @"DARStatus"}];
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