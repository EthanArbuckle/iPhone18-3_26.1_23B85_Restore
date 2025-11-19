@interface PRAstTermNode
- (id)toDictionary;
- (void)dealloc;
@end

@implementation PRAstTermNode

- (id)toDictionary
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v8[0] = @"Term";
  v7[0] = @"type";
  v7[1] = @"value";
  v8[1] = [(PRAstTermNode *)self value];
  v7[2] = @"sourceToken";
  v8[2] = [(PRAstNode *)self sourceToken];
  v4 = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, v7, 3)}];
  if ([(PRAstNode *)self isLastToken])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isLastToken"];
  }

  if ([(PRAstTermNode *)self isNegated])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isNegated"];
  }

  if ([(PRAstTermNode *)self isIgnored])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isIgnored"];
  }

  result = [v4 copy];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstTermNode;
  [(PRAstNode *)&v3 dealloc];
}

@end