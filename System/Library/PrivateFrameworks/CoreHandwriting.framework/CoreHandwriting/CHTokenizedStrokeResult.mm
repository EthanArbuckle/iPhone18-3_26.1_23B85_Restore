@interface CHTokenizedStrokeResult
- (CHTokenizedStrokeResult)initWithStrokeIdentifiers:(id)identifiers resultLevel:(int64_t)level;
@end

@implementation CHTokenizedStrokeResult

- (CHTokenizedStrokeResult)initWithStrokeIdentifiers:(id)identifiers resultLevel:(int64_t)level
{
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = CHTokenizedStrokeResult;
  v12 = [(CHTokenizedStrokeResult *)&v16 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(identifiersCopy, v7, v8, v9, v10, v11);
    strokeIdentifiers = v12->_strokeIdentifiers;
    v12->_strokeIdentifiers = v13;

    v12->_resultLevel = level;
  }

  return v12;
}

@end