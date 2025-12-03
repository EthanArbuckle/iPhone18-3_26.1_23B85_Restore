@interface _HMFCFHTTPMessage
+ (id)dateFormatter;
+ (id)requestWithMethod:(id)method url:(id)url protocolVersion:(int64_t)version;
+ (id)responseWithStatusCode:(int64_t)code statusDescription:(id)description protocolVersion:(int64_t)version;
- (NSData)body;
- (NSDictionary)headerFields;
- (_HMFCFHTTPMessage)init;
- (_HMFCFHTTPMessage)initWithMessageRef:(__CFHTTPMessage *)ref;
- (id)date;
- (id)valueForHeaderField:(id)field;
- (int64_t)contentLength;
- (void)dealloc;
- (void)setBody:(id)body;
- (void)setContentLength:(int64_t)length;
- (void)setDate:(id)date;
- (void)setValue:(id)value forHeaderField:(id)field;
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

+ (id)requestWithMethod:(id)method url:(id)url protocolVersion:(int64_t)version
{
  v8 = *MEMORY[0x277CBECE8];
  urlCopy = url;
  methodCopy = method;
  v11 = HMFHTTPProtocolVersionString(version);
  Request = CFHTTPMessageCreateRequest(v8, methodCopy, urlCopy, v11);

  if (Request)
  {
    v13 = [[self alloc] initWithMessageRef:Request];
    CFRelease(Request);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)responseWithStatusCode:(int64_t)code statusDescription:(id)description protocolVersion:(int64_t)version
{
  v8 = *MEMORY[0x277CBECE8];
  descriptionCopy = description;
  v10 = HMFHTTPProtocolVersionString(version);
  Response = CFHTTPMessageCreateResponse(v8, code, descriptionCopy, v10);

  if (Response)
  {
    v12 = [[self alloc] initWithMessageRef:Response];
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

- (_HMFCFHTTPMessage)initWithMessageRef:(__CFHTTPMessage *)ref
{
  v6.receiver = self;
  v6.super_class = _HMFCFHTTPMessage;
  v4 = [(_HMFCFHTTPMessage *)&v6 init];
  if (v4)
  {
    v4->_message = CFRetain(ref);
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

- (id)valueForHeaderField:(id)field
{
  fieldCopy = field;
  v5 = CFHTTPMessageCopyHeaderFieldValue([(_HMFCFHTTPMessage *)self message], fieldCopy);

  return v5;
}

- (void)setValue:(id)value forHeaderField:(id)field
{
  fieldCopy = field;
  value = value;
  CFHTTPMessageSetHeaderFieldValue([(_HMFCFHTTPMessage *)self message], fieldCopy, value);
}

- (id)date
{
  v2 = [(_HMFCFHTTPMessage *)self valueForHeaderField:@"Date"];
  dateFormatter = [objc_opt_class() dateFormatter];
  v4 = [dateFormatter dateFromString:v2];

  return v4;
}

- (void)setDate:(id)date
{
  dateCopy = date;
  dateFormatter = [objc_opt_class() dateFormatter];
  v6 = [dateFormatter stringFromDate:dateCopy];

  [(_HMFCFHTTPMessage *)self setValue:v6 forHeaderField:@"Date"];
}

- (int64_t)contentLength
{
  v2 = [(_HMFCFHTTPMessage *)self valueForHeaderField:@"Content-Length"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)setContentLength:(int64_t)length
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", length];
  [(_HMFCFHTTPMessage *)self setValue:v4 forHeaderField:@"Content-Length"];
}

- (NSData)body
{
  v2 = CFHTTPMessageCopyBody([(_HMFCFHTTPMessage *)self message]);

  return v2;
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  CFHTTPMessageSetBody([(_HMFCFHTTPMessage *)self message], bodyCopy);
  v5 = [(__CFData *)bodyCopy length];

  [(_HMFCFHTTPMessage *)self setContentLength:v5];
}

@end