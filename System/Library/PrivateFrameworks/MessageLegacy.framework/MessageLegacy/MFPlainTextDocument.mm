@interface MFPlainTextDocument
- (id)archivedRepresentation;
- (void)appendArchivedRepresentation:(id)representation;
- (void)appendString:(id)string withQuoteLevel:(unsigned int)level;
- (void)dealloc;
- (void)getString:(id *)string quoteLevel:(unsigned int *)level ofFragmentAtIndex:(unint64_t)index;
@end

@implementation MFPlainTextDocument

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFPlainTextDocument;
  [(MFPlainTextDocument *)&v3 dealloc];
}

- (void)appendString:(id)string withQuoteLevel:(unsigned int)level
{
  text = self->_text;
  if (!text)
  {
    text = objc_alloc_init(MEMORY[0x277CCAB68]);
    self->_text = text;
  }

  v8 = [(NSMutableString *)text length];
  v9 = [string length];
  [(NSMutableString *)self->_text appendString:string];
  if (!self->_fragments)
  {
    self->_fragments = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v10 = objc_alloc_init(MFPlainTextFragment);
  v10->_range.location = v8;
  v10->_range.length = v9;
  v10->_quoteLevel = level;
  [(NSMutableArray *)self->_fragments addObject:v10];
}

- (void)getString:(id *)string quoteLevel:(unsigned int *)level ofFragmentAtIndex:(unint64_t)index
{
  v8 = [(NSMutableArray *)self->_fragments objectAtIndex:index];
  if (string)
  {
    *string = [(NSMutableString *)self->_text substringWithRange:*(v8 + 8), *(v8 + 16)];
  }

  if (level)
  {
    *level = *(v8 + 24);
  }
}

- (id)archivedRepresentation
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(NSMutableArray *)self->_fragments count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v10 = 0;
      v9 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(MFPlainTextDocument *)self getString:&v10 quoteLevel:&v9 ofFragmentAtIndex:i];
      [dictionary setObject:v10 forKey:@"string"];
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", v9), @"quoteLevel"}];
      [array addObject:dictionary];
    }
  }

  return array;
}

- (void)appendArchivedRepresentation:(id)representation
{
  v5 = [representation count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [representation objectAtIndex:i];
      -[MFPlainTextDocument appendString:withQuoteLevel:](self, "appendString:withQuoteLevel:", [v8 objectForKey:@"string"], objc_msgSend(objc_msgSend(v8, "objectForKey:", @"quoteLevel"), "unsignedIntValue"));
    }
  }
}

@end