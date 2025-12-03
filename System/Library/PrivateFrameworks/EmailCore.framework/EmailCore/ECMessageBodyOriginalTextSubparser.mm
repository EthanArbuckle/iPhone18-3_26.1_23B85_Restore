@interface ECMessageBodyOriginalTextSubparser
- (BOOL)_isElementQuotedForwardSeparator:(id)separator;
- (void)_consumeTextElement:(id)element isAttribution:(BOOL)attribution;
- (void)dealloc;
- (void)messageBodyParser:(id)parser foundMessageBodyElement:(id)element;
- (void)setFoundTextBlock:(id)block;
- (void)setFoundWhitespaceBlock:(id)block;
@end

@implementation ECMessageBodyOriginalTextSubparser

- (void)dealloc
{
  [(NSMutableArray *)self->_lastTextElements makeObjectsPerformSelector:sel_releaseExternally];

  [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement releaseExternally];
  v3.receiver = self;
  v3.super_class = ECMessageBodyOriginalTextSubparser;
  [(ECMessageBodyOriginalTextSubparser *)&v3 dealloc];
}

- (void)setFoundTextBlock:(id)block
{
  foundTextBlock = self->_foundTextBlock;
  if (foundTextBlock != block)
  {

    self->_foundTextBlock = [block copy];
  }
}

- (void)setFoundWhitespaceBlock:(id)block
{
  foundWhitespaceBlock = self->_foundWhitespaceBlock;
  if (foundWhitespaceBlock != block)
  {

    self->_foundWhitespaceBlock = [block copy];
  }
}

- (void)_consumeTextElement:(id)element isAttribution:(BOOL)attribution
{
  if ([element valueForAttributes:4])
  {
    foundWhitespaceBlock = self->_foundWhitespaceBlock;
    if (foundWhitespaceBlock)
    {
      v8 = *(foundWhitespaceBlock + 2);

      v8();
    }
  }

  else
  {
    if (self->_foundTextBlock)
    {
      quoteLevel = [element quoteLevel];
      if (quoteLevel)
      {
        attributionCopy = 1;
      }

      else
      {
        attributionCopy = attribution;
      }

      if ((self->_foundForwardSeparator || !attributionCopy) && (self->_foundText || ![element valueForAttributes:32]) && quoteLevel)
      {
        [(ECMessageBodyOriginalTextSubparser *)self _isElementQuotedForwardSeparator:element];
      }

      (*(self->_foundTextBlock + 2))();
    }

    self->_foundText = 1;
  }
}

- (void)messageBodyParser:(id)parser foundMessageBodyElement:(id)element
{
  if (self->_lastNonWhitespaceTextElement)
  {
    quoteLevel = [element quoteLevel];
    if (quoteLevel > [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement quoteLevel])
    {
      v7 = [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement valueForAttributes:8];
      if (!v7 && ![(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement quoteLevel]&& [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement valueForAttributes:16])
      {
        self->_foundForwardSeparator = 1;
      }

      [(ECMessageBodyOriginalTextSubparser *)self _consumeAnyLastTextElementAsAttribution:v7 != 0];
    }
  }

  if ([(ECMessageBodyOriginalTextSubparser *)self _isElementQuotedForwardSeparator:element])
  {
    v8 = [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement valueForAttributes:8];
    if (!v8)
    {
      self->_foundForwardSeparator = 1;
    }

    [(ECMessageBodyOriginalTextSubparser *)self _consumeAnyLastTextElementAsAttribution:v8 != 0];
    self->_lastNonWhitespaceTextElement = [element retainExternally];
  }

  if (self->_foundForwardSeparator)
  {

    [(ECMessageBodyOriginalTextSubparser *)self _consumeTextElement:element isAttribution:0];
  }

  else if ([element valueForAttributes:2])
  {
    if (![element valueForAttributes:4])
    {
      [(ECMessageBodyOriginalTextSubparser *)self _consumeAnyLastTextElementAsAttribution:0];
      self->_lastNonWhitespaceTextElement = [element retainExternally];
    }

    if (!self->_lastTextElements)
    {
      self->_lastTextElements = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [element retainExternally];
    lastTextElements = self->_lastTextElements;

    [(NSMutableArray *)lastTextElements addObject:element];
  }
}

- (BOOL)_isElementQuotedForwardSeparator:(id)separator
{
  v4 = [separator valueForAttributes:16];
  if (v4)
  {
    LOBYTE(v4) = [separator quoteLevel] == 1;
  }

  return v4;
}

@end