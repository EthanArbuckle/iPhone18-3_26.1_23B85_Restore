@interface JavaNetURLConnection
+ (BOOL)getDefaultAllowUserInteraction;
+ (id)getDefaultRequestPropertyWithNSString:(id)a3;
+ (void)initialize;
+ (void)setDefaultAllowUserInteractionWithBoolean:(BOOL)a3;
+ (void)setDefaultRequestPropertyWithNSString:(id)a3 withNSString:(id)a4;
- (id)description;
- (id)getContent;
- (id)getContentWithIOSClassArray:(id)a3;
- (id)getPermission;
- (id)getRequestProperties;
- (int64_t)getHeaderFieldDateWithNSString:(id)a3 withLong:(int64_t)a4;
- (int64_t)getLastModified;
- (uint64_t)checkNotConnected;
- (void)addRequestPropertyWithNSString:(id)a3 withNSString:(id)a4;
- (void)dealloc;
- (void)setConnectTimeoutWithInt:(int)a3;
- (void)setReadTimeoutWithInt:(int)a3;
- (void)setRequestPropertyWithNSString:(id)a3 withNSString:(id)a4;
@end

@implementation JavaNetURLConnection

- (id)getContent
{
  if (!self->connected_)
  {
    [(JavaNetURLConnection *)self connect];
  }

  if (!JreStrongAssign(&self->contentType_, [(JavaNetURLConnection *)self getContentType]))
  {
    url = self->url_;
    if (!url)
    {
      goto LABEL_13;
    }

    v4 = JavaNetURLConnection_guessContentTypeFromNameWithNSString_([(JavaNetURL *)url getFile]);
    if (!JreStrongAssign(&self->contentType_, v4))
    {
      v5 = JavaNetURLConnection_guessContentTypeFromStreamWithJavaIoInputStream_([(JavaNetURLConnection *)self getInputStream]);
      JreStrongAssign(&self->contentType_, v5);
    }
  }

  contentType = self->contentType_;
  if (!contentType)
  {
    return 0;
  }

  v7 = sub_100214000(self, contentType);
  if (!v7)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  return [v7 getContentWithJavaNetURLConnection:self];
}

- (id)getContentWithIOSClassArray:(id)a3
{
  if (!self->connected_)
  {
    [(JavaNetURLConnection *)self connect];
  }

  if (!JreStrongAssign(&self->contentType_, [(JavaNetURLConnection *)self getContentType]))
  {
    url = self->url_;
    if (!url)
    {
      goto LABEL_13;
    }

    v6 = JavaNetURLConnection_guessContentTypeFromNameWithNSString_([(JavaNetURL *)url getFile]);
    if (!JreStrongAssign(&self->contentType_, v6))
    {
      v7 = JavaNetURLConnection_guessContentTypeFromStreamWithJavaIoInputStream_([(JavaNetURLConnection *)self getInputStream]);
      JreStrongAssign(&self->contentType_, v7);
    }
  }

  contentType = self->contentType_;
  if (!contentType)
  {
    return 0;
  }

  v9 = sub_100214000(self, contentType);
  if (!v9)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  return [v9 getContentWithJavaNetURLConnection:self withIOSClassArray:a3];
}

+ (BOOL)getDefaultAllowUserInteraction
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  return byte_1005550C8;
}

+ (id)getDefaultRequestPropertyWithNSString:(id)a3
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  return 0;
}

- (id)getRequestProperties
{
  [JavaNetURLConnection checkNotConnected]_0(self);

  return JavaUtilCollections_emptyMap();
}

- (uint64_t)checkNotConnected
{
  if (*(result + 33) == 1)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"Already connected");
    objc_exception_throw(v1);
  }

  return result;
}

- (void)addRequestPropertyWithNSString:(id)a3 withNSString:(id)a4
{
  [JavaNetURLConnection checkNotConnected]_0(self);
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"field == null");
    objc_exception_throw(v5);
  }
}

- (int64_t)getHeaderFieldDateWithNSString:(id)a3 withLong:(int64_t)a4
{
  v5 = [(JavaNetURLConnection *)self getHeaderFieldWithNSString:a3];
  if (v5)
  {
    return JavaUtilDate_parseWithNSString_(v5);
  }

  return a4;
}

- (int64_t)getLastModified
{
  result = self->lastModified_;
  if (result == -1)
  {
    result = [(JavaNetURLConnection *)self getHeaderFieldDateWithNSString:@"Last-Modified" withLong:0];
    self->lastModified_ = result;
  }

  return result;
}

- (id)getPermission
{
  v2 = new_JavaSecurityAllPermission_init();

  return v2;
}

+ (void)setDefaultAllowUserInteractionWithBoolean:(BOOL)a3
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }

  byte_1005550C8 = a3;
}

+ (void)setDefaultRequestPropertyWithNSString:(id)a3 withNSString:(id)a4
{
  if ((atomic_load_explicit(JavaNetURLConnection__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100214DC8();
  }
}

- (void)setRequestPropertyWithNSString:(id)a3 withNSString:(id)a4
{
  [JavaNetURLConnection checkNotConnected]_0(self);
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"field == null");
    objc_exception_throw(v5);
  }
}

- (void)setConnectTimeoutWithInt:(int)a3
{
  if (a3 < 0)
  {
    v3 = new_JavaLangIllegalArgumentException_initWithNSString_(@"timeoutMillis < 0");
    objc_exception_throw(v3);
  }

  self->connectTimeout_ = a3;
}

- (void)setReadTimeoutWithInt:(int)a3
{
  if (a3 < 0)
  {
    v3 = new_JavaLangIllegalArgumentException_initWithNSString_(@"timeoutMillis < 0");
    objc_exception_throw(v3);
  }

  self->readTimeout_ = a3;
}

- (id)description
{
  v3 = [-[JavaNetURLConnection getClass](self "getClass")];
  url = self->url_;
  if (!url)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetURL *)url description];
  return JreStrcat("$C$", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURLConnection;
  [(JavaNetURLConnection *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaUtilHashtable_init();
    JreStrongAssignAndConsume(&JavaNetURLConnection_contentHandlers_, v2);
    atomic_store(1u, JavaNetURLConnection__initialized);
  }
}

@end