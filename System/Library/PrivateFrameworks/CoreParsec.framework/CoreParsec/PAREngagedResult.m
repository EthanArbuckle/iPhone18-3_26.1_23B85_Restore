@interface PAREngagedResult
- (PAREngagedResult)init;
- (PAREngagedResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PAREngagedResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PAREngagedResult *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(PAREngagedResult *)self searchString];
  [v4 encodeObject:v6 forKey:@"searchString"];

  v7 = [(PAREngagedResult *)self engagementTime];
  [v4 encodeObject:v7 forKey:@"engagementTime"];

  [v4 encodeInt32:-[PAREngagedResult type](self forKey:{"type"), @"type"}];
  [(PAREngagedResult *)self freshnessScore];
  [v4 encodeDouble:@"freshnessScore" forKey:?];
  [(PAREngagedResult *)self score];
  [v4 encodeDouble:@"score" forKey:?];
  v8 = [(PAREngagedResult *)self encodedNormalizedTopic];
  [v4 encodeObject:v8 forKey:@"encodedNormalizedTopic"];
}

- (PAREngagedResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PAREngagedResult;
  v5 = [(PAREngagedResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(PAREngagedResult *)v5 setTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    [(PAREngagedResult *)v5 setSearchString:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"engagementTime"];
    [(PAREngagedResult *)v5 setEngagementTime:v8];

    -[PAREngagedResult setType:](v5, "setType:", [v4 decodeInt32ForKey:@"type"]);
    [v4 decodeDoubleForKey:@"freshnessScore"];
    [(PAREngagedResult *)v5 setFreshnessScore:?];
    [v4 decodeDoubleForKey:@"score"];
    [(PAREngagedResult *)v5 setScore:?];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedNormalizedTopic"];
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