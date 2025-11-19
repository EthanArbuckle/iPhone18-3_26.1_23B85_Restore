@interface MFPlainTextDocument
- (id)archivedRepresentation;
- (void)appendArchivedRepresentation:(id)a3;
- (void)appendString:(id)a3 withQuoteLevel:(unsigned int)a4;
- (void)dealloc;
- (void)getString:(id *)a3 quoteLevel:(unsigned int *)a4 ofFragmentAtIndex:(unint64_t)a5;
@end

@implementation MFPlainTextDocument

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFPlainTextDocument;
  [(MFPlainTextDocument *)&v3 dealloc];
}

- (void)appendString:(id)a3 withQuoteLevel:(unsigned int)a4
{
  text = self->_text;
  if (!text)
  {
    text = objc_alloc_init(MEMORY[0x277CCAB68]);
    self->_text = text;
  }

  v8 = [(NSMutableString *)text length];
  v9 = [a3 length];
  [(NSMutableString *)self->_text appendString:a3];
  if (!self->_fragments)
  {
    self->_fragments = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v10 = objc_alloc_init(MFPlainTextFragment);
  v10->_range.location = v8;
  v10->_range.length = v9;
  v10->_quoteLevel = a4;
  [(NSMutableArray *)self->_fragments addObject:v10];
}

- (void)getString:(id *)a3 quoteLevel:(unsigned int *)a4 ofFragmentAtIndex:(unint64_t)a5
{
  v8 = [(NSMutableArray *)self->_fragments objectAtIndex:a5];
  if (a3)
  {
    *a3 = [(NSMutableString *)self->_text substringWithRange:*(v8 + 8), *(v8 + 16)];
  }

  if (a4)
  {
    *a4 = *(v8 + 24);
  }
}

- (id)archivedRepresentation
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NSMutableArray *)self->_fragments count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v10 = 0;
      v9 = 0;
      v7 = [MEMORY[0x277CBEB38] dictionary];
      [(MFPlainTextDocument *)self getString:&v10 quoteLevel:&v9 ofFragmentAtIndex:i];
      [v7 setObject:v10 forKey:@"string"];
      [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", v9), @"quoteLevel"}];
      [v3 addObject:v7];
    }
  }

  return v3;
}

- (void)appendArchivedRepresentation:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [a3 objectAtIndex:i];
      -[MFPlainTextDocument appendString:withQuoteLevel:](self, "appendString:withQuoteLevel:", [v8 objectForKey:@"string"], objc_msgSend(objc_msgSend(v8, "objectForKey:", @"quoteLevel"), "unsignedIntValue"));
    }
  }
}

@end