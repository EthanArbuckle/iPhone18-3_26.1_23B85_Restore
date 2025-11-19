@interface CHTokenizedStrokeResult
- (CHTokenizedStrokeResult)initWithStrokeIdentifiers:(id)a3 resultLevel:(int64_t)a4;
@end

@implementation CHTokenizedStrokeResult

- (CHTokenizedStrokeResult)initWithStrokeIdentifiers:(id)a3 resultLevel:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CHTokenizedStrokeResult;
  v12 = [(CHTokenizedStrokeResult *)&v16 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v7, v8, v9, v10, v11);
    strokeIdentifiers = v12->_strokeIdentifiers;
    v12->_strokeIdentifiers = v13;

    v12->_resultLevel = a4;
  }

  return v12;
}

@end