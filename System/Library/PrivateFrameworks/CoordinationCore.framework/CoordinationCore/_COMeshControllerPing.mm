@interface _COMeshControllerPing
+ (id)acceptableResponses;
- (_COMeshControllerPing)initWithCoder:(id)a3;
- (_COMeshControllerPing)initWithTimeout:(double)a3 listeningPort:(int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _COMeshControllerPing

- (_COMeshControllerPing)initWithTimeout:(double)a3 listeningPort:(int)a4
{
  v7.receiver = self;
  v7.super_class = _COMeshControllerPing;
  result = [(COMeshCommand *)&v7 init];
  if (result)
  {
    result->_responseTimeout = a3;
    result->_listeningPort = a4;
  }

  return result;
}

- (_COMeshControllerPing)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _COMeshControllerPing;
  v5 = [(COMeshCommand *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_listeningPort = [v4 decodeInt32ForKey:@"listeningPort"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _COMeshControllerPing;
  [(COMeshCommand *)&v5 encodeWithCoder:v4];
  if (self->_listeningPort >= 1)
  {
    [v4 encodeInt32:? forKey:?];
  }
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

@end