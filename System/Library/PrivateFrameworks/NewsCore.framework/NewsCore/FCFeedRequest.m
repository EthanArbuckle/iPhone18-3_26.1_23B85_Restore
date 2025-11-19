@interface FCFeedRequest
- (BOOL)hasMaxCount;
- (FCFeedRequest)initWithCoder:(id)a3;
- (FCFeedRequest)initWithFeedID:(id)a3 feedRange:(id)a4 maxCount:(unint64_t)a5 isExpendable:(BOOL)a6 cachedOnly:(BOOL)a7 requiredFeature:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCFeedRequest

- (FCFeedRequest)initWithFeedID:(id)a3 feedRange:(id)a4 maxCount:(unint64_t)a5 isExpendable:(BOOL)a6 cachedOnly:(BOOL)a7 requiredFeature:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = FCFeedRequest;
  v18 = [(FCFeedRequest *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_feedID, a3);
    objc_storeStrong(&v19->_feedRange, a4);
    v19->_maxCount = a5;
    v19->_isExpendable = a6;
    v19->_cachedOnly = a7;
    objc_storeStrong(&v19->_requiredFeature, a8);
  }

  return v19;
}

- (BOOL)hasMaxCount
{
  v3 = [(FCFeedRequest *)self maxCount];
  if (v3)
  {
    LOBYTE(v3) = [(FCFeedRequest *)self maxCount]!= -1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(FCFeedRequest);
  v5 = [(FCFeedRequest *)self feedID];
  [(FCFeedRequest *)v4 setFeedID:v5];

  v6 = [(FCFeedRequest *)self feedRange];
  [(FCFeedRequest *)v4 setFeedRange:v6];

  [(FCFeedRequest *)v4 setMaxCount:[(FCFeedRequest *)self maxCount]];
  [(FCFeedRequest *)v4 setIsExpendable:[(FCFeedRequest *)self isExpendable]];
  [(FCFeedRequest *)v4 setCachedOnly:[(FCFeedRequest *)self cachedOnly]];
  v7 = [(FCFeedRequest *)self requiredFeature];
  [(FCFeedRequest *)v4 setRequiredFeature:v7];

  return v4;
}

- (FCFeedRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FCFeedRequest);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedID"];
  [(FCFeedRequest *)v5 setFeedID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feedRange"];
  [(FCFeedRequest *)v5 setFeedRange:v7];

  -[FCFeedRequest setMaxCount:](v5, "setMaxCount:", [v4 decodeIntegerForKey:@"maxCount"]);
  -[FCFeedRequest setIsExpendable:](v5, "setIsExpendable:", [v4 decodeBoolForKey:@"isExpendable"]);
  -[FCFeedRequest setCachedOnly:](v5, "setCachedOnly:", [v4 decodeBoolForKey:@"cachedOnly"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiredFeature"];

  [(FCFeedRequest *)v5 setRequiredFeature:v8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedRequest *)self feedID];
  [v4 encodeObject:v5 forKey:@"feedID"];

  v6 = [(FCFeedRequest *)self feedRange];
  [v4 encodeObject:v6 forKey:@"feedRange"];

  [v4 encodeInteger:-[FCFeedRequest maxCount](self forKey:{"maxCount"), @"maxCount"}];
  [v4 encodeBool:-[FCFeedRequest isExpendable](self forKey:{"isExpendable"), @"isExpendable"}];
  [v4 encodeBool:-[FCFeedRequest cachedOnly](self forKey:{"cachedOnly"), @"cachedOnly"}];
  v7 = [(FCFeedRequest *)self requiredFeature];
  [v4 encodeObject:v7 forKey:@"requiredFeature"];
}

@end