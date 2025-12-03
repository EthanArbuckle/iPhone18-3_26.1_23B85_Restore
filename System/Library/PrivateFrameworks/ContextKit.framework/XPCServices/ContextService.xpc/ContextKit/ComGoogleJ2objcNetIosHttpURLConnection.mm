@interface ComGoogleJ2objcNetIosHttpURLConnection
+ (void)initialize;
- (ComGoogleJ2objcNetIosHttpURLConnection)initWithJavaNetURL:(id)l;
- (JavaUtilHashMap)getHeaderFieldsDoNotForceResponse;
- (id)getHeaderFieldWithNSString:(id)string;
- (id)getHeaderFields;
- (id)getInputStream;
- (id)getOutputStream;
- (id)getRequestProperties;
- (id)getRequestPropertyWithNSString:(id)string;
- (id)getResponseHeaders;
- (int)getResponseCode;
- (int64_t)getHeaderFieldDateWithNSString:(id)string withLong:(int64_t)long;
- (int64_t)getHeaderFieldLongDoNotForceResponseWithNSString:(id)string withLong:(int64_t)long;
- (int64_t)getHeaderFieldLongWithNSString:(id)string withLong:(int64_t)long;
- (int64_t)getIfModifiedSince;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)addRequestPropertyWithNSString:(id)string withNSString:(id)sString;
- (void)dealloc;
- (void)disconnect;
- (void)getResponse;
- (void)setIfModifiedSinceWithLong:(int64_t)long;
- (void)setRequestPropertyWithNSString:(id)string withNSString:(id)sString;
@end

@implementation ComGoogleJ2objcNetIosHttpURLConnection

- (ComGoogleJ2objcNetIosHttpURLConnection)initWithJavaNetURL:(id)l
{
  JavaNetHttpURLConnection_initWithJavaNetURL_(self, l);
  v4 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->headers_, v4);
  return self;
}

- (void)disconnect
{
  self->super.super.connected_ = 0;
  JreStrongAssign(&self->nativeRequestData_, 0);
  JreStrongAssign(&self->responseDataStream_, 0);
  JreStrongAssign(&self->errorDataStream_, 0);

  JreStrongAssign(&self->responseException_, 0);
}

- (id)getInputStream
{
  if (!self->super.super.doInput_)
  {
    v5 = new_JavaNetProtocolException_initWithNSString_(@"This protocol does not support input");
    goto LABEL_9;
  }

  responseCode = self->super.responseCode_;
  if (responseCode == -1)
  {
    sub_10026D5AC(self);
    responseCode = self->super.responseCode_;
  }

  if (responseCode >= 400)
  {
    url = self->super.super.url_;
    if (!url)
    {
      JreThrowNullPointerException();
    }

    v5 = new_JavaIoFileNotFoundException_initWithNSString_([(JavaNetURL *)url description]);
LABEL_9:
    objc_exception_throw(v5);
  }

  return self->responseDataStream_;
}

- (id)getHeaderFields
{
  if (self->super.responseCode_ == -1)
  {
    sub_10026D5AC(self);
  }

  return [ComGoogleJ2objcNetIosHttpURLConnection getHeaderFieldsDoNotForceResponse]_0(self);
}

- (JavaUtilHashMap)getHeaderFieldsDoNotForceResponse
{
  v2 = new_JavaUtilHashMap_init();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(self + 136);
  if (!v3)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v4 = v2;
  v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_14;
        }

        getKey = [*(*(&v15 + 1) + 8 * i) getKey];
        getValue = [v9 getValue];
        v12 = [(JavaUtilHashMap *)v4 getWithId:getKey];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = new_JavaUtilArrayList_init();
          [(JavaUtilHashMap *)v4 putWithId:getKey withId:v13];
          if (!v13)
          {
            goto LABEL_14;
          }
        }

        [(JavaUtilArrayList *)v13 addWithId:getValue];
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)getResponseHeaders
{
  if (self->super.responseCode_ == -1)
  {
    sub_10026D5AC(self);
  }

  return self->headers_;
}

- (id)getHeaderFieldWithNSString:(id)string
{
  if (self->super.responseCode_ == -1)
  {
    sub_10026D5AC(self);
  }

  return sub_10026CD7C(self, string);
}

- (int64_t)getHeaderFieldDateWithNSString:(id)string withLong:(int64_t)long
{
  v4 = [(ComGoogleJ2objcNetIosHttpURLConnection *)self getHeaderFieldWithNSString:string];
  v5 = [(JavaTextDateFormat *)new_JavaTextSimpleDateFormat_initWithNSString_(off_1005537B8) parseWithNSString:v4];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  return [v5 getTime];
}

- (int64_t)getHeaderFieldLongWithNSString:(id)string withLong:(int64_t)long
{
  v5 = [(ComGoogleJ2objcNetIosHttpURLConnection *)self getHeaderFieldWithNSString:string];

  return sub_10026CFEC(v5, long, v6, v7, v8, v9, v10, v11);
}

- (int64_t)getHeaderFieldLongDoNotForceResponseWithNSString:(id)string withLong:(int64_t)long
{
  v5 = sub_10026CD7C(self, string);

  return sub_10026CFEC(v5, long, v6, v7, v8, v9, v10, v11);
}

