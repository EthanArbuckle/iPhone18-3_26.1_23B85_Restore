@interface BCAssetReview
+ (id)assetIDFromAssetReviewID:(id)a3;
+ (id)userIDFromAssetReviewID:(id)a3;
- (NSString)debugDescription;
- (double)normalizedStarRating;
- (id)mutableCopy;
- (void)_configureFromAssetReview:(id)a3 withMergers:(id)a4;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
- (void)setNormalizedStarRating:(double)a3;
@end

@implementation BCAssetReview

- (id)mutableCopy
{
  v2 = [BCMutableAssetReview alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithCloudData_);
}

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v5 = a4;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetReview *)self _configureFromAssetReview:v6 withMergers:v5];
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

- (void)_configureFromAssetReview:(id)a3 withMergers:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = BCAssetReview;
  [(BCCloudData *)&v20 configureFromCloudData:v6 withMergers:a4];
  v7 = [v6 assetReviewID];
  v8 = [BCAssetReview userIDFromAssetReviewID:v7];

  [(NSManagedObject *)self setDifferentString:v8 forKey:@"userID"];
  v9 = [v6 assetReviewID];
  [(NSManagedObject *)self setDifferentString:v9 forKey:@"assetReviewID"];

  v10 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v6, "starRating")}];
  [(NSManagedObject *)self setDifferentNumber:v10 forKey:@"starRating"];

  v11 = [v6 reviewTitle];
  [(NSManagedObject *)self setDifferentString:v11 forKey:@"reviewTitle"];

  v12 = [v6 reviewBody];
  [(NSManagedObject *)self setDifferentString:v12 forKey:@"reviewBody"];

  v13 = [MEMORY[0x1E698F550] shared];
  v14 = [v13 verboseLoggingEnabled];

  if (v14)
  {
    v15 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(BCAssetReview *)self assetReviewID];
      v17 = [(BCAssetReview *)self debugDescription];
      v18 = [v6 assetReviewID];
      *buf = 138412802;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_DEFAULT, "\\BCAssetReview configured: %@ %@ from assetReview:%@\\"", buf, 0x20u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v44.receiver = self;
  v44.super_class = BCAssetReview;
  [(BCCloudData *)&v44 resolveConflictsFromRecord:v6 withResolvers:a4];
  if (v6)
  {
    v7 = [BCCloudData localIdentifierFromRecord:v6];
    v8 = [(BCAssetReview *)self assetReviewID];
    v9 = [v8 isEqualToString:v7];

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

    v12 = [(BCAssetReview *)self modificationDate];
    if (v12)
    {
      v13 = v12;
      v14 = [(BCAssetReview *)self modificationDate];
      [v14 timeIntervalSinceReferenceDate];
      v16 = v15;
      v17 = [v6 modificationDate];
      [v17 timeIntervalSinceReferenceDate];
      v19 = v18;

      if (v16 > v19)
      {
        v20 = BDSCloudKitLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [(BCAssetReview *)self assetReviewID];
          v22 = [v6 recordID];
          v23 = [v22 recordName];
          v24 = [(BCAssetReview *)self modificationDate];
          [v24 timeIntervalSinceReferenceDate];
          v26 = v25;
          v27 = [v6 modificationDate];
          [v27 timeIntervalSinceReferenceDate];
          v28 = @"newer";
          *buf = 138412802;
          v46 = v21;
          if (v26 == v29)
          {
            v28 = @"the same";
          }

          v47 = 2112;
          v48 = v23;
          v49 = 2114;
          v50 = v28;
          _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_INFO, "BCAssetReview %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v30 = [v6 objectForKey:@"starRating"];
    [(NSManagedObject *)self setDifferentNumber:v30 forKey:@"starRating"];
    v31 = [v6 objectForKey:@"reviewTitle"];
    [(NSManagedObject *)self setDifferentString:v31 forKey:@"reviewTitle"];
    v32 = [v6 objectForKey:@"reviewBody"];
    [(NSManagedObject *)self setDifferentString:v32 forKey:@"reviewBody"];
    v33 = [v6 modificationDate];
    [(NSManagedObject *)self setDifferentDate:v33 forKey:@"modificationDate"];
    v34 = [(BCAssetReview *)self hasChanges];
    v35 = [MEMORY[0x1E698F550] shared];
    v36 = [v35 verboseLoggingEnabled];

    if (v34)
    {
      if (v36)
      {
        v37 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(BCAssetReview *)self assetReviewID];
          v43 = [v6 recordID];
          v39 = [v43 recordName];
          v40 = [(BCAssetReview *)self debugDescription];
          *buf = 138412802;
          v46 = v38;
          v47 = 2112;
          v48 = v39;
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

    else if (v36)
    {
      v37 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(BCAssetReview *)self assetReviewID];
        v43 = [v6 recordID];
        v39 = [v43 recordName];
        v40 = [(BCAssetReview *)self debugDescription];
        *buf = 138412802;
        v46 = v38;
        v47 = 2112;
        v48 = v39;
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

- (void)setNormalizedStarRating:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:floor(a3 * 5.0)];
  -[BCAssetReview setStarRating:](self, "setStarRating:", [v4 integerValue]);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BCAssetReview *)self assetReviewID];
  v5 = [(BCAssetReview *)self starRating];
  v6 = [(BCAssetReview *)self reviewTitle];
  v7 = [(BCAssetReview *)self reviewBody];
  v8 = [v3 stringWithFormat:@"assetReviewID: %@, starRating: %hd, reviewTitle: %@, reviewBody: %@", v4, v5, v6, v7];

  return v8;
}

+ (id)assetIDFromAssetReviewID:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + v5];
  }

  return v6;
}

+ (id)userIDFromAssetReviewID:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  return v5;
}

@end