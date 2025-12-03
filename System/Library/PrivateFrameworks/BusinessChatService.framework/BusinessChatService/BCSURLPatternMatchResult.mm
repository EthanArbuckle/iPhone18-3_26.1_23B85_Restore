@interface BCSURLPatternMatchResult
- (BCSURLPatternMatchResult)initWithOriginalURL:(id)l extractedURL:(id)rL totalConsecutivePrefixMatches:(unint64_t)matches totalExactMatches:(unint64_t)exactMatches totalAnyMatches:(unint64_t)anyMatches bundleID:(id)d pattern:(id)pattern expirationDate:(id)self0 dateHelper:(id)self1;
- (BOOL)isExpired;
- (BOOL)matchFound;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BCSURLPatternMatchResult

- (BCSURLPatternMatchResult)initWithOriginalURL:(id)l extractedURL:(id)rL totalConsecutivePrefixMatches:(unint64_t)matches totalExactMatches:(unint64_t)exactMatches totalAnyMatches:(unint64_t)anyMatches bundleID:(id)d pattern:(id)pattern expirationDate:(id)self0 dateHelper:(id)self1
{
  lCopy = l;
  rLCopy = rL;
  dCopy = d;
  patternCopy = pattern;
  dateCopy = date;
  helperCopy = helper;
  v31.receiver = self;
  v31.super_class = BCSURLPatternMatchResult;
  v20 = [(BCSURLPatternMatchResult *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_originalURL, l);
    objc_storeStrong(&v21->_extractedURL, rL);
    v21->_totalConsecutivePrefixMatches = matches;
    v21->_totalExactMatches = exactMatches;
    v21->_totalAnyMatches = anyMatches;
    v22 = [dCopy copy];
    bundleID = v21->_bundleID;
    v21->_bundleID = v22;

    v24 = [patternCopy copy];
    pattern = v21->_pattern;
    v21->_pattern = v24;

    objc_storeStrong(&v21->_expirationDate, date);
    objc_storeStrong(&v21->_dateHelper, helper);
  }

  return v21;
}

- (BOOL)isExpired
{
  expirationDate = [(BCSURLPatternMatchResult *)self expirationDate];
  dateHelper = [(BCSURLPatternMatchResult *)self dateHelper];
  currentDate = [dateHelper currentDate];
  v6 = [expirationDate compare:currentDate] == -1;

  return v6;
}

- (BOOL)matchFound
{
  extractedURL = [(BCSURLPatternMatchResult *)self extractedURL];
  v3 = extractedURL != 0;

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BCSURLPatternMatchResult *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  selfCopy = self;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCSURLPatternMatchResult *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BCSURLPatternMatchResult *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__BCSURLPatternMatchResult_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_278D38930;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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