- (id)getRequestProperties
{
  if (self->super.super.connected_)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"Cannot access request header fields after connection is set");
    objc_exception_throw(v4);
  }

  return [ComGoogleJ2objcNetIosHttpURLConnection getHeaderFieldsDoNotForceResponse]_0(self);
}

- (void)setRequestPropertyWithNSString:(id)string withNSString:(id)sString
{
  if (self->super.super.connected_)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"Cannot set request property after connection is made");
    goto LABEL_8;
  }

  if (!string)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"field == null");
LABEL_8:
    objc_exception_throw(v4);
  }

  sub_10026D120(self, string, sString);
}

- (void)addRequestPropertyWithNSString:(id)string withNSString:(id)sString
{
  if (self->super.super.connected_)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"Cannot add request property after connection is made");
    goto LABEL_8;
  }

  if (!string)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"field == null");
LABEL_8:
    objc_exception_throw(v4);
  }

  sub_10026D2DC(self, string, sString);
}

- (id)getRequestPropertyWithNSString:(id)string
{
  if (string)
  {
    return sub_10026CD7C(self, string);
  }

  else
  {
    return 0;
  }
}

- (int64_t)getIfModifiedSince
{
  v2 = sub_10026CD7C(self, @"If-Modified-Since");

  return sub_10026CFEC(v2, 0, v3, v4, v5, v6, v7, v8);
}

- (void)setIfModifiedSinceWithLong:(int64_t)long
{
  v6.receiver = self;
  v6.super_class = ComGoogleJ2objcNetIosHttpURLConnection;
  [(JavaNetURLConnection *)&v6 setIfModifiedSinceWithLong:long];
  if (self->super.super.ifModifiedSince_)
  {
    v4 = new_JavaTextSimpleDateFormat_initWithNSString_(off_1005537B8);
    v5 = [(JavaTextDateFormat *)v4 formatWithJavaUtilDate:new_JavaUtilDate_initWithLong_(self->super.super.ifModifiedSince_)];
    sub_10026D120(self, @"If-Modified-Since", v5);
  }

  else
  {
    sub_10026D440(self, @"If-Modified-Since");
  }
}

- (id)getOutputStream
{
  if (self->super.super.connected_)
  {
    objc_exception_throw([[JavaLangIllegalStateException alloc] initWithNSString:@"Cannot get output stream after connection is made"]);
  }

  result = self->nativeRequestData_;
  if (!result)
  {
    JreStrongAssign(&self->nativeRequestData_, +[NSDataOutputStream stream]);
    return self->nativeRequestData_;
  }

  return result;
}

- (void)getResponse
{
  if (self->super.responseCode_ == -1)
  {
    sub_10026D5AC(self);
  }
}

- (int)getResponseCode
{
  result = self->super.responseCode_;
  if (result == -1)
  {
    sub_10026D5AC(self);
    return self->super.responseCode_;
  }

  return result;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  if (!self->super.instanceFollowRedirects_ || (v8 = request, ([objc_msgSend(objc_msgSend(redirection URL] & 1) == 0))
  {
    v8 = 0;
  }

  v9 = *(handler + 2);

  v9(handler, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComGoogleJ2objcNetIosHttpURLConnection;
  [(JavaNetHttpURLConnection *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_1005568E0, v2);
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(100) withId:@"Continue"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(101) withId:@"Switching Protocols"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(102) withId:@"Processing"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(200) withId:@"OK"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(201) withId:@"Created"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(202) withId:@"Accepted"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(203) withId:@"Non Authoritative Information"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(204) withId:@"No Content"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(205) withId:@"Reset Content"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(206) withId:@"Partial Content"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(207) withId:@"Multi-Status"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(300) withId:@"Multiple Choices"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(301) withId:@"Moved Permanently"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(302) withId:@"Moved Temporarily"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(303) withId:@"See Other"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(304) withId:@"Not Modified"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(305) withId:@"Use Proxy"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(307) withId:@"Temporary Redirect"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(400) withId:@"Bad Request"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(401) withId:@"Unauthorized"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(402) withId:@"Payment Required"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(403) withId:@"Forbidden"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(404) withId:@"Not Found"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(405) withId:@"Method Not Allowed"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(406) withId:@"Not Acceptable"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(407) withId:@"Proxy Authentication Required"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(408) withId:@"Request Timeout"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(409) withId:@"Conflict"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(410) withId:@"Gone"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(411) withId:@"Length Required"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(412) withId:@"Precondition Failed"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(413) withId:@"Request Too Long"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(414) withId:@"Request-URI Too Long"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(415) withId:@"Unsupported Media Type"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(416) withId:@"Requested Range Not Satisfiable"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(417) withId:@"Expectation Failed"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(418) withId:@"Unprocessable Entity"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(419) withId:@"Insufficient Space On Resource"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(420) withId:@"Method Failure"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(423) withId:@"Locked"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(424) withId:@"Failed Dependency"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(500) withId:@"Internal Server Error"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(501) withId:@"Not Implemented"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(502) withId:@"Bad Gateway"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(503) withId:@"Service Unavailable"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(504) withId:@"Gateway Timeout"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(505) withId:@"Http Version Not Supported"];
    [qword_1005568E0 putWithId:JavaLangInteger_valueOfWithInt_(507) withId:@"Insufficient Storage"];
    atomic_store(1u, ComGoogleJ2objcNetIosHttpURLConnection__initialized);
  }
}

@end