@interface JavaUtilRegexPattern
- (id)matcherWithJavaLangCharSequence:(id)sequence;
- (id)splitWithJavaLangCharSequence:(id)sequence withInt:(int)int;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
@end

@implementation JavaUtilRegexPattern

- (id)matcherWithJavaLangCharSequence:(id)sequence
{
  v3 = new_JavaUtilRegexMatcher_initWithJavaUtilRegexPattern_withJavaLangCharSequence_(self, sequence);

  return v3;
}

- (id)splitWithJavaLangCharSequence:(id)sequence withInt:(int)int
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  pattern = self->pattern_;
  v7 = [sequence description];

  return JavaUtilRegexSplitter_splitWithJavaUtilRegexPattern_withNSString_withNSString_withInt_(self, pattern, v7, int);
}

- (void)dealloc
{
  JavaUtilRegexPattern_closeImplWithLong_(self->address_);

  v3.receiver = self;
  v3.super_class = JavaUtilRegexPattern;
  [(JavaUtilRegexPattern *)&v3 dealloc];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];

  sub_10028663C(self);
}

@end