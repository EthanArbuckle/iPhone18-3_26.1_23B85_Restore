@interface JavaLangAssertionError
- (JavaLangAssertionError)initWithBoolean:(BOOL)boolean;
- (JavaLangAssertionError)initWithChar:(unsigned __int16)char;
- (JavaLangAssertionError)initWithDouble:(double)double;
- (JavaLangAssertionError)initWithFloat:(float)float;
- (JavaLangAssertionError)initWithInt:(int)int;
- (JavaLangAssertionError)initWithLong:(int64_t)long;
@end

@implementation JavaLangAssertionError

- (JavaLangAssertionError)initWithBoolean:(BOOL)boolean
{
  v4 = NSString_valueOfBool_(boolean);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithChar:(unsigned __int16)char
{
  v4 = NSString_valueOfChar_(char);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithInt:(int)int
{
  v4 = JavaLangInteger_toStringWithInt_(int);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithLong:(int64_t)long
{
  v4 = JavaLangLong_toStringWithLong_(long);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithFloat:(float)float
{
  v4 = JavaLangFloat_toStringWithFloat_(float);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithDouble:(double)double
{
  v4 = JavaLangDouble_toStringWithDouble_(double);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

@end