@interface COMeshBaseBallotRequest
- (COMeshBaseBallotRequest)initWithBallot:(id)ballot generation:(unint64_t)generation;
- (COMeshBaseBallotRequest)initWithBallot:(id)ballot generation:(unint64_t)generation variant:(int64_t)variant;
- (COMeshBaseBallotRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMeshBaseBallotRequest

- (COMeshBaseBallotRequest)initWithBallot:(id)ballot generation:(unint64_t)generation
{
  ballotCopy = ballot;
  v11.receiver = self;
  v11.super_class = COMeshBaseBallotRequest;
  v7 = [(COMeshCommand *)&v11 init];
  if (v7)
  {
    v8 = [ballotCopy copy];
    ballot = v7->_ballot;
    v7->_ballot = v8;

    v7->_generation = generation;
    v7->_variant = 1;
  }

  return v7;
}

- (COMeshBaseBallotRequest)initWithBallot:(id)ballot generation:(unint64_t)generation variant:(int64_t)variant
{
  result = [(COMeshBaseBallotRequest *)self initWithBallot:ballot generation:generation];
  if (result)
  {
    result->_variant = variant;
  }

  return result;
}

- (COMeshBaseBallotRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = COMeshBaseBallotRequest;
  v5 = [(COMeshCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ballot"];
    ballot = v5->_ballot;
    v5->_ballot = v6;

    v8 = [coderCopy decodeIntegerForKey:@"variant"];
    v5->_variant = v8;
    if (v8)
    {
      v5->_generation = [coderCopy decodeInt64ForKey:@"generation"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = COMeshBaseBallotRequest;
  [(COMeshCommand *)&v7 encodeWithCoder:coderCopy];
  ballot = [(COMeshBaseBallotRequest *)self ballot];
  [coderCopy encodeObject:ballot forKey:@"ballot"];

  variant = [(COMeshBaseBallotRequest *)self variant];
  [coderCopy encodeInteger:variant forKey:@"variant"];
  if (variant)
  {
    [coderCopy encodeInt64:-[COMeshBaseBallotRequest generation](self forKey:{"generation"), @"generation"}];
  }
}

@end