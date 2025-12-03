@interface SearchResultsVerifier
- (BOOL)_passesSkeletonVerification:(id)verification;
- (BOOL)_walkCriterion:(id)criterion mode:(int64_t)mode withBlock:(id)block;
- (SearchResultsVerifier)initWithCriterion:(id)criterion;
- (id)description;
- (id)filterRemoteSearchResults:(id)results;
- (void)_parseFlagsFromCriterion:(id)criterion;
@end

@implementation SearchResultsVerifier

- (SearchResultsVerifier)initWithCriterion:(id)criterion
{
  criterionCopy = criterion;
  v9.receiver = self;
  v9.super_class = SearchResultsVerifier;
  v6 = [(SearchResultsVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_criterion, criterion);
    [(SearchResultsVerifier *)v7 _parseFlagsFromCriterion:criterionCopy];
  }

  return v7;
}

- (id)filterRemoteSearchResults:(id)results
{
  resultsCopy = results;
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
    v5 = [resultsCopy ef_filter:v9];
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
    v5 = resultsCopy;
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

- (BOOL)_passesSkeletonVerification:(id)verification
{
  verificationCopy = verification;
  if ([(SearchResultsVerifier *)self verifySkeletonMessage])
  {
    criterion = [(SearchResultsVerifier *)self criterion];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B8560;
    v8[3] = &unk_10015A880;
    v9 = verificationCopy;
    v6 = [(SearchResultsVerifier *)self _walkCriterion:criterion mode:0 withBlock:v8];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_parseFlagsFromCriterion:(id)criterion
{
  criterionCopy = criterion;
  [(SearchResultsVerifier *)self setVerifySkeletonMessage:[SearchResultsVerifier _walkCriterion:"_walkCriterion:mode:withBlock:" mode:? withBlock:?]];
}

- (BOOL)_walkCriterion:(id)criterion mode:(int64_t)mode withBlock:(id)block
{
  criterionCopy = criterion;
  blockCopy = block;
  criteria = [criterionCopy criteria];
  v11 = [criteria count];

  if (v11)
  {
    if (mode == 1 || [criterionCopy allCriteriaMustBeSatisfied])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      criteria2 = [criterionCopy criteria];
      v13 = [criteria2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = *v26;
LABEL_6:
        v15 = 0;
        while (1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(criteria2);
          }

          if (![(SearchResultsVerifier *)self _walkCriterion:*(*(&v25 + 1) + 8 * v15) mode:mode withBlock:blockCopy])
          {
            goto LABEL_22;
          }

          if (v13 == ++v15)
          {
            v13 = [criteria2 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
      criteria2 = [criterionCopy criteria];
      v17 = [criteria2 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(criteria2);
        }

        if ([(SearchResultsVerifier *)self _walkCriterion:*(*(&v21 + 1) + 8 * v19) mode:mode withBlock:blockCopy])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [criteria2 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

  v16 = blockCopy[2](blockCopy, criterionCopy);
LABEL_25:

  return v16;
}

@end