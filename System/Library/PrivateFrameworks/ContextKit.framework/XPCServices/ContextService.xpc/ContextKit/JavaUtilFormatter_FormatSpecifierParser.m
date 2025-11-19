@interface JavaUtilFormatter_FormatSpecifierParser
- (JavaUtilFormatter_FormatSpecifierParser)initWithNSString:(id)a3;
- (id)getFormatSpecifierText;
- (id)parseFormatTokenWithInt:(int)a3;
- (int)peek;
- (void)dealloc;
@end

@implementation JavaUtilFormatter_FormatSpecifierParser

- (JavaUtilFormatter_FormatSpecifierParser)initWithNSString:(id)a3
{
  JreStrongAssign(&self->format_, a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->length_ = [a3 length];
  return self;
}

- (id)parseFormatTokenWithInt:(int)a3
{
  self->startIndex_ = a3;
  self->i_ = a3;
  v4 = [JavaUtilFormatter_FormatToken alloc];
  v4->argIndex_ = -1;
  v4->conversionType_ = -1;
  *&v4->precision_ = -1;
  v5 = v4;

  return sub_100146F20(self, v5);
}

- (id)getFormatSpecifierText
{
  if (!self->format_)
  {
    JreThrowNullPointerException();
  }

  startIndex = self->startIndex_;
  i = self->i_;
  format = self->format_;

  return [(NSString *)format substring:startIndex endIndex:i];
}

- (int)peek
{
  if (self->i_ >= self->length_)
  {
    return -1;
  }

  format = self->format_;
  if (!format)
  {
    JreThrowNullPointerException();
  }

  return [(NSString *)format charAtWithInt:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilFormatter_FormatSpecifierParser;
  [(JavaUtilFormatter_FormatSpecifierParser *)&v3 dealloc];
}

@end