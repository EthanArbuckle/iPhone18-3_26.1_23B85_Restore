@interface BCSURLPatternMatchResult
- (BCSURLPatternMatchResult)initWithOriginalURL:(id)a3 extractedURL:(id)a4 totalConsecutivePrefixMatches:(unint64_t)a5 totalExactMatches:(unint64_t)a6 totalAnyMatches:(unint64_t)a7 bundleID:(id)a8 pattern:(id)a9 expirationDate:(id)a10 dateHelper:(id)a11;
- (BOOL)isExpired;
- (BOOL)matchFound;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BCSURLPatternMatchResult

- (BCSURLPatternMatchResult)initWithOriginalURL:(id)a3 extractedURL:(id)a4 totalConsecutivePrefixMatches:(unint64_t)a5 totalExactMatches:(unint64_t)a6 totalAnyMatches:(unint64_t)a7 bundleID:(id)a8 pattern:(id)a9 expirationDate:(id)a10 dateHelper:(id)a11
{
  v30 = a3;
  v29 = a4;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v31.receiver = self;
  v31.super_class = BCSURLPatternMatchResult;
  v20 = [(BCSURLPatternMatchResult *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_originalURL, a3);
    objc_storeStrong(&v21->_extractedURL, a4);
    v21->_totalConsecutivePrefixMatches = a5;
    v21->_totalExactMatches = a6;
    v21->_totalAnyMatches = a7;
    v22 = [v16 copy];
    bundleID = v21->_bundleID;
    v21->_bundleID = v22;

    v24 = [v17 copy];
    pattern = v21->_pattern;
    v21->_pattern = v24;

    objc_storeStrong(&v21->_expirationDate, a10);
    objc_storeStrong(&v21->_dateHelper, a11);
  }

  return v21;
}

- (BOOL)isExpired
{
  v3 = [(BCSURLPatternMatchResult *)self expirationDate];
  v4 = [(BCSURLPatternMatchResult *)self dateHelper];
  v5 = [v4 currentDate];
  v6 = [v3 compare:v5] == -1;

  return v6;
}

- (BOOL)matchFound
{
  v2 = [(BCSURLPatternMatchResult *)self extractedURL];
  v3 = v2 != 0;

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BCSURLPatternMatchResult *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__BCSURLPatternMatchResult_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_278D38930;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:v7];
  v5 = v4;

  return v4;
}

void __54__BCSURLPatternMatchResult_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) extractedURL];
  v4 = [v2 appendObject:v3 withName:@"Extracted URL"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleID];
  v7 = [v5 appendObject:v6 withName:@"Most explicit matching bundleID" skipIfNil:1];

  v8 = *(a1 + 32);
  v10 = [*(a1 + 40) pattern];
  v9 = [v8 appendObject:v10 withName:@"Pattern" skipIfNil:1];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BCSURLPatternMatchResult *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BCSURLPatternMatchResult *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__BCSURLPatternMatchResult_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_278D38930;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __66__BCSURLPatternMatchResult_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUInt64:objc_msgSend(*(a1 + 40) withName:{"totalConsecutivePrefixMatches"), @"Total Consecutive Prefix Matches"}];
  v3 = [*(a1 + 32) appendUInt64:objc_msgSend(*(a1 + 40) withName:{"totalExactMatches"), @"Total Exact Matches"}];
  return [*(a1 + 32) appendUInt64:objc_msgSend(*(a1 + 40) withName:{"totalAnyMatches"), @"Total Any Matches"}];
}

@end