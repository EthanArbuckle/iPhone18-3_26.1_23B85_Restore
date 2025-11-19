@interface MFPlainTextDocument
- (id)archivedRepresentation;
- (void)appendArchivedRepresentation:(id)a3;
- (void)appendString:(id)a3 withQuoteLevel:(unsigned int)a4;
- (void)getString:(id *)a3 quoteLevel:(unsigned int *)a4 ofFragmentAtIndex:(unint64_t)a5;
@end

@implementation MFPlainTextDocument

- (void)appendString:(id)a3 withQuoteLevel:(unsigned int)a4
{
  v14 = a3;
  text = self->_text;
  if (!text)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8 = self->_text;
    self->_text = v7;

    text = self->_text;
  }

  v9 = [(NSMutableString *)text length];
  v10 = [v14 length];
  [(NSMutableString *)self->_text appendString:v14];
  if (!self->_fragments)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fragments = self->_fragments;
    self->_fragments = v11;
  }

  v13 = objc_alloc_init(MFPlainTextFragment);
  v13->_range.location = v9;
  v13->_range.length = v10;
  v13->_quoteLevel = a4;
  [(NSMutableArray *)self->_fragments addObject:v13];
}

- (void)getString:(id *)a3 quoteLevel:(unsigned int *)a4 ofFragmentAtIndex:(unint64_t)a5
{
  v8 = [(NSMutableArray *)self->_fragments objectAtIndex:a5];
  if (a3)
  {
    v9 = v8;
    *a3 = [(NSMutableString *)self->_text substringWithRange:*(v8 + 8), *(v8 + 16)];
    v8 = v9;
  }

  if (a4)
  {
    *a4 = *(v8 + 24);
  }
}

- (id)archivedRepresentation
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableArray *)self->_fragments count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v11 = -1431655766;
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v10 = 0;
      [(MFPlainTextDocument *)self getString:&v10 quoteLevel:&v11 ofFragmentAtIndex:i];
      v7 = v10;
      [v6 setObject:v7 forKey:@"string"];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
      [v6 setObject:v8 forKey:@"quoteLevel"];

      [v3 addObject:v6];
    }
  }

  return v3;
}

- (void)appendArchivedRepresentation:(id)a3
{
  v10 = a3;
  v4 = [v10 count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [v10 objectAtIndex:i];
      v7 = [v6 objectForKey:@"string"];
      v8 = [v6 objectForKey:@"quoteLevel"];
      v9 = [v8 unsignedIntValue];

      [(MFPlainTextDocument *)self appendString:v7 withQuoteLevel:v9];
    }
  }
}

@end