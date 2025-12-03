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
  v2 = [BCMutableAssetReview alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
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
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705274();
    }
  }
}

- (void)_configureFromAssetReview:(id)review withMergers:(id)mergers
{
  v27 = *MEMORY[0x1E69E9840];
  reviewCopy = review;
  v20.receiver = self;
  v20.super_class = BCAssetReview;
  [(BCCloudData *)&v20 configureFromCloudData:reviewCopy withMergers:mergers];
  assetReviewID = [reviewCopy assetReviewID];
  v8 = [BCAssetReview userIDFromAssetReviewID:assetReviewID];

  [(NSManagedObject *)self setDifferentString:v8 forKey:@"userID"];
  assetReviewID2 = [reviewCopy assetReviewID];
  [(NSManagedObject *)self setDifferentString:assetReviewID2 forKey:@"assetReviewID"];

  v10 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(reviewCopy, "starRating")}];
  [(NSManagedObject *)self setDifferentNumber:v10 forKey:@"starRating"];

  reviewTitle = [reviewCopy reviewTitle];
  [(NSManagedObject *)self setDifferentString:reviewTitle forKey:@"reviewTitle"];

  reviewBody = [reviewCopy reviewBody];
  [(NSManagedObject *)self setDifferentString:reviewBody forKey:@"reviewBody"];

  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v15 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      assetReviewID3 = [(BCAssetReview *)self assetReviewID];
      v17 = [(BCAssetReview *)self debugDescription];
      assetReviewID4 = [reviewCopy assetReviewID];
      *buf = 138412802;
      v22 = assetReviewID3;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = assetReviewID4;
      _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "\\BCAssetReview configured: %@ %@ from assetReview:%@\\"", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  v51 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v44.receiver = self;
  v44.super_class = BCAssetReview;
  [(BCCloudData *)&v44 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v7 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetReviewID = [(BCAssetReview *)self assetReviewID];
    v9 = [assetReviewID isEqualToString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E47052A8(self, v7, v10);
      }

      [(BCAssetReview *)self setAssetReviewID:v7];
      v11 = [BCAssetReview userIDFromAssetReviewID:v7];
      [(NSManagedObject *)self setDifferentString:v11 forKey:@"userID"];
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
        v20 = BDSCloudKitLog();
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
          v46 = assetReviewID2;
          if (v26 == v29)
          {
            v28 = @"the same";
          }

          v47 = 2112;
          v48 = recordName;
          v49 = 2114;
          v50 = v28;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_INFO, "BCAssetReview %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v30 = [recordCopy objectForKey:@"starRating"];
    [(NSManagedObject *)self setDifferentNumber:v30 forKey:@"starRating"];
    v31 = [recordCopy objectForKey:@"reviewTitle"];
    [(NSManagedObject *)self setDifferentString:v31 forKey:@"reviewTitle"];
    v32 = [recordCopy objectForKey:@"reviewBody"];
    [(NSManagedObject *)self setDifferentString:v32 forKey:@"reviewBody"];
    modificationDate6 = [recordCopy modificationDate];
    [(NSManagedObject *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCAssetReview *)self hasChanges];
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v37 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          assetReviewID3 = [(BCAssetReview *)self assetReviewID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v40 = [(BCAssetReview *)self debugDescription];
          *buf = 138412802;
          v46 = assetReviewID3;
          v47 = 2112;
          v48 = recordName2;
          v49 = 2112;
          v50 = v40;
          v41 = "\\BCAssetReview %@ Resolving: Adopted properties from record: %@ %@\\"";
LABEL_22:
          _os_log_impl(&dword_1E45E0000, v37, OS_LOG_TYPE_DEFAULT, v41, buf, 0x20u);

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v37 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        assetReviewID3 = [(BCAssetReview *)self assetReviewID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v40 = [(BCAssetReview *)self debugDescription];
        *buf = 138412802;
        v46 = assetReviewID3;
        v47 = 2112;
        v48 = recordName2;
        v49 = 2112;
        v50 = v40;
        v41 = "\\BCAssetReview %@ Resolving: Identical properties from record: %@ %@\\"";
        goto LABEL_22;
      }

LABEL_23:
    }

    goto LABEL_25;
  }

  v7 = BDSCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1E4705358(self, v7);
  }

LABEL_25:

  v42 = *MEMORY[0x1E69E9840];
}

- (double)normalizedStarRating
{
  v2 = [MEMORY[0x1E696AD98] numberWithShort:{-[BCAssetReview starRating](self, "starRating")}];
  [v2 floatValue];
  v4 = v3 / 5.0;

  return v4;
}

- (void)setNormalizedStarRating:(double)rating
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:floor(rating * 5.0)];
  -[BCAssetReview setStarRating:](self, "setStarRating:", [v4 integerValue]);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  assetReviewID = [(BCAssetReview *)self assetReviewID];
  starRating = [(BCAssetReview *)self starRating];
  reviewTitle = [(BCAssetReview *)self reviewTitle];
  reviewBody = [(BCAssetReview *)self reviewBody];
  v8 = [v3 stringWithFormat:@"assetReviewID: %@, starRating: %hd, reviewTitle: %@, reviewBody: %@", assetReviewID, starRating, reviewTitle, reviewBody];

  return v8;
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
    v6 = [dCopy substringFromIndex:v4 + v5];
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