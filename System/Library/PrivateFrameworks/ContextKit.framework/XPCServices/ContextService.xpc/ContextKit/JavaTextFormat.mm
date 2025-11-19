@interface JavaTextFormat
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formatToCharacterIteratorWithId:(id)a3;
- (id)parseObjectWithNSString:(id)a3;
@end

@implementation JavaTextFormat

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaTextFormat;
  return [(JavaTextFormat *)&v3 clone];
}

- (id)formatToCharacterIteratorWithId:(id)a3
{
  v3 = sub_1001F5BAC(self, a3);
  v4 = new_JavaTextAttributedString_initWithNSString_(v3);

  return [(JavaTextAttributedString *)v4 getIterator];
}

- (id)parseObjectWithNSString:(id)a3
{
  v5 = new_JavaTextParsePosition_initWithInt_(0);
  v6 = [(JavaTextFormat *)self parseObjectWithNSString:a3 withJavaTextParsePosition:v5];
  if (![(JavaTextParsePosition *)v5 getIndex])
  {
    v8 = new_JavaTextParseException_initWithNSString_withInt_(@"Parse failure", [(JavaTextParsePosition *)v5 getErrorIndex]);
    objc_exception_throw(v8);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaTextFormat *)self clone];

  return v3;
}

@end