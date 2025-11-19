@interface EMTSpan
- (EMTSpan)initWithIdentifier:(id)a3 range:(_NSRange)a4 doNotTranslate:(BOOL)a5;
- (_NSRange)range;
- (id)description;
@end

@implementation EMTSpan

- (EMTSpan)initWithIdentifier:(id)a3 range:(_NSRange)a4 doNotTranslate:(BOOL)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = EMTSpan;
  v11 = [(EMTSpan *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    v12->_range.location = location;
    v12->_range.length = length;
    v12->_doNotTranslate = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMTSpan *)self identifier];
  v5 = [(EMTSpan *)self range];
  [(EMTSpan *)self range];
  v7 = [v3 stringWithFormat:@"{id: %@, start: %lu, len: %lu, doNotTranslate: %u}", v4, v5, v6, -[EMTSpan doNotTranslate](self, "doNotTranslate")];

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