@interface EMMessageHeaders
- (EMMessageHeaders)initWithCoder:(id)coder;
- (EMMessageHeaders)initWithHeaders:(id)headers;
- (NSArray)headerKeys;
- (id)firstHeaderForKey:(id)key;
- (id)headersForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageHeaders

- (EMMessageHeaders)initWithHeaders:(id)headers
{
  headersCopy = headers;
  v9.receiver = self;
  v9.super_class = EMMessageHeaders;
  v5 = [(EMMessageHeaders *)&v9 init];
  if (v5)
  {
    v6 = [headersCopy copy];
    headers = v5->_headers;
    v5->_headers = v6;
  }

  return v5;
}

- (NSArray)headerKeys
{
  allKeys = [(NSDictionary *)self->_headers allKeys];
  v3 = allKeys;
  if (allKeys)
  {
    v4 = allKeys;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)headersForKey:(id)key
{
  v3 = [(NSDictionary *)self->_headers objectForKeyedSubscript:key];

  return v3;
}

- (id)firstHeaderForKey:(id)key
{
  v3 = [(EMMessageHeaders *)self headersForKey:key];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (EMMessageHeaders)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_headers"];

  v10 = [(EMMessageHeaders *)self initWithHeaders:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  headers = [(EMMessageHeaders *)self headers];
  [coderCopy encodeObject:headers forKey:@"EFPropertyKey_headers"];
}

@end