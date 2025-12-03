@interface FCFeedRequest
- (BOOL)hasMaxCount;
- (FCFeedRequest)initWithCoder:(id)coder;
- (FCFeedRequest)initWithFeedID:(id)d feedRange:(id)range maxCount:(unint64_t)count isExpendable:(BOOL)expendable cachedOnly:(BOOL)only requiredFeature:(id)feature;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCFeedRequest

- (FCFeedRequest)initWithFeedID:(id)d feedRange:(id)range maxCount:(unint64_t)count isExpendable:(BOOL)expendable cachedOnly:(BOOL)only requiredFeature:(id)feature
{
  dCopy = d;
  rangeCopy = range;
  featureCopy = feature;
  v21.receiver = self;
  v21.super_class = FCFeedRequest;
  v18 = [(FCFeedRequest *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_feedID, d);
    objc_storeStrong(&v19->_feedRange, range);
    v19->_maxCount = count;
    v19->_isExpendable = expendable;
    v19->_cachedOnly = only;
    objc_storeStrong(&v19->_requiredFeature, feature);
  }

  return v19;
}

- (BOOL)hasMaxCount
{
  maxCount = [(FCFeedRequest *)self maxCount];
  if (maxCount)
  {
    LOBYTE(maxCount) = [(FCFeedRequest *)self maxCount]!= -1;
  }

  return maxCount;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FCFeedRequest);
  feedID = [(FCFeedRequest *)self feedID];
  [(FCFeedRequest *)v4 setFeedID:feedID];

  feedRange = [(FCFeedRequest *)self feedRange];
  [(FCFeedRequest *)v4 setFeedRange:feedRange];

  [(FCFeedRequest *)v4 setMaxCount:[(FCFeedRequest *)self maxCount]];
  [(FCFeedRequest *)v4 setIsExpendable:[(FCFeedRequest *)self isExpendable]];
  [(FCFeedRequest *)v4 setCachedOnly:[(FCFeedRequest *)self cachedOnly]];
  requiredFeature = [(FCFeedRequest *)self requiredFeature];
  [(FCFeedRequest *)v4 setRequiredFeature:requiredFeature];

  return v4;
}

- (FCFeedRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(FCFeedRequest);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedID"];
  [(FCFeedRequest *)v5 setFeedID:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feedRange"];
  [(FCFeedRequest *)v5 setFeedRange:v7];

  -[FCFeedRequest setMaxCount:](v5, "setMaxCount:", [coderCopy decodeIntegerForKey:@"maxCount"]);
  -[FCFeedRequest setIsExpendable:](v5, "setIsExpendable:", [coderCopy decodeBoolForKey:@"isExpendable"]);
  -[FCFeedRequest setCachedOnly:](v5, "setCachedOnly:", [coderCopy decodeBoolForKey:@"cachedOnly"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiredFeature"];

  [(FCFeedRequest *)v5 setRequiredFeature:v8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  feedID = [(FCFeedRequest *)self feedID];
  [coderCopy encodeObject:feedID forKey:@"feedID"];

  feedRange = [(FCFeedRequest *)self feedRange];
  [coderCopy encodeObject:feedRange forKey:@"feedRange"];

  [coderCopy encodeInteger:-[FCFeedRequest maxCount](self forKey:{"maxCount"), @"maxCount"}];
  [coderCopy encodeBool:-[FCFeedRequest isExpendable](self forKey:{"isExpendable"), @"isExpendable"}];
  [coderCopy encodeBool:-[FCFeedRequest cachedOnly](self forKey:{"cachedOnly"), @"cachedOnly"}];
  requiredFeature = [(FCFeedRequest *)self requiredFeature];
  [coderCopy encodeObject:requiredFeature forKey:@"requiredFeature"];
}

@end