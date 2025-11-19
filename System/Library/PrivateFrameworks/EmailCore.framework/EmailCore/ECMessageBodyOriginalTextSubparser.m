@interface ECMessageBodyOriginalTextSubparser
- (BOOL)_isElementQuotedForwardSeparator:(id)a3;
- (void)_consumeTextElement:(id)a3 isAttribution:(BOOL)a4;
- (void)dealloc;
- (void)messageBodyParser:(id)a3 foundMessageBodyElement:(id)a4;
- (void)setFoundTextBlock:(id)a3;
- (void)setFoundWhitespaceBlock:(id)a3;
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

- (void)setFoundTextBlock:(id)a3
{
  foundTextBlock = self->_foundTextBlock;
  if (foundTextBlock != a3)
  {

    self->_foundTextBlock = [a3 copy];
  }
}

- (void)setFoundWhitespaceBlock:(id)a3
{
  foundWhitespaceBlock = self->_foundWhitespaceBlock;
  if (foundWhitespaceBlock != a3)
  {

    self->_foundWhitespaceBlock = [a3 copy];
  }
}

- (void)_consumeTextElement:(id)a3 isAttribution:(BOOL)a4
{
  if ([a3 valueForAttributes:4])
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
      v9 = [a3 quoteLevel];
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = a4;
      }

      if ((self->_foundForwardSeparator || !v10) && (self->_foundText || ![a3 valueForAttributes:32]) && v9)
      {
        [(ECMessageBodyOriginalTextSubparser *)self _isElementQuotedForwardSeparator:a3];
      }

      (*(self->_foundTextBlock + 2))();
    }

    self->_foundText = 1;
  }
}

- (void)messageBodyParser:(id)a3 foundMessageBodyElement:(id)a4
{
  if (self->_lastNonWhitespaceTextElement)
  {
    v6 = [a4 quoteLevel];
    if (v6 > [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement quoteLevel])
    {
      v7 = [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement valueForAttributes:8];
      if (!v7 && ![(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement quoteLevel]&& [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement valueForAttributes:16])
      {
        self->_foundForwardSeparator = 1;
      }

      [(ECMessageBodyOriginalTextSubparser *)self _consumeAnyLastTextElementAsAttribution:v7 != 0];
    }
  }

  if ([(ECMessageBodyOriginalTextSubparser *)self _isElementQuotedForwardSeparator:a4])
  {
    v8 = [(ECMessageBodyElement_Private *)self->_lastNonWhitespaceTextElement valueForAttributes:8];
    if (!v8)
    {
      self->_foundForwardSeparator = 1;
    }

    [(ECMessageBodyOriginalTextSubparser *)self _consumeAnyLastTextElementAsAttribution:v8 != 0];
    self->_lastNonWhitespaceTextElement = [a4 retainExternally];
  }

  if (self->_foundForwardSeparator)
  {

    [(ECMessageBodyOriginalTextSubparser *)self _consumeTextElement:a4 isAttribution:0];
  }

  else if ([a4 valueForAttributes:2])
  {
    if (![a4 valueForAttributes:4])
    {
      [(ECMessageBodyOriginalTextSubparser *)self _consumeAnyLastTextElementAsAttribution:0];
      self->_lastNonWhitespaceTextElement = [a4 retainExternally];
    }

    if (!self->_lastTextElements)
    {
      self->_lastTextElements = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [a4 retainExternally];
    lastTextElements = self->_lastTextElements;

    [(NSMutableArray *)lastTextElements addObject:a4];
  }
}

- (BOOL)_isElementQuotedForwardSeparator:(id)a3
{
  v4 = [a3 valueForAttributes:16];
  if (v4)
  {
    LOBYTE(v4) = [a3 quoteLevel] == 1;
  }

  return v4;
}

@end