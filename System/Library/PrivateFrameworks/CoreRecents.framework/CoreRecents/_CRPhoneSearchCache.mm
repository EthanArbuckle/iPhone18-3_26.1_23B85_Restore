@interface _CRPhoneSearchCache
- (id)copySearcherForPattern:(const char *)pattern;
- (void)dealloc;
@end

@implementation _CRPhoneSearchCache

- (void)dealloc
{
  lastSearchString = self->_lastSearchString;
  if (lastSearchString)
  {
    free(lastSearchString);
  }

  v4.receiver = self;
  v4.super_class = _CRPhoneSearchCache;
  [(_CRPhoneSearchCache *)&v4 dealloc];
}

- (id)copySearcherForPattern:(const char *)pattern
{
  if (self->_lastSearchStringLength && !strcmp(pattern, self->_lastSearchString))
  {
    lastPhoneSearch = self->_lastPhoneSearch;

    return lastPhoneSearch;
  }

  else
  {
    v5 = strlen(pattern);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    lastSearchString = self->_lastSearchString;
    if (lastSearchString)
    {
      free(lastSearchString);
    }

    self->_lastSearchString = strdup(pattern);
    self->_lastSearchStringLength = v6;
    v8 = [[NSData alloc] initWithBytesNoCopy:self->_lastSearchString length:self->_lastSearchStringLength freeWhenDone:0];
    v9 = [(NSCache *)self->_cache objectForKey:v8];
    if (!v9)
    {
      if (!self->_cache)
      {
        self->_cache = objc_alloc_init(NSCache);
      }

      v9 = [[CRPhoneSearch alloc] initWithSearchString:[NSString stringWithUTF8String:pattern]];
      [(NSCache *)self->_cache setObject:v9 forKey:[NSData dataWithData:v8]];
    }

    [(_CRPhoneSearchCache *)self setLastPhoneSearch:v9];
    return v9;
  }
}

@end