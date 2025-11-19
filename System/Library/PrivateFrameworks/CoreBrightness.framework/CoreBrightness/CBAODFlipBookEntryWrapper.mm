@interface CBAODFlipBookEntryWrapper
- (CBAODFlipBookEntryWrapper)initWithFlipBookEntry:(id *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CBAODFlipBookEntryWrapper

- (CBAODFlipBookEntryWrapper)initWithFlipBookEntry:(id *)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBAODFlipBookEntryWrapper;
  v9 = [(CBAODFlipBookEntryWrapper *)&v6 init];
  if (v9)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:79];
    v9->_entryData = v3;
  }

  return v9;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_entryData).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBAODFlipBookEntryWrapper;
  [(CBAODFlipBookEntryWrapper *)&v3 dealloc];
}

- (id)description
{
  v9 = [(NSData *)self->_entryData bytes];
  v8 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = "set";
  if (v9[1])
  {
    v4 = "set";
  }

  else
  {
    v4 = "not set";
  }

  if (*(v9 + 51))
  {
    v5 = "set";
  }

  else
  {
    v5 = "not set";
  }

  if (*(v9 + 46))
  {
    v6 = "set";
  }

  else
  {
    v6 = "not set";
  }

  if ((*(v9 + 9) & 1) == 0)
  {
    v3 = "not set";
  }

  return [v8 stringWithFormat:@"%@: ID=%i | brt-%f (%s) | limit=%f (%s) | pcc=%f (%s) | WP %s", v2, *v9, *(v9 + 5), v4, *(v9 + 13), v5, *(v9 + 47), v6, v3];
}

@end