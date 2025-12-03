@interface DAResponse
- (DAResponse)initWithCoder:(id)coder;
- (DAResponse)initWithItemChangeType:(unint64_t)type changedItem:(id)item serverId:(id)id status:(int64_t)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAResponse

- (DAResponse)initWithItemChangeType:(unint64_t)type changedItem:(id)item serverId:(id)id status:(int64_t)status
{
  v10.receiver = self;
  v10.super_class = DAResponse;
  v7 = [(DAAction *)&v10 initWithItemChangeType:type changedItem:item serverId:id];
  v8 = v7;
  if (v7)
  {
    [(DAResponse *)v7 setStatus:status];
  }

  return v8;
}

- (DAResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAResponse initWithCoder:];
  }

  v7.receiver = self;
  v7.super_class = DAResponse;
  v5 = [(DAAction *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[DAResponse setStatus:](v5, "setStatus:", [coderCopy decodeIntForKey:@"DARStatus"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAResponse encodeWithCoder:];
  }

  v5.receiver = self;
  v5.super_class = DAResponse;
  [(DAAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:-[DAResponse status](self forKey:{"status"), @"DARStatus"}];
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