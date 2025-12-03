@interface EMTSpan
- (EMTSpan)initWithIdentifier:(id)identifier range:(_NSRange)range doNotTranslate:(BOOL)translate;
- (_NSRange)range;
- (id)description;
@end

@implementation EMTSpan

- (EMTSpan)initWithIdentifier:(id)identifier range:(_NSRange)range doNotTranslate:(BOOL)translate
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = EMTSpan;
  v11 = [(EMTSpan *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_range.location = location;
    v12->_range.length = length;
    v12->_doNotTranslate = translate;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(EMTSpan *)self identifier];
  range = [(EMTSpan *)self range];
  [(EMTSpan *)self range];
  v7 = [v3 stringWithFormat:@"{id: %@, start: %lu, len: %lu, doNotTranslate: %u}", identifier, range, v6, -[EMTSpan doNotTranslate](self, "doNotTranslate")];

  return v7;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end