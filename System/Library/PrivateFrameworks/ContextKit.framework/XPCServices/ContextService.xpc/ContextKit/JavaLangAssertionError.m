@interface JavaLangAssertionError
- (JavaLangAssertionError)initWithBoolean:(BOOL)a3;
- (JavaLangAssertionError)initWithChar:(unsigned __int16)a3;
- (JavaLangAssertionError)initWithDouble:(double)a3;
- (JavaLangAssertionError)initWithFloat:(float)a3;
- (JavaLangAssertionError)initWithInt:(int)a3;
- (JavaLangAssertionError)initWithLong:(int64_t)a3;
@end

@implementation JavaLangAssertionError

- (JavaLangAssertionError)initWithBoolean:(BOOL)a3
{
  v4 = NSString_valueOfBool_(a3);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithChar:(unsigned __int16)a3
{
  v4 = NSString_valueOfChar_(a3);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithInt:(int)a3
{
  v4 = JavaLangInteger_toStringWithInt_(a3);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithLong:(int64_t)a3
{
  v4 = JavaLangLong_toStringWithLong_(a3);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithFloat:(float)a3
{
  v4 = JavaLangFloat_toStringWithFloat_(a3);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

- (JavaLangAssertionError)initWithDouble:(double)a3
{
  v4 = JavaLangDouble_toStringWithDouble_(a3);
  JavaLangAssertionError_initWithId_(self, v4);
  return self;
}

@end