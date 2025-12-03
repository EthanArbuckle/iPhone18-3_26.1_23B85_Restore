@interface MFPlainTextDocument
- (id)archivedRepresentation;
- (void)appendArchivedRepresentation:(id)representation;
- (void)appendString:(id)string withQuoteLevel:(unsigned int)level;
- (void)getString:(id *)string quoteLevel:(unsigned int *)level ofFragmentAtIndex:(unint64_t)index;
@end

@implementation MFPlainTextDocument

- (void)appendString:(id)string withQuoteLevel:(unsigned int)level
{
  stringCopy = string;
  text = self->_text;
  if (!text)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8 = self->_text;
    self->_text = v7;

    text = self->_text;
  }

  v9 = [(NSMutableString *)text length];
  v10 = [stringCopy length];
  [(NSMutableString *)self->_text appendString:stringCopy];
  if (!self->_fragments)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fragments = self->_fragments;
    self->_fragments = v11;
  }

  v13 = objc_alloc_init(MFPlainTextFragment);
  v13->_range.location = v9;
  v13->_range.length = v10;
  v13->_quoteLevel = level;
  [(NSMutableArray *)self->_fragments addObject:v13];
}

- (void)getString:(id *)string quoteLevel:(unsigned int *)level ofFragmentAtIndex:(unint64_t)index
{
  v8 = [(NSMutableArray *)self->_fragments objectAtIndex:index];
  if (string)
  {
    v9 = v8;
    *string = [(NSMutableString *)self->_text substringWithRange:*(v8 + 8), *(v8 + 16)];
    v8 = v9;
  }

  if (level)
  {
    *level = *(v8 + 24);
  }
}

- (id)archivedRepresentation
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableArray *)self->_fragments count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v11 = -1431655766;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v10 = 0;
      [(MFPlainTextDocument *)self getString:&v10 quoteLevel:&v11 ofFragmentAtIndex:i];
      v7 = v10;
      [dictionary setObject:v7 forKey:@"string"];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
      [dictionary setObject:v8 forKey:@"quoteLevel"];

      [array addObject:dictionary];
    }
  }

  return array;
}

- (void)appendArchivedRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [representationCopy objectAtIndex:i];
      v7 = [v6 objectForKey:@"string"];
      v8 = [v6 objectForKey:@"quoteLevel"];
      unsignedIntValue = [v8 unsignedIntValue];

      [(MFPlainTextDocument *)self appendString:v7 withQuoteLevel:unsignedIntValue];
    }
  }
}

@end