@interface JavaUtilRegexMatcher
- (BOOL)find;
- (BOOL)findWithInt:(int)int;
- (BOOL)lookingAt;
- (BOOL)matches;
- (JavaUtilRegexMatcher)initWithJavaUtilRegexPattern:(id)pattern withJavaLangCharSequence:(id)sequence;
- (NSString)description;
- (id)appendReplacementWithJavaLangStringBuffer:(id)buffer withNSString:(id)string;
- (id)appendTailWithJavaLangStringBuffer:(id)buffer;
- (id)groupWithInt:(int)int;
- (id)replaceAllWithNSString:(id)string;
- (id)replaceFirstWithNSString:(id)string;
- (id)reset;
- (id)resetWithJavaLangCharSequence:(id)sequence;
- (id)toMatchResult;
- (id)useAnchoringBoundsWithBoolean:(BOOL)boolean;
- (id)usePatternWithJavaUtilRegexPattern:(id)pattern;
- (id)useTransparentBoundsWithBoolean:(BOOL)boolean;
- (int)endWithInt:(int)int;
- (int)startWithInt:(int)int;
- (uint64_t)ensureMatch;
- (uint64_t)resetForInput;
- (void)dealloc;
@end

@implementation JavaUtilRegexMatcher

- (JavaUtilRegexMatcher)initWithJavaUtilRegexPattern:(id)pattern withJavaLangCharSequence:(id)sequence
{
  self->anchoringBounds_ = 1;
  [(JavaUtilRegexMatcher *)self usePatternWithJavaUtilRegexPattern:pattern];
  [(JavaUtilRegexMatcher *)self resetWithJavaLangCharSequence:sequence];
  return self;
}

- (id)appendReplacementWithJavaLangStringBuffer:(id)buffer withNSString:(id)string
{
  if (!buffer || (input = self->input_) == 0)
  {
    JreThrowNullPointerException();
  }

  [buffer appendWithNSString:{-[NSString substring:endIndex:](input, "substring:endIndex:", self->appendPos_, -[JavaUtilRegexMatcher start](self, "start"))}];
  sub_10014C5A8(self, buffer, string);
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

- (id)resetWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  v5 = [sequence length];

  return sub_10014C720(self, sequence, 0, v5);
}

- (id)usePatternWithJavaUtilRegexPattern:(id)pattern
{
  if (!pattern)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"pattern == null");
    objc_exception_throw(v7);
  }

  JreStrongAssign(&self->pattern_, pattern);
  address = self->address_;
  if (address)
  {
    JavaUtilRegexMatcher_closeImplWithLong_(address);
    self->address_ = 0;
  }

  self->address_ = JavaUtilRegexMatcher_openImplWithLong_(*(pattern + 1));
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
  JavaUtilRegexMatcher_setInputImplWithLong_withCharArray_withInt_withInt_(*(self + 16), *(self + 32), *(self + 40), *(self + 44));
  JavaUtilRegexMatcher_useAnchoringBoundsImplWithLong_withBoolean_(*(self + 16), *(self + 64));
  v2 = *(self + 16);
  v3 = *(self + 65);

  return JavaUtilRegexMatcher_useTransparentBoundsImplWithLong_withBoolean_(v2, v3);
}

- (id)appendTailWithJavaLangStringBuffer:(id)buffer
{
  if (self->appendPos_ < self->regionEnd_)
  {
    if (!buffer || (input = self->input_) == 0)
    {
      JreThrowNullPointerException();
    }

    [buffer appendWithNSString:{-[NSString substring:endIndex:](input, "substring:endIndex:")}];
  }

  return buffer;
}

- (id)replaceFirstWithNSString:(id)string
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
    [(JavaUtilRegexMatcher *)self appendReplacementWithJavaLangStringBuffer:v6 withNSString:string];
  }

  v7 = [(JavaUtilRegexMatcher *)self appendTailWithJavaLangStringBuffer:v6];
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v7 description];
}

- (id)replaceAllWithNSString:(id)string
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
      [(JavaUtilRegexMatcher *)self appendReplacementWithJavaLangStringBuffer:v6 withNSString:string];
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

- (BOOL)findWithInt:(int)int
{
  if (int < 0)
  {
    goto LABEL_5;
  }

  input = self->input_;
  if (!input)
  {
    goto LABEL_7;
  }

  if ([(NSString *)input length]< int)
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

  result = JavaUtilRegexMatcher_findImplWithLong_withInt_withIntArray_(self->address_, int, self->matchOffsets_);
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

- (id)useAnchoringBoundsWithBoolean:(BOOL)boolean
{
  self->anchoringBounds_ = boolean;
  JavaUtilRegexMatcher_useAnchoringBoundsImplWithLong_withBoolean_(self->address_, boolean);
  return self;
}

- (id)useTransparentBoundsWithBoolean:(BOOL)boolean
{
  self->transparentBounds_ = boolean;
  JavaUtilRegexMatcher_useTransparentBoundsImplWithLong_withBoolean_(self->address_, boolean);
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

- (int)endWithInt:(int)int
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matchOffsets = self->matchOffsets_;
  if (!matchOffsets)
  {
    JreThrowNullPointerException();
  }

  v6 = 2 * int;
  v7 = (2 * int) | 1;
  size = matchOffsets->super.size_;
  if (v6 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6 | 1);
  }

  return *(&matchOffsets->super.size_ + v7 + 1);
}

- (id)groupWithInt:(int)int
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matchOffsets = self->matchOffsets_;
  if (!matchOffsets)
  {
    goto LABEL_16;
  }

  v6 = 2 * int;
  v7 = 2 * int;
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

- (int)startWithInt:(int)int
{
  [JavaUtilRegexMatcher ensureMatch]_0(self);
  matchOffsets = self->matchOffsets_;
  if (!matchOffsets)
  {
    JreThrowNullPointerException();
  }

  v6 = (2 * int);
  size = matchOffsets->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  return *(&matchOffsets->super.size_ + v6 + 1);
}

@end