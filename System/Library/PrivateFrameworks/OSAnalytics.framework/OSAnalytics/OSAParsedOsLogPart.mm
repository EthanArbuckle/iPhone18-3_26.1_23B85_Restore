@interface OSAParsedOsLogPart
- (OSAParsedOsLogPart)initWithArgument:(id)a3 argSpecifier:(id)a4 isSafe:(BOOL)a5;
- (OSAParsedOsLogPart)initWithLiteral:(id)a3 isSafe:(BOOL)a4;
@end

@implementation OSAParsedOsLogPart

- (OSAParsedOsLogPart)initWithLiteral:(id)a3 isSafe:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OSAParsedOsLogPart;
  v8 = [(OSAParsedOsLogPart *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isSafe = a4;
    objc_storeStrong(&v8->_stringValue, a3);
    v9->_isArgument = 0;
  }

  return v9;
}

- (OSAParsedOsLogPart)initWithArgument:(id)a3 argSpecifier:(id)a4 isSafe:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = OSAParsedOsLogPart;
  v11 = [(OSAParsedOsLogPart *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_isSafe = a5;
    objc_storeStrong(&v11->_stringValue, a3);
    v12->_isArgument = 1;
    objc_storeStrong(&v12->_argSpecifier, a4);
  }

  return v12;
}

@end