@interface COMeshElectionRequest
+ (id)acceptableResponses;
- (COMeshElectionRequest)initWithBallot:(id)a3 generation:(unint64_t)a4 listeningPort:(int)a5;
- (COMeshElectionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMeshElectionRequest

- (COMeshElectionRequest)initWithBallot:(id)a3 generation:(unint64_t)a4 listeningPort:(int)a5
{
  result = [(COMeshBaseBallotRequest *)self initWithBallot:a3 generation:a4];
  if (result)
  {
    result->_listeningPort = a5;
  }

  return result;
}

- (COMeshElectionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COMeshElectionRequest;
  v5 = [(COMeshBaseBallotRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listeningPort"];
    v5->_listeningPort = [v6 unsignedShortValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = COMeshElectionRequest;
  [(COMeshBaseBallotRequest *)&v6 encodeWithCoder:v4];
  if (self->_listeningPort)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[COMeshElectionRequest listeningPort](self, "listeningPort")}];
    [v4 encodeObject:v5 forKey:@"listeningPort"];
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