@interface _HMFCFHTTPMessage
+ (id)dateFormatter;
+ (id)requestWithMethod:(id)a3 url:(id)a4 protocolVersion:(int64_t)a5;
+ (id)responseWithStatusCode:(int64_t)a3 statusDescription:(id)a4 protocolVersion:(int64_t)a5;
- (NSData)body;
- (NSDictionary)headerFields;
- (_HMFCFHTTPMessage)init;
- (_HMFCFHTTPMessage)initWithMessageRef:(__CFHTTPMessage *)a3;
- (id)date;
- (id)valueForHeaderField:(id)a3;
- (int64_t)contentLength;
- (void)dealloc;
- (void)setBody:(id)a3;
- (void)setContentLength:(int64_t)a3;
- (void)setDate:(id)a3;
- (void)setValue:(id)a3 forHeaderField:(id)a4;
@end

@implementation _HMFCFHTTPMessage

+ (id)dateFormatter
{
  if (qword_280AFC5A8 != -1)
  {
    dispatch_once(&qword_280AFC5A8, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_57;

  return v3;
}

+ (id)requestWithMethod:(id)a3 url:(id)a4 protocolVersion:(int64_t)a5
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = a4;
  v10 = a3;
  v11 = HMFHTTPProtocolVersionString(a5);
  Request = CFHTTPMessageCreateRequest(v8, v10, v9, v11);

  if (Request)
  {
    v13 = [[a1 alloc] initWithMessageRef:Request];
    CFRelease(Request);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)responseWithStatusCode:(int64_t)a3 statusDescription:(id)a4 protocolVersion:(int64_t)a5
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = a4;
  v10 = HMFHTTPProtocolVersionString(a5);
  Response = CFHTTPMessageCreateResponse(v8, a3, v9, v10);

  if (Response)
  {
    v12 = [[a1 alloc] initWithMessageRef:Response];
    CFRelease(Response);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_HMFCFHTTPMessage)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (_HMFCFHTTPMessage)initWithMessageRef:(__CFHTTPMessage *)a3
{
  v6.receiver = self;
  v6.super_class = _HMFCFHTTPMessage;
  v4 = [(_HMFCFHTTPMessage *)&v6 init];
  if (v4)
  {
    v4->_message = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  message = self->_message;
  if (message)
  {
    CFRelease(message);
  }

  v4.receiver = self;
  v4.super_class = _HMFCFHTTPMessage;
  [(_HMFCFHTTPMessage *)&v4 dealloc];
}

- (NSDictionary)headerFields
{
  v2 = CFHTTPMessageCopyAllHeaderFields([(_HMFCFHTTPMessage *)self message]);

  return v2;
}

- (id)valueForHeaderField:(id)a3
{
  v4 = a3;
  v5 = CFHTTPMessageCopyHeaderFieldValue([(_HMFCFHTTPMessage *)self message], v4);

  return v5;
}

- (void)setValue:(id)a3 forHeaderField:(id)a4
{
  v6 = a4;
  value = a3;
  CFHTTPMessageSetHeaderFieldValue([(_HMFCFHTTPMessage *)self message], v6, value);
}

- (id)date
{
  v2 = [(_HMFCFHTTPMessage *)self valueForHeaderField:@"Date"];
  v3 = [objc_opt_class() dateFormatter];
  v4 = [v3 dateFromString:v2];

  return v4;
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() dateFormatter];
  v6 = [v5 stringFromDate:v4];

  [(_HMFCFHTTPMessage *)self setValue:v6 forHeaderField:@"Date"];
}

- (int64_t)contentLength
{
  v2 = [(_HMFCFHTTPMessage *)self valueForHeaderField:@"Content-Length"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)setContentLength:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  [(_HMFCFHTTPMessage *)self setValue:v4 forHeaderField:@"Content-Length"];
}

- (NSData)body
{
  v2 = CFHTTPMessageCopyBody([(_HMFCFHTTPMessage *)self message]);

  return v2;
}

- (void)setBody:(id)a3
{
  v4 = a3;
  CFHTTPMessageSetBody([(_HMFCFHTTPMessage *)self message], v4);
  v5 = [(__CFData *)v4 length];

  [(_HMFCFHTTPMessage *)self setContentLength:v5];
}

@end