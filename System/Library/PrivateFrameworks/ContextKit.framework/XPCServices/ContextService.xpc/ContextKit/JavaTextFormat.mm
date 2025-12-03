@interface JavaTextFormat
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formatToCharacterIteratorWithId:(id)id;
- (id)parseObjectWithNSString:(id)string;
@end

@implementation JavaTextFormat

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaTextFormat;
  return [(JavaTextFormat *)&v3 clone];
}

- (id)formatToCharacterIteratorWithId:(id)id
{
  v3 = sub_1001F5BAC(self, id);
  v4 = new_JavaTextAttributedString_initWithNSString_(v3);

  return [(JavaTextAttributedString *)v4 getIterator];
}

- (id)parseObjectWithNSString:(id)string
{
  v5 = new_JavaTextParsePosition_initWithInt_(0);
  v6 = [(JavaTextFormat *)self parseObjectWithNSString:string withJavaTextParsePosition:v5];
  if (![(JavaTextParsePosition *)v5 getIndex])
  {
    v8 = new_JavaTextParseException_initWithNSString_withInt_(@"Parse failure", [(JavaTextParsePosition *)v5 getErrorIndex]);
    objc_exception_throw(v8);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaTextFormat *)self clone];

  return clone;
}

@end