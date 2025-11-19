@interface JavaUtilRegexMatcher
- (BOOL)find;
- (BOOL)findWithInt:(int)a3;
- (BOOL)lookingAt;
- (BOOL)matches;
- (JavaUtilRegexMatcher)initWithJavaUtilRegexPattern:(id)a3 withJavaLangCharSequence:(id)a4;
- (NSString)description;
- (id)appendReplacementWithJavaLangStringBuffer:(id)a3 withNSString:(id)a4;
- (id)appendTailWithJavaLangStringBuffer:(id)a3;
- (id)groupWithInt:(int)a3;
- (id)replaceAllWithNSString:(id)a3;
- (id)replaceFirstWithNSString:(id)a3;
- (id)reset;
- (id)resetWithJavaLangCharSequence:(id)a3;
- (id)toMatchResult;
- (id)useAnchoringBoundsWithBoolean:(BOOL)a3;
- (id)usePatternWithJavaUtilRegexPattern:(id)a3;
- (id)useTransparentBoundsWithBoolean:(BOOL)a3;
- (int)endWithInt:(int)a3;
- (int)startWithInt:(int)a3;
- (uint64_t)ensureMatch;
- (uint64_t)resetForInput;
- (void)dealloc;
@end

@implementation JavaUtilRegexMatcher

- (JavaUtilRegexMatcher)initWithJavaUtilRegexPattern:(id)a3 withJavaLangCharSequence:(id)a4
{
  self->anchoringBounds_ = 1;
  [(JavaUtilRegexMatcher *)self usePatternWithJavaUtilRegexPattern:a3];
  [(JavaUtilRegexMatcher *)self resetWithJavaLangCharSequence:a4];
  return self;
}

- (id)appendReplacementWithJavaLangStringBuffer:(id)a3 withNSString:(id)a4
{
  if (!a3 || (input = self->input_) == 0)
  {
    JreThrowNullPointerException();
  }

  [a3 appendWithNSString:{-[NSString substring:endIndex:](input, "substring:endIndex:", self->appendPos_, -[JavaUtilRegexMatcher start](self, "start"))}];
  sub_10014C5A8(self, a3, a4);
  self->appendPos_ = [(JavaUtilRegexMatcher *)self end];
  return self;
}

- (id)reset
{
  input = self->input_;
  if (!input)
  {
    JreThrowNullPointerException();
  }

  v4 = [(NSString *)self->input_ length];

  return sub_10014C720(self, input, 0, v4);
}

- (id)resetWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 length];

  return sub_10014C720(self, a3, 0, v5);
}

- (id)usePatternWithJavaUtilRegexPattern:(id)a3
{
  if (!a3)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"pattern == null");
    objc_exception_throw(v7);
  }

  JreStrongAssign(&self->pattern_, a3);
  address = self->address_;
  if (address)
  {
    JavaUtilRegexMatcher_closeImplWithLong_(address);
    self->address_ = 0;
  }

  self->address_ = JavaUtilRegexMatcher_openImplWithLong_(*(a3 + 1));
  if (self->input_)
  {
    [JavaUtilRegexMatcher resetForInput]_0(self);
  }

  JreStrongAssignAndConsume(&self->matchOffsets_, [IOSIntArray newArrayWithLength:2 * [(JavaUtilRegexMatcher *)self groupCount]+ 2]);
  self->matchFound_ = 0;
  return self;
}

- (uint64_t)resetForInput
{
  JavaUtilRegexMatcher_setInputImplWithLong_withCharArray_withInt_withInt_(*(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 44));
  JavaUtilRegexMatcher_useAnchoringBoundsImplWithLong_withBoolean_(*(a1 + 16), *(a1 + 64));
  v2 = *(a1 + 16);
  v3 = *(a1 + 65);

  return JavaUtilRegexMatcher_useTransparentBoundsImplWithLong_withBoolean_(v2, v3);
}

- (id)appendTailWithJavaLangStringBuffer:(id)a3
{
  if (self->appendPos_ < self->regionEnd_)
  {
    if (!a3 || (input = self->input_) == 0)
    {
      JreThrowNullPointerException();
    }

    [a3 appendWithNSString:{-[NSString substring:endIndex:](input, "substring:endIndex:")}];
  }

  return a3;
}

- (id)replaceFirstWithNSString:(id)a3
{
  [(JavaUtilRegexMatcher *)self reset];
  input = self->input_;
  if (!input)
  {
    goto LABEL_8;
  }

  v6 = new_JavaLangStringBuffer_initWithInt_([(NSString *)input length]);
  if ([(JavaUtilRegexMatcher *)self find])
  {
    [(JavaUtilRegexMatcher *)self appendReplacementWithJavaLangStringBuffer:v6 withNSString:a3];
  }

  v7 = [(JavaUtilRegexMatcher *)self appendTailWithJavaLangStringBuffer:v6];
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v7 description];
}

