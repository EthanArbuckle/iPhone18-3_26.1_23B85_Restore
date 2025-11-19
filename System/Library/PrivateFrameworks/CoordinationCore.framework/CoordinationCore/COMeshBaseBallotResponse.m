@interface COMeshBaseBallotResponse
- (COMeshBaseBallotResponse)initWithBallot:(id)a3 generation:(unint64_t)a4;
- (COMeshBaseBallotResponse)initWithBallot:(id)a3 generation:(unint64_t)a4 variant:(int64_t)a5;
- (COMeshBaseBallotResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMeshBaseBallotResponse

- (COMeshBaseBallotResponse)initWithBallot:(id)a3 generation:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = COMeshBaseBallotResponse;
  v7 = [(COMeshCommand *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    ballot = v7->_ballot;
    v7->_ballot = v8;

    v7->_generation = a4;
    v7->_variant = 1;
  }

  return v7;
}

- (COMeshBaseBallotResponse)initWithBallot:(id)a3 generation:(unint64_t)a4 variant:(int64_t)a5
{
  result = [(COMeshBaseBallotResponse *)self initWithBallot:a3 generation:a4];
  if (result)
  {
    result->_variant = a5;
  }

  return result;
}

- (COMeshBaseBallotResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = COMeshBaseBallotResponse;
  v5 = [(COMeshResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ballot"];
    ballot = v5->_ballot;
    v5->_ballot = v6;

    v8 = [v4 decodeIntegerForKey:@"variant"];
    v5->_variant = v8;
    if (v8)
    {
      v5->_generation = [v4 decodeInt64ForKey:@"generation"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = COMeshBaseBallotResponse;
  [(COMeshResponse *)&v7 encodeWithCoder:v4];
  v5 = [(COMeshBaseBallotResponse *)self ballot];
  [v4 encodeObject:v5 forKey:@"ballot"];

  v6 = [(COMeshBaseBallotResponse *)self variant];
  [v4 encodeInteger:v6 forKey:@"variant"];
  if (v6)
  {
    [v4 encodeInt64:-[COMeshBaseBallotResponse generation](self forKey:{"generation"), @"generation"}];
  }
}

@end