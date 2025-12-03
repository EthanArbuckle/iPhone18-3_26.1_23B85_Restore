@interface PAREngagedResult
- (PAREngagedResult)init;
- (PAREngagedResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAREngagedResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(PAREngagedResult *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  searchString = [(PAREngagedResult *)self searchString];
  [coderCopy encodeObject:searchString forKey:@"searchString"];

  engagementTime = [(PAREngagedResult *)self engagementTime];
  [coderCopy encodeObject:engagementTime forKey:@"engagementTime"];

  [coderCopy encodeInt32:-[PAREngagedResult type](self forKey:{"type"), @"type"}];
  [(PAREngagedResult *)self freshnessScore];
  [coderCopy encodeDouble:@"freshnessScore" forKey:?];
  [(PAREngagedResult *)self score];
  [coderCopy encodeDouble:@"score" forKey:?];
  encodedNormalizedTopic = [(PAREngagedResult *)self encodedNormalizedTopic];
  [coderCopy encodeObject:encodedNormalizedTopic forKey:@"encodedNormalizedTopic"];
}

- (PAREngagedResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PAREngagedResult;
  v5 = [(PAREngagedResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(PAREngagedResult *)v5 setTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    [(PAREngagedResult *)v5 setSearchString:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engagementTime"];
    [(PAREngagedResult *)v5 setEngagementTime:v8];

    -[PAREngagedResult setType:](v5, "setType:", [coderCopy decodeInt32ForKey:@"type"]);
    [coderCopy decodeDoubleForKey:@"freshnessScore"];
    [(PAREngagedResult *)v5 setFreshnessScore:?];
    [coderCopy decodeDoubleForKey:@"score"];
    [(PAREngagedResult *)v5 setScore:?];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedNormalizedTopic"];
    [(PAREngagedResult *)v5 setEncodedNormalizedTopic:v9];
  }

  return v5;
}

- (PAREngagedResult)init
{
  v3.receiver = self;
  v3.super_class = PAREngagedResult;
  return [(PAREngagedResult *)&v3 init];
}

@end