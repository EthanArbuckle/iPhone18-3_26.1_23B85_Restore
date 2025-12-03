@interface BCAssetReview
+ (id)assetIDFromAssetReviewID:(id)d;
+ (id)userIDFromAssetReviewID:(id)d;
- (NSString)debugDescription;
- (double)normalizedStarRating;
- (id)mutableCopy;
- (void)_configureFromAssetReview:(id)review withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
- (void)setNormalizedStarRating:(double)rating;
@end

@implementation BCAssetReview

- (id)mutableCopy
{
  v3 = [BCMutableAssetReview alloc];

  return [(BCMutableAssetReview *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetReview *)self _configureFromAssetReview:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2814();
    }
  }
}

- (void)_configureFromAssetReview:(id)review withMergers:(id)mergers
{
  reviewCopy = review;
  v19.receiver = self;
  v19.super_class = BCAssetReview;
  [(BCCloudData *)&v19 configureFromCloudData:reviewCopy withMergers:mergers];
  assetReviewID = [reviewCopy assetReviewID];
  v8 = [BCAssetReview userIDFromAssetReviewID:assetReviewID];

  [(BCAssetReview *)self setDifferentString:v8 forKey:@"userID"];
  assetReviewID2 = [reviewCopy assetReviewID];
  [(BCAssetReview *)self setDifferentString:assetReviewID2 forKey:@"assetReviewID"];

  v10 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [reviewCopy starRating]);
  [(BCAssetReview *)self setDifferentNumber:v10 forKey:@"starRating"];

  reviewTitle = [reviewCopy reviewTitle];
  [(BCAssetReview *)self setDifferentString:reviewTitle forKey:@"reviewTitle"];

  reviewBody = [reviewCopy reviewBody];
  [(BCAssetReview *)self setDifferentString:reviewBody forKey:@"reviewBody"];

  v13 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v13 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v15 = sub_10000DB80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      assetReviewID3 = [(BCAssetReview *)self assetReviewID];
      v17 = [(BCAssetReview *)self debugDescription];
      assetReviewID4 = [reviewCopy assetReviewID];
      *buf = 138412802;
      v21 = assetReviewID3;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = assetReviewID4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\\BCAssetReview configured: %@ %@ from assetReview:%@\\"", buf, 0x20u);
    }
  }
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v43.receiver = self;
  v43.super_class = BCAssetReview;
  [(BCCloudData *)&v43 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetReviewID = [(BCAssetReview *)self assetReviewID];
    v9 = [assetReviewID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1001C2848(self, v7, v10);
      }

      [(BCAssetReview *)self setAssetReviewID:v7];
      v11 = [BCAssetReview userIDFromAssetReviewID:v7];
      [(BCAssetReview *)self setDifferentString:v11 forKey:@"userID"];
    }

    modificationDate = [(BCAssetReview *)self modificationDate];
    if (modificationDate)
    {
      v13 = modificationDate;
      modificationDate2 = [(BCAssetReview *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v16 = v15;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v19 = v18;

      if (v16 > v19)
      {
        v20 = sub_100002660();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          assetReviewID2 = [(BCAssetReview *)self assetReviewID];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCAssetReview *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v26 = v25;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v28 = @"newer";
          *buf = 138412802;
          v45 = assetReviewID2;
          if (v26 == v29)
          {
            v28 = @"the same";
          }

          v46 = 2112;
          v47 = recordName;
          v48 = 2114;
          v49 = v28;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "BCAssetReview %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v30 = [recordCopy objectForKey:@"starRating"];
    [(BCAssetReview *)self setDifferentNumber:v30 forKey:@"starRating"];
    v31 = [recordCopy objectForKey:@"reviewTitle"];
    [(BCAssetReview *)self setDifferentString:v31 forKey:@"reviewTitle"];
    v32 = [recordCopy objectForKey:@"reviewBody"];
    [(BCAssetReview *)self setDifferentString:v32 forKey:@"reviewBody"];
    modificationDate6 = [recordCopy modificationDate];
    [(BCAssetReview *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCAssetReview *)self hasChanges];
    v35 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v35 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v37 = sub_10000DB80();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          assetReviewID3 = [(BCAssetReview *)self assetReviewID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v40 = [(BCAssetReview *)self debugDescription];
          *buf = 138412802;
          v45 = assetReviewID3;
          v46 = 2112;
          v47 = recordName2;
          v48 = 2112;
          v49 = v40;
          v41 = "\\BCAssetReview %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v41, buf, 0x20u);

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v37 = sub_10000DB80();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        assetReviewID3 = [(BCAssetReview *)self assetReviewID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v40 = [(BCAssetReview *)self debugDescription];
        *buf = 138412802;
        v45 = assetReviewID3;
        v46 = 2112;
        v47 = recordName2;
        v48 = 2112;
        v49 = v40;
        v41 = "\\BCAssetReview %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_22;
      }

LABEL_23:
    }

    goto LABEL_25;
  }

  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C28F8(self, v7);
  }

LABEL_25:
}

- (double)normalizedStarRating
{
  v2 = [NSNumber numberWithShort:[(BCAssetReview *)self starRating]];
  [v2 floatValue];
  v4 = v3 / 5.0;

  return v4;
}

- (void)setNormalizedStarRating:(double)rating
{
  v4 = [NSNumber numberWithDouble:floor(rating * 5.0)];
  -[BCAssetReview setStarRating:](self, "setStarRating:", [v4 integerValue]);
}

- (NSString)debugDescription
{
  assetReviewID = [(BCAssetReview *)self assetReviewID];
  starRating = [(BCAssetReview *)self starRating];
  reviewTitle = [(BCAssetReview *)self reviewTitle];
  reviewBody = [(BCAssetReview *)self reviewBody];
  v7 = [NSString stringWithFormat:@"assetReviewID: %@, starRating: %hd, reviewTitle: %@, reviewBody: %@", assetReviewID, starRating, reviewTitle, reviewBody];

  return v7;
}

+ (id)assetIDFromAssetReviewID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [dCopy substringFromIndex:&v4[v5]];
  }

  return v6;
}

+ (id)userIDFromAssetReviewID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [dCopy substringToIndex:v4];
  }

  return v5;
}

@end