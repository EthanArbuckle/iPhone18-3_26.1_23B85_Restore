@interface OSAParsedOsLogPart
- (OSAParsedOsLogPart)initWithArgument:(id)argument argSpecifier:(id)specifier isSafe:(BOOL)safe;
- (OSAParsedOsLogPart)initWithLiteral:(id)literal isSafe:(BOOL)safe;
@end

@implementation OSAParsedOsLogPart

- (OSAParsedOsLogPart)initWithLiteral:(id)literal isSafe:(BOOL)safe
{
  literalCopy = literal;
  v11.receiver = self;
  v11.super_class = OSAParsedOsLogPart;
  v8 = [(OSAParsedOsLogPart *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isSafe = safe;
    objc_storeStrong(&v8->_stringValue, literal);
    v9->_isArgument = 0;
  }

  return v9;
}

- (OSAParsedOsLogPart)initWithArgument:(id)argument argSpecifier:(id)specifier isSafe:(BOOL)safe
{
  argumentCopy = argument;
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = OSAParsedOsLogPart;
  v11 = [(OSAParsedOsLogPart *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_isSafe = safe;
    objc_storeStrong(&v11->_stringValue, argument);
    v12->_isArgument = 1;
    objc_storeStrong(&v12->_argSpecifier, specifier);
  }

  return v12;
}

@end