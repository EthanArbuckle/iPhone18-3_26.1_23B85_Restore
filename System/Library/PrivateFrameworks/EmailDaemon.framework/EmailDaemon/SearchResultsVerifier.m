@interface SearchResultsVerifier
- (BOOL)_passesSkeletonVerification:(id)a3;
- (BOOL)_walkCriterion:(id)a3 mode:(int64_t)a4 withBlock:(id)a5;
- (SearchResultsVerifier)initWithCriterion:(id)a3;
- (id)description;
- (id)filterRemoteSearchResults:(id)a3;
- (void)_parseFlagsFromCriterion:(id)a3;
@end

@implementation SearchResultsVerifier

- (SearchResultsVerifier)initWithCriterion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SearchResultsVerifier;
  v6 = [(SearchResultsVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_criterion, a3);
    [(SearchResultsVerifier *)v7 _parseFlagsFromCriterion:v5];
  }

  return v7;
}

- (id)filterRemoteSearchResults:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(SearchResultsVerifier *)self verifySkeletonMessage])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B8360;
    v9[3] = &unk_10015A858;
    v9[4] = self;
    v9[5] = &v10;
    v5 = [v4 ef_filter:v9];
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11[3];
      *buf = 138412546;
      v15 = @"#search-results-verifier";
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ filtered search results: skeletonFailedCount:%lu", buf, 0x16u);
    }
  }

  else
  {
    v5 = v4;
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SearchResultsVerifier;
  v3 = [(SearchResultsVerifier *)&v7 description];
  [(SearchResultsVerifier *)self verifySkeletonMessage];
  v4 = NSStringFromBOOL();
  v5 = [NSString stringWithFormat:@"%@ verifySkeletonMessage:%@", v3, v4];

  return v5;
}

- (BOOL)_passesSkeletonVerification:(id)a3
{
  v4 = a3;
  if ([(SearchResultsVerifier *)self verifySkeletonMessage])
  {
    v5 = [(SearchResultsVerifier *)self criterion];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B8560;
    v8[3] = &unk_10015A880;
    v9 = v4;
    v6 = [(SearchResultsVerifier *)self _walkCriterion:v5 mode:0 withBlock:v8];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_parseFlagsFromCriterion:(id)a3
{
  v4 = a3;
  [(SearchResultsVerifier *)self setVerifySkeletonMessage:[SearchResultsVerifier _walkCriterion:"_walkCriterion:mode:withBlock:" mode:? withBlock:?]];
}

- (BOOL)_walkCriterion:(id)a3 mode:(int64_t)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 criteria];
  v11 = [v10 count];

  if (v11)
  {
    if (a4 == 1 || [v8 allCriteriaMustBeSatisfied])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = [v8 criteria];
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = *v26;
LABEL_6:
        v15 = 0;
        while (1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (![(SearchResultsVerifier *)self _walkCriterion:*(*(&v25 + 1) + 8 * v15) mode:a4 withBlock:v9])
          {
            goto LABEL_22;
          }

          if (v13 == ++v15)
          {
            v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
            v16 = 1;
            if (v13)
            {
              goto LABEL_6;
            }

            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v8 criteria];
      v17 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (!v17)
      {
LABEL_22:
        v16 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v18 = *v22;
LABEL_16:
      v19 = 0;
      while (1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v12);
        }

        if ([(SearchResultsVerifier *)self _walkCriterion:*(*(&v21 + 1) + 8 * v19) mode:a4 withBlock:v9])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v17)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    v16 = 1;
    goto LABEL_24;
  }

  v16 = v9[2](v9, v8);
LABEL_25:

  return v16;
}

@end