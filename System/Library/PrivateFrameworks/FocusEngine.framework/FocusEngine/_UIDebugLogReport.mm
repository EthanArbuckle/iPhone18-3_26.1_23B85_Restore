@interface _UIDebugLogReport
- (_UIDebugLogReport)init;
- (id)_messagePrefixAtIndentLevel:(unint64_t)level;
- (id)fallbackMessagePrefixHandler;
- (unint64_t)messageCount;
- (void)addLineBreak;
- (void)addMessage:(id)message;
- (void)addMessageWithFormat:(id)format;
- (void)clearAllMessagePrefixes;
- (void)decrementIndentLevel;
- (void)decrementIndentLevelAndPopMessagePrefix;
- (void)incrementIndentLevel;
- (void)incrementIndentLevelAndPushMessagePrefix:(id)prefix;
- (void)popMessagePrefix;
- (void)pushMessagePrefix:(id)prefix;
- (void)pushMessagePrefixHandler:(id)handler;
@end

@implementation _UIDebugLogReport

- (_UIDebugLogReport)init
{
  v8.receiver = self;
  v8.super_class = _UIDebugLogReport;
  v2 = [(_UIDebugLogReport *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    statements = v2->_statements;
    v2->_statements = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    prefixStack = v2->_prefixStack;
    v2->_prefixStack = v5;
  }

  return v2;
}

- (unint64_t)messageCount
{
  _statements = [(_UIDebugLogReport *)self _statements];
  v3 = [_statements count];

  return v3;
}

- (void)addMessageWithFormat:(id)format
{
  formatCopy = format;
  if (!formatCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"messageFormat"}];
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v8];
  [(_UIDebugLogReport *)self addMessage:v6];
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  currentIndentLevel = [(_UIDebugLogReport *)self currentIndentLevel];
  v6 = objc_alloc_init(_UIDebugLogStatement);
  [(_UIDebugLogStatement *)v6 setType:0];
  [(_UIDebugLogStatement *)v6 setIndentLevel:currentIndentLevel];
  v7 = [(_UIDebugLogReport *)self _messagePrefixAtIndentLevel:currentIndentLevel];
  [(_UIDebugLogStatement *)v6 setPrefix:v7];

  [(_UIDebugLogStatement *)v6 setText:messageCopy];
  _statements = [(_UIDebugLogReport *)self _statements];
  [_statements addObject:v6];
}

- (void)addLineBreak
{
  v4 = objc_alloc_init(_UIDebugLogStatement);
  [(_UIDebugLogStatement *)v4 setType:1];
  _statements = [(_UIDebugLogReport *)self _statements];
  [_statements addObject:v4];
}

- (void)incrementIndentLevel
{
  v3 = [(_UIDebugLogReport *)self currentIndentLevel]+ 1;

  [(_UIDebugLogReport *)self setCurrentIndentLevel:v3];
}

- (void)decrementIndentLevel
{
  v3 = [(_UIDebugLogReport *)self currentIndentLevel]- 1;

  [(_UIDebugLogReport *)self setCurrentIndentLevel:v3];
}

- (id)fallbackMessagePrefixHandler
{
  fallbackMessagePrefixHandler = self->_fallbackMessagePrefixHandler;
  if (!fallbackMessagePrefixHandler)
  {
    self->_fallbackMessagePrefixHandler = &__block_literal_global_0;
    fallbackMessagePrefixHandler = &__block_literal_global_0;
  }

  v4 = MEMORY[0x24C24D980](fallbackMessagePrefixHandler, a2);

  return v4;
}

- (void)pushMessagePrefix:(id)prefix
{
  prefixCopy = prefix;
  if (!prefixCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];
  }

  _prefixStack = [(_UIDebugLogReport *)self _prefixStack];
  [_prefixStack addObject:prefixCopy];
}

- (void)pushMessagePrefixHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"prefixHandler"}];
  }

  _prefixStack = [(_UIDebugLogReport *)self _prefixStack];
  v6 = MEMORY[0x24C24D980](handlerCopy);
  [_prefixStack addObject:v6];
}

- (void)popMessagePrefix
{
  _prefixStack = [(_UIDebugLogReport *)self _prefixStack];
  [_prefixStack removeLastObject];
}

- (void)clearAllMessagePrefixes
{
  _prefixStack = [(_UIDebugLogReport *)self _prefixStack];
  [_prefixStack removeAllObjects];
}

- (id)_messagePrefixAtIndentLevel:(unint64_t)level
{
  _prefixStack = [(_UIDebugLogReport *)self _prefixStack];
  lastObject = [_prefixStack lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = lastObject;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else if (lastObject)
  {
    v9 = MEMORY[0x24C24D980](lastObject);
    v8 = v9[2](v9, level);

    if (v8)
    {
      goto LABEL_8;
    }
  }

  fallbackMessagePrefixHandler = [(_UIDebugLogReport *)self fallbackMessagePrefixHandler];
  v8 = fallbackMessagePrefixHandler[2](fallbackMessagePrefixHandler, level);

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogReport.m" lineNumber:177 description:@"nil message prefixes are not allowed."];
  }

LABEL_8:

  return v8;
}

- (void)incrementIndentLevelAndPushMessagePrefix:(id)prefix
{
  prefixCopy = prefix;
  [(_UIDebugLogReport *)self incrementIndentLevel];
  [(_UIDebugLogReport *)self pushMessagePrefix:prefixCopy];
}

- (void)decrementIndentLevelAndPopMessagePrefix
{
  [(_UIDebugLogReport *)self popMessagePrefix];

  [(_UIDebugLogReport *)self decrementIndentLevel];
}

@end