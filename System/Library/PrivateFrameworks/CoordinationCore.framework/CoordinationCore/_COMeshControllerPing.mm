@interface _COMeshControllerPing
+ (id)acceptableResponses;
- (_COMeshControllerPing)initWithCoder:(id)coder;
- (_COMeshControllerPing)initWithTimeout:(double)timeout listeningPort:(int)port;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _COMeshControllerPing

- (_COMeshControllerPing)initWithTimeout:(double)timeout listeningPort:(int)port
{
  v7.receiver = self;
  v7.super_class = _COMeshControllerPing;
  result = [(COMeshCommand *)&v7 init];
  if (result)
  {
    result->_responseTimeout = timeout;
    result->_listeningPort = port;
  }

  return result;
}

- (_COMeshControllerPing)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _COMeshControllerPing;
  v5 = [(COMeshCommand *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_listeningPort = [coderCopy decodeInt32ForKey:@"listeningPort"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _COMeshControllerPing;
  [(COMeshCommand *)&v5 encodeWithCoder:coderCopy];
  if (self->_listeningPort >= 1)
  {
    [coderCopy encodeInt32:? forKey:?];
  }
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

@end