@interface PRAstFieldNode
- (id)fieldTypeString;
- (id)toDictionary;
- (void)dealloc;
@end

@implementation PRAstFieldNode

- (id)toDictionary
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v11[0] = @"Field";
  v10[0] = @"type";
  v10[1] = @"fieldType";
  v11[1] = [(PRAstFieldNode *)self fieldTypeString];
  v10[2] = @"originalKeyword";
  v11[2] = [(PRAstFieldNode *)self originalKeyword];
  v10[3] = @"sourceToken";
  v11[3] = [(PRAstNode *)self sourceToken];
  v10[4] = @"expression";
  if ([(PRAstFieldNode *)self expression])
  {
    v4 = [(PRAstNode *)[(PRAstFieldNode *)self expression] toDictionary];
  }

  else
  {
    v4 = @"nil";
  }

  v11[4] = v4;
  v10[5] = @"isIgnored";
  v5 = [(PRAstFieldNode *)self isIgnored];
  v6 = MEMORY[0x1E695E110];
  if (v5)
  {
    v6 = MEMORY[0x1E695E118];
  }

  v11[5] = v6;
  v7 = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, v10, 6)}];
  if ([(PRAstNode *)self isLastToken])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isLastToken"];
  }

  result = [v7 copy];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)fieldTypeString
{
  v2 = [(PRAstFieldNode *)self fieldType];
  if (v2 > 0xC)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E81979A0[v2];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstFieldNode;
  [(PRAstNode *)&v3 dealloc];
}

@end