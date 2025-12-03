@interface DUClientObjC
- (DUClientObjC)initWithIdentifier:(id)identifier;
@end

@implementation DUClientObjC

- (DUClientObjC)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = DUClientObjC;
  v5 = [(DUClientObjC *)&v14 init];
  if (v5)
  {
    v6 = [_TtC21DocumentUnderstanding8DUClient alloc];
    v10 = objc_msgSend_initWithIdentifier_(v6, v7, identifierCopy, v8, v9);
    underlyingObject = v5->_underlyingObject;
    v5->_underlyingObject = v10;

    v12 = v5;
  }

  return v5;
}

@end