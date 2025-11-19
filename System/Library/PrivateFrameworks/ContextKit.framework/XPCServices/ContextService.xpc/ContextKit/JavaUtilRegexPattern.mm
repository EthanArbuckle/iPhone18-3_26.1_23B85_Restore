@interface JavaUtilRegexPattern
- (id)matcherWithJavaLangCharSequence:(id)a3;
- (id)splitWithJavaLangCharSequence:(id)a3 withInt:(int)a4;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
@end

@implementation JavaUtilRegexPattern

- (id)matcherWithJavaLangCharSequence:(id)a3
{
  v3 = new_JavaUtilRegexMatcher_initWithJavaUtilRegexPattern_withJavaLangCharSequence_(self, a3);

  return v3;
}

- (id)splitWithJavaLangCharSequence:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  pattern = self->pattern_;
  v7 = [a3 description];

  return JavaUtilRegexSplitter_splitWithJavaUtilRegexPattern_withNSString_withNSString_withInt_(self, pattern, v7, a4);
}

- (void)dealloc
{
  JavaUtilRegexPattern_closeImplWithLong_(self->address_);

  v3.receiver = self;
  v3.super_class = JavaUtilRegexPattern;
  [(JavaUtilRegexPattern *)&v3 dealloc];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];

  sub_10028663C(self);
}

@end