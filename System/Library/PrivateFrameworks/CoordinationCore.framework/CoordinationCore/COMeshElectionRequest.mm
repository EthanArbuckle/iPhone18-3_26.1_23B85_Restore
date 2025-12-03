@interface COMeshElectionRequest
+ (id)acceptableResponses;
- (COMeshElectionRequest)initWithBallot:(id)ballot generation:(unint64_t)generation listeningPort:(int)port;
- (COMeshElectionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMeshElectionRequest

- (COMeshElectionRequest)initWithBallot:(id)ballot generation:(unint64_t)generation listeningPort:(int)port
{
  result = [(COMeshBaseBallotRequest *)self initWithBallot:ballot generation:generation];
  if (result)
  {
    result->_listeningPort = port;
  }

  return result;
}

- (COMeshElectionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = COMeshElectionRequest;
  v5 = [(COMeshBaseBallotRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listeningPort"];
    v5->_listeningPort = [v6 unsignedShortValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = COMeshElectionRequest;
  [(COMeshBaseBallotRequest *)&v6 encodeWithCoder:coderCopy];
  if (self->_listeningPort)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[COMeshElectionRequest listeningPort](self, "listeningPort")}];
    [coderCopy encodeObject:v5 forKey:@"listeningPort"];
  }
}

+ (id)acceptableResponses
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];

  return v4;
}

@end