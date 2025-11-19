@interface GKLeaderboardScoreRangeRequest
- (BOOL)isEqual:(id)a3;
- (GKLeaderboardScoreRangeRequest)initWithCoder:(id)a3;
- (_NSRange)range;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKLeaderboardScoreRangeRequest

- (GKLeaderboardScoreRangeRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GKLeaderboardScoreRangeRequest;
  v5 = [(GKLeaderboardScoreRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_range.location = [v4 decodeIntegerForKey:@"location"];
    v5->_range.length = [v4 decodeIntegerForKey:@"length"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = self;
  v5.receiver = self;
  v5.super_class = GKLeaderboardScoreRangeRequest;
  v4 = a3;
  [(GKLeaderboardScoreRequest *)&v5 encodeWithCoder:v4];
  v3 = (v3 + 64);
  [v4 encodeInteger:v3->super.super.isa forKey:{@"location", v5.receiver, v5.super_class}];
  [v4 encodeInteger:v3->super._playerInternal forKey:@"length"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKLeaderboardScoreRangeRequest;
  if ([(GKLeaderboardScoreRequest *)&v8 isEqual:v4])
  {
    v6 = self->_range.location != v4[8] || self->_range.length != v4[9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end