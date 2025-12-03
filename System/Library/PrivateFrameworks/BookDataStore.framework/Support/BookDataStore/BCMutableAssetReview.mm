@interface BCMutableAssetReview
- (BCMutableAssetReview)initWithAssetReviewID:(id)d;
- (BCMutableAssetReview)initWithCloudData:(id)data;
- (BCMutableAssetReview)initWithCoder:(id)coder;
- (BCMutableAssetReview)initWithRecord:(id)record;
- (NSString)description;
- (double)normalizedStarRating;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
- (void)setNormalizedStarRating:(double)rating;
@end

@implementation BCMutableAssetReview

- (BCMutableAssetReview)initWithAssetReviewID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2990();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableAssetReview;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    self = *(v5 + 9);
    *(v5 + 9) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableAssetReview)initWithCloudData:(id)data
{
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = BCMutableAssetReview;
  v5 = [(BCMutableCloudData *)&v18 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      assetReviewID = [v6 assetReviewID];
      v9 = [assetReviewID copy];
      assetReviewID = v5->_assetReviewID;
      v5->_assetReviewID = v9;

      v5->_starRating = [v7 starRating];
      reviewTitle = [v7 reviewTitle];
      v12 = [reviewTitle copy];
      reviewTitle = v5->_reviewTitle;
      v5->_reviewTitle = v12;

      reviewBody = [v7 reviewBody];
      v15 = [reviewBody copy];
      reviewBody = v5->_reviewBody;
      v5->_reviewBody = v15;
    }

    else
    {
      reviewBody = sub_100002660();
      if (os_log_type_enabled(reviewBody, OS_LOG_TYPE_ERROR))
      {
        sub_1001C2814();
      }

      reviewBody = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableAssetReview)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    reviewBody = sub_100002660();
    if (os_log_type_enabled(reviewBody, OS_LOG_TYPE_ERROR))
    {
      sub_1001C29C4();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = BCMutableAssetReview;
  v5 = [(BCMutableCloudData *)&v13 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetReviewID = v5->_assetReviewID;
    v5->_assetReviewID = v6;

    self = [recordCopy objectForKey:@"starRating"];
    v5->_starRating = [(BCMutableAssetReview *)self intValue];
    v8 = [recordCopy objectForKey:@"reviewTitle"];
    reviewTitle = v5->_reviewTitle;
    v5->_reviewTitle = v8;

    v10 = [recordCopy objectForKey:@"reviewBody"];
    reviewBody = v5->_reviewBody;
    v5->_reviewBody = v10;
LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  assetReviewID = [(BCMutableAssetReview *)self assetReviewID];
  starRating = [(BCMutableAssetReview *)self starRating];
  reviewTitle = [(BCMutableAssetReview *)self reviewTitle];
  reviewBody = [(BCMutableAssetReview *)self reviewBody];
  v7 = [NSString stringWithFormat:@"assetReviewID: %@, starRating: %hd, reviewTitle: %@, reviewBody: %@", assetReviewID, starRating, reviewTitle, reviewBody];

  return v7;
}

- (double)normalizedStarRating
{
  v2 = [NSNumber numberWithShort:[(BCMutableAssetReview *)self starRating]];
  [v2 floatValue];
  v4 = v3 / 5.0;

  return v4;
}

- (void)setNormalizedStarRating:(double)rating
{
  v4 = [NSNumber numberWithDouble:floor(rating * 5.0)];
  -[BCMutableAssetReview setStarRating:](self, "setStarRating:", [v4 integerValue]);
}

- (id)configuredRecordFromAttributes
{
  v8.receiver = self;
  v8.super_class = BCMutableAssetReview;
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v8 configuredRecordFromAttributes];
  v4 = [NSNumber numberWithShort:[(BCMutableAssetReview *)self starRating]];
  [configuredRecordFromAttributes setObject:v4 forKey:@"starRating"];

  reviewTitle = [(BCMutableAssetReview *)self reviewTitle];
  [configuredRecordFromAttributes setObject:reviewTitle forKey:@"reviewTitle"];

  reviewBody = [(BCMutableAssetReview *)self reviewBody];
  [configuredRecordFromAttributes setObject:reviewBody forKey:@"reviewBody"];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BCMutableAssetReview;
  coderCopy = coder;
  [(BCMutableCloudData *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:-[BCMutableAssetReview starRating](self forKey:{"starRating", v7.receiver, v7.super_class), @"starRating"}];
  reviewTitle = [(BCMutableAssetReview *)self reviewTitle];
  [coderCopy encodeObject:reviewTitle forKey:@"reviewTitle"];

  reviewBody = [(BCMutableAssetReview *)self reviewBody];
  [coderCopy encodeObject:reviewBody forKey:@"reviewBody"];
}

- (BCMutableAssetReview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = BCMutableAssetReview;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    localRecordID = [(BCMutableCloudData *)v5 localRecordID];
    assetReviewID = v6->_assetReviewID;
    v6->_assetReviewID = localRecordID;

    v6->_starRating = [coderCopy decodeIntForKey:@"starRating"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reviewTitle"];
    reviewTitle = v6->_reviewTitle;
    v6->_reviewTitle = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reviewBody"];
    reviewBody = v6->_reviewBody;
    v6->_reviewBody = v11;
  }

  return v6;
}

@end