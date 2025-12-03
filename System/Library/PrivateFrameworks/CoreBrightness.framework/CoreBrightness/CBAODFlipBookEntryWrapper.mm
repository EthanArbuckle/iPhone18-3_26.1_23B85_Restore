@interface CBAODFlipBookEntryWrapper
- (CBAODFlipBookEntryWrapper)initWithFlipBookEntry:(id *)entry;
- (id)description;
- (void)dealloc;
@end

@implementation CBAODFlipBookEntryWrapper

- (CBAODFlipBookEntryWrapper)initWithFlipBookEntry:(id *)entry
{
  selfCopy = self;
  v8 = a2;
  entryCopy = entry;
  v6.receiver = self;
  v6.super_class = CBAODFlipBookEntryWrapper;
  selfCopy = [(CBAODFlipBookEntryWrapper *)&v6 init];
  if (selfCopy)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:entry length:79];
    selfCopy->_entryData = v3;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_entryData).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBAODFlipBookEntryWrapper;
  [(CBAODFlipBookEntryWrapper *)&v3 dealloc];
}

- (id)description
{
  bytes = [(NSData *)self->_entryData bytes];
  v8 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = "set";
  if (bytes[1])
  {
    v4 = "set";
  }

  else
  {
    v4 = "not set";
  }

  if (*(bytes + 51))
  {
    v5 = "set";
  }

  else
  {
    v5 = "not set";
  }

  if (*(bytes + 46))
  {
    v6 = "set";
  }

  else
  {
    v6 = "not set";
  }

  if ((*(bytes + 9) & 1) == 0)
  {
    v3 = "not set";
  }

  return [v8 stringWithFormat:@"%@: ID=%i | brt-%f (%s) | limit=%f (%s) | pcc=%f (%s) | WP %s", v2, *bytes, *(bytes + 5), v4, *(bytes + 13), v5, *(bytes + 47), v6, v3];
}

@end