@interface JavaNetHttpURLConnection
+ (BOOL)getFollowRedirects;
+ (void)initialize;
+ (void)setFollowRedirectsWithBoolean:(BOOL)a3;
- (id)getContentEncoding;
- (id)getPermission;
- (id)getResponseMessage;
- (int)getResponseCode;
- (int64_t)getHeaderFieldDateWithNSString:(id)a3 withLong:(int64_t)a4;
- (void)dealloc;
- (void)setChunkedStreamingModeWithInt:(int)a3;
- (void)setFixedLengthStreamingModeWithLong:(int64_t)a3;
- (void)setRequestMethodWithNSString:(id)a3;
@end

@implementation JavaNetHttpURLConnection

+ (BOOL)getFollowRedirects
{
  if ((atomic_load_explicit(JavaNetHttpURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242A58();
  }

  return byte_100552238;
}

- (id)getPermission
{
  url = self->super.url_;
  if (!url)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetURL *)url getPort];
  v4 = [(JavaNetURL *)self->super.url_ getHost];
  JreStrcat("$CI", v5, v6, v7, v8, v9, v10, v11, v4);
  v12 = new_JavaNetSocketPermission_initWithNSString_withNSString_();

  return v12;
}

- (int)getResponseCode
{
  [(JavaNetURLConnection *)self getInputStream];
  v3 = [(JavaNetURLConnection *)self getHeaderFieldWithInt:0];
  if (!v3)
  {
    return -1;
  }

  v4 = [v3 trim];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 indexOfString:@" "];
  v7 = v6 + 1;
  if (v6 == -1)
  {
    return -1;
  }

  v9 = (v6 + 4);
  if (v9 > [v5 length])
  {
    v9 = [v5 length];
  }

  v10 = [v5 substring:v7 endIndex:v9];
  self->responseCode_ = JavaLangInteger_parseIntWithNSString_(v10, v11, v12, v13, v14, v15, v16, v17);
  v18 = (v9 + 1);
  if (v18 <= [v5 length])
  {
    JreStrongAssign(&self->responseMessage_, [v5 substring:v18]);
  }

  return self->responseCode_;
}

- (id)getResponseMessage
{
  result = self->responseMessage_;
  if (!result)
  {
    [(JavaNetHttpURLConnection *)self getResponseCode];
    return self->responseMessage_;
  }

  return result;
}

+ (void)setFollowRedirectsWithBoolean:(BOOL)a3
{
  if ((atomic_load_explicit(JavaNetHttpURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100242A58();
  }

  byte_100552238 = a3;
}

- (void)setRequestMethodWithNSString:(id)a3
{
  if (self->super.connected_)
  {
    v15 = @"Connection already established";
LABEL_12:
    v16 = new_JavaNetProtocolException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  if (!qword_100555368)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v5 = (qword_100555368 + 24);
  v6 = qword_100555368 + 24 + 8 * *(qword_100555368 + 8);
  do
  {
    if (v5 >= v6)
    {
      JavaUtilArrays_toStringWithNSObjectArray_(qword_100555368);
      v15 = JreStrcat("$$$$", v8, v9, v10, v11, v12, v13, v14, @"Unknown method '");
      goto LABEL_12;
    }

    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_10;
    }

    ++v5;
  }

  while (([v7 isEqual:a3] & 1) == 0);

  JreStrongAssign(&self->method_, v7);
}

- (id)getContentEncoding
{
  v3.receiver = self;
  v3.super_class = JavaNetHttpURLConnection;
  return [(JavaNetURLConnection *)&v3 getContentEncoding];
}

- (int64_t)getHeaderFieldDateWithNSString:(id)a3 withLong:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = JavaNetHttpURLConnection;
  return [(JavaNetURLConnection *)&v5 getHeaderFieldDateWithNSString:a3 withLong:a4];
}

- (void)setFixedLengthStreamingModeWithLong:(int64_t)a3
{
  if (self->super.connected_)
  {
    v5 = @"Already connected";
LABEL_7:
    v6 = new_JavaLangIllegalStateException_initWithNSString_(v5);
    goto LABEL_9;
  }

  if (self->chunkLength_ >= 1)
  {
    v5 = @"Already in chunked mode";
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"contentLength < 0");
LABEL_9:
    objc_exception_throw(v6);
  }

  self->fixedContentLength_ = JavaLangMath_minWithLong_withLong_(a3, 0x7FFFFFFFLL);
  self->fixedContentLengthLong_ = a3;
}

- (void)setChunkedStreamingModeWithInt:(int)a3
{
  if (self->super.connected_)
  {
    v4 = @"Already connected";
    goto LABEL_9;
  }

  if ((self->fixedContentLength_ & 0x80000000) == 0)
  {
    v4 = @"Already in fixed-length mode";
LABEL_9:
    v5 = new_JavaLangIllegalStateException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  if (a3 >= 1)
  {
    v3 = a3;
  }

  else
  {
    v3 = 1024;
  }

  self->chunkLength_ = v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetHttpURLConnection;
  [(JavaNetURLConnection *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3[0] = off_10045C068;
    v3[1] = off_10045C078;
    v3[2] = off_10045C088;
    v4 = @"TRACE";
    v2 = [IOSObjectArray newArrayWithObjects:v3 count:7 type:NSString_class_()];
    JreStrongAssignAndConsume(&qword_100555368, v2);
    atomic_store(1u, JavaNetHttpURLConnection__initialized);
  }
}

@end