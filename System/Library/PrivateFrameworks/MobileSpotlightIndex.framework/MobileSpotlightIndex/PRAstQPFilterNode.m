@interface PRAstQPFilterNode
- (id)toDictionary;
- (void)dealloc;
@end

@implementation PRAstQPFilterNode

- (id)toDictionary
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v8[0] = @"QPFilter";
  v7[0] = @"type";
  v7[1] = @"filterString";
  v8[1] = [(PRAstQPFilterNode *)self filterString];
  v7[2] = @"sourceToken";
  v8[2] = [(PRAstNode *)self sourceToken];
  v4 = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, v7, 3)}];
  if ([(PRAstNode *)self isLastToken])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isLastToken"];
  }

  result = [v4 copy];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstQPFilterNode;
  [(PRAstNode *)&v3 dealloc];
}

@end