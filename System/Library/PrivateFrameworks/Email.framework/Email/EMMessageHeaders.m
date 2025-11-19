@interface EMMessageHeaders
- (EMMessageHeaders)initWithCoder:(id)a3;
- (EMMessageHeaders)initWithHeaders:(id)a3;
- (NSArray)headerKeys;
- (id)firstHeaderForKey:(id)a3;
- (id)headersForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageHeaders

- (EMMessageHeaders)initWithHeaders:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMessageHeaders;
  v5 = [(EMMessageHeaders *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    headers = v5->_headers;
    v5->_headers = v6;
  }

  return v5;
}

- (NSArray)headerKeys
{
  v2 = [(NSDictionary *)self->_headers allKeys];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)headersForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_headers objectForKeyedSubscript:a3];

  return v3;
}

- (id)firstHeaderForKey:(id)a3
{
  v3 = [(EMMessageHeaders *)self headersForKey:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (EMMessageHeaders)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_headers"];

  v10 = [(EMMessageHeaders *)self initWithHeaders:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(EMMessageHeaders *)self headers];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_headers"];
}

@end