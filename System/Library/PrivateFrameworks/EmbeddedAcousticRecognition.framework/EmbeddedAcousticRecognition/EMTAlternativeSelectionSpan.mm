@interface EMTAlternativeSelectionSpan
- (EMTAlternativeSelectionSpan)initWithSource:(_NSRange)source projection:(_NSRange)projection alternatives:(id)alternatives;
- (_NSRange)projection;
- (_NSRange)source;
@end

@implementation EMTAlternativeSelectionSpan

- (EMTAlternativeSelectionSpan)initWithSource:(_NSRange)source projection:(_NSRange)projection alternatives:(id)alternatives
{
  length = projection.length;
  location = projection.location;
  v8 = source.length;
  v9 = source.location;
  alternativesCopy = alternatives;
  v15.receiver = self;
  v15.super_class = EMTAlternativeSelectionSpan;
  v12 = [(EMTAlternativeSelectionSpan *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_source.location = v9;
    v12->_source.length = v8;
    v12->_projection.location = location;
    v12->_projection.length = length;
    objc_storeStrong(&v12->_alternatives, alternatives);
  }

  return v13;
}

- (_NSRange)source
{
  length = self->_source.length;
  location = self->_source.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)projection
{
  length = self->_projection.length;
  location = self->_projection.location;
  result.length = length;
  result.location = location;
  return result;
}

@end