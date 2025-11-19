@interface BCMutableAssetReview
- (BCMutableAssetReview)initWithAssetReviewID:(id)a3;
- (BCMutableAssetReview)initWithCloudData:(id)a3;
- (BCMutableAssetReview)initWithCoder:(id)a3;
- (BCMutableAssetReview)initWithRecord:(id)a3;
- (NSString)description;
- (double)normalizedStarRating;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
- (void)setNormalizedStarRating:(double)a3;
@end

@implementation BCMutableAssetReview

- (BCMutableAssetReview)initWithAssetReviewID:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v6 = [v4 copy];
    self = *(v5 + 9);
    *(v5 + 9) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableAssetReview)initWithCloudData:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BCMutableAssetReview;
  v5 = [(BCMutableCloudData *)&v18 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 assetReviewID];
      v9 = [v8 copy];
      assetReviewID = v5->_assetReviewID;
      v5->_assetReviewID = v9;

      v5->_starRating = [v7 starRating];
      v11 = [v7 reviewTitle];
      v12 = [v11 copy];
      reviewTitle = v5->_reviewTitle;
      v5->_reviewTitle = v12;

      v14 = [v7 reviewBody];
      v15 = [v14 copy];
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

      v14 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableAssetReview)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v5 = [(BCMutableCloudData *)&v13 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    assetReviewID = v5->_assetReviewID;
    v5->_assetReviewID = v6;

    self = [v4 objectForKey:@"starRating"];
    v5->_starRating = [(BCMutableAssetReview *)self intValue];
    v8 = [v4 objectForKey:@"reviewTitle"];
    reviewTitle = v5->_reviewTitle;
    v5->_reviewTitle = v8;

    v10 = [v4 objectForKey:@"reviewBody"];
    reviewBody = v5->_reviewBody;
    v5->_reviewBody = v10;
LABEL_7:
  }

  return v5;
}

- (NSString)description
{
  v3 = [(BCMutableAssetReview *)self assetReviewID];
  v4 = [(BCMutableAssetReview *)self starRating];
  v5 = [(BCMutableAssetReview *)self reviewTitle];
  v6 = [(BCMutableAssetReview *)self reviewBody];
  v7 = [NSString stringWithFormat:@"assetReviewID: %@, starRating: %hd, reviewTitle: %@, reviewBody: %@", v3, v4, v5, v6];

  return v7;
}

- (double)normalizedStarRating
{
  v2 = [NSNumber numberWithShort:[(BCMutableAssetReview *)self starRating]];
  [v2 floatValue];
  v4 = v3 / 5.0;

  return v4;
}

- (void)setNormalizedStarRating:(double)a3
{
  v4 = [NSNumber numberWithDouble:floor(a3 * 5.0)];
  -[BCMutableAssetReview setStarRating:](self, "setStarRating:", [v4 integerValue]);
}

- (id)configuredRecordFromAttributes
{
  v8.receiver = self;
  v8.super_class = BCMutableAssetReview;
  v3 = [(BCMutableCloudData *)&v8 configuredRecordFromAttributes];
  v4 = [NSNumber numberWithShort:[(BCMutableAssetReview *)self starRating]];
  [v3 setObject:v4 forKey:@"starRating"];

  v5 = [(BCMutableAssetReview *)self reviewTitle];
  [v3 setObject:v5 forKey:@"reviewTitle"];

  v6 = [(BCMutableAssetReview *)self reviewBody];
  [v3 setObject:v6 forKey:@"reviewBody"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = BCMutableAssetReview;
  v4 = a3;
  [(BCMutableCloudData *)&v7 encodeWithCoder:v4];
  [v4 encodeInt:-[BCMutableAssetReview starRating](self forKey:{"starRating", v7.receiver, v7.super_class), @"starRating"}];
  v5 = [(BCMutableAssetReview *)self reviewTitle];
  [v4 encodeObject:v5 forKey:@"reviewTitle"];

  v6 = [(BCMutableAssetReview *)self reviewBody];
  [v4 encodeObject:v6 forKey:@"reviewBody"];
}

- (BCMutableAssetReview)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BCMutableAssetReview;
  v5 = [(BCMutableCloudData *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(BCMutableCloudData *)v5 localRecordID];
    assetReviewID = v6->_assetReviewID;
    v6->_assetReviewID = v7;

    v6->_starRating = [v4 decodeIntForKey:@"starRating"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reviewTitle"];
    reviewTitle = v6->_reviewTitle;
    v6->_reviewTitle = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reviewBody"];
    reviewBody = v6->_reviewBody;
    v6->_reviewBody = v11;
  }

  return v6;
}

@end