- (id)replaceAllWithNSString:(id)a3
{
  [(JavaUtilRegexMatcher *)self reset];
  input = self->input_;
  if (!input)
  {
    goto LABEL_8;
  }

  v6 = new_JavaLangStringBuffer_initWithInt_([(NSString *)input length]);
  if ([(JavaUtilRegexMatcher *)self find])
  {
    do
    {
      [(JavaUtilRegexMatcher *)self appendReplacementWithJavaLangStringBuffer:v6 withNSString:a3];
    }

    while ([(JavaUtilRegexMatcher *)self find]);
  }

  v7 = [(JavaUtilRegexMatcher *)self appendTailWithJavaLangStringBuffer:v6];
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v7 description];
}

- (BOOL)findWithInt:(int)a3
{
  if (a3 < 0)
  {
    goto LABEL_5;
  }

  input = self->input_;
  if (!input)
  {
    goto LABEL_7;
  }

  if ([(NSString *)input length]< a3)
  {
LABEL_5:
    v7 = self->input_;
    if (v7)
    {
      [(NSString *)v7 length];
      v15 = JreStrcat("$I$I", v8, v9, v10, v11, v12, v13, v14, @"start=");
      v16 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v15);
      objc_exception_throw(v16);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  result = JavaUtilRegexMatcher_findImplWithLong_withInt_withIntArray_(self->address_, a3, self->matchOffsets_);
  self->matchFound_ = result;
  return result;
}

- (BOOL)find
{
  result = JavaUtilRegexMatcher_findNextImplWithLong_withIntArray_(self->address_, self->matchOffsets_);
  self->matchFound_ = result;
  return result;
}

- (BOOL)lookingAt
{
  result = JavaUtilRegexMatcher_lookingAtImplWithLong_withIntArray_(self->address_, self->matchOffsets_);
  self->matchFound_ = result;
  return result;
}

- (BOOL)matches
{
  result = JavaUtilRegexMatcher_matchesImplWithLong_withIntArray_(self->address_, self->matchOffsets_);
  self->matchFound_ = result;
  return result;
}

- (id)toMatchResult
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matched = new_JavaUtilRegexMatchResultImpl_initWithNSString_withIntArray_(self->input_, self->matchOffsets_);

  return matched;
}

- (uint64_t)ensureMatch
{
  if ((*(result + 52) & 1) == 0)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"No successful match so far");
    objc_exception_throw(v1);
  }

  return result;
}

- (id)useAnchoringBoundsWithBoolean:(BOOL)a3
{
  self->anchoringBounds_ = a3;
  JavaUtilRegexMatcher_useAnchoringBoundsImplWithLong_withBoolean_(self->address_, a3);
  return self;
}

- (id)useTransparentBoundsWithBoolean:(BOOL)a3
{
  self->transparentBounds_ = a3;
  JavaUtilRegexMatcher_useTransparentBoundsImplWithLong_withBoolean_(self->address_, a3);
  return self;
}

- (void)dealloc
{
  JavaUtilRegexMatcher_closeImplWithLong_(self->address_);

  v3.receiver = self;
  v3.super_class = JavaUtilRegexMatcher;
  [(JavaUtilRegexMatcher *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [-[JavaUtilRegexMatcher getClass](self "getClass")];
  [(JavaUtilRegexMatcher *)self pattern];
  [(JavaUtilRegexMatcher *)self regionStart];
  [(JavaUtilRegexMatcher *)self regionEnd];
  if (self->matchFound_)
  {
    [(JavaUtilRegexMatcher *)self group];
  }

  return JreStrcat("$$@$ICI$$C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (int)endWithInt:(int)a3
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matchOffsets = self->matchOffsets_;
  if (!matchOffsets)
  {
    JreThrowNullPointerException();
  }

  v6 = 2 * a3;
  v7 = (2 * a3) | 1;
  size = matchOffsets->super.size_;
  if (v6 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6 | 1);
  }

  return *(&matchOffsets->super.size_ + v7 + 1);
}

- (id)groupWithInt:(int)a3
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matchOffsets = self->matchOffsets_;
  if (!matchOffsets)
  {
    goto LABEL_16;
  }

  v6 = 2 * a3;
  v7 = 2 * a3;
  size = matchOffsets->super.size_;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v9 = *(&matchOffsets->super.size_ + v7 + 1);
  v10 = v7 | 1;
  if ((v7 & 0x80000000) != 0 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7 | 1);
  }

  if (v9 == -1 || *(&self->matchOffsets_->super.size_ + v10 + 1) == -1)
  {
    return 0;
  }

  input = self->input_;
  if (!input)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  return [(NSString *)input substring:v9 endIndex:?];
}

- (int)startWithInt:(int)a3
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matchOffsets = self->matchOffsets_;
  if (!matchOffsets)
  {
    JreThrowNullPointerException();
  }

  v6 = (2 * a3);
  size = matchOffsets->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  return *(&matchOffsets->super.size_ + v6 + 1);
}

@end