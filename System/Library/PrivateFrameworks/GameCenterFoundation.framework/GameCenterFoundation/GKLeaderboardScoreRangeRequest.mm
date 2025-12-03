@interface GKLeaderboardScoreRangeRequest
- (BOOL)isEqual:(id)equal;
- (GKLeaderboardScoreRangeRequest)initWithCoder:(id)coder;
- (_NSRange)range;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKLeaderboardScoreRangeRequest

- (GKLeaderboardScoreRangeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GKLeaderboardScoreRangeRequest;
  v5 = [(GKLeaderboardScoreRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_range.location = [coderCopy decodeIntegerForKey:@"location"];
    v5->_range.length = [coderCopy decodeIntegerForKey:@"length"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = GKLeaderboardScoreRangeRequest;
  coderCopy = coder;
  [(GKLeaderboardScoreRequest *)&v5 encodeWithCoder:coderCopy];
  selfCopy = (selfCopy + 64);
  [coderCopy encodeInteger:selfCopy->super.super.isa forKey:{@"location", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:selfCopy->super._playerInternal forKey:@"length"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = GKLeaderboardScoreRangeRequest;
  if ([(GKLeaderboardScoreRequest *)&v8 isEqual:equalCopy])
  {
    v6 = self->_range.location != equalCopy[8] || self->_range.length != equalCopy[9];
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