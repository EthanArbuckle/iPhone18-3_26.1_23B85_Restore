@interface ECMessageBodyParserObject
- (BOOL)shouldProceedParsing;
- (void)messageBodyParserWillBeginParsing:(id)a3;
@end

@implementation ECMessageBodyParserObject

- (void)messageBodyParserWillBeginParsing:(id)a3
{
  [(ECMessageBodyParserObject *)self timeoutInterval];
  v5 = v4;
  v6 = 0.0;
  if (v5 > 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5 + v7;
  }

  self->_timeoutTime = v6;
}

- (BOOL)shouldProceedParsing
{
  if (self->_timeoutTime > 0.0 && !self->_didTimeout)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v3 > self->_timeoutTime)
    {
      self->_didTimeout = 1;
    }
  }

  return !self->_shouldAbort && !self->_didTimeout;
}

@end